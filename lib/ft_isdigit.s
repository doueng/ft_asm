	global	_ft_isdigit

	section	.text
_ft_isdigit:
	cmp		rdi, 48			; '0'
	jl		FALSE
	cmp		rdi, 57			; '9'
	jg		FALSE
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret
