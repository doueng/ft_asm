	global	_ft_strcpy

	section	.text
_ft_strcpy:
	push	rdi
LOOP:
	cmp		byte [rsi], 0
	je		RET
	mov		cl, byte [rsi]
	mov		byte [rdi], cl
	inc		rdi
	inc		rsi
	jmp		LOOP

RET:
	mov		byte [rdi], 0
	pop		rdi
	mov		rax, rdi
	ret
