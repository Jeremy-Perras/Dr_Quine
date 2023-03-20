bits 64
extern _dprintf
extern _printf
extern _system
extern _sprintf
%define NUMBER 5
%define SULLY_CODE "bits 64%1$cextern _dprintf%1$cextern _printf%1$cextern _system%1$cextern _sprintf%1$c%%define NUMBER %4$d%1$c%%define SULLY_CODE %2$c%3$s%2$c%1$csection .rodata%1$c    file_name: db %2$cSully_%%1$c.s%2$c, 0%1$c    ex_name: db %2$cSully_%%1$c%2$c,0%1$c    obj_name: db %2$cSully_%%1$c.o%2$c,0%1$c    file_content: db SULLY_CODE, 0%1$c    compile: db %2$cnasm -f macho64 -g -F dwarf %%1$s && arch -x86_64 gcc -o %%2$s %%3$s && ./%%2$s%2$c, 0%1$csection .bss%1$c   final_cmd:  resb    255%1$c   file_n resb 15%1$c   ex_n resb 15%1$c   obj_n resb 15%1$c%1$csection .text%1$c    global _main%1$c    _main:%1$c        push r11%1$c        mov rax, NUMBER%1$c        cmp rax, 0%1$c        je  _return%1$c    _create_executable_name:%1$c        lea rdi, [rel ex_n]%1$c        lea rsi, [rel ex_name]%1$c        mov dl, 48%1$c        mov al, NUMBER%1$c        dec al%1$c        add dl, al%1$c        call _sprintf%1$c    _create_file_name:%1$c        lea rdi, [rel file_n]%1$c        lea rsi, [rel file_name]%1$c        mov dl, 48%1$c        mov al, NUMBER%1$c        dec al%1$c        add dl, al%1$c        call _sprintf%1$c     _create_objet_name:%1$c        lea rdi, [rel obj_n]%1$c        lea rsi, [rel obj_name]%1$c        mov dl, 48%1$c        mov al, NUMBER%1$c        dec al%1$c        add dl, al%1$c        call _sprintf%1$c    _create_file:%1$c        lea rdi, [rel file_n]%1$c        mov rsi, 0x202%1$c        mov rax, 0x2000005%1$c        mov rdx, 644o%1$c        syscall%1$c        mov rdi, rax%1$c    _copy_inside_file:%1$c        lea rsi, [rel file_content]%1$c        mov rdx, 10%1$c        mov rcx, 34%1$c        lea r8, [rel file_content]%1$c        mov r9, NUMBER%1$c        dec r9%1$c        call _dprintf%1$c    _system_call:%1$c        lea rdi, [rel final_cmd]%1$c        lea rsi, [rel compile]%1$c        lea rdx, [rel file_n]%1$c        lea rcx, [rel ex_n]%1$c        lea r8, [rel obj_n]%1$c        call _sprintf%1$c        lea rdi, [rel final_cmd]%1$c        call _system%1$c    _return:%1$c        pop r11%1$c        ret"
section .rodata
    file_name: db "Sully_%1$c.s", 0
    ex_name: db "Sully_%1$c",0
    obj_name: db "Sully_%1$c.o",0
    file_content: db SULLY_CODE, 0
    compile: db "nasm -f macho64 -g -F dwarf %1$s && arch -x86_64 gcc -o %2$s %3$s && ./%2$s", 0
section .bss
   final_cmd:  resb    255
   file_n resb 15
   ex_n resb 15
   obj_n resb 15

section .text
    global _main
    _main:
        push r11
        mov rax, NUMBER
        cmp rax, 0
        je  _return
    _create_executable_name:
        lea rdi, [rel ex_n]
        lea rsi, [rel ex_name]
        mov dl, 48
        mov al, NUMBER
        dec al
        add dl, al
        call _sprintf
    _create_file_name:
        lea rdi, [rel file_n]
        lea rsi, [rel file_name]
        mov dl, 48
        mov al, NUMBER
        dec al
        add dl, al
        call _sprintf
     _create_objet_name:
        lea rdi, [rel obj_n]
        lea rsi, [rel obj_name]
        mov dl, 48
        mov al, NUMBER
        dec al
        add dl, al
        call _sprintf
    _create_file:
        lea rdi, [rel file_n]
        mov rsi, 0x202
        mov rax, 0x2000005
        mov rdx, 644o
        syscall
        mov rdi, rax
    _copy_inside_file:
        lea rsi, [rel file_content]
        mov rdx, 10
        mov rcx, 34
        lea r8, [rel file_content]
        mov r9, NUMBER
        dec r9
        call _dprintf
    _system_call:
        lea rdi, [rel final_cmd]
        lea rsi, [rel compile]
        lea rdx, [rel file_n]
        lea rcx, [rel ex_n]
        lea r8, [rel obj_n]
        call _sprintf
        lea rdi, [rel final_cmd]
        call _system
    _return:
        pop r11
        ret