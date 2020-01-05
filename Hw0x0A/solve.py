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

# the flag will be (xn, xn - 1 ......, x1, x0)
# with c -> m, and mod being 16
lsb = 0

#          ((base ^ -i) ^ (e)) * c ---> ((base ^ -i) ^) * m
#  that is multiplied_c    -- oracle -> multiplied_m

base = inverse(MOD, c)
pow_cnt = 0
continuous_padding = 0
flag_list = []

# init r for modular congruence
r = 0

while True:
    r.sendlineafter('>', '2')

    # under the mod n cycle
    multiplied_c = pow(base, pow_cnt * e, n) * c % n
    r.sendline(str(multiplied_c))
    multiplied_m = int(r.recvline().split()[-1])
    print('multiplied_m --> ', multiplied_m)

    # check if the received bit(ot byte) is the padding zero (continuously padding zero), break as the threshold meets
    if multiplied_m == 0:
        if continuous_padding >= 20:
            break
        else:
            continuous_padding += 1
    else:
        continuous_padding = 0

    r = multiplied_m % n % MOD

    tmp = 0
    start_pow = -len(flag_list)
    for i in range(len(flag_list)):
        tmp += pow(base, start_pow, n)
        start_pow += 1

    xi = r - ((tmp) % n) % MOD
    flag_list.append(xi)

print('FLAG --> ')
for i in flag_list:
    print(chr(i), endline='')
