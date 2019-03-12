	global	_ft_isascii

	section	.text
_ft_isascii:
	cmp		rdi, 0
	jl		FALSE
	cmp		rdi, 127
	jg		FALSE
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret

