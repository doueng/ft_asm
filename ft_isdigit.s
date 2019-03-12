	global	_ft_isdigit

	section	.text
_ft_isdigit:
	cmp		rdi, '0'
	jl		FALSE
	cmp		rdi, '9'
	jg		FALSE
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret
