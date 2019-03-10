	global	_ft_putchar

	section	.text
_ft_putchar:
	mov		[rel buff], rdi
	mov		rdi, 1
	mov		rdx, 1
	lea		rsi, [rel buff]
	mov		rax, 0x2000004
	syscall
	ret

	section	.bss
	buff	resb 8
