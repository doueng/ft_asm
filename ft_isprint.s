	global	_ft_isprint

	section	.text
_ft_isprint:
	cmp		rdi, ' '
	jl		FALSE
	cmp		rdi, '~'
	jg		FALSE
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret

