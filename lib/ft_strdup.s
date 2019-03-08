	;; char	*ft_strdup(const char *s1)

	global	_ft_strdup

	extern	_ft_strlen
	extern	_malloc
	extern	_ft_memcpy

	section	.text
_ft_strdup:
	cmp		rdi, 0
	je		RET

	push	rax

	mov		rsi, rdi
	call	_ft_strlen
	inc		rax
	mov		rdx, rax
	mov		rdi, rax
	call	_malloc
	mov		rdi, rax
	call	_ft_memcpy

	pop		rax
	ret

;; void	*ft_memcpy
;; (void *restrict dst, const void *restrict src, size_t n)
;; rdi, rsi, rdx

RET:
	mov		rax, rdi
	ret
