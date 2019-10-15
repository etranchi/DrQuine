;Com
section .data
	str: db ";Com %2$ssection .data%2$s%3$sstr: db=%s2$s%3$slen: equ$-str%2$ssection .text%2$s%3$sglobal _main%2$s%3$sextern _printf%2$s_main:", 0
		.len: equ $ - str
	fmt:    db "%s", 0          ; The printf format, "\n",'0'

section .text           ; Code section.
	global _main		; the standard gcc entry point
	extern _printf
_main:				; the program label for the entry point
	;push    rbp		; set up stack frame, must be alligned
	;mov	rdi,fmt 	;first arg
	;mov	rsi,str 	; second arg
	;mov rdx,0x0A 	; third
	;mov rcx,0x22	; fourth
	;mov	rax,0		; or can be  xor  rax,rax
	push rbp
    mov rbp, rsp
	lea rdi, [rel str]
	mov rsi, 10 ; line feed
	mov rdx, 9 	; tab
	xor rax, rax
	call   _printf		; Call C function
	pop	rbp		; restore stack
	mov	rax,0		; normal, no error, return value
	ret