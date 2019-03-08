;; void	*ft_memcpy
;; (void *restrict dst, const void *restrict src, size_t n)
;; rdi, rsi, rdx
	global	_ft_memcpy

	section	.text
_ft_memcpy:
	cmp		rdi, 0
	je		RET
	cmp		rsi, 0
	je		RET
	cmp		rdx, 0
	je		RET

LOOP:
	dec		rdx
	cmp		rdx, 0
	mov		cl, byte [rsi+rdx]
	mov		byte [rdi+rdx], cl
	jne		LOOP

RET:
	mov		rax, rdi
	ret
