#!/usr/bin/env python3
import os
from Crypto.Util.number import *

with open('flag', 'rb') as f:
    flag = f.read()

def genkeys():
    e = 3
    while True:
        p, q = getPrime(512), getPrime(512)
        n, phi = p * q, (p - 1) * (q - 1)
        if GCD(e, phi) == 1:
            d = inverse(e, phi)
            return (n, e), (n, d)

class RSA:
    MODE_CTR = 0

    def __init__(self, key, mode, nonce = None):
        self.key = key
        self.mode = mode

        if self.mode == self.MODE_CTR:
            self.nonce = nonce
            if self.nonce is None:
                self.nonce = bytes_to_long(os.urandom(128))

    @classmethod
    def new(cls, key, mode):
        return cls(key, mode)

    def encrypt(self, plain):
        if self.mode == self.MODE_CTR:
            n, d = self.key
            blocksize = 16
            cipher = b''
            for i in range(0, len(plain), blocksize):
                x = self.nonce
                y = pow(x, d, n)
                z = (y + bytes_to_long(plain[i:i+blocksize])) % n
                cipher += z.to_bytes(128, 'big')
                self.nonce += 2020 # 2020 happy new year
            return cipher
        else:
            raise NotImplementedError

def menu():
    print(f'{" menu ":=^20}')
    print('1) info')
    print('2) get flag')
    print('3) encrypt')
    print('4) exit')

def info(pub):
    n, e = pub
    print(f'n = {n}')
    print(f'e = {e}')

def main():
    pub, pri = genkeys()
    rsa = RSA.new(pri, RSA.MODE_CTR)
    for i in range(3):
        menu()
        cmd = input('> ')
        if cmd == '1':
            info(pub)
        elif cmd == '2':
            cipher = rsa.encrypt(flag)
            print(f'flag = {cipher.hex()}')
        elif cmd == '3':
            plain = bytes.fromhex(input('plain = '))
            cipher = rsa.encrypt(plain)
            print(f'cipher = {cipher.hex()}')
        else:
            print('I have spoken')
            return

try:
    main()
except:
    pass
