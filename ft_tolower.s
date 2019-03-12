	global	_ft_tolower

	extern	_ft_isalpha

	section	.text
_ft_tolower:
	push	rax
	push	rax
	call	_ft_isalpha
	cmp		rax, 0
	je		NOT_ALPHA
	pop		rax
	pop		rax
	or		rdi, 32
	mov		rax, rdi
	ret

NOT_ALPHA:
	pop		rax
	pop		rax
	mov		rax, rdi
	ret
