	global	_ft_strcat

	extern	_ft_strlen
	extern	_ft_strcpy

	section	.text
_ft_strcat:
	push	rdi
	push	rsi

	call	_ft_strlen
	pop		rsi
	add		rdi, rax
	call	_ft_strcpy

	pop		rdi
	ret
