	global	_ft_strdup

	%define str_head r15
	%define size r14

	extern	_ft_strlen
	extern	_malloc
	extern	_ft_memcpy

	section	.text
_ft_strdup:
	cmp		rdi, 0
	je		RET

	mov		str_head, rdi
	call	_ft_strlen

	inc		rax
	mov		size, rax
	mov		rdi, rax

	call	_malloc
	cmp		rax, 0
	je		RET
	mov		rdi, rax

	mov		rsi, str_head
	mov		rdx, size
	call	_ft_memcpy

RET:
	mov		rax, rdi
	ret
