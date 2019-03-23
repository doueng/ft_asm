	global	_ft_putchar

	extern	_write

	section	.text
_ft_putchar:
	sub		rsp, 24
	mov		[rsp+12], rdi

	mov		rdi, 1
	lea		rsi, [rsp+12]
	mov		rdx, 1
	call	_write

	mov		al, BYTE [rsp+12]
	add		rsp, 24
	ret
