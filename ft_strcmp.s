	global	_ft_strcmp

	section	.text
_ft_strcmp:
	mov		[rel s1], rdi
	mov		[rel s2], rsi
	mov		rdx, 0xffffffff
	repne	cmpsb
	sub		rdi, rsi
	mov		rax, rdi
	mov		rdi, [rel s1]
	mov		rsi, [rel s2]
	ret

	section	.bss
	s1		resb 8
	s2		resb 8
