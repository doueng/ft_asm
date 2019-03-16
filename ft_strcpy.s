	global	_ft_strcpy

	%define dst_head r14
	%define src_head r15

	extern	_ft_strlen

	section	.text
_ft_strcpy:
	mov		dst_head, rdi
	mov		src_head, rsi

	mov		rdi, rsi
	call	_ft_strlen

	mov		rcx, rax
	mov		rdi, dst_head
	rep		movsb
	mov		byte [rdi], 0

	mov		rax, dst_head

	ret
