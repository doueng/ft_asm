	global	_ft_puts

	extern	_ft_strlen
	extern	_ft_putchar
	extern	_write

	section	.text
_ft_puts:
	sub		rsp, 8				; 16 align stack

	call	_ft_strlen

	mov		rdx, rax
	mov		rsi, rdi
	mov		rdi, 1
	call	_write

	mov		rdi, 10
	call	_ft_putchar
	mov		rax, 10

	add		rsp, 8				; 16 align stack
	ret
