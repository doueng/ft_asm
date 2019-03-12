	global	_ft_isalpha

	section	.text
_ft_isalpha:
	cmp		rdi, 'a'
	jl		UPPERCASE
	cmp		rdi, 'z'
	jg		FALSE
	mov		rax, 1
	ret

UPPERCASE:
	cmp		rdi, 'A'
	jl		FALSE
	cmp		rdi, 'Z'
	jg		FALSE
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret

