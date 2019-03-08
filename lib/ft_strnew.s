
	global	_ft_strnew

	extern	_malloc
	extern	_ft_bzero

	section	.text
_ft_strnew:
	inc		rdi
	mov		rsi, rdi
	call	_malloc
	mov		rdi, rax
	call	_ft_bzero
	ret
