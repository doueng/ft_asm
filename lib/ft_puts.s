	global	_ft_puts

	extern	_ft_strlen
	extern	_ft_putchar

	section	.text
_ft_puts:
	call	_ft_strlen

	mov		rdx, rax
	mov		rax, 0x2000004
	mov		rsi, rdi
	mov		rdi, 1
	syscall

	mov		rdi, 10
	call	_ft_putchar
	mov		rax, 10
	ret
