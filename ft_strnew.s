	global	_ft_strnew

	extern	_malloc
	extern	_ft_bzero

	section	.text
_ft_strnew:
	sub		rsp, 8				; 16 align stack

	inc		rdi
	mov		[rel size], rdi

	call	_malloc
	cmp		rax, 0
	je		RET
	mov		[rel res], rax

	mov		rsi, [rel size]
	mov		rdi, [rel res]
	call	_ft_bzero

	mov		rax, [rel res]

RET:
	add		rsp, 8				; 16 align stack
	ret

	section	.bss
	res		resb 8
	size	resb 8
