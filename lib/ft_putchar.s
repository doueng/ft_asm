
	global	_ft_putchar

	section	.text
_ft_putchar:
	mov		rax, 0x2000004
	lea		rsi, rdi
	mov		rdi, 1
	mov		rdx, 1
	syscall
	ret
