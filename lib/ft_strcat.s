
	global	_ft_strcat

	extern	_ft_strlen
	extern	_ft_strcpy
	extern	_strcpy

	section	.text
_ft_strcat:
	push	rax
	cmp		rdi, 0
	je		RET
	cmp		rsi, 0
	je		RET

	mov		[rel res], rdi
	call	_ft_strlen

	add		rdi, rax
	inc		rdi
	;; lea		[rel end], rdi
	;; mov		rdi, [rel end]
	call	_strcpy

RET:
	pop		rax
	mov		rax, [rel res]
	ret

	section	.bss
	;; end		resb 8
	res		resb 8
