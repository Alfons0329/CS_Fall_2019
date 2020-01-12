from pwn import *
import libnum
import math
import time
# rem = process(./server.py)

while True:
    rem = remote('eductf.zoolab.org', 20000)
    rem.sendlineafter('>', '1')

    # get public key pair, (n, e)
    n1 = rem.recvline(keepends=False).split()[-1]
    e1 = rem.recvline(keepends=False).split()[-1]

    # get c, the cipher text wanna attacking
    rem.sendlineafter('>', '2')
    c1 = rem.recvline(keepends=False).split()[-1]

    # y = c * x ^ e mod n
    n1 = int(n1)
    e1 = int(e1)
    c1 = hex(int(c1, 16))
    print('n1 = ', n1)
    print('e1 = ', e1)
    print('c1 = ', c1)
    rem.close()

    # second try
    time.sleep(1)
    rem = remote('eductf.zoolab.org', 20000)
    rem.sendlineafter('>', '1')

    # get public key pair, (n, e)
    n2 = rem.recvline(keepends=False).split()[-1]
    e2 = rem.recvline(keepends=False).split()[-1]

    # get c, the cipher text wanna attacking
    rem.sendlineafter('>', '2')
    c2 = rem.recvline(keepends=False).split()[-1]

    # y = c * x ^ e mod n
    n2 = int(n2)
    e2 = int(e2)
    c2 = hex(int(c2, 16))
    print('n2 = ', n2)
    print('e2 = ', e2)
    print('c2 = ', c2)

    rem.close()

    if math.gcd(n1, n2) != 1:
        print('n1, n2 not coprime')

print('n1 ', n1)
print('e1 ', e1)
print('n2 ', n2)
print('e2 ', e2)
