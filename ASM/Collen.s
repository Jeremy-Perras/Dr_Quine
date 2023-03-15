bits 64 ;comment outside
extern _printf
section .rodata
    Collen db "bits 64 ;comment outside%1$cextern _printf%1$csection .rodata%1$c    Collen db %2$c%3$s %2$c,0%1$csection .text%1$c    global  _main%1$c    _main:%1$c        lea rdi, [rel Collen] ; comments in main%1$c        mov rsi, 10%1$c        mov rdx, 34%1$c        lea rcx, [rel Collen]%1$c        call _printf%1$c        jmp _return%1$c%1$c    _return:%1$c        ret",0
section .text
    global  _main
    _main:
        lea rdi, [rel Collen] ; comments in main
        mov rsi, 10
        mov rdx, 34
        lea rcx, [rel Collen]
        call _printf
        jmp _return

    _return:
        ret