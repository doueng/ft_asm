
	global	_ft_isalnum
	extern	_ft_isalpha
	extern	_ft_isdigit

	section	.text
_ft_isalnum:
	push	rax
	push	rax

	call	_ft_isalpha
	cmp		rax, 1
	je		TRUE
	jne		IS_DIGIT

IS_DIGIT:
	call	_ft_isdigit
	cmp		rax, 1
	je		TRUE
	jne		FALSE

TRUE:
	pop		rax
	pop		rax
	mov		rax, 1
	ret

FALSE:
	pop		rax
	pop		rax
	mov		rax, 0
	ret
