
	global	_ft_strnew

	extern	_malloc
	extern	_ft_bzero

	section	.text
_ft_strnew:
	push	rcx

	inc		rdi
	mov		rsi, rdi
	call	_malloc
	mov		rdi, rax
	call	_ft_bzero

	pop		rcx
	ret
