bits 64
; One Comment.
extern _dprintf
%define GRACE_CODE "bits 64%1$c; One Comment.%1$cextern _dprintf%1$c%%define GRACE_CODE %2$c%3$s%2$c%1$c%%define DECLARE_MAIN global _main%1$c%%define MAIN_INJECTION _main:%1$c%1$csection .rodata%1$c    file_content: db GRACE_CODE, 0%1$c    file_name: db %2$cGrace_kid.s%2$c, 0%1$c%1$csection .text%1$c    DECLARE_MAIN%1$c    MAIN_INJECTION%1$c    push r11%1$c    lea     rdi, [rel file_name]%1$c    mov     rsi, 0x202%1$c    mov     rax, 0x2000005%1$c    mov     rdx, 644o%1$c    syscall%1$c    mov rdi, rax%1$c    lea rsi, [rel file_content]%1$c    mov rdx, 10%1$c    mov     rcx, 34%1$c    lea     r8, [rel file_content]%1$c    call _dprintf%1$c    pop r11%1$c    ret"
%define DECLARE_MAIN global _main
%define MAIN_INJECTION _main:

section .rodata
    file_content: db GRACE_CODE, 0
    file_name: db "Grace_kid.s", 0

section .text
    DECLARE_MAIN
    MAIN_INJECTION
    push r11
    lea     rdi, [rel file_name]
    mov     rsi, 0x202
    mov     rax, 0x2000005
    mov     rdx, 644o
    syscall
    mov rdi, rax
    lea rsi, [rel file_content]
    mov rdx, 10
    mov     rcx, 34
    lea     r8, [rel file_content]
    call _dprintf
    pop r11
    ret