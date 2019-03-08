	global	_ft_memset

	section	.text
_ft_memset:
	cmp		rdi, 0
	je		RET
	cmp		rdx, 0
	je		RET

LOOP:
	dec		rdx
	cmp		rdx, 0
	mov		byte [rdi+rdx], sil
	jnle	LOOP

RET:
	mov		rax, rdi
	ret
