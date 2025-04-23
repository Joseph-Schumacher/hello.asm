section .text
global _start

looprint:
push rcx
call _print
pop rcx
dec rcx
jnz looprint
ret

_print:
mov rax, 1 ; use sys_write
mov rdi, 1 ; target stdout
mov rsi, msg
mov rdx, 21
syscall
ret

EXIT: ; call sys_exit with status 0
mov rax, 60 
mov rdi, 0
syscall

_start:

mov rcx, 5
call looprint
call EXIT

section .data

msg: db "Ich werde wahnsinnig", 10
