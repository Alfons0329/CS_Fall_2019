from pwn import *

# r = remote('eof.ais3.org', 29091)
r = process('./unlucky')

print(r.recvuntil(': '))
r.close()
