#!/usr/bin/enc python3
from sympy import *
import random

def op1(p, s):
    #print('p ', p, ' |s ', s)
    return sum([i * j for i, j in zip(s, p)]) % 256

def op2(m, k):
    #print('m ', m, ' |k ', k)
    return bytes([i ^ j for i, j in zip(m, k)])

def op3(m, p):
    return bytes([m[p[i]] for i in range(len(m))])

def op4(m, s):
    #print('ms ', m, 's ', s, ' ret ', bytes([s[x] for x in m]))
    return bytes([s[x] for x in m])

def inverted_op3(m, p):
    recovered = []
    for i in range(len(m)):
        recovered.append(m[p.index(i)]) # search where it originally located

    return bytes(recovered)

def inverted_op4(m, s):
    recovered = []
    for i in range(len(m)):
        recovered.append(s.index(m[i]))
    return bytes(recovered)

'''
Linear Feedback Shift Register
'''
def stage0(m):
    random.seed('oalieno')
    p = [int(random.random() * 256) for i in range(16)]
    s = [int(random.random() * 256) for i in range(16)]
    c = b'' # encoded as byte
    for x in m:
        k = op1(p, s)
        c += bytes([x ^ k])
        s = s[1:] + [k]
    return c

'''
Substitution Permutation Network
'''
def stage1(m):
    random.seed('oalieno')
    k = [int(random.random() * 256) for i in range(16)]
    p = [i for i in range(16)]
    random.shuffle(p)
    s = [i for i in range(256)]
    random.shuffle(s)

    c = m
    for i in range(16):
        c = op2(c, k)
        c = inverted_op3(c, p)
        # c = op3(c, p)
        c = inverted_op4(c, s)
        # c = op4(c, s)
    return c

def decrypt(c, key):
    stage = [stage0, stage1]
    for i in map(int, f'{key:08b}'):
        #print('i is ', i)
        c = stage[i](c)
    return c

if __name__ == '__main__':
    cipher = open('cipher', 'rb').read()

    for key in range(256):
        decrypted = decrypt(cipher, key)
        fail = 0
        print('key now ', key)
        for i in decrypted:
            if int(i) > 128:
                fail = 1

        if fail == 0:
            print(decrypted.decode('ascii'))
