;Salut toi
section .data
str: db";Salut toi%2$csection .data%2$cstr: db%3$c%1$s%3$c, 0%2$csection .text%2$cglobal _main%2$cextern _printf%2$c_main:%2$cpush rbp%2$cmov rbp,rsp%2$clea rdi,[rel str]%2$clea rsi,[rel str]; va_arg 1%2$cmov rdx,0x0A;va_arg 2 line feed%2$cmov rcx,0x22;va_arg 3 guillemet%2$ccall _printf%2$cmov rsp,rbp%2$cpop rbp%2$ccall fin%2$cfin:%2$cret%2$c", 0
section .text
global _main
extern _printf
_main:
push rbp
mov rbp,rsp
lea rdi,[rel str]
lea rsi,[rel str]; va_arg 1
mov rdx,0x0A;va_arg 2 line feed
mov rcx,0x22;va_arg 3 guillemet
call _printf
mov rsp,rbp
pop rbp
call fin
fin:
ret
