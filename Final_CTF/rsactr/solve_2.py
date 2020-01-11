from Crypto.Util.number import *
from pwn import *
import base64, sys, os, binascii
import struct
import gmpy2

# rem = remote('eductf.zoolab.org', 20000)
rem = process('./server.py', 20000)
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

i = 0
while True:
    if gmpy2.iroot(c + i * n, 3)[1] == True:
        print('Success! ')
        print(gmpy2.iroot(c + i * n), 3)
        break

    i += 1
