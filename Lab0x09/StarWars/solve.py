#!/usr/bin/env python3
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

# Use pollard p - 1 for RSA forging
r.sendlineafter('>', '1')
c = r.recvline()
e = r.recvline()
n = r.recvline()
print('received c ', c, ' e ', e, ' n ', n)

p = pollard(long(n))
q = n // p

r = (p - 1) * (q - 1)# by Eular's totient function
d = inverse(e ,r) # modinv of e to r

# To decrypt, use c
m = pow(c ,d, n)
r.sendlineafter('>', '2')
r.sendline(long_to_bytes(m))
