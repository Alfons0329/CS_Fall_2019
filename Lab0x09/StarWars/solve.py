#!/usr/bin/env python3
# self note: doing on .58 TITAN V x 2 machine will be fine, pip3 of .24 is corrupted
from pwn import *
from Crypto.Util.number import *
import math

r = remote('edu-ctf.csie.org', 10191)

def pollard(n):
    a = 2
    b = 2
    while True:
        a = pow(a, b, n) # mod pow
        d = math.gcd(a - 1 ,n)
        if 1 < d < n:
            return d

        b += 1

# use pollard p - 1 for RSA forging
r.sendlineafter('>', '1')
c = r.recvline().split()[-1]
e = r.recvline().split()[-1]
n = r.recvline().split()[-1]

# some required type conversion
c = int(c)
e = int(e)
n = int(n)
p = pollard(n)
q = n // p

phi_n = (p - 1) * (q - 1)# by Eular's totient function
d = inverse(e ,phi_n) # modinv of e to r
print(d * e % phi_n)

# to decrypt, use c
m = pow(c ,d, n)

print('n ', n)
print('p ', p)
print('FLAG --> ', long_to_bytes(m))
