	global	_ft_memset

	section	.text
_ft_memset:
	mov		r15, rdi

	mov		rax, rsi
	mov		rcx, rdx
	rep		stosb

	mov		rdi, r15
	mov		rax, rdi
	ret
