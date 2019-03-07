	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %edi
	movq	$-4, %rsi
	movq	$-7, %rdx
	movl	$0, -4(%rbp)
	callq	_maxofthree
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	$2, %ecx
	movl	%ecx, %edi
	movq	$-6, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	callq	_maxofthree
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	$2, %ecx
	movl	%ecx, %edi
	movl	$3, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_maxofthree
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movq	$-2, %rdi
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	$3, %ecx
	movl	%ecx, %edx
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	callq	_maxofthree
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	$2, %ecx
	movl	%ecx, %edi
	movq	$-6, %rsi
	movl	$5, %ecx
	movl	%ecx, %edx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_maxofthree
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	$2, %ecx
	movl	%ecx, %edi
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_maxofthree
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%lld\n"


.subsections_via_symbols
