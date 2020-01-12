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

    # third try
    time.sleep(1)
    rem = remote('eductf.zoolab.org', 20000)
    rem.sendlineafter('>', '1')

    # get public key pair, (n, e)
    n3 = rem.recvline(keepends=False).split()[-1]
    e3 = rem.recvline(keepends=False).split()[-1]

    # get c, the cipher text wanna attacking
    rem.sendlineafter('>', '2')
    c3 = rem.recvline(keepends=False).split()[-1]

    # y = c * x ^ e mod n
    n3 = int(n3)
    e3 = int(e3)
    c3 = hex(int(c3, 16))
    print('n2 = ', n3)
    print('e2 = ', e3)
    print('c2 = ', c3)
    rem.close()

    if math.gcd(n1, n2) == 1 and math.gcd(n2, n3) == 1 and math.gcd(n1, n3) == 1:
        print('n1 n2 n3 is coprime')
        break

print('n1 ', n1)
print('e1 ', e1)
print('n2 ', n2)
print('e2 ', e2)
print('n3 ', n3)
print('e3 ', e3)
