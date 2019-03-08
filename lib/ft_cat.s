
	global	_ft_cat

	section	.text
_ft_cat:
	cmp		rdi, 0
	jl		EXIT

	mov		[rel fd], rdi

LOOP:

READ:
	mov		rdi, [rel fd]
	mov		rdx, 1
	lea		rsi, [rel buffer]
	mov		rax, 0x2000003
	syscall

	cmp		byte [rel buffer], byte '^C'
	je		EXIT
	cmp		rax, 0
	jle		EXIT

WRITE:
	mov		rdi, 1
	mov		rdx, 1
	lea		rsi, [rel buffer]
	mov		rax, 0x2000004
	syscall
	jmp		LOOP

EXIT:
	ret

	section .bss
	buffer	resb 1
	fd		resb 4
