
	global	_ft_sqrt

	section	.text
_ft_sqrt:
	cmp		rdi, 0
	jle		FAIL

	mov		rax, 1
	mov		rsi, 1

LOOP:
	cmp		rsi, rdi
	jge		CHECK
	mov		rsi, rax
	imul	rsi, rsi
	inc		rax
	jmp		LOOP

CHECK:
	cmp		rsi, rdi
	je		SUCCESS

FAIL:
	mov		rax, 0
	ret

SUCCESS:
	dec		rax
	ret

