#!/usr/bin/env python3
# self note: doing on .58 TITAN V x 2 machine will be fine, pip3 of .24 is corrupted
from pwn import *
from Crypto.Util.number import *
import math
import sys, os

rem = remote('edu-ctf.csie.org', 10192)
MOD = 16

# use pollard p - 1 for RSA forging
rem.sendlineafter('>', '1')
c = rem.recvline().split()[-1]
e = rem.recvline().split()[-1]
n = rem.recvline().split()[-1]
c = int(c)
e = int(e)
n = int(n)
print('received c ', c, ' e ', e, ' n ', n)

# the flag will be (xn, xn - 1 ......, x1, x0)
# with c -> m, and mod being 16

#          ((base ^ -i) ^ (e)) * c ---> ((base ^ -i) ^) * m
#  that is multiplied_c    -- oracle -> multiplied_m

base = inverse(MOD, n)
continuous_padding = 0

# init r for modular congruence
r = 0
pow_cnt = 0
try_cnt = 0
flag_res = 0
flag_list = []

while try_cnt < 1024 // 4:
    rem.sendlineafter('>', '2')

    # under the mod n cycle
    multiplied_c = pow(base, pow_cnt * e, n) * c % n
    rem.sendline(str(multiplied_c))
    multiplied_m = int(rem.recvline().split()[-1])
    r = multiplied_m % n % MOD

    tmp = 0
    start_pow = len(flag_list)
    for i in range(len(flag_list)):
        tmp += pow(base, start_pow, n) * flag_list[i]
        start_pow -= 1

    xi = (r - ((tmp) % n)) % MOD

    # check if the received bit(ot byte) is the padding zero (continuously padding zero), break as the threshold meets
    if xi == 0:
        if continuous_padding >= 10:
            break
        else:
            continuous_padding += 1
    else:
        continuous_padding = 0
    flag_list.append(xi)

    # make ((base ^ -i) ^) * m --> m
    flag_res = (((MOD ** pow_cnt) % n * xi) %n + flag_res) % n
    pow_cnt += 1
    try_cnt += 1

print(flag_res)
flag_res = bytes.fromhex(str(hex(flag_res))[2:])
for i in flag_res:
    print(chr(int(i)), end='')
