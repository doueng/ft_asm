;; Not working

	global	_ft_strcmp

	section	.text
_ft_strcmp:
	mov		rax, 0

LOOP:
	cmp		rdi, 0
	je		RET
	cmp		rsi, 0
	je		RET

	mov		al, byte [rdi]
	cmp		al, byte [rsi]
	jne		RET
	inc		rdi
	inc		rsi
	jmp		LOOP

RET:
	sub		al, byte [rsi]
	ret

