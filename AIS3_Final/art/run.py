#!/usr/bin/env python3
from Crypto.Util.number import *

nbit = 384

def gcd(a, b):
    if b == 0:
        return (a, 0, 1)
    g, x, y = gcd(b, a % b)
    return (g, y - (a // b) * x, x)

def modinv(a, m):
    g, x, y = gcd(m, a)
    if g != 1:
        return -1
    return x % m

def gen():
    x, y, z, u = [getPrime(nbit) for _ in range(4)]
    phi = (x-1)*(y-1)*(z-1)*(u-1)
    n = x*y*z*u
    while True:
        d = getRandomInteger(192)
        e = modinv(d, phi)
        if e == -1:
            continue
        break
    return [n, e], [x, y, z, u]


def main():
    pub, pri = gen()
    print (f'n = {pub[0]}')
    print (f'e = {pub[1]}')
    for _ in range(4):
        print('%d\n%d\n%d\n%d\n' % (pri[0], pri[1], pri[2], pri[3]))
        factor = int(input('give me one prime factor of n : '))
        if factor in pri:
            print ('correct!')
            del pri[pri.index(factor)]
        else:
            print ('you need a stronger machine to bruteforce, here is your link : https://aws.amazon.com/ec2/pricing/on-demand/?nc1=h_ls')
            exit(255)
    print ('nice, here is your flag:')
    with open('flag', 'r') as f:
        print (f.read())

if __name__ == '__main__':
    main()
