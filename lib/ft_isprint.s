	global	_ft_isprint

	section	.text
_ft_isprint:
	cmp		rdi, 32				; space
	jl		FALSE
	cmp		rdi, 126			; tilde
	jg		FALSE
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret

