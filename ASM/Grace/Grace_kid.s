;Salut Grace
%macro DATA 0
section .data
fname: db"Grace_kid.s", 0
fread: db"w", 0
str:db";Salut Grace%2$c%4$cmacro DATA 0%2$csection .data%2$cfname: db%3$cGrace_kid.s%3$c, 0%2$cfread: db%3$cw%3$c, 0%2$cstr:db%3$c%1$s%3$c, 0%2$c%4$cendmacro%2$cDATA%2$c%4$cmacro MAIN 0%2$csection .text%2$cglobal _main%2$cextern _fopen%2$cextern _fprintf%2$c_main:%2$cpush rbp%2$cmov rbp, rsp%2$clea rdi,[rel fname]%2$clea rsi,[rel fread]%2$ccall _fopen%2$ctest rax, rax%2$cje fin%2$cmov rdi,rax%2$clea rsi,[rel str]%2$clea rdx, [rel str]%2$cmov rcx, 0x0A%2$cmov r8,0x22%2$cmov r9,0x25%2$ccall _fprintf%2$ccall fin%2$cfin:%2$cmov rsp, rbp%2$cpop rbp%2$cret%2$c%4$cendmacro%2$c%4$cdefine COU 0%2$c%4$cdefine UOC 1%2$c%4$cdefine OCU 2%2$cMAIN%2$c", 0
%endmacro
DATA
%macro MAIN 0
section .text
global _main
extern _fopen
extern _fprintf
_main:
push rbp
mov rbp, rsp
lea rdi,[rel fname]
lea rsi,[rel fread]
call _fopen
test rax, rax
je fin
mov rdi,rax
lea rsi,[rel str]
lea rdx, [rel str]
mov rcx, 0x0A
mov r8,0x22
mov r9,0x25
call _fprintf
call fin
fin:
mov rsp, rbp
pop rbp
ret
%endmacro
%define COU 0
%define UOC 1
%define OCU 2
MAIN
