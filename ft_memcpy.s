	global	_ft_memcpy

	%define src_head r15
	%define dst_head r14

	section	.text
_ft_memcpy:
	mov		dst_head, rdi
	mov		src_head, rsi

	mov		rcx, rdx

	rep		movsb

	mov		rdi, dst_head
	mov		rsi, src_head
	mov		rax, rdi
	ret
