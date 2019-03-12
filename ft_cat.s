
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

	cmp		word [rel buffer], word '^C' ; use "fb" to set all flags
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
	buffer	resb 100
	fd		resb 4
