
	global	_ft_strcat

	extern	_ft_strlen
	extern	_ft_strcpy

	section	.text
_ft_strcat:
	push	rdi

	call	_ft_strlen
	add		rdi, rax
	call	_ft_strcpy

RET:
	pop		rdi
	ret
