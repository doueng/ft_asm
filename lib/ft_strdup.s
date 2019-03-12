	global	_ft_strdup

	extern	_ft_strlen
	extern	_malloc
	extern	_ft_memcpy

	section	.text
_ft_strdup:
	cmp		rdi, 0
	je		RET

	mov		[rel src], rdi
	call	_ft_strlen

	inc		rax
	mov		[rel size], rax
	mov		rdi, rax

	call	_malloc
	cmp		rax, 0
	je		RET
	mov		rdi, rax

	mov		rsi, [rel src]
	mov		rdx, [rel size]
	call	_ft_memcpy

RET:
	mov		rax, rdi
	ret

	section .bss
	src		resb 8
	size	resb 8
