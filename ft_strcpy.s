	global	_ft_strcpy

	extern	_ft_strlen

	section	.text
_ft_strcpy:
	mov		[rel dst], rdi
	mov		[rel src], rsi

	mov		rdi, rsi
	call	_ft_strlen

	mov		rcx, rax
	mov		rdi, [rel dst]
	rep		movsb
	mov		byte [rdi], 0

	mov		rax, [rel dst]

	ret

	section	.bss
	dst		resb 8
	src		resb 8
