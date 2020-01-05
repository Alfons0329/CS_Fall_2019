#!/usr/bin/env python3
# self note: doing on .58 TITAN V x 2 machine will be fine, pip3 of .24 is corrupted
from pwn import *
from Crypto.Util.number import *
import math

r = remote('edu-ctf.csie.org', 10192)
MOD = 16

# use pollard p - 1 for RSA forging
r.sendlineafter('>', '1')
c = r.recvline().split()[-1]
e = r.recvline().split()[-1]
n = r.recvline().split()[-1]
print('received c ', c, ' e ', e, ' n ', n)

# some required type conversion
c = int(c)
e = int(e)
n = int(n)

# the flag will be (a0, a1, ... an)
# with c -> m, and mod being 16
lsb = 0

#          ((base ^ -i) ^ (e)) * c ---> ((base ^ -i) ^) * m
#  that is multiplied_c    -- oracle -> multiplied_m

base = inverse(MOD, c)
pow_cnt = 0

while True:
    r.sendlineafter('>', '2')

    # under the mod n cycle
    multiplied_c = pow(base, pow_cnt * e, n) * c % n
    r.sendline(str(multiplied_c))
    multiplied_m = int(r.recvline().split()[-1])
    print('multiplied_m --> ', multiplied_m)
