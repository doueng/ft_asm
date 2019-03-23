
	global	_ft_cat

	%define	fd r15

	section	.text
_ft_cat:
	cmp		edi, 0
	jl		ERR

	xor		rax, rax
	mov		fd, rdi

LOOP:

READ:
	mov		rdi, fd
	mov		rdx, 1
	lea		rsi, [rel buffer]
	mov		rax, 0x2000003
	syscall

	;; fd
	cmp		word [rel buffer], word '^C' ; use "fb" to set interrupt flag
	je		EXIT
	cmp		rax, 0
	je		EXIT
	jl		ERR

WRITE:
	mov		rdi, 1
	mov		rdx, 1
	lea		rsi, [rel buffer]
	mov		rax, 0x2000004
	syscall
	cmp		rax, 0
	jl		ERR

	jmp		LOOP

EXIT:
	ret

ERR:
	mov		rax, -1
	ret

	section .bss
	buffer	resb 100
