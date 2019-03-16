	global	_ft_strlen

	%define	head r15

	section	.text
_ft_strlen:
	xor		rax, rax
	mov		head, rdi

	cmp		rdi, 0
	je		RET

	mov		rcx, 0xffffffff
	xor		rax, rax
	repne	scasb

	sub		rdi, head
	mov		rax, rdi
	cmp		rax, 0
	je		RET
	dec		rax

RET:
	mov		rdi, head
	ret
