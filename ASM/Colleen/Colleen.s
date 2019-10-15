;Com
section .data
	str: db ";Com", 0x0A, "section .data", 0x0A, 0x09, "str: db", 0x22, "%s", 0x22, 0x0A, 0x09, "len: equ$-str",0x0A, "section .text", 0x0A, 0x09, "global _main", 0x0A, 0x09, "extern _printf", 0x0A, "_main:", 0x0A, 0
		.len: equ $ - str
	fmt:    db "%s", 10, 0          ; The printf format, "\n",'0'

section .text           ; Code section.
	global _main		; the standard gcc entry point
	extern _printf
_main:				; the program label for the entry point
	push    rbp		; set up stack frame, must be alligned
	mov	rdi,str
	mov	rsi,str
	mov	rax,0		; or can be  xor  rax,rax
	call   _printf		; Call C function
	pop	rbp		; restore stack
	mov	rax,0		; normal, no error, return value
	ret