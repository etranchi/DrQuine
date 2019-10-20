section .data
ref:db"./Sully_5.s",0
fname:db"Sully_", 0
fext:db".s", 0
fint:db"2", 0
iden:db"%s", 10, 0
fwrite:db"w", 0
str:db"section .data%2$cref:db%3$c./Sully_5.s%3$c,0%2$cfname:db%3$cSully_%3$c, 0%2$cfext:db%3$c.s%3$c, 0%2$cfint:db%3$c%4$s%3$c, 0%2$ciden:db%3$c%5$cs%3$c, 10, 0%2$cfwrite:db%3$cw%3$c, 0%2$cstr:db%3$c%1$s%3$c, 0%2$cnasmcmd:db%3$cnasm -f macho64 %3$c, 0%2$cldcmdf:db%3$c ; ld %3$c, 0%2$cldcmds:db%3$c.o -o %3$c, 0%2$cldcmdt:db%3$c -macosx_version_min 10.11 -lSystem%3$c, 0%2$crunit:db%3$c./%3$c,0%2$ciden2:db%3$c%5$cd%3$c,0%2$csection .bss%2$cbuffer: resw 100%2$ccmd: resw 100%2$crun: resw 100%2$cnb: resb 2%2$csection .text%2$cglobal _main%2$cextern _system%2$cextern _strcat%2$cextern _strncat%2$cextern _fopen%2$cextern _fclose%2$cextern _fprintf%2$cextern _printf%2$cextern _atoi%2$cextern _access%2$cdecint:%2$cdec r15%2$cjmp go%2$c_main:%2$cpush rbp%2$cmov rbp, rsp%2$cmov rdi, fint%2$ccall _atoi%2$ccmp rax, 0%2$cjl end%2$cmov r15,rax%2$cmov rdi, ref%2$cmov rsi, 0%2$ccall _access%2$ccmp rax, 0%2$cje decint%2$cgo:%2$cmov rdi, buffer%2$cmov rsi, fname%2$ccall _strcat%2$cmov rax, r15%2$clea rsi, [rel nb]%2$cadd rsi, 1%2$cmov byte[rsi], 0%2$cadd rax, '0'%2$cdec rsi%2$cmov [rsi], rax%2$cmov r12, rsi%2$cmov rdi, buffer%2$cmov rsi, r12%2$ccall _strcat%2$cmov rdi, cmd%2$cmov rsi, nasmcmd%2$ccall _strcat%2$cmov rdi, buffer%2$cmov rsi, fext%2$ccall _strcat%2$cmov rdi, cmd%2$cmov rsi, buffer%2$ccall _strcat%2$cmov rdi, cmd%2$cmov rsi, ldcmdf%2$ccall _strcat%2$cmov rdi, cmd%2$cmov rsi, buffer%2$cmov rdx, 7%2$ccall _strncat%2$cmov rdi, cmd%2$cmov rsi, ldcmds%2$ccall _strcat%2$cmov rdi, cmd%2$cmov rsi, buffer%2$cmov rdx, 7%2$ccall _strncat%2$cmov rdi, cmd%2$cmov rsi, ldcmdt%2$ccall _strcat%2$cmov rdi, buffer%2$cmov rsi, fwrite%2$ccall _fopen%2$cmov r15, rax%2$cmov rdi, rax%2$clea rsi, [rel str]%2$clea rdx, [rel str]%2$cmov rcx, 0x0A%2$cmov r8,0x22%2$cmov r9, r12%2$cmov rbx,0x25%2$cpush rbx%2$cpush rbx%2$ccall _fprintf%2$cmov rdi, r15%2$ccall _fclose%2$cmov rdi, cmd%2$ccall _system%2$cmov rdi, run%2$cmov rsi, runit%2$ccall _strcat%2$cmov rdi, run%2$cmov rsi, buffer%2$cmov rdx, 7%2$ccall _strncat%2$cmov rdi, run%2$ccall _system%2$cend:%2$cmov rsp, rbp%2$cpop rbp%2$cret%2$c", 0
nasmcmd:db"nasm -f macho64 ", 0
ldcmdf:db" ; ld ", 0
ldcmds:db".o -o ", 0
ldcmdt:db" -macosx_version_min 10.11 -lSystem", 0
runit:db"./",0
iden2:db"%d",0
section .bss
buffer: resw 100
cmd: resw 100
run: resw 100
nb: resb 2
section .text
global _main
extern _system
extern _strcat
extern _strncat
extern _fopen
extern _fclose
extern _fprintf
extern _printf
extern _atoi
extern _access
decint:
dec r15
jmp go
_main:
push rbp
mov rbp, rsp
mov rdi, fint
call _atoi
cmp rax, 0
jl end
mov r15,rax
mov rdi, ref
mov rsi, 0
call _access
cmp rax, 0
je decint
go:
mov rdi, buffer
mov rsi, fname
call _strcat
mov rax, r15
lea rsi, [rel nb]
add rsi, 1
mov byte[rsi], 0
add rax, '0'
dec rsi
mov [rsi], rax
mov r12, rsi
mov rdi, buffer
mov rsi, r12
call _strcat
mov rdi, cmd
mov rsi, nasmcmd
call _strcat
mov rdi, buffer
mov rsi, fext
call _strcat
mov rdi, cmd
mov rsi, buffer
call _strcat
mov rdi, cmd
mov rsi, ldcmdf
call _strcat
mov rdi, cmd
mov rsi, buffer
mov rdx, 7
call _strncat
mov rdi, cmd
mov rsi, ldcmds
call _strcat
mov rdi, cmd
mov rsi, buffer
mov rdx, 7
call _strncat
mov rdi, cmd
mov rsi, ldcmdt
call _strcat
mov rdi, buffer
mov rsi, fwrite
call _fopen
mov r15, rax
mov rdi, rax
lea rsi, [rel str]
lea rdx, [rel str]
mov rcx, 0x0A
mov r8,0x22
mov r9, r12
mov rbx,0x25
push rbx
push rbx
call _fprintf
mov rdi, r15
call _fclose
mov rdi, cmd
call _system
mov rdi, run
mov rsi, runit
call _strcat
mov rdi, run
mov rsi, buffer
mov rdx, 7
call _strncat
mov rdi, run
call _system
end:
mov rsp, rbp
pop rbp
ret
