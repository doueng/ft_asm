; Note that the parameters have already been passed in rdi, rsi, and rdx.  We
;
	global	_ft_isalpha

	section	.text
_ft_isalpha:
	cmp		rdi, 96				; a
	jl		UPPERCASE
	cmp		rdi, 122			; z
	jg		FALSE
	mov		rax, 1
	ret

UPPERCASE:
	cmp		rdi, 65				; A
	jl		FALSE
	cmp		rdi, 90 			; Z
	jg		FALSE
	mov		rax, 1
	ret

FALSE:
	mov		rax, 0
	ret

