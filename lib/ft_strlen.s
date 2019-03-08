	global	_ft_strlen

	extern _write

	section	.text
_ft_strlen:
	cmp		rdi, 0
	je		NULL

	mov		rax, 0
LOOP:
	mov		cl, byte [rdi+rax]
	cmp		cl, 0
	jne		INC
	ret
INC:
	inc		rax
	jmp		LOOP
NULL:
	mov		rax, rdi
	ret
