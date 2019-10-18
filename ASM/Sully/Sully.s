section .data
	fname:db "Sully_", 0
	fext:db ".s", 0
	fint: db"5", 0
	iden:db "%s", 10, 0
	fwrite:db"w", 0
	str:db"section .data%2$csection .text%2$cglobal _main%2$c%2$c_main:%2$cret%2$c", 0
	nasmcmd:db"nasm -f macho64 ", 0
	ldcmdf:db" & ld ", 0
	ldcmds:db".o -o ", 0
	ldcmdt:db" -macosx_version_min 10.11 -lSystem", 0
	runit:db"./",0

section .bss
	buffer: resw 100
	cmd: resw 100
	run: resw 100

section .text
	global _main
	extern _system
	extern _strcat
	extern _strncat
	extern _execl
	extern _fopen
	extern _fclose
	extern _fprintf
	extern _printf
	extern _atoi
	extern _access


decint:
	dec r15
	ret

_main:
	push rbp
	mov rbp, rsp

	mov rdi, fint
	call _atoi
	cmp rax, 0
	je end

	mov r15, rax

	mov rdi, buffer
	mov rsi, fname
	call _strcat ; buffer = Sully_

	mov rdi, buffer
	mov rsi, fint
	call _strcat ; buffer = Sully_5.s

	mov rdi, buffer
	mov rsi, 0
	call _access

	cmp rax, 0
	je decint

	mov rdi, cmd
	mov rsi, nasmcmd
	call _strcat ; cmd = nasm -f macho64 


	mov rdi, buffer
	mov rsi, fext
	call _strcat ; buffer = Sully_5.s

	mov rdi, cmd
	mov rsi, buffer
	call _strcat ; cmd = nasm -f macho64 Sully_5.s

	mov rdi, cmd
	mov rsi, ldcmdf
	call _strcat ; cmd = nasm -f macho64 Sully_5.s & ld

	mov rdi, cmd
	mov rsi, buffer
	mov rdx, 7
	call _strncat ; cmd = nasm -f macho64 Sully_5.s & ld Sully_5

	mov rdi, cmd
	mov rsi, ldcmds
	call _strcat ; cmd = nasm -f macho64 Sully_5.s & ld Sully_5.o -o

	mov rdi, cmd
	mov rsi, buffer
	mov rdx, 7
	call _strncat ; cmd = nasm -f macho64 Sully_5.s & ld Sully_5.o -o Sully_5

	mov rdi, cmd
	mov rsi, ldcmdt
	call _strcat ; cmd = nasm -f macho64 Sully_5.s & ld Sully_5.o -o Sully_5 -macosx_version_min 10.11 -lSystem

	mov rdi, buffer
	mov rsi, fwrite
	call _fopen ; open file Sully_5.s

	mov r12, rax

	;mov rdi, iden
	;mov rsi, r15
	;call _printf


	mov rdi, rax
	mov rsi, str
	mov rdx, str
	mov rcx, 0x0A
	call _fprintf ; print inside fd

	mov rdi, r12
	call _fclose

	mov rdi, cmd
	call _system ; compile next Sully 


	mov rdi, run
	mov rsi, runit
	call _strcat ; run = ./

	mov rdi, run
	mov rsi, buffer
	mov rdx, 7
	call _strncat

	mov rdi, run
	call _execl



	;mov rdi, iden
	;mov rsi, run
	;call _printf

	;mov rdi, iden
	;mov rsi, buffer
	;call _printf

	;mov rdi, iden
	;mov rsi, cmd
	;call _printf

















	;mov rdi, iden
	;mov rsi, ldcmdf
	;call _printf

	;mov rdi, iden
	;mov rsi, ldcmds
	;call _printf

	;mov rdi, iden
	;mov rsi, ldcmdt
	;call _printf
end:
	mov rsp, rbp
	pop rbp
	ret