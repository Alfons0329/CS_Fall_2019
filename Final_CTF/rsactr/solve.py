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

# y = bytes.fromhex(str(hex(y))[2:])
rem.sendlineafter('>', '3')
rem.sendlineafter('= ', str(y))
z = rem.recvline(keepends=False).split()[-1]
z = int.from_bytes(z, 'little')
x_inv = inverse(x, n)

p = (z * x_inv) % n
p = bytes.fromhex(str(hex(p))[2:])
for i in p:
        print(chr(int(i)), end='')
