;; Not working

	global	_ft_strcmp

	section	.text
_ft_strcmp:
	mov		rax, 0

LOOP:
	cmp		rdi, 0
	je		EXIT
	cmp		rsi, 0
	je		EXIT

	mov		al, byte [rdi]
	cmp		al, byte [rsi]
	inc		rdi
	inc		rsi
	je		LOOP

EXIT:
	sub		al, byte [rsi]
	ret

