	global	_ft_memset

	section	.text
_ft_memset:
	mov		[rel start_dst], rdi

	mov		rax, rsi
	mov		rcx, rdx
	rep		stosb

	mov		rdi, [rel start_dst]
	mov		rax, rdi
	ret

	section	.bss
	start_dst	resb 8

