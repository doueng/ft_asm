	global	_ft_strnew

	extern	_malloc
	extern	_ft_bzero

	section	.text
_ft_strnew:
	push	rdi

	inc		rdi
	call	_malloc
	mov		[rel res], rax

	mov		rsi, rdi
	mov		rdi, rax
	call	_ft_bzero

	pop		rdi
	mov		rax, [rel res]
	ret

	section	.bss
	res		resb 8
