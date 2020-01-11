from Crypto.Util.number import *
from pwn import *
import base64, sys, os, binascii
import struct

# rem = remote('', 20000)
rem = process('./server.py', 20000)
rem.sendlineafter('>', '1')
n = rem.recvline(keepends=False).split()[-1]
e = rem.recvline(keepends=False).split()[-1]

rem.sendlineafter('>', '2')
c = rem.recvline(keepends=False).split()[-1]

n = int(n)
e = int(e)
c = int.from_bytes(c, 'little')

x = 2
y = (c * (x ** e)) % n

y = bytes.fromhex(str(hex(y))[2:])
print(y)
rem.sendlineafter('>', '3')
rem.sendlineafter('plain = ', y)
# z = rem.recvline(keepends=False).split()[-1]
z = rem.recvall()
print(z)
rem.interactive()
