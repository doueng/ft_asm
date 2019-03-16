	global	_ft_strcmp

	%define s1_head r14
	%define s2_head r15

	section	.text
_ft_strcmp:
	mov		s1_head, rdi
	mov		s2_head, rsi
	mov		rdx, 0xffffffff
	repne	cmpsb
	sub		rdi, rsi
	mov		rax, rdi
	mov		rdi, s1_head
	mov		rsi, s2_head
	ret
