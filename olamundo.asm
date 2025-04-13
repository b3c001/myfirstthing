section .data
ola: db "ola mundo" ,0xa

section .text
global _start
start:
mov ecx, ola
mov edx, 10
mov ebx, 1
mov eax, 4 ; chama write()
int 0x80 ; syscall

; exit(0)
mov eax, 1
mov ebx, 0
int 0x80
