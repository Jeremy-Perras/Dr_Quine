bits 64 ;comment outside
extern _printf
section .rodata
    Colleen db "bits 64 ;comment outside%1$cextern _printf%1$csection .rodata%1$c    Colleen db %2$c%3$s%2$c,0%1$csection .text%1$c    global  _main%1$c    _main:%1$c        push r11%1$c        lea rdi, [rel Colleen] ; comments in main%1$c        mov rsi, 10%1$c        mov rdx, 34%1$c        lea rcx, [rel Colleen]%1$c        call _printf%1$c        jmp _return%1$c%1$c    _return:%1$c        pop r11%1$c        ret",0
section .text
    global  _main
    _main:
        push r11
        lea rdi, [rel Colleen] ; comments in main
        mov rsi, 10
        mov rdx, 34
        lea rcx, [rel Colleen]
        call _printf
        jmp _return

    _return:
        pop r11
        ret