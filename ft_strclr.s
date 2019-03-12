
	global	_ft_strclr

	extern	_ft_strlen
	extern	_ft_bzero

	section	.text
_ft_strclr:
	push	rdi

	call	_ft_strlen

	mov		rsi, rax
	call	_ft_bzero

	pop		rdi
	mov		rax, rdi
	ret

