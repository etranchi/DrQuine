section .data
	fname:db "Sully_", 0
	fext:db ".s", 0
	fint: db"5", 0
	iden:db "%s", 10, 0
	fwrite:db"w", 0
	str:db"section .data", 10, 0
	nasmcmd:db"nasm -f macho64 ", 0
	ldcmdf:db"& ld ", 0
	ldcmds:db".o -o ", 0
	ldcmdt:db" -macosx_version_min 10.11 -lSystem", 0

section .bss
	tmp: resq 10000

section .text
	global _main
	extern _system
	extern _strcat
	extern _strcpy
	extern _execl
	extern _fopen
	extern _fprintf
	extern _sprintf
	extern _printf
	extern _atoi
_main:
	push rbp
	mov rbp, rsp

	lea rdi, [rel fint]
	call _atoi
	cmp rax, 0
	je end

	mov r8, rax

	lea rdi, [rel tmp]
	lea rsi, [rel fname] 
	call _strcpy ;tmp = "Sully_"

	lea rdi, [rel tmp]
	lea rsi, [rel fint]
	call _strcat ;tmp = "Sully_5"

	mov r10, tmp ; Sully_int STOCK

	lea rdi, [rel tmp]
	lea rsi, [rel fext] 
	call _strcat ;tmp = "Sully_5.s"

	lea rdi, [rel tmp]
	lea rsi, [rel fwrite]
	call _fopen ; 

	mov r9, rax ; fd

	mov rdi, r9
	lea rsi, [rel str]
	lea rdx, [rel str]
	call _fprintf ; printf str in fd


	lea rdi, [rel nasmcmd]
	lea rsi, [rel tmp]
	call _strcat ; nasmcmd = "nasm -f macho64 Sully_5.s"


	lea rdi, [rel nasmcmd]
	mov rsi, ldcmdf
	call _strcat; BUUUUGGG want nasmcmd = "nasm -f macho64 Sully_5.s & ld "
				; mais jai nasm -f macho64 Sully_5.sully_5.s

	;mov rdi, rax
	;call _system


	lea rdi, [rel iden]
	lea rsi, [rel nasmcmd]
	call _printf


	;mov rdi, r8
	;call _execl
end:
	mov rsp, rbp
	pop rbp
	ret