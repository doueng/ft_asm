	global	_ft_puts
	extern	_write
	extern	_ft_strlen

	section	.text
_ft_puts:
	cmp		rdi, 0
	je		NULL

	call	_ft_strlen
	mov		rdx, rax
	mov		rax, 0x2000004
	mov		rsi, rdi
	mov		rdi, 1
	syscall
	ret
NULL:
	mov		rax, rdi
	ret
