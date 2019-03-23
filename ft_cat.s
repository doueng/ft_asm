
	global	_ft_cat

	extern	_read
	extern	_write

	%define	fd r15

	section	.text
_ft_cat:
	sub		rsp, 120
	mov		fd, rdi

LOOP:

READ:
	mov		rdi, fd
	mov		rdx, 100
	mov		rsi, rsp
	call	_read

	cmp		rax, 0
	je		EXIT
	jl		ERR

WRITE:
	mov		rdx, rax
	mov		rsi, rsp
	mov		rdi, 1
	call	_write

	cmp		rax, 0
	jl		ERR

	jmp		LOOP

EXIT:
	add		rsp, 120
	ret

ERR:
	add		rsp, 120
	ret
