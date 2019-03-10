	global	_ft_memset

	section	.text
_ft_memset:
	push	rdi

LOOP:
	dec		rdx
	cmp		rdx, 0
	mov		byte [rdi+rdx], sil
	jnle	LOOP

RET:
	pop		rdi
	mov		rax, rdi
	ret
