from Crypto.Util.number import *
from Crypto.PublicKey import RSA
from pwn import *
from multiprocessing import Pool

import base64, sys, os, binascii
import struct
import gmpy2

'''
# rem = remote('eductf.zoolab.org', 20000)
rem = process('./server.py', 20000)
rem.sendlineafter('>', '1')

# get public key pair, (n, e)
n = rem.recvline(keepends=False).split()[-1]
e = rem.recvline(keepends=False).split()[-1]

# get c, the cipher text wanna attacking
rem.sendlineafter('>', '2')
c = rem.recvline(keepends=False).split()[-1]

n = int(n)
e = int(e)
c = int(c, 16)
'''

n =   83627018382433490711381722374070745707317400184714848187295787071143555750989228794758016769667446590885416585314232801588399482025957293654049042755557197840080362344875494250536392062658903924342380917147640765185201157459426111717822549387082240113152879809375444727757962914249246964454980556223560358671

e = 3

c =   57360357313769713304500792617039395600153508369588090486787278890996356302762299721837313684986703326596194602016307561098212619491460238397008197819181431508218954096484017649598484006162522933079572808548697553060116099984315752758007437822694730518888827096829480492202669976662210513696520721499583711892

def calc(j):
    a, b = gmpy2.iroot(cipher + j * n, 3)
    if b == 1:
        m = a
        print('{:x}'.format(int(m)).decode('hex'))
        pool.terminate()
        exit()

pool = Pool(int(sys.argv[1]))

def small_e():
    inputs = range(0, 10000000000)
    pool.map(calc, inputs)
    pool.close()
    pool.join()

if __name__ == '__main__':
    print('start')
    small_e()
    print('end')
