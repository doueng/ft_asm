	global	_ft_memcpy

	section	.text
_ft_memcpy:
	mov		[rel start_dst], rdi
	mov		[rel start_src], rsi

	mov		rcx, rdx

	rep		movsb

	mov		rdi, [rel start_dst]
	mov		rsi, [rel start_src]
	mov		rax, rdi
	ret

	section	.bss
	start_dst	resb 8
	start_src	resb 8
