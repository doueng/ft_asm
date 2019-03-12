	global	_ft_bzero

	extern	_ft_memset

	section	.text
_ft_bzero:
	cmp		rdi, 0
	je		RET

	mov		rdx, rsi
	mov		rsi, 0
	call	_ft_memset

RET:
	ret
