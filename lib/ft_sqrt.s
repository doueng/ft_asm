
	global	_ft_sqrt

	section	.text
_ft_sqrt:
	cmp		rdi, 0
	jle		EXIT

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

SUCCESS:
	dec		rax
	ret

EXIT:
	mov		rax, 0
	ret
