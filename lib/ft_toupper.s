	global	_ft_toupper

	extern	_ft_isalpha

	section	.text
_ft_toupper:
	push	rax
	push	rax
	call	_ft_isalpha
	cmp		rax, 0
	je		NOT_ALPHA
	pop		rax
	pop		rax
	and		rdi, 95
	mov		rax, rdi
	ret

NOT_ALPHA:
	pop		rax
	pop		rax
	mov		rax, rdi
	ret
