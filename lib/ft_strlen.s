	global	_ft_strlen

	section	.text
_ft_strlen:
	xor		rax, rax
	mov		[rel start], rdi

	cmp		rdi, 0
	je		RET

	mov		rcx, 0xffffffff
	xor		rax, rax
	repne	scasb

	sub		rdi, [rel start]
	mov		rax, rdi
	cmp		rax, 0
	je		RET
	dec		rax

RET:
	mov		rdi, [rel start]
	ret

	section	.bss
	start	resb 8
