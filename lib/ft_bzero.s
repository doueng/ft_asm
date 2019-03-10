	global	_ft_bzero

	extern	_ft_memset

	section	.text
_ft_bzero:
	sub		rsp, 8				; 16 align stack

	cmp		rdi, 0
	je		RET

	mov		rdx, rsi
	mov		rsi, 0
	call	_ft_memset

RET:
	add		rsp, 8				; 16 align stack
	ret
