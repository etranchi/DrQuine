;Salut Grace
%macro DATA 0
section .data
	fname: db"Grace_kid.s", 0
	fread:	db"w", 0
	str:db";Salut Grace%2$c", 0
%endmacro
%macro MAIN 0
_main:
	call _toto
	ret
%endmacro

DATA

section .text
	global _toto
	extern _fopen
	extern _fprintf



_toto:
	push rbp
	mov rbp, rsp
	lea rdi, [rel fname]
	lea rsi, [rel fread]
	call _fopen
	test rax, rax
	je fin
	mov rdi,rax
	lea rsi,[rel str]
	lea rdx,[rel str]
	mov rcx,0x0A
	mov r8,0x22
	call _fprintf
	call fin

fin:
	mov rsp, rbp
	pop rbp
	ret

MAIN