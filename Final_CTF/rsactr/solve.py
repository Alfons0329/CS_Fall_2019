from Crypto.Util.number import *
from pwn import *
import base64, sys, os, binascii
import struct

rem = remote('eductf.zoolab.org', 20000)
# rem = process('./server.py', 20000)
rem.sendlineafter('>', '1')

# get public key pair, (n, e)
n = rem.recvline(keepends=False).split()[-1]
e = rem.recvline(keepends=False).split()[-1]

# get c, the cipher text wanna attacking
rem.sendlineafter('>', '2')
c = rem.recvline(keepends=False).split()[-1]

# y = c * x ^ e mod n
n = int(n)
e = int(e)
c = int(c, 16)
print('n = ', n)
print('e = ', e)
print('c = ', c)

'''
x = 2
mul = pow(x, e, n)
y = c * mul % n
y = inverse(y, n) % n

# y = bytes.fromhex(str(hex(y))[2:])
rem.sendlineafter('>', '3')
rem.sendlineafter('= ', str(y))
z = rem.recvline(keepends=False).split()[-1]
z = int.from_bytes(z, 'little')
x_inv = inverse(x, n)

p = (z * x_inv) % n
p = bytes.fromhex(str(hex(p))[2:])
'''
for i in p:
    print(chr(int(i)), end='')
