	global	_ft_strnew

	%define new_str r15
	%define size r14

	extern	_malloc
	extern	_ft_bzero

	section	.text
_ft_strnew:
	sub		rsp, 8				; 16 align stack

	inc		rdi
	mov		size, rdi

	call	_malloc
	cmp		rax, 0
	je		RET
	mov		new_str, rax

	mov		rsi, size
	mov		rdi, new_str
	call	_ft_bzero

	mov		rax, new_str

RET:
	add		rsp, 8				; 16 align stack
	ret
