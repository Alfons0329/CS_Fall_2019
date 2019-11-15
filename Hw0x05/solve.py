from pwn import *

p = process("./gen_num.out")
#r = process("./casino")
# random number part
numbers = p.recvall().split('\n')
del numbers[-1]
p.close()

# send
r = remote('edu-ctf.csie.org', 10172)
r.sendlineafter('name: ', 'AAAAAA')
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

r.close()
