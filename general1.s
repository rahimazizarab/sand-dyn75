	.file	"general1.c"
	.section	.text.unlikely,"ax",@progbits
	.type	z900_is_store_protected, @function
z900_is_store_protected:
.LFB2129:
	.cfi_startproc
	testq	$-4608, %rdi
	movb	994(%rcx), %dil
	jne	.L2
	testb	$16, 331(%rcx)
	je	.L2
	testb	$1, 1144(%rcx)
	jne	.L2
	testb	$1, %dil
	jne	.L2
	movl	$1, %eax
	ret
.L2:
	andb	$6, %dil
	movl	$1, %eax
	jne	.L15
	testb	$2, 1144(%rcx)
	je	.L4
	movq	1056(%rcx), %rdi
	testb	$6, 994(%rdi)
	jne	.L15
.L4:
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L15
	andl	$-16, %esi
	cmpb	$-112, %sil
	jne	.L5
	testb	$1, 331(%rcx)
	jne	.L15
.L5:
	xorl	%eax, %eax
	cmpb	%sil, %dl
	setne	%al
	ret
.L15:
	ret
	.cfi_endproc
.LFE2129:
	.size	z900_is_store_protected, .-z900_is_store_protected
	.text
	.p2align 4,,15
	.type	concpy.isra.2, @function
concpy.isra.2:
.LFB3136:
	.cfi_startproc
	testl	%edx, %edx
	jne	.L97
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L98:
	addq	$1, %rsi
	movzbl	-1(%rsi), %eax
	addq	$1, %rdi
	subl	$1, %edx
	movb	%al, -1(%rdi)
	je	.L20
.L97:
	testb	$7, %dil
	jne	.L98
	movq	%rdi, %rax
	subq	%rsi, %rax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	$7, %eax
	jle	.L24
	cmpl	$7, %edx
	jle	.L24
	subl	$8, %edx
	movl	%edx, %r9d
	shrl	$3, %r9d
	movl	%r9d, %eax
	leaq	8(,%rax,8), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L37:
	movq	(%rsi,%rax), %rcx
	movq	%rcx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%r8, %rax
	jne	.L37
	negl	%r9d
	addq	%rax, %rdi
	addq	%rax, %rsi
	leal	(%rdx,%r9,8), %edx
	testl	%edx, %edx
	je	.L99
.L24:
	leaq	16(%rdi), %rax
	cmpq	%rax, %rsi
	leaq	16(%rsi), %rax
	setae	%cl
	cmpq	%rax, %rdi
	setae	%al
	orb	%al, %cl
	je	.L28
	cmpl	$15, %edx
	jbe	.L28
	movl	%edx, %r9d
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	shrl	$4, %r9d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L34:
	movdqu	(%rsi,%rax), %xmm0
	addl	$1, %r8d
	movdqu	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	cmpl	%r9d, %r8d
	jb	.L34
	movl	%ecx, %eax
	addq	%rax, %rdi
	addq	%rax, %rsi
	movl	%edx, %eax
	subl	%ecx, %eax
	cmpl	%ecx, %edx
	je	.L20
	movzbl	(%rsi), %edx
	cmpl	$1, %eax
	movb	%dl, (%rdi)
	je	.L20
	movzbl	1(%rsi), %edx
	cmpl	$2, %eax
	movb	%dl, 1(%rdi)
	je	.L20
	movzbl	2(%rsi), %edx
	cmpl	$3, %eax
	movb	%dl, 2(%rdi)
	je	.L20
	movzbl	3(%rsi), %edx
	cmpl	$4, %eax
	movb	%dl, 3(%rdi)
	je	.L20
	movzbl	4(%rsi), %edx
	cmpl	$5, %eax
	movb	%dl, 4(%rdi)
	je	.L20
	movzbl	5(%rsi), %edx
	cmpl	$6, %eax
	movb	%dl, 5(%rdi)
	je	.L20
	movzbl	6(%rsi), %edx
	cmpl	$7, %eax
	movb	%dl, 6(%rdi)
	je	.L20
	movzbl	7(%rsi), %edx
	cmpl	$8, %eax
	movb	%dl, 7(%rdi)
	je	.L20
	movzbl	8(%rsi), %edx
	cmpl	$9, %eax
	movb	%dl, 8(%rdi)
	je	.L20
	movzbl	9(%rsi), %edx
	cmpl	$10, %eax
	movb	%dl, 9(%rdi)
	je	.L20
	movzbl	10(%rsi), %edx
	cmpl	$11, %eax
	movb	%dl, 10(%rdi)
	je	.L20
	movzbl	11(%rsi), %edx
	cmpl	$12, %eax
	movb	%dl, 11(%rdi)
	je	.L20
	movzbl	12(%rsi), %edx
	cmpl	$13, %eax
	movb	%dl, 12(%rdi)
	je	.L20
	movzbl	13(%rsi), %edx
	cmpl	$14, %eax
	movb	%dl, 13(%rdi)
	je	.L100
	movzbl	14(%rsi), %eax
	movb	%al, 14(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	rep ret
	.p2align 4,,10
	.p2align 3
.L28:
	subl	$1, %edx
	leaq	1(%rdi,%rdx), %rdx
	.p2align 4,,10
	.p2align 3
.L36:
	addq	$1, %rsi
	movzbl	-1(%rsi), %eax
	addq	$1, %rdi
	cmpq	%rdx, %rdi
	movb	%al, -1(%rdi)
	jne	.L36
	rep ret
.L100:
	rep ret
.L99:
	.p2align 4,,11
	ret
	.cfi_endproc
.LFE3136:
	.size	concpy.isra.2, .-concpy.isra.2
	.p2align 4,,15
	.type	z900_logical_to_main_l, @function
z900_logical_to_main_l:
.LFB2152:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %r10d
	movl	%ecx, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r11d
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	shrl	$12, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	andl	$1023, %r12d
	movq	%rdx, %rbx
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	testb	$4, 96(%rdx)
	movq	%r9, (%rsp)
	je	.L102
	cmpl	$-2, %esi
	je	.L102
.L103:
	andb	$-8, 994(%rbx)
	leal	5(%r10), %eax
	cmpl	$4, %eax
	ja	.L105
	jmp	*.L107(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L107:
	.quad	.L489
	.quad	.L488
	.quad	.L156
	.quad	.L110
	.quad	.L111
	.text
	.p2align 4,,10
	.p2align 3
.L102:
	testb	$1, 1144(%rbx)
	jne	.L103
	movq	%r14, %rax
	movslq	%r12d, %r12
	movq	%r14, 944(%rbx)
	andb	$-8, 994(%rbx)
	andq	$-4096, %rax
	movq	%r14, %r13
	movq	%rax, 960(%rbx)
	andq	$-4194304, %r13
	leaq	(%rbx,%r12,8), %rax
	movq	$-1, 2232(%rax)
	movl	2224(%rbx), %edx
	movq	%r13, 18616(%rax)
	orq	%r13, %rdx
	movq	%rdx, 10424(%rax)
	movb	$0, 45240(%rbx,%r12)
	movb	$0, 44216(%rbx,%r12)
	movb	$0, 46264(%rbx,%r12)
	movzbl	994(%rbx), %eax
.L104:
	testb	$6, %al
	je	.L215
	testb	$3, %r15b
	jne	.L216
.L215:
	movq	944(%rbx), %rbp
	movl	88(%rbx), %eax
	movq	%rbp, %rdx
	andq	$-8192, %rdx
	je	.L218
	cmpq	%rax, %rdx
	je	.L218
.L219:
	movq	960(%rbx), %r8
	movq	%rbp, 952(%rbx)
	movq	%r8, %rdx
	andq	$-8192, %rdx
	je	.L220
	cmpq	%rax, %rdx
	je	.L220
.L221:
	cmpq	1040(%rbx), %rbp
	ja	.L222
	movzbl	1144(%rbx), %r9d
	testb	$2, %r9b
	jne	.L490
.L223:
	movq	%rbp, %r13
	shrq	$11, %r13
	addq	1032(%rbx), %r13
	testb	$1, %r9b
	movq	%r13, 984(%rbx)
	jne	.L491
	testb	$4, %r15b
	je	.L235
	testb	%r11b, %r11b
	movzbl	0(%r13), %eax
	jne	.L492
.L236:
	leaq	(%rbx,%r12,8), %rdx
	orl	$4, %eax
	andq	$-4096, %r14
	movb	%al, 0(%r13)
	movq	984(%rbx), %rax
	movq	%rax, 35000(%rdx)
	movzbl	(%rax), %eax
	movb	$4, 46264(%rbx,%r12)
	andl	$-16, %eax
	movb	%al, 43192(%rbx,%r12)
	movq	1024(%rbx), %rax
	addq	%rax, %r8
	xorq	%r14, %r8
	movq	%r8, 26808(%rdx)
.L248:
	addq	%rbp, %rax
.L477:
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L220:
	.cfi_restore_state
	xorq	%rax, %r8
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L218:
	xorq	%rax, %rbp
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L105:
	movzbl	99(%rbx), %eax
	cmpb	$64, %al
	je	.L117
	testb	$1, 1144(%rbx)
	jne	.L493
.L118:
	cmpl	$15, %r10d
	jg	.L117
	cmpb	$-128, %al
	je	.L488
	cmpb	$-64, %al
	.p2align 4,,3
	je	.L489
	.p2align 4,,10
	.p2align 3
.L156:
	movq	336(%rbx), %rdx
	movl	$0, 976(%rbx)
	testl	$288, %edx
	movq	%rdx, 968(%rbx)
	setne	%cl
.L116:
	movzbl	994(%rbx), %eax
	movq	%r14, %r13
	movslq	%r12d, %r12
	leaq	(%rbx,%r12,8), %rbp
	andq	$-4194304, %r13
	andl	$-2, %eax
	orl	%ecx, %eax
	movl	2224(%rbx), %ecx
	movb	%al, 994(%rbx)
	orq	%r13, %rcx
	cmpq	10424(%rbp), %rcx
	je	.L494
.L159:
	testb	$32, %dl
	je	.L162
	testl	$512, %r15d
	jne	.L272
	movl	%r15d, %eax
	andl	$1024, %eax
	jne	.L164
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	andq	$-4096, %rsi
.L165:
	testl	$512, %esi
	je	.L199
.L198:
	orb	$2, 994(%rbx)
.L199:
	testl	$256, %r15d
	jne	.L161
	movq	968(%rbx), %rdx
	shrq	$4, %r8
	andl	$1, %r8d
	movq	%rdx, 2232(%rbp)
	movl	2224(%rbx), %edx
	movq	%rsi, 18616(%rbp)
	orq	%r13, %rdx
	movq	%rdx, 10424(%rbp)
	movb	%r8b, 44216(%rbx,%r12)
	movzbl	994(%rbx), %edx
	movb	$0, 46264(%rbx,%r12)
	shrb	%dl
	andl	$3, %edx
	movb	%dl, 45240(%rbx,%r12)
	movq	$0, 26808(%rbp)
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L488:
	movq	384(%rbx), %rdx
	movl	$2, 976(%rbx)
	testl	$288, %edx
	movq	%rdx, 968(%rbx)
	setne	%cl
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L489:
	movq	432(%rbx), %rdx
	movl	$3, 976(%rbx)
	testl	$288, %edx
	movq	%rdx, 968(%rbx)
	setne	%cl
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L111:
	movl	1908(%rbx), %eax
	cmpl	$1, %eax
	je	.L113
	xorl	%edx, %edx
	cmpl	$13, %eax
	sete	%dl
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, 976(%rbx)
.L115:
	addl	$1, %eax
	cltq
	movq	320(%rbx,%rax,8), %rdx
	testl	$288, %edx
	movq	%rdx, 968(%rbx)
	setne	%cl
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L110:
	movl	$0, 976(%rbx)
	movl	$1, %ecx
	movq	$-1, %rdx
	movq	$-1, 968(%rbx)
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L162:
	movl	%edx, %eax
	movq	%r14, %rsi
	movl	%edx, %edi
	shrq	$50, %rsi
	andl	$12, %eax
	andw	$16376, %si
	cmpb	$11, %al
	ja	.L289
	testw	%si, %si
	je	.L289
.L166:
	movl	$56, %esi
	movw	%si, 992(%rbx)
	movl	$56, %esi
.L204:
	testl	$1024, %r15d
	je	.L268
.L214:
	movq	%rbx, %rdi
	call	*2032(%rbx)
	xorl	%eax, %eax
	jmp	.L477
	.p2align 4,,10
	.p2align 3
.L289:
	movq	%r14, %rcx
	shrq	$39, %rcx
	andw	$16376, %cx
	cmpb	$7, %al
	ja	.L290
	testw	%cx, %cx
	jne	.L166
.L290:
	movq	%r14, %r8
	shrq	$28, %r8
	andw	$16376, %r8w
	cmpb	$3, %al
	ja	.L291
	testw	%r8w, %r8w
	jne	.L166
.L291:
	movq	%r14, %r9
	andq	$-4096, %rdx
	andl	$3, %edi
	shrq	$17, %r9
	andw	$16376, %r9w
	cmpb	$8, %al
	je	.L171
	cmpb	$12, %al
	je	.L172
	cmpb	$4, %al
	je	.L495
	movzwl	%r9w, %eax
	shrw	$12, %r9w
	addq	%rax, %rdx
.L265:
	movzbl	%dil, %edi
	cmpw	%di, %r9w
	ja	.L184
	cmpq	%rdx, 1040(%rbx)
	jae	.L496
.L175:
	movl	$5, %ebp
	movl	$5, %esi
	movw	%bp, 992(%rbx)
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L493:
	movq	1064(%rbx), %rdx
	movq	1080(%rdx), %rcx
	testb	$1, 2(%rcx)
	je	.L118
	testb	$64, 99(%rdx)
	je	.L118
	.p2align 4,,10
	.p2align 3
.L117:
	movl	%r10d, %r13d
	andl	$15, %r13d
	je	.L156
	movzbl	1144(%rbx), %r9d
	testb	$1, %r9b
	jne	.L497
	movslq	%r13d, %rax
	movl	584(%rbx,%rax,4), %ebp
	movq	%rax, 8(%rsp)
.L122:
	testl	%ebp, %ebp
	je	.L156
	cmpl	$1, %ebp
	je	.L488
	leal	5(%r13), %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 16(%rsp)
	movl	1892(%rax), %eax
	cmpl	$15, %eax
	jle	.L125
	addl	$1, %eax
	cltq
	movq	320(%rbx,%rax,8), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, 968(%rbx)
	movzbl	2009(%rbx,%rax), %eax
	movl	$1, 976(%rbx)
	andl	$3, %eax
	leal	(%rax,%rax), %ecx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%ecx, %eax
	testl	$288, %edx
	movb	%al, 994(%rbx)
	setne	%cl
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L494:
	cmpb	$0, 44216(%rbx,%r12)
	jne	.L157
	cmpq	%rdx, 2232(%rbp)
	jne	.L159
.L158:
	testl	$256, %r15d
	jne	.L159
	movzbl	45240(%rbx,%r12), %eax
	movq	18616(%rbp), %rsi
	testb	%al, %al
	je	.L482
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, 994(%rbx)
.L482:
	movl	%r15d, %eax
	xorl	%ecx, %ecx
	andl	$512, %eax
.L161:
	testl	%eax, %eax
	jne	.L200
	movq	%r14, %rcx
	andq	$-4096, %rsi
	andl	$4095, %ecx
	movq	%rsi, 960(%rbx)
	orq	%rsi, %rcx
.L200:
	movq	%rcx, 944(%rbx)
.L483:
	xorl	%eax, %eax
	movw	%ax, 992(%rbx)
.L484:
	movzbl	994(%rbx), %eax
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L272:
	xorl	%edx, %edx
.L163:
	movl	$18, %r11d
	movl	$18, %esi
	movw	%r11w, 992(%rbx)
.L201:
	testl	$4096, %r15d
	jne	.L214
	movq	%rbx, %rdi
	movl	%r10d, 8(%rsp)
	movq	%rdx, (%rsp)
	call	*2032(%rbx)
	movl	8(%rsp), %r10d
	movq	(%rsp), %rdx
.L185:
	testl	$1024, %r15d
	je	.L202
.L486:
	movq	%rdx, 944(%rbx)
	movzwl	992(%rbx), %esi
	jmp	.L214
.L202:
	movl	$16, %r8d
	movq	%rdx, 944(%rbx)
	movw	%r8w, 992(%rbx)
	.p2align 4,,10
	.p2align 3
.L268:
	movslq	976(%rbx), %rax
	andq	$-4096, %r14
	movq	%r14, 792(%rbx)
	cmpl	$1, %eax
	je	.L498
	orq	%r14, %rax
	movq	%rax, 792(%rbx)
.L206:
	testb	$4, %r15b
	je	.L209
	orb	$8, %ah
	movq	%rax, 792(%rbx)
.L210:
	cmpb	$64, 99(%rbx)
	je	.L211
	testb	$1, 1144(%rbx)
	je	.L487
	movq	1064(%rbx), %rax
	movq	1080(%rax), %rdx
	testb	$1, 2(%rdx)
	je	.L487
	testb	$64, 99(%rax)
	je	.L487
.L211:
	xorl	%eax, %eax
	testl	%r10d, %r10d
	cmovns	%r10d, %eax
	movb	%al, 1012(%rbx)
.L487:
	movzwl	992(%rbx), %esi
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L157:
	testb	$1, %al
	jne	.L159
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L164:
	movl	$19, %r9d
	movl	$19, %esi
	xorl	%edx, %edx
	movw	%r9w, 992(%rbx)
	jmp	.L201
.L498:
	movq	968(%rbx), %rdx
	movq	%r14, %rax
	movq	%rdx, %rcx
	xorq	336(%rbx), %rcx
	testq	$-4096, %rcx
	je	.L206
	movq	%rdx, %rcx
	xorq	384(%rbx), %rcx
	testq	$-4096, %rcx
	jne	.L207
	orq	$2, %rax
	movq	%rax, 792(%rbx)
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L216:
	movzbl	1144(%rbx), %r9d
	andq	$-4096, %r14
.L269:
	movq	%r14, %rcx
	shrb	%al
	orq	$4, %rcx
	testb	$2, %al
	movq	%rcx, 792(%rbx)
	je	.L258
	movq	%r14, %rcx
	orq	$12, %rcx
	.p2align 4,,10
	.p2align 3
.L258:
	movslq	976(%rbx), %rdx
	xorl	%eax, %eax
	orq	%rcx, %rdx
	testl	%r10d, %r10d
	cmovns	%r10d, %eax
	andl	$2, %r9d
	movq	%rdx, 792(%rbx)
	movb	%al, 1012(%rbx)
	jne	.L499
.L259:
	movl	$4, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	movzwl	992(%rbx), %esi
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L222:
	movl	$5, %esi
	movq	%rbx, %rdi
	movl	%r10d, (%rsp)
	call	*2032(%rbx)
	movzbl	994(%rbx), %eax
	movzbl	1144(%rbx), %r9d
	movl	(%rsp), %r10d
	movl	%eax, %edx
	andl	$6, %edx
.L240:
	andq	$-4096, %r14
	testb	%dl, %dl
	movq	%r14, 792(%rbx)
	movq	%r14, %rcx
	je	.L258
	andb	$3, %r15b
	je	.L258
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L113:
	movl	$0, 976(%rbx)
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L209:
	andl	$3, %r15d
	je	.L210
	orb	$4, %ah
	movq	%rax, 792(%rbx)
	jmp	.L210
.L497:
	movq	1064(%rbx), %rax
	movq	1080(%rax), %rdx
	testb	$1, 2(%rdx)
	je	.L156
	testb	$64, 99(%rax)
	je	.L156
	movslq	%r13d, %rdi
	movq	%rdi, 8(%rsp)
	movl	584(%rax,%rdi,4), %ebp
	jmp	.L122
.L125:
	movzwl	394(%rbx), %eax
	testl	$-33554432, %ebp
	movw	%ax, 24(%rsp)
	je	.L500
.L126:
	movl	$40, %eax
	movl	$40, %esi
	movw	%ax, 992(%rbx)
.L154:
	movb	%r10b, 1012(%rbx)
	jmp	.L214
.L495:
	movl	%r8d, %eax
	shrw	$12, %ax
.L264:
	movzbl	%dil, %edi
	cmpw	%di, %ax
	ja	.L181
	movzwl	%r8w, %r8d
	addq	%r8, %rdx
	cmpq	1040(%rbx), %rdx
	ja	.L175
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movl	%r11d, 32(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movq	%rdx, 8(%rsp)
	call	z900_fetch_main_absolute
	movq	8(%rsp), %rdx
	movq	(%rax), %rdi
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r10d
	movl	32(%rsp), %r11d
	bswap	%rdi
	testb	$32, %dil
	jne	.L182
	movq	%rdi, %rax
	andl	$12, %eax
	cmpq	$4, %rax
	jne	.L163
	cmpb	$0, 2049(%rbx)
	js	.L501
.L183:
	movq	%rdi, %rdx
	movzwl	%r9w, %eax
	shrw	$12, %r9w
	andq	$-4096, %rdx
	addq	%rax, %rdx
	movq	%rdi, %rax
	andl	$192, %eax
	shrq	$6, %rax
	cmpw	%ax, %r9w
	jae	.L502
.L184:
	movl	$16, %edi
	movq	%rdx, 944(%rbx)
	movl	$16, %esi
	movw	%di, 992(%rbx)
	jmp	.L204
.L172:
	movl	%esi, %eax
	movzbl	%dil, %edi
	shrw	$12, %ax
	cmpw	%ax, %di
	jb	.L174
	movzwl	%si, %esi
	addq	%rsi, %rdx
	cmpq	1040(%rbx), %rdx
	ja	.L175
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movl	%r11d, 40(%rsp)
	movl	%r10d, 36(%rsp)
	movl	%r9d, 32(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	call	z900_fetch_main_absolute
	movq	8(%rsp), %rdx
	movq	(%rax), %rdi
	movl	16(%rsp), %ecx
	movl	24(%rsp), %r8d
	movl	32(%rsp), %r9d
	bswap	%rdi
	testb	$32, %dil
	movl	36(%rsp), %r10d
	movl	40(%rsp), %r11d
	jne	.L176
	movq	%rdi, %rax
	andl	$12, %eax
	cmpq	$12, %rax
	jne	.L163
	cmpb	$0, 2049(%rbx)
	js	.L503
.L177:
	movq	%rdi, %rdx
	movl	%ecx, %eax
	andl	$192, %edx
	shrw	$12, %ax
	shrq	$6, %rdx
	cmpw	%dx, %ax
	jae	.L504
.L178:
	movl	$58, %edx
	movl	$58, %esi
	movw	%dx, 992(%rbx)
	jmp	.L204
.L171:
	movl	%ecx, %eax
	shrw	$12, %ax
.L263:
	movzbl	%dil, %edi
	cmpw	%ax, %di
	jb	.L178
	movzwl	%cx, %ecx
	addq	%rcx, %rdx
	cmpq	1040(%rbx), %rdx
	ja	.L175
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movl	%r11d, 36(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movq	%rdx, 8(%rsp)
	call	z900_fetch_main_absolute
	movq	8(%rsp), %rdx
	movq	(%rax), %rdi
	movl	16(%rsp), %r8d
	movl	24(%rsp), %r9d
	movl	32(%rsp), %r10d
	bswap	%rdi
	testb	$32, %dil
	movl	36(%rsp), %r11d
	jne	.L179
	movq	%rdi, %rax
	andl	$12, %eax
	cmpq	$8, %rax
	jne	.L163
	cmpb	$0, 2049(%rbx)
	js	.L505
.L180:
	movq	%rdi, %rdx
	movl	%r8d, %eax
	andl	$192, %edx
	shrw	$12, %ax
	shrq	$6, %rdx
	cmpw	%dx, %ax
	jae	.L506
.L181:
	movl	$59, %eax
	movl	$59, %esi
	movw	%ax, 992(%rbx)
	jmp	.L204
.L207:
	xorq	432(%rbx), %rdx
	testq	$-4096, %rdx
	jne	.L208
	orq	$3, %rax
	movq	%rax, 792(%rbx)
	jmp	.L206
.L500:
	testl	$16777216, %ebp
	je	.L127
	movl	368(%rbx), %eax
	andl	$2147483584, %eax
.L128:
	movl	%eax, %edx
	cmpq	1040(%rbx), %rdx
	ja	.L129
	andq	$-8192, %rdx
	je	.L130
	movl	88(%rbx), %ecx
	cmpq	%rcx, %rdx
	je	.L130
.L131:
	addl	$16, %eax
	testb	$2, %r9b
	jne	.L507
.L132:
	movq	%rax, %rdx
	shrq	$11, %rdx
	addq	1032(%rbx), %rdx
	orb	$4, (%rdx)
	movq	1024(%rbx), %rdx
	movl	(%rdx,%rax), %eax
	movzwl	%bp, %edx
	movl	%edx, %ecx
	shrl	$3, %ecx
	bswap	%eax
	movl	%eax, %esi
	andl	$127, %esi
	cmpl	%ecx, %esi
	jae	.L508
.L133:
	movl	$41, %eax
	movl	$41, %esi
	movw	%ax, 992(%rbx)
	jmp	.L154
.L174:
	movl	$57, %ecx
	movl	$57, %esi
	movw	%cx, 992(%rbx)
	jmp	.L204
.L129:
	movl	$5, %eax
	movl	$5, %esi
	movq	%rbx, %rdi
	movw	%ax, 992(%rbx)
	movl	%r10d, (%rsp)
	call	*2032(%rbx)
	movl	(%rsp), %r10d
	jmp	.L126
.L208:
	orq	$1, %rax
	movq	%rax, 792(%rbx)
	jmp	.L206
.L127:
	movl	344(%rbx), %eax
	andl	$2147483584, %eax
	jmp	.L128
.L130:
	xorl	88(%rbx), %eax
	jmp	.L131
.L508:
	andl	$2147483520, %eax
	sall	$4, %edx
	addl	%edx, %eax
	movl	%eax, %edi
	cmpq	1040(%rbx), %rdi
	ja	.L129
	movq	%rdi, %rcx
	andq	$-8192, %rcx
	je	.L134
	movl	88(%rbx), %edx
	cmpq	%rdx, %rcx
	je	.L134
.L135:
	movq	%rbx, %rsi
	movl	%r11d, 36(%rsp)
	movl	%r10d, 32(%rsp)
	call	z900_fetch_main_absolute
	movl	32(%rsp), %r10d
	xorl	%edx, %edx
	movl	36(%rsp), %r11d
.L137:
	movl	(%rax,%rdx), %ecx
	bswap	%ecx
	movl	%ecx, 48(%rsp,%rdx)
	addq	$4, %rdx
	cmpq	$16, %rdx
	jne	.L137
	movl	48(%rsp), %eax
	testl	%eax, %eax
	movl	%eax, 32(%rsp)
	js	.L133
	movl	%r15d, %eax
	andl	$2048, %eax
	movl	%eax, 36(%rsp)
	jne	.L138
	xorl	32(%rsp), %ebp
	andl	$16711680, %ebp
	je	.L138
.L139:
	movw	$42, 992(%rbx)
	movl	$42, %esi
	jmp	.L154
.L176:
	testl	$1024, %r15d
	je	.L174
	orq	$3, %rdx
	jmp	.L486
.L496:
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movl	%r11d, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movq	%rdx, 8(%rsp)
	call	z900_fetch_main_absolute
	movq	8(%rsp), %rdx
	movq	(%rax), %r8
	movl	16(%rsp), %r10d
	movl	24(%rsp), %r11d
	bswap	%r8
	testb	$32, %r8b
	jne	.L185
	testb	$12, %r8b
	jne	.L163
	movzbl	994(%rbx), %eax
	testb	$1, %al
	je	.L186
	testb	$16, %r8b
	jne	.L163
.L186:
	movzbl	2049(%rbx), %esi
	testb	%sil, %sil
	js	.L509
.L187:
	movq	%r14, %rcx
	movq	%r8, %rdi
	shrq	$9, %rcx
	andq	$-2048, %rdi
	andl	$2040, %ecx
	addq	%rdi, %rcx
	testl	$1024, %r15d
	je	.L194
	andl	$512, %r8d
	testb	%sil, %sil
	movq	%rcx, 944(%rbx)
	movw	$0, 992(%rbx)
	js	.L510
.L195:
	testq	%r8, %r8
	je	.L104
	xorl	%esi, %esi
	jmp	.L214
.L491:
	movq	%rbp, %rax
	addq	1024(%rbx), %rax
	jmp	.L477
.L235:
	movzbl	0(%r13), %eax
	movzbl	%r11b, %edx
	movq	%rbx, %rcx
	movq	%r14, %rdi
	movl	%r9d, 32(%rsp)
	movl	%r10d, 24(%rsp)
	movq	%r8, 16(%rsp)
	movzbl	%al, %esi
	movb	%al, 8(%rsp)
	call	z900_is_store_protected
	movq	16(%rsp), %r8
	testl	%eax, %eax
	movl	24(%rsp), %r10d
	movl	32(%rsp), %r9d
	jne	.L239
	testb	$2, %r9b
	jne	.L511
.L243:
	testb	$2, %r15b
	je	.L245
	movzbl	8(%rsp), %eax
	orl	$6, %eax
	movb	%al, 0(%r13)
.L245:
	movq	984(%rbx), %rax
	leaq	(%rbx,%r12,8), %rdx
	movq	%rax, 35000(%rdx)
	movzbl	(%rax), %eax
	andl	$-16, %eax
	cmpq	$8191, %r14
	movb	%al, 43192(%rbx,%r12)
	ja	.L246
	testb	$1, 994(%rbx)
	movl	$4, %eax
	je	.L247
.L246:
	movl	%r15d, %eax
	orl	$5, %eax
.L247:
	movb	%al, 46264(%rbx,%r12)
	movq	1024(%rbx), %rax
	movq	%r14, %rcx
	andq	$-4096, %rcx
	addq	%rax, %r8
	xorq	%rcx, %r8
	movq	%r8, 26808(%rdx)
	testb	$4, 808(%rbx)
	je	.L248
	testb	$32, 54(%rbx)
	je	.L248
	movb	$4, 46264(%rbx,%r12)
	cmpl	$-2, %r10d
	je	.L248
	testb	$4, 96(%rbx)
	je	.L249
	testb	$-128, 968(%rbx)
	jne	.L250
	testb	$32, 402(%rbx)
	jne	.L248
.L250:
	xorl	%edx, %edx
	testl	%r10d, %r10d
	cmovns	%r10d, %edx
	movb	%dl, 1160(%rbx)
	movl	976(%rbx), %edx
	orw	%dx, 1146(%rbx)
.L249:
	movq	416(%rbx), %rcx
	movq	408(%rbx), %rdx
	cmpq	%rdx, %rcx
	jb	.L251
	cmpq	%rdx, %r14
	jb	.L252
	cmpq	%rcx, %r14
	movl	$1, %edi
	jbe	.L257
	movq	(%rsp), %rdi
	leaq	-1(%r14,%rdi), %rsi
	cmpq	%rsi, %rdx
	ja	.L254
.L270:
	cmpq	%rsi, %rcx
	movl	$1, %edi
	jae	.L257
	xorl	%edi, %edi
	cmpq	%rdx, %r14
	setbe	%dil
.L257:
	andl	$1, %edi
	testb	%dil, %dil
	je	.L248
	orl	$2097152, 56(%rbx)
	jmp	.L248
.L490:
	movq	1056(%rbx), %rdx
	andb	$-7, 994(%rdx)
	testb	$4, %r9b
	jne	.L223
	testl	%r10d, %r10d
	movl	$-3, %esi
	jle	.L224
	movq	1080(%rbx), %rax
	testb	$1, 2(%rax)
	je	.L224
	testb	$64, 99(%rbx)
	cmovne	%r10d, %esi
.L224:
	movq	%rbp, %rdi
	xorl	%ecx, %ecx
	movl	%r11d, 16(%rsp)
	addq	1096(%rbx), %rdi
	movl	%r10d, 8(%rsp)
	call	z900_translate_addr
	movl	8(%rsp), %r10d
	testl	%eax, %eax
	movl	16(%rsp), %r11d
	jne	.L512
.L225:
	movzbl	994(%rbx), %edx
	movq	1056(%rbx), %rax
	movl	%edx, %ecx
	andl	$-7, %edx
	orb	994(%rax), %cl
	andl	$6, %ecx
	orl	%ecx, %edx
	movb	%dl, 994(%rbx)
	movzbl	994(%rax), %edx
	shrb	%dl
	andl	$3, %edx
	orb	%dl, 45240(%rbx,%r12)
	testb	$4, 96(%rbx)
	je	.L226
	cmpl	$-2, %r10d
	je	.L226
.L227:
	testl	%r10d, %r10d
	jle	.L228
	movq	1080(%rbx), %rcx
	testb	$1, 2(%rcx)
	je	.L228
	testb	$64, 99(%rbx)
	je	.L228
	movq	968(%rbx), %rcx
	leal	5(%r10), %edi
	leal	16(%r10), %r8d
	movslq	%edi, %rdi
	movq	%rcx, 2232(%rbx,%r12,8)
	movzbl	994(%rax), %esi
	movzbl	994(%rbx), %ecx
	andl	$1, %esi
	andl	$-2, %ecx
	orl	%esi, %ecx
	movb	%cl, 994(%rbx)
	movq	968(%rax), %rcx
	leal	17(%r10), %esi
	movslq	%esi, %rsi
	xorb	$8, %ch
	testl	$288, %ecx
	movq	%rcx, 968(%rbx)
	movq	%rcx, 320(%rbx,%rsi,8)
	movslq	%r10d, %rcx
	movl	%r8d, 1892(%rbx,%rdi,4)
	sete	1976(%rbx,%rsi)
	andl	$2, %edx
	movb	%dl, 2009(%rbx,%rcx)
.L228:
	movq	944(%rax), %rbp
	movl	88(%rax), %edx
	movq	%rbp, %rcx
	andq	$-8192, %rcx
	je	.L229
	cmpq	%rdx, %rcx
	je	.L229
.L230:
	movq	960(%rax), %r8
	movq	%rbp, 952(%rax)
	movq	%r8, %rcx
	andq	$-8192, %rcx
	je	.L231
	cmpq	%rdx, %rcx
	je	.L231
.L232:
	cmpq	1040(%rax), %rbp
	ja	.L222
	movzbl	1144(%rbx), %r9d
	jmp	.L223
.L492:
	movl	%eax, %edx
	andl	$-16, %edx
	cmpb	%dl, %r11b
	je	.L236
	testb	$8, %al
	je	.L236
	cmpq	$2047, %r14
	ja	.L238
	testb	$2, 331(%rbx)
	je	.L238
	testb	$1, 994(%rbx)
	je	.L236
.L238:
	cmpb	$-112, %dl
	je	.L513
.L239:
	testb	$2, %r9b
	jne	.L514
.L485:
	movzbl	994(%rbx), %eax
	movl	%eax, %edx
	andl	$6, %edx
	jmp	.L240
.L179:
	testl	$1024, %r15d
	je	.L178
	orq	$2, %rdx
	movzwl	992(%rbx), %esi
	movq	%rdx, 944(%rbx)
	jmp	.L214
.L182:
	testl	$1024, %r15d
	je	.L181
	orq	$1, %rdx
	movzwl	992(%rbx), %esi
	movq	%rdx, 944(%rbx)
	jmp	.L214
.L231:
	xorq	%rdx, %r8
	jmp	.L232
.L229:
	xorq	%rdx, %rbp
	jmp	.L230
.L226:
	movq	%r13, 18616(%rbx,%r12,8)
	jmp	.L227
.L513:
	testb	$1, 331(%rbx)
	je	.L239
	jmp	.L236
.L138:
	movl	56(%rsp), %eax
	andl	$2147483584, %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	andq	$-8192, %rcx
	je	.L140
	movl	88(%rbx), %edx
	cmpq	%rdx, %rcx
	je	.L140
.L141:
	cmpq	1040(%rbx), %rdi
	ja	.L129
	movq	%rbx, %rsi
	movl	%r11d, 44(%rsp)
	movl	%r10d, 40(%rsp)
	call	z900_fetch_main_absolute
	movl	40(%rsp), %r10d
	xorl	%edx, %edx
	movl	44(%rsp), %r11d
.L143:
	movl	(%rax,%rdx), %ecx
	bswap	%ecx
	movl	%ecx, 64(%rsp,%rdx)
	addq	$4, %rdx
	cmpq	$64, %rdx
	jne	.L143
	movl	64(%rsp), %eax
	testl	%eax, %eax
	js	.L144
	movl	60(%rsp), %edi
	cmpl	%edi, 84(%rsp)
	je	.L515
.L145:
	movw	$44, 992(%rbx)
	movl	$44, %esi
	jmp	.L154
.L134:
	movl	%eax, %edi
	xorl	88(%rbx), %edi
	jmp	.L135
.L510:
	testb	$-128, 330(%rbx)
	je	.L195
	xorl	%esi, %esi
	testb	$6, %al
	jne	.L214
	jmp	.L195
.L514:
	movq	1056(%rbx), %rax
	andb	$-7, 994(%rax)
	jmp	.L485
.L499:
	movq	1056(%rbx), %rcx
	testb	$6, 994(%rcx)
	je	.L259
	movl	$4, %esi
	movq	%rdx, 792(%rcx)
	movq	%rcx, %rdi
	movb	%al, 1012(%rcx)
	call	*2032(%rcx)
	movzwl	992(%rbx), %esi
	jmp	.L214
.L502:
	andl	$3, %edi
	jmp	.L265
.L501:
	testb	$-128, 330(%rbx)
	je	.L183
	testl	$512, %edi
	je	.L183
	orb	$2, 994(%rbx)
	jmp	.L183
.L506:
	movq	%rdi, %rdx
	andl	$3, %edi
	andq	$-4096, %rdx
	jmp	.L264
.L505:
	testb	$-128, 330(%rbx)
	je	.L180
	testl	$512, %edi
	je	.L180
	orb	$2, 994(%rbx)
	jmp	.L180
.L254:
	xorl	%edi, %edi
	cmpq	%rdx, %r14
	ja	.L257
.L271:
	xorl	%edi, %edi
	cmpq	%rsi, %rcx
	setbe	%dil
	jmp	.L257
.L252:
	movq	(%rsp), %rdi
	leaq	-1(%r14,%rdi), %rsi
	cmpq	%rsi, %rdx
	jbe	.L270
	jmp	.L271
.L251:
	movq	(%rsp), %rdi
	leaq	-1(%r14,%rdi), %rsi
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jbe	.L257
	xorl	%edi, %edi
	cmpq	%rcx, %r14
	setbe	%dil
	jmp	.L257
.L511:
	movq	1056(%rbx), %rax
	testb	$6, 994(%rax)
	je	.L243
	jmp	.L485
.L512:
	movq	1056(%rbx), %rax
	movzwl	992(%rax), %esi
	movq	%rax, %rdi
	call	*2032(%rax)
	movl	16(%rsp), %r11d
	movl	8(%rsp), %r10d
	jmp	.L225
.L507:
	andb	$4, %r9b
	jne	.L132
	addq	1096(%rbx), %rax
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	movl	%r11d, 36(%rsp)
	movq	1056(%rbx), %rdx
	movl	%r10d, 32(%rsp)
	movq	%rax, %rdi
	call	z900_logical_to_main_l
	movq	1056(%rbx), %rax
	movl	36(%rsp), %r11d
	movl	32(%rsp), %r10d
	movq	952(%rax), %rax
	jmp	.L132
.L504:
	movq	%rdi, %rdx
	andl	$3, %edi
	andq	$-4096, %rdx
	jmp	.L263
.L503:
	testb	$-128, 330(%rbx)
	je	.L177
	testl	$512, %edi
	je	.L177
	orb	$2, 994(%rbx)
	jmp	.L177
.L194:
	cmpq	1040(%rbx), %rcx
	ja	.L175
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	movl	%r11d, 36(%rsp)
	movl	%r10d, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	z900_fetch_main_absolute
	movq	8(%rsp), %rcx
	movq	(%rax), %rsi
	movq	16(%rsp), %r8
	movq	24(%rsp), %rdx
	movl	32(%rsp), %r10d
	bswap	%rsi
	testl	$1024, %esi
	movl	36(%rsp), %r11d
	jne	.L196
	testl	$2048, %esi
	jne	.L163
	movl	%r15d, %eax
	andl	$512, %eax
	testl	$512, %r8d
	jne	.L198
	jmp	.L165
.L509:
	testb	$-128, 330(%rbx)
	je	.L187
	testl	$1024, %r8d
	je	.L187
	testl	$512, %r8d
	je	.L188
	orb	$2, 994(%rbx)
.L188:
	testl	$1024, %r15d
	jne	.L516
	movq	%r8, %rax
	movq	%r14, %rdx
	andq	$-1048576, %rax
	andl	$1048575, %edx
	orq	%rdx, %rax
	movq	%rax, 944(%rbx)
	andq	$-4096, %rax
	testl	$256, %r15d
	movq	%rax, 960(%rbx)
	jne	.L483
	movq	968(%rbx), %rdx
	movq	%rdx, 2232(%rbp)
	movl	2224(%rbx), %edx
	movq	%rax, 18616(%rbp)
	movq	%r8, %rax
	shrq	$4, %rax
	andl	$1, %eax
	orq	%r13, %rdx
	movq	%rdx, 10424(%rbp)
	movb	%al, 44216(%rbx,%r12)
	movzbl	994(%rbx), %eax
	movb	$0, 46264(%rbx,%r12)
	shrb	%al
	andl	$3, %eax
	movb	%al, 45240(%rbx,%r12)
	movq	$0, 26808(%rbp)
	jmp	.L483
.L196:
	testl	$512, %r15d
	movq	%rcx, 944(%rbx)
	movw	$17, 992(%rbx)
	je	.L268
	jmp	.L484
.L516:
	movw	$0, 992(%rbx)
	movzbl	994(%rbx), %eax
	andl	$6, %eax
	cmpb	$1, %al
	sbbq	%rax, %rax
	xorl	%esi, %esi
	notq	%rax
	andl	$4, %eax
	orq	%rdx, %rax
	movq	%rax, 944(%rbx)
	jmp	.L214
.L140:
	movl	%eax, %edi
	xorl	88(%rbx), %edi
	jmp	.L141
.L515:
	cmpl	$0, 36(%rsp)
	jne	.L146
	testl	$16777216, 32(%rsp)
	je	.L146
	movzwl	32(%rsp), %esi
	movzwl	24(%rsp), %edi
	cmpw	%si, %di
	je	.L146
	movl	68(%rsp), %edx
	movl	%edi, %ecx
	andl	$2147483644, %eax
	andl	$65520, %ecx
	andl	$65520, %edx
	cmpl	%ecx, %edx
	jl	.L152
	movl	%edi, %edx
	shrw	$2, %dx
	movzwl	%dx, %edx
	addl	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %ecx
	cmpq	1040(%rbx), %rcx
	ja	.L148
	movq	%rcx, %rsi
	andq	$-8192, %rsi
	je	.L149
	movl	88(%rbx), %edx
	cmpq	%rdx, %rsi
	je	.L149
.L150:
	movzbl	1144(%rbx), %edx
	testb	$2, %dl
	jne	.L517
.L151:
	movq	1024(%rbx), %rdx
	shrl	$11, %eax
	addq	1032(%rbx), %rax
	movzbl	(%rdx,%rcx), %edx
	movl	24(%rsp), %ecx
	orb	$4, (%rax)
	andl	$3, %ecx
	addl	%ecx, %ecx
	sall	%cl, %edx
	andb	$64, %dl
	jne	.L146
.L152:
	movw	$45, 992(%rbx)
	movl	$45, %esi
	jmp	.L154
.L146:
	testl	$33554432, 32(%rsp)
	je	.L153
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 994(%rbx)
.L153:
	movl	72(%rsp), %edx
	movl	$1, 976(%rbx)
	movzbl	994(%rbx), %esi
	movl	76(%rsp), %eax
	salq	$32, %rdx
	shrb	%sil
	orq	%rax, %rdx
	andb	$2, %sil
	movq	%rdx, 968(%rbx)
	je	.L261
	xorq	$3088, %rdx
	orb	$1, %dh
	movq	%rdx, 968(%rbx)
.L261:
	movq	16(%rsp), %rdi
	leal	17(%r13), %eax
	movq	%rdx, %rcx
	cltq
	addl	$16, %r13d
	andl	$288, %ecx
	movq	%rdx, 320(%rbx,%rax,8)
	setne	%cl
	movl	%r13d, 1892(%rdi)
	sete	1976(%rbx,%rax)
	movq	8(%rsp), %rax
	movb	%sil, 2009(%rbx,%rax)
	jmp	.L116
.L144:
	movw	$43, 992(%rbx)
	movl	$43, %esi
	jmp	.L154
.L517:
	andb	$4, %dl
	jne	.L151
	movq	%rcx, %rdi
	movq	1056(%rbx), %rdx
	xorl	%ecx, %ecx
	addq	1096(%rbx), %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$-3, %esi
	movl	%r11d, 40(%rsp)
	movl	%r10d, 36(%rsp)
	call	z900_logical_to_main_l
	movq	1056(%rbx), %rax
	movl	40(%rsp), %r11d
	movl	36(%rsp), %r10d
	movl	952(%rax), %eax
	movl	%eax, %ecx
	jmp	.L151
.L149:
	xorl	88(%rbx), %eax
	movl	%eax, %ecx
	jmp	.L150
.L148:
	movl	$5, %esi
	movq	%rbx, %rdi
	movl	%r10d, (%rsp)
	call	*2032(%rbx)
	movl	(%rsp), %r10d
	jmp	.L152
	.cfi_endproc
.LFE2152:
	.size	z900_logical_to_main_l, .-z900_logical_to_main_l
	.p2align 4,,15
	.type	z900_fetch_main_absolute, @function
z900_fetch_main_absolute:
.LFB2130:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	movzbl	1144(%rsi), %eax
	testb	$2, %al
	jne	.L524
.L519:
	movq	%rdi, %rdx
	movq	%rdi, %rax
	shrq	$11, %rdx
	addq	1032(%rbx), %rdx
	orb	$4, (%rdx)
	addq	1024(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L524:
	.cfi_restore_state
	testb	$4, %al
	jne	.L519
	addq	1096(%rsi), %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	1056(%rsi), %rdx
	movl	$4, %ecx
	movl	$-3, %esi
	call	z900_logical_to_main_l
	movq	1056(%rbx), %rax
	movq	952(%rax), %rdi
	jmp	.L519
	.cfi_endproc
.LFE2130:
	.size	z900_fetch_main_absolute, .-z900_fetch_main_absolute
	.section	.text.unlikely
	.type	z900_vfetch2_full, @function
z900_vfetch2_full:
.LFB2164:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leal	5(%rsi), %eax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	cltq
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	leaq	(%rdx,%rax,4), %r14
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L526
	movl	%edi, %ecx
	incl	%eax
	shrl	$12, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rdx,%rcx,8), %rdx
	movq	2232(%rdx), %rdi
	cmpq	%rdi, 320(%rbx,%rax,8)
	je	.L527
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rcx)
	je	.L526
.L527:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L528
	cmpb	43192(%rbx,%rcx), %al
	jne	.L526
.L528:
	movl	2224(%rbx), %esi
	movq	%rbp, %rax
	andq	$-4194304, %rax
	orq	%rsi, %rax
	cmpq	10424(%rdx), %rax
	jne	.L526
	testb	$4, 46264(%rbx,%rcx)
	je	.L526
	movq	%rbp, %rax
	xorq	26808(%rdx), %rax
	jmp	.L529
.L526:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movq	%rbp, %rdi
	call	z900_logical_to_main_l
.L529:
	movzbl	(%rax), %r12d
	leaq	1(%rbp), %rsi
	movl	1892(%r14), %eax
	sall	$8, %r12d
	testl	%eax, %eax
	je	.L530
	movq	120(%rbx), %rcx
	incl	%ebp
	incl	%eax
	cltq
	andl	%ecx, %ebp
	shrl	$12, %ebp
	andl	$1023, %ebp
	leaq	(%rbx,%rbp,8), %rdx
	movq	2232(%rdx), %rdi
	cmpq	%rdi, 320(%rbx,%rax,8)
	je	.L531
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rbp)
	je	.L530
.L531:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L532
	cmpb	43192(%rbx,%rbp), %al
	jne	.L530
.L532:
	movl	2224(%rbx), %edi
	andq	%rsi, %rcx
	movq	%rcx, %rax
	andq	$-4194304, %rax
	orq	%rdi, %rax
	cmpq	10424(%rdx), %rax
	jne	.L530
	testb	$4, 46264(%rbx,%rbp)
	je	.L530
	movq	%rcx, %rax
	xorq	26808(%rdx), %rax
	jmp	.L533
.L530:
	andq	120(%rbx), %rsi
	movl	$1, %r9d
	movl	$4, %ecx
	movzbl	97(%rbx), %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	movl	%r13d, %esi
	call	z900_logical_to_main_l
.L533:
	popq	%rbx
	.cfi_def_cfa_offset 40
	movzbl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	orl	%r12d, %eax
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2164:
	.size	z900_vfetch2_full, .-z900_vfetch2_full
	.type	z900_validate_operand.part.9, @function
z900_validate_operand.part.9:
.LFB3143:
	.cfi_startproc
	movslq	%edx, %rdx
	movq	%r8, %rax
	movl	$1, %r9d
	addq	%rdx, %rdi
	movq	%rax, %rdx
	andq	120(%r8), %rdi
	movzbl	97(%r8), %r8d
	jmp	z900_logical_to_main_l
	.cfi_endproc
.LFE3143:
	.size	z900_validate_operand.part.9, .-z900_validate_operand.part.9
	.type	z900_vstore2_full, @function
z900_vstore2_full:
.LFB2156:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	5(%rdx), %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	cltq
	movl	%edx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	(%rcx,%rax,4), %r10
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L561
	leal	1(%rax), %edx
	movl	%esi, %ecx
	shrl	$12, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movq	2232(%rax), %rdi
	cmpq	%rdi, 320(%rbx,%rdx,8)
	je	.L562
	movb	1976(%rbx,%rdx), %dl
	testb	%dl, 44216(%rbx,%rcx)
	je	.L561
.L562:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L563
	cmpb	43192(%rbx,%rcx), %dl
	jne	.L561
.L563:
	movl	2224(%rbx), %esi
	movq	%rbp, %rdx
	andq	$-4194304, %rdx
	orq	%rsi, %rdx
	cmpq	10424(%rax), %rdx
	jne	.L561
	testb	$1, 46264(%rbx,%rcx)
	je	.L561
	movq	35000(%rax), %rdx
	movq	%rbp, %r15
	movq	%rdx, 984(%rbx)
	xorq	26808(%rax), %r15
	jmp	.L564
.L561:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$1, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movq	%rbp, %rdi
	movq	%r10, 8(%rsp)
	call	z900_logical_to_main_l
	movq	8(%rsp), %r10
	movq	%rax, %r15
.L564:
	movl	1892(%r10), %eax
	leaq	1(%rbp), %rsi
	movq	984(%rbx), %r13
	testl	%eax, %eax
	je	.L565
	movq	120(%rbx), %rdx
	leal	1(%rax), %ecx
	incl	%ebp
	movslq	%ecx, %rcx
	andl	%edx, %ebp
	shrl	$12, %ebp
	andl	$1023, %ebp
	leaq	(%rbx,%rbp,8), %rax
	movq	2232(%rax), %rdi
	cmpq	%rdi, 320(%rbx,%rcx,8)
	je	.L566
	movb	1976(%rbx,%rcx), %cl
	testb	%cl, 44216(%rbx,%rbp)
	je	.L565
.L566:
	movb	97(%rbx), %cl
	testb	%cl, %cl
	je	.L567
	cmpb	43192(%rbx,%rbp), %cl
	jne	.L565
.L567:
	movl	2224(%rbx), %edi
	andq	%rsi, %rdx
	movq	%rdx, %rcx
	andq	$-4194304, %rcx
	orq	%rdi, %rcx
	cmpq	10424(%rax), %rcx
	jne	.L565
	testb	$2, 46264(%rbx,%rbp)
	je	.L565
	xorq	26808(%rax), %rdx
	movq	%rdx, %rax
	jmp	.L568
.L565:
	andq	120(%rbx), %rsi
	movl	$1, %r9d
	movl	$2, %ecx
	movzbl	97(%rbx), %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	movl	%r14d, %esi
	call	z900_logical_to_main_l
.L568:
	orb	$6, 0(%r13)
	movl	%r12d, %ecx
	shrw	$8, %cx
	movb	%cl, (%r15)
	movb	%r12b, (%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2156:
	.size	z900_vstore2_full, .-z900_vstore2_full
	.type	z900_vfetch4_full, @function
z900_vfetch4_full:
.LFB2166:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leal	5(%rsi), %eax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	cltq
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	(%rdx,%rax,4), %r13
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movl	1892(%r13), %eax
	testl	%eax, %eax
	je	.L595
	movl	%edi, %ecx
	incl	%eax
	shrl	$12, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rdx,%rcx,8), %rdx
	movq	2232(%rdx), %rdi
	cmpq	%rdi, 320(%rbx,%rax,8)
	je	.L596
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rcx)
	je	.L595
.L596:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L597
	cmpb	43192(%rbx,%rcx), %al
	jne	.L595
.L597:
	movl	2224(%rbx), %esi
	movq	%rbp, %rax
	andq	$-4194304, %rax
	orq	%rsi, %rax
	cmpq	10424(%rdx), %rax
	jne	.L595
	testb	$4, 46264(%rbx,%rcx)
	je	.L595
	movq	%rbp, %rax
	xorq	26808(%rdx), %rax
	jmp	.L598
.L595:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %esi
	movq	%rbp, %rdi
	call	z900_logical_to_main_l
.L598:
	movl	(%rax), %eax
	movl	%ebp, %edx
	andl	$2047, %edx
	movl	%eax, (%rsp)
	movl	$2048, %eax
	subl	%edx, %eax
	movl	1892(%r13), %edx
	movl	%eax, %r13d
	testl	%edx, %edx
	je	.L599
	movq	120(%rbx), %rcx
	addl	%ebp, %eax
	incl	%edx
	movslq	%edx, %rdx
	andl	%ecx, %eax
	shrl	$12, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rsi
	movq	2232(%rsi), %rdi
	cmpq	%rdi, 320(%rbx,%rdx,8)
	je	.L600
	movb	44216(%rbx,%rax), %dil
	testb	%dil, 1976(%rbx,%rdx)
	je	.L599
.L600:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L601
	cmpb	43192(%rbx,%rax), %dl
	jne	.L599
.L601:
	leaq	0(%r13,%rbp), %rdx
	movl	2224(%rbx), %edi
	andq	%rcx, %rdx
	movq	%rdx, %rcx
	andq	$-4194304, %rcx
	orq	%rdi, %rcx
	cmpq	10424(%rsi), %rcx
	jne	.L599
	testb	$4, 46264(%rbx,%rax)
	je	.L599
	movq	%rdx, %rax
	xorq	26808(%rsi), %rax
	jmp	.L602
.L599:
	leaq	0(%r13,%rbp), %rdi
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	andq	120(%rbx), %rdi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %esi
	call	z900_logical_to_main_l
.L602:
	movl	(%rax), %eax
	movl	%eax, (%rsp,%r13)
	movl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	bswap	%eax
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2166:
	.size	z900_vfetch4_full, .-z900_vfetch4_full
	.type	z900_vstore4_full, @function
z900_vstore4_full:
.LFB2158:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %eax
	movl	%edi, %r11d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	andl	$2047, %eax
	movl	%edx, %r10d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$2048, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	subl	%eax, %r12d
	movq	%rsi, %rbp
	leal	5(%rdx), %eax
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%r12d, %r13d
	cltq
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rcx, %rbx
	leaq	(%rcx,%rax,4), %r15
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L629
	leal	1(%rax), %edx
	movl	%esi, %ecx
	shrl	$12, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movq	2232(%rax), %rdi
	cmpq	%rdi, 320(%rbx,%rdx,8)
	je	.L630
	movb	44216(%rbx,%rcx), %sil
	testb	%sil, 1976(%rbx,%rdx)
	je	.L629
.L630:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L631
	cmpb	43192(%rbx,%rcx), %dl
	jne	.L629
.L631:
	movl	2224(%rbx), %esi
	movq	%rbp, %rdx
	andq	$-4194304, %rdx
	orq	%rsi, %rdx
	cmpq	10424(%rax), %rdx
	jne	.L629
	testb	$1, 46264(%rbx,%rcx)
	je	.L629
	movq	35000(%rax), %rdx
	movq	%rbp, %rdi
	movq	%rdx, 984(%rbx)
	xorq	26808(%rax), %rdi
	movq	%rdi, (%rsp)
	jmp	.L632
.L629:
	movzbl	97(%rbx), %r8d
	movl	%r10d, %esi
	movq	%r13, %r9
	movl	$1, %ecx
	movq	%rbx, %rdx
	movq	%rbp, %rdi
	movl	%r11d, 12(%rsp)
	movl	%r10d, 8(%rsp)
	call	z900_logical_to_main_l
	movl	12(%rsp), %r11d
	movl	8(%rsp), %r10d
	movq	%rax, (%rsp)
.L632:
	movl	1892(%r15), %eax
	movq	984(%rbx), %r14
	testl	%eax, %eax
	je	.L633
	movq	120(%rbx), %rdx
	leal	1(%rax), %esi
	leal	(%r12,%rbp), %eax
	movslq	%esi, %rsi
	andl	%edx, %eax
	shrl	$12, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rcx
	movq	2232(%rcx), %rdi
	cmpq	%rdi, 320(%rbx,%rsi,8)
	je	.L634
	movb	44216(%rbx,%rax), %dil
	testb	%dil, 1976(%rbx,%rsi)
	je	.L633
.L634:
	movb	97(%rbx), %sil
	testb	%sil, %sil
	je	.L635
	cmpb	43192(%rbx,%rax), %sil
	jne	.L633
.L635:
	leaq	0(%r13,%rbp), %rdi
	movl	2224(%rbx), %esi
	andq	%rdx, %rdi
	movq	%rdi, %rdx
	andq	$-4194304, %rdx
	orq	%rsi, %rdx
	cmpq	10424(%rcx), %rdx
	jne	.L633
	testb	$2, 46264(%rbx,%rax)
	je	.L633
	movq	%rdi, %rax
	xorq	26808(%rcx), %rax
	jmp	.L636
.L633:
	leaq	0(%r13,%rbp), %rdi
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	andq	120(%rbx), %rdi
	subl	%r12d, %r9d
	movl	$2, %ecx
	movslq	%r9d, %r9
	movq	%rbx, %rdx
	movl	%r11d, 8(%rsp)
	movl	%r10d, %esi
	call	z900_logical_to_main_l
	movl	8(%rsp), %r11d
.L636:
	orb	$6, (%r14)
	leaq	16(%rsp), %rsi
	movq	%r13, %rcx
	movq	(%rsp), %rdi
	bswap	%r11d
	movl	%r11d, 16(%rsp)
	rep movsb
	movq	%rax, %rdi
	movb	$4, %cl
	subl	%r12d, %ecx
	movslq	%ecx, %rcx
	rep movsb
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2158:
	.size	z900_vstore4_full, .-z900_vstore4_full
	.type	z900_vstore8_full, @function
z900_vstore8_full:
.LFB2160:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %eax
	movq	%rdi, %r11
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	andl	$2047, %eax
	movl	%edx, %r10d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$2048, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	subl	%eax, %r12d
	movq	%rsi, %rbp
	leal	5(%rdx), %eax
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%r12d, %r13d
	cltq
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rcx, %rbx
	leaq	(%rcx,%rax,4), %r15
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L663
	leal	1(%rax), %edx
	movl	%esi, %ecx
	shrl	$12, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movq	2232(%rax), %rdi
	cmpq	%rdi, 320(%rbx,%rdx,8)
	je	.L664
	movb	44216(%rbx,%rcx), %sil
	testb	%sil, 1976(%rbx,%rdx)
	je	.L663
.L664:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L665
	cmpb	43192(%rbx,%rcx), %dl
	jne	.L663
.L665:
	movl	2224(%rbx), %esi
	movq	%rbp, %rdx
	andq	$-4194304, %rdx
	orq	%rsi, %rdx
	cmpq	10424(%rax), %rdx
	jne	.L663
	testb	$1, 46264(%rbx,%rcx)
	je	.L663
	movq	35000(%rax), %rdx
	movq	%rbp, %rdi
	movq	%rdx, 984(%rbx)
	xorq	26808(%rax), %rdi
	movq	%rdi, 8(%rsp)
	jmp	.L666
.L663:
	movzbl	97(%rbx), %r8d
	movl	%r10d, %esi
	movq	%r13, %r9
	movl	$1, %ecx
	movq	%rbx, %rdx
	movq	%rbp, %rdi
	movq	%r11, 24(%rsp)
	movl	%r10d, 16(%rsp)
	call	z900_logical_to_main_l
	movq	24(%rsp), %r11
	movl	16(%rsp), %r10d
	movq	%rax, 8(%rsp)
.L666:
	movl	1892(%r15), %eax
	movq	984(%rbx), %r14
	testl	%eax, %eax
	je	.L667
	movq	120(%rbx), %rdx
	leal	1(%rax), %esi
	leal	(%r12,%rbp), %eax
	movslq	%esi, %rsi
	andl	%edx, %eax
	shrl	$12, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rcx
	movq	2232(%rcx), %rdi
	cmpq	%rdi, 320(%rbx,%rsi,8)
	je	.L668
	movb	44216(%rbx,%rax), %dil
	testb	%dil, 1976(%rbx,%rsi)
	je	.L667
.L668:
	movb	97(%rbx), %sil
	testb	%sil, %sil
	je	.L669
	cmpb	43192(%rbx,%rax), %sil
	jne	.L667
.L669:
	leaq	0(%r13,%rbp), %rdi
	movl	2224(%rbx), %esi
	andq	%rdx, %rdi
	movq	%rdi, %rdx
	andq	$-4194304, %rdx
	orq	%rsi, %rdx
	cmpq	10424(%rcx), %rdx
	jne	.L667
	testb	$2, 46264(%rbx,%rax)
	je	.L667
	movq	%rdi, %rax
	xorq	26808(%rcx), %rax
	jmp	.L670
.L667:
	leaq	0(%r13,%rbp), %rdi
	movzbl	97(%rbx), %r8d
	movl	$8, %r9d
	andq	120(%rbx), %rdi
	subl	%r12d, %r9d
	movl	$2, %ecx
	movslq	%r9d, %r9
	movq	%rbx, %rdx
	movq	%r11, 16(%rsp)
	movl	%r10d, %esi
	call	z900_logical_to_main_l
	movq	16(%rsp), %r11
.L670:
	orb	$6, (%r14)
	leaq	32(%rsp), %rsi
	movq	%r13, %rcx
	movq	8(%rsp), %rdi
	bswap	%r11
	movq	%r11, 32(%rsp)
	rep movsb
	movq	%rax, %rdi
	movb	$8, %cl
	subl	%r12d, %ecx
	movslq	%ecx, %rcx
	rep movsb
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2160:
	.size	z900_vstore8_full, .-z900_vstore8_full
	.type	z900_instfetch.constprop.15, @function
z900_instfetch.constprop.15:
.LFB3158:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	184(%rdi), %rax
	testq	%rax, %rax
	je	.L697
	subq	144(%rdi), %rax
	movq	$0, 184(%rdi)
	addq	168(%rdi), %rax
	andq	120(%rdi), %rax
	movq	%rax, 176(%rdi)
.L697:
	movq	800(%rbx), %rbp
	movl	%ebp, %r13d
	andl	$4095, %r13d
	testb	$1, %bpl
	je	.L698
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L698:
	cmpq	$2048, %rbp
	sbbl	%r12d, %r12d
	andl	$-2048, %r12d
	addl	$4096, %r12d
	testb	$4, 808(%rbx)
	je	.L701
	movb	103(%rbx), %al
	movb	99(%rbx), %cl
	movl	%eax, %edx
	shrb	%al
	andl	$1, %edx
	andl	$1, %eax
	sall	$7, %edx
	sall	$5, %eax
	orl	%edx, %eax
	movb	96(%rbx), %dl
	orl	$64, %eax
	andl	$4, %edx
	cmpb	$1, %dl
	sbbl	%edx, %edx
	notl	%edx
	andl	$16, %edx
	orl	%edx, %eax
	movl	%ecx, %edx
	andl	$64, %ecx
	shrw	$4, %dx
	andl	$8, %edx
	orl	%edx, %eax
	cmpb	$1, %cl
	movl	52(%rbx), %ecx
	sbbl	%edx, %edx
	notl	%edx
	andl	$4, %edx
	orl	%edx, %eax
	testl	$4194304, %ecx
	movw	%ax, 1146(%rbx)
	je	.L701
	movq	416(%rbx), %rax
	movq	408(%rbx), %rdx
	cmpq	%rdx, %rax
	jb	.L706
	xorl	%esi, %esi
	cmpq	%rdx, %rbp
	jb	.L709
	jmp	.L768
.L706:
	cmpq	%rdx, %rbp
	movl	$1, %esi
	jae	.L709
.L768:
	xorl	%esi, %esi
	cmpq	%rax, %rbp
	setbe	%sil
.L709:
	movb	%sil, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L701
	movl	56(%rbx), %eax
	movl	%eax, %edx
	orl	$4194304, %edx
	andl	$65536, %ecx
	movl	%edx, 56(%rbx)
	je	.L701
	orb	$4, 103(%rbx)
	orl	$4259840, %eax
	movq	%rbp, 112(%rbx)
	movl	%eax, 56(%rbx)
	movl	$128, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L701:
	movl	1908(%rbx), %eax
	testl	%eax, %eax
	je	.L710
	movl	%ebp, %ecx
	incl	%eax
	shrl	$12, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movq	2232(%rdx), %rdi
	cmpq	%rdi, 320(%rbx,%rax,8)
	je	.L711
	movb	44216(%rbx,%rcx), %sil
	testb	%sil, 1976(%rbx,%rax)
	je	.L710
.L711:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L712
	cmpb	43192(%rbx,%rcx), %al
	jne	.L710
.L712:
	movl	2224(%rbx), %eax
	movq	%rbp, %rsi
	andq	$-4194304, %rsi
	orq	%rsi, %rax
	cmpq	10424(%rdx), %rax
	jne	.L710
	testb	$4, 46264(%rbx,%rcx)
	je	.L710
	movq	%rbp, %rax
	xorq	26808(%rdx), %rax
	jmp	.L713
.L710:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	orl	$-1, %esi
	movq	%rbp, %rdi
	call	z900_logical_to_main_l
.L713:
	movb	(%rax), %cl
	movl	$2, %edx
	cmpb	$63, %cl
	jbe	.L714
	cmpb	$-64, %cl
	sbbl	%edx, %edx
	andl	$-2, %edx
	addl	$6, %edx
.L714:
	addl	%r13d, %edx
	cmpl	%edx, %r12d
	jge	.L715
	movl	1908(%rbx), %edx
	leaq	1014(%rbx), %r14
	subl	%r13d, %r12d
	movl	(%rax), %eax
	movslq	%r12d, %r12
	leaq	(%r12,%rbp), %rdi
	andq	120(%rbx), %rdi
	testl	%edx, %edx
	movl	%eax, 1014(%rbx)
	je	.L716
	movl	%edi, %ecx
	incl	%edx
	shrl	$12, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movq	2232(%rax), %rsi
	cmpq	%rsi, 320(%rbx,%rdx,8)
	je	.L717
	movb	44216(%rbx,%rcx), %sil
	testb	%sil, 1976(%rbx,%rdx)
	je	.L716
.L717:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L718
	cmpb	43192(%rbx,%rcx), %dl
	jne	.L716
.L718:
	movl	2224(%rbx), %esi
	movq	%rdi, %rdx
	andq	$-4194304, %rdx
	orq	%rsi, %rdx
	cmpq	10424(%rax), %rdx
	jne	.L716
	testb	$4, 46264(%rbx,%rcx)
	je	.L716
	xorq	26808(%rax), %rdi
	movq	%rdi, %rax
	jmp	.L719
.L716:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	orl	$-1, %esi
	call	z900_logical_to_main_l
.L719:
	movl	(%rax), %eax
	movl	%eax, (%r14,%r12)
	movq	%r14, %rax
.L715:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3158:
	.size	z900_instfetch.constprop.15, .-z900_instfetch.constprop.15
	.type	z900_vfetch8_full.constprop.17, @function
z900_vfetch8_full.constprop.17:
.LFB3156:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movl	1916(%rsi), %eax
	testl	%eax, %eax
	je	.L770
	movl	%edi, %ecx
	incl	%eax
	shrl	$12, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rsi,%rcx,8), %rdx
	movq	2232(%rdx), %rdi
	cmpq	%rdi, 320(%rsi,%rax,8)
	je	.L771
	movb	44216(%rsi,%rcx), %sil
	testb	%sil, 1976(%rbx,%rax)
	je	.L770
.L771:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L772
	cmpb	43192(%rbx,%rcx), %al
	jne	.L770
.L772:
	movl	2224(%rbx), %esi
	movq	%rbp, %rax
	andq	$-4194304, %rax
	orq	%rsi, %rax
	cmpq	10424(%rdx), %rax
	jne	.L770
	testb	$4, 46264(%rbx,%rcx)
	je	.L770
	movq	%rbp, %rax
	xorq	26808(%rdx), %rax
	jmp	.L773
.L770:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	z900_logical_to_main_l
.L773:
	movq	(%rax), %rax
	movl	%ebp, %edx
	andl	$2047, %edx
	movq	%rax, (%rsp)
	movl	$2048, %eax
	subl	%edx, %eax
	movl	1916(%rbx), %edx
	movl	%eax, %r12d
	testl	%edx, %edx
	je	.L774
	movq	120(%rbx), %rcx
	addl	%ebp, %eax
	incl	%edx
	movslq	%edx, %rdx
	andl	%ecx, %eax
	shrl	$12, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rsi
	movq	2232(%rsi), %rdi
	cmpq	%rdi, 320(%rbx,%rdx,8)
	je	.L775
	movb	44216(%rbx,%rax), %dil
	testb	%dil, 1976(%rbx,%rdx)
	je	.L774
.L775:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L776
	cmpb	43192(%rbx,%rax), %dl
	jne	.L774
.L776:
	leaq	(%r12,%rbp), %rdx
	movl	2224(%rbx), %edi
	andq	%rcx, %rdx
	movq	%rdx, %rcx
	andq	$-4194304, %rcx
	orq	%rdi, %rcx
	cmpq	10424(%rsi), %rcx
	jne	.L774
	testb	$4, 46264(%rbx,%rax)
	je	.L774
	movq	%rdx, %rax
	xorq	26808(%rsi), %rax
	jmp	.L777
.L774:
	leaq	(%r12,%rbp), %rdi
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	andq	120(%rbx), %rdi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	$1, %esi
	call	z900_logical_to_main_l
.L777:
	movq	(%rax), %rax
	movq	%rax, (%rsp,%r12)
	movq	(%rsp), %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	bswap	%rax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3156:
	.size	z900_vfetch8_full.constprop.17, .-z900_vfetch8_full.constprop.17
	.text
	.p2align 4,,15
	.type	z900_translate_addr, @function
z900_translate_addr:
.LFB2143:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	5(%rsi), %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%ecx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	andb	$-8, 994(%rdx)
	cmpl	$4, %eax
	ja	.L804
	jmp	*.L806(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L806:
	.quad	.L1043
	.quad	.L1042
	.quad	.L853
	.quad	.L809
	.quad	.L810
	.text
	.p2align 4,,10
	.p2align 3
.L804:
	movzbl	99(%rdx), %eax
	cmpb	$64, %al
	je	.L816
	testb	$1, 1144(%rdx)
	je	.L817
	movq	1064(%rdx), %rdx
	movq	1080(%rdx), %rcx
	testb	$1, 2(%rcx)
	jne	.L1045
.L817:
	cmpl	$15, %r12d
	jg	.L816
	cmpb	$-128, %al
	je	.L1042
	cmpb	$-64, %al
	.p2align 4,,3
	je	.L1043
	.p2align 4,,10
	.p2align 3
.L853:
	movq	336(%rbx), %rsi
	movl	$0, 976(%rbx)
	testl	$288, %esi
	movq	%rsi, 968(%rbx)
	setne	%dl
.L815:
	movzbl	994(%rbx), %eax
	movl	%ebp, %r15d
	movq	%rbp, %r8
	shrl	$12, %r15d
	andq	$-4194304, %r8
	andl	$1023, %r15d
	leaq	(%rbx,%r15,8), %rcx
	andl	$-2, %eax
	orl	%edx, %eax
	movl	2224(%rbx), %edx
	movb	%al, 994(%rbx)
	orq	%r8, %rdx
	cmpq	10424(%rcx), %rdx
	je	.L1046
.L856:
	testb	$32, %sil
	je	.L859
	testl	$512, %r13d
	je	.L1047
	xorl	%edx, %edx
.L860:
	movl	$18, %r10d
	movl	$18, %esi
	movw	%r10w, 992(%rbx)
.L896:
	testl	$4096, %r13d
	movl	$5, %r14d
	je	.L1048
.L964:
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r14d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1042:
	.cfi_restore_state
	movq	384(%rbx), %rsi
	movl	$2, 976(%rbx)
	testl	$288, %esi
	movq	%rsi, 968(%rbx)
	setne	%dl
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L859:
	movl	%esi, %eax
	movq	%rbp, %rdx
	movl	%esi, %edi
	shrq	$50, %rdx
	andl	$12, %eax
	andw	$16376, %dx
	cmpb	$11, %al
	ja	.L927
	testw	%dx, %dx
	jne	.L863
.L927:
	movq	%rbp, %r14
	shrq	$39, %r14
	andw	$16376, %r14w
	cmpb	$7, %al
	ja	.L928
	testw	%r14w, %r14w
	je	.L928
.L863:
	movl	$56, %esi
	movl	$4, %eax
	movw	%si, 992(%rbx)
.L899:
	testl	$1024, %r13d
	movl	$3, %r14d
	jne	.L964
.L914:
	movslq	976(%rbx), %rdx
	andq	$-4096, %rbp
	movq	%rbp, 792(%rbx)
	cmpl	$1, %edx
	je	.L1049
	orq	%rbp, %rdx
	movq	%rdx, 792(%rbx)
.L901:
	testb	$4, %r13b
	jne	.L1050
	andl	$3, %r13d
	je	.L905
	orb	$4, %dh
	movq	%rdx, 792(%rbx)
.L905:
	cmpb	$64, 99(%rbx)
	je	.L906
	testb	$1, 1144(%rbx)
	movl	%eax, %r14d
	je	.L964
	movq	1064(%rbx), %rdx
	movq	1080(%rdx), %rcx
	testb	$1, 2(%rcx)
	je	.L964
	testb	$64, 99(%rdx)
	je	.L964
.L906:
	xorl	%edx, %edx
	testl	%r12d, %r12d
	movl	%eax, %r14d
	cmovns	%r12d, %edx
	movb	%dl, 1012(%rbx)
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L1043:
	movq	432(%rbx), %rsi
	movl	$3, 976(%rbx)
	testl	$288, %esi
	movq	%rsi, 968(%rbx)
	setne	%dl
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L809:
	movl	$0, 976(%rdx)
	movq	$-1, %rsi
	movq	$-1, 968(%rdx)
	movl	$1, %edx
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L810:
	movl	1908(%rdx), %eax
	cmpl	$1, %eax
	je	.L812
	xorl	%edx, %edx
	cmpl	$13, %eax
	sete	%dl
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, 976(%rbx)
.L814:
	addl	$1, %eax
	cltq
	movq	320(%rbx,%rax,8), %rsi
	testl	$288, %esi
	movq	%rsi, 968(%rbx)
	setne	%dl
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L1047:
	movl	%r13d, %edx
	andl	$1024, %edx
	jne	.L861
	movq	%rbp, %rsi
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	andq	$-4096, %rsi
.L862:
	testl	$512, %esi
	je	.L894
.L893:
	orb	$2, 994(%rbx)
.L894:
	andl	$256, %r13d
	jne	.L858
	movq	968(%rbx), %rax
	shrq	$4, %r10
	andl	$1, %r10d
	movq	%rax, 2232(%rcx)
	movl	2224(%rbx), %eax
	movq	%rsi, 18616(%rcx)
	orq	%r8, %rax
	movq	%rax, 10424(%rcx)
	movb	%r10b, 44216(%rbx,%r15)
	movzbl	994(%rbx), %eax
	movb	$0, 46264(%rbx,%r15)
	shrb	%al
	andl	$3, %eax
	movb	%al, 45240(%rbx,%r15)
	movq	$0, 26808(%rcx)
.L858:
	testl	%edx, %edx
	movq	%r9, %rax
	jne	.L895
	movq	%rbp, %rax
	andq	$-4096, %rsi
	andl	$4095, %eax
	movq	%rsi, 960(%rbx)
	orq	%rsi, %rax
.L895:
	xorl	%ebp, %ebp
	movq	%rax, 944(%rbx)
	xorl	%r14d, %r14d
	movw	%bp, 992(%rbx)
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L928:
	movq	%rbp, %r9
	shrq	$28, %r9
	andw	$16376, %r9w
	cmpb	$3, %al
	ja	.L929
	testw	%r9w, %r9w
	jne	.L863
.L929:
	movq	%rbp, %r10
	andq	$-4096, %rsi
	andl	$3, %edi
	shrq	$17, %r10
	andw	$16376, %r10w
	cmpb	$8, %al
	je	.L868
	cmpb	$12, %al
	je	.L869
	cmpb	$4, %al
	je	.L1051
	movzwl	%r10w, %edx
	shrw	$12, %r10w
	addq	%rsi, %rdx
.L913:
	movzbl	%dil, %edi
	cmpw	%r10w, %di
	jb	.L881
	cmpq	%rdx, 1040(%rbx)
	jae	.L1052
.L872:
	movl	$5, %r11d
	movl	$5, %esi
	movw	%r11w, 992(%rbx)
	jmp	.L896
	.p2align 4,,10
	.p2align 3
.L1046:
	cmpb	$0, 44216(%rbx,%r15)
	je	.L1053
	testb	$1, %al
	jne	.L856
.L855:
	testl	$256, %r13d
	jne	.L856
	movzbl	45240(%rbx,%r15), %eax
	movq	18616(%rcx), %rsi
	testb	%al, %al
	je	.L1041
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, 994(%rbx)
.L1041:
	movl	%r13d, %edx
	xorl	%r9d, %r9d
	andl	$512, %edx
	jmp	.L858
	.p2align 4,,10
	.p2align 3
.L1045:
	testb	$64, 99(%rdx)
	je	.L817
	.p2align 4,,10
	.p2align 3
.L816:
	movl	%r12d, %r14d
	andl	$15, %r14d
	je	.L853
	movzbl	1144(%rbx), %eax
	testb	$1, %al
	je	.L820
	movq	1064(%rbx), %rdx
	movq	1080(%rdx), %rcx
	testb	$1, 2(%rcx)
	je	.L853
	testb	$64, 99(%rdx)
	je	.L853
	movslq	%r14d, %r10
	movl	584(%rdx,%r10,4), %r15d
.L821:
	testl	%r15d, %r15d
	je	.L853
	cmpl	$1, %r15d
	je	.L1042
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	leaq	(%rbx,%rdx,4), %r11
	movl	1892(%r11), %edx
	cmpl	$15, %edx
	jle	.L824
	movzbl	2009(%rbx,%r10), %eax
	addl	$1, %edx
	movslq	%edx, %rdx
	movq	320(%rbx,%rdx,8), %rsi
	movl	$1, 976(%rbx)
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	994(%rbx), %eax
	movq	%rsi, 968(%rbx)
	andl	$-7, %eax
	orl	%edx, %eax
	testl	$288, %esi
	movb	%al, 994(%rbx)
	setne	%dl
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L1053:
	cmpq	%rsi, 2232(%rcx)
	jne	.L856
	jmp	.L855
	.p2align 4,,10
	.p2align 3
.L861:
	movl	$19, %r9d
	movl	$19, %esi
	xorl	%edx, %edx
	movw	%r9w, 992(%rbx)
	jmp	.L896
	.p2align 4,,10
	.p2align 3
.L812:
	movl	$0, 976(%rdx)
	jmp	.L814
	.p2align 4,,10
	.p2align 3
.L1050:
	orb	$8, %dh
	movq	%rdx, 792(%rbx)
	jmp	.L905
	.p2align 4,,10
	.p2align 3
.L820:
	movslq	%r14d, %r10
	movl	584(%rbx,%r10,4), %r15d
	jmp	.L821
	.p2align 4,,10
	.p2align 3
.L1048:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	*2032(%rbx)
	movq	(%rsp), %rdx
.L882:
	testl	$1024, %r13d
	je	.L897
.L1044:
	movq	%rdx, 944(%rbx)
	movl	$2, %r14d
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L1049:
	movq	968(%rbx), %rcx
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	xorq	336(%rbx), %rsi
	testq	$-4096, %rsi
	je	.L901
	movq	%rcx, %rsi
	xorq	384(%rbx), %rsi
	testq	$-4096, %rsi
	jne	.L902
	orq	$2, %rdx
	movq	%rdx, 792(%rbx)
	jmp	.L901
.L824:
	movzwl	394(%rbx), %edi
	testl	$-33554432, %r15d
	movw	%di, (%rsp)
	je	.L1054
.L825:
	movl	$40, %r15d
	movw	%r15w, 992(%rbx)
.L851:
	movl	%r13d, %r14d
	movb	%r12b, 1012(%rbx)
	sall	$21, %r14d
	sarl	$31, %r14d
	addl	$4, %r14d
	jmp	.L964
.L897:
	movl	$16, %r8d
	movq	%rdx, 944(%rbx)
	movl	$1, %eax
	movw	%r8w, 992(%rbx)
	jmp	.L914
.L1051:
	movl	%r9d, %eax
	shrw	$12, %ax
.L912:
	movzbl	%dil, %edi
	cmpw	%ax, %di
	jb	.L878
	movzwl	%r9w, %edx
	addq	%rsi, %rdx
	cmpq	1040(%rbx), %rdx
	ja	.L872
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movq	%rcx, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	call	z900_fetch_main_absolute
	movq	(%rsp), %rdx
	movq	(%rax), %rdi
	movq	8(%rsp), %r8
	movl	16(%rsp), %r10d
	movq	24(%rsp), %rcx
	bswap	%rdi
	testb	$32, %dil
	jne	.L879
	movq	%rdi, %rax
	andl	$12, %eax
	cmpq	$4, %rax
	jne	.L860
	cmpb	$0, 2049(%rbx)
	js	.L1055
.L880:
	movq	%rdi, %rdx
	movzwl	%r10w, %eax
	shrw	$12, %r10w
	andq	$-4096, %rdx
	addq	%rax, %rdx
	movq	%rdi, %rax
	andl	$192, %eax
	shrq	$6, %rax
	cmpw	%ax, %r10w
	jae	.L1056
.L881:
	movl	$16, %edi
	movq	%rdx, 944(%rbx)
	movl	$3, %eax
	movw	%di, 992(%rbx)
	jmp	.L899
.L869:
	movl	%edx, %eax
	movzbl	%dil, %edi
	shrw	$12, %ax
	cmpw	%ax, %di
	jb	.L871
	movzwl	%dx, %edx
	addq	%rsi, %rdx
	cmpq	1040(%rbx), %rdx
	ja	.L872
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movq	%rcx, 32(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	call	z900_fetch_main_absolute
	movq	(%rsp), %rdx
	movq	(%rax), %rdi
	movq	8(%rsp), %r8
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r10d
	bswap	%rdi
	testb	$32, %dil
	movq	32(%rsp), %rcx
	jne	.L873
	movq	%rdi, %rax
	andl	$12, %eax
	cmpq	$12, %rax
	jne	.L860
	cmpb	$0, 2049(%rbx)
	js	.L1057
.L874:
	movq	%rdi, %rdx
	movl	%r14d, %eax
	andl	$192, %edx
	shrw	$12, %ax
	shrq	$6, %rdx
	cmpw	%dx, %ax
	jae	.L1058
.L875:
	movl	$58, %edx
	movl	$4, %eax
	movw	%dx, 992(%rbx)
	jmp	.L899
.L868:
	movl	%r14d, %eax
	shrw	$12, %ax
.L911:
	movzbl	%dil, %edi
	cmpw	%ax, %di
	jb	.L875
	movzwl	%r14w, %edx
	addq	%rsi, %rdx
	cmpq	1040(%rbx), %rdx
	ja	.L872
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movq	%rcx, 32(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	call	z900_fetch_main_absolute
	movq	(%rsp), %rdx
	movq	(%rax), %rdi
	movq	8(%rsp), %r8
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r10d
	bswap	%rdi
	testb	$32, %dil
	movq	32(%rsp), %rcx
	jne	.L876
	movq	%rdi, %rax
	andl	$12, %eax
	cmpq	$8, %rax
	jne	.L860
	cmpb	$0, 2049(%rbx)
	js	.L1059
.L877:
	movq	%rdi, %rdx
	movl	%r9d, %eax
	andl	$192, %edx
	shrw	$12, %ax
	shrq	$6, %rdx
	cmpw	%dx, %ax
	jae	.L1060
.L878:
	movl	$59, %eax
	movw	%ax, 992(%rbx)
	movl	$4, %eax
	jmp	.L899
.L902:
	xorq	432(%rbx), %rcx
	testq	$-4096, %rcx
	jne	.L903
	orq	$3, %rdx
	movq	%rdx, 792(%rbx)
	jmp	.L901
.L1054:
	testl	$16777216, %r15d
	je	.L826
	movl	368(%rbx), %edx
	andl	$2147483584, %edx
.L827:
	movl	%edx, %ecx
	cmpq	1040(%rbx), %rcx
	ja	.L828
	andq	$-8192, %rcx
	je	.L829
	movl	88(%rbx), %esi
	cmpq	%rsi, %rcx
	je	.L829
.L830:
	leal	16(%rdx), %ecx
	testb	$2, %al
	jne	.L1061
.L831:
	movq	%rcx, %rax
	movzwl	%r15w, %edx
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movl	(%rax,%rcx), %eax
	movl	%edx, %ecx
	shrl	$3, %ecx
	bswap	%eax
	movl	%eax, %esi
	andl	$127, %esi
	cmpl	%ecx, %esi
	jae	.L1062
.L832:
	movl	$41, %r14d
	movw	%r14w, 992(%rbx)
	jmp	.L851
.L871:
	movl	$57, %ecx
	movl	$4, %eax
	movw	%cx, 992(%rbx)
	jmp	.L899
.L828:
	movl	$5, %eax
	movl	$5, %esi
	movq	%rbx, %rdi
	movw	%ax, 992(%rbx)
	call	*2032(%rbx)
	jmp	.L825
.L903:
	orq	$1, %rdx
	movq	%rdx, 792(%rbx)
	jmp	.L901
.L826:
	movl	344(%rbx), %edx
	andl	$2147483584, %edx
	jmp	.L827
.L829:
	xorl	88(%rbx), %edx
	jmp	.L830
.L1062:
	andl	$2147483520, %eax
	sall	$4, %edx
	addl	%edx, %eax
	movl	%eax, %edi
	cmpq	1040(%rbx), %rdi
	ja	.L828
	movq	%rdi, %rcx
	andq	$-8192, %rcx
	je	.L833
	movl	88(%rbx), %edx
	cmpq	%rdx, %rcx
	je	.L833
.L834:
	movq	%rbx, %rsi
	movq	%r10, 32(%rsp)
	movq	%r11, 24(%rsp)
	call	z900_fetch_main_absolute
	movl	(%rax), %edx
	movl	8(%rax), %ecx
	movl	12(%rax), %eax
	bswap	%edx
	movl	%edx, %edi
	bswap	%ecx
	movl	%ecx, %ecx
	movq	%rdi, 8(%rsp)
	bswap	%eax
	salq	$32, %rax
	orq	%rax, %rcx
	testl	%edi, %edi
	js	.L832
	movl	%r13d, %eax
	movq	24(%rsp), %r11
	andl	$2048, %eax
	movq	32(%rsp), %r10
	movl	%eax, 16(%rsp)
	jne	.L835
	xorl	8(%rsp), %r15d
	andl	$16711680, %r15d
	je	.L835
.L836:
	movw	$42, 992(%rbx)
	jmp	.L851
.L873:
	testl	$1024, %r13d
	je	.L871
	orq	$3, %rdx
	jmp	.L1044
.L1052:
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	call	z900_fetch_main_absolute
	movq	(%rsp), %rdx
	movq	(%rax), %r10
	movq	8(%rsp), %r8
	movq	16(%rsp), %rcx
	bswap	%r10
	testb	$32, %r10b
	jne	.L882
	testb	$12, %r10b
	jne	.L860
	movzbl	994(%rbx), %esi
	testb	$1, %sil
	je	.L883
	testb	$16, %r10b
	jne	.L860
.L883:
	movzbl	2049(%rbx), %edi
	testb	%dil, %dil
	js	.L1063
.L884:
	movq	%rbp, %rax
	movq	%r10, %r9
	movl	%r13d, %r14d
	shrq	$9, %rax
	andq	$-2048, %r9
	andl	$2040, %eax
	addq	%rax, %r9
	andl	$1024, %r14d
	je	.L890
	shrq	$9, %r10
	movq	%r9, 944(%rbx)
	movw	$0, 992(%rbx)
	movl	%r10d, %r14d
	andl	$1, %r14d
	testb	%dil, %dil
	jns	.L964
	testb	$-128, 330(%rbx)
	je	.L964
	andb	$6, %sil
	movl	$1, %eax
	cmovne	%eax, %r14d
	jmp	.L964
.L879:
	testl	$1024, %r13d
	je	.L878
	orq	$1, %rdx
	movl	$2, %r14d
	movq	%rdx, 944(%rbx)
	jmp	.L964
.L876:
	testl	$1024, %r13d
	je	.L875
	orq	$2, %rdx
	movl	$2, %r14d
	movq	%rdx, 944(%rbx)
	jmp	.L964
.L833:
	movl	%eax, %edi
	xorl	88(%rbx), %edi
	jmp	.L834
.L835:
	movl	%ecx, %eax
	andl	$2147483584, %eax
	movl	%eax, %edi
	movq	%rdi, %rsi
	andq	$-8192, %rsi
	je	.L837
	movl	88(%rbx), %edx
	cmpq	%rdx, %rsi
	je	.L837
.L838:
	cmpq	1040(%rbx), %rdi
	ja	.L828
	movq	%rbx, %rsi
	movq	%r10, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%r11, 24(%rsp)
	call	z900_fetch_main_absolute
	movq	40(%rsp), %r10
	xorl	%edx, %edx
	movq	32(%rsp), %rcx
	movq	24(%rsp), %r11
.L840:
	movl	(%rax,%rdx), %esi
	bswap	%esi
	movl	%esi, 48(%rsp,%rdx)
	addq	$4, %rdx
	cmpq	$64, %rdx
	jne	.L840
	movl	48(%rsp), %eax
	testl	%eax, %eax
	js	.L841
	shrq	$32, %rcx
	cmpl	%ecx, 68(%rsp)
	je	.L1064
.L842:
	movw	$44, 992(%rbx)
	jmp	.L851
.L837:
	movl	%eax, %edi
	xorl	88(%rbx), %edi
	jmp	.L838
.L1056:
	andl	$3, %edi
	jmp	.L913
.L1060:
	movq	%rdi, %rsi
	andl	$3, %edi
	andq	$-4096, %rsi
	jmp	.L912
.L1059:
	testb	$-128, 330(%rbx)
	je	.L877
	testl	$512, %edi
	je	.L877
	orb	$2, 994(%rbx)
	jmp	.L877
.L1061:
	testb	$4, %al
	jne	.L831
	movq	%rcx, %rdi
	movq	1056(%rbx), %rdx
	movl	$4, %ecx
	addq	1096(%rbx), %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$-3, %esi
	movq	%r10, 16(%rsp)
	movq	%r11, 8(%rsp)
	call	z900_logical_to_main_l
	movq	1056(%rbx), %rax
	movq	16(%rsp), %r10
	movq	8(%rsp), %r11
	movq	952(%rax), %rcx
	jmp	.L831
.L1055:
	testb	$-128, 330(%rbx)
	je	.L880
	testl	$512, %edi
	je	.L880
	orb	$2, 994(%rbx)
	jmp	.L880
.L890:
	cmpq	1040(%rbx), %r9
	ja	.L872
	movq	%rbx, %rsi
	movq	%r9, %rdi
	movq	%rcx, 32(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r9, (%rsp)
	call	z900_fetch_main_absolute
	movq	(%rsp), %r9
	movq	(%rax), %rsi
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r8
	movq	24(%rsp), %r10
	bswap	%rsi
	testl	$1024, %esi
	movq	32(%rsp), %rcx
	jne	.L891
	testl	$2048, %esi
	jne	.L860
	movl	%r13d, %edx
	andl	$512, %edx
	testl	$512, %r10d
	jne	.L893
	jmp	.L862
.L1063:
	testb	$-128, 330(%rbx)
	je	.L884
	testl	$1024, %r10d
	je	.L884
	testl	$512, %r10d
	je	.L885
	orb	$2, 994(%rbx)
.L885:
	movl	%r13d, %r14d
	andl	$1024, %r14d
	jne	.L1065
	movq	%r10, %rax
	andl	$1048575, %ebp
	andq	$-1048576, %rax
	orq	%rbp, %rax
	movq	%rax, 944(%rbx)
	andq	$-4096, %rax
	andl	$256, %r13d
	movq	%rax, 960(%rbx)
	jne	.L889
	movq	968(%rbx), %rdx
	movq	%rdx, 2232(%rcx)
	movl	2224(%rbx), %edx
	movq	%rax, 18616(%rcx)
	movq	%r10, %rax
	shrq	$4, %rax
	andl	$1, %eax
	orq	%r8, %rdx
	movq	%rdx, 10424(%rcx)
	movb	%al, 44216(%rbx,%r15)
	movzbl	994(%rbx), %eax
	movb	$0, 46264(%rbx,%r15)
	shrb	%al
	andl	$3, %eax
	movb	%al, 45240(%rbx,%r15)
	movq	$0, 26808(%rcx)
.L889:
	movw	$0, 992(%rbx)
	jmp	.L964
.L1065:
	movzbl	994(%rbx), %eax
	movl	$2, %r14d
	movw	$0, 992(%rbx)
	andl	$6, %eax
	cmpb	$1, %al
	sbbq	%rax, %rax
	notq	%rax
	andl	$4, %eax
	orq	%rdx, %rax
	movq	%rax, 944(%rbx)
	jmp	.L964
.L891:
	testl	$512, %r13d
	movq	%r9, 944(%rbx)
	movl	$2, %eax
	movw	$17, 992(%rbx)
	je	.L914
	jmp	.L964
.L1058:
	movq	%rdi, %rsi
	andl	$3, %edi
	andq	$-4096, %rsi
	jmp	.L911
.L1057:
	testb	$-128, 330(%rbx)
	je	.L874
	testl	$512, %edi
	je	.L874
	orb	$2, 994(%rbx)
	jmp	.L874
.L1064:
	cmpl	$0, 16(%rsp)
	jne	.L843
	testq	$16777216, 8(%rsp)
	je	.L843
	movzwl	8(%rsp), %ecx
	movzwl	(%rsp), %edi
	cmpw	%cx, %di
	je	.L843
	movl	52(%rsp), %edx
	movl	%edi, %ecx
	andl	$2147483644, %eax
	andl	$65520, %ecx
	andl	$65520, %edx
	cmpl	%ecx, %edx
	jl	.L849
	movl	%edi, %edx
	shrw	$2, %dx
	movzwl	%dx, %edx
	addl	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %ecx
	cmpq	1040(%rbx), %rcx
	ja	.L845
	movq	%rcx, %rsi
	andq	$-8192, %rsi
	je	.L846
	movl	88(%rbx), %edx
	cmpq	%rdx, %rsi
	je	.L846
.L847:
	movzbl	1144(%rbx), %edx
	testb	$2, %dl
	jne	.L1066
.L848:
	movq	1024(%rbx), %rdx
	shrl	$11, %eax
	addq	1032(%rbx), %rax
	movzbl	(%rdx,%rcx), %edx
	movl	(%rsp), %ecx
	orb	$4, (%rax)
	andl	$3, %ecx
	addl	%ecx, %ecx
	sall	%cl, %edx
	andb	$64, %dl
	jne	.L843
.L849:
	movw	$45, 992(%rbx)
	jmp	.L851
.L843:
	testq	$33554432, 8(%rsp)
	je	.L850
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 994(%rbx)
.L850:
	movl	56(%rsp), %esi
	movl	$1, 976(%rbx)
	movzbl	994(%rbx), %ecx
	movl	60(%rsp), %eax
	salq	$32, %rsi
	shrb	%cl
	orq	%rax, %rsi
	andb	$2, %cl
	movq	%rsi, 968(%rbx)
	je	.L909
	xorq	$3088, %rsi
	orq	$256, %rsi
	movq	%rsi, 968(%rbx)
.L909:
	leal	17(%r14), %eax
	movq	%rsi, %rdx
	addl	$16, %r14d
	cltq
	andl	$288, %edx
	movq	%rsi, 320(%rbx,%rax,8)
	setne	%dl
	movl	%r14d, 1892(%r11)
	sete	1976(%rbx,%rax)
	movb	%cl, 2009(%rbx,%r10)
	jmp	.L815
.L841:
	movw	$43, 992(%rbx)
	jmp	.L851
.L1066:
	andb	$4, %dl
	jne	.L848
	movq	%rcx, %rdi
	movq	1056(%rbx), %rdx
	xorl	%ecx, %ecx
	addq	1096(%rbx), %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$-3, %esi
	movq	%r10, 24(%rsp)
	movq	%r11, 16(%rsp)
	call	z900_logical_to_main_l
	movq	1056(%rbx), %rax
	movq	24(%rsp), %r10
	movq	16(%rsp), %r11
	movl	952(%rax), %eax
	movl	%eax, %ecx
	jmp	.L848
.L846:
	xorl	88(%rbx), %eax
	movl	%eax, %ecx
	jmp	.L847
.L845:
	movl	$5, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L849
	.cfi_endproc
.LFE2143:
	.size	z900_translate_addr, .-z900_translate_addr
	.p2align 4,,15
	.type	s390_translate_addr, @function
s390_translate_addr:
.LFB1139:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	5(%rsi), %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%ecx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	andb	$-8, 994(%rdx)
	cmpl	$4, %eax
	ja	.L1068
	jmp	*.L1070(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L1070:
	.quad	.L1252
	.quad	.L1251
	.quad	.L1126
	.quad	.L1073
	.quad	.L1074
	.text
	.p2align 4,,10
	.p2align 3
.L1068:
	movzbl	99(%rdx), %eax
	cmpb	$64, %al
	je	.L1080
	testb	$1, 1144(%rdx)
	je	.L1081
	movq	1064(%rdx), %rdx
	movq	1080(%rdx), %rcx
	testb	$1, 2(%rcx)
	jne	.L1253
.L1081:
	cmpl	$15, %ebp
	jg	.L1080
	cmpb	$-128, %al
	je	.L1251
	cmpb	$-64, %al
	.p2align 4,,4
	je	.L1252
	.p2align 4,,10
	.p2align 3
.L1126:
	movl	$0, 976(%rbx)
	movl	336(%rbx), %eax
	movq	%rax, 968(%rbx)
.L1079:
	movl	328(%rbx), %eax
	xorl	%r14d, %r14d
	andl	$16252928, %eax
	cmpl	$11534336, %eax
	je	.L1254
.L1140:
	movl	$18, %esi
	movw	%si, 992(%rbx)
	movl	$18, %esi
.L1149:
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L1139:
	andl	$1024, %r13d
	je	.L1150
	movq	%r14, 944(%rbx)
	movl	$2, %eax
.L1220:
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1251:
	.cfi_restore_state
	movl	$2, 976(%rbx)
	movl	384(%rbx), %eax
	movq	%rax, 968(%rbx)
	jmp	.L1079
	.p2align 4,,10
	.p2align 3
.L1252:
	movl	$3, 976(%rbx)
	movl	432(%rbx), %eax
	movq	%rax, 968(%rbx)
	jmp	.L1079
	.p2align 4,,10
	.p2align 3
.L1073:
	movl	$0, 976(%rdx)
	movl	$4294967295, %eax
	movq	%rax, 968(%rdx)
	jmp	.L1079
	.p2align 4,,10
	.p2align 3
.L1074:
	movl	1908(%rdx), %eax
	cmpl	$1, %eax
	je	.L1076
	xorl	%edx, %edx
	cmpl	$13, %eax
	sete	%dl
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, 976(%rbx)
.L1078:
	addl	$1, %eax
	cltq
	movl	320(%rbx,%rax,8), %eax
	movq	%rax, 968(%rbx)
	jmp	.L1079
	.p2align 4,,10
	.p2align 3
.L1254:
	movq	968(%rbx), %rdx
	movl	%r12d, %r15d
	movl	%r12d, %r11d
	movzbl	994(%rbx), %eax
	shrl	$12, %r15d
	andl	$2143289344, %r11d
	andl	$1023, %r15d
	leaq	(%rbx,%r15,8), %r10
	movq	%rdx, %rcx
	shrq	$8, %rcx
	andl	$-2, %eax
	andl	$1, %ecx
	orl	%ecx, %eax
	movl	2224(%rbx), %ecx
	movb	%al, 994(%rbx)
	orl	%r11d, %ecx
	cmpl	10424(%r10), %ecx
	je	.L1255
.L1127:
	movq	%r12, %rax
	movq	%rdx, %r14
	andl	$127, %edx
	shrq	$18, %rax
	andl	$2147479552, %r14d
	andl	$8188, %eax
	addq	%rax, %r14
	movl	%r12d, %eax
	shrl	$24, %eax
	cmpl	%eax, %edx
	jb	.L1131
	cmpq	1040(%rbx), %r14
	ja	.L1132
	movl	%r14d, %edx
	movl	%r14d, %eax
	andl	$2147479552, %edx
	jne	.L1133
	movl	88(%rbx), %r14d
.L1134:
	xorl	%eax, %r14d
.L1135:
	movzbl	1144(%rbx), %eax
	movq	%r14, %rdx
	testb	$2, %al
	jne	.L1256
.L1136:
	movq	%rdx, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movl	(%rax,%rdx), %edx
	bswap	%edx
	testb	$32, %dl
	jne	.L1139
	testl	%edx, %edx
	js	.L1140
	testb	$1, 994(%rbx)
	je	.L1141
	testb	$16, %dl
	jne	.L1140
.L1141:
	movl	%r12d, %eax
	movl	%edx, %esi
	andl	$1044480, %eax
	andl	$2147483584, %esi
	movl	%eax, %ecx
	shrl	$16, %eax
	shrl	$10, %ecx
	addq	%rsi, %rcx
	movl	%edx, %esi
	andl	$15, %esi
	cmpl	%eax, %esi
	jb	.L1142
	cmpq	1040(%rbx), %rcx
	ja	.L1132
	movl	%ecx, %esi
	movl	%ecx, %eax
	andl	$2147479552, %esi
	je	.L1143
	cmpl	88(%rbx), %esi
	je	.L1143
.L1144:
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	movq	%r10, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	s390_fetch_fullword_absolute
	movq	8(%rsp), %rcx
	testb	$4, %ah
	movl	%eax, %esi
	movl	16(%rsp), %r11d
	movl	24(%rsp), %edx
	movq	32(%rsp), %r10
	jne	.L1145
	testl	$-2147481344, %eax
	jne	.L1140
	testb	$2, %ah
	je	.L1146
	orb	$2, 994(%rbx)
.L1146:
	testl	$256, %r13d
	jne	.L1130
	movq	968(%rbx), %rdi
	movl	%edi, 2232(%r10)
	orl	2224(%rbx), %r11d
	movl	%eax, 18616(%r10)
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$1, %eax
	movl	%r11d, 10424(%r10)
	movb	%al, 44216(%rbx,%r15)
	movb	$0, 46264(%rbx,%r15)
	movzbl	994(%rbx), %eax
	shrb	%al
	andl	$3, %eax
	movb	%al, 45240(%rbx,%r15)
	movq	$0, 26808(%r10)
.L1130:
	andl	$512, %r13d
	jne	.L1147
	movl	%r12d, %ecx
	andl	$2147479552, %esi
	andl	$4095, %ecx
	movq	%rsi, 960(%rbx)
	orq	%rsi, %rcx
.L1147:
	xorl	%r8d, %r8d
	movq	%rcx, 944(%rbx)
	xorl	%eax, %eax
	movw	%r8w, 992(%rbx)
	jmp	.L1220
	.p2align 4,,10
	.p2align 3
.L1150:
	movl	$16, %ecx
	movq	%r14, 944(%rbx)
	movl	$1, %edx
	movw	%cx, 992(%rbx)
.L1151:
	movl	976(%rbx), %eax
	andl	$2147479552, %r12d
	movl	%r12d, 792(%rbx)
	cmpl	$1, %eax
	je	.L1257
	cmpl	$2, %eax
	movzbl	99(%rbx), %ecx
	je	.L1258
.L1159:
	orl	%eax, %r12d
	movl	%r12d, 792(%rbx)
.L1155:
	cmpb	$64, %cl
	je	.L1160
	testb	$1, 1144(%rbx)
	movl	%edx, %eax
	je	.L1220
	movq	1064(%rbx), %rcx
	movq	1080(%rcx), %rsi
	testb	$1, 2(%rsi)
	je	.L1220
	testb	$64, 99(%rcx)
	je	.L1220
.L1160:
	xorl	%eax, %eax
	testl	%ebp, %ebp
	cmovns	%ebp, %eax
	movb	%al, 1012(%rbx)
	movl	%edx, %eax
	jmp	.L1220
	.p2align 4,,10
	.p2align 3
.L1253:
	testb	$64, 99(%rdx)
	je	.L1081
	.p2align 4,,10
	.p2align 3
.L1080:
	movl	%ebp, %r14d
	andl	$15, %r14d
	je	.L1126
	movzbl	1144(%rbx), %eax
	testb	$1, %al
	je	.L1084
	movq	1064(%rbx), %rdx
	movq	1080(%rdx), %rcx
	testb	$1, 2(%rcx)
	je	.L1126
	testb	$64, 99(%rdx)
	je	.L1126
	movslq	%r14d, %r10
	movl	584(%rdx,%r10,4), %r15d
.L1085:
	testl	%r15d, %r15d
	je	.L1126
	cmpl	$1, %r15d
	je	.L1251
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	leaq	(%rbx,%rdx,4), %r11
	movl	1892(%r11), %edx
	cmpl	$15, %edx
	jle	.L1088
	addl	$1, %edx
	movslq	%edx, %rdx
	movl	320(%rbx,%rdx,8), %eax
	movq	%rax, 968(%rbx)
	movzbl	2009(%rbx,%r10), %eax
	movl	$1, 976(%rbx)
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, 994(%rbx)
	jmp	.L1079
	.p2align 4,,10
	.p2align 3
.L1131:
	movl	$16, %eax
	movq	%r14, 944(%rbx)
	movl	$3, %edx
	movw	%ax, 992(%rbx)
.L1152:
	andl	$1024, %r13d
	je	.L1151
	movl	$3, %eax
	jmp	.L1220
	.p2align 4,,10
	.p2align 3
.L1076:
	movl	$0, 976(%rdx)
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1132:
	movl	$5, %edi
	movl	$5, %esi
	movw	%di, 992(%rbx)
	jmp	.L1149
	.p2align 4,,10
	.p2align 3
.L1084:
	movslq	%r14d, %r10
	movl	584(%rbx,%r10,4), %r15d
	jmp	.L1085
.L1257:
	movq	968(%rbx), %rcx
	movl	336(%rbx), %eax
	xorq	%rcx, %rax
	testl	$2147479552, %eax
	je	.L1250
	movl	384(%rbx), %eax
	xorq	%rcx, %rax
	testl	$2147479552, %eax
	jne	.L1156
	orl	$2, %r12d
	movzbl	99(%rbx), %ecx
	movl	%r12d, 792(%rbx)
	jmp	.L1155
	.p2align 4,,10
	.p2align 3
.L1255:
	cmpb	$0, 44216(%rbx,%r15)
	je	.L1259
	testb	$1, %al
	jne	.L1127
.L1129:
	testl	$256, %r13d
	jne	.L1127
	movzbl	45240(%rbx,%r15), %eax
	xorl	%ecx, %ecx
	movl	18616(%r10), %esi
	testb	%al, %al
	je	.L1130
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, 994(%rbx)
	jmp	.L1130
.L1259:
	movl	2232(%r10), %eax
	cmpq	%rax, %rdx
	jne	.L1127
	jmp	.L1129
.L1133:
	cmpl	88(%rbx), %edx
	jne	.L1135
	movl	%edx, %r14d
	.p2align 4,,5
	jmp	.L1134
.L1088:
	movzwl	394(%rbx), %edi
	testl	$-33554432, %r15d
	movw	%di, 8(%rsp)
	je	.L1260
.L1089:
	movl	$40, %r10d
	movw	%r10w, 992(%rbx)
.L1124:
	movl	%r13d, %eax
	movb	%bpl, 1012(%rbx)
	sall	$21, %eax
	sarl	$31, %eax
	addl	$4, %eax
	jmp	.L1220
.L1258:
	testb	$127, %cl
	jne	.L1159
	orl	$-2147483646, %r12d
	movl	%r12d, 792(%rbx)
	jmp	.L1155
.L1157:
	orl	$1, %r12d
	movl	%r12d, 792(%rbx)
.L1250:
	movzbl	99(%rbx), %ecx
	jmp	.L1155
.L1260:
	testl	$16777216, %r15d
	je	.L1090
	movl	368(%rbx), %edx
	andl	$2147483584, %edx
.L1091:
	movl	%edx, %ecx
	cmpq	1040(%rbx), %rcx
	jbe	.L1261
.L1092:
	movl	$5, %r11d
	movl	$5, %esi
	movw	%r11w, 992(%rbx)
.L1123:
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L1089
.L1156:
	movl	432(%rbx), %eax
	xorq	%rcx, %rax
	testl	$2147479552, %eax
	jne	.L1157
	orl	$3, %r12d
	movzbl	99(%rbx), %ecx
	movl	%r12d, 792(%rbx)
	jmp	.L1155
.L1142:
	movl	$17, %edx
	movq	%rcx, 944(%rbx)
	movw	%dx, 992(%rbx)
	movl	$3, %edx
	jmp	.L1152
.L1090:
	movl	344(%rbx), %edx
	andl	$2147483584, %edx
	jmp	.L1091
.L1261:
	movl	%edx, %ecx
	andl	$2147479552, %ecx
	je	.L1093
	cmpl	88(%rbx), %ecx
	je	.L1093
.L1094:
	leal	16(%rdx), %esi
	testb	$2, %al
	movl	%esi, %ecx
	jne	.L1262
.L1095:
	movq	%rcx, %rax
	movzwl	%r15w, %edx
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movl	(%rax,%rcx), %eax
	movl	%edx, %ecx
	shrl	$3, %ecx
	bswap	%eax
	movl	%eax, %esi
	andl	$127, %esi
	cmpl	%ecx, %esi
	jae	.L1263
.L1098:
	movl	$41, %r9d
	movw	%r9w, 992(%rbx)
	jmp	.L1124
.L1143:
	movl	%eax, %ecx
	xorl	88(%rbx), %ecx
	jmp	.L1144
.L1093:
	xorl	88(%rbx), %edx
	jmp	.L1094
.L1145:
	xorl	%eax, %eax
	testl	$512, %r13d
	movq	%rcx, 944(%rbx)
	movw	$17, 992(%rbx)
	movl	$2, %edx
	je	.L1152
	jmp	.L1220
.L1263:
	andl	$2147483520, %eax
	sall	$4, %edx
	addl	%edx, %eax
	movl	%eax, %edi
	cmpq	1040(%rbx), %rdi
	ja	.L1092
	movl	%eax, %edx
	andl	$2147479552, %edx
	je	.L1099
	cmpl	88(%rbx), %edx
	je	.L1099
.L1100:
	movq	%rbx, %rsi
	movq	%r10, 24(%rsp)
	movq	%r11, 16(%rsp)
	call	s390_fetch_main_absolute
	movq	24(%rsp), %r10
	xorl	%edx, %edx
	movq	16(%rsp), %r11
.L1102:
	movl	(%rax,%rdx), %ecx
	bswap	%ecx
	movl	%ecx, 48(%rsp,%rdx)
	addq	$4, %rdx
	cmpq	$16, %rdx
	jne	.L1102
	movl	48(%rsp), %eax
	testl	%eax, %eax
	movl	%eax, 16(%rsp)
	js	.L1098
	movl	%r13d, %eax
	andl	$2048, %eax
	movl	%eax, 24(%rsp)
	jne	.L1103
	xorl	16(%rsp), %r15d
	andl	$16711680, %r15d
	je	.L1103
.L1104:
	movw	$42, 992(%rbx)
	jmp	.L1124
.L1099:
	movl	%eax, %edi
	xorl	88(%rbx), %edi
	jmp	.L1100
.L1103:
	movl	56(%rsp), %edx
	movl	%edx, %eax
	andl	$2147483584, %eax
	andl	$2147479552, %edx
	je	.L1105
	cmpl	88(%rbx), %edx
	je	.L1105
.L1106:
	movl	%eax, %edi
	cmpq	1040(%rbx), %rdi
	ja	.L1092
	movq	%rbx, %rsi
	movq	%r10, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	s390_fetch_main_absolute
	movq	40(%rsp), %r10
	xorl	%edx, %edx
	movq	32(%rsp), %r11
.L1108:
	movl	(%rax,%rdx), %ecx
	bswap	%ecx
	movl	%ecx, 64(%rsp,%rdx)
	addq	$4, %rdx
	cmpq	$64, %rdx
	jne	.L1108
	movl	64(%rsp), %eax
	testl	%eax, %eax
	js	.L1109
	movl	60(%rsp), %edi
	cmpl	%edi, 84(%rsp)
	je	.L1264
.L1110:
	movw	$44, 992(%rbx)
	jmp	.L1124
.L1256:
	testb	$4, %al
	jne	.L1136
	movq	1056(%rbx), %rdx
	movq	%r10, 16(%rsp)
	movl	%r11d, 8(%rsp)
	cmpl	$1, 80(%rdx)
	je	.L1265
	movq	%r14, %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addq	1096(%rbx), %rdi
	movl	$4, %ecx
	movl	$-3, %esi
	call	z900_logical_to_main_l
	movq	16(%rsp), %r10
	movl	8(%rsp), %r11d
.L1138:
	movq	1056(%rbx), %rax
	movq	952(%rax), %rdx
	jmp	.L1136
.L1262:
	testb	$4, %al
	jne	.L1095
	movq	1056(%rbx), %rdx
	movq	%r10, 24(%rsp)
	movq	%r11, 16(%rsp)
	cmpl	$1, 80(%rdx)
	je	.L1266
	movq	%rcx, %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addq	1096(%rbx), %rdi
	movl	$4, %ecx
	movl	$-3, %esi
	call	z900_logical_to_main_l
	movq	24(%rsp), %r10
	movq	16(%rsp), %r11
.L1097:
	movq	1056(%rbx), %rax
	movq	952(%rax), %rcx
	jmp	.L1095
.L1265:
	movl	1096(%rbx), %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	addl	%r14d, %edi
	call	s390_logical_to_main_l
	movl	8(%rsp), %r11d
	movq	16(%rsp), %r10
	jmp	.L1138
.L1266:
	movl	1096(%rbx), %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	addl	%esi, %edi
	movl	$-3, %esi
	call	s390_logical_to_main_l
	movq	16(%rsp), %r11
	movq	24(%rsp), %r10
	jmp	.L1097
.L1105:
	xorl	88(%rbx), %eax
	jmp	.L1106
.L1264:
	cmpl	$0, 24(%rsp)
	jne	.L1111
	testl	$16777216, 16(%rsp)
	je	.L1111
	movzwl	16(%rsp), %edi
	cmpw	%di, 8(%rsp)
	je	.L1111
	testb	$2, %al
	je	.L1267
.L1112:
	movw	$23, 992(%rbx)
	movl	$23, %esi
	jmp	.L1123
.L1109:
	movw	$43, 992(%rbx)
	jmp	.L1124
.L1267:
	movl	68(%rsp), %ecx
	testb	$15, %cl
	jne	.L1112
	testb	$1, %al
	je	.L1113
	testb	$1, 330(%rbx)
	je	.L1112
.L1113:
	movzwl	8(%rsp), %edi
	andl	$65520, %ecx
	andl	$2147483644, %eax
	movl	%edi, %edx
	andl	$65520, %edx
	cmpl	%edx, %ecx
	jl	.L1121
	movl	%edi, %edx
	shrw	$2, %dx
	movzwl	%dx, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %ecx
	cmpq	1040(%rbx), %rcx
	ja	.L1115
	andl	$2147479552, %edx
	je	.L1116
	cmpl	88(%rbx), %edx
	je	.L1116
.L1117:
	movzbl	1144(%rbx), %edx
	testb	$2, %dl
	jne	.L1268
.L1118:
	movq	1024(%rbx), %rcx
	movl	%eax, %edx
	shrl	$11, %eax
	addq	1032(%rbx), %rax
	movzbl	(%rcx,%rdx), %edx
	movl	8(%rsp), %ecx
	orb	$4, (%rax)
	andl	$3, %ecx
	addl	%ecx, %ecx
	sall	%cl, %edx
	andb	$64, %dl
	jne	.L1111
.L1121:
	movw	$45, 992(%rbx)
	jmp	.L1124
.L1111:
	testl	$33554432, 16(%rsp)
	je	.L1122
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 994(%rbx)
.L1122:
	movl	$1, 976(%rbx)
	movl	72(%rsp), %eax
	movzbl	994(%rbx), %ecx
	movl	%eax, %edx
	shrb	%cl
	movq	%rdx, 968(%rbx)
	andb	$2, %cl
	je	.L1269
	xorb	$12, %ah
	orl	$256, %eax
	movq	%rax, 968(%rbx)
.L1163:
	leal	17(%r14), %edx
	addl	$16, %r14d
	movslq	%edx, %rdx
	movl	%eax, 320(%rbx,%rdx,8)
	shrq	$8, %rax
	xorq	$1, %rax
	movl	%r14d, 1892(%r11)
	andl	$1, %eax
	movb	%al, 1976(%rbx,%rdx)
	movb	%cl, 2009(%rbx,%r10)
	jmp	.L1079
.L1268:
	andb	$4, %dl
	jne	.L1118
	movq	1056(%rbx), %rdx
	movq	%r10, 32(%rsp)
	movq	%r11, 24(%rsp)
	cmpl	$1, 80(%rdx)
	je	.L1270
	movl	%eax, %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addq	1096(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	$-3, %esi
	call	z900_logical_to_main_l
	movq	32(%rsp), %r10
	movq	24(%rsp), %r11
.L1120:
	movq	1056(%rbx), %rax
	movl	952(%rax), %eax
	jmp	.L1118
.L1269:
	movq	%rdx, %rax
	jmp	.L1163
.L1270:
	addl	1096(%rbx), %eax
	movl	$1, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	$-3, %esi
	movl	%eax, %edi
	call	s390_logical_to_main_l
	movq	24(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L1120
.L1116:
	xorl	88(%rbx), %eax
	jmp	.L1117
.L1115:
	movl	$5, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L1121
	.cfi_endproc
.LFE1139:
	.size	s390_translate_addr, .-s390_translate_addr
	.p2align 4,,15
	.type	s390_logical_to_main_l, @function
s390_logical_to_main_l:
.LFB1148:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%r9, %r10
	movl	%r8d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%ecx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	shrl	$12, %r12d
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	andl	$1023, %r12d
	movq	%rdx, %rbx
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	testb	$4, 96(%rdx)
	je	.L1272
	cmpl	$-2, %esi
	je	.L1272
.L1273:
	andb	$-8, 994(%rbx)
	leal	5(%r14), %eax
	cmpl	$4, %eax
	ja	.L1275
	jmp	*.L1277(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L1277:
	.quad	.L1607
	.quad	.L1606
	.quad	.L1333
	.quad	.L1280
	.quad	.L1281
	.text
	.p2align 4,,10
	.p2align 3
.L1272:
	testb	$1, 1144(%rbx)
	jne	.L1273
	movl	%ebp, %eax
	movslq	%r12d, %r12
	movl	%ebp, %r8d
	movq	%rax, 944(%rbx)
	movl	%ebp, %eax
	andl	$2143289344, %r8d
	andb	$-8, 994(%rbx)
	andl	$2147479552, %eax
	movq	%rax, 960(%rbx)
	leaq	(%rbx,%r12,8), %rax
	movl	$-1, 2232(%rax)
	movl	2224(%rbx), %edx
	movl	%r8d, 18616(%rax)
	orl	%r8d, %edx
	movl	%edx, 10424(%rax)
	movb	$0, 45240(%rbx,%r12)
	movb	$0, 44216(%rbx,%r12)
	movb	$0, 46264(%rbx,%r12)
.L1274:
	testb	$6, 994(%rbx)
	je	.L1366
	testb	$3, %r13b
	jne	.L1367
.L1366:
	movq	944(%rbx), %rax
	movl	88(%rbx), %edx
	movl	%eax, %esi
	movl	%eax, %ecx
	andl	$2147479552, %esi
	je	.L1369
	cmpl	%edx, %esi
	je	.L1369
.L1370:
	movq	960(%rbx), %rsi
	movq	%rax, 952(%rbx)
	movl	%esi, %edi
	movl	%esi, %ecx
	andl	$2147479552, %edi
	je	.L1371
	cmpl	%edx, %edi
	je	.L1371
.L1372:
	cmpq	1040(%rbx), %rax
	ja	.L1373
	movzbl	1144(%rbx), %edi
	testb	$2, %dil
	jne	.L1608
.L1374:
	movq	%rax, %rcx
	shrq	$11, %rcx
	addq	1032(%rbx), %rcx
	testb	$1, %dil
	movq	%rcx, 984(%rbx)
	jne	.L1609
	testb	$4, %r13b
	je	.L1389
	testb	%r15b, %r15b
	movzbl	(%rcx), %edx
	jne	.L1610
.L1390:
	orl	$4, %edx
	andl	$2147479552, %ebp
	movb	%dl, (%rcx)
	leaq	(%rbx,%r12,8), %rcx
	movq	984(%rbx), %rdx
	movq	%rdx, 35000(%rcx)
	movzbl	(%rdx), %edx
	movb	$4, 46264(%rbx,%r12)
	andl	$-16, %edx
	movb	%dl, 43192(%rbx,%r12)
	movq	1024(%rbx), %rdx
	addq	%rdx, %rsi
	xorq	%rbp, %rsi
	movq	%rsi, 26808(%rcx)
.L1405:
	addq	%rdx, %rax
.L1596:
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1371:
	.cfi_restore_state
	movl	%edx, %esi
	xorl	%ecx, %esi
	jmp	.L1372
	.p2align 4,,10
	.p2align 3
.L1369:
	movl	%ecx, %eax
	xorl	%edx, %eax
	jmp	.L1370
	.p2align 4,,10
	.p2align 3
.L1275:
	movzbl	99(%rbx), %eax
	cmpb	$64, %al
	je	.L1287
	testb	$1, 1144(%rbx)
	jne	.L1611
.L1288:
	cmpl	$15, %r14d
	jg	.L1287
	cmpb	$-128, %al
	je	.L1606
	cmpb	$-64, %al
	.p2align 4,,3
	je	.L1607
	.p2align 4,,10
	.p2align 3
.L1333:
	movl	$0, 976(%rbx)
	movl	336(%rbx), %eax
	movq	%rax, 968(%rbx)
.L1286:
	movl	328(%rbx), %eax
	xorl	%edx, %edx
	andl	$16252928, %eax
	cmpl	$11534336, %eax
	je	.L1612
.L1344:
	movl	$18, %esi
	movw	%si, 992(%rbx)
	movl	$18, %esi
.L1353:
	movq	%rbx, %rdi
	movq	%rdx, 8(%rsp)
	call	*2032(%rbx)
	movq	8(%rsp), %rdx
.L1343:
	andl	$1024, %r13d
	je	.L1354
	movzwl	992(%rbx), %esi
	movq	%rdx, 944(%rbx)
.L1416:
	movq	%rbx, %rdi
	call	*2032(%rbx)
	xorl	%eax, %eax
	jmp	.L1596
	.p2align 4,,10
	.p2align 3
.L1606:
	movl	$2, 976(%rbx)
	movl	384(%rbx), %eax
	movq	%rax, 968(%rbx)
	jmp	.L1286
	.p2align 4,,10
	.p2align 3
.L1607:
	movl	$3, 976(%rbx)
	movl	432(%rbx), %eax
	movq	%rax, 968(%rbx)
	jmp	.L1286
	.p2align 4,,10
	.p2align 3
.L1281:
	movl	1908(%rbx), %eax
	cmpl	$1, %eax
	je	.L1283
	xorl	%edx, %edx
	cmpl	$13, %eax
	sete	%dl
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, 976(%rbx)
.L1285:
	addl	$1, %eax
	cltq
	movl	320(%rbx,%rax,8), %eax
	movq	%rax, 968(%rbx)
	jmp	.L1286
	.p2align 4,,10
	.p2align 3
.L1280:
	movl	$0, 976(%rbx)
	movl	$4294967295, %eax
	movq	%rax, 968(%rbx)
	jmp	.L1286
	.p2align 4,,10
	.p2align 3
.L1611:
	movq	1064(%rbx), %rdx
	movq	1080(%rdx), %rcx
	testb	$1, 2(%rcx)
	je	.L1288
	testb	$64, 99(%rdx)
	je	.L1288
	.p2align 4,,10
	.p2align 3
.L1287:
	movl	%r14d, %r11d
	andl	$15, %r11d
	je	.L1333
	movzbl	1144(%rbx), %edi
	testb	$1, %dil
	jne	.L1613
	movslq	%r11d, %rax
	movq	%rax, 16(%rsp)
	movl	584(%rbx,%rax,4), %eax
	movl	%eax, 8(%rsp)
.L1292:
	testl	%eax, %eax
	je	.L1333
	cmpl	$1, %eax
	je	.L1606
	leal	5(%r11), %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 24(%rsp)
	movl	1892(%rax), %eax
	cmpl	$15, %eax
	jle	.L1295
	addl	$1, %eax
	cltq
	movl	320(%rbx,%rax,8), %eax
	movq	%rax, 968(%rbx)
	movq	16(%rsp), %rax
	movzbl	2009(%rbx,%rax), %eax
	movl	$1, 976(%rbx)
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, 994(%rbx)
	jmp	.L1286
	.p2align 4,,10
	.p2align 3
.L1612:
	movq	968(%rbx), %rcx
	movl	%ebp, %r8d
	movslq	%r12d, %r12
	movzbl	994(%rbx), %eax
	leaq	(%rbx,%r12,8), %r9
	andl	$2143289344, %r8d
	movq	%rcx, %rdx
	shrq	$8, %rdx
	andl	$-2, %eax
	andl	$1, %edx
	orl	%edx, %eax
	movl	2224(%rbx), %edx
	movb	%al, 994(%rbx)
	orl	%r8d, %edx
	cmpl	10424(%r9), %edx
	je	.L1614
.L1334:
	movq	%rbp, %rax
	movq	%rcx, %rdx
	andl	$127, %ecx
	shrq	$18, %rax
	andl	$2147479552, %edx
	andl	$8188, %eax
	addq	%rax, %rdx
	movl	%ebp, %eax
	shrl	$24, %eax
	cmpl	%eax, %ecx
	jb	.L1338
	cmpq	1040(%rbx), %rdx
	ja	.L1339
	movl	%edx, %ecx
	movl	%edx, %eax
	andl	$2147479552, %ecx
	jne	.L1340
	movl	88(%rbx), %edx
.L1341:
	xorl	%eax, %edx
.L1342:
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movq	%r10, 32(%rsp)
	movq	%r9, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movq	%rdx, 8(%rsp)
	call	s390_fetch_main_absolute
	movq	8(%rsp), %rdx
	movl	(%rax), %ecx
	movl	16(%rsp), %r8d
	movq	24(%rsp), %r9
	movq	32(%rsp), %r10
	bswap	%ecx
	testb	$32, %cl
	jne	.L1343
	testl	%ecx, %ecx
	js	.L1344
	testb	$1, 994(%rbx)
	je	.L1345
	testb	$16, %cl
	jne	.L1344
.L1345:
	movl	%ebp, %eax
	movl	%ecx, %r11d
	andl	$1044480, %eax
	andl	$2147483584, %r11d
	movl	%eax, %esi
	shrl	$16, %eax
	shrl	$10, %esi
	addq	%rsi, %r11
	movl	%ecx, %esi
	andl	$15, %esi
	cmpl	%eax, %esi
	jb	.L1346
	cmpq	1040(%rbx), %r11
	ja	.L1339
	movl	%r11d, %esi
	movl	%r11d, %eax
	andl	$2147479552, %esi
	je	.L1347
	cmpl	88(%rbx), %esi
	je	.L1347
.L1348:
	movq	%rbx, %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movl	%ecx, 44(%rsp)
	movq	%r9, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movq	%r11, 8(%rsp)
	call	s390_fetch_fullword_absolute
	movq	8(%rsp), %r11
	testb	$4, %ah
	movl	%eax, %esi
	movl	16(%rsp), %r8d
	movq	24(%rsp), %rdx
	movq	32(%rsp), %r9
	movl	44(%rsp), %ecx
	movq	48(%rsp), %r10
	jne	.L1349
	testl	$-2147481344, %eax
	jne	.L1344
	testb	$2, %ah
	je	.L1350
	orb	$2, 994(%rbx)
.L1350:
	testl	$256, %r13d
	jne	.L1337
	movq	968(%rbx), %rdx
	movl	%edx, 2232(%r9)
	movl	2224(%rbx), %edx
	movl	%eax, 18616(%r9)
	movl	%ecx, %eax
	shrl	$4, %eax
	andl	$1, %eax
	orl	%r8d, %edx
	movl	%edx, 10424(%r9)
	movb	%al, 44216(%rbx,%r12)
	movb	$0, 46264(%rbx,%r12)
	movzbl	994(%rbx), %eax
	shrb	%al
	andl	$3, %eax
	movb	%al, 45240(%rbx,%r12)
	movq	$0, 26808(%r9)
.L1337:
	testl	$512, %r13d
	jne	.L1351
	movl	%ebp, %r11d
	andl	$2147479552, %esi
	andl	$4095, %r11d
	movq	%rsi, 960(%rbx)
	orq	%rsi, %r11
.L1351:
	xorl	%r9d, %r9d
	movq	%r11, 944(%rbx)
	movw	%r9w, 992(%rbx)
	jmp	.L1274
	.p2align 4,,10
	.p2align 3
.L1354:
	movl	$16, %ecx
	movq	%rdx, 944(%rbx)
	movl	$16, %esi
	movw	%cx, 992(%rbx)
.L1356:
	movl	976(%rbx), %eax
	andl	$2147479552, %ebp
	movl	%ebp, 792(%rbx)
	cmpl	$1, %eax
	je	.L1615
	cmpl	$2, %eax
	movzbl	99(%rbx), %edx
	je	.L1616
.L1364:
	orl	%eax, %ebp
	movl	%ebp, 792(%rbx)
.L1360:
	cmpb	$64, %dl
	je	.L1365
	testb	$1, 1144(%rbx)
	je	.L1416
	movq	1064(%rbx), %rax
	movq	1080(%rax), %rdx
	testb	$1, 2(%rdx)
	je	.L1416
	testb	$64, 99(%rax)
	je	.L1416
.L1365:
	xorl	%eax, %eax
	testl	%r14d, %r14d
	cmovns	%r14d, %eax
	movb	%al, 1012(%rbx)
	jmp	.L1416
	.p2align 4,,10
	.p2align 3
.L1338:
	movl	$16, %eax
	movq	%rdx, 944(%rbx)
	movl	$16, %esi
	movw	%ax, 992(%rbx)
.L1357:
	andl	$1024, %r13d
	jne	.L1416
	jmp	.L1356
	.p2align 4,,10
	.p2align 3
.L1615:
	movq	968(%rbx), %rdx
	movl	336(%rbx), %eax
	xorq	%rdx, %rax
	testl	$2147479552, %eax
	je	.L1605
	movl	384(%rbx), %eax
	xorq	%rdx, %rax
	testl	$2147479552, %eax
	jne	.L1361
	orl	$2, %ebp
	movl	%ebp, 792(%rbx)
.L1605:
	movzbl	99(%rbx), %edx
	jmp	.L1360
	.p2align 4,,10
	.p2align 3
.L1367:
	movzbl	1144(%rbx), %edi
	andl	$2147479552, %ebp
.L1426:
	movl	%ebp, %eax
	orl	$4, %eax
.L1414:
	orl	976(%rbx), %eax
	movl	%eax, %ebp
	movl	%eax, 792(%rbx)
	xorl	%eax, %eax
	testl	%r14d, %r14d
	cmovns	%r14d, %eax
	andl	$2, %edi
	movb	%al, 1012(%rbx)
	jne	.L1617
.L1415:
	movl	$4, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	movzwl	992(%rbx), %esi
	jmp	.L1416
	.p2align 4,,10
	.p2align 3
.L1373:
	movq	%rbx, %rdi
	movl	$5, %esi
	call	*2032(%rbx)
	movzbl	994(%rbx), %eax
	movzbl	1144(%rbx), %edi
	andl	$6, %eax
.L1394:
	andl	$2147479552, %ebp
	testb	%al, %al
	movl	%ebp, 792(%rbx)
	movl	%ebp, %eax
	je	.L1414
	andb	$3, %r13b
	je	.L1414
	jmp	.L1426
	.p2align 4,,10
	.p2align 3
.L1283:
	movl	$0, 976(%rbx)
	jmp	.L1285
	.p2align 4,,10
	.p2align 3
.L1614:
	cmpb	$0, 44216(%rbx,%r12)
	je	.L1618
	testb	$1, %al
	jne	.L1334
.L1336:
	testl	$256, %r13d
	jne	.L1334
	movzbl	45240(%rbx,%r12), %eax
	xorl	%r11d, %r11d
	movl	18616(%r9), %esi
	testb	%al, %al
	je	.L1337
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, 994(%rbx)
	jmp	.L1337
	.p2align 4,,10
	.p2align 3
.L1339:
	movl	$5, %edi
	movl	$5, %esi
	movw	%di, 992(%rbx)
	jmp	.L1353
.L1613:
	movq	1064(%rbx), %rax
	movq	1080(%rax), %rdx
	testb	$1, 2(%rdx)
	je	.L1333
	testb	$64, 99(%rax)
	je	.L1333
	movslq	%r11d, %rcx
	movl	584(%rax,%rcx,4), %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 8(%rsp)
	jmp	.L1292
.L1618:
	movl	2232(%r9), %eax
	cmpq	%rax, %rcx
	jne	.L1334
	jmp	.L1336
.L1340:
	cmpl	88(%rbx), %ecx
	jne	.L1342
	movl	%ecx, %edx
	.p2align 4,,6
	jmp	.L1341
.L1295:
	movzwl	394(%rbx), %eax
	testl	$-33554432, 8(%rsp)
	movw	%ax, 32(%rsp)
	je	.L1619
.L1296:
	movl	$40, %r10d
	movl	$40, %esi
	movw	%r10w, 992(%rbx)
.L1331:
	movb	%r14b, 1012(%rbx)
	jmp	.L1416
.L1616:
	testb	$127, %dl
	jne	.L1364
	orl	$-2147483646, %ebp
	movl	%ebp, 792(%rbx)
	jmp	.L1360
.L1361:
	movl	432(%rbx), %eax
	xorq	%rdx, %rax
	testl	$2147479552, %eax
	jne	.L1362
	orl	$3, %ebp
	movzbl	99(%rbx), %edx
	movl	%ebp, 792(%rbx)
	jmp	.L1360
.L1619:
	testl	$16777216, 8(%rsp)
	je	.L1297
	movl	368(%rbx), %eax
	andl	$2147483584, %eax
.L1298:
	movl	%eax, %edx
	cmpq	1040(%rbx), %rdx
	jbe	.L1620
.L1299:
	movl	$5, %r11d
	movl	$5, %esi
	movw	%r11w, 992(%rbx)
.L1330:
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L1296
.L1346:
	movl	$17, %edx
	movq	%r11, 944(%rbx)
	movw	%dx, 992(%rbx)
.L1604:
	movl	$17, %esi
	jmp	.L1357
.L1297:
	movl	344(%rbx), %eax
	andl	$2147483584, %eax
	jmp	.L1298
.L1362:
	orl	$1, %ebp
	movzbl	99(%rbx), %edx
	movl	%ebp, 792(%rbx)
	jmp	.L1360
.L1620:
	movl	%eax, %edx
	andl	$2147479552, %edx
	je	.L1300
	cmpl	88(%rbx), %edx
	je	.L1300
.L1301:
	addl	$16, %eax
	testb	$2, %dil
	movl	%eax, %ecx
	jne	.L1621
.L1302:
	movq	%rcx, %rax
	movzwl	8(%rsp), %edx
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movl	(%rax,%rcx), %eax
	movl	%edx, %ecx
	shrl	$3, %ecx
	bswap	%eax
	movl	%eax, %esi
	andl	$127, %esi
	cmpl	%ecx, %esi
	jae	.L1622
.L1305:
	movw	$41, 992(%rbx)
	movl	$41, %esi
	jmp	.L1331
.L1347:
	movl	%eax, %r11d
	xorl	88(%rbx), %r11d
	jmp	.L1348
.L1300:
	xorl	88(%rbx), %eax
	jmp	.L1301
.L1349:
	testl	$512, %r13d
	movq	%r11, 944(%rbx)
	movw	$17, 992(%rbx)
	je	.L1604
	jmp	.L1274
.L1622:
	andl	$2147483520, %eax
	sall	$4, %edx
	addl	%edx, %eax
	movl	%eax, %edi
	cmpq	1040(%rbx), %rdi
	ja	.L1299
	movl	%eax, %edx
	andl	$2147479552, %edx
	je	.L1306
	cmpl	88(%rbx), %edx
	je	.L1306
.L1307:
	movq	%rbx, %rsi
	movq	%r10, 48(%rsp)
	movl	%r11d, 44(%rsp)
	call	s390_fetch_main_absolute
	movl	44(%rsp), %r11d
	xorl	%edx, %edx
	movq	48(%rsp), %r10
.L1309:
	movl	(%rax,%rdx), %ecx
	bswap	%ecx
	movl	%ecx, 64(%rsp,%rdx)
	addq	$4, %rdx
	cmpq	$16, %rdx
	jne	.L1309
	movl	64(%rsp), %eax
	testl	%eax, %eax
	movl	%eax, 44(%rsp)
	js	.L1305
	movl	%r13d, %eax
	andl	$2048, %eax
	movl	%eax, 48(%rsp)
	jne	.L1310
	movl	8(%rsp), %eax
	xorl	44(%rsp), %eax
	testl	$16711680, %eax
	je	.L1310
.L1311:
	movw	$42, 992(%rbx)
	movl	$42, %esi
	jmp	.L1331
.L1609:
	addq	1024(%rbx), %rax
	jmp	.L1596
.L1608:
	movq	1056(%rbx), %rdx
	andb	$-7, 994(%rdx)
	testb	$4, %dil
	jne	.L1374
	cmpl	$1, 80(%rdx)
	movl	$-3, %esi
	je	.L1623
	testl	%r14d, %r14d
	jle	.L1378
	movq	1080(%rbx), %rcx
	testb	$1, 2(%rcx)
	je	.L1378
	testb	$64, 99(%rbx)
	cmovne	%r14d, %esi
.L1378:
	addq	1096(%rbx), %rax
	xorl	%ecx, %ecx
	movq	%r10, 16(%rsp)
	movl	%r8d, 8(%rsp)
	movq	%rax, %rdi
	call	z900_translate_addr
	movq	16(%rsp), %r10
	movl	8(%rsp), %r8d
	testl	%eax, %eax
	setne	%al
.L1377:
	testb	%al, %al
	jne	.L1624
.L1379:
	movzbl	994(%rbx), %eax
	movq	1056(%rbx), %rdx
	movl	%eax, %ecx
	andl	$-7, %eax
	orb	994(%rdx), %cl
	andl	$6, %ecx
	orl	%ecx, %eax
	movb	%al, 994(%rbx)
	movzbl	994(%rdx), %eax
	shrb	%al
	andl	$3, %eax
	orb	%al, 45240(%rbx,%r12)
	testb	$4, 96(%rbx)
	je	.L1380
	cmpl	$-2, %r14d
	je	.L1380
.L1381:
	testl	%r14d, %r14d
	jle	.L1382
	movq	1080(%rbx), %rcx
	testb	$1, 2(%rcx)
	je	.L1382
	testb	$64, 99(%rbx)
	je	.L1382
	movq	968(%rbx), %rcx
	leal	5(%r14), %edi
	andl	$2, %eax
	leal	16(%r14), %r8d
	movslq	%edi, %rdi
	movl	%ecx, 2232(%rbx,%r12,8)
	movzbl	994(%rdx), %esi
	movzbl	994(%rbx), %ecx
	andl	$1, %esi
	andl	$-2, %ecx
	orl	%esi, %ecx
	movb	%cl, 994(%rbx)
	movq	968(%rdx), %rcx
	leal	17(%r14), %esi
	movslq	%esi, %rsi
	xorb	$8, %ch
	movq	%rcx, 968(%rbx)
	movl	%ecx, 320(%rbx,%rsi,8)
	shrq	$8, %rcx
	xorq	$1, %rcx
	movl	%r8d, 1892(%rbx,%rdi,4)
	andl	$1, %ecx
	movb	%cl, 1976(%rbx,%rsi)
	movslq	%r14d, %rcx
	movb	%al, 2009(%rbx,%rcx)
.L1382:
	movq	944(%rdx), %rax
	movl	%eax, %esi
	movl	%eax, %ecx
	andl	$2147479552, %esi
	je	.L1383
	cmpl	88(%rdx), %esi
	je	.L1383
.L1384:
	movq	960(%rdx), %rsi
	movq	%rax, 952(%rdx)
	movl	%esi, %edi
	movl	%esi, %ecx
	andl	$2147479552, %edi
	je	.L1385
	cmpl	88(%rdx), %edi
	je	.L1385
.L1386:
	cmpq	1040(%rdx), %rax
	ja	.L1373
	movzbl	1144(%rbx), %edi
	jmp	.L1374
.L1610:
	movl	%edx, %r8d
	andl	$-16, %r8d
	cmpb	%r8b, %r15b
	je	.L1390
	testb	$8, %dl
	je	.L1390
	cmpl	$2047, %ebp
	ja	.L1392
	testb	$2, 331(%rbx)
	je	.L1392
	testb	$1, 994(%rbx)
	je	.L1390
.L1392:
	cmpb	$-112, %r8b
	je	.L1625
.L1393:
	testb	$2, %dil
	jne	.L1421
	movzbl	994(%rbx), %r8d
.L1425:
	movl	%r8d, %eax
	andl	$6, %eax
	jmp	.L1394
.L1389:
	cmpl	$511, %ebp
	movzbl	(%rcx), %r11d
	jbe	.L1598
	movzbl	994(%rbx), %r8d
.L1395:
	testb	$6, %r8b
	jne	.L1396
	movl	%edi, %r9d
	shrb	%r9b
	andb	$1, %r9b
	jne	.L1626
.L1397:
	testb	%r15b, %r15b
	je	.L1399
	movl	%r11d, %edx
	andl	$-16, %edx
	cmpb	$-112, %dl
	je	.L1627
.L1400:
	cmpb	%dl, %r15b
	je	.L1399
.L1396:
	testb	$2, %dil
	je	.L1425
	movq	1056(%rbx), %rdx
.L1398:
	andb	$-7, 994(%rdx)
	movzbl	994(%rbx), %eax
	andl	$6, %eax
	jmp	.L1394
.L1598:
	testb	$16, 331(%rbx)
	movzbl	994(%rbx), %r8d
	je	.L1395
	testb	$1, %r8b
	jne	.L1395
	jmp	.L1396
.L1380:
	movl	%r8d, 18616(%rbx,%r12,8)
	jmp	.L1381
.L1306:
	movl	%eax, %edi
	xorl	88(%rbx), %edi
	jmp	.L1307
.L1385:
	movl	%ecx, %esi
	xorl	88(%rdx), %esi
	jmp	.L1386
.L1383:
	movl	%ecx, %eax
	xorl	88(%rdx), %eax
	jmp	.L1384
.L1625:
	testb	$1, 331(%rbx)
	je	.L1393
	jmp	.L1390
.L1421:
	movq	1056(%rbx), %rax
	andb	$-7, 994(%rax)
	movzbl	994(%rbx), %eax
	andl	$6, %eax
	jmp	.L1394
.L1310:
	movl	72(%rsp), %edx
	movl	%edx, %eax
	andl	$2147483584, %eax
	andl	$2147479552, %edx
	je	.L1312
	cmpl	88(%rbx), %edx
	je	.L1312
.L1313:
	movl	%eax, %edi
	cmpq	1040(%rbx), %rdi
	ja	.L1299
	movq	%rbx, %rsi
	movq	%r10, 56(%rsp)
	movl	%r11d, 8(%rsp)
	call	s390_fetch_main_absolute
	movl	8(%rsp), %r11d
	xorl	%edx, %edx
	movq	56(%rsp), %r10
.L1315:
	movl	(%rax,%rdx), %ecx
	bswap	%ecx
	movl	%ecx, 80(%rsp,%rdx)
	addq	$4, %rdx
	cmpq	$64, %rdx
	jne	.L1315
	movl	80(%rsp), %eax
	testl	%eax, %eax
	js	.L1316
	movl	76(%rsp), %edi
	cmpl	%edi, 100(%rsp)
	je	.L1628
.L1317:
	movw	$44, 992(%rbx)
	movl	$44, %esi
	jmp	.L1331
.L1627:
	testb	$1, 331(%rbx)
	je	.L1400
.L1399:
	testb	%r9b, %r9b
	jne	.L1629
.L1424:
	testb	$2, %r13b
	je	.L1402
	orl	$6, %r11d
	movb	%r11b, (%rcx)
.L1402:
	movq	984(%rbx), %rdx
	leaq	(%rbx,%r12,8), %rcx
	movq	%rdx, 35000(%rcx)
	movzbl	(%rdx), %edx
	andl	$-16, %edx
	cmpl	$4095, %ebp
	movb	%dl, 43192(%rbx,%r12)
	ja	.L1403
	testb	$1, 994(%rbx)
	movl	$4, %edx
	je	.L1404
.L1403:
	movl	%r13d, %edx
	orl	$5, %edx
.L1404:
	movb	%dl, 46264(%rbx,%r12)
	movq	1024(%rbx), %rdx
	movl	%ebp, %edi
	andl	$2147479552, %edi
	addq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, 26808(%rcx)
	testb	$4, 808(%rbx)
	je	.L1405
	testb	$32, 54(%rbx)
	je	.L1405
	movb	$4, 46264(%rbx,%r12)
	cmpl	$-2, %r14d
	je	.L1405
	testb	$4, 96(%rbx)
	je	.L1406
	testb	$-128, 968(%rbx)
	jne	.L1407
	testb	$32, 402(%rbx)
	jne	.L1405
.L1407:
	xorl	%ecx, %ecx
	testl	%r14d, %r14d
	cmovns	%r14d, %ecx
	movb	%cl, 1160(%rbx)
	movl	976(%rbx), %ecx
	orw	%cx, 1146(%rbx)
.L1406:
	movl	416(%rbx), %ecx
	movl	408(%rbx), %esi
	andl	$2147483647, %ecx
	andl	$2147483647, %esi
	cmpl	%esi, %ecx
	jb	.L1408
	cmpl	%esi, %ebp
	jb	.L1409
	cmpl	%ecx, %ebp
	movl	$1, %edi
	jbe	.L1413
.L1409:
	movl	%ebp, %edi
	leaq	-1(%r10,%rdi), %r8
	movl	%esi, %edi
	cmpq	%rdi, %r8
	jb	.L1411
	movl	%ecx, %r9d
	movl	$1, %edi
	cmpq	%r9, %r8
	jbe	.L1413
.L1411:
	xorl	%edi, %edi
	cmpl	%esi, %ebp
	ja	.L1413
	xorl	%edi, %edi
	cmpq	%rcx, %r8
	setae	%dil
.L1413:
	andl	$1, %edi
	testb	%dil, %dil
	je	.L1405
	orl	$2097152, 56(%rbx)
	jmp	.L1405
.L1408:
	movl	%ebp, %edi
	leaq	-1(%r10,%rdi), %r8
	movl	$1, %edi
	cmpq	%rsi, %r8
	jae	.L1413
	xorl	%edi, %edi
	cmpl	%ecx, %ebp
	setbe	%dil
	jmp	.L1413
.L1629:
	movq	1056(%rbx), %rdx
	testb	$6, 994(%rdx)
	je	.L1424
	movl	%ebp, %eax
	andl	$2147479552, %eax
	jmp	.L1414
.L1626:
	movq	1056(%rbx), %rdx
	testb	$6, 994(%rdx)
	je	.L1397
	jmp	.L1398
.L1312:
	xorl	88(%rbx), %eax
	jmp	.L1313
.L1628:
	cmpl	$0, 48(%rsp)
	.p2align 4,,3
	jne	.L1318
	testl	$16777216, 44(%rsp)
	je	.L1318
	movzwl	44(%rsp), %edi
	cmpw	%di, 32(%rsp)
	je	.L1318
	testb	$2, %al
	je	.L1630
.L1319:
	movw	$23, 992(%rbx)
	movl	$23, %esi
	jmp	.L1330
.L1316:
	movw	$43, 992(%rbx)
	movl	$43, %esi
	jmp	.L1331
.L1630:
	movl	84(%rsp), %ecx
	testb	$15, %cl
	jne	.L1319
	testb	$1, %al
	je	.L1320
	testb	$1, 330(%rbx)
	je	.L1319
.L1320:
	movzwl	32(%rsp), %edi
	andl	$65520, %ecx
	andl	$2147483644, %eax
	movl	%edi, %edx
	andl	$65520, %edx
	cmpl	%edx, %ecx
	jl	.L1328
	movl	%edi, %edx
	shrw	$2, %dx
	movzwl	%dx, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	andl	$2147483647, %eax
	movl	%eax, %ecx
	cmpq	1040(%rbx), %rcx
	ja	.L1322
	andl	$2147479552, %edx
	je	.L1323
	cmpl	88(%rbx), %edx
	je	.L1323
.L1324:
	movzbl	1144(%rbx), %edx
	testb	$2, %dl
	jne	.L1631
.L1325:
	movq	1024(%rbx), %rcx
	movl	%eax, %edx
	shrl	$11, %eax
	addq	1032(%rbx), %rax
	movzbl	(%rcx,%rdx), %edx
	movl	32(%rsp), %ecx
	orb	$4, (%rax)
	andl	$3, %ecx
	addl	%ecx, %ecx
	sall	%cl, %edx
	andb	$64, %dl
	jne	.L1318
.L1328:
	movw	$45, 992(%rbx)
	movl	$45, %esi
	jmp	.L1331
.L1624:
	movq	1056(%rbx), %rax
	movq	%r10, 16(%rsp)
	movl	%r8d, 8(%rsp)
	movzwl	992(%rax), %esi
	movq	%rax, %rdi
	call	*2032(%rax)
	movq	16(%rsp), %r10
	movl	8(%rsp), %r8d
	jmp	.L1379
.L1623:
	testl	%r14d, %r14d
	jle	.L1376
	movq	1080(%rbx), %rcx
	testb	$1, 2(%rcx)
	je	.L1376
	testb	$64, 99(%rbx)
	cmovne	%r14d, %esi
.L1376:
	movl	1096(%rbx), %edi
	xorl	%ecx, %ecx
	movq	%r10, 16(%rsp)
	movl	%r8d, 8(%rsp)
	addl	%eax, %edi
	call	s390_translate_addr
	movl	8(%rsp), %r8d
	testl	%eax, %eax
	movq	16(%rsp), %r10
	setne	%al
	jmp	.L1377
.L1617:
	movq	1056(%rbx), %rdx
	testb	$6, 994(%rdx)
	je	.L1415
	movl	$4, %esi
	movl	%ebp, 792(%rdx)
	movq	%rdx, %rdi
	movb	%al, 1012(%rdx)
	call	*2032(%rdx)
	movzwl	992(%rbx), %esi
	jmp	.L1416
.L1621:
	andb	$4, %dil
	jne	.L1302
	movq	1056(%rbx), %rdx
	movq	%r10, 48(%rsp)
	movl	%r11d, 44(%rsp)
	cmpl	$1, 80(%rdx)
	je	.L1632
	movq	%rcx, %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addq	1096(%rbx), %rdi
	movl	$4, %ecx
	movl	$-3, %esi
	call	z900_logical_to_main_l
	movq	48(%rsp), %r10
	movl	44(%rsp), %r11d
.L1304:
	movq	1056(%rbx), %rax
	movq	952(%rax), %rcx
	jmp	.L1302
.L1318:
	testl	$33554432, 44(%rsp)
	je	.L1329
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 994(%rbx)
.L1329:
	movl	$1, 976(%rbx)
	movl	88(%rsp), %eax
	movzbl	994(%rbx), %esi
	movl	%eax, %edx
	shrb	%sil
	movq	%rdx, 968(%rbx)
	andb	$2, %sil
	je	.L1633
	xorb	$12, %ah
	orl	$256, %eax
	movq	%rax, 968(%rbx)
.L1418:
	leal	17(%r11), %edx
	movq	24(%rsp), %rdi
	leal	16(%r11), %ecx
	movslq	%edx, %rdx
	movl	%eax, 320(%rbx,%rdx,8)
	shrq	$8, %rax
	xorq	$1, %rax
	andl	$1, %eax
	movl	%ecx, 1892(%rdi)
	movb	%al, 1976(%rbx,%rdx)
	movq	16(%rsp), %rax
	movb	%sil, 2009(%rbx,%rax)
	jmp	.L1286
.L1323:
	xorl	88(%rbx), %eax
	jmp	.L1324
.L1631:
	andb	$4, %dl
	jne	.L1325
	movq	1056(%rbx), %rdx
	movq	%r10, 48(%rsp)
	movl	%r11d, 8(%rsp)
	cmpl	$1, 80(%rdx)
	je	.L1634
	movl	%eax, %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addq	1096(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	$-3, %esi
	call	z900_logical_to_main_l
	movq	48(%rsp), %r10
	movl	8(%rsp), %r11d
.L1327:
	movq	1056(%rbx), %rax
	movl	952(%rax), %eax
	jmp	.L1325
.L1632:
	addl	1096(%rbx), %eax
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	movl	%eax, %edi
	call	s390_logical_to_main_l
	movl	44(%rsp), %r11d
	movq	48(%rsp), %r10
	jmp	.L1304
.L1634:
	addl	1096(%rbx), %eax
	movl	$1, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	$-3, %esi
	movl	%eax, %edi
	call	s390_logical_to_main_l
	movl	8(%rsp), %r11d
	movq	48(%rsp), %r10
	jmp	.L1327
.L1322:
	movl	$5, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L1328
.L1633:
	movq	%rdx, %rax
	jmp	.L1418
	.cfi_endproc
.LFE1148:
	.size	s390_logical_to_main_l, .-s390_logical_to_main_l
	.p2align 4,,15
	.type	s370_fetch_main_absolute, @function
s370_fetch_main_absolute:
.LFB130:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	movzbl	1144(%rsi), %eax
	testb	$2, %al
	jne	.L1641
.L1636:
	movq	%rdi, %rdx
	movq	%rdi, %rax
	shrq	$11, %rdx
	addq	1032(%rbx), %rdx
	orb	$4, (%rdx)
	addq	1024(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1641:
	.cfi_restore_state
	testb	$4, %al
	jne	.L1636
	addl	1096(%rsi), %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	1056(%rsi), %rdx
	movl	$4, %ecx
	movl	$-3, %esi
	call	s390_logical_to_main_l
	movq	1056(%rbx), %rax
	movq	952(%rax), %rdi
	jmp	.L1636
	.cfi_endproc
.LFE130:
	.size	s370_fetch_main_absolute, .-s370_fetch_main_absolute
	.p2align 4,,15
	.type	s390_fetch_main_absolute, @function
s390_fetch_main_absolute:
.LFB1126:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	movzbl	1144(%rsi), %eax
	testb	$2, %al
	jne	.L1650
.L1643:
	movq	%rdi, %rdx
	movq	%rdi, %rax
	shrq	$11, %rdx
	addq	1032(%rbx), %rdx
	orb	$4, (%rdx)
	addq	1024(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1650:
	.cfi_restore_state
	testb	$4, %al
	jne	.L1643
	movq	1056(%rsi), %rdx
	cmpl	$1, 80(%rdx)
	je	.L1651
	addq	1096(%rsi), %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	call	z900_logical_to_main_l
.L1645:
	movq	1056(%rbx), %rax
	movq	952(%rax), %rdi
	jmp	.L1643
.L1651:
	addl	1096(%rsi), %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	call	s390_logical_to_main_l
	jmp	.L1645
	.cfi_endproc
.LFE1126:
	.size	s390_fetch_main_absolute, .-s390_fetch_main_absolute
	.section	.text.unlikely
	.type	s390_vfetch2_full, @function
s390_vfetch2_full:
.LFB1160:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leal	5(%rsi), %eax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	cltq
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	leaq	(%rdx,%rax,4), %r14
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L1653
	movl	%edi, %ecx
	incl	%eax
	shrl	$12, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rdx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	je	.L1654
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rcx)
	je	.L1653
.L1654:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L1655
	cmpb	43192(%rbx,%rcx), %al
	jne	.L1653
.L1655:
	movl	%ebp, %eax
	andl	$2143289344, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L1653
	testb	$4, 46264(%rbx,%rcx)
	je	.L1653
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
	jmp	.L1656
.L1653:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	s390_logical_to_main_l
.L1656:
	movzbl	(%rax), %r12d
	leal	1(%rbp), %edi
	movl	1892(%r14), %eax
	sall	$8, %r12d
	testl	%eax, %eax
	je	.L1657
	movl	120(%rbx), %ecx
	incl	%eax
	cltq
	andl	%edi, %ecx
	movl	%ecx, %esi
	shrl	$12, %esi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %r10d
	cmpl	%r10d, 320(%rbx,%rax,8)
	je	.L1658
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rsi)
	je	.L1657
.L1658:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L1659
	cmpb	43192(%rbx,%rsi), %al
	jne	.L1657
.L1659:
	movl	%ecx, %eax
	andl	$2143289344, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L1657
	testb	$4, 46264(%rbx,%rsi)
	je	.L1657
	movl	%ecx, %eax
	xorq	26808(%rdx), %rax
	jmp	.L1660
.L1657:
	andl	120(%rbx), %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movzbl	97(%rbx), %r8d
	movq	%rbx, %rdx
	movl	%r13d, %esi
	call	s390_logical_to_main_l
.L1660:
	popq	%rbx
	.cfi_def_cfa_offset 40
	movzbl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	orl	%r12d, %eax
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1160:
	.size	s390_vfetch2_full, .-s390_vfetch2_full
	.type	s390_validate_operand.part.8, @function
s390_validate_operand.part.8:
.LFB3142:
	.cfi_startproc
	addl	%edx, %edi
	movq	%r8, %rax
	movl	$1, %r9d
	andl	120(%r8), %edi
	movq	%rax, %rdx
	movzbl	97(%r8), %r8d
	jmp	s390_logical_to_main_l
	.cfi_endproc
.LFE3142:
	.size	s390_validate_operand.part.8, .-s390_validate_operand.part.8
	.type	s390_vfetch4_full, @function
s390_vfetch4_full:
.LFB1162:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leal	5(%rsi), %eax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	cltq
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	leaq	(%rdx,%rax,4), %r14
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L1688
	movl	%edi, %ecx
	incl	%eax
	shrl	$12, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rdx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	je	.L1689
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rcx)
	je	.L1688
.L1689:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L1690
	cmpb	43192(%rbx,%rcx), %al
	jne	.L1688
.L1690:
	movl	%ebp, %eax
	andl	$2143289344, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L1688
	testb	$4, 46264(%rbx,%rcx)
	je	.L1688
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
	jmp	.L1691
.L1688:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	s390_logical_to_main_l
.L1691:
	movl	(%rax), %eax
	movl	$2048, %r12d
	movl	%eax, (%rsp)
	movl	%ebp, %eax
	andl	$2047, %eax
	subl	%eax, %r12d
	movl	1892(%r14), %eax
	leal	(%r12,%rbp), %edi
	testl	%eax, %eax
	je	.L1692
	movl	120(%rbx), %ecx
	incl	%eax
	cltq
	andl	%edi, %ecx
	movl	%ecx, %esi
	shrl	$12, %esi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %r10d
	cmpl	%r10d, 320(%rbx,%rax,8)
	je	.L1693
	movb	44216(%rbx,%rsi), %r8b
	testb	%r8b, 1976(%rbx,%rax)
	je	.L1692
.L1693:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L1694
	cmpb	43192(%rbx,%rsi), %al
	jne	.L1692
.L1694:
	movl	%ecx, %eax
	andl	$2143289344, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L1692
	testb	$4, 46264(%rbx,%rsi)
	je	.L1692
	movl	%ecx, %eax
	xorq	26808(%rdx), %rax
	jmp	.L1695
.L1692:
	andl	120(%rbx), %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movzbl	97(%rbx), %r8d
	movq	%rbx, %rdx
	movl	%r13d, %esi
	call	s390_logical_to_main_l
.L1695:
	movl	(%rax), %eax
	movl	%eax, (%rsp,%r12)
	movl	(%rsp), %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	bswap	%eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1162:
	.size	s390_vfetch4_full, .-s390_vfetch4_full
	.type	s390_vstore4_full, @function
s390_vstore4_full:
.LFB1154:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %eax
	movl	%edi, %r11d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	andl	$2047, %eax
	movl	%edx, %r10d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	$2048, %ebp
	subl	%eax, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	leal	5(%rdx), %eax
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	%ebp, %edi
	cltq
	movq	%rdi, (%rsp)
	leaq	(%rcx,%rax,4), %r15
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L1722
	leal	1(%rax), %edx
	movl	%esi, %ecx
	shrl	$12, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	je	.L1723
	movb	44216(%rbx,%rcx), %sil
	testb	%sil, 1976(%rbx,%rdx)
	je	.L1722
.L1723:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L1724
	cmpb	43192(%rbx,%rcx), %dl
	jne	.L1722
.L1724:
	movl	%r12d, %edx
	andl	$2143289344, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L1722
	testb	$1, 46264(%rbx,%rcx)
	je	.L1722
	movq	35000(%rax), %rdx
	movl	%r12d, %r13d
	movq	%rdx, 984(%rbx)
	xorq	26808(%rax), %r13
	jmp	.L1725
.L1722:
	movq	(%rsp), %r9
	movl	%r10d, %esi
	movl	$1, %ecx
	movzbl	97(%rbx), %r8d
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r11d, 12(%rsp)
	movl	%r10d, 8(%rsp)
	call	s390_logical_to_main_l
	movl	12(%rsp), %r11d
	movl	8(%rsp), %r10d
	movq	%rax, %r13
.L1725:
	movl	1892(%r15), %eax
	leal	0(%rbp,%r12), %edi
	movq	984(%rbx), %r14
	testl	%eax, %eax
	je	.L1726
	leal	1(%rax), %edx
	movl	%edi, %eax
	andl	120(%rbx), %eax
	movslq	%edx, %rdx
	movl	%eax, %esi
	shrl	$12, %esi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rcx
	movl	2232(%rcx), %r8d
	cmpl	%r8d, 320(%rbx,%rdx,8)
	je	.L1727
	movb	44216(%rbx,%rsi), %r8b
	testb	%r8b, 1976(%rbx,%rdx)
	je	.L1726
.L1727:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L1728
	cmpb	43192(%rbx,%rsi), %dl
	jne	.L1726
.L1728:
	movl	%eax, %edx
	andl	$2143289344, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L1726
	testb	$2, 46264(%rbx,%rsi)
	je	.L1726
	xorq	26808(%rcx), %rax
	jmp	.L1729
.L1726:
	andl	120(%rbx), %edi
	movl	$4, %r9d
	movl	$2, %ecx
	movzbl	97(%rbx), %r8d
	subl	%ebp, %r9d
	movq	%rbx, %rdx
	movslq	%r9d, %r9
	movl	%r10d, %esi
	movl	%r11d, 8(%rsp)
	call	s390_logical_to_main_l
	movl	8(%rsp), %r11d
.L1729:
	orb	$6, (%r14)
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	movq	(%rsp), %rcx
	bswap	%r11d
	movl	%r11d, 16(%rsp)
	rep movsb
	movq	%rax, %rdi
	movb	$4, %cl
	subl	%ebp, %ecx
	movslq	%ecx, %rcx
	rep movsb
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1154:
	.size	s390_vstore4_full, .-s390_vstore4_full
	.text
	.p2align 4,,15
	.type	s390_fetch_fullword_absolute, @function
s390_fetch_fullword_absolute:
.LFB1128:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	movzbl	1144(%rsi), %eax
	testb	$2, %al
	jne	.L1763
.L1756:
	movq	%rdi, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	(%rax,%rdi), %eax
	bswap	%eax
	ret
.L1763:
	.cfi_restore_state
	testb	$4, %al
	jne	.L1756
	movq	1056(%rsi), %rdx
	cmpl	$1, 80(%rdx)
	je	.L1764
	addq	1096(%rsi), %rdi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	call	z900_logical_to_main_l
.L1758:
	movq	1056(%rbx), %rax
	movq	952(%rax), %rdi
	jmp	.L1756
.L1764:
	addl	1096(%rsi), %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	call	s390_logical_to_main_l
	jmp	.L1758
	.cfi_endproc
.LFE1128:
	.size	s390_fetch_fullword_absolute, .-s390_fetch_fullword_absolute
	.p2align 4,,15
	.type	s370_logical_to_main_l, @function
s370_logical_to_main_l:
.LFB148:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %r11d
	movl	%ecx, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r10d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	shrl	$11, %r13d
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	andl	$1023, %r13d
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	testb	$8, 98(%rdx)
	movq	%r9, (%rsp)
	je	.L1766
	testb	$4, 96(%rdx)
	jne	.L1986
.L1766:
	movl	%r12d, %eax
	movslq	%r13d, %rbp
	movl	%r12d, %r14d
	movq	%rax, 944(%rbx)
	movl	%r12d, %eax
	andl	$14680064, %r14d
	andb	$-8, 994(%rbx)
	andl	$2147481600, %eax
	movq	%rax, 960(%rbx)
	leaq	(%rbx,%rbp,8), %rax
	movl	$-1, 2232(%rax)
	movl	2224(%rbx), %edx
	movl	%r14d, 18616(%rax)
	orl	%r14d, %edx
	movl	%edx, 10424(%rax)
	movb	$0, 45240(%rbx,%rbp)
	movb	$0, 44216(%rbx,%rbp)
	movb	$0, 46264(%rbx,%rbp)
.L1768:
	testb	$6, 994(%rbx)
	je	.L1822
	testb	$3, %r15b
	jne	.L1984
.L1822:
	movq	944(%rbx), %rax
	movl	88(%rbx), %edx
	movl	%eax, %esi
	movl	%eax, %ecx
	andl	$2147479552, %esi
	jne	.L1824
.L1825:
	movl	%ecx, %eax
	xorl	%edx, %eax
.L1826:
	movq	960(%rbx), %rsi
	movq	%rax, 952(%rbx)
	movl	%esi, %edi
	movl	%esi, %ecx
	andl	$2147479552, %edi
	jne	.L1987
.L1827:
	movl	%edx, %esi
	xorl	%ecx, %esi
.L1828:
	cmpq	1040(%rbx), %rax
	ja	.L1829
	movzbl	1144(%rbx), %edi
	testb	$2, %dil
	jne	.L1988
.L1830:
	movq	%rax, %rcx
	shrq	$11, %rcx
	addq	1032(%rbx), %rcx
	testb	$4, %r15b
	movq	%rcx, 984(%rbx)
	je	.L1840
	testb	%r10b, %r10b
	movzbl	(%rcx), %edx
	jne	.L1989
.L1841:
	orl	$4, %edx
	andl	$16775168, %r12d
	movb	%dl, (%rcx)
	leaq	(%rbx,%rbp,8), %rcx
	movq	984(%rbx), %rdx
	movq	%rdx, 35000(%rcx)
	movzbl	(%rdx), %edx
	movb	$4, 46264(%rbx,%rbp)
	andl	$-16, %edx
	movb	%dl, 43192(%rbx,%rbp)
	movq	1024(%rbx), %rdx
	addq	%rdx, %rsi
	xorq	%r12, %rsi
	movq	%rsi, 26808(%rcx)
.L1855:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	addq	%rdx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1987:
	.cfi_restore_state
	cmpl	%edx, %edi
	jne	.L1828
	jmp	.L1827
	.p2align 4,,10
	.p2align 3
.L1824:
	cmpl	%edx, %esi
	jne	.L1826
	.p2align 4,,9
	jmp	.L1825
	.p2align 4,,10
	.p2align 3
.L1986:
	cmpl	$-2, %esi
	je	.L1766
	andb	$-8, 994(%rdx)
	cmpl	$-4, %esi
	je	.L1981
	jle	.L1990
	cmpl	$-3, %esi
	je	.L1779
	cmpl	$-1, %esi
	.p2align 4,,5
	jne	.L1769
	movl	$0, 976(%rdx)
	movl	1908(%rdx), %eax
	addl	$1, %eax
	cltq
	movl	320(%rdx,%rax,8), %edx
	movq	%rdx, 968(%rbx)
	.p2align 4,,10
	.p2align 3
.L1778:
	movl	328(%rbx), %esi
	movl	%esi, %eax
	andl	$12582912, %eax
	cmpl	$8388608, %eax
	jne	.L1991
.L1885:
	testl	$2621440, %esi
	jne	.L1872
	movslq	%r13d, %rbp
	movl	%r12d, %r14d
	leaq	(%rbx,%rbp,8), %rax
	andl	$14680064, %r14d
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	movl	2224(%rbx), %eax
	orl	%r14d, %eax
	cmpl	10424(%rdi), %eax
	je	.L1992
.L1782:
	andl	$3670016, %esi
	movq	%rdx, %rcx
	movq	%r12, %rax
	andl	$16777152, %ecx
	cmpl	$1048576, %esi
	je	.L1993
	shrq	$14, %rax
	andl	$1020, %eax
	addq	%rcx, %rax
	testl	%esi, %esi
	movq	%rax, 8(%rsp)
	jne	.L1787
	movl	%r12d, %eax
	andl	$-16777216, %edx
	sall	$4, %eax
	andl	$-16777216, %eax
	cmpl	%eax, %edx
	jae	.L1787
.L1788:
	movl	$16, %eax
	movl	$16, %esi
	movw	%ax, 992(%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 944(%rbx)
.L1816:
	andl	$1024, %r15d
	jne	.L1864
	.p2align 4,,10
	.p2align 3
.L1815:
	movl	976(%rbx), %eax
	andl	$2147481600, %r12d
	movl	%r12d, 792(%rbx)
	cmpl	$1, %eax
	je	.L1994
	cmpl	$2, %eax
	je	.L1995
.L1821:
	orl	%eax, %r12d
	movl	%r12d, 792(%rbx)
.L1818:
	cmpb	$64, 99(%rbx)
	jne	.L1864
	xorl	%eax, %eax
	testl	%r11d, %r11d
	cmovns	%r11d, %eax
	movb	%al, 1012(%rbx)
	jmp	.L1864
	.p2align 4,,10
	.p2align 3
.L1829:
	movl	$5, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L1984:
	movzbl	1144(%rbx), %edi
.L1823:
	andl	$2, %edi
	jne	.L1996
.L1851:
	movl	$4, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	movzwl	992(%rbx), %esi
.L1864:
	movq	%rbx, %rdi
	call	*2032(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1769:
	.cfi_restore_state
	cmpb	$-128, 99(%rbx)
	je	.L1981
.L1779:
	movl	$0, 976(%rbx)
	movl	336(%rbx), %edx
	movq	%rdx, 968(%rbx)
	jmp	.L1778
	.p2align 4,,10
	.p2align 3
.L1991:
	cmpl	$4194304, %eax
	je	.L1885
.L1872:
	movq	$0, 8(%rsp)
.L1780:
	movl	$18, %ecx
	movl	$18, %esi
	movw	%cx, 992(%rbx)
.L1812:
	movq	%rbx, %rdi
	movl	%r11d, (%rsp)
	call	*2032(%rbx)
	movl	(%rsp), %r11d
.L1793:
	andl	$1024, %r15d
	je	.L1813
	movq	8(%rsp), %rax
	movzwl	992(%rbx), %esi
	movq	%rax, 944(%rbx)
	jmp	.L1864
	.p2align 4,,10
	.p2align 3
.L1990:
	cmpl	$-5, %esi
	jne	.L1769
	movl	$3, 976(%rdx)
	movl	432(%rdx), %edx
	movq	%rdx, 968(%rbx)
	jmp	.L1778
	.p2align 4,,10
	.p2align 3
.L1981:
	movl	$2, 976(%rbx)
	movl	384(%rbx), %edx
	movq	%rdx, 968(%rbx)
	jmp	.L1778
	.p2align 4,,10
	.p2align 3
.L1813:
	movq	8(%rsp), %rax
	movl	$16, %edx
	movl	$16, %esi
	movw	%dx, 992(%rbx)
	movq	%rax, 944(%rbx)
	jmp	.L1815
.L1993:
	shrq	$18, %rax
	andl	$60, %eax
	addq	%rcx, %rax
	movq	%rax, 8(%rsp)
.L1787:
	movq	8(%rsp), %rax
	cmpq	%rax, 1040(%rbx)
	jb	.L1789
	movq	%rax, %rdi
	movl	%edi, %edx
	andl	$2147479552, %edx
	je	.L1790
	cmpl	88(%rbx), %edx
	je	.L1790
.L1791:
	movzbl	1144(%rbx), %eax
	movq	8(%rsp), %rdx
	testb	$2, %al
	jne	.L1997
.L1792:
	movq	%rdx, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movl	(%rax,%rdx), %eax
	bswap	%eax
	testb	$1, %al
	movl	%eax, 28(%rsp)
	jne	.L1793
	testl	$251658240, %eax
	jne	.L1780
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	328(%rbx), %eax
	andl	$16777208, %ecx
	andl	$-268435456, %edx
	movl	%eax, %esi
	andl	$12582912, %eax
	andl	$3670016, %esi
	cmpl	$1048576, %esi
	je	.L1998
	movl	%eax, %edi
	movq	%r12, %rax
	shrq	$10, %rax
	andl	$62, %eax
	cmpl	$8388608, %edi
	je	.L1999
.L1798:
	addq	%rcx, %rax
	cmpq	1040(%rbx), %rax
	movq	%rax, 32(%rsp)
	ja	.L1789
	testl	%esi, %esi
	jne	.L1800
	movl	%r12d, %eax
	andl	$61440, %eax
	shrl	$12, %eax
	cmpl	%eax, %edx
	jae	.L1800
.L1799:
	movw	$17, 992(%rbx)
	movq	32(%rsp), %rax
	movq	%rax, 944(%rbx)
.L1983:
	movl	$17, %esi
	jmp	.L1816
	.p2align 4,,10
	.p2align 3
.L1789:
	movl	$5, %esi
	movw	%si, 992(%rbx)
	movl	$5, %esi
	jmp	.L1812
.L1992:
	cmpb	$0, 44216(%rbx,%rbp)
	je	.L2000
	testb	$1, 994(%rbx)
	jne	.L1782
.L1784:
	testl	$256, %r15d
	jne	.L1782
	movq	16(%rsp), %rax
	movzwl	18616(%rax), %edx
	movzbl	45240(%rbx,%rbp), %eax
	testb	%al, %al
	je	.L1785
	andl	$3, %eax
	leal	(%rax,%rax), %ecx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%ecx, %eax
	movb	%al, 994(%rbx)
.L1785:
	andl	$12582912, %esi
	cmpl	$8388608, %esi
	je	.L2001
	andl	$65528, %edx
	movl	%r12d, %eax
	andl	$2047, %eax
	sall	$8, %edx
	orl	%eax, %edx
	movl	%edx, %eax
.L1810:
	movq	%rax, 944(%rbx)
	xorl	%edi, %edi
	andl	$2147481600, %eax
	movq	%rax, 960(%rbx)
	movw	%di, 992(%rbx)
	jmp	.L1768
.L1790:
	movl	%eax, %edi
	xorl	88(%rbx), %edi
	movq	%rdi, 8(%rsp)
	jmp	.L1791
.L2000:
	movl	2232(%rdi), %eax
	cmpq	%rax, %rdx
	jne	.L1782
	jmp	.L1784
.L1994:
	movq	968(%rbx), %rdx
	movl	336(%rbx), %eax
	xorq	%rdx, %rax
	testl	$2147479552, %eax
	je	.L1818
	movl	384(%rbx), %eax
	xorq	%rdx, %rax
	testl	$2147479552, %eax
	jne	.L1819
	orl	$2, %r12d
	movl	%r12d, 792(%rbx)
	jmp	.L1818
.L1995:
	testb	$127, 99(%rbx)
	jne	.L1821
	orl	$-2147483646, %r12d
	movl	%r12d, 792(%rbx)
	jmp	.L1818
.L1998:
	cmpl	$8388608, %eax
	movq	%r12, %rax
	je	.L2002
	shrq	$10, %rax
	andl	$1022, %eax
.L1796:
	addq	%rcx, %rax
	cmpq	%rax, 1040(%rbx)
	movq	%rax, 32(%rsp)
	jb	.L1789
	movl	%r12d, %eax
	andl	$983040, %eax
	shrl	$16, %eax
	cmpl	%eax, %edx
	jb	.L1799
.L1800:
	movq	32(%rsp), %rdi
	movl	%edi, %edx
	movl	%edi, %eax
	andl	$2147479552, %edx
	je	.L1801
	cmpl	88(%rbx), %edx
	je	.L1801
.L1802:
	movzbl	1144(%rbx), %eax
	testb	$2, %al
	jne	.L2003
	movq	32(%rsp), %rdi
	movq	%rdi, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movzwl	(%rax,%rdi), %edi
.L1870:
	movl	328(%rbx), %esi
#APP
# 545 "inline.h" 1
	rorw $8, %di
# 0 "" 2
#NO_APP
	movl	%edi, %edx
	movl	%esi, %ecx
	andl	$12582912, %ecx
	cmpl	$8388608, %ecx
	je	.L2004
	cmpl	$4194304, %ecx
	je	.L2005
.L1807:
	testb	$4, 28(%rsp)
	je	.L1808
	orb	$2, 994(%rbx)
.L1808:
	testl	$256, %r15d
	jne	.L1785
	movq	968(%rbx), %r9
	movzwl	%di, %edi
	movq	16(%rsp), %rsi
	movl	28(%rsp), %eax
	movl	%r9d, 2232(%rsi)
	movl	2224(%rbx), %r8d
	shrl	%eax
	movl	%edi, 18616(%rsi)
	andl	$1, %eax
	movb	%al, 8(%rsp)
	orl	%r14d, %r8d
	movl	%r8d, 10424(%rsi)
	movb	%al, 44216(%rbx,%rbp)
	movzbl	994(%rbx), %eax
	movb	$0, 46264(%rbx,%rbp)
	shrb	%al
	andl	$3, %eax
	cmpl	$8388608, %ecx
	movb	%al, 45240(%rbx,%rbp)
	movq	$0, 26808(%rsi)
	je	.L1972
.L1982:
	movl	328(%rbx), %esi
	jmp	.L1785
.L1819:
	movl	432(%rbx), %eax
	xorq	%rdx, %rax
	testl	$2147479552, %eax
	jne	.L1820
	orl	$3, %r12d
	movl	%r12d, 792(%rbx)
	jmp	.L1818
.L1989:
	movl	%edx, %edi
	andl	$-16, %edi
	cmpb	%dil, %r10b
	je	.L1841
	testb	$8, %dl
	je	.L1841
	movzbl	1144(%rbx), %edi
	testb	$2, %dil
	je	.L1851
	movq	1056(%rbx), %rax
	andb	$-7, 994(%rax)
	jmp	.L1823
.L1840:
	cmpl	$511, %r12d
	movzbl	(%rcx), %r9d
	ja	.L1985
	testb	$16, 331(%rbx)
	je	.L1985
	movzbl	1144(%rbx), %edi
	movzbl	994(%rbx), %edx
	testb	$1, %dil
	jne	.L1843
	testb	$1, %dl
	jne	.L1843
.L1844:
	testb	$2, %dil
	je	.L1851
	movq	1056(%rbx), %rdx
.L1846:
	andb	$-7, 994(%rdx)
	jmp	.L1823
.L1988:
	movq	1056(%rbx), %rdx
	andb	$-7, 994(%rdx)
	andb	$4, %dil
	jne	.L1830
	testl	%r11d, %r11d
	movl	$-3, %esi
	jle	.L1831
	movq	1080(%rbx), %rcx
	testb	$1, 2(%rcx)
	je	.L1831
	testb	$64, 99(%rbx)
	cmovne	%r11d, %esi
.L1831:
	movl	1096(%rbx), %edi
	xorl	%ecx, %ecx
	movl	%r10d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	addl	%eax, %edi
	call	s390_translate_addr
	movl	8(%rsp), %r11d
	testl	%eax, %eax
	movl	16(%rsp), %r10d
	je	.L1832
	movq	1056(%rbx), %rax
	movzwl	992(%rax), %esi
	movq	%rax, %rdi
	call	*2032(%rax)
	movl	16(%rsp), %r10d
	movl	8(%rsp), %r11d
.L1832:
	movzbl	994(%rbx), %eax
	movq	1056(%rbx), %rdx
	movl	%eax, %ecx
	andl	$-7, %eax
	orb	994(%rdx), %cl
	andl	$6, %ecx
	orl	%ecx, %eax
	movb	%al, 994(%rbx)
	movzbl	994(%rdx), %eax
	shrb	%al
	andl	$3, %eax
	orb	%al, 45240(%rbx,%rbp)
	testb	$8, 98(%rbx)
	je	.L1833
	testb	$4, 96(%rbx)
	je	.L1833
	cmpl	$-2, %r11d
	je	.L1833
.L1834:
	testl	%r11d, %r11d
	jle	.L1835
	movq	1080(%rbx), %rcx
	testb	$1, 2(%rcx)
	je	.L1835
	testb	$64, 99(%rbx)
	je	.L1835
	movq	968(%rbx), %rcx
	leal	5(%r11), %edi
	andl	$2, %eax
	leal	16(%r11), %r8d
	movslq	%edi, %rdi
	movl	%ecx, 2232(%rbx,%rbp,8)
	movzbl	994(%rdx), %esi
	movzbl	994(%rbx), %ecx
	andl	$1, %esi
	andl	$-2, %ecx
	orl	%esi, %ecx
	movb	%cl, 994(%rbx)
	movq	968(%rdx), %rcx
	leal	17(%r11), %esi
	movslq	%esi, %rsi
	xorb	$8, %ch
	movq	%rcx, 968(%rbx)
	movl	%ecx, 320(%rbx,%rsi,8)
	shrq	%rcx
	xorq	$1, %rcx
	movl	%r8d, 1892(%rbx,%rdi,4)
	andl	$1, %ecx
	movb	%cl, 1976(%rbx,%rsi)
	movslq	%r11d, %rcx
	movb	%al, 2009(%rbx,%rcx)
.L1835:
	movq	944(%rdx), %rax
	movl	%eax, %esi
	movl	%eax, %ecx
	andl	$2147479552, %esi
	je	.L1836
	cmpl	88(%rdx), %esi
	je	.L1836
.L1837:
	movq	960(%rdx), %rsi
	movq	%rax, 952(%rdx)
	movl	%esi, %edi
	movl	%esi, %ecx
	andl	$2147479552, %edi
	je	.L1838
	cmpl	88(%rdx), %edi
	je	.L1838
.L1839:
	cmpq	1040(%rdx), %rax
	ja	.L1829
	movq	%rsi, %rdx
	orb	$8, %dh
	testl	$2048, %r12d
	cmovne	%rdx, %rsi
	jmp	.L1830
.L2001:
	movl	%edx, %eax
	andl	$65520, %edx
	andl	$6, %eax
	sall	$8, %edx
	sall	$23, %eax
	orl	%edx, %eax
	movl	%r12d, %edx
	andl	$4095, %edx
	orl	%edx, %eax
	jmp	.L1810
.L1985:
	movzbl	994(%rbx), %edx
	movzbl	1144(%rbx), %edi
.L1843:
	andb	$6, %dl
	jne	.L1844
	movl	%edi, %r8d
	shrb	%r8b
	andb	$1, %r8b
	jne	.L2006
.L1845:
	testb	%r10b, %r10b
	je	.L1847
	movl	%r9d, %edx
	andl	$-16, %edx
	cmpb	%dl, %r10b
	jne	.L1844
.L1847:
	testb	%r8b, %r8b
	jne	.L2007
.L1849:
	testb	$2, %r15b
	je	.L1852
	orl	$6, %r9d
	movb	%r9b, (%rcx)
.L1852:
	movq	984(%rbx), %rdx
	leaq	(%rbx,%rbp,8), %rcx
	movq	%rdx, 35000(%rcx)
	movzbl	(%rdx), %edx
	andl	$-16, %edx
	cmpl	$4095, %r12d
	movb	%dl, 43192(%rbx,%rbp)
	ja	.L1853
	testb	$1, 994(%rbx)
	movl	$4, %edx
	je	.L1854
.L1853:
	movl	%r15d, %edx
	orl	$5, %edx
.L1854:
	movb	%dl, 46264(%rbx,%rbp)
	movq	1024(%rbx), %rdx
	movl	%r12d, %edi
	andl	$16775168, %edi
	addq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, 26808(%rcx)
	testb	$4, 808(%rbx)
	je	.L1855
	testb	$32, 54(%rbx)
	je	.L1855
	cmpl	$-2, %r11d
	movb	$4, 46264(%rbx,%rbp)
	je	.L1855
	movl	416(%rbx), %ecx
	movl	408(%rbx), %esi
	andl	$16777215, %ecx
	andl	$16777215, %esi
	cmpl	%esi, %ecx
	jb	.L1856
	cmpl	%esi, %r12d
	jb	.L1857
	cmpl	%ecx, %r12d
	movl	$1, %edi
	jbe	.L1861
.L1857:
	movq	(%rsp), %r9
	movl	%r12d, %edi
	leaq	-1(%r9,%rdi), %r8
	movl	%esi, %edi
	cmpq	%rdi, %r8
	jb	.L1859
	movl	%ecx, %r9d
	movl	$1, %edi
	cmpq	%r9, %r8
	jbe	.L1861
.L1859:
	xorl	%edi, %edi
	cmpl	%esi, %r12d
	ja	.L1861
	xorl	%edi, %edi
	cmpq	%rcx, %r8
	setae	%dil
.L1861:
	andl	$1, %edi
	testb	%dil, %dil
	je	.L1855
	orl	$2097152, 56(%rbx)
	jmp	.L1855
.L1801:
	movl	%eax, %edi
	xorl	88(%rbx), %edi
	movq	%rdi, 32(%rsp)
	jmp	.L1802
.L1999:
	movq	%r12, %rax
	shrq	$11, %rax
	andl	$30, %eax
	jmp	.L1798
.L1820:
	orl	$1, %r12d
	movl	%r12d, 792(%rbx)
	jmp	.L1818
.L2002:
	shrq	$11, %rax
	andl	$510, %eax
	jmp	.L1796
.L1838:
	movl	%ecx, %esi
	xorl	88(%rdx), %esi
	jmp	.L1839
.L1836:
	movl	%ecx, %eax
	xorl	88(%rdx), %eax
	jmp	.L1837
.L2004:
	testb	$8, %dil
	je	.L1807
.L1806:
	movq	32(%rsp), %rax
	testl	$512, %r15d
	movw	$17, 992(%rbx)
	movq	%rax, 944(%rbx)
	je	.L1983
	jmp	.L1768
.L1833:
	movl	%r14d, 18616(%rbx,%rbp,8)
	jmp	.L1834
.L2005:
	testb	$4, %dil
	jne	.L1806
	testb	$2, %dil
	jne	.L1780
	.p2align 4,,3
	jmp	.L1807
.L2003:
	testb	$4, %al
	movq	32(%rsp), %rdx
	jne	.L1804
	movl	32(%rsp), %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	movl	%r10d, 44(%rsp)
	movq	1056(%rbx), %rdx
	movl	%r11d, 40(%rsp)
	addl	1096(%rbx), %edi
	call	s390_logical_to_main_l
	movq	1056(%rbx), %rax
	movl	44(%rsp), %r10d
	movl	40(%rsp), %r11d
	movq	952(%rax), %rdx
.L1804:
	movq	%rdx, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movzwl	(%rax,%rdx), %edi
	jmp	.L1870
.L2007:
	movq	1056(%rbx), %rdx
	testb	$6, 994(%rdx)
	je	.L1849
	movq	%rdx, %rax
.L1850:
	movl	$4, %esi
	movq	%rax, %rdi
	call	*2032(%rax)
	movzwl	992(%rbx), %esi
	jmp	.L1864
.L2006:
	movq	1056(%rbx), %rdx
	testb	$6, 994(%rdx)
	je	.L1845
	jmp	.L1846
.L1997:
	testb	$4, %al
	jne	.L1792
	movl	8(%rsp), %edi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	movl	%r10d, 32(%rsp)
	movq	1056(%rbx), %rdx
	movl	%r11d, 28(%rsp)
	addl	1096(%rbx), %edi
	call	s390_logical_to_main_l
	movq	1056(%rbx), %rax
	movl	28(%rsp), %r11d
	movl	32(%rsp), %r10d
	movq	952(%rax), %rdx
	jmp	.L1792
.L1972:
	movl	%r13d, %esi
	xorl	$1, %esi
	movslq	%esi, %rsi
	leaq	(%rbx,%rsi,8), %rcx
	movl	%edi, 18616(%rcx)
	movzbl	8(%rsp), %edi
	movl	%r9d, 2232(%rcx)
	movl	%r8d, 10424(%rcx)
	movb	%al, 45240(%rbx,%rsi)
	movb	%dil, 44216(%rbx,%rsi)
	movb	$0, 46264(%rbx,%rsi)
	movq	$0, 26808(%rcx)
	jmp	.L1982
.L1856:
	movq	(%rsp), %r9
	movl	%r12d, %edi
	leaq	-1(%r9,%rdi), %r8
	movl	$1, %edi
	cmpq	%rsi, %r8
	jae	.L1861
	xorl	%edi, %edi
	cmpl	%ecx, %r12d
	setbe	%dil
	jmp	.L1861
.L1996:
	movq	1056(%rbx), %rax
	testb	$6, 994(%rax)
	je	.L1851
	jmp	.L1850
	.cfi_endproc
.LFE148:
	.size	s370_logical_to_main_l, .-s370_logical_to_main_l
	.section	.text.unlikely
	.type	s370_vfetch2_full, @function
s370_vfetch2_full:
.LFB160:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leal	5(%rsi), %eax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	cltq
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	leaq	(%rdx,%rax,4), %r14
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L2009
	movl	%edi, %ecx
	incl	%eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rdx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	je	.L2010
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rcx)
	je	.L2009
.L2010:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L2011
	cmpb	43192(%rbx,%rcx), %al
	jne	.L2009
.L2011:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L2009
	testb	$4, 46264(%rbx,%rcx)
	je	.L2009
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
	jmp	.L2012
.L2009:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
.L2012:
	movzbl	(%rax), %r12d
	leal	1(%rbp), %ecx
	movl	1892(%r14), %eax
	sall	$8, %r12d
	testl	%eax, %eax
	je	.L2013
	movl	%ecx, %edi
	incl	%eax
	andl	$16777215, %edi
	cltq
	movl	%edi, %esi
	shrl	$11, %esi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %r10d
	cmpl	%r10d, 320(%rbx,%rax,8)
	je	.L2014
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rsi)
	je	.L2013
.L2014:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L2015
	cmpb	43192(%rbx,%rsi), %al
	jne	.L2013
.L2015:
	movl	%ecx, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L2013
	testb	$4, 46264(%rbx,%rsi)
	je	.L2013
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
	jmp	.L2016
.L2013:
	movzbl	97(%rbx), %r8d
	movl	%ecx, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	call	s370_logical_to_main_l
.L2016:
	popq	%rbx
	.cfi_def_cfa_offset 40
	movzbl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	orl	%r12d, %eax
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE160:
	.size	s370_vfetch2_full, .-s370_vfetch2_full
	.type	s370_validate_operand.part.11, @function
s370_validate_operand.part.11:
.LFB3145:
	.cfi_startproc
	movq	%r8, %rax
	movzbl	97(%r8), %r8d
	addl	%edx, %edi
	andl	$16777215, %edi
	movl	$1, %r9d
	movq	%rax, %rdx
	jmp	s370_logical_to_main_l
	.cfi_endproc
.LFE3145:
	.size	s370_validate_operand.part.11, .-s370_validate_operand.part.11
	.type	s370_vfetch4_full, @function
s370_vfetch4_full:
.LFB162:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leal	5(%rsi), %eax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	cltq
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	leaq	(%rdx,%rax,4), %r14
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L2044
	movl	%edi, %ecx
	incl	%eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rdx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	je	.L2045
	movb	1976(%rbx,%rax), %al
	testb	%al, 44216(%rbx,%rcx)
	je	.L2044
.L2045:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L2046
	cmpb	43192(%rbx,%rcx), %al
	jne	.L2044
.L2046:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L2044
	testb	$4, 46264(%rbx,%rcx)
	je	.L2044
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
	jmp	.L2047
.L2044:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
.L2047:
	movl	(%rax), %eax
	movl	$2048, %r12d
	movl	%eax, (%rsp)
	movl	%ebp, %eax
	andl	$2047, %eax
	subl	%eax, %r12d
	movl	1892(%r14), %eax
	leal	(%r12,%rbp), %ecx
	testl	%eax, %eax
	je	.L2048
	movl	%ecx, %edi
	incl	%eax
	andl	$16777215, %edi
	cltq
	movl	%edi, %esi
	shrl	$11, %esi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %r10d
	cmpl	%r10d, 320(%rbx,%rax,8)
	je	.L2049
	movb	44216(%rbx,%rsi), %r8b
	testb	%r8b, 1976(%rbx,%rax)
	je	.L2048
.L2049:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L2050
	cmpb	43192(%rbx,%rsi), %al
	jne	.L2048
.L2050:
	movl	%ecx, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L2048
	testb	$4, 46264(%rbx,%rsi)
	je	.L2048
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
	jmp	.L2051
.L2048:
	movzbl	97(%rbx), %r8d
	movl	%ecx, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	call	s370_logical_to_main_l
.L2051:
	movl	(%rax), %eax
	movl	%eax, (%rsp,%r12)
	movl	(%rsp), %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	bswap	%eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE162:
	.size	s370_vfetch4_full, .-s370_vfetch4_full
	.type	s370_vstore4_full, @function
s370_vstore4_full:
.LFB154:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %eax
	movl	%edi, %r11d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	andl	$2047, %eax
	movl	%edx, %r10d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	$2048, %ebp
	subl	%eax, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	leal	5(%rdx), %eax
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	%ebp, %edi
	cltq
	movq	%rdi, (%rsp)
	leaq	(%rcx,%rax,4), %r15
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L2078
	leal	1(%rax), %edx
	movl	%esi, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	je	.L2079
	movb	44216(%rbx,%rcx), %sil
	testb	%sil, 1976(%rbx,%rdx)
	je	.L2078
.L2079:
	movb	97(%rbx), %dl
	testb	%dl, %dl
	je	.L2080
	cmpb	43192(%rbx,%rcx), %dl
	jne	.L2078
.L2080:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L2078
	testb	$1, 46264(%rbx,%rcx)
	je	.L2078
	movq	35000(%rax), %rdx
	movl	%r12d, %r13d
	movq	%rdx, 984(%rbx)
	xorq	26808(%rax), %r13
	jmp	.L2081
.L2078:
	movq	(%rsp), %r9
	movl	%r10d, %esi
	movl	$1, %ecx
	movzbl	97(%rbx), %r8d
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r11d, 12(%rsp)
	movl	%r10d, 8(%rsp)
	call	s370_logical_to_main_l
	movl	12(%rsp), %r11d
	movl	8(%rsp), %r10d
	movq	%rax, %r13
.L2081:
	movl	1892(%r15), %eax
	leal	0(%rbp,%r12), %esi
	movq	984(%rbx), %r14
	testl	%eax, %eax
	je	.L2082
	movl	%esi, %r8d
	incl	%eax
	andl	$16777215, %r8d
	cltq
	movl	%r8d, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	movl	%edx, %edi
	leaq	(%rbx,%rdi,8), %rcx
	movl	2232(%rcx), %r9d
	cmpl	%r9d, 320(%rbx,%rax,8)
	je	.L2083
	movb	44216(%rbx,%rdi), %r9b
	testb	%r9b, 1976(%rbx,%rax)
	je	.L2082
.L2083:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L2084
	cmpb	43192(%rbx,%rdx), %al
	jne	.L2082
.L2084:
	movl	%esi, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L2082
	testb	$2, 46264(%rbx,%rdi)
	je	.L2082
	movl	%r8d, %eax
	xorq	26808(%rcx), %rax
	jmp	.L2085
.L2082:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	%esi, %edi
	subl	%ebp, %r9d
	andl	$16777215, %edi
	movl	$2, %ecx
	movslq	%r9d, %r9
	movq	%rbx, %rdx
	movl	%r10d, %esi
	movl	%r11d, 8(%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r11d
.L2085:
	movq	(%rsp), %rcx
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	bswap	%r11d
	orb	$6, (%r14)
	movl	%r11d, 16(%rsp)
	rep movsb
	movq	%rax, %rdi
	movb	$4, %cl
	subl	%ebp, %ecx
	movslq	%ecx, %rcx
	rep movsb
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE154:
	.size	s370_vstore4_full, .-s370_vstore4_full
	.type	s370_instfetch.constprop.20, @function
s370_instfetch.constprop.20:
.LFB3153:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movl	800(%rdi), %ebp
	movl	%ebp, %r12d
	andl	$2047, %r12d
	testb	$1, %bpl
	je	.L2112
	movl	$6, %esi
	call	*2032(%rbx)
.L2112:
	testb	$4, 808(%rbx)
	je	.L2114
	movw	$0, 1146(%rbx)
	testb	$64, 54(%rbx)
	je	.L2114
	movl	416(%rbx), %eax
	movl	408(%rbx), %edx
	andl	$16777215, %eax
	andl	$16777215, %edx
	cmpl	%edx, %eax
	jb	.L2116
	xorl	%ecx, %ecx
	cmpl	%edx, %ebp
	jb	.L2119
	jmp	.L2168
.L2116:
	cmpl	%edx, %ebp
	movl	$1, %ecx
	jae	.L2119
.L2168:
	xorl	%ecx, %ecx
	cmpl	%eax, %ebp
	setbe	%cl
.L2119:
	movb	%cl, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L2114
	orl	$4194304, 56(%rbx)
.L2114:
	movl	1908(%rbx), %eax
	testl	%eax, %eax
	je	.L2120
	movl	%ebp, %ecx
	incl	%eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	je	.L2121
	movb	44216(%rbx,%rcx), %sil
	testb	%sil, 1976(%rbx,%rax)
	je	.L2120
.L2121:
	movb	97(%rbx), %al
	testb	%al, %al
	je	.L2122
	cmpb	43192(%rbx,%rcx), %al
	jne	.L2120
.L2122:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L2120
	testb	$4, 46264(%rbx,%rcx)
	je	.L2120
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
	jmp	.L2123
.L2120:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	orl	$-1, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
.L2123:
	movb	(%rax), %cl
	movl	$2, %edx
	cmpb	$63, %cl
	jbe	.L2124
	cmpb	$-64, %cl
	sbbl	%edx, %edx
	andl	$-2, %edx
	addl	$6, %edx
.L2124:
	addl	%r12d, %edx
	cmpl	$2048, %edx
	jle	.L2125
	movl	(%rax), %eax
	leaq	1014(%rbx), %r13
	movl	$2048, %r14d
	movl	1908(%rbx), %esi
	subl	%r12d, %r14d
	addl	%r14d, %ebp
	movl	%ebp, %edi
	andl	$16777215, %edi
	movl	%eax, 1014(%rbx)
	testl	%esi, %esi
	je	.L2126
	movl	%edi, %ecx
	incl	%esi
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	je	.L2127
	movb	44216(%rbx,%rcx), %al
	testb	%al, 1976(%rbx,%rsi)
	je	.L2126
.L2127:
	movb	97(%rbx), %sil
	testb	%sil, %sil
	je	.L2128
	cmpb	43192(%rbx,%rcx), %sil
	jne	.L2126
.L2128:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L2126
	testb	$4, 46264(%rbx,%rcx)
	je	.L2126
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
	jmp	.L2129
.L2126:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	orl	$-1, %esi
	call	s370_logical_to_main_l
.L2129:
	movl	(%rax), %eax
	movslq	%r14d, %r14
	movl	%eax, 0(%r13,%r14)
	movq	%r13, %rax
.L2125:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3153:
	.size	s370_instfetch.constprop.20, .-s370_instfetch.constprop.20
	.text
	.p2align 4,,15
	.globl	s370_add_register
	.type	s370_add_register, @function
s370_add_register:
.LFB170:
	.cfi_startproc
	movzbl	1(%rdi), %ecx
	movb	$2, 130(%rsi)
	movq	%rsi, %rax
	addq	$2, 136(%rsi)
	movq	%rcx, %rdx
	andl	$15, %ecx
	shrq	%rdx
	andl	$120, %edx
	addq	%rsi, %rdx
	movl	192(%rsi,%rcx,8), %esi
	movl	192(%rdx), %edi
	leal	(%rdi,%rsi), %ecx
	cmpl	$0, %ecx
	movl	%ecx, 192(%rdx)
	jle	.L2170
	shrl	$31, %esi
	testb	%sil, %sil
	jne	.L2182
.L2179:
	movl	$2, %edx
.L2173:
	movb	%dl, 100(%rax)
.L2169:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2182:
	shrl	$31, %edi
	testb	%dil, %dil
	je	.L2179
.L2171:
	testb	$8, 101(%rax)
	movb	$3, 100(%rax)
	je	.L2169
	movq	2032(%rax), %rdx
	movl	$8, %esi
	movq	%rax, %rdi
	jmp	*%rdx
	.p2align 4,,10
	.p2align 3
.L2170:
	jne	.L2183
	shrl	$31, %esi
	testb	%sil, %sil
	je	.L2181
	shrl	$31, %edi
	testb	%dil, %dil
	jne	.L2171
.L2181:
	xorl	%edx, %edx
	jmp	.L2173
	.p2align 4,,10
	.p2align 3
.L2183:
	testl	%esi, %esi
	js	.L2180
	testl	%edi, %edi
	.p2align 4,,5
	jns	.L2171
.L2180:
	movl	$1, %edx
	.p2align 4,,2
	jmp	.L2173
	.cfi_endproc
.LFE170:
	.size	s370_add_register, .-s370_add_register
	.p2align 4,,15
	.globl	s370_add
	.type	s370_add, @function
s370_add:
.LFB171:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L2229
.L2185:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L2186
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L2186:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$3, %bpl
	jne	.L2230
.L2187:
	leal	-77(%r13), %edx
	cmpl	$6, %edx
	jbe	.L2231
.L2189:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L2190
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L2232
.L2191:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L2233
.L2192:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L2190
	testb	$4, 46264(%rbx,%rcx)
	je	.L2190
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L2193:
	movl	(%rax), %eax
	bswap	%eax
.L2194:
	movslq	%r12d, %r12
	leaq	(%rbx,%r12,8), %rcx
	movl	192(%rcx), %esi
	leal	(%rsi,%rax), %edx
	cmpl	$0, %edx
	movl	%edx, 192(%rcx)
	jle	.L2195
	shrl	$31, %eax
	testb	%al, %al
	jne	.L2234
.L2204:
	movl	$2, %eax
.L2198:
	movb	%al, 100(%rbx)
.L2184:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2234:
	.cfi_restore_state
	shrl	$31, %esi
	testb	%sil, %sil
	je	.L2204
.L2196:
	testb	$8, 101(%rbx)
	movb	$3, 100(%rbx)
	je	.L2184
	movq	2032(%rbx), %rax
	movq	%rbx, %rdi
	movl	$8, %esi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L2195:
	.cfi_restore_state
	jne	.L2235
	shrl	$31, %eax
	testb	%al, %al
	je	.L2206
	shrl	$31, %esi
	testb	%sil, %sil
	jne	.L2196
.L2206:
	xorl	%eax, %eax
	jmp	.L2198
	.p2align 4,,10
	.p2align 3
.L2235:
	testl	%eax, %eax
	js	.L2205
	testl	%esi, %esi
	.p2align 4,,5
	jns	.L2196
.L2205:
	movl	$1, %eax
	.p2align 4,,2
	jmp	.L2198
.L2232:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L2191
.L2190:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L2193
.L2230:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L2187
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch4_full
	jmp	.L2194
.L2229:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L2185
.L2233:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L2192
	jmp	.L2190
.L2231:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L2189
	.cfi_endproc
.LFE171:
	.size	s370_add, .-s370_add
	.p2align 4,,15
	.globl	s370_add_halfword
	.type	s370_add_halfword, @function
s370_add_halfword:
.LFB172:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L2281
.L2237:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L2238
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L2238:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$1, %bpl
	jne	.L2282
.L2239:
	leal	-79(%r13), %edx
	cmpl	$4, %edx
	jbe	.L2283
.L2241:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L2242
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L2284
.L2243:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L2285
.L2244:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L2242
	testb	$4, 46264(%rbx,%rcx)
	je	.L2242
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L2245:
	movzwl	(%rax), %eax
#APP
# 477 "vstore.h" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
.L2246:
	movslq	%r12d, %r12
	cwtl
	leaq	(%rbx,%r12,8), %rcx
	movl	192(%rcx), %esi
	leal	(%rsi,%rax), %edx
	cmpl	$0, %edx
	movl	%edx, 192(%rcx)
	jle	.L2247
	shrl	$31, %eax
	testb	%al, %al
	jne	.L2286
.L2256:
	movl	$2, %eax
.L2250:
	movb	%al, 100(%rbx)
.L2236:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2286:
	.cfi_restore_state
	shrl	$31, %esi
	testb	%sil, %sil
	je	.L2256
.L2248:
	testb	$8, 101(%rbx)
	movb	$3, 100(%rbx)
	je	.L2236
	movq	2032(%rbx), %rax
	movq	%rbx, %rdi
	movl	$8, %esi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L2247:
	.cfi_restore_state
	jne	.L2287
	shrl	$31, %eax
	testb	%al, %al
	je	.L2258
	shrl	$31, %esi
	testb	%sil, %sil
	jne	.L2248
.L2258:
	xorl	%eax, %eax
	jmp	.L2250
	.p2align 4,,10
	.p2align 3
.L2287:
	testl	%eax, %eax
	js	.L2257
	testl	%esi, %esi
	.p2align 4,,5
	jns	.L2248
.L2257:
	movl	$1, %eax
	.p2align 4,,2
	jmp	.L2250
.L2284:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L2243
.L2242:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L2245
.L2282:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2047, %edx
	jne	.L2239
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch2_full
	jmp	.L2246
.L2281:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L2237
.L2285:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L2244
	jmp	.L2242
.L2283:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L2241
	.cfi_endproc
.LFE172:
	.size	s370_add_halfword, .-s370_add_halfword
	.p2align 4,,15
	.globl	s370_add_halfword_immediate
	.type	s370_add_halfword_immediate, @function
s370_add_halfword_immediate:
.LFB173:
	.cfi_startproc
	movl	(%rdi), %edx
	movq	%rsi, %rax
	movb	$4, 130(%rsi)
	addq	$4, 136(%rsi)
	bswap	%edx
	movl	%edx, %ecx
	movswl	%dx, %edx
	shrl	$20, %ecx
	andl	$15, %ecx
	leaq	(%rsi,%rcx,8), %rsi
	movl	192(%rsi), %edi
	leal	(%rdi,%rdx), %ecx
	cmpl	$0, %ecx
	movl	%ecx, 192(%rsi)
	jle	.L2289
	shrl	$31, %edx
	testb	%dl, %dl
	jne	.L2301
.L2298:
	movl	$2, %edx
.L2292:
	movb	%dl, 100(%rax)
.L2288:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2301:
	shrl	$31, %edi
	testb	%dil, %dil
	je	.L2298
.L2290:
	testb	$8, 101(%rax)
	movb	$3, 100(%rax)
	je	.L2288
	movq	2032(%rax), %rdx
	movl	$8, %esi
	movq	%rax, %rdi
	jmp	*%rdx
	.p2align 4,,10
	.p2align 3
.L2289:
	jne	.L2302
	shrl	$31, %edx
	testb	%dl, %dl
	je	.L2300
	shrl	$31, %edi
	testb	%dil, %dil
	jne	.L2290
.L2300:
	xorl	%edx, %edx
	jmp	.L2292
	.p2align 4,,10
	.p2align 3
.L2302:
	testl	%edx, %edx
	js	.L2299
	testl	%edi, %edi
	.p2align 4,,5
	jns	.L2290
.L2299:
	movl	$1, %edx
	.p2align 4,,2
	jmp	.L2292
	.cfi_endproc
.LFE173:
	.size	s370_add_halfword_immediate, .-s370_add_halfword_immediate
	.p2align 4,,15
	.globl	s370_add_logical_register
	.type	s370_add_logical_register, @function
s370_add_logical_register:
.LFB174:
	.cfi_startproc
	movzbl	1(%rdi), %edi
	addq	$2, 136(%rsi)
	movq	%rdi, %rax
	andl	$15, %edi
	shrq	%rax
	andl	$120, %eax
	leaq	(%rsi,%rax), %rcx
	movl	192(%rsi,%rdi,8), %eax
	movl	192(%rcx), %edx
	addl	%edx, %eax
	movl	%eax, 192(%rcx)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE174:
	.size	s370_add_logical_register, .-s370_add_logical_register
	.p2align 4,,15
	.globl	s370_1E00
	.type	s370_1E00, @function
s370_1E00:
.LFB175:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE175:
	.size	s370_1E00, .-s370_1E00
	.p2align 4,,15
	.globl	s370_1E01
	.type	s370_1E01, @function
s370_1E01:
.LFB176:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE176:
	.size	s370_1E01, .-s370_1E01
	.p2align 4,,15
	.globl	s370_1E02
	.type	s370_1E02, @function
s370_1E02:
.LFB177:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE177:
	.size	s370_1E02, .-s370_1E02
	.p2align 4,,15
	.globl	s370_1E03
	.type	s370_1E03, @function
s370_1E03:
.LFB178:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE178:
	.size	s370_1E03, .-s370_1E03
	.p2align 4,,15
	.globl	s370_1E04
	.type	s370_1E04, @function
s370_1E04:
.LFB179:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE179:
	.size	s370_1E04, .-s370_1E04
	.p2align 4,,15
	.globl	s370_1E05
	.type	s370_1E05, @function
s370_1E05:
.LFB180:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE180:
	.size	s370_1E05, .-s370_1E05
	.p2align 4,,15
	.globl	s370_1E06
	.type	s370_1E06, @function
s370_1E06:
.LFB181:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE181:
	.size	s370_1E06, .-s370_1E06
	.p2align 4,,15
	.globl	s370_1E07
	.type	s370_1E07, @function
s370_1E07:
.LFB182:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE182:
	.size	s370_1E07, .-s370_1E07
	.p2align 4,,15
	.globl	s370_1E08
	.type	s370_1E08, @function
s370_1E08:
.LFB183:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE183:
	.size	s370_1E08, .-s370_1E08
	.p2align 4,,15
	.globl	s370_1E09
	.type	s370_1E09, @function
s370_1E09:
.LFB184:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE184:
	.size	s370_1E09, .-s370_1E09
	.p2align 4,,15
	.globl	s370_1E0A
	.type	s370_1E0A, @function
s370_1E0A:
.LFB185:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE185:
	.size	s370_1E0A, .-s370_1E0A
	.p2align 4,,15
	.globl	s370_1E0B
	.type	s370_1E0B, @function
s370_1E0B:
.LFB186:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE186:
	.size	s370_1E0B, .-s370_1E0B
	.p2align 4,,15
	.globl	s370_1E0C
	.type	s370_1E0C, @function
s370_1E0C:
.LFB187:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE187:
	.size	s370_1E0C, .-s370_1E0C
	.p2align 4,,15
	.globl	s370_1E0D
	.type	s370_1E0D, @function
s370_1E0D:
.LFB188:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE188:
	.size	s370_1E0D, .-s370_1E0D
	.p2align 4,,15
	.globl	s370_1E0E
	.type	s370_1E0E, @function
s370_1E0E:
.LFB189:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE189:
	.size	s370_1E0E, .-s370_1E0E
	.p2align 4,,15
	.globl	s370_1E0F
	.type	s370_1E0F, @function
s370_1E0F:
.LFB190:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE190:
	.size	s370_1E0F, .-s370_1E0F
	.p2align 4,,15
	.globl	s370_1E10
	.type	s370_1E10, @function
s370_1E10:
.LFB191:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE191:
	.size	s370_1E10, .-s370_1E10
	.p2align 4,,15
	.globl	s370_1E11
	.type	s370_1E11, @function
s370_1E11:
.LFB192:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE192:
	.size	s370_1E11, .-s370_1E11
	.p2align 4,,15
	.globl	s370_1E12
	.type	s370_1E12, @function
s370_1E12:
.LFB193:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE193:
	.size	s370_1E12, .-s370_1E12
	.p2align 4,,15
	.globl	s370_1E13
	.type	s370_1E13, @function
s370_1E13:
.LFB194:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE194:
	.size	s370_1E13, .-s370_1E13
	.p2align 4,,15
	.globl	s370_1E14
	.type	s370_1E14, @function
s370_1E14:
.LFB195:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE195:
	.size	s370_1E14, .-s370_1E14
	.p2align 4,,15
	.globl	s370_1E15
	.type	s370_1E15, @function
s370_1E15:
.LFB196:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE196:
	.size	s370_1E15, .-s370_1E15
	.p2align 4,,15
	.globl	s370_1E16
	.type	s370_1E16, @function
s370_1E16:
.LFB197:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE197:
	.size	s370_1E16, .-s370_1E16
	.p2align 4,,15
	.globl	s370_1E17
	.type	s370_1E17, @function
s370_1E17:
.LFB198:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE198:
	.size	s370_1E17, .-s370_1E17
	.p2align 4,,15
	.globl	s370_1E18
	.type	s370_1E18, @function
s370_1E18:
.LFB199:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE199:
	.size	s370_1E18, .-s370_1E18
	.p2align 4,,15
	.globl	s370_1E19
	.type	s370_1E19, @function
s370_1E19:
.LFB200:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE200:
	.size	s370_1E19, .-s370_1E19
	.p2align 4,,15
	.globl	s370_1E1A
	.type	s370_1E1A, @function
s370_1E1A:
.LFB201:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE201:
	.size	s370_1E1A, .-s370_1E1A
	.p2align 4,,15
	.globl	s370_1E1B
	.type	s370_1E1B, @function
s370_1E1B:
.LFB202:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE202:
	.size	s370_1E1B, .-s370_1E1B
	.p2align 4,,15
	.globl	s370_1E1C
	.type	s370_1E1C, @function
s370_1E1C:
.LFB203:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE203:
	.size	s370_1E1C, .-s370_1E1C
	.p2align 4,,15
	.globl	s370_1E1D
	.type	s370_1E1D, @function
s370_1E1D:
.LFB204:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE204:
	.size	s370_1E1D, .-s370_1E1D
	.p2align 4,,15
	.globl	s370_1E1E
	.type	s370_1E1E, @function
s370_1E1E:
.LFB205:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE205:
	.size	s370_1E1E, .-s370_1E1E
	.p2align 4,,15
	.globl	s370_1E1F
	.type	s370_1E1F, @function
s370_1E1F:
.LFB206:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE206:
	.size	s370_1E1F, .-s370_1E1F
	.p2align 4,,15
	.globl	s370_1E20
	.type	s370_1E20, @function
s370_1E20:
.LFB207:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE207:
	.size	s370_1E20, .-s370_1E20
	.p2align 4,,15
	.globl	s370_1E21
	.type	s370_1E21, @function
s370_1E21:
.LFB208:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE208:
	.size	s370_1E21, .-s370_1E21
	.p2align 4,,15
	.globl	s370_1E22
	.type	s370_1E22, @function
s370_1E22:
.LFB209:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE209:
	.size	s370_1E22, .-s370_1E22
	.p2align 4,,15
	.globl	s370_1E23
	.type	s370_1E23, @function
s370_1E23:
.LFB210:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE210:
	.size	s370_1E23, .-s370_1E23
	.p2align 4,,15
	.globl	s370_1E24
	.type	s370_1E24, @function
s370_1E24:
.LFB211:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE211:
	.size	s370_1E24, .-s370_1E24
	.p2align 4,,15
	.globl	s370_1E25
	.type	s370_1E25, @function
s370_1E25:
.LFB212:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE212:
	.size	s370_1E25, .-s370_1E25
	.p2align 4,,15
	.globl	s370_1E26
	.type	s370_1E26, @function
s370_1E26:
.LFB213:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE213:
	.size	s370_1E26, .-s370_1E26
	.p2align 4,,15
	.globl	s370_1E27
	.type	s370_1E27, @function
s370_1E27:
.LFB214:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE214:
	.size	s370_1E27, .-s370_1E27
	.p2align 4,,15
	.globl	s370_1E28
	.type	s370_1E28, @function
s370_1E28:
.LFB215:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE215:
	.size	s370_1E28, .-s370_1E28
	.p2align 4,,15
	.globl	s370_1E29
	.type	s370_1E29, @function
s370_1E29:
.LFB216:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE216:
	.size	s370_1E29, .-s370_1E29
	.p2align 4,,15
	.globl	s370_1E2A
	.type	s370_1E2A, @function
s370_1E2A:
.LFB217:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE217:
	.size	s370_1E2A, .-s370_1E2A
	.p2align 4,,15
	.globl	s370_1E2B
	.type	s370_1E2B, @function
s370_1E2B:
.LFB218:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE218:
	.size	s370_1E2B, .-s370_1E2B
	.p2align 4,,15
	.globl	s370_1E2C
	.type	s370_1E2C, @function
s370_1E2C:
.LFB219:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE219:
	.size	s370_1E2C, .-s370_1E2C
	.p2align 4,,15
	.globl	s370_1E2D
	.type	s370_1E2D, @function
s370_1E2D:
.LFB220:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE220:
	.size	s370_1E2D, .-s370_1E2D
	.p2align 4,,15
	.globl	s370_1E2E
	.type	s370_1E2E, @function
s370_1E2E:
.LFB221:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE221:
	.size	s370_1E2E, .-s370_1E2E
	.p2align 4,,15
	.globl	s370_1E2F
	.type	s370_1E2F, @function
s370_1E2F:
.LFB222:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE222:
	.size	s370_1E2F, .-s370_1E2F
	.p2align 4,,15
	.globl	s370_1E30
	.type	s370_1E30, @function
s370_1E30:
.LFB223:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE223:
	.size	s370_1E30, .-s370_1E30
	.p2align 4,,15
	.globl	s370_1E31
	.type	s370_1E31, @function
s370_1E31:
.LFB224:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE224:
	.size	s370_1E31, .-s370_1E31
	.p2align 4,,15
	.globl	s370_1E32
	.type	s370_1E32, @function
s370_1E32:
.LFB225:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE225:
	.size	s370_1E32, .-s370_1E32
	.p2align 4,,15
	.globl	s370_1E33
	.type	s370_1E33, @function
s370_1E33:
.LFB226:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE226:
	.size	s370_1E33, .-s370_1E33
	.p2align 4,,15
	.globl	s370_1E34
	.type	s370_1E34, @function
s370_1E34:
.LFB227:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE227:
	.size	s370_1E34, .-s370_1E34
	.p2align 4,,15
	.globl	s370_1E35
	.type	s370_1E35, @function
s370_1E35:
.LFB228:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE228:
	.size	s370_1E35, .-s370_1E35
	.p2align 4,,15
	.globl	s370_1E36
	.type	s370_1E36, @function
s370_1E36:
.LFB229:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE229:
	.size	s370_1E36, .-s370_1E36
	.p2align 4,,15
	.globl	s370_1E37
	.type	s370_1E37, @function
s370_1E37:
.LFB230:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE230:
	.size	s370_1E37, .-s370_1E37
	.p2align 4,,15
	.globl	s370_1E38
	.type	s370_1E38, @function
s370_1E38:
.LFB231:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE231:
	.size	s370_1E38, .-s370_1E38
	.p2align 4,,15
	.globl	s370_1E39
	.type	s370_1E39, @function
s370_1E39:
.LFB232:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE232:
	.size	s370_1E39, .-s370_1E39
	.p2align 4,,15
	.globl	s370_1E3A
	.type	s370_1E3A, @function
s370_1E3A:
.LFB233:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE233:
	.size	s370_1E3A, .-s370_1E3A
	.p2align 4,,15
	.globl	s370_1E3B
	.type	s370_1E3B, @function
s370_1E3B:
.LFB234:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE234:
	.size	s370_1E3B, .-s370_1E3B
	.p2align 4,,15
	.globl	s370_1E3C
	.type	s370_1E3C, @function
s370_1E3C:
.LFB235:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE235:
	.size	s370_1E3C, .-s370_1E3C
	.p2align 4,,15
	.globl	s370_1E3D
	.type	s370_1E3D, @function
s370_1E3D:
.LFB236:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE236:
	.size	s370_1E3D, .-s370_1E3D
	.p2align 4,,15
	.globl	s370_1E3E
	.type	s370_1E3E, @function
s370_1E3E:
.LFB237:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE237:
	.size	s370_1E3E, .-s370_1E3E
	.p2align 4,,15
	.globl	s370_1E3F
	.type	s370_1E3F, @function
s370_1E3F:
.LFB238:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE238:
	.size	s370_1E3F, .-s370_1E3F
	.p2align 4,,15
	.globl	s370_1E40
	.type	s370_1E40, @function
s370_1E40:
.LFB239:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE239:
	.size	s370_1E40, .-s370_1E40
	.p2align 4,,15
	.globl	s370_1E41
	.type	s370_1E41, @function
s370_1E41:
.LFB240:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE240:
	.size	s370_1E41, .-s370_1E41
	.p2align 4,,15
	.globl	s370_1E42
	.type	s370_1E42, @function
s370_1E42:
.LFB241:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE241:
	.size	s370_1E42, .-s370_1E42
	.p2align 4,,15
	.globl	s370_1E43
	.type	s370_1E43, @function
s370_1E43:
.LFB242:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE242:
	.size	s370_1E43, .-s370_1E43
	.p2align 4,,15
	.globl	s370_1E44
	.type	s370_1E44, @function
s370_1E44:
.LFB243:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE243:
	.size	s370_1E44, .-s370_1E44
	.p2align 4,,15
	.globl	s370_1E45
	.type	s370_1E45, @function
s370_1E45:
.LFB244:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE244:
	.size	s370_1E45, .-s370_1E45
	.p2align 4,,15
	.globl	s370_1E46
	.type	s370_1E46, @function
s370_1E46:
.LFB245:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE245:
	.size	s370_1E46, .-s370_1E46
	.p2align 4,,15
	.globl	s370_1E47
	.type	s370_1E47, @function
s370_1E47:
.LFB246:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE246:
	.size	s370_1E47, .-s370_1E47
	.p2align 4,,15
	.globl	s370_1E48
	.type	s370_1E48, @function
s370_1E48:
.LFB247:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE247:
	.size	s370_1E48, .-s370_1E48
	.p2align 4,,15
	.globl	s370_1E49
	.type	s370_1E49, @function
s370_1E49:
.LFB248:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE248:
	.size	s370_1E49, .-s370_1E49
	.p2align 4,,15
	.globl	s370_1E4A
	.type	s370_1E4A, @function
s370_1E4A:
.LFB249:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE249:
	.size	s370_1E4A, .-s370_1E4A
	.p2align 4,,15
	.globl	s370_1E4B
	.type	s370_1E4B, @function
s370_1E4B:
.LFB250:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE250:
	.size	s370_1E4B, .-s370_1E4B
	.p2align 4,,15
	.globl	s370_1E4C
	.type	s370_1E4C, @function
s370_1E4C:
.LFB251:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE251:
	.size	s370_1E4C, .-s370_1E4C
	.p2align 4,,15
	.globl	s370_1E4D
	.type	s370_1E4D, @function
s370_1E4D:
.LFB252:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE252:
	.size	s370_1E4D, .-s370_1E4D
	.p2align 4,,15
	.globl	s370_1E4E
	.type	s370_1E4E, @function
s370_1E4E:
.LFB253:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE253:
	.size	s370_1E4E, .-s370_1E4E
	.p2align 4,,15
	.globl	s370_1E4F
	.type	s370_1E4F, @function
s370_1E4F:
.LFB254:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE254:
	.size	s370_1E4F, .-s370_1E4F
	.p2align 4,,15
	.globl	s370_1E50
	.type	s370_1E50, @function
s370_1E50:
.LFB255:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE255:
	.size	s370_1E50, .-s370_1E50
	.p2align 4,,15
	.globl	s370_1E51
	.type	s370_1E51, @function
s370_1E51:
.LFB256:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE256:
	.size	s370_1E51, .-s370_1E51
	.p2align 4,,15
	.globl	s370_1E52
	.type	s370_1E52, @function
s370_1E52:
.LFB257:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE257:
	.size	s370_1E52, .-s370_1E52
	.p2align 4,,15
	.globl	s370_1E53
	.type	s370_1E53, @function
s370_1E53:
.LFB258:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE258:
	.size	s370_1E53, .-s370_1E53
	.p2align 4,,15
	.globl	s370_1E54
	.type	s370_1E54, @function
s370_1E54:
.LFB259:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE259:
	.size	s370_1E54, .-s370_1E54
	.p2align 4,,15
	.globl	s370_1E55
	.type	s370_1E55, @function
s370_1E55:
.LFB260:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE260:
	.size	s370_1E55, .-s370_1E55
	.p2align 4,,15
	.globl	s370_1E56
	.type	s370_1E56, @function
s370_1E56:
.LFB261:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE261:
	.size	s370_1E56, .-s370_1E56
	.p2align 4,,15
	.globl	s370_1E57
	.type	s370_1E57, @function
s370_1E57:
.LFB262:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE262:
	.size	s370_1E57, .-s370_1E57
	.p2align 4,,15
	.globl	s370_1E58
	.type	s370_1E58, @function
s370_1E58:
.LFB263:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE263:
	.size	s370_1E58, .-s370_1E58
	.p2align 4,,15
	.globl	s370_1E59
	.type	s370_1E59, @function
s370_1E59:
.LFB264:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE264:
	.size	s370_1E59, .-s370_1E59
	.p2align 4,,15
	.globl	s370_1E5A
	.type	s370_1E5A, @function
s370_1E5A:
.LFB265:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE265:
	.size	s370_1E5A, .-s370_1E5A
	.p2align 4,,15
	.globl	s370_1E5B
	.type	s370_1E5B, @function
s370_1E5B:
.LFB266:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE266:
	.size	s370_1E5B, .-s370_1E5B
	.p2align 4,,15
	.globl	s370_1E5C
	.type	s370_1E5C, @function
s370_1E5C:
.LFB267:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE267:
	.size	s370_1E5C, .-s370_1E5C
	.p2align 4,,15
	.globl	s370_1E5D
	.type	s370_1E5D, @function
s370_1E5D:
.LFB268:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE268:
	.size	s370_1E5D, .-s370_1E5D
	.p2align 4,,15
	.globl	s370_1E5E
	.type	s370_1E5E, @function
s370_1E5E:
.LFB269:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE269:
	.size	s370_1E5E, .-s370_1E5E
	.p2align 4,,15
	.globl	s370_1E5F
	.type	s370_1E5F, @function
s370_1E5F:
.LFB270:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE270:
	.size	s370_1E5F, .-s370_1E5F
	.p2align 4,,15
	.globl	s370_1E60
	.type	s370_1E60, @function
s370_1E60:
.LFB271:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE271:
	.size	s370_1E60, .-s370_1E60
	.p2align 4,,15
	.globl	s370_1E61
	.type	s370_1E61, @function
s370_1E61:
.LFB272:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE272:
	.size	s370_1E61, .-s370_1E61
	.p2align 4,,15
	.globl	s370_1E62
	.type	s370_1E62, @function
s370_1E62:
.LFB273:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE273:
	.size	s370_1E62, .-s370_1E62
	.p2align 4,,15
	.globl	s370_1E63
	.type	s370_1E63, @function
s370_1E63:
.LFB274:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE274:
	.size	s370_1E63, .-s370_1E63
	.p2align 4,,15
	.globl	s370_1E64
	.type	s370_1E64, @function
s370_1E64:
.LFB275:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE275:
	.size	s370_1E64, .-s370_1E64
	.p2align 4,,15
	.globl	s370_1E65
	.type	s370_1E65, @function
s370_1E65:
.LFB276:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE276:
	.size	s370_1E65, .-s370_1E65
	.p2align 4,,15
	.globl	s370_1E66
	.type	s370_1E66, @function
s370_1E66:
.LFB277:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE277:
	.size	s370_1E66, .-s370_1E66
	.p2align 4,,15
	.globl	s370_1E67
	.type	s370_1E67, @function
s370_1E67:
.LFB278:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE278:
	.size	s370_1E67, .-s370_1E67
	.p2align 4,,15
	.globl	s370_1E68
	.type	s370_1E68, @function
s370_1E68:
.LFB279:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE279:
	.size	s370_1E68, .-s370_1E68
	.p2align 4,,15
	.globl	s370_1E69
	.type	s370_1E69, @function
s370_1E69:
.LFB280:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE280:
	.size	s370_1E69, .-s370_1E69
	.p2align 4,,15
	.globl	s370_1E6A
	.type	s370_1E6A, @function
s370_1E6A:
.LFB281:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE281:
	.size	s370_1E6A, .-s370_1E6A
	.p2align 4,,15
	.globl	s370_1E6B
	.type	s370_1E6B, @function
s370_1E6B:
.LFB282:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE282:
	.size	s370_1E6B, .-s370_1E6B
	.p2align 4,,15
	.globl	s370_1E6C
	.type	s370_1E6C, @function
s370_1E6C:
.LFB283:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE283:
	.size	s370_1E6C, .-s370_1E6C
	.p2align 4,,15
	.globl	s370_1E6D
	.type	s370_1E6D, @function
s370_1E6D:
.LFB284:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE284:
	.size	s370_1E6D, .-s370_1E6D
	.p2align 4,,15
	.globl	s370_1E6E
	.type	s370_1E6E, @function
s370_1E6E:
.LFB285:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE285:
	.size	s370_1E6E, .-s370_1E6E
	.p2align 4,,15
	.globl	s370_1E6F
	.type	s370_1E6F, @function
s370_1E6F:
.LFB286:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE286:
	.size	s370_1E6F, .-s370_1E6F
	.p2align 4,,15
	.globl	s370_1E70
	.type	s370_1E70, @function
s370_1E70:
.LFB287:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE287:
	.size	s370_1E70, .-s370_1E70
	.p2align 4,,15
	.globl	s370_1E71
	.type	s370_1E71, @function
s370_1E71:
.LFB288:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE288:
	.size	s370_1E71, .-s370_1E71
	.p2align 4,,15
	.globl	s370_1E72
	.type	s370_1E72, @function
s370_1E72:
.LFB289:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE289:
	.size	s370_1E72, .-s370_1E72
	.p2align 4,,15
	.globl	s370_1E73
	.type	s370_1E73, @function
s370_1E73:
.LFB290:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE290:
	.size	s370_1E73, .-s370_1E73
	.p2align 4,,15
	.globl	s370_1E74
	.type	s370_1E74, @function
s370_1E74:
.LFB291:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE291:
	.size	s370_1E74, .-s370_1E74
	.p2align 4,,15
	.globl	s370_1E75
	.type	s370_1E75, @function
s370_1E75:
.LFB292:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE292:
	.size	s370_1E75, .-s370_1E75
	.p2align 4,,15
	.globl	s370_1E76
	.type	s370_1E76, @function
s370_1E76:
.LFB293:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE293:
	.size	s370_1E76, .-s370_1E76
	.p2align 4,,15
	.globl	s370_1E77
	.type	s370_1E77, @function
s370_1E77:
.LFB294:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE294:
	.size	s370_1E77, .-s370_1E77
	.p2align 4,,15
	.globl	s370_1E78
	.type	s370_1E78, @function
s370_1E78:
.LFB295:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE295:
	.size	s370_1E78, .-s370_1E78
	.p2align 4,,15
	.globl	s370_1E79
	.type	s370_1E79, @function
s370_1E79:
.LFB296:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE296:
	.size	s370_1E79, .-s370_1E79
	.p2align 4,,15
	.globl	s370_1E7A
	.type	s370_1E7A, @function
s370_1E7A:
.LFB297:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE297:
	.size	s370_1E7A, .-s370_1E7A
	.p2align 4,,15
	.globl	s370_1E7B
	.type	s370_1E7B, @function
s370_1E7B:
.LFB298:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE298:
	.size	s370_1E7B, .-s370_1E7B
	.p2align 4,,15
	.globl	s370_1E7C
	.type	s370_1E7C, @function
s370_1E7C:
.LFB299:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE299:
	.size	s370_1E7C, .-s370_1E7C
	.p2align 4,,15
	.globl	s370_1E7D
	.type	s370_1E7D, @function
s370_1E7D:
.LFB300:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE300:
	.size	s370_1E7D, .-s370_1E7D
	.p2align 4,,15
	.globl	s370_1E7E
	.type	s370_1E7E, @function
s370_1E7E:
.LFB301:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE301:
	.size	s370_1E7E, .-s370_1E7E
	.p2align 4,,15
	.globl	s370_1E7F
	.type	s370_1E7F, @function
s370_1E7F:
.LFB302:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE302:
	.size	s370_1E7F, .-s370_1E7F
	.p2align 4,,15
	.globl	s370_1E80
	.type	s370_1E80, @function
s370_1E80:
.LFB303:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE303:
	.size	s370_1E80, .-s370_1E80
	.p2align 4,,15
	.globl	s370_1E81
	.type	s370_1E81, @function
s370_1E81:
.LFB304:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE304:
	.size	s370_1E81, .-s370_1E81
	.p2align 4,,15
	.globl	s370_1E82
	.type	s370_1E82, @function
s370_1E82:
.LFB305:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE305:
	.size	s370_1E82, .-s370_1E82
	.p2align 4,,15
	.globl	s370_1E83
	.type	s370_1E83, @function
s370_1E83:
.LFB306:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE306:
	.size	s370_1E83, .-s370_1E83
	.p2align 4,,15
	.globl	s370_1E84
	.type	s370_1E84, @function
s370_1E84:
.LFB307:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE307:
	.size	s370_1E84, .-s370_1E84
	.p2align 4,,15
	.globl	s370_1E85
	.type	s370_1E85, @function
s370_1E85:
.LFB308:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE308:
	.size	s370_1E85, .-s370_1E85
	.p2align 4,,15
	.globl	s370_1E86
	.type	s370_1E86, @function
s370_1E86:
.LFB309:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE309:
	.size	s370_1E86, .-s370_1E86
	.p2align 4,,15
	.globl	s370_1E87
	.type	s370_1E87, @function
s370_1E87:
.LFB310:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE310:
	.size	s370_1E87, .-s370_1E87
	.p2align 4,,15
	.globl	s370_1E88
	.type	s370_1E88, @function
s370_1E88:
.LFB311:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE311:
	.size	s370_1E88, .-s370_1E88
	.p2align 4,,15
	.globl	s370_1E89
	.type	s370_1E89, @function
s370_1E89:
.LFB312:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE312:
	.size	s370_1E89, .-s370_1E89
	.p2align 4,,15
	.globl	s370_1E8A
	.type	s370_1E8A, @function
s370_1E8A:
.LFB313:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE313:
	.size	s370_1E8A, .-s370_1E8A
	.p2align 4,,15
	.globl	s370_1E8B
	.type	s370_1E8B, @function
s370_1E8B:
.LFB314:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE314:
	.size	s370_1E8B, .-s370_1E8B
	.p2align 4,,15
	.globl	s370_1E8C
	.type	s370_1E8C, @function
s370_1E8C:
.LFB315:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE315:
	.size	s370_1E8C, .-s370_1E8C
	.p2align 4,,15
	.globl	s370_1E8D
	.type	s370_1E8D, @function
s370_1E8D:
.LFB316:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE316:
	.size	s370_1E8D, .-s370_1E8D
	.p2align 4,,15
	.globl	s370_1E8E
	.type	s370_1E8E, @function
s370_1E8E:
.LFB317:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE317:
	.size	s370_1E8E, .-s370_1E8E
	.p2align 4,,15
	.globl	s370_1E8F
	.type	s370_1E8F, @function
s370_1E8F:
.LFB318:
	.cfi_startproc
	movl	256(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 256(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE318:
	.size	s370_1E8F, .-s370_1E8F
	.p2align 4,,15
	.globl	s370_1E90
	.type	s370_1E90, @function
s370_1E90:
.LFB319:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE319:
	.size	s370_1E90, .-s370_1E90
	.p2align 4,,15
	.globl	s370_1E91
	.type	s370_1E91, @function
s370_1E91:
.LFB320:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE320:
	.size	s370_1E91, .-s370_1E91
	.p2align 4,,15
	.globl	s370_1E92
	.type	s370_1E92, @function
s370_1E92:
.LFB321:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE321:
	.size	s370_1E92, .-s370_1E92
	.p2align 4,,15
	.globl	s370_1E93
	.type	s370_1E93, @function
s370_1E93:
.LFB322:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE322:
	.size	s370_1E93, .-s370_1E93
	.p2align 4,,15
	.globl	s370_1E94
	.type	s370_1E94, @function
s370_1E94:
.LFB323:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE323:
	.size	s370_1E94, .-s370_1E94
	.p2align 4,,15
	.globl	s370_1E95
	.type	s370_1E95, @function
s370_1E95:
.LFB324:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE324:
	.size	s370_1E95, .-s370_1E95
	.p2align 4,,15
	.globl	s370_1E96
	.type	s370_1E96, @function
s370_1E96:
.LFB325:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE325:
	.size	s370_1E96, .-s370_1E96
	.p2align 4,,15
	.globl	s370_1E97
	.type	s370_1E97, @function
s370_1E97:
.LFB326:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE326:
	.size	s370_1E97, .-s370_1E97
	.p2align 4,,15
	.globl	s370_1E98
	.type	s370_1E98, @function
s370_1E98:
.LFB327:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE327:
	.size	s370_1E98, .-s370_1E98
	.p2align 4,,15
	.globl	s370_1E99
	.type	s370_1E99, @function
s370_1E99:
.LFB328:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE328:
	.size	s370_1E99, .-s370_1E99
	.p2align 4,,15
	.globl	s370_1E9A
	.type	s370_1E9A, @function
s370_1E9A:
.LFB329:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE329:
	.size	s370_1E9A, .-s370_1E9A
	.p2align 4,,15
	.globl	s370_1E9B
	.type	s370_1E9B, @function
s370_1E9B:
.LFB330:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE330:
	.size	s370_1E9B, .-s370_1E9B
	.p2align 4,,15
	.globl	s370_1E9C
	.type	s370_1E9C, @function
s370_1E9C:
.LFB331:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE331:
	.size	s370_1E9C, .-s370_1E9C
	.p2align 4,,15
	.globl	s370_1E9D
	.type	s370_1E9D, @function
s370_1E9D:
.LFB332:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE332:
	.size	s370_1E9D, .-s370_1E9D
	.p2align 4,,15
	.globl	s370_1E9E
	.type	s370_1E9E, @function
s370_1E9E:
.LFB333:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE333:
	.size	s370_1E9E, .-s370_1E9E
	.p2align 4,,15
	.globl	s370_1E9F
	.type	s370_1E9F, @function
s370_1E9F:
.LFB334:
	.cfi_startproc
	movl	264(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 264(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE334:
	.size	s370_1E9F, .-s370_1E9F
	.p2align 4,,15
	.globl	s370_1EA0
	.type	s370_1EA0, @function
s370_1EA0:
.LFB335:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE335:
	.size	s370_1EA0, .-s370_1EA0
	.p2align 4,,15
	.globl	s370_1EA1
	.type	s370_1EA1, @function
s370_1EA1:
.LFB336:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE336:
	.size	s370_1EA1, .-s370_1EA1
	.p2align 4,,15
	.globl	s370_1EA2
	.type	s370_1EA2, @function
s370_1EA2:
.LFB337:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE337:
	.size	s370_1EA2, .-s370_1EA2
	.p2align 4,,15
	.globl	s370_1EA3
	.type	s370_1EA3, @function
s370_1EA3:
.LFB338:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE338:
	.size	s370_1EA3, .-s370_1EA3
	.p2align 4,,15
	.globl	s370_1EA4
	.type	s370_1EA4, @function
s370_1EA4:
.LFB339:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE339:
	.size	s370_1EA4, .-s370_1EA4
	.p2align 4,,15
	.globl	s370_1EA5
	.type	s370_1EA5, @function
s370_1EA5:
.LFB340:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE340:
	.size	s370_1EA5, .-s370_1EA5
	.p2align 4,,15
	.globl	s370_1EA6
	.type	s370_1EA6, @function
s370_1EA6:
.LFB341:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE341:
	.size	s370_1EA6, .-s370_1EA6
	.p2align 4,,15
	.globl	s370_1EA7
	.type	s370_1EA7, @function
s370_1EA7:
.LFB342:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE342:
	.size	s370_1EA7, .-s370_1EA7
	.p2align 4,,15
	.globl	s370_1EA8
	.type	s370_1EA8, @function
s370_1EA8:
.LFB343:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE343:
	.size	s370_1EA8, .-s370_1EA8
	.p2align 4,,15
	.globl	s370_1EA9
	.type	s370_1EA9, @function
s370_1EA9:
.LFB344:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE344:
	.size	s370_1EA9, .-s370_1EA9
	.p2align 4,,15
	.globl	s370_1EAA
	.type	s370_1EAA, @function
s370_1EAA:
.LFB345:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE345:
	.size	s370_1EAA, .-s370_1EAA
	.p2align 4,,15
	.globl	s370_1EAB
	.type	s370_1EAB, @function
s370_1EAB:
.LFB346:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE346:
	.size	s370_1EAB, .-s370_1EAB
	.p2align 4,,15
	.globl	s370_1EAC
	.type	s370_1EAC, @function
s370_1EAC:
.LFB347:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE347:
	.size	s370_1EAC, .-s370_1EAC
	.p2align 4,,15
	.globl	s370_1EAD
	.type	s370_1EAD, @function
s370_1EAD:
.LFB348:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE348:
	.size	s370_1EAD, .-s370_1EAD
	.p2align 4,,15
	.globl	s370_1EAE
	.type	s370_1EAE, @function
s370_1EAE:
.LFB349:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE349:
	.size	s370_1EAE, .-s370_1EAE
	.p2align 4,,15
	.globl	s370_1EAF
	.type	s370_1EAF, @function
s370_1EAF:
.LFB350:
	.cfi_startproc
	movl	272(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 272(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE350:
	.size	s370_1EAF, .-s370_1EAF
	.p2align 4,,15
	.globl	s370_1EB0
	.type	s370_1EB0, @function
s370_1EB0:
.LFB351:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE351:
	.size	s370_1EB0, .-s370_1EB0
	.p2align 4,,15
	.globl	s370_1EB1
	.type	s370_1EB1, @function
s370_1EB1:
.LFB352:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE352:
	.size	s370_1EB1, .-s370_1EB1
	.p2align 4,,15
	.globl	s370_1EB2
	.type	s370_1EB2, @function
s370_1EB2:
.LFB353:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE353:
	.size	s370_1EB2, .-s370_1EB2
	.p2align 4,,15
	.globl	s370_1EB3
	.type	s370_1EB3, @function
s370_1EB3:
.LFB354:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE354:
	.size	s370_1EB3, .-s370_1EB3
	.p2align 4,,15
	.globl	s370_1EB4
	.type	s370_1EB4, @function
s370_1EB4:
.LFB355:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE355:
	.size	s370_1EB4, .-s370_1EB4
	.p2align 4,,15
	.globl	s370_1EB5
	.type	s370_1EB5, @function
s370_1EB5:
.LFB356:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE356:
	.size	s370_1EB5, .-s370_1EB5
	.p2align 4,,15
	.globl	s370_1EB6
	.type	s370_1EB6, @function
s370_1EB6:
.LFB357:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE357:
	.size	s370_1EB6, .-s370_1EB6
	.p2align 4,,15
	.globl	s370_1EB7
	.type	s370_1EB7, @function
s370_1EB7:
.LFB358:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE358:
	.size	s370_1EB7, .-s370_1EB7
	.p2align 4,,15
	.globl	s370_1EB8
	.type	s370_1EB8, @function
s370_1EB8:
.LFB359:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE359:
	.size	s370_1EB8, .-s370_1EB8
	.p2align 4,,15
	.globl	s370_1EB9
	.type	s370_1EB9, @function
s370_1EB9:
.LFB360:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE360:
	.size	s370_1EB9, .-s370_1EB9
	.p2align 4,,15
	.globl	s370_1EBA
	.type	s370_1EBA, @function
s370_1EBA:
.LFB361:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE361:
	.size	s370_1EBA, .-s370_1EBA
	.p2align 4,,15
	.globl	s370_1EBB
	.type	s370_1EBB, @function
s370_1EBB:
.LFB362:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE362:
	.size	s370_1EBB, .-s370_1EBB
	.p2align 4,,15
	.globl	s370_1EBC
	.type	s370_1EBC, @function
s370_1EBC:
.LFB363:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE363:
	.size	s370_1EBC, .-s370_1EBC
	.p2align 4,,15
	.globl	s370_1EBD
	.type	s370_1EBD, @function
s370_1EBD:
.LFB364:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE364:
	.size	s370_1EBD, .-s370_1EBD
	.p2align 4,,15
	.globl	s370_1EBE
	.type	s370_1EBE, @function
s370_1EBE:
.LFB365:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE365:
	.size	s370_1EBE, .-s370_1EBE
	.p2align 4,,15
	.globl	s370_1EBF
	.type	s370_1EBF, @function
s370_1EBF:
.LFB366:
	.cfi_startproc
	movl	280(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 280(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE366:
	.size	s370_1EBF, .-s370_1EBF
	.p2align 4,,15
	.globl	s370_1EC0
	.type	s370_1EC0, @function
s370_1EC0:
.LFB367:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE367:
	.size	s370_1EC0, .-s370_1EC0
	.p2align 4,,15
	.globl	s370_1EC1
	.type	s370_1EC1, @function
s370_1EC1:
.LFB368:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE368:
	.size	s370_1EC1, .-s370_1EC1
	.p2align 4,,15
	.globl	s370_1EC2
	.type	s370_1EC2, @function
s370_1EC2:
.LFB369:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE369:
	.size	s370_1EC2, .-s370_1EC2
	.p2align 4,,15
	.globl	s370_1EC3
	.type	s370_1EC3, @function
s370_1EC3:
.LFB370:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE370:
	.size	s370_1EC3, .-s370_1EC3
	.p2align 4,,15
	.globl	s370_1EC4
	.type	s370_1EC4, @function
s370_1EC4:
.LFB371:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE371:
	.size	s370_1EC4, .-s370_1EC4
	.p2align 4,,15
	.globl	s370_1EC5
	.type	s370_1EC5, @function
s370_1EC5:
.LFB372:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE372:
	.size	s370_1EC5, .-s370_1EC5
	.p2align 4,,15
	.globl	s370_1EC6
	.type	s370_1EC6, @function
s370_1EC6:
.LFB373:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE373:
	.size	s370_1EC6, .-s370_1EC6
	.p2align 4,,15
	.globl	s370_1EC7
	.type	s370_1EC7, @function
s370_1EC7:
.LFB374:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE374:
	.size	s370_1EC7, .-s370_1EC7
	.p2align 4,,15
	.globl	s370_1EC8
	.type	s370_1EC8, @function
s370_1EC8:
.LFB375:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE375:
	.size	s370_1EC8, .-s370_1EC8
	.p2align 4,,15
	.globl	s370_1EC9
	.type	s370_1EC9, @function
s370_1EC9:
.LFB376:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE376:
	.size	s370_1EC9, .-s370_1EC9
	.p2align 4,,15
	.globl	s370_1ECA
	.type	s370_1ECA, @function
s370_1ECA:
.LFB377:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE377:
	.size	s370_1ECA, .-s370_1ECA
	.p2align 4,,15
	.globl	s370_1ECB
	.type	s370_1ECB, @function
s370_1ECB:
.LFB378:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE378:
	.size	s370_1ECB, .-s370_1ECB
	.p2align 4,,15
	.globl	s370_1ECC
	.type	s370_1ECC, @function
s370_1ECC:
.LFB379:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE379:
	.size	s370_1ECC, .-s370_1ECC
	.p2align 4,,15
	.globl	s370_1ECD
	.type	s370_1ECD, @function
s370_1ECD:
.LFB380:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE380:
	.size	s370_1ECD, .-s370_1ECD
	.p2align 4,,15
	.globl	s370_1ECE
	.type	s370_1ECE, @function
s370_1ECE:
.LFB381:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE381:
	.size	s370_1ECE, .-s370_1ECE
	.p2align 4,,15
	.globl	s370_1ECF
	.type	s370_1ECF, @function
s370_1ECF:
.LFB382:
	.cfi_startproc
	movl	288(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 288(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE382:
	.size	s370_1ECF, .-s370_1ECF
	.p2align 4,,15
	.globl	s370_1ED0
	.type	s370_1ED0, @function
s370_1ED0:
.LFB383:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE383:
	.size	s370_1ED0, .-s370_1ED0
	.p2align 4,,15
	.globl	s370_1ED1
	.type	s370_1ED1, @function
s370_1ED1:
.LFB384:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE384:
	.size	s370_1ED1, .-s370_1ED1
	.p2align 4,,15
	.globl	s370_1ED2
	.type	s370_1ED2, @function
s370_1ED2:
.LFB385:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE385:
	.size	s370_1ED2, .-s370_1ED2
	.p2align 4,,15
	.globl	s370_1ED3
	.type	s370_1ED3, @function
s370_1ED3:
.LFB386:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE386:
	.size	s370_1ED3, .-s370_1ED3
	.p2align 4,,15
	.globl	s370_1ED4
	.type	s370_1ED4, @function
s370_1ED4:
.LFB387:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE387:
	.size	s370_1ED4, .-s370_1ED4
	.p2align 4,,15
	.globl	s370_1ED5
	.type	s370_1ED5, @function
s370_1ED5:
.LFB388:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE388:
	.size	s370_1ED5, .-s370_1ED5
	.p2align 4,,15
	.globl	s370_1ED6
	.type	s370_1ED6, @function
s370_1ED6:
.LFB389:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE389:
	.size	s370_1ED6, .-s370_1ED6
	.p2align 4,,15
	.globl	s370_1ED7
	.type	s370_1ED7, @function
s370_1ED7:
.LFB390:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE390:
	.size	s370_1ED7, .-s370_1ED7
	.p2align 4,,15
	.globl	s370_1ED8
	.type	s370_1ED8, @function
s370_1ED8:
.LFB391:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE391:
	.size	s370_1ED8, .-s370_1ED8
	.p2align 4,,15
	.globl	s370_1ED9
	.type	s370_1ED9, @function
s370_1ED9:
.LFB392:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE392:
	.size	s370_1ED9, .-s370_1ED9
	.p2align 4,,15
	.globl	s370_1EDA
	.type	s370_1EDA, @function
s370_1EDA:
.LFB393:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE393:
	.size	s370_1EDA, .-s370_1EDA
	.p2align 4,,15
	.globl	s370_1EDB
	.type	s370_1EDB, @function
s370_1EDB:
.LFB394:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE394:
	.size	s370_1EDB, .-s370_1EDB
	.p2align 4,,15
	.globl	s370_1EDC
	.type	s370_1EDC, @function
s370_1EDC:
.LFB395:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE395:
	.size	s370_1EDC, .-s370_1EDC
	.p2align 4,,15
	.globl	s370_1EDD
	.type	s370_1EDD, @function
s370_1EDD:
.LFB396:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE396:
	.size	s370_1EDD, .-s370_1EDD
	.p2align 4,,15
	.globl	s370_1EDE
	.type	s370_1EDE, @function
s370_1EDE:
.LFB397:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE397:
	.size	s370_1EDE, .-s370_1EDE
	.p2align 4,,15
	.globl	s370_1EDF
	.type	s370_1EDF, @function
s370_1EDF:
.LFB398:
	.cfi_startproc
	movl	296(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 296(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE398:
	.size	s370_1EDF, .-s370_1EDF
	.p2align 4,,15
	.globl	s370_1EE0
	.type	s370_1EE0, @function
s370_1EE0:
.LFB399:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE399:
	.size	s370_1EE0, .-s370_1EE0
	.p2align 4,,15
	.globl	s370_1EE1
	.type	s370_1EE1, @function
s370_1EE1:
.LFB400:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE400:
	.size	s370_1EE1, .-s370_1EE1
	.p2align 4,,15
	.globl	s370_1EE2
	.type	s370_1EE2, @function
s370_1EE2:
.LFB401:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE401:
	.size	s370_1EE2, .-s370_1EE2
	.p2align 4,,15
	.globl	s370_1EE3
	.type	s370_1EE3, @function
s370_1EE3:
.LFB402:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE402:
	.size	s370_1EE3, .-s370_1EE3
	.p2align 4,,15
	.globl	s370_1EE4
	.type	s370_1EE4, @function
s370_1EE4:
.LFB403:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE403:
	.size	s370_1EE4, .-s370_1EE4
	.p2align 4,,15
	.globl	s370_1EE5
	.type	s370_1EE5, @function
s370_1EE5:
.LFB404:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE404:
	.size	s370_1EE5, .-s370_1EE5
	.p2align 4,,15
	.globl	s370_1EE6
	.type	s370_1EE6, @function
s370_1EE6:
.LFB405:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE405:
	.size	s370_1EE6, .-s370_1EE6
	.p2align 4,,15
	.globl	s370_1EE7
	.type	s370_1EE7, @function
s370_1EE7:
.LFB406:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE406:
	.size	s370_1EE7, .-s370_1EE7
	.p2align 4,,15
	.globl	s370_1EE8
	.type	s370_1EE8, @function
s370_1EE8:
.LFB407:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE407:
	.size	s370_1EE8, .-s370_1EE8
	.p2align 4,,15
	.globl	s370_1EE9
	.type	s370_1EE9, @function
s370_1EE9:
.LFB408:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE408:
	.size	s370_1EE9, .-s370_1EE9
	.p2align 4,,15
	.globl	s370_1EEA
	.type	s370_1EEA, @function
s370_1EEA:
.LFB409:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE409:
	.size	s370_1EEA, .-s370_1EEA
	.p2align 4,,15
	.globl	s370_1EEB
	.type	s370_1EEB, @function
s370_1EEB:
.LFB410:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE410:
	.size	s370_1EEB, .-s370_1EEB
	.p2align 4,,15
	.globl	s370_1EEC
	.type	s370_1EEC, @function
s370_1EEC:
.LFB411:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE411:
	.size	s370_1EEC, .-s370_1EEC
	.p2align 4,,15
	.globl	s370_1EED
	.type	s370_1EED, @function
s370_1EED:
.LFB412:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE412:
	.size	s370_1EED, .-s370_1EED
	.p2align 4,,15
	.globl	s370_1EEE
	.type	s370_1EEE, @function
s370_1EEE:
.LFB413:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE413:
	.size	s370_1EEE, .-s370_1EEE
	.p2align 4,,15
	.globl	s370_1EEF
	.type	s370_1EEF, @function
s370_1EEF:
.LFB414:
	.cfi_startproc
	movl	304(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 304(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE414:
	.size	s370_1EEF, .-s370_1EEF
	.p2align 4,,15
	.globl	s370_1EF0
	.type	s370_1EF0, @function
s370_1EF0:
.LFB415:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE415:
	.size	s370_1EF0, .-s370_1EF0
	.p2align 4,,15
	.globl	s370_1EF1
	.type	s370_1EF1, @function
s370_1EF1:
.LFB416:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE416:
	.size	s370_1EF1, .-s370_1EF1
	.p2align 4,,15
	.globl	s370_1EF2
	.type	s370_1EF2, @function
s370_1EF2:
.LFB417:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE417:
	.size	s370_1EF2, .-s370_1EF2
	.p2align 4,,15
	.globl	s370_1EF3
	.type	s370_1EF3, @function
s370_1EF3:
.LFB418:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE418:
	.size	s370_1EF3, .-s370_1EF3
	.p2align 4,,15
	.globl	s370_1EF4
	.type	s370_1EF4, @function
s370_1EF4:
.LFB419:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE419:
	.size	s370_1EF4, .-s370_1EF4
	.p2align 4,,15
	.globl	s370_1EF5
	.type	s370_1EF5, @function
s370_1EF5:
.LFB420:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE420:
	.size	s370_1EF5, .-s370_1EF5
	.p2align 4,,15
	.globl	s370_1EF6
	.type	s370_1EF6, @function
s370_1EF6:
.LFB421:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE421:
	.size	s370_1EF6, .-s370_1EF6
	.p2align 4,,15
	.globl	s370_1EF7
	.type	s370_1EF7, @function
s370_1EF7:
.LFB422:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE422:
	.size	s370_1EF7, .-s370_1EF7
	.p2align 4,,15
	.globl	s370_1EF8
	.type	s370_1EF8, @function
s370_1EF8:
.LFB423:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE423:
	.size	s370_1EF8, .-s370_1EF8
	.p2align 4,,15
	.globl	s370_1EF9
	.type	s370_1EF9, @function
s370_1EF9:
.LFB424:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE424:
	.size	s370_1EF9, .-s370_1EF9
	.p2align 4,,15
	.globl	s370_1EFA
	.type	s370_1EFA, @function
s370_1EFA:
.LFB425:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE425:
	.size	s370_1EFA, .-s370_1EFA
	.p2align 4,,15
	.globl	s370_1EFB
	.type	s370_1EFB, @function
s370_1EFB:
.LFB426:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE426:
	.size	s370_1EFB, .-s370_1EFB
	.p2align 4,,15
	.globl	s370_1EFC
	.type	s370_1EFC, @function
s370_1EFC:
.LFB427:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE427:
	.size	s370_1EFC, .-s370_1EFC
	.p2align 4,,15
	.globl	s370_1EFD
	.type	s370_1EFD, @function
s370_1EFD:
.LFB428:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE428:
	.size	s370_1EFD, .-s370_1EFD
	.p2align 4,,15
	.globl	s370_1EFE
	.type	s370_1EFE, @function
s370_1EFE:
.LFB429:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE429:
	.size	s370_1EFE, .-s370_1EFE
	.p2align 4,,15
	.globl	s370_1EFF
	.type	s370_1EFF, @function
s370_1EFF:
.LFB430:
	.cfi_startproc
	movl	312(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 312(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE430:
	.size	s370_1EFF, .-s370_1EFF
	.p2align 4,,15
	.globl	s370_and_register
	.type	s370_and_register, @function
s370_and_register:
.LFB431:
	.cfi_startproc
	movzbl	1(%rdi), %ecx
	addq	$2, 136(%rsi)
	movq	%rcx, %rax
	andl	$15, %ecx
	shrq	%rax
	andl	$120, %eax
	leaq	(%rsi,%rax), %rdx
	movl	192(%rsi,%rcx,8), %eax
	andl	%eax, 192(%rdx)
	setne	100(%rsi)
	ret
	.cfi_endproc
.LFE431:
	.size	s370_and_register, .-s370_and_register
	.p2align 4,,15
	.globl	s370_and_immediate
	.type	s370_and_immediate, @function
s370_and_immediate:
.LFB432:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %eax
	movl	%ebp, %r12d
	shrl	$12, %eax
	shrl	$16, %r12d
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %esi
	je	.L3076
	cltq
	addl	192(%rbx,%rax,8), %ebp
	andl	$16777215, %ebp
.L3076:
	leal	5(%rsi), %eax
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	cltq
	movl	1892(%rbx,%rax,4), %edx
	testl	%edx, %edx
	je	.L3077
	leal	1(%rdx), %eax
	movl	%ebp, %ecx
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L3098
.L3078:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L3099
.L3079:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L3077
	testb	$2, 46264(%rbx,%rcx)
	je	.L3077
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L3080:
	andb	%r12b, (%rax)
	setne	100(%rbx)
	subl	$77, %ebp
	cmpl	$6, %ebp
	jbe	.L3100
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L3098:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L3078
.L3077:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L3080
.L3099:
	cmpb	43192(%rbx,%rcx), %al
	je	.L3079
	.p2align 4,,4
	jmp	.L3077
.L3100:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE432:
	.size	s370_and_immediate, .-s370_and_immediate
	.p2align 4,,15
	.globl	s370_and_character
	.type	s370_and_character, @function
s370_and_character:
.LFB433:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	2(%rdi), %eax
	bswap	%eax
	movl	%eax, %r14d
	movl	%eax, %esi
	shrl	$16, %r14d
	shrl	$28, %esi
	andl	$4095, %r14d
	testl	%esi, %esi
	movl	%esi, 8(%rsp)
	je	.L3102
	movslq	%esi, %rdx
	addl	192(%rbp,%rdx,8), %r14d
	andl	$16777215, %r14d
.L3102:
	movl	%eax, %r15d
	shrl	$12, %eax
	andl	$4095, %r15d
	andl	$15, %eax
	movl	%eax, 56(%rsp)
	je	.L3103
	cltq
	addl	192(%rbp,%rax,8), %r15d
	andl	$16777215, %r15d
.L3103:
	movzbl	1(%rdi), %r13d
	movb	$6, 130(%rbp)
	addq	$6, 136(%rbp)
	cmpl	$83, %r15d
	jbe	.L3253
.L3105:
	xorl	%eax, %eax
	cmpl	$83, %r14d
	setbe	%al
	movq	%rax, 16(%rsp)
	jbe	.L3254
.L3107:
	testl	%r13d, %r13d
	je	.L3255
	movl	8(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	0(%rbp,%rax,4), %rax
	movq	%rax, 32(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L3119
	leal	1(%rax), %edx
	movl	%r14d, %esi
	shrl	$11, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	0(%rbp,%rsi,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbp,%rdx,8)
	jne	.L3256
.L3120:
	movzbl	97(%rbp), %ecx
	testb	%cl, %cl
	jne	.L3257
.L3121:
	movl	%r14d, %edx
	andl	$14680064, %edx
	orl	2224(%rbp), %edx
	cmpl	10424(%rax), %edx
	jne	.L3183
	testb	$1, 46264(%rbp,%rsi)
	je	.L3183
	movq	35000(%rax), %r11
	movl	%r14d, %ebx
	movzbl	%cl, %r8d
	movq	%r11, 984(%rbp)
	xorq	26808(%rax), %rbx
.L3123:
	movl	56(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	0(%rbp,%rax,4), %rax
	movq	%rax, 24(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L3124
	leal	1(%rax), %edx
	movl	%r15d, %esi
	shrl	$11, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	0(%rbp,%rsi,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbp,%rdx,8)
	jne	.L3258
.L3125:
	testb	%r8b, %r8b
	jne	.L3259
.L3126:
	movl	%r15d, %edx
	andl	$14680064, %edx
	orl	2224(%rbp), %edx
	cmpl	10424(%rax), %edx
	jne	.L3124
	testb	$4, 46264(%rbp,%rsi)
	je	.L3124
	movl	%r15d, %r12d
	xorq	26808(%rax), %r12
.L3127:
	movl	$2047, %r10d
	movl	%r14d, %eax
	subl	%r13d, %r10d
	andl	$2047, %eax
	cmpl	%r10d, %eax
	jg	.L3128
	movl	%r15d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r10d
	jl	.L3129
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L3131:
	movzbl	(%r12,%rax), %edx
	andb	%dl, (%rbx,%rax)
	cmovne	%ecx, %r15d
	addq	$1, %rax
	cmpl	%eax, %r13d
	jge	.L3131
.L3130:
	orb	$6, (%r11)
.L3140:
	cmpq	$0, 16(%rsp)
	jne	.L3260
.L3174:
	movb	%r15b, 100(%rbp)
.L3101:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L3258:
	.cfi_restore_state
	movzbl	44216(%rbp,%rsi), %edi
	testb	%dil, 1976(%rbp,%rdx)
	jne	.L3125
.L3124:
	movl	56(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbp, %rdx
	movl	%r15d, %edi
	movq	%r11, 40(%rsp)
	call	s370_logical_to_main_l
	movq	40(%rsp), %r11
	movq	%rax, %r12
	jmp	.L3127
.L3257:
	cmpb	43192(%rbp,%rsi), %cl
	je	.L3121
.L3183:
	movzbl	%cl, %r8d
.L3122:
	movl	8(%rsp), %esi
	leal	1(%r13), %r9d
	movl	$1, %ecx
	andl	$511, %r9d
	movq	%rbp, %rdx
	movl	%r14d, %edi
	call	s370_logical_to_main_l
	movq	984(%rbp), %r11
	movq	%rax, %rbx
	movzbl	97(%rbp), %r8d
	jmp	.L3123
.L3256:
	movzbl	44216(%rbp,%rsi), %ecx
	testb	%cl, 1976(%rbp,%rdx)
	jne	.L3120
.L3119:
	movzbl	97(%rbp), %r8d
	jmp	.L3122
.L3255:
	movl	56(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L3109
	leal	1(%rax), %edx
	movl	%r15d, %eax
	shrl	$11, %eax
	movslq	%edx, %rdx
	andl	$1023, %eax
	leaq	0(%rbp,%rax,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbp,%rdx,8)
	jne	.L3261
.L3110:
	movzbl	97(%rbp), %edx
	testb	%dl, %dl
	jne	.L3262
.L3111:
	movl	%r15d, %esi
	andl	$14680064, %esi
	orl	2224(%rbp), %esi
	cmpl	10424(%rcx), %esi
	jne	.L3180
	testb	$4, 46264(%rbp,%rax)
	je	.L3180
	xorq	26808(%rcx), %r15
	movzbl	%dl, %r8d
.L3113:
	movl	8(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L3114
	leal	1(%rax), %esi
	movl	%r14d, %eax
	shrl	$11, %eax
	movslq	%esi, %rsi
	andl	$1023, %eax
	leaq	0(%rbp,%rax,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbp,%rsi,8)
	jne	.L3263
.L3115:
	testb	%r8b, %r8b
	jne	.L3264
.L3116:
	movl	%r14d, %esi
	andl	$14680064, %esi
	orl	2224(%rbp), %esi
	cmpl	10424(%rcx), %esi
	jne	.L3114
	testb	$2, 46264(%rbp,%rax)
	je	.L3114
	movl	%r14d, %edx
	xorq	26808(%rcx), %rdx
.L3117:
	movzbl	(%rdx), %eax
	andb	(%r15), %al
	testb	%al, %al
	movb	%al, (%rdx)
	setne	100(%rbp)
	subl	$80, %r14d
	cmpl	$3, %r14d
	ja	.L3101
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
.L3254:
	.cfi_restore_state
	leal	(%r14,%r13), %eax
	cmpl	$79, %eax
	jbe	.L3107
	movq	%rbp, %rdi
	call	s370_store_int_timer
	jmp	.L3107
.L3264:
	cmpb	%r8b, 43192(%rbp,%rax)
	je	.L3116
.L3114:
	movl	8(%rsp), %esi
	movq	%rbp, %rdx
	movl	$1, %r9d
	movl	$2, %ecx
	movl	%r14d, %edi
	call	s370_logical_to_main_l
	movq	%rax, %rdx
	jmp	.L3117
.L3263:
	movzbl	44216(%rbp,%rax), %edi
	testb	%dil, 1976(%rbp,%rsi)
	jne	.L3115
	jmp	.L3114
.L3262:
	cmpb	43192(%rbp,%rax), %dl
	je	.L3111
.L3180:
	movzbl	%dl, %r8d
.L3112:
	movl	56(%rsp), %esi
	movl	%r15d, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbp, %rdx
	call	s370_logical_to_main_l
	movzbl	97(%rbp), %r8d
	movq	%rax, %r15
	jmp	.L3113
.L3261:
	movzbl	44216(%rbp,%rax), %esi
	testb	%sil, 1976(%rbp,%rdx)
	jne	.L3110
.L3109:
	movzbl	97(%rbp), %r8d
	jmp	.L3112
.L3253:
	leal	(%r15,%r13), %eax
	cmpl	$79, %eax
	jbe	.L3105
	movq	%rbp, %rdi
	call	s370_store_int_timer
	jmp	.L3105
.L3260:
	addl	%r14d, %r13d
	cmpl	$79, %r13d
	jbe	.L3174
	movq	%rbp, %rdi
	call	s370_fetch_int_timer
	jmp	.L3174
.L3129:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movq	24(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L3132
	leal	(%r10,%r15), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	0(%rbp,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbp,%rsi,8)
	jne	.L3265
.L3133:
	movzbl	97(%rbp), %r8d
	testb	%r8b, %r8b
	jne	.L3266
.L3135:
	andl	$14680064, %ecx
	orl	2224(%rbp), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L3134
	testb	$4, 46264(%rbp,%rax)
	je	.L3134
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L3136:
	movq	%r12, %rdx
	xorl	%r15d, %r15d
	movl	$1, %esi
.L3138:
	addq	$1, %rdx
	movzbl	-1(%rdx), %ecx
	addq	$1, %rbx
	andb	%cl, -1(%rbx)
	movl	%edx, %ecx
	cmovne	%esi, %r15d
	subl	%r12d, %ecx
	cmpl	%ecx, %r10d
	jg	.L3138
	movl	%r13d, %edi
	subl	%r10d, %edi
	js	.L3130
	xorl	%edx, %edx
	movl	$1, %esi
.L3139:
	movzbl	(%rax,%rdx), %ecx
	andb	%cl, (%rbx,%rdx)
	cmovne	%esi, %r15d
	addq	$1, %rdx
	cmpl	%edx, %edi
	jge	.L3139
	jmp	.L3130
.L3128:
	movl	$2048, 40(%rsp)
	subl	%eax, 40(%rsp)
	movq	32(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L3141
	leal	1(%rax), %esi
	movl	40(%rsp), %eax
	movslq	%esi, %rsi
	leal	(%rax,%r14), %ecx
	movl	%ecx, %edi
	andl	$16777215, %edi
	movl	%edi, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	0(%rbp,%rdx,8), %rax
	movl	2232(%rax), %r9d
	cmpl	%r9d, 320(%rbp,%rsi,8)
	jne	.L3267
.L3142:
	movzbl	97(%rbp), %r8d
	testb	%r8b, %r8b
	jne	.L3268
.L3144:
	andl	$14680064, %ecx
	orl	2224(%rbp), %ecx
	cmpl	10424(%rax), %ecx
	jne	.L3143
	testb	$1, 46264(%rbp,%rdx)
	je	.L3143
	movq	35000(%rax), %rcx
	movq	%rdi, 8(%rsp)
	movq	%rcx, 984(%rbp)
	movq	26808(%rax), %rax
	movq	%rcx, 32(%rsp)
	xorq	%rax, 8(%rsp)
.L3145:
	movl	%r15d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r10d
	jl	.L3146
	movq	%rbx, %rax
	xorl	%r15d, %r15d
	movl	$1, %ecx
.L3148:
	addq	$1, %r12
	movzbl	-1(%r12), %edx
	addq	$1, %rax
	andb	%dl, -1(%rax)
	movl	%eax, %edx
	cmovne	%ecx, %r15d
	subl	%ebx, %edx
	cmpl	%edx, 40(%rsp)
	jg	.L3148
	movl	%r13d, %esi
	subl	40(%rsp), %esi
	js	.L3149
	movq	8(%rsp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
.L3150:
	movzbl	(%r12,%rax), %edx
	andb	%dl, (%rdi,%rax)
	cmovne	%ecx, %r15d
	addq	$1, %rax
	cmpl	%eax, %esi
	jge	.L3150
.L3149:
	orb	$6, (%r11)
	movq	32(%rsp), %rax
	orb	$6, (%rax)
	jmp	.L3140
.L3146:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movq	24(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L3151
	leal	(%r10,%r15), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	0(%rbp,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbp,%rsi,8)
	jne	.L3269
.L3152:
	movzbl	97(%rbp), %r8d
	testb	%r8b, %r8b
	jne	.L3270
.L3154:
	andl	$14680064, %ecx
	orl	2224(%rbp), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L3153
	testb	$4, 46264(%rbp,%rax)
	je	.L3153
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L3155:
	cmpl	%r10d, 40(%rsp)
	je	.L3271
	movq	%rbx, %rdx
	movl	$0, %r15d
	movl	$1, %esi
	jge	.L3168
.L3162:
	addq	$1, %r12
	movzbl	-1(%r12), %ecx
	addq	$1, %rdx
	andb	%cl, -1(%rdx)
	movl	%edx, %ecx
	cmovne	%esi, %r15d
	subl	%ebx, %ecx
	cmpl	%ecx, 40(%rsp)
	jg	.L3162
	movl	%r10d, %esi
	subl	40(%rsp), %esi
	testl	%esi, %esi
	jle	.L3163
	movq	8(%rsp), %r8
	xorl	%edx, %edx
	movl	$1, %edi
.L3165:
	movzbl	(%r12,%rdx), %ecx
	andb	%cl, (%r8,%rdx)
	cmovne	%edi, %r15d
	addq	$1, %rdx
	cmpl	%edx, %esi
	jg	.L3165
	movq	8(%rsp), %rdi
	subl	$1, %esi
	leaq	1(%rdi,%rsi), %rdi
	movq	%rdi, 8(%rsp)
.L3163:
	movl	%r13d, %edi
	subl	%r10d, %edi
	js	.L3149
	movq	8(%rsp), %r8
	xorl	%edx, %edx
	movl	$1, %esi
.L3166:
	movzbl	(%rax,%rdx), %ecx
	andb	%cl, (%r8,%rdx)
	cmovne	%esi, %r15d
	addq	$1, %rdx
	cmpl	%edx, %edi
	jge	.L3166
	jmp	.L3149
.L3168:
	addq	$1, %r12
	movzbl	-1(%r12), %ecx
	addq	$1, %rdx
	andb	%cl, -1(%rdx)
	movl	%edx, %ecx
	cmovne	%esi, %r15d
	subl	%ebx, %ecx
	cmpl	%ecx, %r10d
	jg	.L3168
	movl	40(%rsp), %edi
	subl	%r10d, %edi
	testl	%edi, %edi
	jle	.L3169
	xorl	%ecx, %ecx
	movl	$1, %r8d
.L3171:
	movzbl	(%rax,%rcx), %esi
	andb	%sil, (%rdx,%rcx)
	cmovne	%r8d, %r15d
	addq	$1, %rcx
	cmpl	%ecx, %edi
	jg	.L3171
	subl	$1, %edi
	leaq	1(%rax,%rdi), %rax
.L3169:
	movl	%r13d, %edi
	subl	40(%rsp), %edi
	js	.L3149
	movq	8(%rsp), %r8
	xorl	%edx, %edx
	movl	$1, %esi
.L3172:
	movzbl	(%rax,%rdx), %ecx
	andb	%cl, (%r8,%rdx)
	cmovne	%esi, %r15d
	addq	$1, %rdx
	cmpl	%edx, %edi
	jge	.L3172
	jmp	.L3149
.L3271:
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	movl	$1, %esi
.L3158:
	movzbl	(%r12,%rdx), %ecx
	andb	%cl, (%rbx,%rdx)
	cmovne	%esi, %r15d
	addq	$1, %rdx
	cmpl	%edx, 40(%rsp)
	jg	.L3158
	movl	%r13d, %edi
	subl	40(%rsp), %edi
	js	.L3149
	movq	8(%rsp), %r8
	xorl	%edx, %edx
	movl	$1, %esi
.L3159:
	movzbl	(%rax,%rdx), %ecx
	andb	%cl, (%r8,%rdx)
	cmovne	%esi, %r15d
	addq	$1, %rdx
	cmpl	%edx, %edi
	jge	.L3159
	jmp	.L3149
.L3267:
	movzbl	44216(%rbp,%rdx), %r8d
	testb	%r8b, 1976(%rbp,%rsi)
	jne	.L3142
	movzbl	97(%rbp), %r8d
.L3143:
	movl	8(%rsp), %esi
	movl	$1, %r9d
	movl	$1, %ecx
	movq	%rbp, %rdx
	movl	%r10d, 60(%rsp)
	movq	%r11, 48(%rsp)
	call	s370_logical_to_main_l
	movl	60(%rsp), %r10d
	movq	%rax, 8(%rsp)
	movq	984(%rbp), %rax
	movq	48(%rsp), %r11
	movq	%rax, 32(%rsp)
	jmp	.L3145
.L3269:
	movzbl	44216(%rbp,%rax), %r8d
	testb	%r8b, 1976(%rbp,%rsi)
	jne	.L3152
.L3252:
	movzbl	97(%rbp), %r8d
.L3153:
	movl	56(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbp, %rdx
	movl	%r10d, 48(%rsp)
	movq	%r11, 24(%rsp)
	call	s370_logical_to_main_l
	movl	48(%rsp), %r10d
	movq	24(%rsp), %r11
	jmp	.L3155
.L3151:
	leal	(%r10,%r15), %edi
	andl	$16777215, %edi
	jmp	.L3252
.L3270:
	cmpb	43192(%rbp,%rax), %r8b
	je	.L3154
	jmp	.L3153
.L3265:
	movzbl	44216(%rbp,%rax), %r8d
	testb	%r8b, 1976(%rbp,%rsi)
	jne	.L3133
.L3251:
	movzbl	97(%rbp), %r8d
.L3134:
	movl	56(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbp, %rdx
	movl	%r10d, 24(%rsp)
	movq	%r11, 8(%rsp)
	call	s370_logical_to_main_l
	movl	24(%rsp), %r10d
	movq	8(%rsp), %r11
	jmp	.L3136
.L3259:
	cmpb	43192(%rbp,%rsi), %r8b
	je	.L3126
	jmp	.L3124
.L3132:
	leal	(%r10,%r15), %edi
	andl	$16777215, %edi
	jmp	.L3251
.L3266:
	cmpb	43192(%rbp,%rax), %r8b
	je	.L3135
	jmp	.L3134
.L3141:
	movl	40(%rsp), %eax
	movzbl	97(%rbp), %r8d
	leal	(%rax,%r14), %edi
	andl	$16777215, %edi
	jmp	.L3143
.L3268:
	cmpb	43192(%rbp,%rdx), %r8b
	je	.L3144
	jmp	.L3143
	.cfi_endproc
.LFE433:
	.size	s370_and_character, .-s370_and_character
	.p2align 4,,15
	.globl	s370_branch_and_link_register
	.type	s370_branch_and_link_register, @function
s370_branch_and_link_register:
.LFB434:
	.cfi_startproc
	movzbl	1(%rdi), %ecx
	movzbl	%cl, %edx
	andl	$15, %ecx
	sarl	$4, %edx
	testb	$2, 103(%rsi)
	movslq	%ecx, %rax
	movl	192(%rsi,%rax,8), %r9d
	je	.L3273
	movl	168(%rsi), %r10d
	movslq	%edx, %rdx
	movq	136(%rsi), %r8
	leal	2(%r10,%r8), %eax
	subl	144(%rsi), %eax
	orl	$-2147483648, %eax
	testl	%ecx, %ecx
	movl	%eax, 192(%rsi,%rdx,8)
	je	.L3276
.L3284:
	movzbl	808(%rsi), %edx
	movl	%r9d, %eax
	andl	$16777215, %eax
	testb	$5, %dl
	jne	.L3277
	andl	$16775169, %r9d
	cmpl	%r10d, %r9d
	jne	.L3277
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3273:
	movzbl	808(%rsi), %eax
	testb	$1, %al
	jne	.L3283
	movl	$1073741824, %r11d
.L3275:
	movzbl	101(%rsi), %eax
	movslq	%edx, %rdx
	movzbl	100(%rsi), %edi
	movl	168(%rsi), %r10d
	movq	136(%rsi), %r8
	sall	$24, %eax
	sall	$28, %edi
	orl	%edi, %eax
	leal	2(%r10,%r8), %edi
	orl	%r11d, %eax
	subl	144(%rsi), %edi
	andl	$16777215, %edi
	orl	%edi, %eax
	testl	%ecx, %ecx
	movl	%eax, 192(%rsi,%rdx,8)
	jne	.L3284
.L3276:
	addq	$2, %r8
	movq	%r8, 136(%rsi)
	ret
.L3277:
	andb	$4, %dl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3285
.L3272:
	rep ret
.L3283:
	andl	$2, %eax
	cmpb	$1, %al
	sbbl	%r11d, %r11d
	andl	$-1073741824, %r11d
	subl	$1073741824, %r11d
	jmp	.L3275
.L3285:
	testb	$-128, 54(%rsi)
	je	.L3272
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE434:
	.size	s370_branch_and_link_register, .-s370_branch_and_link_register
	.p2align 4,,15
	.globl	s370_branch_and_link
	.type	s370_branch_and_link, @function
s370_branch_and_link:
.LFB435:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ecx
	movl	%eax, %edi
	shrl	$20, %ecx
	shrl	$16, %edi
	movl	%eax, %edx
	andl	$15, %ecx
	andl	$4095, %edx
	andl	$15, %edi
	jne	.L3301
.L3287:
	shrl	$12, %eax
	andl	$15, %eax
	je	.L3288
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3288:
	testb	$2, 103(%rsi)
	je	.L3289
	movl	168(%rsi), %edi
	movq	136(%rsi), %rax
	leal	4(%rdi,%rax), %eax
	subl	144(%rsi), %eax
	orl	$-2147483648, %eax
.L3290:
	movslq	%ecx, %rcx
	movl	%eax, 192(%rsi,%rcx,8)
	movl	%edx, %eax
	movzbl	808(%rsi), %ecx
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3291
	andl	$16775169, %edx
	cmpl	%edi, %edx
	jne	.L3291
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3289:
	movl	168(%rsi), %r9d
	movq	136(%rsi), %rax
	movzbl	100(%rsi), %edi
	movzbl	101(%rsi), %r8d
	leal	4(%r9,%rax), %eax
	subl	144(%rsi), %eax
	sall	$28, %edi
	sall	$24, %r8d
	orl	%r8d, %edi
	orl	$-2147483648, %edi
	andl	$16777215, %eax
	orl	%edi, %eax
	movl	%r9d, %edi
	jmp	.L3290
.L3291:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3302
.L3286:
	rep ret
.L3301:
	movslq	%edi, %rdi
	addl	192(%rsi,%rdi,8), %edx
	jmp	.L3287
.L3302:
	testb	$-128, 54(%rsi)
	je	.L3286
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE435:
	.size	s370_branch_and_link, .-s370_branch_and_link
	.p2align 4,,15
	.globl	s370_branch_and_save_register
	.type	s370_branch_and_save_register, @function
s370_branch_and_save_register:
.LFB436:
	.cfi_startproc
	movzbl	1(%rdi), %ecx
	movl	168(%rsi), %r9d
	movq	136(%rsi), %rdi
	movzbl	%cl, %edx
	andl	$15, %ecx
	sarl	$4, %edx
	testb	$2, 103(%rsi)
	movslq	%ecx, %rax
	movl	192(%rsi,%rax,8), %r8d
	leal	2(%r9,%rdi), %eax
	je	.L3304
	subl	144(%rsi), %eax
	movslq	%edx, %rdx
	orl	$-2147483648, %eax
	testl	%ecx, %ecx
	movl	%eax, 192(%rsi,%rdx,8)
	je	.L3306
.L3311:
	movzbl	808(%rsi), %edx
	movl	%r8d, %eax
	andl	$16777215, %eax
	testb	$5, %dl
	jne	.L3307
	andl	$16775169, %r8d
	cmpl	%r8d, %r9d
	jne	.L3307
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3304:
	subl	144(%rsi), %eax
	movslq	%edx, %rdx
	andl	$16777215, %eax
	testl	%ecx, %ecx
	movl	%eax, 192(%rsi,%rdx,8)
	jne	.L3311
.L3306:
	addq	$2, %rdi
	movq	%rdi, 136(%rsi)
	ret
.L3307:
	andb	$4, %dl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3312
.L3303:
	rep ret
.L3312:
	testb	$-128, 54(%rsi)
	je	.L3303
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE436:
	.size	s370_branch_and_save_register, .-s370_branch_and_save_register
	.p2align 4,,15
	.globl	s370_branch_and_save
	.type	s370_branch_and_save, @function
s370_branch_and_save:
.LFB437:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ecx
	movl	%eax, %edi
	shrl	$20, %ecx
	shrl	$16, %edi
	movl	%eax, %edx
	andl	$15, %ecx
	andl	$4095, %edx
	andl	$15, %edi
	jne	.L3328
.L3314:
	shrl	$12, %eax
	andl	$15, %eax
	je	.L3315
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3315:
	movl	168(%rsi), %edi
	movq	136(%rsi), %rax
	testb	$2, 103(%rsi)
	leal	4(%rdi,%rax), %eax
	je	.L3316
	subl	144(%rsi), %eax
	orl	$-2147483648, %eax
.L3317:
	movslq	%ecx, %rcx
	movl	%eax, 192(%rsi,%rcx,8)
	movl	%edx, %eax
	movzbl	808(%rsi), %ecx
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3318
	andl	$16775169, %edx
	cmpl	%edi, %edx
	jne	.L3318
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3316:
	subl	144(%rsi), %eax
	andl	$16777215, %eax
	jmp	.L3317
.L3318:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3329
.L3313:
	rep ret
.L3328:
	movslq	%edi, %rdi
	addl	192(%rsi,%rdi,8), %edx
	jmp	.L3314
.L3329:
	testb	$-128, 54(%rsi)
	je	.L3313
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE437:
	.size	s370_branch_and_save, .-s370_branch_and_save
	.p2align 4,,15
	.globl	s370_branch_on_condition_register
	.type	s370_branch_on_condition_register, @function
s370_branch_on_condition_register:
.LFB438:
	.cfi_startproc
	movzbl	1(%rdi), %eax
	movl	%eax, %edi
	andl	$15, %edi
	je	.L3331
	movzbl	100(%rsi), %ecx
	movl	$128, %edx
	sarl	%cl, %edx
	testl	%edx, %eax
	je	.L3331
	andl	$15, %edi
	movzbl	808(%rsi), %ecx
	movl	192(%rsi,%rdi,8), %edx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3332
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3332
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3331:
	addq	$2, 136(%rsi)
	ret
.L3332:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3342
.L3330:
	rep ret
.L3342:
	testb	$-128, 54(%rsi)
	je	.L3330
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE438:
	.size	s370_branch_on_condition_register, .-s370_branch_on_condition_register
	.p2align 4,,15
	.globl	s370_store_character
	.type	s370_store_character, @function
s370_store_character:
.LFB439:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ecx
	movl	%eax, %esi
	shrl	$20, %ecx
	shrl	$16, %esi
	movl	%eax, %edx
	andl	$15, %ecx
	andl	$4095, %edx
	andl	$15, %esi
	jne	.L3370
.L3344:
	shrl	$12, %eax
	andl	$15, %eax
	je	.L3345
	movslq	%eax, %rsi
	addl	192(%rbx,%rsi,8), %edx
.L3345:
	addq	$4, 136(%rbx)
	movslq	%ecx, %rcx
	movl	%edx, %ebp
	movb	$4, 130(%rbx)
	andl	$16777215, %ebp
	movzbl	192(%rbx,%rcx,8), %r12d
	leal	5(%rax), %ecx
	movslq	%ecx, %rcx
	movl	1892(%rbx,%rcx,4), %ecx
	testl	%ecx, %ecx
	je	.L3346
	leal	1(%rcx), %edi
	movl	%ebp, %esi
	shrl	$11, %esi
	movslq	%edi, %rdi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L3371
.L3347:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L3372
.L3348:
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L3346
	testb	$2, 46264(%rbx,%rsi)
	je	.L3346
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L3349:
	subl	$80, %ebp
	movb	%r12b, (%rax)
	cmpl	$3, %ebp
	jbe	.L3373
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L3371:
	.cfi_restore_state
	movzbl	44216(%rbx,%rsi), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L3347
.L3346:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L3349
.L3370:
	movslq	%esi, %rsi
	addl	192(%rbx,%rsi,8), %edx
	jmp	.L3344
.L3372:
	cmpb	43192(%rbx,%rsi), %dil
	je	.L3348
	jmp	.L3346
.L3373:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE439:
	.size	s370_store_character, .-s370_store_character
	.p2align 4,,15
	.globl	s370_branch_on_condition
	.type	s370_branch_on_condition, @function
s370_branch_on_condition:
.LFB440:
	.cfi_startproc
	movzbl	100(%rsi), %ecx
	movl	$128, %eax
	movzbl	1(%rdi), %edx
	sarl	%cl, %eax
	testl	%eax, %edx
	je	.L3375
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %ecx
	movl	%edx, %eax
	shrl	$16, %ecx
	andl	$4095, %eax
	shrl	$12, %edx
	andl	$15, %ecx
	addl	192(%rsi,%rcx,8), %eax
	andl	$15, %edx
	je	.L3376
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %eax
.L3376:
	movzbl	808(%rsi), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	testb	$5, %dl
	jne	.L3377
	andl	$16775169, %eax
	cmpl	168(%rsi), %eax
	jne	.L3377
	movl	%ecx, %eax
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3375:
	addq	$4, 136(%rsi)
	ret
.L3377:
	andb	$4, %dl
	movl	%ecx, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3384
.L3374:
	rep ret
.L3384:
	testb	$-128, 54(%rsi)
	je	.L3374
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE440:
	.size	s370_branch_on_condition, .-s370_branch_on_condition
	.p2align 4,,15
	.globl	s370_47_0
	.type	s370_47_0, @function
s370_47_0:
.LFB441:
	.cfi_startproc
	movzbl	100(%rsi), %ecx
	movl	$128, %eax
	movzbl	1(%rdi), %edx
	sarl	%cl, %eax
	testl	%eax, %edx
	je	.L3386
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3387
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3387:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3388
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3388
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3386:
	addq	$4, 136(%rsi)
	ret
.L3388:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3395
.L3385:
	rep ret
.L3395:
	testb	$-128, 54(%rsi)
	je	.L3385
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE441:
	.size	s370_47_0, .-s370_47_0
	.p2align 4,,15
	.globl	s370_nop4
	.type	s370_nop4, @function
s370_nop4:
.LFB442:
	.cfi_startproc
	addq	$4, 136(%rsi)
	ret
	.cfi_endproc
.LFE442:
	.size	s370_nop4, .-s370_nop4
	.p2align 4,,15
	.globl	s370_4710
	.type	s370_4710, @function
s370_4710:
.LFB443:
	.cfi_startproc
	cmpb	$3, 100(%rsi)
	je	.L3407
	addq	$4, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3407:
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3399
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3399:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3400
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3400
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
.L3400:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3408
.L3397:
	rep ret
.L3408:
	testb	$-128, 54(%rsi)
	je	.L3397
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE443:
	.size	s370_4710, .-s370_4710
	.p2align 4,,15
	.globl	s370_4720
	.type	s370_4720, @function
s370_4720:
.LFB444:
	.cfi_startproc
	cmpb	$2, 100(%rsi)
	je	.L3419
	addq	$4, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3419:
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3411
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3411:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3412
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3412
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
.L3412:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3420
.L3409:
	rep ret
.L3420:
	testb	$-128, 54(%rsi)
	je	.L3409
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE444:
	.size	s370_4720, .-s370_4720
	.p2align 4,,15
	.globl	s370_4730
	.type	s370_4730, @function
s370_4730:
.LFB445:
	.cfi_startproc
	cmpb	$1, 100(%rsi)
	jbe	.L3422
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3423
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3423:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3424
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3424
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3422:
	addq	$4, 136(%rsi)
	ret
.L3424:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3431
.L3421:
	rep ret
.L3431:
	testb	$-128, 54(%rsi)
	je	.L3421
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE445:
	.size	s370_4730, .-s370_4730
	.p2align 4,,15
	.globl	s370_4740
	.type	s370_4740, @function
s370_4740:
.LFB446:
	.cfi_startproc
	cmpb	$1, 100(%rsi)
	je	.L3442
	addq	$4, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3442:
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3434
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3434:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3435
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3435
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
.L3435:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3443
.L3432:
	rep ret
.L3443:
	testb	$-128, 54(%rsi)
	je	.L3432
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE446:
	.size	s370_4740, .-s370_4740
	.p2align 4,,15
	.globl	s370_4750
	.type	s370_4750, @function
s370_4750:
.LFB447:
	.cfi_startproc
	testb	$1, 100(%rsi)
	je	.L3445
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3446
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3446:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3447
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3447
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3445:
	addq	$4, 136(%rsi)
	ret
.L3447:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3454
.L3444:
	rep ret
.L3454:
	testb	$-128, 54(%rsi)
	je	.L3444
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE447:
	.size	s370_4750, .-s370_4750
	.p2align 4,,15
	.globl	s370_4770
	.type	s370_4770, @function
s370_4770:
.LFB448:
	.cfi_startproc
	cmpb	$0, 100(%rsi)
	je	.L3456
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3457
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3457:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3458
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3458
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3456:
	addq	$4, 136(%rsi)
	ret
.L3458:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3465
.L3455:
	rep ret
.L3465:
	testb	$-128, 54(%rsi)
	je	.L3455
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE448:
	.size	s370_4770, .-s370_4770
	.p2align 4,,15
	.globl	s370_4780
	.type	s370_4780, @function
s370_4780:
.LFB449:
	.cfi_startproc
	cmpb	$0, 100(%rsi)
	jne	.L3467
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3468
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3468:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3469
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3469
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3467:
	addq	$4, 136(%rsi)
	ret
.L3469:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3476
.L3466:
	rep ret
.L3476:
	testb	$-128, 54(%rsi)
	je	.L3466
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE449:
	.size	s370_4780, .-s370_4780
	.p2align 4,,15
	.globl	s370_47A0
	.type	s370_47A0, @function
s370_47A0:
.LFB450:
	.cfi_startproc
	testb	$1, 100(%rsi)
	jne	.L3478
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3479
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3479:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3480
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3480
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3478:
	addq	$4, 136(%rsi)
	ret
.L3480:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3487
.L3477:
	rep ret
.L3487:
	testb	$-128, 54(%rsi)
	je	.L3477
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE450:
	.size	s370_47A0, .-s370_47A0
	.p2align 4,,15
	.globl	s370_47B0
	.type	s370_47B0, @function
s370_47B0:
.LFB451:
	.cfi_startproc
	cmpb	$1, 100(%rsi)
	je	.L3489
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3490
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3490:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3491
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3491
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3489:
	addq	$4, 136(%rsi)
	ret
.L3491:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3498
.L3488:
	rep ret
.L3498:
	testb	$-128, 54(%rsi)
	je	.L3488
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE451:
	.size	s370_47B0, .-s370_47B0
	.p2align 4,,15
	.globl	s370_47C0
	.type	s370_47C0, @function
s370_47C0:
.LFB452:
	.cfi_startproc
	cmpb	$1, 100(%rsi)
	jbe	.L3509
	addq	$4, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3509:
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3501
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3501:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3502
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3502
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
.L3502:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3510
.L3499:
	rep ret
.L3510:
	testb	$-128, 54(%rsi)
	je	.L3499
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE452:
	.size	s370_47C0, .-s370_47C0
	.p2align 4,,15
	.globl	s370_47D0
	.type	s370_47D0, @function
s370_47D0:
.LFB453:
	.cfi_startproc
	cmpb	$2, 100(%rsi)
	je	.L3512
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3513
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3513:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3514
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3514
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3512:
	addq	$4, 136(%rsi)
	ret
.L3514:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3521
.L3511:
	rep ret
.L3521:
	testb	$-128, 54(%rsi)
	je	.L3511
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE453:
	.size	s370_47D0, .-s370_47D0
	.p2align 4,,15
	.globl	s370_47E0
	.type	s370_47E0, @function
s370_47E0:
.LFB454:
	.cfi_startproc
	cmpb	$3, 100(%rsi)
	je	.L3523
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3524
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3524:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3525
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3525
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L3523:
	addq	$4, 136(%rsi)
	ret
.L3525:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3532
.L3522:
	rep ret
.L3532:
	testb	$-128, 54(%rsi)
	je	.L3522
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE454:
	.size	s370_47E0, .-s370_47E0
	.p2align 4,,15
	.globl	s370_47F0
	.type	s370_47F0, @function
s370_47F0:
.LFB455:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L3534
	cltq
	addl	192(%rsi,%rax,8), %edx
.L3534:
	movzbl	808(%rsi), %ecx
	movl	%edx, %eax
	andl	$16777215, %eax
	testb	$5, %cl
	jne	.L3535
	andl	$16775169, %edx
	cmpl	168(%rsi), %edx
	jne	.L3535
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
.L3535:
	andb	$4, %cl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L3542
.L3533:
	rep ret
.L3542:
	testb	$-128, 54(%rsi)
	je	.L3533
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE455:
	.size	s370_47F0, .-s370_47F0
	.p2align 4,,15
	.globl	s370_and
	.type	s370_and, @function
s370_and:
.LFB456:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L3576
.L3544:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L3545
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L3545:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$3, %bpl
	jne	.L3577
.L3546:
	leal	-77(%r13), %edx
	cmpl	$6, %edx
	jbe	.L3578
.L3548:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3549
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3579
.L3550:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3580
.L3551:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3549
	testb	$4, 46264(%rbx,%rcx)
	je	.L3549
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L3552:
	movl	(%rax), %eax
	bswap	%eax
.L3553:
	movslq	%r12d, %r12
	leaq	(%rbx,%r12,8), %rdx
	andl	%eax, 192(%rdx)
	setne	100(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L3579:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3550
.L3549:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L3552
.L3577:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3546
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch4_full
	jmp	.L3553
.L3576:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L3544
.L3580:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3551
	jmp	.L3549
.L3578:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3548
	.cfi_endproc
.LFE456:
	.size	s370_and, .-s370_and
	.p2align 4,,15
	.globl	s370_load
	.type	s370_load, @function
s370_load:
.LFB457:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	movl	%eax, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	shrl	$20, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	shrl	$12, %eax
	andl	$15, %r12d
	addl	192(%rsi,%rdx,8), %ebp
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L3582
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3582:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$3, %bpl
	jne	.L3610
.L3583:
	leal	-77(%r13), %edx
	cmpl	$6, %edx
	jbe	.L3611
.L3585:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3586
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3612
.L3587:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3613
.L3588:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3586
	testb	$4, 46264(%rbx,%rcx)
	je	.L3586
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L3589:
	movl	(%rax), %eax
	bswap	%eax
.L3590:
	movslq	%r12d, %r12
	movl	%eax, 192(%rbx,%r12,8)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L3612:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3587
.L3586:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L3589
.L3610:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3583
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch4_full
	jmp	.L3590
.L3613:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3588
	.p2align 4,,3
	jmp	.L3586
.L3611:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3585
	.cfi_endproc
.LFE457:
	.size	s370_load, .-s370_load
	.p2align 4,,15
	.globl	s370_5800
	.type	s370_5800, @function
s370_5800:
.LFB458:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3615
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3615:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3643
.L3616:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3644
.L3618:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3619
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3645
.L3620:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3646
.L3621:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3619
	testb	$4, 46264(%rbx,%rcx)
	je	.L3619
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3622:
	movl	(%rax), %eax
	bswap	%eax
.L3623:
	movl	%eax, 192(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3645:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3620
.L3619:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3622
.L3643:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3616
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3623
.L3646:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3621
	.p2align 4,,3
	jmp	.L3619
.L3644:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3618
	.cfi_endproc
.LFE458:
	.size	s370_5800, .-s370_5800
	.p2align 4,,15
	.globl	s370_5810
	.type	s370_5810, @function
s370_5810:
.LFB459:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3648
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3648:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3676
.L3649:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3677
.L3651:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3652
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3678
.L3653:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3679
.L3654:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3652
	testb	$4, 46264(%rbx,%rcx)
	je	.L3652
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3655:
	movl	(%rax), %eax
	bswap	%eax
.L3656:
	movl	%eax, 200(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3678:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3653
.L3652:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3655
.L3676:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3649
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3656
.L3679:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3654
	.p2align 4,,3
	jmp	.L3652
.L3677:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3651
	.cfi_endproc
.LFE459:
	.size	s370_5810, .-s370_5810
	.p2align 4,,15
	.globl	s370_5820
	.type	s370_5820, @function
s370_5820:
.LFB460:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3681
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3681:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3709
.L3682:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3710
.L3684:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3685
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3711
.L3686:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3712
.L3687:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3685
	testb	$4, 46264(%rbx,%rcx)
	je	.L3685
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3688:
	movl	(%rax), %eax
	bswap	%eax
.L3689:
	movl	%eax, 208(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3711:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3686
.L3685:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3688
.L3709:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3682
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3689
.L3712:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3687
	.p2align 4,,3
	jmp	.L3685
.L3710:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3684
	.cfi_endproc
.LFE460:
	.size	s370_5820, .-s370_5820
	.p2align 4,,15
	.globl	s370_5830
	.type	s370_5830, @function
s370_5830:
.LFB461:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3714
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3714:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3742
.L3715:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3743
.L3717:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3718
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3744
.L3719:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3745
.L3720:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3718
	testb	$4, 46264(%rbx,%rcx)
	je	.L3718
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3721:
	movl	(%rax), %eax
	bswap	%eax
.L3722:
	movl	%eax, 216(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3744:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3719
.L3718:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3721
.L3742:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3715
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3722
.L3745:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3720
	.p2align 4,,3
	jmp	.L3718
.L3743:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3717
	.cfi_endproc
.LFE461:
	.size	s370_5830, .-s370_5830
	.p2align 4,,15
	.globl	s370_5840
	.type	s370_5840, @function
s370_5840:
.LFB462:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3747
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3747:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3775
.L3748:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3776
.L3750:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3751
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3777
.L3752:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3778
.L3753:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3751
	testb	$4, 46264(%rbx,%rcx)
	je	.L3751
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3754:
	movl	(%rax), %eax
	bswap	%eax
.L3755:
	movl	%eax, 224(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3777:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3752
.L3751:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3754
.L3775:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3748
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3755
.L3778:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3753
	.p2align 4,,3
	jmp	.L3751
.L3776:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3750
	.cfi_endproc
.LFE462:
	.size	s370_5840, .-s370_5840
	.p2align 4,,15
	.globl	s370_5850
	.type	s370_5850, @function
s370_5850:
.LFB463:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3780
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3780:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3808
.L3781:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3809
.L3783:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3784
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3810
.L3785:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3811
.L3786:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3784
	testb	$4, 46264(%rbx,%rcx)
	je	.L3784
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3787:
	movl	(%rax), %eax
	bswap	%eax
.L3788:
	movl	%eax, 232(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3810:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3785
.L3784:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3787
.L3808:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3781
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3788
.L3811:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3786
	.p2align 4,,3
	jmp	.L3784
.L3809:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3783
	.cfi_endproc
.LFE463:
	.size	s370_5850, .-s370_5850
	.p2align 4,,15
	.globl	s370_5860
	.type	s370_5860, @function
s370_5860:
.LFB464:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3813
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3813:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3841
.L3814:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3842
.L3816:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3817
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3843
.L3818:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3844
.L3819:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3817
	testb	$4, 46264(%rbx,%rcx)
	je	.L3817
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3820:
	movl	(%rax), %eax
	bswap	%eax
.L3821:
	movl	%eax, 240(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3843:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3818
.L3817:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3820
.L3841:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3814
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3821
.L3844:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3819
	.p2align 4,,3
	jmp	.L3817
.L3842:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3816
	.cfi_endproc
.LFE464:
	.size	s370_5860, .-s370_5860
	.p2align 4,,15
	.globl	s370_5870
	.type	s370_5870, @function
s370_5870:
.LFB465:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3846
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3846:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3874
.L3847:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3875
.L3849:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3850
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3876
.L3851:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3877
.L3852:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3850
	testb	$4, 46264(%rbx,%rcx)
	je	.L3850
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3853:
	movl	(%rax), %eax
	bswap	%eax
.L3854:
	movl	%eax, 248(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3876:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3851
.L3850:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3853
.L3874:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3847
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3854
.L3877:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3852
	.p2align 4,,3
	jmp	.L3850
.L3875:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3849
	.cfi_endproc
.LFE465:
	.size	s370_5870, .-s370_5870
	.p2align 4,,15
	.globl	s370_5880
	.type	s370_5880, @function
s370_5880:
.LFB466:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3879
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3879:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3907
.L3880:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3908
.L3882:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3883
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3909
.L3884:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3910
.L3885:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3883
	testb	$4, 46264(%rbx,%rcx)
	je	.L3883
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3886:
	movl	(%rax), %eax
	bswap	%eax
.L3887:
	movl	%eax, 256(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3909:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3884
.L3883:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3886
.L3907:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3880
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3887
.L3910:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3885
	.p2align 4,,3
	jmp	.L3883
.L3908:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3882
	.cfi_endproc
.LFE466:
	.size	s370_5880, .-s370_5880
	.p2align 4,,15
	.globl	s370_5890
	.type	s370_5890, @function
s370_5890:
.LFB467:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3912
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3912:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3940
.L3913:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3941
.L3915:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3916
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3942
.L3917:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3943
.L3918:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3916
	testb	$4, 46264(%rbx,%rcx)
	je	.L3916
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3919:
	movl	(%rax), %eax
	bswap	%eax
.L3920:
	movl	%eax, 264(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3942:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3917
.L3916:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3919
.L3940:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3913
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3920
.L3943:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3918
	.p2align 4,,3
	jmp	.L3916
.L3941:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3915
	.cfi_endproc
.LFE467:
	.size	s370_5890, .-s370_5890
	.p2align 4,,15
	.globl	s370_58A0
	.type	s370_58A0, @function
s370_58A0:
.LFB468:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3945
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3945:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L3973
.L3946:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L3974
.L3948:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3949
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L3975
.L3950:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L3976
.L3951:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3949
	testb	$4, 46264(%rbx,%rcx)
	je	.L3949
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3952:
	movl	(%rax), %eax
	bswap	%eax
.L3953:
	movl	%eax, 272(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L3975:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3950
.L3949:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3952
.L3973:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3946
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3953
.L3976:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3951
	.p2align 4,,3
	jmp	.L3949
.L3974:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3948
	.cfi_endproc
.LFE468:
	.size	s370_58A0, .-s370_58A0
	.p2align 4,,15
	.globl	s370_58B0
	.type	s370_58B0, @function
s370_58B0:
.LFB469:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L3978
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L3978:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L4006
.L3979:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L4007
.L3981:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L3982
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4008
.L3983:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4009
.L3984:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L3982
	testb	$4, 46264(%rbx,%rcx)
	je	.L3982
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L3985:
	movl	(%rax), %eax
	bswap	%eax
.L3986:
	movl	%eax, 280(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L4008:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L3983
.L3982:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L3985
.L4006:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L3979
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L3986
.L4009:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L3984
	.p2align 4,,3
	jmp	.L3982
.L4007:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L3981
	.cfi_endproc
.LFE469:
	.size	s370_58B0, .-s370_58B0
	.p2align 4,,15
	.globl	s370_58C0
	.type	s370_58C0, @function
s370_58C0:
.LFB470:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L4011
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4011:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L4039
.L4012:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L4040
.L4014:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4015
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4041
.L4016:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4042
.L4017:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4015
	testb	$4, 46264(%rbx,%rcx)
	je	.L4015
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L4018:
	movl	(%rax), %eax
	bswap	%eax
.L4019:
	movl	%eax, 288(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L4041:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4016
.L4015:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L4018
.L4039:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4012
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L4019
.L4042:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4017
	.p2align 4,,3
	jmp	.L4015
.L4040:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4014
	.cfi_endproc
.LFE470:
	.size	s370_58C0, .-s370_58C0
	.p2align 4,,15
	.globl	s370_58D0
	.type	s370_58D0, @function
s370_58D0:
.LFB471:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L4044
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4044:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L4072
.L4045:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L4073
.L4047:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4048
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4074
.L4049:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4075
.L4050:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4048
	testb	$4, 46264(%rbx,%rcx)
	je	.L4048
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L4051:
	movl	(%rax), %eax
	bswap	%eax
.L4052:
	movl	%eax, 296(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L4074:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4049
.L4048:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L4051
.L4072:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4045
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L4052
.L4075:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4050
	.p2align 4,,3
	jmp	.L4048
.L4073:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4047
	.cfi_endproc
.LFE471:
	.size	s370_58D0, .-s370_58D0
	.p2align 4,,15
	.globl	s370_58E0
	.type	s370_58E0, @function
s370_58E0:
.LFB472:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L4077
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4077:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L4105
.L4078:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L4106
.L4080:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4081
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4107
.L4082:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4108
.L4083:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4081
	testb	$4, 46264(%rbx,%rcx)
	je	.L4081
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L4084:
	movl	(%rax), %eax
	bswap	%eax
.L4085:
	movl	%eax, 304(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L4107:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4082
.L4081:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L4084
.L4105:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4078
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L4085
.L4108:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4083
	.p2align 4,,3
	jmp	.L4081
.L4106:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4080
	.cfi_endproc
.LFE472:
	.size	s370_58E0, .-s370_58E0
	.p2align 4,,15
	.globl	s370_58F0
	.type	s370_58F0, @function
s370_58F0:
.LFB473:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L4110
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4110:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L4138
.L4111:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L4139
.L4113:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4114
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4140
.L4115:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4141
.L4116:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4114
	testb	$4, 46264(%rbx,%rcx)
	je	.L4114
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L4117:
	movl	(%rax), %eax
	bswap	%eax
.L4118:
	movl	%eax, 312(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L4140:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4115
.L4114:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L4117
.L4138:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4111
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L4118
.L4141:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4116
	.p2align 4,,3
	jmp	.L4114
.L4139:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4113
	.cfi_endproc
.LFE473:
	.size	s370_58F0, .-s370_58F0
	.p2align 4,,15
	.globl	s370_store
	.type	s370_store, @function
s370_store:
.LFB474:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %esi
	movl	%edx, %eax
	shrl	$16, %esi
	movl	%edx, %ecx
	andl	$4095, %eax
	shrl	$12, %edx
	andl	$15, %esi
	shrl	$20, %ecx
	addl	192(%rbx,%rsi,8), %eax
	movl	%edx, %esi
	andl	$15, %ecx
	andl	$15, %esi
	je	.L4143
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4143:
	addq	$4, 136(%rbx)
	movl	%eax, %ebp
	movslq	%ecx, %rcx
	andl	$16777215, %ebp
	movb	$4, 130(%rbx)
	testb	$3, %al
	movl	192(%rbx,%rcx,8), %r12d
	jne	.L4170
.L4144:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4146
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4171
.L4147:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4172
.L4148:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4146
	testb	$2, 46264(%rbx,%rdx)
	je	.L4146
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4149:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4173
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4171:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4147
.L4146:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4149
.L4170:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4144
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4172:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4148
	jmp	.L4146
.L4173:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE474:
	.size	s370_store, .-s370_store
	.p2align 4,,15
	.globl	s370_5000
	.type	s370_5000, @function
s370_5000:
.LFB475:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4175
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4175:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	192(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4202
.L4176:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4178
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4203
.L4179:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4204
.L4180:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4178
	testb	$2, 46264(%rbx,%rdx)
	je	.L4178
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4181:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4205
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4203:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4179
.L4178:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4181
.L4202:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4176
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4204:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4180
	jmp	.L4178
.L4205:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE475:
	.size	s370_5000, .-s370_5000
	.p2align 4,,15
	.globl	s370_5010
	.type	s370_5010, @function
s370_5010:
.LFB476:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4207
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4207:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	200(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4234
.L4208:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4210
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4235
.L4211:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4236
.L4212:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4210
	testb	$2, 46264(%rbx,%rdx)
	je	.L4210
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4213:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4237
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4235:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4211
.L4210:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4213
.L4234:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4208
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4236:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4212
	jmp	.L4210
.L4237:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE476:
	.size	s370_5010, .-s370_5010
	.p2align 4,,15
	.globl	s370_5020
	.type	s370_5020, @function
s370_5020:
.LFB477:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4239
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4239:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	208(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4266
.L4240:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4242
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4267
.L4243:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4268
.L4244:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4242
	testb	$2, 46264(%rbx,%rdx)
	je	.L4242
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4245:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4269
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4267:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4243
.L4242:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4245
.L4266:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4240
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4268:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4244
	jmp	.L4242
.L4269:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE477:
	.size	s370_5020, .-s370_5020
	.p2align 4,,15
	.globl	s370_5030
	.type	s370_5030, @function
s370_5030:
.LFB478:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4271
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4271:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	216(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4298
.L4272:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4274
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4299
.L4275:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4300
.L4276:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4274
	testb	$2, 46264(%rbx,%rdx)
	je	.L4274
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4277:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4301
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4299:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4275
.L4274:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4277
.L4298:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4272
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4300:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4276
	jmp	.L4274
.L4301:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE478:
	.size	s370_5030, .-s370_5030
	.p2align 4,,15
	.globl	s370_5040
	.type	s370_5040, @function
s370_5040:
.LFB479:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4303
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4303:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	224(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4330
.L4304:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4306
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4331
.L4307:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4332
.L4308:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4306
	testb	$2, 46264(%rbx,%rdx)
	je	.L4306
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4309:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4333
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4331:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4307
.L4306:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4309
.L4330:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4304
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4332:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4308
	jmp	.L4306
.L4333:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE479:
	.size	s370_5040, .-s370_5040
	.p2align 4,,15
	.globl	s370_5050
	.type	s370_5050, @function
s370_5050:
.LFB480:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4335
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4335:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	232(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4362
.L4336:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4338
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4363
.L4339:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4364
.L4340:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4338
	testb	$2, 46264(%rbx,%rdx)
	je	.L4338
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4341:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4365
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4363:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4339
.L4338:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4341
.L4362:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4336
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4364:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4340
	jmp	.L4338
.L4365:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE480:
	.size	s370_5050, .-s370_5050
	.p2align 4,,15
	.globl	s370_5060
	.type	s370_5060, @function
s370_5060:
.LFB481:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4367
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4367:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	240(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4394
.L4368:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4370
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4395
.L4371:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4396
.L4372:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4370
	testb	$2, 46264(%rbx,%rdx)
	je	.L4370
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4373:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4397
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4395:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4371
.L4370:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4373
.L4394:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4368
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4396:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4372
	jmp	.L4370
.L4397:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE481:
	.size	s370_5060, .-s370_5060
	.p2align 4,,15
	.globl	s370_5070
	.type	s370_5070, @function
s370_5070:
.LFB482:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4399
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4399:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	248(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4426
.L4400:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4402
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4427
.L4403:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4428
.L4404:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4402
	testb	$2, 46264(%rbx,%rdx)
	je	.L4402
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4405:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4429
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4427:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4403
.L4402:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4405
.L4426:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4400
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4428:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4404
	jmp	.L4402
.L4429:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE482:
	.size	s370_5070, .-s370_5070
	.p2align 4,,15
	.globl	s370_5080
	.type	s370_5080, @function
s370_5080:
.LFB483:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4431
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4431:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	256(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4458
.L4432:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4434
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4459
.L4435:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4460
.L4436:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4434
	testb	$2, 46264(%rbx,%rdx)
	je	.L4434
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4437:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4461
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4459:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4435
.L4434:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4437
.L4458:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4432
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4460:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4436
	jmp	.L4434
.L4461:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE483:
	.size	s370_5080, .-s370_5080
	.p2align 4,,15
	.globl	s370_5090
	.type	s370_5090, @function
s370_5090:
.LFB484:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4463
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4463:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	264(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4490
.L4464:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4466
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4491
.L4467:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4492
.L4468:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4466
	testb	$2, 46264(%rbx,%rdx)
	je	.L4466
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4469:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4493
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4491:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4467
.L4466:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4469
.L4490:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4464
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4492:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4468
	jmp	.L4466
.L4493:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE484:
	.size	s370_5090, .-s370_5090
	.p2align 4,,15
	.globl	s370_50A0
	.type	s370_50A0, @function
s370_50A0:
.LFB485:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4495
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4495:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	272(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4522
.L4496:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4498
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4523
.L4499:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4524
.L4500:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4498
	testb	$2, 46264(%rbx,%rdx)
	je	.L4498
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4501:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4525
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4523:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4499
.L4498:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4501
.L4522:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4496
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4524:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4500
	jmp	.L4498
.L4525:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE485:
	.size	s370_50A0, .-s370_50A0
	.p2align 4,,15
	.globl	s370_50B0
	.type	s370_50B0, @function
s370_50B0:
.LFB486:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4527
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4527:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	280(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4554
.L4528:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4530
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4555
.L4531:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4556
.L4532:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4530
	testb	$2, 46264(%rbx,%rdx)
	je	.L4530
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4533:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4557
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4555:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4531
.L4530:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4533
.L4554:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4528
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4556:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4532
	jmp	.L4530
.L4557:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE486:
	.size	s370_50B0, .-s370_50B0
	.p2align 4,,15
	.globl	s370_50C0
	.type	s370_50C0, @function
s370_50C0:
.LFB487:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4559
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4559:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	288(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4586
.L4560:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4562
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4587
.L4563:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4588
.L4564:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4562
	testb	$2, 46264(%rbx,%rdx)
	je	.L4562
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4565:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4589
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4587:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4563
.L4562:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4565
.L4586:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4560
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4588:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4564
	jmp	.L4562
.L4589:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE487:
	.size	s370_50C0, .-s370_50C0
	.p2align 4,,15
	.globl	s370_50D0
	.type	s370_50D0, @function
s370_50D0:
.LFB488:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4591
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4591:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	296(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4618
.L4592:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4594
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4619
.L4595:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4620
.L4596:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4594
	testb	$2, 46264(%rbx,%rdx)
	je	.L4594
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4597:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4621
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4619:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4595
.L4594:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4597
.L4618:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4592
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4620:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4596
	jmp	.L4594
.L4621:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE488:
	.size	s370_50D0, .-s370_50D0
	.p2align 4,,15
	.globl	s370_50E0
	.type	s370_50E0, @function
s370_50E0:
.LFB489:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4623
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4623:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	304(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4650
.L4624:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4626
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4651
.L4627:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4652
.L4628:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4626
	testb	$2, 46264(%rbx,%rdx)
	je	.L4626
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4629:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4653
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4651:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4627
.L4626:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4629
.L4650:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4624
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4652:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4628
	jmp	.L4626
.L4653:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE489:
	.size	s370_50E0, .-s370_50E0
	.p2align 4,,15
	.globl	s370_50F0
	.type	s370_50F0, @function
s370_50F0:
.LFB490:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %eax
	shrl	$12, %edx
	movl	%edx, %esi
	andl	$4095, %eax
	andl	$15, %esi
	je	.L4655
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
.L4655:
	movl	%eax, %ebp
	movb	$4, 130(%rbx)
	movl	312(%rbx), %r12d
	addq	$4, 136(%rbx)
	andl	$16777215, %ebp
	testb	$3, %al
	jne	.L4682
.L4656:
	leal	5(%rsi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4658
	leal	1(%rdx), %edi
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%edi, %rdi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdi,8)
	jne	.L4683
.L4659:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L4684
.L4660:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L4658
	testb	$2, 46264(%rbx,%rdx)
	je	.L4658
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L4661:
	subl	$77, %ebp
	bswap	%r12d
	movl	%r12d, (%rax)
	cmpl	$6, %ebp
	jbe	.L4685
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4683:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rdi)
	jne	.L4659
.L4658:
	movzbl	97(%rbx), %r8d
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L4661
.L4682:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4656
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%esi, %edx
	movl	%ebp, %esi
	movl	%r12d, %edi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_vstore4_full
.L4684:
	.cfi_restore_state
	cmpb	43192(%rbx,%rdx), %dil
	je	.L4660
	jmp	.L4658
.L4685:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE490:
	.size	s370_50F0, .-s370_50F0
	.p2align 4,,15
	.globl	s370_load_address
	.type	s370_load_address, @function
s370_load_address:
.LFB491:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edi
	movl	%eax, %ecx
	shrl	$16, %edi
	movl	%eax, %edx
	shrl	$20, %ecx
	andl	$4095, %edx
	andl	$15, %edi
	shrl	$12, %eax
	andl	$15, %ecx
	addl	192(%rsi,%rdi,8), %edx
	andl	$15, %eax
	je	.L4687
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4687:
	movslq	%ecx, %rcx
	andl	$16777215, %edx
	addq	$4, 136(%rsi)
	movl	%edx, 192(%rsi,%rcx,8)
	ret
	.cfi_endproc
.LFE491:
	.size	s370_load_address, .-s370_load_address
	.p2align 4,,15
	.globl	s370_4100
	.type	s370_4100, @function
s370_4100:
.LFB492:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4692
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4692:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 192(%rsi)
	ret
	.cfi_endproc
.LFE492:
	.size	s370_4100, .-s370_4100
	.p2align 4,,15
	.globl	s370_4110
	.type	s370_4110, @function
s370_4110:
.LFB493:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4697
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4697:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 200(%rsi)
	ret
	.cfi_endproc
.LFE493:
	.size	s370_4110, .-s370_4110
	.p2align 4,,15
	.globl	s370_4120
	.type	s370_4120, @function
s370_4120:
.LFB494:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4702
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4702:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 208(%rsi)
	ret
	.cfi_endproc
.LFE494:
	.size	s370_4120, .-s370_4120
	.p2align 4,,15
	.globl	s370_4130
	.type	s370_4130, @function
s370_4130:
.LFB495:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4707
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4707:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 216(%rsi)
	ret
	.cfi_endproc
.LFE495:
	.size	s370_4130, .-s370_4130
	.p2align 4,,15
	.globl	s370_4140
	.type	s370_4140, @function
s370_4140:
.LFB496:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4712
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4712:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 224(%rsi)
	ret
	.cfi_endproc
.LFE496:
	.size	s370_4140, .-s370_4140
	.p2align 4,,15
	.globl	s370_4150
	.type	s370_4150, @function
s370_4150:
.LFB497:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4717
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4717:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 232(%rsi)
	ret
	.cfi_endproc
.LFE497:
	.size	s370_4150, .-s370_4150
	.p2align 4,,15
	.globl	s370_4160
	.type	s370_4160, @function
s370_4160:
.LFB498:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4722
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4722:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 240(%rsi)
	ret
	.cfi_endproc
.LFE498:
	.size	s370_4160, .-s370_4160
	.p2align 4,,15
	.globl	s370_4170
	.type	s370_4170, @function
s370_4170:
.LFB499:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4727
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4727:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 248(%rsi)
	ret
	.cfi_endproc
.LFE499:
	.size	s370_4170, .-s370_4170
	.p2align 4,,15
	.globl	s370_4180
	.type	s370_4180, @function
s370_4180:
.LFB500:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4732
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4732:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 256(%rsi)
	ret
	.cfi_endproc
.LFE500:
	.size	s370_4180, .-s370_4180
	.p2align 4,,15
	.globl	s370_4190
	.type	s370_4190, @function
s370_4190:
.LFB501:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4737
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4737:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 264(%rsi)
	ret
	.cfi_endproc
.LFE501:
	.size	s370_4190, .-s370_4190
	.p2align 4,,15
	.globl	s370_41A0
	.type	s370_41A0, @function
s370_41A0:
.LFB502:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4742
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4742:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 272(%rsi)
	ret
	.cfi_endproc
.LFE502:
	.size	s370_41A0, .-s370_41A0
	.p2align 4,,15
	.globl	s370_41B0
	.type	s370_41B0, @function
s370_41B0:
.LFB503:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4747
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4747:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 280(%rsi)
	ret
	.cfi_endproc
.LFE503:
	.size	s370_41B0, .-s370_41B0
	.p2align 4,,15
	.globl	s370_41C0
	.type	s370_41C0, @function
s370_41C0:
.LFB504:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4752
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4752:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 288(%rsi)
	ret
	.cfi_endproc
.LFE504:
	.size	s370_41C0, .-s370_41C0
	.p2align 4,,15
	.globl	s370_41D0
	.type	s370_41D0, @function
s370_41D0:
.LFB505:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4757
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4757:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 296(%rsi)
	ret
	.cfi_endproc
.LFE505:
	.size	s370_41D0, .-s370_41D0
	.p2align 4,,15
	.globl	s370_41E0
	.type	s370_41E0, @function
s370_41E0:
.LFB506:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4762
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4762:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 304(%rsi)
	ret
	.cfi_endproc
.LFE506:
	.size	s370_41E0, .-s370_41E0
	.p2align 4,,15
	.globl	s370_41F0
	.type	s370_41F0, @function
s370_41F0:
.LFB507:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$12, %eax
	andl	$4095, %edx
	andl	$15, %eax
	je	.L4767
	cltq
	addl	192(%rsi,%rax,8), %edx
.L4767:
	addq	$4, 136(%rsi)
	andl	$16777215, %edx
	movl	%edx, 312(%rsi)
	ret
	.cfi_endproc
.LFE507:
	.size	s370_41F0, .-s370_41F0
	.p2align 4,,15
	.globl	s370_insert_character
	.type	s370_insert_character, @function
s370_insert_character:
.LFB508:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L4798
.L4772:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L4773
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L4773:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	leal	-80(%r13), %edx
	cmpl	$3, %edx
	jbe	.L4799
.L4774:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4775
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4800
.L4776:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4801
.L4777:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4775
	testb	$4, 46264(%rbx,%rcx)
	je	.L4775
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L4778:
	movzbl	(%rax), %eax
	movslq	%r12d, %r12
	movb	%al, 192(%rbx,%r12,8)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L4800:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4776
.L4775:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L4778
.L4798:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L4772
.L4801:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4777
	jmp	.L4775
.L4799:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4774
	.cfi_endproc
.LFE508:
	.size	s370_insert_character, .-s370_insert_character
	.p2align 4,,15
	.globl	s370_add_logical
	.type	s370_add_logical, @function
s370_add_logical:
.LFB509:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L4837
.L4803:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L4804
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L4804:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$3, %bpl
	jne	.L4838
.L4805:
	leal	-77(%r13), %edx
	cmpl	$6, %edx
	jbe	.L4839
.L4807:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4808
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4840
.L4809:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4841
.L4810:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4808
	testb	$4, 46264(%rbx,%rcx)
	je	.L4808
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L4811:
	movl	(%rax), %eax
	bswap	%eax
.L4812:
	movslq	%r12d, %r12
	leaq	(%rbx,%r12,8), %rcx
	movl	192(%rcx), %edx
	addl	%edx, %eax
	movl	%eax, 192(%rcx)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L4840:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4809
.L4808:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L4811
.L4838:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4805
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch4_full
	jmp	.L4812
.L4837:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L4803
.L4841:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4810
	jmp	.L4808
.L4839:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4807
	.cfi_endproc
.LFE509:
	.size	s370_add_logical, .-s370_add_logical
	.p2align 4,,15
	.globl	s370_compare_logical
	.type	s370_compare_logical, @function
s370_compare_logical:
.LFB510:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	movl	%eax, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	shrl	$20, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	shrl	$12, %eax
	andl	$15, %r12d
	addl	192(%rsi,%rdx,8), %ebp
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L4843
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4843:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$3, %bpl
	jne	.L4874
.L4844:
	leal	-77(%r13), %edx
	cmpl	$6, %edx
	jbe	.L4875
.L4846:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4847
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4876
.L4848:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4877
.L4849:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4847
	testb	$4, 46264(%rbx,%rcx)
	je	.L4847
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L4850:
	movl	(%rax), %eax
	bswap	%eax
.L4851:
	movslq	%r12d, %r12
	movl	$1, %edx
	movl	192(%rbx,%r12,8), %ecx
	cmpl	%eax, %ecx
	jb	.L4852
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L4852:
	movb	%dl, 100(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L4876:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4848
.L4847:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L4850
.L4874:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4844
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch4_full
	jmp	.L4851
.L4877:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4849
	.p2align 4,,3
	jmp	.L4847
.L4875:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4846
	.cfi_endproc
.LFE510:
	.size	s370_compare_logical, .-s370_compare_logical
	.p2align 4,,15
	.globl	s370_5500
	.type	s370_5500, @function
s370_5500:
.LFB511:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L4879
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4879:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L4910
.L4880:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L4911
.L4882:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4883
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4912
.L4884:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4913
.L4885:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4883
	testb	$4, 46264(%rbx,%rcx)
	je	.L4883
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L4886:
	movl	(%rax), %eax
	bswap	%eax
.L4887:
	movl	192(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L4888
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L4888:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L4912:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4884
.L4883:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L4886
.L4910:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4880
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L4887
.L4913:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4885
	.p2align 4,,3
	jmp	.L4883
.L4911:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4882
	.cfi_endproc
.LFE511:
	.size	s370_5500, .-s370_5500
	.p2align 4,,15
	.globl	s370_5510
	.type	s370_5510, @function
s370_5510:
.LFB512:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L4915
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4915:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L4946
.L4916:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L4947
.L4918:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4919
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4948
.L4920:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4949
.L4921:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4919
	testb	$4, 46264(%rbx,%rcx)
	je	.L4919
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L4922:
	movl	(%rax), %eax
	bswap	%eax
.L4923:
	movl	200(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L4924
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L4924:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L4948:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4920
.L4919:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L4922
.L4946:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4916
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L4923
.L4949:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4921
	.p2align 4,,3
	jmp	.L4919
.L4947:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4918
	.cfi_endproc
.LFE512:
	.size	s370_5510, .-s370_5510
	.p2align 4,,15
	.globl	s370_5520
	.type	s370_5520, @function
s370_5520:
.LFB513:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L4951
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4951:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L4982
.L4952:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L4983
.L4954:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4955
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L4984
.L4956:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L4985
.L4957:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4955
	testb	$4, 46264(%rbx,%rcx)
	je	.L4955
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L4958:
	movl	(%rax), %eax
	bswap	%eax
.L4959:
	movl	208(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L4960
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L4960:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L4984:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4956
.L4955:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L4958
.L4982:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4952
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L4959
.L4985:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4957
	.p2align 4,,3
	jmp	.L4955
.L4983:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4954
	.cfi_endproc
.LFE513:
	.size	s370_5520, .-s370_5520
	.p2align 4,,15
	.globl	s370_5530
	.type	s370_5530, @function
s370_5530:
.LFB514:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L4987
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L4987:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5018
.L4988:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5019
.L4990:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L4991
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5020
.L4992:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5021
.L4993:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L4991
	testb	$4, 46264(%rbx,%rcx)
	je	.L4991
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L4994:
	movl	(%rax), %eax
	bswap	%eax
.L4995:
	movl	216(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L4996
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L4996:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5020:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L4992
.L4991:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L4994
.L5018:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L4988
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L4995
.L5021:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L4993
	.p2align 4,,3
	jmp	.L4991
.L5019:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L4990
	.cfi_endproc
.LFE514:
	.size	s370_5530, .-s370_5530
	.p2align 4,,15
	.globl	s370_5540
	.type	s370_5540, @function
s370_5540:
.LFB515:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5023
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5023:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5054
.L5024:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5055
.L5026:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5027
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5056
.L5028:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5057
.L5029:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5027
	testb	$4, 46264(%rbx,%rcx)
	je	.L5027
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5030:
	movl	(%rax), %eax
	bswap	%eax
.L5031:
	movl	224(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5032
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5032:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5056:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5028
.L5027:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5030
.L5054:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5024
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5031
.L5057:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5029
	.p2align 4,,3
	jmp	.L5027
.L5055:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5026
	.cfi_endproc
.LFE515:
	.size	s370_5540, .-s370_5540
	.p2align 4,,15
	.globl	s370_5550
	.type	s370_5550, @function
s370_5550:
.LFB516:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5059
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5059:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5090
.L5060:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5091
.L5062:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5063
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5092
.L5064:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5093
.L5065:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5063
	testb	$4, 46264(%rbx,%rcx)
	je	.L5063
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5066:
	movl	(%rax), %eax
	bswap	%eax
.L5067:
	movl	232(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5068
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5068:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5092:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5064
.L5063:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5066
.L5090:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5060
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5067
.L5093:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5065
	.p2align 4,,3
	jmp	.L5063
.L5091:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5062
	.cfi_endproc
.LFE516:
	.size	s370_5550, .-s370_5550
	.p2align 4,,15
	.globl	s370_5560
	.type	s370_5560, @function
s370_5560:
.LFB517:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5095
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5095:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5126
.L5096:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5127
.L5098:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5099
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5128
.L5100:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5129
.L5101:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5099
	testb	$4, 46264(%rbx,%rcx)
	je	.L5099
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5102:
	movl	(%rax), %eax
	bswap	%eax
.L5103:
	movl	240(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5104
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5104:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5128:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5100
.L5099:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5102
.L5126:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5096
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5103
.L5129:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5101
	.p2align 4,,3
	jmp	.L5099
.L5127:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5098
	.cfi_endproc
.LFE517:
	.size	s370_5560, .-s370_5560
	.p2align 4,,15
	.globl	s370_5570
	.type	s370_5570, @function
s370_5570:
.LFB518:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5131
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5131:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5162
.L5132:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5163
.L5134:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5135
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5164
.L5136:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5165
.L5137:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5135
	testb	$4, 46264(%rbx,%rcx)
	je	.L5135
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5138:
	movl	(%rax), %eax
	bswap	%eax
.L5139:
	movl	248(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5140
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5140:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5164:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5136
.L5135:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5138
.L5162:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5132
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5139
.L5165:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5137
	.p2align 4,,3
	jmp	.L5135
.L5163:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5134
	.cfi_endproc
.LFE518:
	.size	s370_5570, .-s370_5570
	.p2align 4,,15
	.globl	s370_5580
	.type	s370_5580, @function
s370_5580:
.LFB519:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5167
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5167:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5198
.L5168:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5199
.L5170:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5171
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5200
.L5172:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5201
.L5173:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5171
	testb	$4, 46264(%rbx,%rcx)
	je	.L5171
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5174:
	movl	(%rax), %eax
	bswap	%eax
.L5175:
	movl	256(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5176
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5176:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5200:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5172
.L5171:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5174
.L5198:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5168
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5175
.L5201:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5173
	.p2align 4,,3
	jmp	.L5171
.L5199:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5170
	.cfi_endproc
.LFE519:
	.size	s370_5580, .-s370_5580
	.p2align 4,,15
	.globl	s370_5590
	.type	s370_5590, @function
s370_5590:
.LFB520:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5203
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5203:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5234
.L5204:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5235
.L5206:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5207
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5236
.L5208:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5237
.L5209:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5207
	testb	$4, 46264(%rbx,%rcx)
	je	.L5207
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5210:
	movl	(%rax), %eax
	bswap	%eax
.L5211:
	movl	264(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5212
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5212:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5236:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5208
.L5207:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5210
.L5234:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5204
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5211
.L5237:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5209
	.p2align 4,,3
	jmp	.L5207
.L5235:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5206
	.cfi_endproc
.LFE520:
	.size	s370_5590, .-s370_5590
	.p2align 4,,15
	.globl	s370_55A0
	.type	s370_55A0, @function
s370_55A0:
.LFB521:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5239
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5239:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5270
.L5240:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5271
.L5242:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5243
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5272
.L5244:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5273
.L5245:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5243
	testb	$4, 46264(%rbx,%rcx)
	je	.L5243
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5246:
	movl	(%rax), %eax
	bswap	%eax
.L5247:
	movl	272(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5248
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5248:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5272:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5244
.L5243:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5246
.L5270:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5240
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5247
.L5273:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5245
	.p2align 4,,3
	jmp	.L5243
.L5271:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5242
	.cfi_endproc
.LFE521:
	.size	s370_55A0, .-s370_55A0
	.p2align 4,,15
	.globl	s370_55B0
	.type	s370_55B0, @function
s370_55B0:
.LFB522:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5275
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5275:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5306
.L5276:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5307
.L5278:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5279
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5308
.L5280:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5309
.L5281:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5279
	testb	$4, 46264(%rbx,%rcx)
	je	.L5279
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5282:
	movl	(%rax), %eax
	bswap	%eax
.L5283:
	movl	280(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5284
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5284:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5308:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5280
.L5279:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5282
.L5306:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5276
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5283
.L5309:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5281
	.p2align 4,,3
	jmp	.L5279
.L5307:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5278
	.cfi_endproc
.LFE522:
	.size	s370_55B0, .-s370_55B0
	.p2align 4,,15
	.globl	s370_55C0
	.type	s370_55C0, @function
s370_55C0:
.LFB523:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5311
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5311:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5342
.L5312:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5343
.L5314:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5315
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5344
.L5316:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5345
.L5317:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5315
	testb	$4, 46264(%rbx,%rcx)
	je	.L5315
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5318:
	movl	(%rax), %eax
	bswap	%eax
.L5319:
	movl	288(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5320
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5320:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5344:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5316
.L5315:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5318
.L5342:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5312
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5319
.L5345:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5317
	.p2align 4,,3
	jmp	.L5315
.L5343:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5314
	.cfi_endproc
.LFE523:
	.size	s370_55C0, .-s370_55C0
	.p2align 4,,15
	.globl	s370_55D0
	.type	s370_55D0, @function
s370_55D0:
.LFB524:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5347
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5347:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5378
.L5348:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5379
.L5350:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5351
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5380
.L5352:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5381
.L5353:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5351
	testb	$4, 46264(%rbx,%rcx)
	je	.L5351
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5354:
	movl	(%rax), %eax
	bswap	%eax
.L5355:
	movl	296(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5356
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5356:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5380:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5352
.L5351:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5354
.L5378:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5348
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5355
.L5381:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5353
	.p2align 4,,3
	jmp	.L5351
.L5379:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5350
	.cfi_endproc
.LFE524:
	.size	s370_55D0, .-s370_55D0
	.p2align 4,,15
	.globl	s370_55E0
	.type	s370_55E0, @function
s370_55E0:
.LFB525:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5383
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5383:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5414
.L5384:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5415
.L5386:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5387
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5416
.L5388:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5417
.L5389:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5387
	testb	$4, 46264(%rbx,%rcx)
	je	.L5387
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5390:
	movl	(%rax), %eax
	bswap	%eax
.L5391:
	movl	304(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5392
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5392:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5416:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5388
.L5387:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5390
.L5414:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5384
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5391
.L5417:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5389
	.p2align 4,,3
	jmp	.L5387
.L5415:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5386
	.cfi_endproc
.LFE525:
	.size	s370_55E0, .-s370_55E0
	.p2align 4,,15
	.globl	s370_55F0
	.type	s370_55F0, @function
s370_55F0:
.LFB526:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L5419
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %ebp
.L5419:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$3, %bpl
	jne	.L5450
.L5420:
	leal	-77(%r12), %edx
	cmpl	$6, %edx
	jbe	.L5451
.L5422:
	leal	5(%r13), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5423
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5452
.L5424:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5453
.L5425:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5423
	testb	$4, 46264(%rbx,%rcx)
	je	.L5423
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5426:
	movl	(%rax), %eax
	bswap	%eax
.L5427:
	movl	312(%rbx), %ecx
	movl	$1, %edx
	cmpl	%eax, %ecx
	jb	.L5428
	cmpl	%ecx, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
.L5428:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L5452:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5424
.L5423:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L5426
.L5450:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5420
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L5427
.L5453:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5425
	.p2align 4,,3
	jmp	.L5423
.L5451:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5422
	.cfi_endproc
.LFE526:
	.size	s370_55F0, .-s370_55F0
	.p2align 4,,15
	.globl	s370_load_halfword
	.type	s370_load_halfword, @function
s370_load_halfword:
.LFB527:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L5487
.L5455:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L5456
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L5456:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$1, %bpl
	jne	.L5488
.L5457:
	leal	-79(%r13), %edx
	cmpl	$4, %edx
	jbe	.L5489
.L5459:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5460
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5490
.L5461:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5491
.L5462:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5460
	testb	$4, 46264(%rbx,%rcx)
	je	.L5460
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L5463:
	movzwl	(%rax), %eax
#APP
# 477 "vstore.h" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
.L5464:
	movslq	%r12d, %r12
	cwtl
	movl	%eax, 192(%rbx,%r12,8)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L5490:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5461
.L5460:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L5463
.L5488:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2047, %edx
	jne	.L5457
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch2_full
	jmp	.L5464
.L5487:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L5455
.L5491:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5462
	jmp	.L5460
.L5489:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5459
	.cfi_endproc
.LFE527:
	.size	s370_load_halfword, .-s370_load_halfword
	.p2align 4,,15
	.globl	s370_branch_relative_on_condition
	.type	s370_branch_relative_on_condition, @function
s370_branch_relative_on_condition:
.LFB528:
	.cfi_startproc
	movzbl	100(%rsi), %ecx
	movl	$128, %eax
	movzbl	1(%rdi), %edx
	sarl	%cl, %eax
	testl	%eax, %edx
	je	.L5493
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5494
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5494
	cmpq	160(%rsi), %rax
	jae	.L5494
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5493:
	addq	$4, 136(%rsi)
	ret
.L5494:
	testb	$1, %dl
	jne	.L5496
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5497:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5502
.L5492:
	rep ret
.L5502:
	testb	$-128, 54(%rsi)
	je	.L5492
	orl	$8388608, 56(%rsi)
	ret
.L5496:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5497
	.cfi_endproc
.LFE528:
	.size	s370_branch_relative_on_condition, .-s370_branch_relative_on_condition
	.p2align 4,,15
	.globl	s370_A714
	.type	s370_A714, @function
s370_A714:
.LFB529:
	.cfi_startproc
	cmpb	$3, 100(%rsi)
	je	.L5513
	addq	$4, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5513:
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5505
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5505
	cmpq	160(%rsi), %rax
	jae	.L5505
	movq	%rax, 136(%rsi)
	ret
.L5505:
	testb	$1, %dl
	jne	.L5507
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5508:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5514
.L5503:
	rep ret
.L5514:
	testb	$-128, 54(%rsi)
	je	.L5503
	orl	$8388608, 56(%rsi)
	ret
.L5507:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5508
	.cfi_endproc
.LFE529:
	.size	s370_A714, .-s370_A714
	.p2align 4,,15
	.globl	s370_A724
	.type	s370_A724, @function
s370_A724:
.LFB530:
	.cfi_startproc
	cmpb	$2, 100(%rsi)
	je	.L5525
	addq	$4, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5525:
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5517
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5517
	cmpq	160(%rsi), %rax
	jae	.L5517
	movq	%rax, 136(%rsi)
	ret
.L5517:
	testb	$1, %dl
	jne	.L5519
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5520:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5526
.L5515:
	rep ret
.L5526:
	testb	$-128, 54(%rsi)
	je	.L5515
	orl	$8388608, 56(%rsi)
	ret
.L5519:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5520
	.cfi_endproc
.LFE530:
	.size	s370_A724, .-s370_A724
	.p2align 4,,15
	.globl	s370_A734
	.type	s370_A734, @function
s370_A734:
.LFB531:
	.cfi_startproc
	cmpb	$1, 100(%rsi)
	jbe	.L5528
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5529
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5529
	cmpq	160(%rsi), %rax
	jae	.L5529
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5528:
	addq	$4, 136(%rsi)
	ret
.L5529:
	testb	$1, %dl
	jne	.L5531
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5532:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5537
.L5527:
	rep ret
.L5537:
	testb	$-128, 54(%rsi)
	je	.L5527
	orl	$8388608, 56(%rsi)
	ret
.L5531:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5532
	.cfi_endproc
.LFE531:
	.size	s370_A734, .-s370_A734
	.p2align 4,,15
	.globl	s370_A744
	.type	s370_A744, @function
s370_A744:
.LFB532:
	.cfi_startproc
	cmpb	$1, 100(%rsi)
	je	.L5548
	addq	$4, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5548:
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5540
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5540
	cmpq	160(%rsi), %rax
	jae	.L5540
	movq	%rax, 136(%rsi)
	ret
.L5540:
	testb	$1, %dl
	jne	.L5542
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5543:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5549
.L5538:
	rep ret
.L5549:
	testb	$-128, 54(%rsi)
	je	.L5538
	orl	$8388608, 56(%rsi)
	ret
.L5542:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5543
	.cfi_endproc
.LFE532:
	.size	s370_A744, .-s370_A744
	.p2align 4,,15
	.globl	s370_A754
	.type	s370_A754, @function
s370_A754:
.LFB533:
	.cfi_startproc
	testb	$1, 100(%rsi)
	je	.L5551
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5552
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5552
	cmpq	160(%rsi), %rax
	jae	.L5552
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5551:
	addq	$4, 136(%rsi)
	ret
.L5552:
	testb	$1, %dl
	jne	.L5554
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5555:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5560
.L5550:
	rep ret
.L5560:
	testb	$-128, 54(%rsi)
	je	.L5550
	orl	$8388608, 56(%rsi)
	ret
.L5554:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5555
	.cfi_endproc
.LFE533:
	.size	s370_A754, .-s370_A754
	.p2align 4,,15
	.globl	s370_A774
	.type	s370_A774, @function
s370_A774:
.LFB534:
	.cfi_startproc
	cmpb	$0, 100(%rsi)
	je	.L5562
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5563
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5563
	cmpq	160(%rsi), %rax
	jae	.L5563
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5562:
	addq	$4, 136(%rsi)
	ret
.L5563:
	testb	$1, %dl
	jne	.L5565
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5566:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5571
.L5561:
	rep ret
.L5571:
	testb	$-128, 54(%rsi)
	je	.L5561
	orl	$8388608, 56(%rsi)
	ret
.L5565:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5566
	.cfi_endproc
.LFE534:
	.size	s370_A774, .-s370_A774
	.p2align 4,,15
	.globl	s370_A784
	.type	s370_A784, @function
s370_A784:
.LFB535:
	.cfi_startproc
	cmpb	$0, 100(%rsi)
	jne	.L5573
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5574
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5574
	cmpq	160(%rsi), %rax
	jae	.L5574
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5573:
	addq	$4, 136(%rsi)
	ret
.L5574:
	testb	$1, %dl
	jne	.L5576
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5577:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5582
.L5572:
	rep ret
.L5582:
	testb	$-128, 54(%rsi)
	je	.L5572
	orl	$8388608, 56(%rsi)
	ret
.L5576:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5577
	.cfi_endproc
.LFE535:
	.size	s370_A784, .-s370_A784
	.p2align 4,,15
	.globl	s370_A7A4
	.type	s370_A7A4, @function
s370_A7A4:
.LFB536:
	.cfi_startproc
	testb	$1, 100(%rsi)
	jne	.L5584
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5585
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5585
	cmpq	160(%rsi), %rax
	jae	.L5585
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5584:
	addq	$4, 136(%rsi)
	ret
.L5585:
	testb	$1, %dl
	jne	.L5587
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5588:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5593
.L5583:
	rep ret
.L5593:
	testb	$-128, 54(%rsi)
	je	.L5583
	orl	$8388608, 56(%rsi)
	ret
.L5587:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5588
	.cfi_endproc
.LFE536:
	.size	s370_A7A4, .-s370_A7A4
	.p2align 4,,15
	.globl	s370_A7B4
	.type	s370_A7B4, @function
s370_A7B4:
.LFB537:
	.cfi_startproc
	cmpb	$1, 100(%rsi)
	je	.L5595
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5596
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5596
	cmpq	160(%rsi), %rax
	jae	.L5596
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5595:
	addq	$4, 136(%rsi)
	ret
.L5596:
	testb	$1, %dl
	jne	.L5598
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5599:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5604
.L5594:
	rep ret
.L5604:
	testb	$-128, 54(%rsi)
	je	.L5594
	orl	$8388608, 56(%rsi)
	ret
.L5598:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5599
	.cfi_endproc
.LFE537:
	.size	s370_A7B4, .-s370_A7B4
	.p2align 4,,15
	.globl	s370_A7C4
	.type	s370_A7C4, @function
s370_A7C4:
.LFB538:
	.cfi_startproc
	cmpb	$1, 100(%rsi)
	jbe	.L5615
	addq	$4, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5615:
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5607
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5607
	cmpq	160(%rsi), %rax
	jae	.L5607
	movq	%rax, 136(%rsi)
	ret
.L5607:
	testb	$1, %dl
	jne	.L5609
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5610:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5616
.L5605:
	rep ret
.L5616:
	testb	$-128, 54(%rsi)
	je	.L5605
	orl	$8388608, 56(%rsi)
	ret
.L5609:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5610
	.cfi_endproc
.LFE538:
	.size	s370_A7C4, .-s370_A7C4
	.p2align 4,,15
	.globl	s370_A7D4
	.type	s370_A7D4, @function
s370_A7D4:
.LFB539:
	.cfi_startproc
	cmpb	$2, 100(%rsi)
	je	.L5618
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5619
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5619
	cmpq	160(%rsi), %rax
	jae	.L5619
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5618:
	addq	$4, 136(%rsi)
	ret
.L5619:
	testb	$1, %dl
	jne	.L5621
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5622:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5627
.L5617:
	rep ret
.L5627:
	testb	$-128, 54(%rsi)
	je	.L5617
	orl	$8388608, 56(%rsi)
	ret
.L5621:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5622
	.cfi_endproc
.LFE539:
	.size	s370_A7D4, .-s370_A7D4
	.p2align 4,,15
	.globl	s370_A7E4
	.type	s370_A7E4, @function
s370_A7E4:
.LFB540:
	.cfi_startproc
	cmpb	$3, 100(%rsi)
	je	.L5629
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5630
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5630
	cmpq	160(%rsi), %rax
	jae	.L5630
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5629:
	addq	$4, 136(%rsi)
	ret
.L5630:
	testb	$1, %dl
	jne	.L5632
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5633:
	movq	$0, 160(%rsi)
	andb	$4, %dl
	jne	.L5638
.L5628:
	rep ret
.L5638:
	testb	$-128, 54(%rsi)
	je	.L5628
	orl	$8388608, 56(%rsi)
	ret
.L5632:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5633
	.cfi_endproc
.LFE540:
	.size	s370_A7E4, .-s370_A7E4
	.p2align 4,,15
	.globl	s370_A7F4
	.type	s370_A7F4, @function
s370_A7F4:
.LFB541:
	.cfi_startproc
	movzbl	808(%rsi), %edx
	movl	(%rdi), %eax
	testb	$5, %dl
	bswap	%eax
	movswl	%ax, %ecx
	jne	.L5640
	leal	(%rcx,%rcx), %eax
	cltq
	addq	136(%rsi), %rax
	cmpq	144(%rsi), %rax
	jb	.L5640
	cmpq	160(%rsi), %rax
	jae	.L5640
	movq	%rax, 136(%rsi)
	ret
.L5640:
	testb	$1, %dl
	jne	.L5642
	movq	136(%rsi), %rax
	subq	144(%rsi), %rax
	addl	168(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5643:
	movq	$0, 160(%rsi)
	andl	$4, %edx
	jne	.L5648
.L5639:
	rep ret
.L5648:
	testb	$-128, 54(%rsi)
	je	.L5639
	orl	$8388608, 56(%rsi)
	ret
.L5642:
	movl	800(%rsi), %eax
	leal	(%rax,%rcx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5643
	.cfi_endproc
.LFE541:
	.size	s370_A7F4, .-s370_A7F4
	.p2align 4,,15
	.globl	s370_branch_on_count_register
	.type	s370_branch_on_count_register, @function
s370_branch_on_count_register:
.LFB542:
	.cfi_startproc
	movzbl	1(%rdi), %eax
	movl	%eax, %ecx
	shrq	%rax
	andl	$15, %ecx
	andl	$120, %eax
	movslq	%ecx, %rdx
	addq	%rsi, %rax
	movl	192(%rsi,%rdx,8), %edi
	subl	$1, 192(%rax)
	je	.L5650
	testl	%ecx, %ecx
	je	.L5650
	movzbl	808(%rsi), %edx
	movl	%edi, %eax
	andl	$16777215, %eax
	testb	$5, %dl
	jne	.L5651
	andl	$16775169, %edi
	cmpl	168(%rsi), %edi
	jne	.L5651
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5650:
	addq	$2, 136(%rsi)
	ret
.L5651:
	andb	$4, %dl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L5661
.L5649:
	rep ret
.L5661:
	testb	$-128, 54(%rsi)
	je	.L5649
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE542:
	.size	s370_branch_on_count_register, .-s370_branch_on_count_register
	.p2align 4,,15
	.globl	s370_branch_on_count
	.type	s370_branch_on_count, @function
s370_branch_on_count:
.LFB543:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	movl	%eax, %edi
	shrl	$20, %edx
	shrl	$16, %edi
	movl	%eax, %ecx
	andl	$15, %edx
	andl	$4095, %ecx
	andl	$15, %edi
	jne	.L5676
.L5663:
	shrl	$12, %eax
	andl	$15, %eax
	je	.L5664
	cltq
	addl	192(%rsi,%rax,8), %ecx
.L5664:
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,8), %rdx
	subl	$1, 192(%rdx)
	je	.L5665
	movzbl	808(%rsi), %edx
	movl	%ecx, %eax
	andl	$16777215, %eax
	testb	$5, %dl
	jne	.L5666
	andl	$16775169, %ecx
	cmpl	168(%rsi), %ecx
	jne	.L5666
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5665:
	addq	$4, 136(%rsi)
	ret
.L5666:
	andb	$4, %dl
	movl	%eax, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L5677
.L5662:
	rep ret
.L5676:
	movslq	%edi, %rdi
	addl	192(%rsi,%rdi,8), %ecx
	jmp	.L5663
.L5677:
	testb	$-128, 54(%rsi)
	je	.L5662
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE543:
	.size	s370_branch_on_count, .-s370_branch_on_count
	.p2align 4,,15
	.globl	s370_branch_on_index_high
	.type	s370_branch_on_index_high, @function
s370_branch_on_index_high:
.LFB544:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ecx
	movl	%eax, %edx
	shrl	$16, %ecx
	movl	%eax, %edi
	shrl	$20, %edx
	movl	%ecx, %r9d
	shrl	$12, %edi
	andl	$15, %edx
	andl	$15, %r9d
	andl	$4095, %eax
	andl	$15, %edi
	je	.L5679
	movslq	%edi, %rdi
	addl	192(%rsi,%rdi,8), %eax
.L5679:
	movslq	%r9d, %rdi
	andl	$1, %ecx
	movl	192(%rsi,%rdi,8), %edi
	movl	%edi, %r8d
	jne	.L5680
	addl	$1, %r9d
	movslq	%r9d, %r9
	movl	192(%rsi,%r9,8), %r8d
.L5680:
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,8), %rcx
	movl	192(%rcx), %edx
	addl	%edi, %edx
	cmpl	%edx, %r8d
	movl	%edx, 192(%rcx)
	jge	.L5681
	movzbl	808(%rsi), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	testb	$5, %dl
	jne	.L5682
	andl	$16775169, %eax
	cmpl	168(%rsi), %eax
	jne	.L5682
	movl	%ecx, %eax
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5681:
	addq	$4, 136(%rsi)
	ret
.L5682:
	andb	$4, %dl
	movl	%ecx, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L5690
.L5678:
	rep ret
.L5690:
	testb	$-128, 54(%rsi)
	je	.L5678
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE544:
	.size	s370_branch_on_index_high, .-s370_branch_on_index_high
	.p2align 4,,15
	.globl	s370_branch_on_index_low_or_equal
	.type	s370_branch_on_index_low_or_equal, @function
s370_branch_on_index_low_or_equal:
.LFB545:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ecx
	movl	%eax, %edx
	shrl	$16, %ecx
	movl	%eax, %edi
	shrl	$20, %edx
	movl	%ecx, %r9d
	shrl	$12, %edi
	andl	$15, %edx
	andl	$15, %r9d
	andl	$4095, %eax
	andl	$15, %edi
	je	.L5692
	movslq	%edi, %rdi
	addl	192(%rsi,%rdi,8), %eax
.L5692:
	movslq	%r9d, %rdi
	andl	$1, %ecx
	movl	192(%rsi,%rdi,8), %edi
	movl	%edi, %r8d
	jne	.L5693
	addl	$1, %r9d
	movslq	%r9d, %r9
	movl	192(%rsi,%r9,8), %r8d
.L5693:
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,8), %rcx
	movl	192(%rcx), %edx
	addl	%edi, %edx
	cmpl	%edx, %r8d
	movl	%edx, 192(%rcx)
	jl	.L5694
	movzbl	808(%rsi), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	testb	$5, %dl
	jne	.L5695
	andl	$16775169, %eax
	cmpl	168(%rsi), %eax
	jne	.L5695
	movl	%ecx, %eax
	xorq	152(%rsi), %rax
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5694:
	addq	$4, 136(%rsi)
	ret
.L5695:
	andb	$4, %dl
	movl	%ecx, 112(%rsi)
	movq	$0, 160(%rsi)
	jne	.L5703
.L5691:
	rep ret
.L5703:
	testb	$-128, 54(%rsi)
	je	.L5691
	orl	$8388608, 56(%rsi)
	ret
	.cfi_endproc
.LFE545:
	.size	s370_branch_on_index_low_or_equal, .-s370_branch_on_index_low_or_equal
	.p2align 4,,15
	.globl	s370_branch_relative_and_save
	.type	s370_branch_relative_and_save, @function
s370_branch_relative_and_save:
.LFB546:
	.cfi_startproc
	movl	(%rdi), %edx
	movl	168(%rsi), %r9d
	movq	136(%rsi), %r8
	movq	144(%rsi), %rdi
	bswap	%edx
	movl	%edx, %ecx
	shrl	$20, %ecx
	leal	4(%r9,%r8), %eax
	andl	$15, %ecx
	testb	$2, 103(%rsi)
	je	.L5705
	subl	%edi, %eax
	orl	$-2147483648, %eax
.L5706:
	movslq	%ecx, %rcx
	movswl	%dx, %edx
	movl	%eax, 192(%rsi,%rcx,8)
	movzbl	808(%rsi), %ecx
	testb	$5, %cl
	jne	.L5707
	leal	(%rdx,%rdx), %eax
	cltq
	addq	%r8, %rax
	cmpq	%rdi, %rax
	jb	.L5707
	cmpq	160(%rsi), %rax
	jae	.L5707
	movq	%rax, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5705:
	subl	%edi, %eax
	andl	$16777215, %eax
	jmp	.L5706
.L5707:
	testb	$1, %cl
	jne	.L5709
	leal	(%r9,%rdx,2), %eax
	subq	%rdi, %r8
	addl	%r8d, %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5710:
	movq	$0, 160(%rsi)
	andl	$4, %ecx
	jne	.L5715
.L5704:
	rep ret
.L5715:
	testb	$-128, 54(%rsi)
	je	.L5704
	orl	$8388608, 56(%rsi)
	ret
.L5709:
	movl	800(%rsi), %eax
	leal	(%rax,%rdx,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5710
	.cfi_endproc
.LFE546:
	.size	s370_branch_relative_and_save, .-s370_branch_relative_and_save
	.p2align 4,,15
	.globl	s370_branch_relative_on_count
	.type	s370_branch_relative_on_count, @function
s370_branch_relative_on_count:
.LFB547:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	shrl	$20, %edx
	andl	$15, %edx
	leaq	(%rsi,%rdx,8), %rcx
	movl	192(%rcx), %edi
	leal	-1(%rdi), %edx
	testl	%edx, %edx
	movl	%edx, 192(%rcx)
	je	.L5717
	movzbl	808(%rsi), %ecx
	cwtl
	testb	$5, %cl
	jne	.L5718
	leal	(%rax,%rax), %edx
	movslq	%edx, %rdx
	addq	136(%rsi), %rdx
	cmpq	144(%rsi), %rdx
	jb	.L5718
	cmpq	160(%rsi), %rdx
	jae	.L5718
	movq	%rdx, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5717:
	addq	$4, 136(%rsi)
	ret
.L5718:
	testb	$1, %cl
	jne	.L5720
	movq	136(%rsi), %rdx
	subq	144(%rsi), %rdx
	addl	168(%rsi), %edx
	leal	(%rdx,%rax,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5721:
	movq	$0, 160(%rsi)
	andb	$4, %cl
	jne	.L5726
.L5716:
	rep ret
.L5726:
	testb	$-128, 54(%rsi)
	je	.L5716
	orl	$8388608, 56(%rsi)
	ret
.L5720:
	movl	800(%rsi), %edx
	leal	(%rdx,%rax,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5721
	.cfi_endproc
.LFE547:
	.size	s370_branch_relative_on_count, .-s370_branch_relative_on_count
	.p2align 4,,15
	.globl	s370_branch_relative_on_index_high
	.type	s370_branch_relative_on_index_high, @function
s370_branch_relative_on_index_high:
.LFB548:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ecx
	movl	%eax, %edx
	shrl	$16, %ecx
	shrl	$20, %edx
	movl	%ecx, %r9d
	andl	$15, %edx
	andl	$15, %r9d
	andl	$1, %ecx
	movslq	%r9d, %rdi
	movl	192(%rsi,%rdi,8), %edi
	movl	%edi, %r8d
	jne	.L5728
	addl	$1, %r9d
	movslq	%r9d, %r9
	movl	192(%rsi,%r9,8), %r8d
.L5728:
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,8), %rcx
	addl	192(%rcx), %edi
	cmpl	%edi, %r8d
	movl	%edi, 192(%rcx)
	jge	.L5729
	movzbl	808(%rsi), %ecx
	cwtl
	testb	$5, %cl
	jne	.L5730
	leal	(%rax,%rax), %edx
	movslq	%edx, %rdx
	addq	136(%rsi), %rdx
	cmpq	144(%rsi), %rdx
	jb	.L5730
	cmpq	160(%rsi), %rdx
	jae	.L5730
	movq	%rdx, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5729:
	addq	$4, 136(%rsi)
	ret
.L5730:
	testb	$1, %cl
	jne	.L5732
	movq	136(%rsi), %rdx
	subq	144(%rsi), %rdx
	addl	168(%rsi), %edx
	leal	(%rdx,%rax,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5733:
	movq	$0, 160(%rsi)
	andb	$4, %cl
	jne	.L5739
.L5727:
	rep ret
.L5739:
	testb	$-128, 54(%rsi)
	je	.L5727
	orl	$8388608, 56(%rsi)
	ret
.L5732:
	movl	800(%rsi), %edx
	leal	(%rdx,%rax,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5733
	.cfi_endproc
.LFE548:
	.size	s370_branch_relative_on_index_high, .-s370_branch_relative_on_index_high
	.p2align 4,,15
	.globl	s370_branch_relative_on_index_low_or_equal
	.type	s370_branch_relative_on_index_low_or_equal, @function
s370_branch_relative_on_index_low_or_equal:
.LFB549:
	.cfi_startproc
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ecx
	movl	%eax, %edx
	shrl	$16, %ecx
	shrl	$20, %edx
	movl	%ecx, %r9d
	andl	$15, %edx
	andl	$15, %r9d
	andl	$1, %ecx
	movslq	%r9d, %rdi
	movl	192(%rsi,%rdi,8), %edi
	movl	%edi, %r8d
	jne	.L5741
	addl	$1, %r9d
	movslq	%r9d, %r9
	movl	192(%rsi,%r9,8), %r8d
.L5741:
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,8), %rcx
	addl	192(%rcx), %edi
	cmpl	%edi, %r8d
	movl	%edi, 192(%rcx)
	jl	.L5742
	movzbl	808(%rsi), %ecx
	cwtl
	testb	$5, %cl
	jne	.L5743
	leal	(%rax,%rax), %edx
	movslq	%edx, %rdx
	addq	136(%rsi), %rdx
	cmpq	144(%rsi), %rdx
	jb	.L5743
	cmpq	160(%rsi), %rdx
	jae	.L5743
	movq	%rdx, 136(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5742:
	addq	$4, 136(%rsi)
	ret
.L5743:
	testb	$1, %cl
	jne	.L5745
	movq	136(%rsi), %rdx
	subq	144(%rsi), %rdx
	addl	168(%rsi), %edx
	leal	(%rdx,%rax,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
.L5746:
	movq	$0, 160(%rsi)
	andb	$4, %cl
	jne	.L5752
.L5740:
	rep ret
.L5752:
	testb	$-128, 54(%rsi)
	je	.L5740
	orl	$8388608, 56(%rsi)
	ret
.L5745:
	movl	800(%rsi), %edx
	leal	(%rdx,%rax,2), %eax
	andl	$16777215, %eax
	movl	%eax, 112(%rsi)
	jmp	.L5746
	.cfi_endproc
.LFE549:
	.size	s370_branch_relative_on_index_low_or_equal, .-s370_branch_relative_on_index_low_or_equal
	.p2align 4,,15
	.globl	s370_checksum
	.type	s370_checksum, @function
s370_checksum:
.LFB550:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movzbl	3(%rdi), %eax
	movb	$4, 130(%rsi)
	addq	$4, 136(%rsi)
	movl	%eax, %ebp
	movzbl	%al, %ebx
	andl	$15, %ebp
	sarl	$4, %ebx
	testb	$1, %al
	movzbl	%bpl, %edi
	movl	%edi, 32(%rsp)
	jne	.L5819
.L5754:
	movl	32(%rsp), %esi
	movzbl	%bpl, %ebp
	movslq	%ebx, %rbx
	leaq	(%r14,%rbp,8), %rax
	movl	192(%rax), %r12d
	movq	%rax, 24(%rsp)
	movl	%esi, %eax
	addl	$1, %eax
	cltq
	andl	$16777215, %r12d
	leaq	(%r14,%rax,8), %rax
	movl	192(%rax), %r13d
	movq	%rax, 8(%rsp)
	leaq	(%r14,%rbx,8), %rax
	movq	%rax, 16(%rsp)
	movl	192(%rax), %r15d
	testl	%r13d, %r13d
	je	.L5780
	leal	5(%rsi), %r11d
	movl	$1024, %r10d
	movslq	%r11d, %r11
	.p2align 4,,10
	.p2align 3
.L5756:
	xorl	%ebx, %ebx
	cmpl	$3, %r13d
	movl	$4, %ebp
	ja	.L5820
.L5815:
	sall	$8, %ebx
	testl	%r13d, %r13d
	jne	.L5821
.L5769:
	subl	$1, %ebp
	jne	.L5815
.L5767:
	movl	%ebx, %ebx
	movl	$4294967295, %eax
	addq	%rbx, %r15
	cmpq	%rax, %r15
	jbe	.L5776
	movl	%r15d, %r15d
	addq	$1, %r15
.L5776:
	testl	%r13d, %r13d
	je	.L5780
	subl	$1, %r10d
	jne	.L5756
	movl	$3, %eax
	jmp	.L5755
	.p2align 4,,10
	.p2align 3
.L5820:
	testb	$3, %r12b
	jne	.L5822
.L5758:
	leal	-77(%r12), %eax
	cmpl	$6, %eax
	jbe	.L5823
.L5760:
	movl	1892(%r14,%r11,4), %eax
	testl	%eax, %eax
	je	.L5761
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%r14,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%r14,%rax,8)
	jne	.L5824
.L5762:
	movzbl	97(%r14), %esi
	testb	%sil, %sil
	jne	.L5825
.L5763:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%r14), %eax
	cmpl	10424(%rdx), %eax
	jne	.L5784
	testb	$4, 46264(%r14,%rcx)
	je	.L5784
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5765:
	movl	(%rax), %ebx
	bswap	%ebx
.L5766:
	addl	$4, %r12d
	subl	$4, %r13d
	andl	$16777215, %r12d
	jmp	.L5767
	.p2align 4,,10
	.p2align 3
.L5780:
	xorl	%eax, %eax
.L5755:
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdi
	movl	%r15d, 192(%rsi)
	movq	8(%rsp), %rsi
	movl	%r12d, 192(%rdi)
	movl	%r13d, 192(%rsi)
	movb	%al, 100(%r14)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L5819:
	.cfi_restore_state
	movl	$6, %esi
	movq	%r14, %rdi
	call	*2032(%r14)
	jmp	.L5754
	.p2align 4,,10
	.p2align 3
.L5821:
	leal	-80(%r12), %eax
	cmpl	$3, %eax
	jbe	.L5826
.L5779:
	movl	1892(%r14,%r11,4), %eax
	testl	%eax, %eax
	je	.L5770
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%r14,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%r14,%rax,8)
	jne	.L5827
.L5771:
	movzbl	97(%r14), %esi
	testb	%sil, %sil
	jne	.L5828
.L5772:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%r14), %eax
	cmpl	10424(%rdx), %eax
	jne	.L5787
	testb	$4, 46264(%r14,%rcx)
	je	.L5787
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L5774:
	movzbl	(%rax), %eax
	addl	$1, %r12d
	subl	$1, %r13d
	andl	$16777215, %r12d
	orl	%eax, %ebx
	jmp	.L5769
.L5828:
	cmpb	43192(%r14,%rcx), %sil
	je	.L5772
.L5787:
	movzbl	%sil, %r8d
.L5773:
	movl	32(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%r14, %rdx
	movl	%r12d, %edi
	movq	%r11, 40(%rsp)
	movl	%r10d, 36(%rsp)
	call	s370_logical_to_main_l
	movq	40(%rsp), %r11
	movl	36(%rsp), %r10d
	jmp	.L5774
.L5827:
	movzbl	44216(%r14,%rcx), %esi
	testb	%sil, 1976(%r14,%rax)
	jne	.L5771
.L5770:
	movzbl	97(%r14), %r8d
	jmp	.L5773
.L5826:
	movq	%r14, %rdi
	movq	%r11, 40(%rsp)
	movl	%r10d, 36(%rsp)
	call	s370_store_int_timer
	movq	40(%rsp), %r11
	movl	36(%rsp), %r10d
	jmp	.L5779
.L5825:
	cmpb	43192(%r14,%rcx), %sil
	je	.L5763
.L5784:
	movzbl	%sil, %r8d
.L5764:
	movl	32(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%r14, %rdx
	movl	%r12d, %edi
	movq	%r11, 40(%rsp)
	movl	%r10d, 36(%rsp)
	call	s370_logical_to_main_l
	movq	40(%rsp), %r11
	movl	36(%rsp), %r10d
	jmp	.L5765
.L5824:
	movzbl	44216(%r14,%rcx), %esi
	testb	%sil, 1976(%r14,%rax)
	jne	.L5762
.L5761:
	movzbl	97(%r14), %r8d
	jmp	.L5764
.L5822:
	movl	%r12d, %eax
	andl	$2047, %eax
	cmpl	$2044, %eax
	jbe	.L5758
	movl	32(%rsp), %esi
	movq	%r14, %rdx
	movl	%r12d, %edi
	movq	%r11, 40(%rsp)
	movl	%r10d, 36(%rsp)
	call	s370_vfetch4_full
	movq	40(%rsp), %r11
	movl	%eax, %ebx
	movl	36(%rsp), %r10d
	jmp	.L5766
.L5823:
	movq	%r14, %rdi
	movq	%r11, 40(%rsp)
	movl	%r10d, 36(%rsp)
	call	s370_store_int_timer
	movq	40(%rsp), %r11
	movl	36(%rsp), %r10d
	jmp	.L5760
	.cfi_endproc
.LFE550:
	.size	s370_checksum, .-s370_checksum
	.p2align 4,,15
	.globl	s370_compare_register
	.type	s370_compare_register, @function
s370_compare_register:
.LFB551:
	.cfi_startproc
	movzbl	1(%rdi), %edx
	movl	$1, %ecx
	addq	$2, 136(%rsi)
	movq	%rdx, %rax
	andl	$15, %edx
	movl	192(%rsi,%rdx,8), %edi
	shrq	$4, %rax
	andl	$15, %eax
	cmpl	%edi, 192(%rsi,%rax,8)
	jl	.L5830
	setg	%cl
	addl	%ecx, %ecx
.L5830:
	movb	%cl, 100(%rsi)
	ret
	.cfi_endproc
.LFE551:
	.size	s370_compare_register, .-s370_compare_register
	.p2align 4,,15
	.globl	s370_compare
	.type	s370_compare, @function
s370_compare:
.LFB552:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L5869
.L5834:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L5835
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L5835:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$3, %bpl
	jne	.L5870
.L5836:
	leal	-77(%r13), %edx
	cmpl	$6, %edx
	jbe	.L5871
.L5838:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L5839
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L5872
.L5840:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L5873
.L5841:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L5839
	testb	$4, 46264(%rbx,%rcx)
	je	.L5839
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L5842:
	movl	(%rax), %eax
	bswap	%eax
.L5843:
	movslq	%r12d, %r12
	movl	$1, %edx
	cmpl	%eax, 192(%rbx,%r12,8)
	jl	.L5844
	setg	%dl
	addl	%edx, %edx
.L5844:
	movb	%dl, 100(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L5872:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L5840
.L5839:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L5842
.L5870:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L5836
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch4_full
	jmp	.L5843
.L5869:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L5834
.L5873:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5841
	jmp	.L5839
.L5871:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L5838
	.cfi_endproc
.LFE552:
	.size	s370_compare, .-s370_compare
	.p2align 4,,15
	.globl	s370_compare_and_form_codeword
	.type	s370_compare_and_form_codeword, @function
s370_compare_and_form_codeword:
.LFB553:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	andl	$4095, %eax
	shrl	$12, %edx
	movl	%eax, 24(%rsp)
	andl	$15, %edx
	je	.L5875
	movslq	%edx, %rdx
	movl	192(%rsi,%rdx,8), %eax
	addl	%eax, 24(%rsp)
	andl	$16777215, 24(%rsp)
.L5875:
	addq	$4, 136(%rbx)
	movb	$4, 130(%rbx)
	testb	$1, 200(%rbx)
	jne	.L5876
	movl	208(%rbx), %eax
	testb	$1, %al
	je	.L6275
.L5876:
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	movl	208(%rbx), %eax
	movl	216(%rbx), %r13d
.L5877:
	movzwl	24(%rsp), %edi
	andw	$32766, %di
	movl	%edi, %r15d
	jmp	.L6071
	.p2align 4,,10
	.p2align 3
.L5878:
	movl	200(%rbx), %r14d
	movzwl	%ax, %eax
	addl	%eax, %r13d
	movl	%r13d, %ebp
	andl	$16777215, %ebp
	addl	%eax, %r14d
	movl	1916(%rbx), %eax
	movl	%r14d, %r12d
	andl	$16777215, %r12d
	testl	%eax, %eax
	je	.L5880
	movl	%r12d, %edi
	addl	$1, %eax
	shrl	$11, %edi
	cltq
	movl	%edi, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L6276
.L5881:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L6277
.L5883:
	movl	%r14d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L6089
	testb	$4, 46264(%rbx,%rcx)
	je	.L6089
	movl	%r12d, %r10d
	xorq	26808(%rdx), %r10
.L5884:
	movl	%r12d, %eax
	andl	$2047, %eax
	cmpl	$2047, %eax
	je	.L5955
	subl	$79, %r12d
	cmpl	$4, %r12d
	jbe	.L6278
.L5956:
	movzwl	(%r10), %eax
	movl	1916(%rbx), %r14d
	movzbl	97(%rbx), %r12d
	movw	%ax, 64(%rsp)
.L5957:
	testl	%r14d, %r14d
	je	.L5975
	leal	1(%r14), %r8d
	movl	%ebp, %esi
	shrl	$11, %esi
	movslq	%r8d, %r8
	movl	%esi, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%r8,8)
	jne	.L6279
.L5976:
	testb	%r12b, %r12b
	jne	.L6280
.L5978:
	movl	%r13d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L5977
	testb	$4, 46264(%rbx,%rcx)
	je	.L5977
	movl	%ebp, %r12d
	xorq	26808(%rdx), %r12
.L5979:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2047, %eax
	je	.L6050
	subl	$79, %ebp
	cmpl	$4, %ebp
	jbe	.L6281
.L6051:
	movzwl	(%r12), %eax
	movw	%ax, 80(%rsp)
.L6052:
	movl	208(%rbx), %eax
	leaq	80(%rsp), %rsi
	movl	$2, %edx
	leaq	64(%rsp), %rdi
	leal	2(%rax), %ebp
	movl	%ebp, 208(%rbx)
	call	memcmp
	testl	%eax, %eax
	jne	.L6070
	movl	216(%rbx), %r13d
	movl	%ebp, %eax
.L6071:
	cmpw	%ax, %r15w
	jae	.L5878
	orl	$-2147483648, %r13d
	movb	$0, 100(%rbx)
	movl	%r13d, 208(%rbx)
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L6275:
	.cfi_restore_state
	movl	216(%rbx), %r13d
	testb	$1, %r13b
	je	.L5877
	jmp	.L5876
	.p2align 4,,10
	.p2align 3
.L6070:
	movzbl	24(%rsp), %edx
	andl	$1, %edx
	testl	%eax, %eax
	js	.L6282
	testb	%dl, %dl
	jne	.L6075
	movl	200(%rbx), %ecx
	movb	$2, 100(%rbx)
	movl	216(%rbx), %esi
	movzbl	64(%rsp), %eax
	movzbl	65(%rsp), %edx
	movl	%ecx, 216(%rbx)
	movl	%esi, 200(%rbx)
	notl	%eax
	notl	%edx
.L6074:
	sall	$16, %ebp
	movzbl	%dl, %edx
	movzbl	%al, %eax
	orl	%ebp, %edx
	sall	$8, %eax
	orl	%eax, %edx
	movl	%edx, 208(%rbx)
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L6282:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L6073
	movzbl	80(%rsp), %eax
	movb	$1, 100(%rbx)
	movzbl	81(%rsp), %edx
	notl	%eax
	notl	%edx
	jmp	.L6074
.L6075:
	movzwl	80(%rsp), %edx
	movb	$1, 100(%rbx)
	movl	%edx, %eax
	shrw	$8, %dx
	jmp	.L6074
.L6073:
	movl	200(%rbx), %eax
	movb	$2, 100(%rbx)
	movzwl	64(%rsp), %edx
	movl	216(%rbx), %ecx
	movl	%eax, 216(%rbx)
	movl	%edx, %eax
	shrw	$8, %dx
	movl	%ecx, 200(%rbx)
	jmp	.L6074
.L5975:
	movl	%ebp, %esi
	shrl	$11, %esi
.L5977:
	andl	$1023, %esi
	testb	$8, 98(%rbx)
	movl	%esi, 28(%rsp)
	je	.L5980
	testb	$4, 96(%rbx)
	je	.L5980
	movzbl	99(%rbx), %ecx
	andb	$-8, 994(%rbx)
	cmpb	$-128, %cl
	je	.L6283
	movl	336(%rbx), %edx
	xorl	%eax, %eax
.L5984:
	movl	328(%rbx), %esi
	movq	%rdx, 968(%rbx)
	movl	%eax, 976(%rbx)
	movl	%esi, %edi
	andl	$12582912, %edi
	cmpl	$8388608, %edi
	jne	.L6284
.L6111:
	testl	$2621440, %esi
	jne	.L6101
	movl	%r13d, %r9d
	movslq	28(%rsp), %r14
	andl	$14680064, %r9d
	movl	%r9d, 8(%rsp)
	orl	2224(%rbx), %r9d
	leaq	(%rbx,%r14,8), %r11
	movq	%r11, 16(%rsp)
	cmpl	10424(%r11), %r9d
	je	.L6285
.L5987:
	movl	%esi, %edi
	movq	%rdx, %r11
	andl	$-16777216, %edx
	andl	$3670016, %edi
	andl	$16777152, %r11d
	cmpl	$1048576, %edi
	je	.L6286
	movq	%r13, %rsi
	shrq	$14, %rsi
	andl	$1020, %esi
	addq	%r11, %rsi
	testl	%edi, %edi
	movq	%rsi, (%rsp)
	jne	.L5992
	movl	%ebp, %esi
	sall	$4, %esi
	andl	$-16777216, %esi
	cmpl	%esi, %edx
	jb	.L5993
.L5992:
	movq	(%rsp), %rax
	cmpq	1040(%rbx), %rax
	ja	.L5994
	movl	%eax, %edx
	andl	$2147479552, %eax
	jne	.L5995
	movl	88(%rbx), %r11d
.L5996:
	movl	%r11d, %eax
	xorl	%edx, %eax
	movq	%rax, (%rsp)
.L5997:
	movq	(%rsp), %rdi
	movq	%rbx, %rsi
	call	s370_fetch_main_absolute
	movl	(%rax), %r11d
	bswap	%r11d
	testb	$1, %r11b
	jne	.L5998
	testl	$251658240, %r11d
	jne	.L5985
	movl	328(%rbx), %eax
	movl	%r11d, %r10d
	movl	%r11d, %edx
	andl	$16777208, %r10d
	andl	$-268435456, %edx
	movl	%eax, %ecx
	andl	$12582912, %eax
	andl	$3670016, %ecx
	cmpl	$1048576, %ecx
	je	.L6287
	movl	%eax, %esi
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$62, %eax
	cmpl	$8388608, %esi
	jne	.L6003
	movq	%r13, %rax
	shrq	$11, %rax
	andl	$30, %eax
.L6003:
	addq	%rax, %r10
	cmpq	%r10, 1040(%rbx)
	jae	.L6288
.L5994:
	movl	$5, %r8d
	movl	$5, %esi
	movw	%r8w, 992(%rbx)
.L6019:
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L5998:
	movq	(%rsp), %rax
	movl	$16, %esi
	movzbl	99(%rbx), %ecx
	movw	%si, 992(%rbx)
	movq	%rax, 944(%rbx)
	movl	976(%rbx), %eax
.L6020:
	movl	%r13d, %edx
	andl	$16775168, %edx
	cmpl	$1, %eax
	movl	%edx, 792(%rbx)
	je	.L6289
	cmpl	$2, %eax
	je	.L6290
.L6025:
	orl	%edx, %eax
	movl	%eax, 792(%rbx)
.L6022:
	cmpb	$64, %cl
	jne	.L6049
	movb	$1, 1012(%rbx)
.L6048:
.L6049:
	movzwl	992(%rbx), %esi
	movq	%rbx, %rdi
	xorl	%r12d, %r12d
	call	*2032(%rbx)
	jmp	.L5979
.L5980:
	movslq	28(%rsp), %r14
	movl	%r13d, %ecx
	movl	%ebp, %eax
	andl	$16775168, %ecx
	movq	%rax, 944(%rbx)
	movl	%r13d, %edi
	andb	$-8, 994(%rbx)
	movq	%rcx, 960(%rbx)
	andl	$14680064, %edi
	movl	%edi, 8(%rsp)
	leaq	(%rbx,%r14,8), %rdx
	movl	$-1, 2232(%rdx)
	movl	2224(%rbx), %esi
	movl	%edi, 18616(%rdx)
	orl	%edi, %esi
	movl	%esi, 10424(%rdx)
	movb	$0, 45240(%rbx,%r14)
	movb	$0, 44216(%rbx,%r14)
	movb	$0, 46264(%rbx,%r14)
.L5982:
	movl	%eax, %edi
	movl	%eax, %esi
	movl	88(%rbx), %edx
	andl	$2147479552, %edi
	je	.L6028
	cmpl	%edx, %edi
	je	.L6028
.L6029:
	movl	%ecx, %edi
	movq	%rax, 952(%rbx)
	movl	%ecx, %esi
	andl	$2147479552, %edi
	je	.L6030
	cmpl	%edi, %edx
	je	.L6030
.L6031:
	cmpq	1040(%rbx), %rax
	ja	.L6032
	movzbl	1144(%rbx), %esi
	testb	$2, %sil
	jne	.L6291
.L6033:
	movq	%rax, %rdx
	shrq	$11, %rdx
	addq	1032(%rbx), %rdx
	testb	%r12b, %r12b
	movq	%rdx, 984(%rbx)
	movzbl	(%rdx), %esi
	jne	.L6292
.L6044:
	orl	$4, %esi
	movb	%sil, (%rdx)
	leaq	(%rbx,%r14,8), %rsi
	movq	984(%rbx), %rdx
	movq	%rdx, 35000(%rsi)
	movzbl	(%rdx), %edx
	movb	$4, 46264(%rbx,%r14)
	movq	1024(%rbx), %r12
	andl	$-16, %edx
	movb	%dl, 43192(%rbx,%r14)
	movl	%r13d, %edx
	addq	%r12, %rcx
	andl	$16775168, %edx
	addq	%rax, %r12
	xorq	%rdx, %rcx
	movq	%rcx, 26808(%rsi)
	jmp	.L5979
.L6277:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L5883
.L6089:
	movb	%sil, 8(%rsp)
.L5882:
	andl	$1023, %edi
	testb	$8, 98(%rbx)
	movl	%edi, 28(%rsp)
	je	.L5885
	testb	$4, 96(%rbx)
	je	.L5885
	movzbl	99(%rbx), %ecx
	andb	$-8, 994(%rbx)
	cmpb	$-128, %cl
	je	.L6293
	movl	336(%rbx), %edx
	xorl	%eax, %eax
.L5889:
	movl	328(%rbx), %edi
	movq	%rdx, 968(%rbx)
	movl	%eax, 976(%rbx)
	movl	%edi, %esi
	andl	$12582912, %esi
	cmpl	$8388608, %esi
	jne	.L6294
.L6110:
	testl	$2621440, %edi
	jne	.L6091
	movl	%r14d, %r9d
	movslq	28(%rsp), %r10
	andl	$14680064, %r9d
	movl	%r9d, 32(%rsp)
	orl	2224(%rbx), %r9d
	leaq	(%rbx,%r10,8), %r11
	movq	%r11, 40(%rsp)
	cmpl	10424(%r11), %r9d
	je	.L6295
.L5892:
	movq	%rdx, %r8
	andl	$3670016, %edi
	andl	$-16777216, %edx
	andl	$16777152, %r8d
	cmpl	$1048576, %edi
	je	.L6296
	movq	%r14, %rsi
	shrq	$14, %rsi
	andl	$1020, %esi
	addq	%r8, %rsi
	testl	%edi, %edi
	movq	%rsi, (%rsp)
	jne	.L5897
	movl	%r12d, %esi
	sall	$4, %esi
	andl	$-16777216, %esi
	cmpl	%esi, %edx
	jb	.L5898
.L5897:
	movq	(%rsp), %rax
	cmpq	%rax, 1040(%rbx)
	jb	.L5899
	movl	%eax, %edx
	andl	$2147479552, %eax
	jne	.L5900
	movl	88(%rbx), %eax
.L5901:
	movl	%eax, %edi
	xorl	%edx, %edi
	movq	%rdi, (%rsp)
.L5902:
	movq	(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r10, 48(%rsp)
	call	s370_fetch_main_absolute
	movq	48(%rsp), %r10
	movl	(%rax), %eax
	bswap	%eax
	testb	$1, %al
	movl	%eax, 16(%rsp)
	jne	.L5903
	testl	$251658240, %eax
	jne	.L5890
	movl	%eax, %edx
	movl	%eax, %r11d
	movl	328(%rbx), %eax
	andl	$16777208, %r11d
	andl	$-268435456, %edx
	movl	%eax, %ecx
	andl	$12582912, %eax
	andl	$3670016, %ecx
	cmpl	$1048576, %ecx
	je	.L6297
	movl	%eax, %esi
	movq	%r14, %rax
	shrq	$10, %rax
	andl	$62, %eax
	cmpl	$8388608, %esi
	jne	.L5908
	movq	%r14, %rax
	shrq	$11, %rax
	andl	$30, %eax
.L5908:
	addq	%rax, %r11
	cmpq	%r11, 1040(%rbx)
	jae	.L6298
.L5899:
	movl	$5, %eax
	movl	$5, %esi
	movw	%ax, 992(%rbx)
.L5924:
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L5903:
	movl	$16, %eax
	movzbl	99(%rbx), %ecx
	movw	%ax, 992(%rbx)
	movq	(%rsp), %rax
	movq	%rax, 944(%rbx)
	movl	976(%rbx), %eax
.L5925:
	movl	%r14d, %edx
	andl	$16775168, %edx
	cmpl	$1, %eax
	movl	%edx, 792(%rbx)
	je	.L6299
	cmpl	$2, %eax
	je	.L6300
.L5930:
	orl	%edx, %eax
	movl	%eax, 792(%rbx)
.L5927:
	cmpb	$64, %cl
	jne	.L5954
	movb	$1, 1012(%rbx)
.L5953:
.L5954:
	movzwl	992(%rbx), %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	xorl	%r10d, %r10d
	jmp	.L5884
.L5885:
	movslq	28(%rsp), %r10
	movl	%r14d, %ecx
	movl	%r12d, %eax
	andl	$16775168, %ecx
	movq	%rax, 944(%rbx)
	movl	%r14d, %edi
	andb	$-8, 994(%rbx)
	movq	%rcx, 960(%rbx)
	andl	$14680064, %edi
	movl	%edi, 32(%rsp)
	leaq	(%rbx,%r10,8), %rdx
	movl	$-1, 2232(%rdx)
	movl	2224(%rbx), %esi
	movl	%edi, 18616(%rdx)
	orl	%edi, %esi
	movl	%esi, 10424(%rdx)
	movb	$0, 45240(%rbx,%r10)
	movb	$0, 44216(%rbx,%r10)
	movb	$0, 46264(%rbx,%r10)
.L5887:
	movl	%eax, %edi
	movl	%eax, %esi
	movl	88(%rbx), %edx
	andl	$2147479552, %edi
	je	.L5933
	cmpl	%edx, %edi
	je	.L5933
.L5934:
	movl	%ecx, %edi
	movq	%rax, 952(%rbx)
	movl	%ecx, %esi
	andl	$2147479552, %edi
	je	.L5935
	cmpl	%edx, %edi
	je	.L5935
.L5936:
	cmpq	1040(%rbx), %rax
	ja	.L5937
	movzbl	1144(%rbx), %esi
	testb	$2, %sil
	jne	.L6301
.L5938:
	movq	%rax, %rdx
	shrq	$11, %rdx
	addq	1032(%rbx), %rdx
	cmpb	$0, 8(%rsp)
	movq	%rdx, 984(%rbx)
	movzbl	(%rdx), %esi
	jne	.L6302
.L5949:
	orl	$4, %esi
	movb	%sil, (%rdx)
	leaq	(%rbx,%r10,8), %rsi
	movq	984(%rbx), %rdx
	movq	%rdx, 35000(%rsi)
	movzbl	(%rdx), %edx
	movb	$4, 46264(%rbx,%r10)
	andl	$-16, %edx
	movb	%dl, 43192(%rbx,%r10)
	movq	1024(%rbx), %r10
	movl	%r14d, %edx
	andl	$16775168, %edx
	addq	%r10, %rcx
	addq	%rax, %r10
	xorq	%rdx, %rcx
	movq	%rcx, 26808(%rsi)
	jmp	.L5884
.L6030:
	movl	%edx, %ecx
	xorl	%esi, %ecx
	jmp	.L6031
.L6028:
	movl	%esi, %eax
	xorl	%edx, %eax
	jmp	.L6029
.L5935:
	movl	%edx, %ecx
	xorl	%esi, %ecx
	jmp	.L5936
.L5933:
	movl	%esi, %eax
	xorl	%edx, %eax
	jmp	.L5934
.L5955:
	andl	$2047, %r14d
	movl	$2048, %eax
	subl	%r14d, %eax
	movl	1916(%rbx), %r14d
	movl	%eax, %edi
	movl	%eax, (%rsp)
	testl	%r14d, %r14d
	je	.L5958
	leal	(%rdi,%r12), %esi
	leal	1(%r14), %eax
	movl	%esi, %edi
	andl	$16777215, %edi
	cltq
	movl	%edi, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %r9d
	cmpl	%r9d, 320(%rbx,%rax,8)
	jne	.L6303
.L5959:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L6304
.L5961:
	andl	$14680064, %esi
	orl	2224(%rbx), %esi
	cmpl	10424(%rcx), %esi
	jne	.L6099
	testb	$4, 46264(%rbx,%rdx)
	je	.L6099
	movl	%edi, %r11d
	movl	%eax, %r12d
	xorq	26808(%rcx), %r11
.L5962:
	movl	(%rsp), %r9d
	movq	%r10, %rsi
	leaq	64(%rsp), %rdi
	cmpq	$8, %r9
	jae	.L6305
.L5963:
	xorl	%eax, %eax
	testb	$4, %r9b
	je	.L5966
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	$4, %eax
.L5966:
	testb	$2, %r9b
	je	.L5967
	movzwl	(%rsi,%rax), %edx
	movw	%dx, (%rdi,%rax)
	addq	$2, %rax
.L5967:
	testb	$1, %r9b
	je	.L5965
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%rdi,%rax)
.L5965:
	leaq	64(%rsp), %rax
	movl	$2, %edx
	movq	%r11, %rsi
	subl	(%rsp), %edx
	leaq	(%rax,%r9), %rdi
	movq	%rdi, %r10
	movslq	%edx, %rdx
	cmpq	$8, %rdx
	jae	.L6306
.L5969:
	xorl	%eax, %eax
	testb	$4, %dl
	je	.L5972
	movl	(%rsi), %eax
	movl	%eax, (%r10)
	movl	$4, %eax
.L5972:
	testb	$2, %dl
	je	.L5973
	movzwl	(%rsi,%rax), %ecx
	movw	%cx, (%r10,%rax)
	addq	$2, %rax
.L5973:
	andl	$1, %edx
	je	.L5957
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%r10,%rax)
	jmp	.L5957
.L6050:
	andl	$2047, %r13d
	movl	$2048, %eax
	subl	%r13d, %eax
	movl	%eax, %r13d
	movl	1916(%rbx), %eax
	testl	%eax, %eax
	je	.L6053
	leal	0(%r13,%rbp), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L6307
.L6054:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L6308
.L6056:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L6055
	testb	$4, 46264(%rbx,%rax)
	je	.L6055
	movl	%edi, %r14d
	xorq	26808(%rdx), %r14
.L6057:
	movl	%r13d, %ebp
	movq	%r12, %rsi
	leaq	80(%rsp), %rdi
	cmpq	$8, %rbp
	jae	.L6309
.L6058:
	xorl	%edx, %edx
	testb	$4, %bpl
	je	.L6061
	movl	(%rsi), %eax
	movb	$4, %dl
	movl	%eax, (%rdi)
.L6061:
	testb	$2, %bpl
	je	.L6062
	movzwl	(%rsi,%rdx), %eax
	movw	%ax, (%rdi,%rdx)
	addq	$2, %rdx
.L6062:
	testb	$1, %bpl
	je	.L6060
	movzbl	(%rsi,%rdx), %eax
	movb	%al, (%rdi,%rdx)
.L6060:
	leaq	80(%rsp), %rax
	movl	$2, %edx
	movq	%r14, %rsi
	leaq	(%rax,%rbp), %rdi
	subl	%r13d, %edx
	movslq	%edx, %rdx
	movq	%rdi, %r8
	cmpq	$8, %rdx
	jae	.L6310
.L6064:
	xorl	%eax, %eax
	testb	$4, %dl
	je	.L6067
	movl	(%rsi), %eax
	movl	%eax, (%r8)
	movl	$4, %eax
.L6067:
	testb	$2, %dl
	je	.L6068
	movzwl	(%rsi,%rax), %ecx
	movw	%cx, (%r8,%rax)
	addq	$2, %rax
.L6068:
	andl	$1, %edx
	je	.L6052
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%r8,%rax)
	jmp	.L6052
.L6280:
	cmpb	%r12b, 43192(%rbx,%rcx)
	je	.L5978
	jmp	.L5977
	.p2align 4,,10
	.p2align 3
.L6276:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L5881
.L6272:
	movzbl	97(%rbx), %eax
	movb	%al, 8(%rsp)
	jmp	.L5882
.L5880:
	movl	%r12d, %edi
	shrl	$11, %edi
	jmp	.L6272
.L6279:
	movzbl	1976(%rbx,%r8), %eax
	testb	%al, 44216(%rbx,%rcx)
	jne	.L5976
	jmp	.L5977
	.p2align 4,,10
	.p2align 3
.L6294:
	cmpl	$4194304, %esi
	je	.L6110
.L6091:
	movq	$0, (%rsp)
.L5890:
	movl	$18, %eax
	movl	$18, %esi
	movw	%ax, 992(%rbx)
	jmp	.L5924
.L6284:
	cmpl	$4194304, %edi
	je	.L6111
.L6101:
	movq	$0, (%rsp)
.L5985:
	movl	$18, %edi
	movl	$18, %esi
	movw	%di, 992(%rbx)
	jmp	.L6019
.L6281:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	jmp	.L6051
.L6278:
	movq	%rbx, %rdi
	movq	%r10, (%rsp)
	call	s370_store_int_timer
	movq	(%rsp), %r10
	jmp	.L5956
.L6310:
	cmpq	$127, %rdx
	ja	.L6311
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
	movq	%rdi, %r8
	jmp	.L6064
.L6309:
	cmpq	$127, %rbp
	ja	.L6312
	leaq	80(%rsp), %rdi
	movq	%rbp, %rcx
	shrq	$3, %rcx
	rep movsq
	jmp	.L6058
.L6306:
	cmpq	$127, %rdx
	ja	.L6313
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
	movq	%rdi, %r10
	jmp	.L5969
.L6305:
	cmpq	$127, %r9
	ja	.L6314
	leaq	64(%rsp), %rdi
	movq	%r9, %rcx
	shrq	$3, %rcx
	rep movsq
	jmp	.L5963
.L6283:
	movl	384(%rbx), %edx
	movl	$2, %eax
	jmp	.L5984
.L6293:
	movl	384(%rbx), %edx
	movl	$2, %eax
	jmp	.L5889
.L6302:
	movl	%esi, %edi
	andl	$-16, %edi
	cmpb	%dil, 8(%rsp)
	je	.L5949
	testb	$8, %sil
	je	.L5949
	testb	$2, 1144(%rbx)
	jne	.L6315
.L5952:
	movl	$4, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L5954
.L6296:
	movq	%r14, %rax
	shrq	$18, %rax
	andl	$60, %eax
	addq	%r8, %rax
	movq	%rax, (%rsp)
	jmp	.L5897
.L6290:
	testb	$127, %cl
	jne	.L6025
	orl	$-2147483646, %edx
	movl	%edx, 792(%rbx)
	jmp	.L6022
.L6289:
	movq	968(%rbx), %rsi
	movl	336(%rbx), %eax
	xorq	%rsi, %rax
	testl	$2147479552, %eax
	je	.L6022
	movl	384(%rbx), %eax
	xorq	%rsi, %rax
	testl	$2147479552, %eax
	jne	.L6023
	orl	$2, %edx
	movl	%edx, 792(%rbx)
	jmp	.L6022
.L6298:
	testl	%ecx, %ecx
	jne	.L5910
	movl	%r14d, %eax
	andl	$61440, %eax
	shrl	$12, %eax
	cmpl	%eax, %edx
	jb	.L5909
.L5910:
	movl	%r11d, %eax
	movl	%r11d, %edx
	andl	$2147479552, %eax
	jne	.L5911
	movl	88(%rbx), %r11d
.L5912:
	xorl	%edx, %r11d
.L5913:
	movzbl	1144(%rbx), %eax
	testb	$2, %al
	jne	.L6316
	movq	%r11, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movzwl	(%rax,%r11), %edi
.L6082:
	movl	328(%rbx), %ecx
#APP
# 545 "inline.h" 1
	rorw $8, %di
# 0 "" 2
#NO_APP
	movl	%edi, %edx
	andl	$12582912, %ecx
	cmpl	$8388608, %ecx
	je	.L6317
	cmpl	$4194304, %ecx
	je	.L6318
.L5918:
	testb	$4, 16(%rsp)
	jne	.L5919
	movzbl	994(%rbx), %eax
	shrb	%al
	andl	$3, %eax
.L5920:
	movq	968(%rbx), %r9
	movzwl	%di, %edi
	movq	40(%rsp), %rsi
	movl	32(%rsp), %r8d
	movl	16(%rsp), %r11d
	movl	%r9d, 2232(%rsi)
	orl	2224(%rbx), %r8d
	movl	%edi, 18616(%rsi)
	shrl	%r11d
	andl	$1, %r11d
	cmpl	$8388608, %ecx
	movl	%r8d, 10424(%rsi)
	movb	%r11b, 44216(%rbx,%r10)
	movb	%al, 45240(%rbx,%r10)
	movb	$0, 46264(%rbx,%r10)
	movq	$0, 26808(%rsi)
	je	.L6319
.L5921:
	andl	$65528, %edx
	movl	%r14d, %eax
	andl	$2047, %eax
	sall	$8, %edx
	orl	%eax, %edx
	movl	%edx, %eax
.L5923:
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rax, 944(%rbx)
	andl	$2147481600, %ecx
	movw	%dx, 992(%rbx)
	movq	%rcx, 960(%rbx)
	jmp	.L5887
.L6297:
	movl	%eax, %ecx
	movq	%r14, %rax
	shrq	$10, %rax
	andl	$1022, %eax
	cmpl	$8388608, %ecx
	jne	.L5906
	movq	%r14, %rax
	shrq	$11, %rax
	andl	$510, %eax
.L5906:
	addq	%rax, %r11
	cmpq	1040(%rbx), %r11
	ja	.L5899
	movl	%r14d, %eax
	andl	$983040, %eax
	shrl	$16, %eax
	cmpl	%eax, %edx
	jae	.L5910
.L5917:
.L5909:
	movl	$17, %eax
	movq	%r11, 944(%rbx)
	movzbl	99(%rbx), %ecx
	movw	%ax, 992(%rbx)
	movl	976(%rbx), %eax
	jmp	.L5925
.L6319:
	movl	28(%rsp), %esi
	xorl	$1, %esi
	movslq	%esi, %rsi
	leaq	(%rbx,%rsi,8), %rcx
	movl	%r9d, 2232(%rcx)
	movl	%r8d, 10424(%rcx)
	movl	%edi, 18616(%rcx)
	movb	%r11b, 44216(%rbx,%rsi)
	movb	%al, 45240(%rbx,%rsi)
	movb	$0, 46264(%rbx,%rsi)
	movq	$0, 26808(%rcx)
.L5922:
	movl	%edx, %eax
	andl	$65520, %edx
	andl	$6, %eax
	sall	$8, %edx
	sall	$23, %eax
	orl	%edx, %eax
	movl	%r14d, %edx
	andl	$4095, %edx
	orl	%edx, %eax
	jmp	.L5923
.L5919:
	movzbl	994(%rbx), %esi
	movl	%esi, %eax
	andl	$-7, %esi
	shrb	%al
	andl	$3, %eax
	orl	$1, %eax
	leal	(%rax,%rax), %r8d
	orl	%r8d, %esi
	movb	%sil, 994(%rbx)
	jmp	.L5920
.L6318:
	testb	$4, %dil
	jne	.L5909
	testb	$2, %dil
	jne	.L5890
	.p2align 4,,3
	jmp	.L5918
.L6317:
	testb	$8, %dil
	.p2align 4,,3
	jne	.L5909
	.p2align 4,,7
	jmp	.L5918
.L6316:
	testb	$4, %al
	movq	%r11, %rdx
	.p2align 4,,2
	jne	.L5915
	movl	%r11d, %edi
	movq	1056(%rbx), %rdx
	movl	$1, %r9d
	addl	1096(%rbx), %edi
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	movq	%r10, 56(%rsp)
	movq	%r11, 48(%rsp)
	call	s390_logical_to_main_l
	movq	1056(%rbx), %rax
	movq	56(%rsp), %r10
	movq	48(%rsp), %r11
	movq	952(%rax), %rdx
.L5915:
	movq	%rdx, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movzwl	(%rax,%rdx), %edi
	jmp	.L6082
.L5911:
	cmpl	88(%rbx), %eax
	jne	.L5913
	movl	%eax, %r11d
	jmp	.L5912
.L6023:
	movl	432(%rbx), %eax
	xorq	%rsi, %rax
	testl	$2147479552, %eax
	jne	.L6024
	orl	$3, %edx
	movl	%edx, 792(%rbx)
	jmp	.L6022
.L6301:
	movq	1056(%rbx), %rdx
	andb	$-7, 994(%rdx)
	andl	$4, %esi
	jne	.L5938
	movq	1080(%rbx), %rcx
	movl	$-3, %esi
	testb	$1, 2(%rcx)
	je	.L5939
	movzbl	99(%rbx), %ecx
	andl	$64, %ecx
	cmpb	$1, %cl
	sbbl	%esi, %esi
	andl	$-4, %esi
	addl	$1, %esi
.L5939:
	movl	1096(%rbx), %edi
	xorl	%ecx, %ecx
	movq	%r10, (%rsp)
	addl	%eax, %edi
	call	s390_translate_addr
	movq	(%rsp), %r10
	testl	%eax, %eax
	je	.L5940
	movq	1056(%rbx), %rax
	movzwl	992(%rax), %esi
	movq	%rax, %rdi
	call	*2032(%rax)
	movq	(%rsp), %r10
.L5940:
	movzbl	994(%rbx), %eax
	movq	1056(%rbx), %rdx
	movl	%eax, %ecx
	andl	$-7, %eax
	orb	994(%rdx), %cl
	andl	$6, %ecx
	orl	%ecx, %eax
	movb	%al, 994(%rbx)
	movzbl	994(%rdx), %eax
	shrb	%al
	andl	$3, %eax
	orb	%al, 45240(%rbx,%r10)
	testb	$8, 98(%rbx)
	je	.L5941
	testb	$4, 96(%rbx)
	jne	.L5942
.L5941:
	movl	32(%rsp), %edi
	movl	%edi, 18616(%rbx,%r10,8)
.L5942:
	movq	1080(%rbx), %rcx
	testb	$1, 2(%rcx)
	je	.L5943
	testb	$64, 99(%rbx)
	je	.L5943
	movq	968(%rbx), %rcx
	andl	$2, %eax
	movl	%ecx, 2232(%rbx,%r10,8)
	movzbl	994(%rdx), %esi
	movzbl	994(%rbx), %ecx
	andl	$1, %esi
	andl	$-2, %ecx
	orl	%esi, %ecx
	movb	%cl, 994(%rbx)
	movq	968(%rdx), %rcx
	movl	$17, 1916(%rbx)
	movb	%al, 2010(%rbx)
	xorb	$8, %ch
	movq	%rcx, 968(%rbx)
	movl	%ecx, 464(%rbx)
	shrq	%rcx
	xorq	$1, %rcx
	andl	$1, %ecx
	movb	%cl, 1994(%rbx)
.L5943:
	movq	944(%rdx), %rax
	movl	88(%rdx), %esi
	movl	%eax, %edi
	movl	%eax, %ecx
	andl	$2147479552, %edi
	je	.L5945
	cmpl	%esi, %edi
	je	.L5945
.L5946:
	movq	960(%rdx), %rcx
	movq	%rax, 952(%rdx)
	movl	%ecx, %r8d
	movl	%ecx, %edi
	andl	$2147479552, %r8d
	je	.L5947
	cmpl	%r8d, %esi
	je	.L5947
.L5948:
	cmpq	1040(%rdx), %rax
	ja	.L5937
	movq	%rcx, %rdx
	orb	$8, %dh
	testl	$2048, %r14d
	cmovne	%rdx, %rcx
	jmp	.L5938
.L5993:
	movq	(%rsp), %rdi
	movl	$16, %edx
	movw	%dx, 992(%rbx)
	movq	%rdi, 944(%rbx)
	jmp	.L6020
.L6292:
	movl	%esi, %edi
	andl	$-16, %edi
	cmpb	%r12b, %dil
	je	.L6044
	testb	$8, %sil
	je	.L6044
	testb	$2, 1144(%rbx)
	jne	.L6320
.L6047:
	movl	$4, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L6049
.L5937:
	movl	$5, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	testb	$2, 1144(%rbx)
	je	.L5952
	movq	1056(%rbx), %rax
.L5951:
	testb	$6, 994(%rax)
	je	.L5952
	movl	$4, %esi
	movq	%rax, %rdi
	call	*2032(%rax)
	jmp	.L5954
.L5947:
	movl	%esi, %ecx
	xorl	%edi, %ecx
	jmp	.L5948
.L5945:
	movl	%ecx, %eax
	xorl	%esi, %eax
	.p2align 4,,3
	jmp	.L5946
.L6024:
	orl	$1, %edx
	movl	%edx, 792(%rbx)
	jmp	.L6022
.L6320:
	movq	1056(%rbx), %rax
	andb	$-7, 994(%rax)
.L6046:
	testb	$6, 994(%rax)
	je	.L6047
	movl	$4, %esi
	movq	%rax, %rdi
	call	*2032(%rax)
	jmp	.L6049
.L6288:
	testl	%ecx, %ecx
	jne	.L6005
	movl	%r13d, %eax
	andl	$61440, %eax
	shrl	$12, %eax
	cmpl	%eax, %edx
	jb	.L6004
.L6005:
	movl	%r10d, %eax
	movl	%r10d, %edx
	andl	$2147479552, %eax
	jne	.L6006
	movl	88(%rbx), %r10d
.L6007:
	xorl	%edx, %r10d
.L6008:
	movzbl	1144(%rbx), %eax
	testb	$2, %al
	jne	.L6321
	movq	%r10, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movzwl	(%rax,%r10), %edx
.L6085:
	movl	328(%rbx), %ecx
#APP
# 545 "inline.h" 1
	rorw $8, %dx
# 0 "" 2
#NO_APP
	movl	%edx, %esi
	andl	$12582912, %ecx
	cmpl	$8388608, %ecx
	je	.L6322
	cmpl	$4194304, %ecx
	je	.L6323
.L6013:
	testb	$4, %r11b
	jne	.L6014
	movzbl	994(%rbx), %eax
	shrb	%al
	andl	$3, %eax
.L6015:
	movq	968(%rbx), %r9
	movl	%r11d, %edi
	movzwl	%dx, %edx
	movq	16(%rsp), %r10
	shrl	%edi
	movl	8(%rsp), %r8d
	andl	$1, %edi
	movl	%r9d, 2232(%r10)
	orl	2224(%rbx), %r8d
	cmpl	$8388608, %ecx
	movl	%edx, 18616(%r10)
	movl	%r8d, 10424(%r10)
	movb	%dil, 44216(%rbx,%r14)
	movb	%al, 45240(%rbx,%r14)
	movb	$0, 46264(%rbx,%r14)
	movq	$0, 26808(%r10)
	je	.L6324
.L6016:
	movl	%esi, %eax
	movl	%r13d, %edx
	andl	$65528, %eax
	andl	$2047, %edx
	sall	$8, %eax
	orl	%edx, %eax
.L6018:
	movq	%rax, %rcx
	xorl	%r9d, %r9d
	movq	%rax, 944(%rbx)
	andl	$2147481600, %ecx
	movw	%r9w, 992(%rbx)
	movq	%rcx, 960(%rbx)
	jmp	.L5982
.L6300:
	testb	$127, %cl
	jne	.L5930
	orl	$-2147483646, %edx
	movl	%edx, 792(%rbx)
	jmp	.L5927
.L6299:
	movq	968(%rbx), %rsi
	movl	336(%rbx), %eax
	xorq	%rsi, %rax
	testl	$2147479552, %eax
	je	.L5927
	movl	384(%rbx), %eax
	xorq	%rsi, %rax
	testl	$2147479552, %eax
	jne	.L5928
	orl	$2, %edx
	movl	%edx, 792(%rbx)
	jmp	.L5927
.L5995:
	cmpl	88(%rbx), %eax
	jne	.L5997
	movl	%eax, %r11d
	jmp	.L5996
.L5928:
	movl	432(%rbx), %eax
	xorq	%rsi, %rax
	testl	$2147479552, %eax
	jne	.L5929
	orl	$3, %edx
	movl	%edx, 792(%rbx)
	jmp	.L5927
.L6287:
	movl	%eax, %ecx
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$1022, %eax
	cmpl	$8388608, %ecx
	jne	.L6001
	movq	%r13, %rax
	shrq	$11, %rax
	andl	$510, %eax
.L6001:
	addq	%rax, %r10
	cmpq	%r10, 1040(%rbx)
	jb	.L5994
	movl	%r13d, %eax
	andl	$983040, %eax
	shrl	$16, %eax
	cmpl	%eax, %edx
	jae	.L6005
.L6012:
.L6004:
	movl	$17, %ecx
	movq	%r10, 944(%rbx)
	movl	976(%rbx), %eax
	movw	%cx, 992(%rbx)
	movzbl	99(%rbx), %ecx
	jmp	.L6020
.L5929:
	orl	$1, %edx
	movl	%edx, 792(%rbx)
	jmp	.L5927
.L6286:
	movq	%r13, %rax
	shrq	$18, %rax
	andl	$60, %eax
	addq	%r11, %rax
	movq	%rax, (%rsp)
	jmp	.L5992
.L6285:
	cmpb	$0, 44216(%rbx,%r14)
	jne	.L5988
	movl	2232(%r11), %r8d
	cmpq	%rdx, %r8
	jne	.L5987
.L5989:
	movq	16(%rsp), %rax
	movzwl	18616(%rax), %esi
	movzbl	45240(%rbx,%r14), %eax
	testb	%al, %al
	je	.L5990
	movzbl	994(%rbx), %edx
	andl	$3, %eax
	addl	%eax, %eax
	andl	$-7, %edx
	orl	%eax, %edx
	movb	%dl, 994(%rbx)
.L5990:
	cmpl	$8388608, %edi
	jne	.L6016
.L6017:
	movl	%esi, %eax
	andl	$65520, %esi
	movl	%r13d, %edx
	andl	$6, %eax
	sall	$8, %esi
	andl	$4095, %edx
	sall	$23, %eax
	orl	%esi, %eax
	orl	%edx, %eax
	jmp	.L6018
.L5988:
	testb	$1, 994(%rbx)
	jne	.L5987
	jmp	.L5989
.L5898:
	movq	(%rsp), %rdi
	movl	$16, %r10d
	movw	%r10w, 992(%rbx)
	movq	%rdi, 944(%rbx)
	jmp	.L5925
.L6314:
	movq	%r9, %rdx
	movq	%r11, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %r9
	movq	16(%rsp), %r11
	jmp	.L5965
.L6324:
	movl	28(%rsp), %r10d
	xorl	$1, %r10d
	movslq	%r10d, %r10
	leaq	(%rbx,%r10,8), %rcx
	movl	%r9d, 2232(%rcx)
	movl	%r8d, 10424(%rcx)
	movl	%edx, 18616(%rcx)
	movb	%dil, 44216(%rbx,%r10)
	movb	%al, 45240(%rbx,%r10)
	movb	$0, 46264(%rbx,%r10)
	movq	$0, 26808(%rcx)
	jmp	.L6017
.L6014:
	movzbl	994(%rbx), %edi
	movl	%edi, %eax
	andl	$-7, %edi
	shrb	%al
	andl	$3, %eax
	orl	$1, %eax
	leal	(%rax,%rax), %r8d
	orl	%r8d, %edi
	movb	%dil, 994(%rbx)
	jmp	.L6015
.L6323:
	testb	$4, %dl
	jne	.L6004
	testb	$2, %dl
	jne	.L5985
	.p2align 4,,5
	jmp	.L6013
.L6322:
	testb	$8, %dl
	.p2align 4,,5
	jne	.L6004
	.p2align 4,,8
	jmp	.L6013
.L6321:
	testb	$4, %al
	movq	%r10, %rdx
	.p2align 4,,3
	jne	.L6010
	movl	%r10d, %edi
	movq	1056(%rbx), %rdx
	movl	$1, %r9d
	addl	1096(%rbx), %edi
	xorl	%r8d, %r8d
	movl	$4, %ecx
	movl	$-3, %esi
	movl	%r11d, 40(%rsp)
	movq	%r10, 32(%rsp)
	call	s390_logical_to_main_l
	movq	1056(%rbx), %rax
	movl	40(%rsp), %r11d
	movq	32(%rsp), %r10
	movq	952(%rax), %rdx
.L6010:
	movq	%rdx, %rax
	shrq	$11, %rax
	addq	1032(%rbx), %rax
	orb	$4, (%rax)
	movq	1024(%rbx), %rax
	movzwl	(%rax,%rdx), %edx
	jmp	.L6085
.L6006:
	cmpl	88(%rbx), %eax
	jne	.L6008
	movl	%eax, %r10d
	jmp	.L6007
.L6307:
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L6054
.L6274:
	movzbl	97(%rbx), %r8d
.L6055:
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	$1, %esi
	call	s370_logical_to_main_l
	movq	%rax, %r14
	jmp	.L6057
.L6308:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L6056
	jmp	.L6055
.L5900:
	cmpl	88(%rbx), %eax
	jne	.L5902
	.p2align 4,,8
	jmp	.L5901
.L6311:
	.p2align 4,,8
	call	memcpy
	.p2align 4,,8
	jmp	.L6052
.L6053:
	leal	0(%r13,%rbp), %edi
	andl	$16777215, %edi
	jmp	.L6274
.L6304:
	cmpb	43192(%rbx,%rdx), %al
	je	.L5961
.L6099:
	movzbl	%al, %r8d
.L5960:
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%r10, 8(%rsp)
	call	s370_logical_to_main_l
	movl	1916(%rbx), %r14d
	movq	%rax, %r11
	movzbl	97(%rbx), %r12d
	movq	8(%rsp), %r10
	jmp	.L5962
.L6313:
	call	memcpy
	jmp	.L5957
.L6303:
	movzbl	44216(%rbx,%rdx), %r9d
	testb	%r9b, 1976(%rbx,%rax)
	jne	.L5959
.L6273:
	movzbl	97(%rbx), %r8d
	jmp	.L5960
.L5958:
	leal	(%rax,%r12), %edi
	andl	$16777215, %edi
	jmp	.L6273
.L6312:
	movq	%rbp, %rdx
	call	memcpy
	jmp	.L6060
.L6291:
	movq	1056(%rbx), %rdx
	andb	$-7, 994(%rdx)
	andl	$4, %esi
	jne	.L6033
	movq	1080(%rbx), %rcx
	movl	$-3, %esi
	testb	$1, 2(%rcx)
	je	.L6034
	movzbl	99(%rbx), %ecx
	andl	$64, %ecx
	cmpb	$1, %cl
	sbbl	%esi, %esi
	andl	$-4, %esi
	addl	$1, %esi
.L6034:
	movl	1096(%rbx), %edi
	xorl	%ecx, %ecx
	addl	%eax, %edi
	call	s390_translate_addr
	testl	%eax, %eax
	je	.L6035
	movq	1056(%rbx), %rax
	movzwl	992(%rax), %esi
	movq	%rax, %rdi
	call	*2032(%rax)
.L6035:
	movzbl	994(%rbx), %eax
	movq	1056(%rbx), %rdx
	movl	%eax, %ecx
	andl	$-7, %eax
	orb	994(%rdx), %cl
	andl	$6, %ecx
	orl	%ecx, %eax
	movb	%al, 994(%rbx)
	movzbl	994(%rdx), %eax
	shrb	%al
	andl	$3, %eax
	orb	%al, 45240(%rbx,%r14)
	testb	$8, 98(%rbx)
	je	.L6036
	testb	$4, 96(%rbx)
	jne	.L6037
.L6036:
	movl	8(%rsp), %edi
	movl	%edi, 18616(%rbx,%r14,8)
.L6037:
	movq	1080(%rbx), %rcx
	testb	$1, 2(%rcx)
	je	.L6038
	testb	$64, 99(%rbx)
	je	.L6038
	movq	968(%rbx), %rcx
	andl	$2, %eax
	movl	%ecx, 2232(%rbx,%r14,8)
	movzbl	994(%rdx), %esi
	movzbl	994(%rbx), %ecx
	andl	$1, %esi
	andl	$-2, %ecx
	orl	%esi, %ecx
	movb	%cl, 994(%rbx)
	movq	968(%rdx), %rcx
	movl	$17, 1916(%rbx)
	movb	%al, 2010(%rbx)
	xorb	$8, %ch
	movq	%rcx, 968(%rbx)
	movl	%ecx, 464(%rbx)
	shrq	%rcx
	xorq	$1, %rcx
	andl	$1, %ecx
	movb	%cl, 1994(%rbx)
.L6038:
	movq	944(%rdx), %rax
	movl	88(%rdx), %esi
	movl	%eax, %edi
	movl	%eax, %ecx
	andl	$2147479552, %edi
	je	.L6040
	cmpl	%esi, %edi
	je	.L6040
.L6041:
	movq	960(%rdx), %rcx
	movq	%rax, 952(%rdx)
	movl	%ecx, %r8d
	movl	%ecx, %edi
	andl	$2147479552, %r8d
	je	.L6042
	cmpl	%r8d, %esi
	je	.L6042
.L6043:
	cmpq	1040(%rdx), %rax
	ja	.L6032
	movq	%rcx, %rdx
	orb	$8, %dh
	testl	$2048, %r13d
	cmovne	%rdx, %rcx
	jmp	.L6033
.L6295:
	cmpb	$0, 44216(%rbx,%r10)
	jne	.L5893
	movl	2232(%r11), %r8d
	cmpq	%rdx, %r8
	jne	.L5892
.L5894:
	movq	40(%rsp), %rax
	movzwl	18616(%rax), %edx
	movzbl	45240(%rbx,%r10), %eax
	testb	%al, %al
	je	.L5895
	andl	$3, %eax
	leal	(%rax,%rax), %ecx
	movzbl	994(%rbx), %eax
	andl	$-7, %eax
	orl	%ecx, %eax
	movb	%al, 994(%rbx)
.L5895:
	cmpl	$8388608, %esi
	jne	.L5921
	jmp	.L5922
.L5893:
	testb	$1, 994(%rbx)
	jne	.L5892
	.p2align 4,,4
	jmp	.L5894
.L6032:
	movl	$5, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	testb	$2, 1144(%rbx)
	je	.L6047
	movq	1056(%rbx), %rax
	jmp	.L6046
.L6315:
	movq	1056(%rbx), %rax
	andb	$-7, 994(%rax)
	jmp	.L5951
.L6042:
	movl	%esi, %ecx
	xorl	%edi, %ecx
	jmp	.L6043
.L6040:
	movl	%ecx, %eax
	xorl	%esi, %eax
	jmp	.L6041
	.cfi_endproc
.LFE553:
	.size	s370_compare_and_form_codeword, .-s370_compare_and_form_codeword
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"general1.c:2068"
.LC1:
	.string	"general1.c:2074"
.LC2:
	.string	"general1.c:2081"
.LC3:
	.string	"*CS"
	.text
	.p2align 4,,15
	.globl	s370_compare_and_swap
	.type	s370_compare_and_swap, @function
s370_compare_and_swap:
.LFB554:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %r15d
	movl	%ebp, %r13d
	shrl	$20, %r15d
	movl	%ebp, %esi
	shrl	$16, %r13d
	shrl	$12, %esi
	andl	$15, %r15d
	andl	$15, %r13d
	andl	$4095, %ebp
	andl	$15, %esi
	movl	%esi, %r12d
	je	.L6326
	movslq	%esi, %rax
	addl	192(%rbx,%rax,8), %ebp
	andl	$16777215, %ebp
.L6326:
	addq	$4, 136(%rbx)
	testb	$3, %bpl
	movb	$4, 130(%rbx)
	jne	.L6371
.L6327:
	leal	-77(%rbp), %r14d
	cmpl	$6, %r14d
	jbe	.L6372
.L6328:
	leal	5(%r12), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L6329
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L6373
.L6330:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L6374
.L6331:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L6329
	testb	$2, 46264(%rbx,%rcx)
	je	.L6329
	movl	%ebp, %r12d
	xorq	26808(%rdx), %r12
.L6332:
	movq	40(%rbx), %rdi
	movslq	%r15d, %r15
	movq	1056(%rbx), %rcx
	leaq	(%rbx,%r15,8), %r15
	movl	192(%r15), %r8d
	movl	3000(%rdi), %eax
	bswap	%r8d
	cmpl	%eax, 48(%rcx)
	je	.L6333
	addq	$1936, %rdi
	movl	$.LC0, %esi
	movl	%r8d, 8(%rsp)
	call	ptt_pthread_mutex_lock
	movq	1056(%rbx), %rcx
	movq	40(%rbx), %rdi
	movl	8(%rsp), %r8d
	movzwl	1010(%rcx), %eax
	movw	%ax, 1928(%rdi)
.L6333:
	movslq	%r13d, %r13
	movl	%r8d, %eax
	leaq	(%rbx,%r13,8), %r9
	movl	192(%r9), %edx
	bswap	%edx
#APP
# 406 "machdep.h" 1
	lock;   cmpxchgl %edx,(%r12)
	setnz   %dl
	
# 0 "" 2
#NO_APP
	movl	%eax, %r13d
	movzwl	1010(%rcx), %eax
	movb	%dl, 100(%rbx)
	cmpw	%ax, 1928(%rdi)
	je	.L6375
.L6334:
	cmpb	$1, %dl
	je	.L6376
	cmpl	$6, %r14d
	jbe	.L6377
.L6325:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L6371:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L6327
	.p2align 4,,10
	.p2align 3
.L6376:
	testb	$8, pttclass+1(%rip)
	jne	.L6378
.L6336:
	bswap	%r13d
	movl	%r13d, 192(%r15)
	testb	$2, 1144(%rbx)
	jne	.L6379
.L6337:
	cmpl	$1, sysblk+236(%rip)
	jle	.L6325
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	sched_yield
	.p2align 4,,10
	.p2align 3
.L6378:
	.cfi_restore_state
	movl	$.LC2, %r8d
	movl	$.LC3, %esi
	movl	$2048, %edi
	movl	192(%r9), %ecx
	movl	%ebp, %r9d
	movl	192(%r15), %edx
	call	ptt_pthread_trace
	jmp	.L6336
	.p2align 4,,10
	.p2align 3
.L6375:
	movl	$-1, %eax
	movl	$.LC1, %esi
	movq	%r9, 8(%rsp)
	movw	%ax, 1928(%rdi)
	addq	$1936, %rdi
	call	ptt_pthread_mutex_unlock
	movzbl	100(%rbx), %edx
	movq	8(%rsp), %r9
	jmp	.L6334
.L6373:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L6330
.L6329:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %esi
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	movq	%rax, %r12
	jmp	.L6332
.L6374:
	cmpb	43192(%rbx,%rcx), %al
	je	.L6331
	jmp	.L6329
.L6377:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
.L6372:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	s370_store_int_timer
	jmp	.L6328
.L6379:
	movq	1080(%rbx), %rax
	testb	$4, 72(%rax)
	je	.L6337
	movl	52(%rbx), %eax
	leaq	1232(%rbx), %rdi
	andl	56(%rbx), %eax
	testl	$16318464, %eax
	jne	.L6338
	movl	$-4, %esi
	call	longjmp
.L6338:
	movl	$-5, %esi
	call	longjmp
	.cfi_endproc
.LFE554:
	.size	s370_compare_and_swap, .-s370_compare_and_swap
	.section	.rodata.str1.1
.LC4:
	.string	"general1.c:2132"
.LC5:
	.string	"general1.c:2138"
.LC6:
	.string	"general1.c:2145"
.LC7:
	.string	"*CDS"
	.text
	.p2align 4,,15
	.globl	s370_compare_double_and_swap
	.type	s370_compare_double_and_swap, @function
s370_compare_double_and_swap:
.LFB555:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	(%rdi), %r12d
	bswap	%r12d
	movl	%r12d, %eax
	movl	%r12d, %edx
	shrl	$20, %eax
	shrl	$16, %edx
	movl	%r12d, %r13d
	movl	%eax, %ebp
	movl	%edx, %r14d
	shrl	$12, %r13d
	andl	$15, %ebp
	andl	$15, %r14d
	andl	$4095, %r12d
	andl	$15, %r13d
	je	.L6381
	movslq	%r13d, %rcx
	addl	192(%rsi,%rcx,8), %r12d
	andl	$16777215, %r12d
.L6381:
	orl	%edx, %eax
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	testb	$1, %al
	je	.L6382
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L6382:
	testb	$7, %r12b
	jne	.L6430
.L6383:
	leal	-73(%r12), %r15d
	cmpl	$10, %r15d
	jbe	.L6431
.L6384:
	leal	5(%r13), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L6385
	movl	%r12d, %edx
	addl	$1, %eax
	shrl	$11, %edx
	cltq
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L6432
.L6386:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L6433
.L6387:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L6385
	testb	$2, 46264(%rbx,%rdx)
	je	.L6385
	movl	%r12d, %edx
	xorq	26808(%rcx), %rdx
.L6388:
	movslq	%ebp, %rax
	addl	$1, %ebp
	movq	40(%rbx), %rdi
	leaq	(%rbx,%rax,8), %r10
	movslq	%ebp, %rbp
	movq	1056(%rbx), %rsi
	leaq	(%rbx,%rbp,8), %r11
	movl	192(%r10), %r13d
	movl	192(%r11), %eax
	salq	$32, %r13
	orq	%rax, %r13
	movslq	%r14d, %rax
	addl	$1, %r14d
	leaq	(%rbx,%rax,8), %rcx
	movslq	%r14d, %r14
	bswap	%r13
	movl	192(%rcx), %ebp
	movl	192(%rbx,%r14,8), %eax
	salq	$32, %rbp
	orq	%rax, %rbp
	movl	3000(%rdi), %eax
	bswap	%rbp
	cmpl	%eax, 48(%rsi)
	je	.L6389
	addq	$1936, %rdi
	movl	$.LC4, %esi
	movq	%rdx, (%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 8(%rsp)
	call	ptt_pthread_mutex_lock
	movq	1056(%rbx), %rsi
	movq	40(%rbx), %rdi
	movq	24(%rsp), %rcx
	movq	16(%rsp), %r10
	movzwl	1010(%rsi), %eax
	movq	8(%rsp), %r11
	movq	(%rsp), %rdx
	movw	%ax, 1928(%rdi)
.L6389:
	movq	%r13, %rax
#APP
# 422 "machdep.h" 1
	lock;   cmpxchgq %rbp,(%rdx)
	setnz   %bpl
	
# 0 "" 2
#NO_APP
	movq	%rax, %r13
	movzwl	1010(%rsi), %eax
	movb	%bpl, 100(%rbx)
	cmpw	%ax, 1928(%rdi)
	je	.L6434
.L6390:
	cmpb	$1, %bpl
	je	.L6435
	cmpl	$10, %r15d
	jbe	.L6436
.L6380:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L6430:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L6383
	.p2align 4,,10
	.p2align 3
.L6435:
	testb	$8, pttclass+1(%rip)
	jne	.L6437
.L6392:
	bswap	%r13
	movq	%r13, %rax
	shrq	$32, %rax
	movl	%eax, 192(%r10)
	movl	%r13d, 192(%r11)
	testb	$2, 1144(%rbx)
	jne	.L6438
.L6393:
	cmpl	$1, sysblk+236(%rip)
	jle	.L6380
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	sched_yield
	.p2align 4,,10
	.p2align 3
.L6437:
	.cfi_restore_state
	movl	192(%r10), %edx
	movl	%r12d, %r9d
	movl	$.LC6, %r8d
	movl	192(%rcx), %ecx
	movl	$.LC7, %esi
	movl	$2048, %edi
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	call	ptt_pthread_trace
	movq	8(%rsp), %r11
	movq	(%rsp), %r10
	jmp	.L6392
	.p2align 4,,10
	.p2align 3
.L6434:
	movl	$-1, %eax
	addq	$1936, %rdi
	movq	%r11, (%rsp)
	movw	%ax, -8(%rdi)
	movl	$.LC5, %esi
	movq	%rcx, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	ptt_pthread_mutex_unlock
	movzbl	100(%rbx), %ebp
	movq	16(%rsp), %rcx
	movq	8(%rsp), %r10
	movq	(%rsp), %r11
	jmp	.L6390
.L6432:
	movzbl	44216(%rbx,%rdx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L6386
.L6385:
	movzbl	97(%rbx), %r8d
	movq	%rbx, %rdx
	movl	$8, %r9d
	movl	$2, %ecx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	movq	%rax, %rdx
	jmp	.L6388
.L6433:
	cmpb	43192(%rbx,%rdx), %al
	je	.L6387
	jmp	.L6385
.L6436:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
.L6431:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	s370_store_int_timer
	jmp	.L6384
.L6438:
	movq	1080(%rbx), %rax
	testb	$4, 72(%rax)
	je	.L6393
	movl	52(%rbx), %eax
	leaq	1232(%rbx), %rdi
	andl	56(%rbx), %eax
	testl	$16318464, %eax
	jne	.L6394
	movl	$-4, %esi
	call	longjmp
.L6394:
	movl	$-5, %esi
	call	longjmp
	.cfi_endproc
.LFE555:
	.size	s370_compare_double_and_swap, .-s370_compare_double_and_swap
	.p2align 4,,15
	.globl	s370_compare_halfword
	.type	s370_compare_halfword, @function
s370_compare_halfword:
.LFB556:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L6475
.L6440:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L6441
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L6441:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$1, %bpl
	jne	.L6476
.L6442:
	leal	-79(%r13), %edx
	cmpl	$4, %edx
	jbe	.L6477
.L6444:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L6445
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L6478
.L6446:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L6479
.L6447:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L6445
	testb	$4, 46264(%rbx,%rcx)
	je	.L6445
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L6448:
	movzwl	(%rax), %eax
#APP
# 477 "vstore.h" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
.L6449:
	cwtl
	movslq	%r12d, %r12
	movl	$1, %edx
	cmpl	192(%rbx,%r12,8), %eax
	jg	.L6450
	setl	%dl
	addl	%edx, %edx
.L6450:
	movb	%dl, 100(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L6478:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L6446
.L6445:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L6448
.L6476:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2047, %edx
	jne	.L6442
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch2_full
	jmp	.L6449
.L6475:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L6440
.L6479:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L6447
	jmp	.L6445
.L6477:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L6444
	.cfi_endproc
.LFE556:
	.size	s370_compare_halfword, .-s370_compare_halfword
	.p2align 4,,15
	.globl	s370_compare_halfword_immediate
	.type	s370_compare_halfword_immediate, @function
s370_compare_halfword_immediate:
.LFB557:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	$1, %edx
	addq	$4, 136(%rsi)
	bswap	%eax
	movl	%eax, %ecx
	cwtl
	shrl	$20, %ecx
	andl	$15, %ecx
	cmpl	%eax, 192(%rsi,%rcx,8)
	jl	.L6481
	setg	%dl
	addl	%edx, %edx
.L6481:
	movb	%dl, 100(%rsi)
	ret
	.cfi_endproc
.LFE557:
	.size	s370_compare_halfword_immediate, .-s370_compare_halfword_immediate
	.p2align 4,,15
	.globl	s370_compare_logical_register
	.type	s370_compare_logical_register, @function
s370_compare_logical_register:
.LFB558:
	.cfi_startproc
	movzbl	1(%rdi), %edx
	addq	$2, 136(%rsi)
	movq	%rdx, %rax
	andl	$15, %edx
	shrq	$4, %rax
	movl	192(%rsi,%rdx,8), %edx
	andl	$15, %eax
	movl	192(%rsi,%rax,8), %ecx
	movl	$1, %eax
	cmpl	%edx, %ecx
	jb	.L6485
	cmpl	%ecx, %edx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6485:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE558:
	.size	s370_compare_logical_register, .-s370_compare_logical_register
	.p2align 4,,15
	.globl	s370_1500
	.type	s370_1500, @function
s370_1500:
.LFB559:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE559:
	.size	s370_1500, .-s370_1500
	.p2align 4,,15
	.globl	s370_1501
	.type	s370_1501, @function
s370_1501:
.LFB560:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6490
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6490:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE560:
	.size	s370_1501, .-s370_1501
	.p2align 4,,15
	.globl	s370_1502
	.type	s370_1502, @function
s370_1502:
.LFB561:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6494
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6494:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE561:
	.size	s370_1502, .-s370_1502
	.p2align 4,,15
	.globl	s370_1503
	.type	s370_1503, @function
s370_1503:
.LFB562:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6498
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6498:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE562:
	.size	s370_1503, .-s370_1503
	.p2align 4,,15
	.globl	s370_1504
	.type	s370_1504, @function
s370_1504:
.LFB563:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6502
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6502:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE563:
	.size	s370_1504, .-s370_1504
	.p2align 4,,15
	.globl	s370_1505
	.type	s370_1505, @function
s370_1505:
.LFB564:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6506
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6506:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE564:
	.size	s370_1505, .-s370_1505
	.p2align 4,,15
	.globl	s370_1506
	.type	s370_1506, @function
s370_1506:
.LFB565:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6510
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6510:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE565:
	.size	s370_1506, .-s370_1506
	.p2align 4,,15
	.globl	s370_1507
	.type	s370_1507, @function
s370_1507:
.LFB566:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6514
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6514:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE566:
	.size	s370_1507, .-s370_1507
	.p2align 4,,15
	.globl	s370_1508
	.type	s370_1508, @function
s370_1508:
.LFB567:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6518
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6518:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE567:
	.size	s370_1508, .-s370_1508
	.p2align 4,,15
	.globl	s370_1509
	.type	s370_1509, @function
s370_1509:
.LFB568:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6522
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6522:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE568:
	.size	s370_1509, .-s370_1509
	.p2align 4,,15
	.globl	s370_150A
	.type	s370_150A, @function
s370_150A:
.LFB569:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6526
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6526:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE569:
	.size	s370_150A, .-s370_150A
	.p2align 4,,15
	.globl	s370_150B
	.type	s370_150B, @function
s370_150B:
.LFB570:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6530
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6530:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE570:
	.size	s370_150B, .-s370_150B
	.p2align 4,,15
	.globl	s370_150C
	.type	s370_150C, @function
s370_150C:
.LFB571:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6534
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6534:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE571:
	.size	s370_150C, .-s370_150C
	.p2align 4,,15
	.globl	s370_150D
	.type	s370_150D, @function
s370_150D:
.LFB572:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6538
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6538:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE572:
	.size	s370_150D, .-s370_150D
	.p2align 4,,15
	.globl	s370_150E
	.type	s370_150E, @function
s370_150E:
.LFB573:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6542
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6542:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE573:
	.size	s370_150E, .-s370_150E
	.p2align 4,,15
	.globl	s370_150F
	.type	s370_150F, @function
s370_150F:
.LFB574:
	.cfi_startproc
	movl	192(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6546
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6546:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE574:
	.size	s370_150F, .-s370_150F
	.p2align 4,,15
	.globl	s370_1510
	.type	s370_1510, @function
s370_1510:
.LFB575:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6550
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6550:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE575:
	.size	s370_1510, .-s370_1510
	.p2align 4,,15
	.globl	s370_1511
	.type	s370_1511, @function
s370_1511:
.LFB576:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE576:
	.size	s370_1511, .-s370_1511
	.p2align 4,,15
	.globl	s370_1512
	.type	s370_1512, @function
s370_1512:
.LFB577:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6555
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6555:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE577:
	.size	s370_1512, .-s370_1512
	.p2align 4,,15
	.globl	s370_1513
	.type	s370_1513, @function
s370_1513:
.LFB578:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6559
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6559:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE578:
	.size	s370_1513, .-s370_1513
	.p2align 4,,15
	.globl	s370_1514
	.type	s370_1514, @function
s370_1514:
.LFB579:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6563
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6563:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE579:
	.size	s370_1514, .-s370_1514
	.p2align 4,,15
	.globl	s370_1515
	.type	s370_1515, @function
s370_1515:
.LFB580:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6567
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6567:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE580:
	.size	s370_1515, .-s370_1515
	.p2align 4,,15
	.globl	s370_1516
	.type	s370_1516, @function
s370_1516:
.LFB581:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6571
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6571:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE581:
	.size	s370_1516, .-s370_1516
	.p2align 4,,15
	.globl	s370_1517
	.type	s370_1517, @function
s370_1517:
.LFB582:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6575
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6575:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE582:
	.size	s370_1517, .-s370_1517
	.p2align 4,,15
	.globl	s370_1518
	.type	s370_1518, @function
s370_1518:
.LFB583:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6579
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6579:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE583:
	.size	s370_1518, .-s370_1518
	.p2align 4,,15
	.globl	s370_1519
	.type	s370_1519, @function
s370_1519:
.LFB584:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6583
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6583:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE584:
	.size	s370_1519, .-s370_1519
	.p2align 4,,15
	.globl	s370_151A
	.type	s370_151A, @function
s370_151A:
.LFB585:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6587
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6587:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE585:
	.size	s370_151A, .-s370_151A
	.p2align 4,,15
	.globl	s370_151B
	.type	s370_151B, @function
s370_151B:
.LFB586:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6591
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6591:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE586:
	.size	s370_151B, .-s370_151B
	.p2align 4,,15
	.globl	s370_151C
	.type	s370_151C, @function
s370_151C:
.LFB587:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6595
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6595:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE587:
	.size	s370_151C, .-s370_151C
	.p2align 4,,15
	.globl	s370_151D
	.type	s370_151D, @function
s370_151D:
.LFB588:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6599
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6599:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE588:
	.size	s370_151D, .-s370_151D
	.p2align 4,,15
	.globl	s370_151E
	.type	s370_151E, @function
s370_151E:
.LFB589:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6603
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6603:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE589:
	.size	s370_151E, .-s370_151E
	.p2align 4,,15
	.globl	s370_151F
	.type	s370_151F, @function
s370_151F:
.LFB590:
	.cfi_startproc
	movl	200(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6607
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6607:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE590:
	.size	s370_151F, .-s370_151F
	.p2align 4,,15
	.globl	s370_1520
	.type	s370_1520, @function
s370_1520:
.LFB591:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6611
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6611:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE591:
	.size	s370_1520, .-s370_1520
	.p2align 4,,15
	.globl	s370_1521
	.type	s370_1521, @function
s370_1521:
.LFB592:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6615
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6615:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE592:
	.size	s370_1521, .-s370_1521
	.p2align 4,,15
	.globl	s370_1522
	.type	s370_1522, @function
s370_1522:
.LFB593:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE593:
	.size	s370_1522, .-s370_1522
	.p2align 4,,15
	.globl	s370_1523
	.type	s370_1523, @function
s370_1523:
.LFB594:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6620
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6620:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE594:
	.size	s370_1523, .-s370_1523
	.p2align 4,,15
	.globl	s370_1524
	.type	s370_1524, @function
s370_1524:
.LFB595:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6624
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6624:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE595:
	.size	s370_1524, .-s370_1524
	.p2align 4,,15
	.globl	s370_1525
	.type	s370_1525, @function
s370_1525:
.LFB596:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6628
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6628:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE596:
	.size	s370_1525, .-s370_1525
	.p2align 4,,15
	.globl	s370_1526
	.type	s370_1526, @function
s370_1526:
.LFB597:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6632
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6632:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE597:
	.size	s370_1526, .-s370_1526
	.p2align 4,,15
	.globl	s370_1527
	.type	s370_1527, @function
s370_1527:
.LFB598:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6636
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6636:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE598:
	.size	s370_1527, .-s370_1527
	.p2align 4,,15
	.globl	s370_1528
	.type	s370_1528, @function
s370_1528:
.LFB599:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6640
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6640:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE599:
	.size	s370_1528, .-s370_1528
	.p2align 4,,15
	.globl	s370_1529
	.type	s370_1529, @function
s370_1529:
.LFB600:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6644
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6644:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE600:
	.size	s370_1529, .-s370_1529
	.p2align 4,,15
	.globl	s370_152A
	.type	s370_152A, @function
s370_152A:
.LFB601:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6648
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6648:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE601:
	.size	s370_152A, .-s370_152A
	.p2align 4,,15
	.globl	s370_152B
	.type	s370_152B, @function
s370_152B:
.LFB602:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6652
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6652:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE602:
	.size	s370_152B, .-s370_152B
	.p2align 4,,15
	.globl	s370_152C
	.type	s370_152C, @function
s370_152C:
.LFB603:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6656
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6656:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE603:
	.size	s370_152C, .-s370_152C
	.p2align 4,,15
	.globl	s370_152D
	.type	s370_152D, @function
s370_152D:
.LFB604:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6660
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6660:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE604:
	.size	s370_152D, .-s370_152D
	.p2align 4,,15
	.globl	s370_152E
	.type	s370_152E, @function
s370_152E:
.LFB605:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6664
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6664:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE605:
	.size	s370_152E, .-s370_152E
	.p2align 4,,15
	.globl	s370_152F
	.type	s370_152F, @function
s370_152F:
.LFB606:
	.cfi_startproc
	movl	208(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6668
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6668:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE606:
	.size	s370_152F, .-s370_152F
	.p2align 4,,15
	.globl	s370_1530
	.type	s370_1530, @function
s370_1530:
.LFB607:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6672
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6672:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE607:
	.size	s370_1530, .-s370_1530
	.p2align 4,,15
	.globl	s370_1531
	.type	s370_1531, @function
s370_1531:
.LFB608:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6676
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6676:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE608:
	.size	s370_1531, .-s370_1531
	.p2align 4,,15
	.globl	s370_1532
	.type	s370_1532, @function
s370_1532:
.LFB609:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6680
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6680:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE609:
	.size	s370_1532, .-s370_1532
	.p2align 4,,15
	.globl	s370_1533
	.type	s370_1533, @function
s370_1533:
.LFB610:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE610:
	.size	s370_1533, .-s370_1533
	.p2align 4,,15
	.globl	s370_1534
	.type	s370_1534, @function
s370_1534:
.LFB611:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6685
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6685:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE611:
	.size	s370_1534, .-s370_1534
	.p2align 4,,15
	.globl	s370_1535
	.type	s370_1535, @function
s370_1535:
.LFB612:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6689
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6689:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE612:
	.size	s370_1535, .-s370_1535
	.p2align 4,,15
	.globl	s370_1536
	.type	s370_1536, @function
s370_1536:
.LFB613:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6693
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6693:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE613:
	.size	s370_1536, .-s370_1536
	.p2align 4,,15
	.globl	s370_1537
	.type	s370_1537, @function
s370_1537:
.LFB614:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6697
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6697:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE614:
	.size	s370_1537, .-s370_1537
	.p2align 4,,15
	.globl	s370_1538
	.type	s370_1538, @function
s370_1538:
.LFB615:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6701
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6701:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE615:
	.size	s370_1538, .-s370_1538
	.p2align 4,,15
	.globl	s370_1539
	.type	s370_1539, @function
s370_1539:
.LFB616:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6705
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6705:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE616:
	.size	s370_1539, .-s370_1539
	.p2align 4,,15
	.globl	s370_153A
	.type	s370_153A, @function
s370_153A:
.LFB617:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6709
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6709:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE617:
	.size	s370_153A, .-s370_153A
	.p2align 4,,15
	.globl	s370_153B
	.type	s370_153B, @function
s370_153B:
.LFB618:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6713
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6713:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE618:
	.size	s370_153B, .-s370_153B
	.p2align 4,,15
	.globl	s370_153C
	.type	s370_153C, @function
s370_153C:
.LFB619:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6717
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6717:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE619:
	.size	s370_153C, .-s370_153C
	.p2align 4,,15
	.globl	s370_153D
	.type	s370_153D, @function
s370_153D:
.LFB620:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6721
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6721:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE620:
	.size	s370_153D, .-s370_153D
	.p2align 4,,15
	.globl	s370_153E
	.type	s370_153E, @function
s370_153E:
.LFB621:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6725
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6725:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE621:
	.size	s370_153E, .-s370_153E
	.p2align 4,,15
	.globl	s370_153F
	.type	s370_153F, @function
s370_153F:
.LFB622:
	.cfi_startproc
	movl	216(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6729
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6729:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE622:
	.size	s370_153F, .-s370_153F
	.p2align 4,,15
	.globl	s370_1540
	.type	s370_1540, @function
s370_1540:
.LFB623:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6733
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6733:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE623:
	.size	s370_1540, .-s370_1540
	.p2align 4,,15
	.globl	s370_1541
	.type	s370_1541, @function
s370_1541:
.LFB624:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6737
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6737:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE624:
	.size	s370_1541, .-s370_1541
	.p2align 4,,15
	.globl	s370_1542
	.type	s370_1542, @function
s370_1542:
.LFB625:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6741
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6741:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE625:
	.size	s370_1542, .-s370_1542
	.p2align 4,,15
	.globl	s370_1543
	.type	s370_1543, @function
s370_1543:
.LFB626:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6745
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6745:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE626:
	.size	s370_1543, .-s370_1543
	.p2align 4,,15
	.globl	s370_1544
	.type	s370_1544, @function
s370_1544:
.LFB627:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE627:
	.size	s370_1544, .-s370_1544
	.p2align 4,,15
	.globl	s370_1545
	.type	s370_1545, @function
s370_1545:
.LFB628:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6750
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6750:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE628:
	.size	s370_1545, .-s370_1545
	.p2align 4,,15
	.globl	s370_1546
	.type	s370_1546, @function
s370_1546:
.LFB629:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6754
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6754:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE629:
	.size	s370_1546, .-s370_1546
	.p2align 4,,15
	.globl	s370_1547
	.type	s370_1547, @function
s370_1547:
.LFB630:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6758
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6758:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE630:
	.size	s370_1547, .-s370_1547
	.p2align 4,,15
	.globl	s370_1548
	.type	s370_1548, @function
s370_1548:
.LFB631:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6762
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6762:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE631:
	.size	s370_1548, .-s370_1548
	.p2align 4,,15
	.globl	s370_1549
	.type	s370_1549, @function
s370_1549:
.LFB632:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6766
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6766:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE632:
	.size	s370_1549, .-s370_1549
	.p2align 4,,15
	.globl	s370_154A
	.type	s370_154A, @function
s370_154A:
.LFB633:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6770
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6770:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE633:
	.size	s370_154A, .-s370_154A
	.p2align 4,,15
	.globl	s370_154B
	.type	s370_154B, @function
s370_154B:
.LFB634:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6774
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6774:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE634:
	.size	s370_154B, .-s370_154B
	.p2align 4,,15
	.globl	s370_154C
	.type	s370_154C, @function
s370_154C:
.LFB635:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6778
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6778:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE635:
	.size	s370_154C, .-s370_154C
	.p2align 4,,15
	.globl	s370_154D
	.type	s370_154D, @function
s370_154D:
.LFB636:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6782
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6782:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE636:
	.size	s370_154D, .-s370_154D
	.p2align 4,,15
	.globl	s370_154E
	.type	s370_154E, @function
s370_154E:
.LFB637:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6786
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6786:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE637:
	.size	s370_154E, .-s370_154E
	.p2align 4,,15
	.globl	s370_154F
	.type	s370_154F, @function
s370_154F:
.LFB638:
	.cfi_startproc
	movl	224(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6790
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6790:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE638:
	.size	s370_154F, .-s370_154F
	.p2align 4,,15
	.globl	s370_1550
	.type	s370_1550, @function
s370_1550:
.LFB639:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6794
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6794:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE639:
	.size	s370_1550, .-s370_1550
	.p2align 4,,15
	.globl	s370_1551
	.type	s370_1551, @function
s370_1551:
.LFB640:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6798
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6798:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE640:
	.size	s370_1551, .-s370_1551
	.p2align 4,,15
	.globl	s370_1552
	.type	s370_1552, @function
s370_1552:
.LFB641:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6802
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6802:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE641:
	.size	s370_1552, .-s370_1552
	.p2align 4,,15
	.globl	s370_1553
	.type	s370_1553, @function
s370_1553:
.LFB642:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6806
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6806:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE642:
	.size	s370_1553, .-s370_1553
	.p2align 4,,15
	.globl	s370_1554
	.type	s370_1554, @function
s370_1554:
.LFB643:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6810
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6810:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE643:
	.size	s370_1554, .-s370_1554
	.p2align 4,,15
	.globl	s370_1555
	.type	s370_1555, @function
s370_1555:
.LFB644:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE644:
	.size	s370_1555, .-s370_1555
	.p2align 4,,15
	.globl	s370_1556
	.type	s370_1556, @function
s370_1556:
.LFB645:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6815
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6815:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE645:
	.size	s370_1556, .-s370_1556
	.p2align 4,,15
	.globl	s370_1557
	.type	s370_1557, @function
s370_1557:
.LFB646:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6819
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6819:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE646:
	.size	s370_1557, .-s370_1557
	.p2align 4,,15
	.globl	s370_1558
	.type	s370_1558, @function
s370_1558:
.LFB647:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6823
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6823:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE647:
	.size	s370_1558, .-s370_1558
	.p2align 4,,15
	.globl	s370_1559
	.type	s370_1559, @function
s370_1559:
.LFB648:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6827
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6827:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE648:
	.size	s370_1559, .-s370_1559
	.p2align 4,,15
	.globl	s370_155A
	.type	s370_155A, @function
s370_155A:
.LFB649:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6831
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6831:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE649:
	.size	s370_155A, .-s370_155A
	.p2align 4,,15
	.globl	s370_155B
	.type	s370_155B, @function
s370_155B:
.LFB650:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6835
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6835:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE650:
	.size	s370_155B, .-s370_155B
	.p2align 4,,15
	.globl	s370_155C
	.type	s370_155C, @function
s370_155C:
.LFB651:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6839
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6839:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE651:
	.size	s370_155C, .-s370_155C
	.p2align 4,,15
	.globl	s370_155D
	.type	s370_155D, @function
s370_155D:
.LFB652:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6843
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6843:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE652:
	.size	s370_155D, .-s370_155D
	.p2align 4,,15
	.globl	s370_155E
	.type	s370_155E, @function
s370_155E:
.LFB653:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6847
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6847:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE653:
	.size	s370_155E, .-s370_155E
	.p2align 4,,15
	.globl	s370_155F
	.type	s370_155F, @function
s370_155F:
.LFB654:
	.cfi_startproc
	movl	232(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6851
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6851:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE654:
	.size	s370_155F, .-s370_155F
	.p2align 4,,15
	.globl	s370_1560
	.type	s370_1560, @function
s370_1560:
.LFB655:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6855
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6855:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE655:
	.size	s370_1560, .-s370_1560
	.p2align 4,,15
	.globl	s370_1561
	.type	s370_1561, @function
s370_1561:
.LFB656:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6859
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6859:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE656:
	.size	s370_1561, .-s370_1561
	.p2align 4,,15
	.globl	s370_1562
	.type	s370_1562, @function
s370_1562:
.LFB657:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6863
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6863:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE657:
	.size	s370_1562, .-s370_1562
	.p2align 4,,15
	.globl	s370_1563
	.type	s370_1563, @function
s370_1563:
.LFB658:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6867
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6867:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE658:
	.size	s370_1563, .-s370_1563
	.p2align 4,,15
	.globl	s370_1564
	.type	s370_1564, @function
s370_1564:
.LFB659:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6871
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6871:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE659:
	.size	s370_1564, .-s370_1564
	.p2align 4,,15
	.globl	s370_1565
	.type	s370_1565, @function
s370_1565:
.LFB660:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6875
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6875:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE660:
	.size	s370_1565, .-s370_1565
	.p2align 4,,15
	.globl	s370_1566
	.type	s370_1566, @function
s370_1566:
.LFB661:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE661:
	.size	s370_1566, .-s370_1566
	.p2align 4,,15
	.globl	s370_1567
	.type	s370_1567, @function
s370_1567:
.LFB662:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6880
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6880:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE662:
	.size	s370_1567, .-s370_1567
	.p2align 4,,15
	.globl	s370_1568
	.type	s370_1568, @function
s370_1568:
.LFB663:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6884
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6884:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE663:
	.size	s370_1568, .-s370_1568
	.p2align 4,,15
	.globl	s370_1569
	.type	s370_1569, @function
s370_1569:
.LFB664:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6888
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6888:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE664:
	.size	s370_1569, .-s370_1569
	.p2align 4,,15
	.globl	s370_156A
	.type	s370_156A, @function
s370_156A:
.LFB665:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6892
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6892:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE665:
	.size	s370_156A, .-s370_156A
	.p2align 4,,15
	.globl	s370_156B
	.type	s370_156B, @function
s370_156B:
.LFB666:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6896
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6896:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE666:
	.size	s370_156B, .-s370_156B
	.p2align 4,,15
	.globl	s370_156C
	.type	s370_156C, @function
s370_156C:
.LFB667:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6900
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6900:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE667:
	.size	s370_156C, .-s370_156C
	.p2align 4,,15
	.globl	s370_156D
	.type	s370_156D, @function
s370_156D:
.LFB668:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6904
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6904:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE668:
	.size	s370_156D, .-s370_156D
	.p2align 4,,15
	.globl	s370_156E
	.type	s370_156E, @function
s370_156E:
.LFB669:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6908
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6908:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE669:
	.size	s370_156E, .-s370_156E
	.p2align 4,,15
	.globl	s370_156F
	.type	s370_156F, @function
s370_156F:
.LFB670:
	.cfi_startproc
	movl	240(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6912
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6912:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE670:
	.size	s370_156F, .-s370_156F
	.p2align 4,,15
	.globl	s370_1570
	.type	s370_1570, @function
s370_1570:
.LFB671:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6916
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6916:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE671:
	.size	s370_1570, .-s370_1570
	.p2align 4,,15
	.globl	s370_1571
	.type	s370_1571, @function
s370_1571:
.LFB672:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6920
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6920:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE672:
	.size	s370_1571, .-s370_1571
	.p2align 4,,15
	.globl	s370_1572
	.type	s370_1572, @function
s370_1572:
.LFB673:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6924
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6924:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE673:
	.size	s370_1572, .-s370_1572
	.p2align 4,,15
	.globl	s370_1573
	.type	s370_1573, @function
s370_1573:
.LFB674:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6928
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6928:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE674:
	.size	s370_1573, .-s370_1573
	.p2align 4,,15
	.globl	s370_1574
	.type	s370_1574, @function
s370_1574:
.LFB675:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6932
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6932:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE675:
	.size	s370_1574, .-s370_1574
	.p2align 4,,15
	.globl	s370_1575
	.type	s370_1575, @function
s370_1575:
.LFB676:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6936
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6936:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE676:
	.size	s370_1575, .-s370_1575
	.p2align 4,,15
	.globl	s370_1576
	.type	s370_1576, @function
s370_1576:
.LFB677:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6940
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6940:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE677:
	.size	s370_1576, .-s370_1576
	.p2align 4,,15
	.globl	s370_1577
	.type	s370_1577, @function
s370_1577:
.LFB678:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE678:
	.size	s370_1577, .-s370_1577
	.p2align 4,,15
	.globl	s370_1578
	.type	s370_1578, @function
s370_1578:
.LFB679:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6945
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6945:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE679:
	.size	s370_1578, .-s370_1578
	.p2align 4,,15
	.globl	s370_1579
	.type	s370_1579, @function
s370_1579:
.LFB680:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6949
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6949:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE680:
	.size	s370_1579, .-s370_1579
	.p2align 4,,15
	.globl	s370_157A
	.type	s370_157A, @function
s370_157A:
.LFB681:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6953
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6953:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE681:
	.size	s370_157A, .-s370_157A
	.p2align 4,,15
	.globl	s370_157B
	.type	s370_157B, @function
s370_157B:
.LFB682:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6957
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6957:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE682:
	.size	s370_157B, .-s370_157B
	.p2align 4,,15
	.globl	s370_157C
	.type	s370_157C, @function
s370_157C:
.LFB683:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6961
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6961:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE683:
	.size	s370_157C, .-s370_157C
	.p2align 4,,15
	.globl	s370_157D
	.type	s370_157D, @function
s370_157D:
.LFB684:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6965
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6965:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE684:
	.size	s370_157D, .-s370_157D
	.p2align 4,,15
	.globl	s370_157E
	.type	s370_157E, @function
s370_157E:
.LFB685:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6969
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6969:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE685:
	.size	s370_157E, .-s370_157E
	.p2align 4,,15
	.globl	s370_157F
	.type	s370_157F, @function
s370_157F:
.LFB686:
	.cfi_startproc
	movl	248(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6973
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6973:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE686:
	.size	s370_157F, .-s370_157F
	.p2align 4,,15
	.globl	s370_1580
	.type	s370_1580, @function
s370_1580:
.LFB687:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6977
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6977:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE687:
	.size	s370_1580, .-s370_1580
	.p2align 4,,15
	.globl	s370_1581
	.type	s370_1581, @function
s370_1581:
.LFB688:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6981
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6981:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE688:
	.size	s370_1581, .-s370_1581
	.p2align 4,,15
	.globl	s370_1582
	.type	s370_1582, @function
s370_1582:
.LFB689:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6985
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6985:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE689:
	.size	s370_1582, .-s370_1582
	.p2align 4,,15
	.globl	s370_1583
	.type	s370_1583, @function
s370_1583:
.LFB690:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6989
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6989:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE690:
	.size	s370_1583, .-s370_1583
	.p2align 4,,15
	.globl	s370_1584
	.type	s370_1584, @function
s370_1584:
.LFB691:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6993
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6993:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE691:
	.size	s370_1584, .-s370_1584
	.p2align 4,,15
	.globl	s370_1585
	.type	s370_1585, @function
s370_1585:
.LFB692:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L6997
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L6997:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE692:
	.size	s370_1585, .-s370_1585
	.p2align 4,,15
	.globl	s370_1586
	.type	s370_1586, @function
s370_1586:
.LFB693:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7001
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7001:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE693:
	.size	s370_1586, .-s370_1586
	.p2align 4,,15
	.globl	s370_1587
	.type	s370_1587, @function
s370_1587:
.LFB694:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7005
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7005:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE694:
	.size	s370_1587, .-s370_1587
	.p2align 4,,15
	.globl	s370_1588
	.type	s370_1588, @function
s370_1588:
.LFB695:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE695:
	.size	s370_1588, .-s370_1588
	.p2align 4,,15
	.globl	s370_1589
	.type	s370_1589, @function
s370_1589:
.LFB696:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7010
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7010:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE696:
	.size	s370_1589, .-s370_1589
	.p2align 4,,15
	.globl	s370_158A
	.type	s370_158A, @function
s370_158A:
.LFB697:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7014
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7014:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE697:
	.size	s370_158A, .-s370_158A
	.p2align 4,,15
	.globl	s370_158B
	.type	s370_158B, @function
s370_158B:
.LFB698:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7018
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7018:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE698:
	.size	s370_158B, .-s370_158B
	.p2align 4,,15
	.globl	s370_158C
	.type	s370_158C, @function
s370_158C:
.LFB699:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7022
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7022:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE699:
	.size	s370_158C, .-s370_158C
	.p2align 4,,15
	.globl	s370_158D
	.type	s370_158D, @function
s370_158D:
.LFB700:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7026
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7026:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE700:
	.size	s370_158D, .-s370_158D
	.p2align 4,,15
	.globl	s370_158E
	.type	s370_158E, @function
s370_158E:
.LFB701:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7030
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7030:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE701:
	.size	s370_158E, .-s370_158E
	.p2align 4,,15
	.globl	s370_158F
	.type	s370_158F, @function
s370_158F:
.LFB702:
	.cfi_startproc
	movl	256(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7034
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7034:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE702:
	.size	s370_158F, .-s370_158F
	.p2align 4,,15
	.globl	s370_1590
	.type	s370_1590, @function
s370_1590:
.LFB703:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7038
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7038:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE703:
	.size	s370_1590, .-s370_1590
	.p2align 4,,15
	.globl	s370_1591
	.type	s370_1591, @function
s370_1591:
.LFB704:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7042
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7042:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE704:
	.size	s370_1591, .-s370_1591
	.p2align 4,,15
	.globl	s370_1592
	.type	s370_1592, @function
s370_1592:
.LFB705:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7046
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7046:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE705:
	.size	s370_1592, .-s370_1592
	.p2align 4,,15
	.globl	s370_1593
	.type	s370_1593, @function
s370_1593:
.LFB706:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7050
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7050:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE706:
	.size	s370_1593, .-s370_1593
	.p2align 4,,15
	.globl	s370_1594
	.type	s370_1594, @function
s370_1594:
.LFB707:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7054
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7054:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE707:
	.size	s370_1594, .-s370_1594
	.p2align 4,,15
	.globl	s370_1595
	.type	s370_1595, @function
s370_1595:
.LFB708:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7058
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7058:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE708:
	.size	s370_1595, .-s370_1595
	.p2align 4,,15
	.globl	s370_1596
	.type	s370_1596, @function
s370_1596:
.LFB709:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7062
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7062:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE709:
	.size	s370_1596, .-s370_1596
	.p2align 4,,15
	.globl	s370_1597
	.type	s370_1597, @function
s370_1597:
.LFB710:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7066
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7066:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE710:
	.size	s370_1597, .-s370_1597
	.p2align 4,,15
	.globl	s370_1598
	.type	s370_1598, @function
s370_1598:
.LFB711:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7070
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7070:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE711:
	.size	s370_1598, .-s370_1598
	.p2align 4,,15
	.globl	s370_1599
	.type	s370_1599, @function
s370_1599:
.LFB712:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE712:
	.size	s370_1599, .-s370_1599
	.p2align 4,,15
	.globl	s370_159A
	.type	s370_159A, @function
s370_159A:
.LFB713:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7075
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7075:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE713:
	.size	s370_159A, .-s370_159A
	.p2align 4,,15
	.globl	s370_159B
	.type	s370_159B, @function
s370_159B:
.LFB714:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7079
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7079:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE714:
	.size	s370_159B, .-s370_159B
	.p2align 4,,15
	.globl	s370_159C
	.type	s370_159C, @function
s370_159C:
.LFB715:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7083
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7083:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE715:
	.size	s370_159C, .-s370_159C
	.p2align 4,,15
	.globl	s370_159D
	.type	s370_159D, @function
s370_159D:
.LFB716:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7087
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7087:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE716:
	.size	s370_159D, .-s370_159D
	.p2align 4,,15
	.globl	s370_159E
	.type	s370_159E, @function
s370_159E:
.LFB717:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7091
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7091:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE717:
	.size	s370_159E, .-s370_159E
	.p2align 4,,15
	.globl	s370_159F
	.type	s370_159F, @function
s370_159F:
.LFB718:
	.cfi_startproc
	movl	264(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7095
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7095:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE718:
	.size	s370_159F, .-s370_159F
	.p2align 4,,15
	.globl	s370_15A0
	.type	s370_15A0, @function
s370_15A0:
.LFB719:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7099
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7099:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE719:
	.size	s370_15A0, .-s370_15A0
	.p2align 4,,15
	.globl	s370_15A1
	.type	s370_15A1, @function
s370_15A1:
.LFB720:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7103
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7103:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE720:
	.size	s370_15A1, .-s370_15A1
	.p2align 4,,15
	.globl	s370_15A2
	.type	s370_15A2, @function
s370_15A2:
.LFB721:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7107
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7107:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE721:
	.size	s370_15A2, .-s370_15A2
	.p2align 4,,15
	.globl	s370_15A3
	.type	s370_15A3, @function
s370_15A3:
.LFB722:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7111
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7111:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE722:
	.size	s370_15A3, .-s370_15A3
	.p2align 4,,15
	.globl	s370_15A4
	.type	s370_15A4, @function
s370_15A4:
.LFB723:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7115
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7115:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE723:
	.size	s370_15A4, .-s370_15A4
	.p2align 4,,15
	.globl	s370_15A5
	.type	s370_15A5, @function
s370_15A5:
.LFB724:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7119
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7119:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE724:
	.size	s370_15A5, .-s370_15A5
	.p2align 4,,15
	.globl	s370_15A6
	.type	s370_15A6, @function
s370_15A6:
.LFB725:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7123
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7123:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE725:
	.size	s370_15A6, .-s370_15A6
	.p2align 4,,15
	.globl	s370_15A7
	.type	s370_15A7, @function
s370_15A7:
.LFB726:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7127
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7127:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE726:
	.size	s370_15A7, .-s370_15A7
	.p2align 4,,15
	.globl	s370_15A8
	.type	s370_15A8, @function
s370_15A8:
.LFB727:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7131
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7131:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE727:
	.size	s370_15A8, .-s370_15A8
	.p2align 4,,15
	.globl	s370_15A9
	.type	s370_15A9, @function
s370_15A9:
.LFB728:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7135
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7135:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE728:
	.size	s370_15A9, .-s370_15A9
	.p2align 4,,15
	.globl	s370_15AA
	.type	s370_15AA, @function
s370_15AA:
.LFB729:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE729:
	.size	s370_15AA, .-s370_15AA
	.p2align 4,,15
	.globl	s370_15AB
	.type	s370_15AB, @function
s370_15AB:
.LFB730:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7140
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7140:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE730:
	.size	s370_15AB, .-s370_15AB
	.p2align 4,,15
	.globl	s370_15AC
	.type	s370_15AC, @function
s370_15AC:
.LFB731:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7144
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7144:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE731:
	.size	s370_15AC, .-s370_15AC
	.p2align 4,,15
	.globl	s370_15AD
	.type	s370_15AD, @function
s370_15AD:
.LFB732:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7148
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7148:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE732:
	.size	s370_15AD, .-s370_15AD
	.p2align 4,,15
	.globl	s370_15AE
	.type	s370_15AE, @function
s370_15AE:
.LFB733:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7152
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7152:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE733:
	.size	s370_15AE, .-s370_15AE
	.p2align 4,,15
	.globl	s370_15AF
	.type	s370_15AF, @function
s370_15AF:
.LFB734:
	.cfi_startproc
	movl	272(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7156
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7156:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE734:
	.size	s370_15AF, .-s370_15AF
	.p2align 4,,15
	.globl	s370_15B0
	.type	s370_15B0, @function
s370_15B0:
.LFB735:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7160
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7160:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE735:
	.size	s370_15B0, .-s370_15B0
	.p2align 4,,15
	.globl	s370_15B1
	.type	s370_15B1, @function
s370_15B1:
.LFB736:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7164
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7164:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE736:
	.size	s370_15B1, .-s370_15B1
	.p2align 4,,15
	.globl	s370_15B2
	.type	s370_15B2, @function
s370_15B2:
.LFB737:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7168
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7168:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE737:
	.size	s370_15B2, .-s370_15B2
	.p2align 4,,15
	.globl	s370_15B3
	.type	s370_15B3, @function
s370_15B3:
.LFB738:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7172
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7172:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE738:
	.size	s370_15B3, .-s370_15B3
	.p2align 4,,15
	.globl	s370_15B4
	.type	s370_15B4, @function
s370_15B4:
.LFB739:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7176
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7176:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE739:
	.size	s370_15B4, .-s370_15B4
	.p2align 4,,15
	.globl	s370_15B5
	.type	s370_15B5, @function
s370_15B5:
.LFB740:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7180
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7180:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE740:
	.size	s370_15B5, .-s370_15B5
	.p2align 4,,15
	.globl	s370_15B6
	.type	s370_15B6, @function
s370_15B6:
.LFB741:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7184
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7184:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE741:
	.size	s370_15B6, .-s370_15B6
	.p2align 4,,15
	.globl	s370_15B7
	.type	s370_15B7, @function
s370_15B7:
.LFB742:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7188
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7188:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE742:
	.size	s370_15B7, .-s370_15B7
	.p2align 4,,15
	.globl	s370_15B8
	.type	s370_15B8, @function
s370_15B8:
.LFB743:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7192
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7192:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE743:
	.size	s370_15B8, .-s370_15B8
	.p2align 4,,15
	.globl	s370_15B9
	.type	s370_15B9, @function
s370_15B9:
.LFB744:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7196
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7196:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE744:
	.size	s370_15B9, .-s370_15B9
	.p2align 4,,15
	.globl	s370_15BA
	.type	s370_15BA, @function
s370_15BA:
.LFB745:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7200
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7200:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE745:
	.size	s370_15BA, .-s370_15BA
	.p2align 4,,15
	.globl	s370_15BB
	.type	s370_15BB, @function
s370_15BB:
.LFB746:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE746:
	.size	s370_15BB, .-s370_15BB
	.p2align 4,,15
	.globl	s370_15BC
	.type	s370_15BC, @function
s370_15BC:
.LFB747:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7205
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7205:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE747:
	.size	s370_15BC, .-s370_15BC
	.p2align 4,,15
	.globl	s370_15BD
	.type	s370_15BD, @function
s370_15BD:
.LFB748:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7209
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7209:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE748:
	.size	s370_15BD, .-s370_15BD
	.p2align 4,,15
	.globl	s370_15BE
	.type	s370_15BE, @function
s370_15BE:
.LFB749:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7213
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7213:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE749:
	.size	s370_15BE, .-s370_15BE
	.p2align 4,,15
	.globl	s370_15BF
	.type	s370_15BF, @function
s370_15BF:
.LFB750:
	.cfi_startproc
	movl	280(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7217
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7217:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE750:
	.size	s370_15BF, .-s370_15BF
	.p2align 4,,15
	.globl	s370_15C0
	.type	s370_15C0, @function
s370_15C0:
.LFB751:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7221
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7221:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE751:
	.size	s370_15C0, .-s370_15C0
	.p2align 4,,15
	.globl	s370_15C1
	.type	s370_15C1, @function
s370_15C1:
.LFB752:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7225
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7225:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE752:
	.size	s370_15C1, .-s370_15C1
	.p2align 4,,15
	.globl	s370_15C2
	.type	s370_15C2, @function
s370_15C2:
.LFB753:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7229
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7229:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE753:
	.size	s370_15C2, .-s370_15C2
	.p2align 4,,15
	.globl	s370_15C3
	.type	s370_15C3, @function
s370_15C3:
.LFB754:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7233
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7233:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE754:
	.size	s370_15C3, .-s370_15C3
	.p2align 4,,15
	.globl	s370_15C4
	.type	s370_15C4, @function
s370_15C4:
.LFB755:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7237
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7237:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE755:
	.size	s370_15C4, .-s370_15C4
	.p2align 4,,15
	.globl	s370_15C5
	.type	s370_15C5, @function
s370_15C5:
.LFB756:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7241
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7241:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE756:
	.size	s370_15C5, .-s370_15C5
	.p2align 4,,15
	.globl	s370_15C6
	.type	s370_15C6, @function
s370_15C6:
.LFB757:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7245
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7245:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE757:
	.size	s370_15C6, .-s370_15C6
	.p2align 4,,15
	.globl	s370_15C7
	.type	s370_15C7, @function
s370_15C7:
.LFB758:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7249
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7249:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE758:
	.size	s370_15C7, .-s370_15C7
	.p2align 4,,15
	.globl	s370_15C8
	.type	s370_15C8, @function
s370_15C8:
.LFB759:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7253
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7253:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE759:
	.size	s370_15C8, .-s370_15C8
	.p2align 4,,15
	.globl	s370_15C9
	.type	s370_15C9, @function
s370_15C9:
.LFB760:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7257
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7257:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE760:
	.size	s370_15C9, .-s370_15C9
	.p2align 4,,15
	.globl	s370_15CA
	.type	s370_15CA, @function
s370_15CA:
.LFB761:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7261
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7261:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE761:
	.size	s370_15CA, .-s370_15CA
	.p2align 4,,15
	.globl	s370_15CB
	.type	s370_15CB, @function
s370_15CB:
.LFB762:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7265
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7265:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE762:
	.size	s370_15CB, .-s370_15CB
	.p2align 4,,15
	.globl	s370_15CC
	.type	s370_15CC, @function
s370_15CC:
.LFB763:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE763:
	.size	s370_15CC, .-s370_15CC
	.p2align 4,,15
	.globl	s370_15CD
	.type	s370_15CD, @function
s370_15CD:
.LFB764:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7270
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7270:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE764:
	.size	s370_15CD, .-s370_15CD
	.p2align 4,,15
	.globl	s370_15CE
	.type	s370_15CE, @function
s370_15CE:
.LFB765:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7274
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7274:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE765:
	.size	s370_15CE, .-s370_15CE
	.p2align 4,,15
	.globl	s370_15CF
	.type	s370_15CF, @function
s370_15CF:
.LFB766:
	.cfi_startproc
	movl	288(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7278
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7278:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE766:
	.size	s370_15CF, .-s370_15CF
	.p2align 4,,15
	.globl	s370_15D0
	.type	s370_15D0, @function
s370_15D0:
.LFB767:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7282
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7282:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE767:
	.size	s370_15D0, .-s370_15D0
	.p2align 4,,15
	.globl	s370_15D1
	.type	s370_15D1, @function
s370_15D1:
.LFB768:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7286
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7286:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE768:
	.size	s370_15D1, .-s370_15D1
	.p2align 4,,15
	.globl	s370_15D2
	.type	s370_15D2, @function
s370_15D2:
.LFB769:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7290
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7290:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE769:
	.size	s370_15D2, .-s370_15D2
	.p2align 4,,15
	.globl	s370_15D3
	.type	s370_15D3, @function
s370_15D3:
.LFB770:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7294
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7294:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE770:
	.size	s370_15D3, .-s370_15D3
	.p2align 4,,15
	.globl	s370_15D4
	.type	s370_15D4, @function
s370_15D4:
.LFB771:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7298
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7298:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE771:
	.size	s370_15D4, .-s370_15D4
	.p2align 4,,15
	.globl	s370_15D5
	.type	s370_15D5, @function
s370_15D5:
.LFB772:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7302
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7302:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE772:
	.size	s370_15D5, .-s370_15D5
	.p2align 4,,15
	.globl	s370_15D6
	.type	s370_15D6, @function
s370_15D6:
.LFB773:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7306
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7306:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE773:
	.size	s370_15D6, .-s370_15D6
	.p2align 4,,15
	.globl	s370_15D7
	.type	s370_15D7, @function
s370_15D7:
.LFB774:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7310
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7310:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE774:
	.size	s370_15D7, .-s370_15D7
	.p2align 4,,15
	.globl	s370_15D8
	.type	s370_15D8, @function
s370_15D8:
.LFB775:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7314
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7314:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE775:
	.size	s370_15D8, .-s370_15D8
	.p2align 4,,15
	.globl	s370_15D9
	.type	s370_15D9, @function
s370_15D9:
.LFB776:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7318
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7318:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE776:
	.size	s370_15D9, .-s370_15D9
	.p2align 4,,15
	.globl	s370_15DA
	.type	s370_15DA, @function
s370_15DA:
.LFB777:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7322
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7322:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE777:
	.size	s370_15DA, .-s370_15DA
	.p2align 4,,15
	.globl	s370_15DB
	.type	s370_15DB, @function
s370_15DB:
.LFB778:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7326
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7326:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE778:
	.size	s370_15DB, .-s370_15DB
	.p2align 4,,15
	.globl	s370_15DC
	.type	s370_15DC, @function
s370_15DC:
.LFB779:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7330
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7330:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE779:
	.size	s370_15DC, .-s370_15DC
	.p2align 4,,15
	.globl	s370_15DD
	.type	s370_15DD, @function
s370_15DD:
.LFB780:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE780:
	.size	s370_15DD, .-s370_15DD
	.p2align 4,,15
	.globl	s370_15DE
	.type	s370_15DE, @function
s370_15DE:
.LFB781:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7335
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7335:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE781:
	.size	s370_15DE, .-s370_15DE
	.p2align 4,,15
	.globl	s370_15DF
	.type	s370_15DF, @function
s370_15DF:
.LFB782:
	.cfi_startproc
	movl	296(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7339
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7339:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE782:
	.size	s370_15DF, .-s370_15DF
	.p2align 4,,15
	.globl	s370_15E0
	.type	s370_15E0, @function
s370_15E0:
.LFB783:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7343
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7343:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE783:
	.size	s370_15E0, .-s370_15E0
	.p2align 4,,15
	.globl	s370_15E1
	.type	s370_15E1, @function
s370_15E1:
.LFB784:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7347
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7347:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE784:
	.size	s370_15E1, .-s370_15E1
	.p2align 4,,15
	.globl	s370_15E2
	.type	s370_15E2, @function
s370_15E2:
.LFB785:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7351
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7351:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE785:
	.size	s370_15E2, .-s370_15E2
	.p2align 4,,15
	.globl	s370_15E3
	.type	s370_15E3, @function
s370_15E3:
.LFB786:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7355
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7355:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE786:
	.size	s370_15E3, .-s370_15E3
	.p2align 4,,15
	.globl	s370_15E4
	.type	s370_15E4, @function
s370_15E4:
.LFB787:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7359
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7359:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE787:
	.size	s370_15E4, .-s370_15E4
	.p2align 4,,15
	.globl	s370_15E5
	.type	s370_15E5, @function
s370_15E5:
.LFB788:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7363
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7363:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE788:
	.size	s370_15E5, .-s370_15E5
	.p2align 4,,15
	.globl	s370_15E6
	.type	s370_15E6, @function
s370_15E6:
.LFB789:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7367
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7367:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE789:
	.size	s370_15E6, .-s370_15E6
	.p2align 4,,15
	.globl	s370_15E7
	.type	s370_15E7, @function
s370_15E7:
.LFB790:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7371
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7371:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE790:
	.size	s370_15E7, .-s370_15E7
	.p2align 4,,15
	.globl	s370_15E8
	.type	s370_15E8, @function
s370_15E8:
.LFB791:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7375
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7375:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE791:
	.size	s370_15E8, .-s370_15E8
	.p2align 4,,15
	.globl	s370_15E9
	.type	s370_15E9, @function
s370_15E9:
.LFB792:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7379
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7379:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE792:
	.size	s370_15E9, .-s370_15E9
	.p2align 4,,15
	.globl	s370_15EA
	.type	s370_15EA, @function
s370_15EA:
.LFB793:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7383
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7383:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE793:
	.size	s370_15EA, .-s370_15EA
	.p2align 4,,15
	.globl	s370_15EB
	.type	s370_15EB, @function
s370_15EB:
.LFB794:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7387
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7387:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE794:
	.size	s370_15EB, .-s370_15EB
	.p2align 4,,15
	.globl	s370_15EC
	.type	s370_15EC, @function
s370_15EC:
.LFB795:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7391
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7391:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE795:
	.size	s370_15EC, .-s370_15EC
	.p2align 4,,15
	.globl	s370_15ED
	.type	s370_15ED, @function
s370_15ED:
.LFB796:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7395
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7395:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE796:
	.size	s370_15ED, .-s370_15ED
	.p2align 4,,15
	.globl	s370_15EE
	.type	s370_15EE, @function
s370_15EE:
.LFB797:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE797:
	.size	s370_15EE, .-s370_15EE
	.p2align 4,,15
	.globl	s370_15EF
	.type	s370_15EF, @function
s370_15EF:
.LFB798:
	.cfi_startproc
	movl	304(%rsi), %edx
	movl	$1, %eax
	movl	312(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7400
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7400:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE798:
	.size	s370_15EF, .-s370_15EF
	.p2align 4,,15
	.globl	s370_15F0
	.type	s370_15F0, @function
s370_15F0:
.LFB799:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	192(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7404
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7404:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE799:
	.size	s370_15F0, .-s370_15F0
	.p2align 4,,15
	.globl	s370_15F1
	.type	s370_15F1, @function
s370_15F1:
.LFB800:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	200(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7408
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7408:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE800:
	.size	s370_15F1, .-s370_15F1
	.p2align 4,,15
	.globl	s370_15F2
	.type	s370_15F2, @function
s370_15F2:
.LFB801:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	208(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7412
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7412:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE801:
	.size	s370_15F2, .-s370_15F2
	.p2align 4,,15
	.globl	s370_15F3
	.type	s370_15F3, @function
s370_15F3:
.LFB802:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	216(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7416
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7416:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE802:
	.size	s370_15F3, .-s370_15F3
	.p2align 4,,15
	.globl	s370_15F4
	.type	s370_15F4, @function
s370_15F4:
.LFB803:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	224(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7420
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7420:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE803:
	.size	s370_15F4, .-s370_15F4
	.p2align 4,,15
	.globl	s370_15F5
	.type	s370_15F5, @function
s370_15F5:
.LFB804:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	232(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7424
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7424:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE804:
	.size	s370_15F5, .-s370_15F5
	.p2align 4,,15
	.globl	s370_15F6
	.type	s370_15F6, @function
s370_15F6:
.LFB805:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	240(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7428
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7428:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE805:
	.size	s370_15F6, .-s370_15F6
	.p2align 4,,15
	.globl	s370_15F7
	.type	s370_15F7, @function
s370_15F7:
.LFB806:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	248(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7432
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7432:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE806:
	.size	s370_15F7, .-s370_15F7
	.p2align 4,,15
	.globl	s370_15F8
	.type	s370_15F8, @function
s370_15F8:
.LFB807:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	256(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7436
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7436:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE807:
	.size	s370_15F8, .-s370_15F8
	.p2align 4,,15
	.globl	s370_15F9
	.type	s370_15F9, @function
s370_15F9:
.LFB808:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	264(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7440
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7440:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE808:
	.size	s370_15F9, .-s370_15F9
	.p2align 4,,15
	.globl	s370_15FA
	.type	s370_15FA, @function
s370_15FA:
.LFB809:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	272(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7444
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7444:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE809:
	.size	s370_15FA, .-s370_15FA
	.p2align 4,,15
	.globl	s370_15FB
	.type	s370_15FB, @function
s370_15FB:
.LFB810:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	280(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7448
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7448:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE810:
	.size	s370_15FB, .-s370_15FB
	.p2align 4,,15
	.globl	s370_15FC
	.type	s370_15FC, @function
s370_15FC:
.LFB811:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	288(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7452
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7452:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE811:
	.size	s370_15FC, .-s370_15FC
	.p2align 4,,15
	.globl	s370_15FD
	.type	s370_15FD, @function
s370_15FD:
.LFB812:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	296(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7456
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7456:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE812:
	.size	s370_15FD, .-s370_15FD
	.p2align 4,,15
	.globl	s370_15FE
	.type	s370_15FE, @function
s370_15FE:
.LFB813:
	.cfi_startproc
	movl	312(%rsi), %edx
	movl	$1, %eax
	movl	304(%rsi), %ecx
	addq	$2, 136(%rsi)
	cmpl	%ecx, %edx
	jb	.L7460
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	andl	$2, %eax
.L7460:
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE813:
	.size	s370_15FE, .-s370_15FE
	.p2align 4,,15
	.globl	s370_15FF
	.type	s370_15FF, @function
s370_15FF:
.LFB814:
	.cfi_startproc
	addq	$2, 136(%rsi)
	movb	$0, 100(%rsi)
	ret
	.cfi_endproc
.LFE814:
	.size	s370_15FF, .-s370_15FF
	.p2align 4,,15
	.globl	s370_compare_logical_immediate
	.type	s370_compare_logical_immediate, @function
s370_compare_logical_immediate:
.LFB815:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %eax
	movl	%ebp, %r12d
	shrl	$12, %eax
	shrl	$16, %r12d
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L7465
	cltq
	addl	192(%rsi,%rax,8), %ebp
	andl	$16777215, %ebp
.L7465:
	leal	-80(%rbp), %eax
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	cmpl	$3, %eax
	jbe	.L7490
.L7466:
	leal	5(%r13), %eax
	cltq
	movl	1892(%rbx,%rax,4), %edx
	testl	%edx, %edx
	je	.L7467
	leal	1(%rdx), %eax
	movl	%ebp, %ecx
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L7491
.L7468:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L7492
.L7469:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7467
	testb	$4, 46264(%rbx,%rcx)
	je	.L7467
	xorq	26808(%rdx), %rbp
.L7470:
	cmpb	0(%rbp), %r12b
	movl	$1, %eax
	ja	.L7471
	sbbl	%eax, %eax
	andl	$2, %eax
.L7471:
	movb	%al, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L7491:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7468
.L7467:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	call	s370_logical_to_main_l
	movq	%rax, %rbp
	jmp	.L7470
.L7492:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7469
	jmp	.L7467
.L7490:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L7466
	.cfi_endproc
.LFE815:
	.size	s370_compare_logical_immediate, .-s370_compare_logical_immediate
	.p2align 4,,15
	.globl	s370_compare_logical_character
	.type	s370_compare_logical_character, @function
s370_compare_logical_character:
.LFB816:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	2(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	movl	%eax, %r15d
	shrl	$16, %ebp
	shrl	$28, %r15d
	andl	$4095, %ebp
	testl	%r15d, %r15d
	je	.L7494
	movslq	%r15d, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	andl	$16777215, %ebp
.L7494:
	movl	%eax, %r12d
	shrl	$12, %eax
	andl	$4095, %r12d
	andl	$15, %eax
	movl	%eax, 16(%rsp)
	je	.L7495
	cltq
	addl	192(%rbx,%rax,8), %r12d
	andl	$16777215, %r12d
.L7495:
	movzbl	1(%rdi), %eax
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	cmpl	$83, %ebp
	movl	%eax, 12(%rsp)
	jbe	.L7682
.L7497:
	cmpl	$83, %r12d
	jbe	.L7683
.L7499:
	leal	5(%r15), %eax
	cltq
	leaq	(%rbx,%rax,4), %r10
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L7500
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L7684
.L7501:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L7685
.L7502:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7500
	testb	$4, 46264(%rbx,%rcx)
	je	.L7500
	movl	%ebp, %r13d
	movzbl	%sil, %r8d
	xorq	26808(%rdx), %r13
.L7503:
	movl	16(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%rbx,%rax,4), %r11
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7504
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L7686
.L7505:
	testb	%r8b, %r8b
	jne	.L7687
.L7506:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7504
	testb	$4, 46264(%rbx,%rcx)
	je	.L7504
	movl	%r12d, %r14d
	xorq	26808(%rdx), %r14
.L7507:
	movl	$2047, %eax
	movl	%ebp, %edx
	subl	12(%rsp), %eax
	andl	$2047, %edx
	cmpl	%eax, %edx
	ja	.L7508
	movl	%r12d, %edx
	andl	$2047, %edx
	cmpl	%edx, %eax
	jb	.L7509
	movl	12(%rsp), %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	addl	$1, %edx
	call	memcmp
.L7510:
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	.L7550
.L7547:
	movb	%dl, 100(%rbx)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7508:
	.cfi_restore_state
	movl	$2048, %ecx
	movl	%ecx, %edi
	subl	%edx, %edi
	movl	%r12d, %edx
	andl	$2047, %edx
	movl	%edi, 24(%rsp)
	cmpl	%edx, %eax
	jb	.L7516
	movl	%edi, %r12d
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r10, 16(%rsp)
	call	memcmp
	movq	16(%rsp), %r10
	testl	%eax, %eax
	jne	.L7550
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L7688
	addl	24(%rsp), %ebp
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%ebp, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L7689
.L7518:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L7690
.L7519:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7517
	testb	$4, 46264(%rbx,%rcx)
	je	.L7517
	xorq	26808(%rax), %rdi
.L7520:
	movl	12(%rsp), %edx
	leaq	(%r14,%r12), %rsi
	addl	$1, %edx
	subl	24(%rsp), %edx
	call	memcmp
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L7547
	.p2align 4,,10
	.p2align 3
.L7550:
	sarl	$31, %eax
	leal	2(%rax), %edx
	jmp	.L7547
	.p2align 4,,10
	.p2align 3
.L7516:
	subl	%edx, %ecx
	cmpl	%ecx, 24(%rsp)
	movl	%ecx, 32(%rsp)
	je	.L7691
	movq	%r10, 56(%rsp)
	movq	%r11, 48(%rsp)
	jae	.L7530
	movl	24(%rsp), %eax
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%rax, 40(%rsp)
	call	memcmp
	movq	48(%rsp), %r11
	testl	%eax, %eax
	movq	56(%rsp), %r10
	jne	.L7550
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L7692
	addl	24(%rsp), %ebp
	addl	$1, %eax
	cltq
	movl	%ebp, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L7693
.L7532:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L7694
.L7533:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7531
	testb	$4, 46264(%rbx,%rcx)
	je	.L7531
	movl	%esi, %ebp
	xorq	26808(%rdx), %rbp
.L7534:
	movl	32(%rsp), %edx
	movq	%rbp, %rdi
	movq	%r11, 48(%rsp)
	movq	40(%rsp), %rax
	subl	24(%rsp), %edx
	leaq	(%r14,%rax), %rsi
	call	memcmp
	testl	%eax, %eax
	jne	.L7550
	movq	48(%rsp), %r11
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7695
	addl	32(%rsp), %r12d
	addl	$1, %eax
	cltq
	movl	%r12d, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L7696
.L7536:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L7697
.L7537:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7535
	testb	$4, 46264(%rbx,%rcx)
	je	.L7535
	xorq	26808(%rdx), %rsi
.L7538:
	movl	32(%rsp), %eax
	movl	12(%rsp), %edx
	movl	%eax, %edi
	subq	40(%rsp), %rdi
	addl	$1, %edx
	subl	%eax, %edx
	addq	%rbp, %rdi
	call	memcmp
	jmp	.L7510
	.p2align 4,,10
	.p2align 3
.L7509:
	movl	$2048, %ebp
	movq	%r14, %rsi
	movq	%r13, %rdi
	subl	%edx, %ebp
	movq	%r11, 24(%rsp)
	movl	%ebp, %r15d
	movq	%r15, %rdx
	call	memcmp
	movq	24(%rsp), %r11
	testl	%eax, %eax
	jne	.L7550
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7698
	leal	1(%rax), %edx
	addl	%ebp, %r12d
	movl	%r12d, %esi
	movslq	%edx, %rdx
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L7699
.L7513:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L7700
.L7514:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7512
	testb	$4, 46264(%rbx,%rcx)
	je	.L7512
	xorq	26808(%rax), %rsi
.L7515:
	movl	12(%rsp), %edx
	leaq	0(%r13,%r15), %rdi
	addl	$1, %edx
	subl	%ebp, %edx
	call	memcmp
	jmp	.L7510
	.p2align 4,,10
	.p2align 3
.L7691:
	movl	24(%rsp), %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r10, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	memcmp
	movq	32(%rsp), %r11
	testl	%eax, %eax
	movq	40(%rsp), %r10
	jne	.L7550
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L7701
	addl	24(%rsp), %ebp
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%ebp, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L7702
.L7523:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L7703
.L7524:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7522
	testb	$4, 46264(%rbx,%rcx)
	je	.L7522
	movl	%edi, %ebp
	movzbl	%sil, %r8d
	xorq	26808(%rax), %rbp
.L7525:
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7704
	addl	24(%rsp), %r12d
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%r12d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L7705
.L7527:
	testb	%r8b, %r8b
	jne	.L7706
.L7528:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7526
	testb	$4, 46264(%rbx,%rcx)
	je	.L7526
	movl	%edi, %esi
	xorq	26808(%rax), %rsi
.L7529:
	movl	12(%rsp), %edx
	movq	%rbp, %rdi
	addl	$1, %edx
	subl	24(%rsp), %edx
	call	memcmp
	jmp	.L7510
	.p2align 4,,10
	.p2align 3
.L7530:
	movl	32(%rsp), %eax
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%rax, 40(%rsp)
	call	memcmp
	movq	48(%rsp), %r11
	testl	%eax, %eax
	movq	56(%rsp), %r10
	jne	.L7550
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7707
	addl	32(%rsp), %r12d
	addl	$1, %eax
	cltq
	movl	%r12d, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L7708
.L7540:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L7709
.L7541:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7539
	testb	$4, 46264(%rbx,%rcx)
	je	.L7539
	movl	%esi, %r12d
	xorq	26808(%rdx), %r12
.L7542:
	movl	24(%rsp), %edx
	movq	%r12, %rsi
	movq	%r10, 16(%rsp)
	movq	40(%rsp), %rax
	subl	32(%rsp), %edx
	leaq	0(%r13,%rax), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L7550
	movq	16(%rsp), %r10
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L7710
	addl	24(%rsp), %ebp
	addl	$1, %eax
	cltq
	movl	%ebp, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L7711
.L7544:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L7712
.L7545:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7543
	testb	$4, 46264(%rbx,%rcx)
	je	.L7543
	xorq	26808(%rdx), %rdi
.L7546:
	movl	24(%rsp), %eax
	movl	12(%rsp), %edx
	movl	%eax, %esi
	subq	40(%rsp), %rsi
	addl	$1, %edx
	subl	%eax, %edx
	addq	%r12, %rsi
	call	memcmp
	jmp	.L7510
.L7686:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7505
.L7504:
	movl	16(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movq	%r10, 32(%rsp)
	movq	%r11, 24(%rsp)
	call	s370_logical_to_main_l
	movq	32(%rsp), %r10
	movq	%rax, %r14
	movq	24(%rsp), %r11
	jmp	.L7507
.L7684:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L7501
.L7500:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%ebp, %edi
	movq	%r10, 24(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r13
	movq	24(%rsp), %r10
	jmp	.L7503
.L7683:
	movl	12(%rsp), %eax
	addl	%r12d, %eax
	cmpl	$79, %eax
	jbe	.L7499
	movq	%rbx, %rdi
	call	s370_store_int_timer
	jmp	.L7499
.L7682:
	movl	12(%rsp), %eax
	addl	%ebp, %eax
	cmpl	$79, %eax
	jbe	.L7497
	movq	%rbx, %rdi
	call	s370_store_int_timer
	jmp	.L7497
.L7687:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L7506
	.p2align 4,,3
	jmp	.L7504
.L7685:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L7502
	.p2align 4,,3
	jmp	.L7500
.L7698:
	addl	%ebp, %r12d
.L7512:
	movl	16(%rsp), %esi
	movl	%r12d, %edi
	movl	$1, %r9d
	movzbl	97(%rbx), %r8d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L7515
.L7688:
	movl	24(%rsp), %eax
	addl	%eax, %ebp
.L7517:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	call	s370_logical_to_main_l
	movq	%rax, %rdi
	jmp	.L7520
.L7695:
	movl	32(%rsp), %eax
	addl	%eax, %r12d
.L7535:
	movl	16(%rsp), %esi
	movl	%r12d, %edi
	movl	$1, %r9d
	movzbl	97(%rbx), %r8d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L7538
.L7692:
	movl	24(%rsp), %eax
	addl	%eax, %ebp
.L7531:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movq	%r11, 48(%rsp)
	call	s370_logical_to_main_l
	movq	48(%rsp), %r11
	movq	%rax, %rbp
	jmp	.L7534
.L7710:
	movl	24(%rsp), %eax
	addl	%eax, %ebp
.L7543:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	call	s370_logical_to_main_l
	movq	%rax, %rdi
	jmp	.L7546
.L7707:
	movl	32(%rsp), %eax
	addl	%eax, %r12d
.L7539:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	16(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movq	%r10, 48(%rsp)
	call	s370_logical_to_main_l
	movq	48(%rsp), %r10
	movq	%rax, %r12
	jmp	.L7542
.L7697:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7537
	jmp	.L7535
.L7694:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7533
	.p2align 4,,4
	jmp	.L7531
.L7693:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7532
	jmp	.L7531
.L7700:
	cmpb	43192(%rbx,%rcx), %dl
	je	.L7514
	.p2align 4,,4
	jmp	.L7512
.L7699:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rdx)
	jne	.L7513
	jmp	.L7512
.L7690:
	cmpb	43192(%rbx,%rcx), %dl
	je	.L7519
	.p2align 4,,4
	jmp	.L7517
.L7689:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L7518
	jmp	.L7517
.L7712:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7545
	.p2align 4,,4
	jmp	.L7543
.L7709:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7541
	.p2align 4,,4
	jmp	.L7539
.L7708:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7540
	jmp	.L7539
.L7696:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7536
	jmp	.L7535
.L7711:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L7544
	jmp	.L7543
.L7704:
	movl	24(%rsp), %eax
	addl	%eax, %r12d
.L7526:
	movl	16(%rsp), %esi
	movl	%r12d, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L7529
.L7706:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L7528
	jmp	.L7526
.L7705:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L7527
	jmp	.L7526
.L7701:
	movl	24(%rsp), %eax
	addl	%eax, %ebp
.L7522:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movq	%r11, 32(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %rbp
	movq	32(%rsp), %r11
	jmp	.L7525
.L7703:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L7524
	jmp	.L7522
.L7702:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L7523
	jmp	.L7522
	.cfi_endproc
.LFE816:
	.size	s370_compare_logical_character, .-s370_compare_logical_character
	.p2align 4,,15
	.globl	s370_D500
	.type	s370_D500, @function
s370_D500:
.LFB817:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	shrl	$12, %eax
	andl	$4095, %r12d
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L7714
	movslq	%eax, %rdx
	addl	192(%rsi,%rdx,8), %r12d
	andl	$16777215, %r12d
.L7714:
	movzbl	4(%rdi), %r13d
	movzbl	5(%rdi), %edx
	movl	%r13d, %ebp
	shrb	$4, %r13b
	andl	$15, %ebp
	movzbl	%r13b, %r13d
	sall	$8, %ebp
	orl	%edx, %ebp
	testl	%r13d, %r13d
	je	.L7715
	movslq	%r13d, %rdx
	addl	192(%rbx,%rdx,8), %ebp
	andl	$16777215, %ebp
.L7715:
	leal	-80(%r12), %edx
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	cmpl	$3, %edx
	jbe	.L7761
.L7716:
	leal	-80(%rbp), %edx
	cmpl	$3, %edx
	jbe	.L7762
.L7717:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L7718
	movl	%r12d, %edi
	addl	$1, %edx
	shrl	$11, %edi
	movslq	%edx, %rdx
	andl	$1023, %edi
	leaq	(%rbx,%rdi,8), %rcx
	movl	2232(%rcx), %eax
	cmpl	%eax, 320(%rbx,%rdx,8)
	jne	.L7763
.L7719:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L7764
.L7720:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L7718
	testb	$4, 46264(%rbx,%rdi)
	je	.L7718
	xorq	26808(%rcx), %r12
	movzbl	%sil, %r8d
.L7721:
	leal	5(%r13), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L7722
	leal	1(%rax), %edx
	movl	%ebp, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L7765
.L7723:
	testb	%r8b, %r8b
	jne	.L7766
.L7724:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7722
	testb	$4, 46264(%rbx,%rcx)
	je	.L7722
	xorq	26808(%rax), %rbp
.L7725:
	movzbl	(%r12), %edx
	xorl	%ecx, %ecx
	movzbl	0(%rbp), %eax
	subl	%eax, %edx
	je	.L7726
	sarl	$31, %edx
	leal	2(%rdx), %ecx
.L7726:
	movb	%cl, 100(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L7763:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdi), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L7719
.L7718:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r12
	jmp	.L7721
.L7765:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rdx)
	jne	.L7723
.L7722:
	movl	%ebp, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	call	s370_logical_to_main_l
	movq	%rax, %rbp
	jmp	.L7725
.L7764:
	cmpb	43192(%rbx,%rdi), %sil
	je	.L7720
	jmp	.L7718
.L7766:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L7724
	.p2align 4,,3
	jmp	.L7722
.L7761:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L7716
.L7762:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L7717
	.cfi_endproc
.LFE817:
	.size	s370_D500, .-s370_D500
	.p2align 4,,15
	.globl	s370_D501
	.type	s370_D501, @function
s370_D501:
.LFB818:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	shrl	$12, %eax
	andl	$4095, %r12d
	andl	$15, %eax
	movl	%eax, 12(%rsp)
	je	.L7768
	cltq
	addl	192(%rsi,%rax,8), %r12d
	andl	$16777215, %r12d
.L7768:
	movzbl	4(%rdi), %r15d
	movzbl	5(%rdi), %eax
	movl	%r15d, %ebp
	shrb	$4, %r15b
	andl	$15, %ebp
	movzbl	%r15b, %r15d
	sall	$8, %ebp
	orl	%eax, %ebp
	testl	%r15d, %r15d
	je	.L7769
	movslq	%r15d, %rax
	addl	192(%rbx,%rax,8), %ebp
	andl	$16777215, %ebp
.L7769:
	leal	-79(%r12), %eax
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	cmpl	$4, %eax
	jbe	.L7889
.L7770:
	leal	-79(%rbp), %eax
	cmpl	$4, %eax
	jbe	.L7890
.L7771:
	movl	12(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%rbx,%rax,4), %r11
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7772
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L7891
.L7773:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L7892
.L7774:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7772
	testb	$4, 46264(%rbx,%rcx)
	je	.L7772
	movl	%r12d, %r14d
	movzbl	%sil, %r8d
	xorq	26808(%rdx), %r14
.L7775:
	leal	5(%r15), %eax
	cltq
	leaq	(%rbx,%rax,4), %r10
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L7776
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L7893
.L7777:
	testb	%r8b, %r8b
	jne	.L7894
.L7778:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7776
	testb	$4, 46264(%rbx,%rcx)
	je	.L7776
	movl	%ebp, %r13d
	xorq	26808(%rdx), %r13
.L7779:
	movl	%r12d, %eax
	andl	$2047, %eax
	cmpl	$2047, %eax
	movl	%ebp, %eax
	je	.L7780
	andl	$2047, %eax
	cmpl	$2047, %eax
	je	.L7781
	movzwl	(%r14), %edx
	movzwl	0(%r13), %eax
#APP
# 2762 "general1.c" 1
	rorw $8, %dx
# 0 "" 2
# 2763 "general1.c" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
	cmpw	%ax, %dx
	je	.L7805
	sbbl	%eax, %eax
	addl	$2, %eax
.L7803:
	movb	%al, 100(%rbx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7780:
	.cfi_restore_state
	andl	$2047, %eax
	movzbl	(%r14), %edx
	cmpl	$2047, %eax
	movzbl	0(%r13), %eax
	je	.L7790
	subl	%eax, %edx
	jne	.L7804
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7895
	addl	$1, %r12d
	addl	$1, %eax
	movl	%r12d, %edi
	cltq
	andl	$16777215, %edi
	movl	%edi, %esi
	shrl	$11, %esi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %ecx
	cmpl	%ecx, 320(%rbx,%rax,8)
	jne	.L7896
.L7792:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L7897
.L7793:
	movl	%r12d, %ecx
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L7791
	testb	$4, 46264(%rbx,%rsi)
	je	.L7791
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L7794:
	movzbl	(%rax), %edx
	movzbl	1(%r13), %eax
	subl	%eax, %edx
	jmp	.L7789
	.p2align 4,,10
	.p2align 3
.L7790:
	subl	%eax, %edx
	jne	.L7804
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7898
	leal	1(%rax), %edx
	addl	$1, %r12d
	movl	%r12d, %edi
	movslq	%edx, %rdx
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L7899
.L7796:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L7900
.L7797:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7795
	testb	$4, 46264(%rbx,%rcx)
	je	.L7795
	movl	%edi, %r12d
	movzbl	%sil, %r8d
	xorq	26808(%rax), %r12
.L7798:
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L7901
	leal	1(%rax), %ecx
	addl	$1, %ebp
	movl	%ebp, %eax
	movslq	%ecx, %rcx
	andl	$16777215, %eax
	movl	%eax, %esi
	shrl	$11, %esi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L7902
.L7800:
	testb	%r8b, %r8b
	jne	.L7903
.L7801:
	movl	%ebp, %ecx
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L7799
	testb	$4, 46264(%rbx,%rsi)
	je	.L7799
	xorq	26808(%rdx), %rax
.L7802:
	movzbl	(%r12), %edx
	movzbl	(%rax), %eax
	subl	%eax, %edx
	jmp	.L7789
	.p2align 4,,10
	.p2align 3
.L7781:
	movzbl	(%r14), %edx
	movzbl	0(%r13), %eax
	subl	%eax, %edx
	jne	.L7804
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L7904
	addl	$1, %ebp
	addl	$1, %eax
	movl	%ebp, %edi
	cltq
	andl	$16777215, %edi
	movl	%edi, %esi
	shrl	$11, %esi
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %ecx
	cmpl	%ecx, 320(%rbx,%rax,8)
	jne	.L7905
.L7786:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L7906
.L7787:
	movl	%ebp, %ecx
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L7785
	testb	$4, 46264(%rbx,%rsi)
	je	.L7785
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L7788:
	movzbl	1(%r14), %edx
	movzbl	(%rax), %eax
	subl	%eax, %edx
.L7789:
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L7803
	.p2align 4,,10
	.p2align 3
.L7804:
	sarl	$31, %edx
	leal	2(%rdx), %eax
	jmp	.L7803
	.p2align 4,,10
	.p2align 3
.L7805:
	xorl	%eax, %eax
	jmp	.L7803
.L7893:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7777
.L7776:
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%ebp, %edi
	movq	%r10, 24(%rsp)
	movq	%r11, 16(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r10
	movq	%rax, %r13
	movq	16(%rsp), %r11
	jmp	.L7779
.L7891:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L7773
.L7772:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movl	12(%rsp), %esi
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movq	%r11, 16(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r14
	movq	16(%rsp), %r11
	jmp	.L7775
.L7894:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L7778
	jmp	.L7776
.L7892:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L7774
	.p2align 4,,3
	jmp	.L7772
.L7889:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L7770
.L7890:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L7771
.L7895:
	addl	$1, %r12d
.L7791:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	12(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	jmp	.L7794
.L7904:
	addl	$1, %ebp
.L7785:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	call	s370_logical_to_main_l
	jmp	.L7788
.L7906:
	cmpb	43192(%rbx,%rsi), %al
	je	.L7787
	.p2align 4,,4
	jmp	.L7785
.L7905:
	movzbl	44216(%rbx,%rsi), %ecx
	testb	%cl, 1976(%rbx,%rax)
	jne	.L7786
	jmp	.L7785
.L7897:
	cmpb	43192(%rbx,%rsi), %al
	je	.L7793
	.p2align 4,,4
	jmp	.L7791
.L7896:
	movzbl	44216(%rbx,%rsi), %ecx
	testb	%cl, 1976(%rbx,%rax)
	jne	.L7792
	jmp	.L7791
.L7901:
	addl	$1, %ebp
.L7799:
	movl	%ebp, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	andl	$16777215, %edi
	movq	%rbx, %rdx
	movl	%r15d, %esi
	call	s370_logical_to_main_l
	jmp	.L7802
.L7903:
	cmpb	%r8b, 43192(%rbx,%rsi)
	je	.L7801
	.p2align 4,,3
	jmp	.L7799
.L7902:
	movzbl	44216(%rbx,%rsi), %edi
	testb	%dil, 1976(%rbx,%rcx)
	jne	.L7800
	jmp	.L7799
.L7898:
	addl	$1, %r12d
.L7795:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	12(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movq	%r10, 16(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r12
	movq	16(%rsp), %r10
	jmp	.L7798
.L7900:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L7797
	jmp	.L7795
.L7899:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L7796
	jmp	.L7795
	.cfi_endproc
.LFE818:
	.size	s370_D501, .-s370_D501
	.p2align 4,,15
	.globl	s370_D503
	.type	s370_D503, @function
s370_D503:
.LFB819:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	shrl	$12, %eax
	andl	$4095, %r12d
	andl	$15, %eax
	movl	%eax, (%rsp)
	je	.L7908
	cltq
	addl	192(%rsi,%rax,8), %r12d
	andl	$16777215, %r12d
.L7908:
	movzbl	4(%rdi), %eax
	movzbl	5(%rdi), %edx
	movl	%eax, %ebp
	shrb	$4, %al
	andl	$15, %ebp
	movzbl	%al, %r10d
	sall	$8, %ebp
	orl	%edx, %ebp
	testl	%r10d, %r10d
	je	.L7909
	movslq	%r10d, %rax
	addl	192(%rbx,%rax,8), %ebp
	andl	$16777215, %ebp
.L7909:
	leal	-77(%r12), %eax
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	cmpl	$6, %eax
	jbe	.L8094
.L7910:
	leal	-77(%rbp), %eax
	cmpl	$6, %eax
	jbe	.L8095
.L7911:
	movl	(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 8(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L7912
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8096
.L7913:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8097
.L7914:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7912
	testb	$4, 46264(%rbx,%rcx)
	je	.L7912
	movl	%r12d, %r13d
	movzbl	%sil, %r8d
	xorq	26808(%rdx), %r13
.L7915:
	leal	5(%r10), %eax
	cltq
	leaq	(%rbx,%rax,4), %r11
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L7916
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8098
.L7917:
	testb	%r8b, %r8b
	jne	.L8099
.L7918:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7916
	testb	$4, 46264(%rbx,%rcx)
	je	.L7916
	movl	%ebp, %r14d
	xorq	26808(%rdx), %r14
.L7919:
	movl	%r12d, %r15d
	andl	$2047, %r15d
	cmpl	$2044, %r15d
	ja	.L7920
	movl	%ebp, %r12d
	andl	$2047, %r12d
	cmpl	$2044, %r12d
	ja	.L7921
	movl	0(%r13), %edx
	movl	(%r14), %eax
	bswap	%edx
	bswap	%eax
	cmpl	%eax, %edx
	je	.L7965
	sbbl	%eax, %eax
	addl	$2, %eax
.L7961:
	movb	%al, 100(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7920:
	.cfi_restore_state
	movl	$2048, %eax
	movl	%eax, %esi
	subl	%r15d, %esi
	movl	%esi, 4(%rsp)
	movl	%ebp, %esi
	andl	$2047, %esi
	cmpl	$2044, %esi
	movl	%esi, 16(%rsp)
	ja	.L7930
	movl	4(%rsp), %ebp
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	call	memcmp
	testl	%eax, %eax
	jne	.L7962
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8100
	addl	4(%rsp), %r12d
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%r12d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L8101
.L7932:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L8102
.L7933:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7931
	testb	$4, 46264(%rbx,%rcx)
	je	.L7931
	xorq	26808(%rax), %rdi
.L7934:
	leal	-2044(%r15), %edx
	leaq	(%r14,%rbp), %rsi
	call	memcmp
	testl	%eax, %eax
	jne	.L7962
.L7965:
	xorl	%eax, %eax
	jmp	.L7961
	.p2align 4,,10
	.p2align 3
.L7930:
	subl	16(%rsp), %eax
	cmpl	%eax, 4(%rsp)
	movl	%eax, 24(%rsp)
	je	.L8103
	movq	%r11, 40(%rsp)
	movl	%r10d, 32(%rsp)
	jae	.L7944
	movl	4(%rsp), %r15d
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r15, %rdx
	call	memcmp
	movl	32(%rsp), %r10d
	testl	%eax, %eax
	movq	40(%rsp), %r11
	jne	.L7962
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8104
	addl	4(%rsp), %r12d
	addl	$1, %eax
	cltq
	movl	%r12d, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8105
.L7946:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8106
.L7947:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7945
	testb	$4, 46264(%rbx,%rcx)
	je	.L7945
	movl	%esi, %r12d
	xorq	26808(%rdx), %r12
.L7948:
	movl	24(%rsp), %edx
	movq	%r12, %rdi
	movq	%r11, 8(%rsp)
	leaq	(%r14,%r15), %rsi
	movl	%r10d, (%rsp)
	subl	4(%rsp), %edx
	call	memcmp
	testl	%eax, %eax
	jne	.L7962
	movq	8(%rsp), %r11
	movl	(%rsp), %r10d
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8107
	addl	24(%rsp), %ebp
	addl	$1, %eax
	cltq
	movl	%ebp, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8108
.L7950:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8109
.L7951:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7949
	testb	$4, 46264(%rbx,%rcx)
	je	.L7949
	xorq	26808(%rdx), %rsi
.L7952:
	movl	24(%rsp), %edi
	movl	16(%rsp), %edx
	subq	%r15, %rdi
	subl	$2044, %edx
	addq	%r12, %rdi
	call	memcmp
	jmp	.L7929
	.p2align 4,,10
	.p2align 3
.L7921:
	movl	$2048, %ecx
	movq	%r14, %rsi
	movq	%r13, %rdi
	subl	%r12d, %ecx
	movq	%r11, 8(%rsp)
	movl	%ecx, %r15d
	movl	%r10d, 4(%rsp)
	movq	%r15, %rdx
	movl	%ecx, (%rsp)
	call	memcmp
	movl	(%rsp), %ecx
	testl	%eax, %eax
	movl	4(%rsp), %r10d
	movq	8(%rsp), %r11
	jne	.L7962
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8110
	leal	1(%rax), %edx
	addl	%ecx, %ebp
	movl	%ebp, %esi
	movslq	%edx, %rdx
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L8111
.L7926:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L8112
.L7927:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7925
	testb	$4, 46264(%rbx,%rcx)
	je	.L7925
	xorq	26808(%rax), %rsi
.L7928:
	leal	-2044(%r12), %edx
	leaq	0(%r13,%r15), %rdi
	call	memcmp
.L7929:
	testl	%eax, %eax
	je	.L7965
	.p2align 4,,10
	.p2align 3
.L7962:
	sarl	$31, %eax
	addl	$2, %eax
	jmp	.L7961
	.p2align 4,,10
	.p2align 3
.L8103:
	movl	4(%rsp), %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r11, 24(%rsp)
	movl	%r10d, 16(%rsp)
	call	memcmp
	movl	16(%rsp), %r10d
	testl	%eax, %eax
	movq	24(%rsp), %r11
	jne	.L7962
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8113
	addl	4(%rsp), %r12d
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%r12d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L8114
.L7937:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8115
.L7938:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7936
	testb	$4, 46264(%rbx,%rcx)
	je	.L7936
	movl	%edi, %r12d
	movzbl	%sil, %r8d
	xorq	26808(%rax), %r12
.L7939:
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8116
	addl	4(%rsp), %ebp
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%ebp, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L8117
.L7941:
	testb	%r8b, %r8b
	jne	.L8118
.L7942:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L7940
	testb	$4, 46264(%rbx,%rcx)
	je	.L7940
	movl	%edi, %esi
	xorq	26808(%rax), %rsi
.L7943:
	movq	%r12, %rdi
	leal	-2044(%r15), %edx
	call	memcmp
	jmp	.L7929
	.p2align 4,,10
	.p2align 3
.L7944:
	movl	24(%rsp), %eax
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%rax, 16(%rsp)
	call	memcmp
	movl	32(%rsp), %r10d
	testl	%eax, %eax
	movq	40(%rsp), %r11
	jne	.L7962
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8119
	addl	24(%rsp), %ebp
	addl	$1, %eax
	cltq
	movl	%ebp, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8120
.L7954:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8121
.L7955:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7953
	testb	$4, 46264(%rbx,%rcx)
	je	.L7953
	movl	%esi, %ebp
	xorq	26808(%rdx), %rbp
.L7956:
	movl	4(%rsp), %edx
	movq	%rbp, %rsi
	movq	16(%rsp), %rax
	subl	24(%rsp), %edx
	leaq	0(%r13,%rax), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L7962
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8122
	addl	4(%rsp), %r12d
	addl	$1, %eax
	cltq
	movl	%r12d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L8123
.L7958:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8124
.L7959:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L7957
	testb	$4, 46264(%rbx,%rcx)
	je	.L7957
	xorq	26808(%rdx), %rdi
.L7960:
	movl	4(%rsp), %esi
	leal	-2044(%r15), %edx
	subq	16(%rsp), %rsi
	addq	%rbp, %rsi
	call	memcmp
	jmp	.L7929
.L8098:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7917
.L7916:
	movl	%r10d, %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r11, 16(%rsp)
	movl	%r10d, 4(%rsp)
	call	s370_logical_to_main_l
	movq	16(%rsp), %r11
	movq	%rax, %r14
	movl	4(%rsp), %r10d
	jmp	.L7919
.L8096:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L7913
.L7912:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movl	(%rsp), %esi
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r10d, 4(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r13
	movl	4(%rsp), %r10d
	jmp	.L7915
.L8097:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L7914
	jmp	.L7912
.L8099:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L7918
	.p2align 4,,3
	jmp	.L7916
.L8095:
	movq	%rbx, %rdi
	movl	%r10d, 4(%rsp)
	call	s370_store_int_timer
	movl	4(%rsp), %r10d
	jmp	.L7911
.L8094:
	movq	%rbx, %rdi
	movl	%r10d, 4(%rsp)
	call	s370_store_int_timer
	movl	4(%rsp), %r10d
	jmp	.L7910
.L8110:
	addl	%ecx, %ebp
.L7925:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	%r10d, %esi
	andl	$16777215, %edi
	movl	$1, %r9d
	movq	%rbx, %rdx
	movl	$4, %ecx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L7928
.L8100:
	movl	4(%rsp), %eax
	addl	%eax, %r12d
.L7931:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rdi
	jmp	.L7934
.L8107:
	movl	24(%rsp), %eax
	addl	%eax, %ebp
.L7949:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	%r10d, %esi
	andl	$16777215, %edi
	movl	$1, %r9d
	movq	%rbx, %rdx
	movl	$4, %ecx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L7952
.L8104:
	movl	4(%rsp), %eax
	addl	%eax, %r12d
.L7945:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movq	%r11, 32(%rsp)
	movl	%r10d, 8(%rsp)
	call	s370_logical_to_main_l
	movq	32(%rsp), %r11
	movq	%rax, %r12
	movl	8(%rsp), %r10d
	jmp	.L7948
.L8122:
	movl	4(%rsp), %eax
	addl	%eax, %r12d
.L7957:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rdi
	jmp	.L7960
.L8119:
	movl	24(%rsp), %eax
	addl	%eax, %ebp
.L7953:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, %esi
	call	s370_logical_to_main_l
	movq	%rax, %rbp
	jmp	.L7956
.L8109:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7951
	jmp	.L7949
.L8106:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7947
	.p2align 4,,4
	jmp	.L7945
.L8105:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7946
	jmp	.L7945
.L8112:
	cmpb	43192(%rbx,%rcx), %dl
	je	.L7927
	.p2align 4,,4
	jmp	.L7925
.L8111:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rdx)
	jne	.L7926
	jmp	.L7925
.L8102:
	cmpb	43192(%rbx,%rcx), %dl
	je	.L7933
	.p2align 4,,4
	jmp	.L7931
.L8101:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L7932
	jmp	.L7931
.L8124:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7959
	.p2align 4,,4
	jmp	.L7957
.L8121:
	cmpb	43192(%rbx,%rcx), %al
	je	.L7955
	.p2align 4,,4
	jmp	.L7953
.L8120:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7954
	jmp	.L7953
.L8108:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L7950
	jmp	.L7949
.L8123:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L7958
	jmp	.L7957
.L8116:
	movl	4(%rsp), %eax
	addl	%eax, %ebp
.L7940:
	movl	%ebp, %edi
	movl	%r10d, %esi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L7943
.L8118:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L7942
	jmp	.L7940
.L8117:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L7941
	jmp	.L7940
.L8113:
	movl	4(%rsp), %eax
	addl	%eax, %r12d
.L7936:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movq	%r11, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r12
	movq	16(%rsp), %r11
	movl	8(%rsp), %r10d
	jmp	.L7939
.L8115:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L7938
	jmp	.L7936
.L8114:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L7937
	jmp	.L7936
	.cfi_endproc
.LFE819:
	.size	s370_D503, .-s370_D503
	.p2align 4,,15
	.globl	s370_D507
	.type	s370_D507, @function
s370_D507:
.LFB820:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	shrl	$12, %eax
	andl	$4095, %r12d
	andl	$15, %eax
	movl	%eax, (%rsp)
	je	.L8126
	cltq
	addl	192(%rsi,%rax,8), %r12d
	andl	$16777215, %r12d
.L8126:
	movzbl	4(%rdi), %eax
	movzbl	5(%rdi), %edx
	movl	%eax, %ebp
	shrb	$4, %al
	andl	$15, %ebp
	movzbl	%al, %r10d
	sall	$8, %ebp
	orl	%edx, %ebp
	testl	%r10d, %r10d
	je	.L8127
	movslq	%r10d, %rax
	addl	192(%rbx,%rax,8), %ebp
	andl	$16777215, %ebp
.L8127:
	leal	-73(%r12), %eax
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	cmpl	$10, %eax
	jbe	.L8312
.L8128:
	leal	-73(%rbp), %eax
	cmpl	$10, %eax
	jbe	.L8313
.L8129:
	movl	(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 8(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8130
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8314
.L8131:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8315
.L8132:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8130
	testb	$4, 46264(%rbx,%rcx)
	je	.L8130
	movl	%r12d, %r13d
	movzbl	%sil, %r8d
	xorq	26808(%rdx), %r13
.L8133:
	leal	5(%r10), %eax
	cltq
	leaq	(%rbx,%rax,4), %r11
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8134
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8316
.L8135:
	testb	%r8b, %r8b
	jne	.L8317
.L8136:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8134
	testb	$4, 46264(%rbx,%rcx)
	je	.L8134
	movl	%ebp, %r14d
	xorq	26808(%rdx), %r14
.L8137:
	movl	%r12d, %r15d
	andl	$2047, %r15d
	cmpl	$2040, %r15d
	ja	.L8138
	movl	%ebp, %r12d
	andl	$2047, %r12d
	cmpl	$2040, %r12d
	ja	.L8139
	movq	0(%r13), %rdx
	movq	(%r14), %rax
	bswap	%rdx
	bswap	%rax
	cmpq	%rax, %rdx
	je	.L8183
	sbbl	%eax, %eax
	addl	$2, %eax
.L8179:
	movb	%al, 100(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8138:
	.cfi_restore_state
	movl	$2048, %eax
	movl	%eax, %esi
	subl	%r15d, %esi
	movl	%esi, 4(%rsp)
	movl	%ebp, %esi
	andl	$2047, %esi
	cmpl	$2040, %esi
	movl	%esi, 16(%rsp)
	ja	.L8148
	movl	4(%rsp), %ebp
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	call	memcmp
	testl	%eax, %eax
	jne	.L8180
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8318
	addl	4(%rsp), %r12d
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%r12d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L8319
.L8150:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L8320
.L8151:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L8149
	testb	$4, 46264(%rbx,%rcx)
	je	.L8149
	xorq	26808(%rax), %rdi
.L8152:
	leal	-2040(%r15), %edx
	leaq	(%r14,%rbp), %rsi
	call	memcmp
	testl	%eax, %eax
	jne	.L8180
.L8183:
	xorl	%eax, %eax
	jmp	.L8179
	.p2align 4,,10
	.p2align 3
.L8148:
	subl	16(%rsp), %eax
	cmpl	%eax, 4(%rsp)
	movl	%eax, 24(%rsp)
	je	.L8321
	movq	%r11, 40(%rsp)
	movl	%r10d, 32(%rsp)
	jae	.L8162
	movl	4(%rsp), %r15d
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r15, %rdx
	call	memcmp
	movl	32(%rsp), %r10d
	testl	%eax, %eax
	movq	40(%rsp), %r11
	jne	.L8180
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8322
	addl	4(%rsp), %r12d
	addl	$1, %eax
	cltq
	movl	%r12d, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8323
.L8164:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8324
.L8165:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8163
	testb	$4, 46264(%rbx,%rcx)
	je	.L8163
	movl	%esi, %r12d
	xorq	26808(%rdx), %r12
.L8166:
	movl	24(%rsp), %edx
	movq	%r12, %rdi
	movq	%r11, 8(%rsp)
	leaq	(%r14,%r15), %rsi
	movl	%r10d, (%rsp)
	subl	4(%rsp), %edx
	call	memcmp
	testl	%eax, %eax
	jne	.L8180
	movq	8(%rsp), %r11
	movl	(%rsp), %r10d
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8325
	addl	24(%rsp), %ebp
	addl	$1, %eax
	cltq
	movl	%ebp, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8326
.L8168:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8327
.L8169:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8167
	testb	$4, 46264(%rbx,%rcx)
	je	.L8167
	xorq	26808(%rdx), %rsi
.L8170:
	movl	24(%rsp), %edi
	movl	16(%rsp), %edx
	subq	%r15, %rdi
	subl	$2040, %edx
	addq	%r12, %rdi
	call	memcmp
	jmp	.L8147
	.p2align 4,,10
	.p2align 3
.L8139:
	movl	$2048, %ecx
	movq	%r14, %rsi
	movq	%r13, %rdi
	subl	%r12d, %ecx
	movq	%r11, 8(%rsp)
	movl	%ecx, %r15d
	movl	%r10d, 4(%rsp)
	movq	%r15, %rdx
	movl	%ecx, (%rsp)
	call	memcmp
	movl	(%rsp), %ecx
	testl	%eax, %eax
	movl	4(%rsp), %r10d
	movq	8(%rsp), %r11
	jne	.L8180
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8328
	leal	1(%rax), %edx
	addl	%ecx, %ebp
	movl	%ebp, %esi
	movslq	%edx, %rdx
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L8329
.L8144:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L8330
.L8145:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L8143
	testb	$4, 46264(%rbx,%rcx)
	je	.L8143
	xorq	26808(%rax), %rsi
.L8146:
	leal	-2040(%r12), %edx
	leaq	0(%r13,%r15), %rdi
	call	memcmp
.L8147:
	testl	%eax, %eax
	je	.L8183
	.p2align 4,,10
	.p2align 3
.L8180:
	sarl	$31, %eax
	addl	$2, %eax
	jmp	.L8179
	.p2align 4,,10
	.p2align 3
.L8321:
	movl	4(%rsp), %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r11, 24(%rsp)
	movl	%r10d, 16(%rsp)
	call	memcmp
	movl	16(%rsp), %r10d
	testl	%eax, %eax
	movq	24(%rsp), %r11
	jne	.L8180
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8331
	addl	4(%rsp), %r12d
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%r12d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L8332
.L8155:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8333
.L8156:
	movl	%r12d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L8154
	testb	$4, 46264(%rbx,%rcx)
	je	.L8154
	movl	%edi, %r12d
	movzbl	%sil, %r8d
	xorq	26808(%rax), %r12
.L8157:
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8334
	addl	4(%rsp), %ebp
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	%ebp, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L8335
.L8159:
	testb	%r8b, %r8b
	jne	.L8336
.L8160:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L8158
	testb	$4, 46264(%rbx,%rcx)
	je	.L8158
	movl	%edi, %esi
	xorq	26808(%rax), %rsi
.L8161:
	movq	%r12, %rdi
	leal	-2040(%r15), %edx
	call	memcmp
	jmp	.L8147
	.p2align 4,,10
	.p2align 3
.L8162:
	movl	24(%rsp), %eax
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%rax, 16(%rsp)
	call	memcmp
	movl	32(%rsp), %r10d
	testl	%eax, %eax
	movq	40(%rsp), %r11
	jne	.L8180
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L8337
	addl	24(%rsp), %ebp
	addl	$1, %eax
	cltq
	movl	%ebp, %esi
	andl	$16777215, %esi
	movl	%esi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8338
.L8172:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8339
.L8173:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8171
	testb	$4, 46264(%rbx,%rcx)
	je	.L8171
	movl	%esi, %ebp
	xorq	26808(%rdx), %rbp
.L8174:
	movl	4(%rsp), %edx
	movq	%rbp, %rsi
	movq	16(%rsp), %rax
	subl	24(%rsp), %edx
	leaq	0(%r13,%rax), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L8180
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L8340
	addl	4(%rsp), %r12d
	addl	$1, %eax
	cltq
	movl	%r12d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L8341
.L8176:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8342
.L8177:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8175
	testb	$4, 46264(%rbx,%rcx)
	je	.L8175
	xorq	26808(%rdx), %rdi
.L8178:
	movl	4(%rsp), %esi
	leal	-2040(%r15), %edx
	subq	16(%rsp), %rsi
	addq	%rbp, %rsi
	call	memcmp
	jmp	.L8147
.L8316:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L8135
.L8134:
	movl	%r10d, %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r11, 16(%rsp)
	movl	%r10d, 4(%rsp)
	call	s370_logical_to_main_l
	movq	16(%rsp), %r11
	movq	%rax, %r14
	movl	4(%rsp), %r10d
	jmp	.L8137
.L8314:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8131
.L8130:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movl	(%rsp), %esi
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r10d, 4(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r13
	movl	4(%rsp), %r10d
	jmp	.L8133
.L8315:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8132
	jmp	.L8130
.L8317:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L8136
	.p2align 4,,3
	jmp	.L8134
.L8313:
	movq	%rbx, %rdi
	movl	%r10d, 4(%rsp)
	call	s370_store_int_timer
	movl	4(%rsp), %r10d
	jmp	.L8129
.L8312:
	movq	%rbx, %rdi
	movl	%r10d, 4(%rsp)
	call	s370_store_int_timer
	movl	4(%rsp), %r10d
	jmp	.L8128
.L8328:
	addl	%ecx, %ebp
.L8143:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	%r10d, %esi
	andl	$16777215, %edi
	movl	$1, %r9d
	movq	%rbx, %rdx
	movl	$4, %ecx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L8146
.L8318:
	movl	4(%rsp), %eax
	addl	%eax, %r12d
.L8149:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rdi
	jmp	.L8152
.L8325:
	movl	24(%rsp), %eax
	addl	%eax, %ebp
.L8167:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	%r10d, %esi
	andl	$16777215, %edi
	movl	$1, %r9d
	movq	%rbx, %rdx
	movl	$4, %ecx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L8170
.L8322:
	movl	4(%rsp), %eax
	addl	%eax, %r12d
.L8163:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movq	%r11, 32(%rsp)
	movl	%r10d, 8(%rsp)
	call	s370_logical_to_main_l
	movq	32(%rsp), %r11
	movq	%rax, %r12
	movl	8(%rsp), %r10d
	jmp	.L8166
.L8340:
	movl	4(%rsp), %eax
	addl	%eax, %r12d
.L8175:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rdi
	jmp	.L8178
.L8337:
	movl	24(%rsp), %eax
	addl	%eax, %ebp
.L8171:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, %esi
	call	s370_logical_to_main_l
	movq	%rax, %rbp
	jmp	.L8174
.L8327:
	cmpb	43192(%rbx,%rcx), %al
	je	.L8169
	jmp	.L8167
.L8324:
	cmpb	43192(%rbx,%rcx), %al
	je	.L8165
	.p2align 4,,4
	jmp	.L8163
.L8323:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L8164
	jmp	.L8163
.L8330:
	cmpb	43192(%rbx,%rcx), %dl
	je	.L8145
	.p2align 4,,4
	jmp	.L8143
.L8329:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rdx)
	jne	.L8144
	jmp	.L8143
.L8320:
	cmpb	43192(%rbx,%rcx), %dl
	je	.L8151
	.p2align 4,,4
	jmp	.L8149
.L8319:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L8150
	jmp	.L8149
.L8342:
	cmpb	43192(%rbx,%rcx), %al
	je	.L8177
	.p2align 4,,4
	jmp	.L8175
.L8339:
	cmpb	43192(%rbx,%rcx), %al
	je	.L8173
	.p2align 4,,4
	jmp	.L8171
.L8338:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L8172
	jmp	.L8171
.L8326:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L8168
	jmp	.L8167
.L8341:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8176
	jmp	.L8175
.L8334:
	movl	4(%rsp), %eax
	addl	%eax, %ebp
.L8158:
	movl	%ebp, %edi
	movl	%r10d, %esi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %rsi
	jmp	.L8161
.L8336:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L8160
	jmp	.L8158
.L8335:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L8159
	jmp	.L8158
.L8331:
	movl	4(%rsp), %eax
	addl	%eax, %r12d
.L8154:
	movzbl	97(%rbx), %r8d
	movl	%r12d, %edi
	movl	$1, %r9d
	movl	(%rsp), %esi
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movq	%r11, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r12
	movq	16(%rsp), %r11
	movl	8(%rsp), %r10d
	jmp	.L8157
.L8333:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8156
	jmp	.L8154
.L8332:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L8155
	jmp	.L8154
	.cfi_endproc
.LFE820:
	.size	s370_D507, .-s370_D507
	.p2align 4,,15
	.globl	s370_compare_logical_characters_under_mask
	.type	s370_compare_logical_characters_under_mask, @function
s370_compare_logical_characters_under_mask:
.LFB821:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	(%rdi), %r11d
	bswap	%r11d
	movl	%r11d, %eax
	movl	%r11d, %edx
	shrl	$16, %eax
	movl	%r11d, %r10d
	shrl	$20, %edx
	movl	%eax, %ecx
	shrl	$12, %r10d
	andl	$15, %edx
	andl	$15, %ecx
	andl	$4095, %r11d
	andl	$15, %r10d
	je	.L8344
	movslq	%r10d, %rsi
	addl	192(%rbx,%rsi,8), %r11d
	andl	$16777215, %r11d
.L8344:
	addq	$4, 136(%rbx)
	testb	$8, %al
	movb	$4, 130(%rbx)
	je	.L8370
	movslq	%edx, %rsi
	movl	$1, %r13d
	movzbl	195(%rbx,%rsi,8), %esi
	movb	%sil, 16(%rsp)
	movl	$2, %esi
.L8345:
	testb	$4, %al
	je	.L8346
	movslq	%edx, %rdi
	movzwl	194(%rbx,%rdi,8), %edi
	movb	%dil, 16(%rsp,%r13)
	movl	%esi, %r13d
.L8346:
	testb	$2, %al
	je	.L8347
	movslq	%edx, %rsi
	movslq	%r13d, %rdi
	addl	$1, %r13d
	movl	192(%rbx,%rsi,8), %esi
	shrl	$8, %esi
	movb	%sil, 16(%rsp,%rdi)
.L8347:
	testb	$1, %al
	je	.L8348
	movslq	%edx, %rdx
	movslq	%r13d, %rax
	addl	$1, %r13d
	movl	192(%rbx,%rdx,8), %edx
	movb	%dl, 16(%rsp,%rax)
.L8348:
	testl	%ecx, %ecx
	je	.L8406
.L8350:
	testl	%r13d, %r13d
	je	.L8366
	leal	5(%r10), %r15d
	xorl	%r12d, %r12d
	movslq	%r15d, %r15
.L8367:
	movl	%r11d, %ebp
	andl	$16777215, %ebp
	leal	-80(%rbp), %eax
	leal	1(%rbp), %r14d
	cmpl	$3, %eax
	jbe	.L8407
.L8357:
	movl	1892(%rbx,%r15,4), %eax
	testl	%eax, %eax
	je	.L8358
	leal	1(%rax), %ecx
	movl	%ebp, %edx
	shrl	$11, %edx
	movslq	%ecx, %rcx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L8408
.L8359:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L8409
.L8360:
	andl	$14680064, %r11d
	orl	2224(%rbx), %r11d
	cmpl	10424(%rax), %r11d
	jne	.L8373
	testb	$4, 46264(%rbx,%rdx)
	je	.L8373
	xorq	26808(%rax), %rbp
.L8362:
	movzbl	0(%rbp), %eax
	cmpb	%al, 16(%rsp,%r12)
	je	.L8363
	sbbl	%eax, %eax
	addl	$2, %eax
.L8356:
	movb	%al, 100(%rbx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8363:
	.cfi_restore_state
	addq	$1, %r12
	cmpl	%r12d, %r13d
	jle	.L8366
	movl	%r14d, %r11d
	jmp	.L8367
	.p2align 4,,10
	.p2align 3
.L8370:
	movl	$1, %esi
	xorl	%r13d, %r13d
	jmp	.L8345
	.p2align 4,,10
	.p2align 3
.L8366:
	xorl	%eax, %eax
	jmp	.L8356
.L8409:
	cmpb	43192(%rbx,%rdx), %cl
	je	.L8360
.L8373:
	movzbl	%cl, %r8d
.L8361:
	movl	%r10d, %esi
	movl	%ebp, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 8(%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r10d
	movq	%rax, %rbp
	jmp	.L8362
.L8408:
	movzbl	44216(%rbx,%rdx), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L8359
.L8358:
	movzbl	97(%rbx), %r8d
	jmp	.L8361
.L8407:
	movq	%rbx, %rdi
	movl	%r10d, 12(%rsp)
	movl	%r11d, 8(%rsp)
	call	s370_store_int_timer
	movl	12(%rsp), %r10d
	movl	8(%rsp), %r11d
	jmp	.L8357
.L8406:
	leal	-80(%r11), %eax
	cmpl	$3, %eax
	ja	.L8369
	movq	%rbx, %rdi
	movl	%r10d, 12(%rsp)
	movl	%r11d, 8(%rsp)
	call	s370_store_int_timer
	movl	12(%rsp), %r10d
	movl	8(%rsp), %r11d
.L8369:
	leal	5(%r10), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8351
	movl	%r11d, %edx
	addl	$1, %eax
	shrl	$11, %edx
	cltq
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L8410
.L8352:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8411
.L8353:
	movl	%r11d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L8351
	testb	$4, 46264(%rbx,%rdx)
	jne	.L8350
.L8351:
	movzbl	97(%rbx), %r8d
	movl	%r10d, %esi
	movl	%r11d, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 12(%rsp)
	movl	%r11d, 8(%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r11d
	movl	12(%rsp), %r10d
	jmp	.L8350
.L8411:
	cmpb	43192(%rbx,%rdx), %al
	je	.L8353
	jmp	.L8351
.L8410:
	movzbl	44216(%rbx,%rdx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8352
	jmp	.L8351
	.cfi_endproc
.LFE821:
	.size	s370_compare_logical_characters_under_mask, .-s370_compare_logical_characters_under_mask
	.p2align 4,,15
	.globl	s370_compare_logical_character_long
	.type	s370_compare_logical_character_long, @function
s370_compare_logical_character_long:
.LFB822:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movzbl	1(%rdi), %eax
	movb	$2, 130(%rsi)
	addq	$2, 136(%rsi)
	movzbl	%al, %edi
	movl	%eax, %ebp
	movl	%edi, 44(%rsp)
	andl	$15, %ebp
	sarl	$4, 44(%rsp)
	movzbl	%bpl, %edi
	movl	%edi, 48(%rsp)
	testb	$1, 44(%rsp)
	jne	.L8413
	testb	$1, %al
	jne	.L8413
.L8414:
	movl	44(%rsp), %esi
	movzbl	%bpl, %ebp
	movl	48(%rsp), %edi
	leal	1(%rsi), %edx
	movslq	%esi, %rax
	leaq	(%rbx,%rax,8), %r11
	movslq	%edx, %rdx
	leaq	(%rbx,%rbp,8), %rax
	movq	%rdx, 8(%rsp)
	movl	192(%r11), %r13d
	movq	%rax, (%rsp)
	movl	192(%rax), %r14d
	movl	%edi, %eax
	addl	$1, %eax
	cltq
	movq	%rax, 16(%rsp)
	addq	$24, %rax
	andl	$16777215, %r13d
	movl	(%rbx,%rax,8), %ebp
	andl	$16777215, %r14d
	movzbl	3(%rbx,%rax,8), %r10d
	leal	5(%rsi), %eax
	movl	192(%rbx,%rdx,8), %r12d
	cltq
	movq	%rax, 24(%rsp)
	movl	%edi, %eax
	addl	$5, %eax
	andl	$16777215, %ebp
	cltq
	andl	$16777215, %r12d
	movq	%rax, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L8415:
	movl	%ebp, %eax
	orl	%r12d, %eax
	je	.L8487
	testl	%r12d, %r12d
	movl	%r10d, %r15d
	jne	.L8488
.L8417:
	testl	%ebp, %ebp
	movl	%r10d, %eax
	jne	.L8489
.L8424:
	cmpb	%al, %r15b
	jne	.L8490
	testl	%r12d, %r12d
	je	.L8433
	addl	$1, %r13d
	subl	$1, %r12d
	andl	$16777215, %r13d
.L8433:
	testl	%ebp, %ebp
	je	.L8434
	addl	$1, %r14d
	subl	$1, %ebp
	andl	$16777215, %r14d
.L8434:
	testl	$2047, %r13d
	je	.L8435
	testl	$2047, %r14d
	jne	.L8436
.L8435:
	movq	(%rsp), %rax
	movl	%r13d, 192(%r11)
	movl	%r12d, %ecx
	andl	$16777215, %ecx
	movl	%r14d, 192(%rax)
	movq	8(%rsp), %rax
	leaq	24(%rax), %rdx
	movl	(%rbx,%rdx,8), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%ebp, %ecx
	movl	%eax, (%rbx,%rdx,8)
	movq	16(%rsp), %rax
	andl	$16777215, %ecx
	leaq	24(%rax), %rdx
	movl	(%rbx,%rdx,8), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, (%rbx,%rdx,8)
.L8436:
	leal	0(%rbp,%r12), %eax
	cmpl	$255, %eax
	jbe	.L8415
	movl	%r13d, %eax
	subl	%ebp, %eax
	testl	$4095, %eax
	jne	.L8415
	movl	168(%rbx), %ecx
	movl	136(%rbx), %eax
	movq	144(%rbx), %rdx
	movzbl	808(%rbx), %esi
	addl	%ecx, %eax
	subl	%edx, %eax
	testb	$1, %sil
	jne	.L8438
	movzbl	130(%rbx), %esi
.L8439:
	subl	%esi, %eax
	movl	%eax, %esi
	andl	$16777215, %esi
	cmpq	$0, 160(%rbx)
	movl	%esi, 112(%rbx)
	je	.L8486
	movl	%eax, %esi
	andl	$16775169, %esi
	cmpl	%esi, %ecx
	jne	.L8441
	andl	$2047, %eax
	orq	%rdx, %rax
	movq	%rax, 136(%rbx)
.L8486:
	andl	$16777215, %r12d
	andl	$16777215, %ebp
	xorl	%ecx, %ecx
	jmp	.L8432
	.p2align 4,,10
	.p2align 3
.L8413:
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L8414
	.p2align 4,,10
	.p2align 3
.L8487:
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
.L8432:
	movq	(%rsp), %rax
	movl	%r13d, 192(%r11)
	movq	8(%rsp), %rdx
	movl	%r14d, 192(%rax)
	addq	$24, %rdx
	movl	(%rbx,%rdx,8), %eax
	andl	$-16777216, %eax
	orl	%r12d, %eax
	movl	%eax, (%rbx,%rdx,8)
	movq	16(%rsp), %rdx
	addq	$24, %rdx
	movl	(%rbx,%rdx,8), %eax
	andl	$-16777216, %eax
	orl	%ebp, %eax
	movl	%eax, (%rbx,%rdx,8)
	movb	%cl, 100(%rbx)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8490:
	.cfi_restore_state
	andl	$16777215, %r12d
	andl	$16777215, %ebp
	cmpb	%r15b, %al
	movl	$1, %ecx
	ja	.L8432
	movl	$2, %ecx
	jmp	.L8432
	.p2align 4,,10
	.p2align 3
.L8489:
	leal	-80(%r14), %eax
	cmpl	$3, %eax
	ja	.L8446
	movq	%rbx, %rdi
	movq	%r11, 56(%rsp)
	movl	%r10d, 52(%rsp)
	call	s370_store_int_timer
	movq	56(%rsp), %r11
	movl	52(%rsp), %r10d
.L8446:
	movq	32(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8425
	movl	%r14d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8491
.L8426:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8492
.L8427:
	movl	%r14d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8452
	testb	$4, 46264(%rbx,%rcx)
	je	.L8452
	movl	%r14d, %eax
	xorq	26808(%rdx), %rax
.L8429:
	movzbl	(%rax), %eax
	jmp	.L8424
.L8492:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8427
.L8452:
	movzbl	%sil, %r8d
.L8428:
	movl	48(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %edi
	movq	%r11, 56(%rsp)
	movl	%r10d, 52(%rsp)
	call	s370_logical_to_main_l
	movq	56(%rsp), %r11
	movl	52(%rsp), %r10d
	jmp	.L8429
.L8491:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8426
.L8425:
	movzbl	97(%rbx), %r8d
	jmp	.L8428
	.p2align 4,,10
	.p2align 3
.L8488:
	leal	-80(%r13), %eax
	cmpl	$3, %eax
	ja	.L8444
	movq	%rbx, %rdi
	movq	%r11, 56(%rsp)
	movl	%r10d, 52(%rsp)
	call	s370_store_int_timer
	movq	56(%rsp), %r11
	movl	52(%rsp), %r10d
.L8444:
	movq	24(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8418
	movl	%r13d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8493
.L8419:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8494
.L8420:
	movl	%r13d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8449
	testb	$4, 46264(%rbx,%rcx)
	je	.L8449
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L8422:
	movzbl	(%rax), %r15d
	jmp	.L8417
.L8494:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8420
.L8449:
	movzbl	%sil, %r8d
.L8421:
	movl	44(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %edi
	movq	%r11, 56(%rsp)
	movl	%r10d, 52(%rsp)
	call	s370_logical_to_main_l
	movq	56(%rsp), %r11
	movl	52(%rsp), %r10d
	jmp	.L8422
.L8493:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8419
.L8418:
	movzbl	97(%rbx), %r8d
	jmp	.L8421
.L8441:
	andl	$16777215, %r12d
	andl	$16777215, %ebp
	xorl	%ecx, %ecx
	movq	$0, 160(%rbx)
	jmp	.L8432
.L8438:
	andl	$2, %esi
	cmpb	$1, %sil
	sbbl	%esi, %esi
	andl	$-2, %esi
	addl	$6, %esi
	jmp	.L8439
	.cfi_endproc
.LFE822:
	.size	s370_compare_logical_character_long, .-s370_compare_logical_character_long
	.p2align 4,,15
	.globl	s370_compare_logical_long_extended
	.type	s370_compare_logical_long_extended, @function
s370_compare_logical_long_extended:
.LFB823:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	(%rdi), %r11d
	bswap	%r11d
	movl	%r11d, %eax
	movl	%r11d, %edx
	shrl	$20, %eax
	shrl	$16, %edx
	movl	%r11d, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrl	$12, %ecx
	andl	$15, %esi
	andl	$15, %edi
	andl	$4095, %r11d
	andl	$15, %ecx
	movl	%esi, 16(%rsp)
	movl	%r11d, %ebp
	movl	%edi, 20(%rsp)
	je	.L8496
	movslq	%ecx, %rcx
	addl	192(%rbx,%rcx,8), %ebp
	andl	$16777215, %ebp
.L8496:
	orl	%edx, %eax
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	testb	$1, %al
	je	.L8497
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L8497:
	movl	16(%rsp), %esi
	movl	%ebp, %r11d
	movl	20(%rsp), %edi
	movslq	%esi, %rax
	leaq	(%rbx,%rax,8), %rax
	movl	192(%rax), %r14d
	movq	%rax, 24(%rsp)
	movslq	%edi, %rax
	leaq	(%rbx,%rax,8), %rax
	movl	192(%rax), %r13d
	movq	%rax, 40(%rsp)
	movl	%esi, %eax
	addl	$1, %eax
	cltq
	andl	$16777215, %r14d
	leaq	(%rbx,%rax,8), %rax
	movl	192(%rax), %r12d
	movq	%rax, 48(%rsp)
	movl	%edi, %eax
	addl	$1, %eax
	andl	$16777215, %r13d
	cltq
	leaq	(%rbx,%rax,8), %rax
	movl	192(%rax), %ebp
	movq	%rax, 32(%rsp)
	movl	%ebp, %eax
	orl	%r12d, %eax
	je	.L8522
	movl	%esi, %eax
	movl	$4096, %r15d
	addl	$5, %eax
	cltq
	movq	%rax, (%rsp)
	movl	%edi, %eax
	addl	$5, %eax
	cltq
	movq	%rax, 8(%rsp)
	jmp	.L8499
	.p2align 4,,10
	.p2align 3
.L8501:
	testl	%ebp, %ebp
	movl	%r11d, %eax
	jne	.L8563
.L8508:
	cmpb	%al, %r10b
	jne	.L8564
.L8514:
	testl	%r12d, %r12d
	je	.L8515
	addl	$1, %r14d
	subl	$1, %r12d
	andl	$16777215, %r14d
.L8515:
	testl	%ebp, %ebp
	je	.L8516
	addl	$1, %r13d
	subl	$1, %ebp
	andl	$16777215, %r13d
.L8516:
	movl	%ebp, %eax
	orl	%r12d, %eax
	je	.L8522
	subl	$1, %r15d
	je	.L8523
.L8499:
	testl	%r12d, %r12d
	movl	%r11d, %r10d
	je	.L8501
	leal	-80(%r14), %eax
	cmpl	$3, %eax
	ja	.L8519
	movq	%rbx, %rdi
	movl	%r11d, 56(%rsp)
	call	s370_store_int_timer
	movl	56(%rsp), %r11d
.L8519:
	movq	(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8502
	movl	%r14d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8565
.L8503:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8566
.L8504:
	movl	%r14d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8526
	testb	$4, 46264(%rbx,%rcx)
	je	.L8526
	movl	%r14d, %eax
	xorq	26808(%rdx), %rax
.L8506:
	testl	%ebp, %ebp
	movzbl	(%rax), %r10d
	movl	%r11d, %eax
	je	.L8508
.L8563:
	leal	-80(%r13), %eax
	cmpl	$3, %eax
	ja	.L8521
	movq	%rbx, %rdi
	movl	%r11d, 60(%rsp)
	movl	%r10d, 56(%rsp)
	call	s370_store_int_timer
	movl	60(%rsp), %r11d
	movl	56(%rsp), %r10d
.L8521:
	movq	8(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8509
	movl	%r13d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8567
.L8510:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8568
.L8511:
	movl	%r13d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8529
	testb	$4, 46264(%rbx,%rcx)
	je	.L8529
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L8513:
	movzbl	(%rax), %eax
	cmpb	%al, %r10b
	je	.L8514
.L8564:
	sbbl	%eax, %eax
	addl	$2, %eax
	jmp	.L8498
	.p2align 4,,10
	.p2align 3
.L8522:
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
.L8498:
	movq	24(%rsp), %rsi
	movq	48(%rsp), %rdi
	movl	%r14d, 192(%rsi)
	movq	40(%rsp), %rsi
	movl	%r12d, 192(%rdi)
	movq	32(%rsp), %rdi
	movl	%r13d, 192(%rsi)
	movl	%ebp, 192(%rdi)
	movb	%al, 100(%rbx)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L8523:
	.cfi_restore_state
	movl	$3, %eax
	jmp	.L8498
.L8566:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8504
.L8526:
	movzbl	%sil, %r8d
.L8505:
	movl	16(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %edi
	movl	%r11d, 56(%rsp)
	call	s370_logical_to_main_l
	movl	56(%rsp), %r11d
	jmp	.L8506
.L8565:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8503
.L8502:
	movzbl	97(%rbx), %r8d
	jmp	.L8505
.L8568:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8511
.L8529:
	movzbl	%sil, %r8d
.L8512:
	movl	20(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %edi
	movl	%r11d, 60(%rsp)
	movl	%r10d, 56(%rsp)
	call	s370_logical_to_main_l
	movl	60(%rsp), %r11d
	movl	56(%rsp), %r10d
	jmp	.L8513
.L8567:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8510
.L8509:
	movzbl	97(%rbx), %r8d
	jmp	.L8512
	.cfi_endproc
.LFE823:
	.size	s370_compare_logical_long_extended, .-s370_compare_logical_long_extended
	.p2align 4,,15
	.globl	s370_compare_logical_string
	.type	s370_compare_logical_string, @function
s370_compare_logical_string:
.LFB824:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movzbl	3(%rdi), %ebp
	movb	$4, 130(%rsi)
	addq	$4, 136(%rsi)
	movzbl	%bpl, %eax
	andl	$15, %ebp
	movl	%eax, 8(%rsp)
	movzbl	%bpl, %eax
	sarl	$4, 8(%rsp)
	movl	%eax, 12(%rsp)
	testl	$-256, 192(%rsi)
	jne	.L8629
.L8570:
	movl	8(%rsp), %esi
	movzbl	%bpl, %ebp
	movl	$4096, %r15d
	movzbl	192(%rbx), %r13d
	leal	5(%rsi), %r11d
	movslq	%esi, %rax
	leaq	(%rbx,%rax,8), %rax
	movslq	%r11d, %r11
	movl	192(%rax), %r12d
	movq	%rax, 24(%rsp)
	leaq	(%rbx,%rbp,8), %rax
	movl	192(%rax), %ebp
	movq	%rax, 16(%rsp)
	movl	12(%rsp), %eax
	andl	$16777215, %r12d
	andl	$16777215, %ebp
	leal	5(%rax), %r10d
	movslq	%r10d, %r10
	jmp	.L8587
	.p2align 4,,10
	.p2align 3
.L8583:
	testb	%dl, %dl
	jne	.L8595
.L8599:
	cmpb	%al, %r13b
	jne	.L8630
.L8598:
	cmpb	%al, %r14b
	.p2align 4,,3
	ja	.L8596
	testb	%cl, %cl
	.p2align 4,,3
	jne	.L8596
	addl	$1, %r12d
	addl	$1, %ebp
	andl	$16777215, %r12d
	andl	$16777215, %ebp
	subl	$1, %r15d
	je	.L8631
.L8587:
	leal	-80(%r12), %eax
	cmpl	$3, %eax
	jbe	.L8632
.L8571:
	movl	1892(%rbx,%r11,4), %eax
	testl	%eax, %eax
	je	.L8572
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8633
.L8573:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8634
.L8574:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8590
	testb	$4, 46264(%rbx,%rcx)
	je	.L8590
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L8576:
	movzbl	(%rax), %r14d
	leal	-80(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L8635
.L8577:
	movl	1892(%rbx,%r10,4), %eax
	testl	%eax, %eax
	je	.L8578
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8636
.L8579:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8637
.L8580:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8593
	testb	$4, 46264(%rbx,%rcx)
	je	.L8593
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L8582:
	movzbl	(%rax), %eax
	cmpb	%r14b, %r13b
	sete	%dl
	cmpb	%al, %r13b
	sete	%cl
	jne	.L8583
	testb	%dl, %dl
	je	.L8599
	movb	$0, 100(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8630:
	.cfi_restore_state
	cmpb	%al, %r14b
	jae	.L8598
	.p2align 4,,10
	.p2align 3
.L8595:
	movl	$1, %eax
.L8585:
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rsi
	movl	%r12d, 192(%rdi)
	movl	%ebp, 192(%rsi)
	movb	%al, 100(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8629:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L8570
	.p2align 4,,10
	.p2align 3
.L8596:
	movl	$2, %eax
	jmp	.L8585
	.p2align 4,,10
	.p2align 3
.L8631:
	movl	$3, %eax
	jmp	.L8585
.L8634:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8574
.L8590:
	movzbl	%sil, %r8d
.L8575:
	movl	8(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movq	%r11, 40(%rsp)
	movq	%r10, 32(%rsp)
	call	s370_logical_to_main_l
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L8576
.L8637:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8580
.L8593:
	movzbl	%sil, %r8d
.L8581:
	movl	12(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r11, 40(%rsp)
	movq	%r10, 32(%rsp)
	call	s370_logical_to_main_l
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L8582
.L8636:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8579
.L8578:
	movzbl	97(%rbx), %r8d
	jmp	.L8581
.L8633:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8573
.L8572:
	movzbl	97(%rbx), %r8d
	jmp	.L8575
.L8632:
	movq	%rbx, %rdi
	movq	%r11, 40(%rsp)
	movq	%r10, 32(%rsp)
	call	s370_store_int_timer
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L8571
.L8635:
	movq	%rbx, %rdi
	movq	%r11, 40(%rsp)
	movq	%r10, 32(%rsp)
	call	s370_store_int_timer
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L8577
	.cfi_endproc
.LFE824:
	.size	s370_compare_logical_string, .-s370_compare_logical_string
	.p2align 4,,15
	.globl	s370_compare_until_substring_equal
	.type	s370_compare_until_substring_equal, @function
s370_compare_until_substring_equal:
.LFB825:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movzbl	3(%rdi), %eax
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	movzbl	%al, %esi
	movl	%eax, %ebp
	movl	%esi, 24(%rsp)
	andl	$15, %ebp
	sarl	$4, 24(%rsp)
	movzbl	%bpl, %edx
	movl	%edx, 52(%rsp)
	testb	$1, 24(%rsp)
	jne	.L8639
	testb	$1, %al
	jne	.L8639
.L8640:
	movzbl	192(%rbx), %eax
	movzbl	%bpl, %ebp
	movl	24(%rsp), %edi
	leaq	(%rbx,%rbp,8), %r10
	movl	%eax, %esi
	movb	%al, 30(%rsp)
	movzbl	200(%rbx), %eax
	movb	%al, 31(%rsp)
	movslq	%edi, %rax
	leaq	(%rbx,%rax,8), %r11
	movl	192(%r11), %eax
	movl	%eax, 16(%rsp)
	movl	192(%r10), %eax
	andl	$16777215, 16(%rsp)
	movl	%eax, 20(%rsp)
	andl	$16777215, 20(%rsp)
	movl	16(%rsp), %eax
	movl	%eax, 192(%r11)
	movl	20(%rsp), %eax
	movl	%eax, 192(%r10)
	movl	%edi, %eax
	addl	$1, %eax
	cltq
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, 40(%rsp)
	movl	192(%rax), %r14d
	movl	52(%rsp), %eax
	addl	$1, %eax
	testb	%sil, %sil
	cltq
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, 32(%rsp)
	movl	192(%rax), %eax
	je	.L8723
	testl	%eax, %eax
	movl	%r14d, 56(%rsp)
	movl	%eax, %r13d
	jle	.L8724
.L8643:
	movl	52(%rsp), %edi
	cmpl	%edi, 24(%rsp)
	je	.L8644
	testl	%eax, %eax
	movl	%eax, 60(%rsp)
	jle	.L8725
.L8687:
	movl	24(%rsp), %eax
	xorl	%r15d, %r15d
	movl	$0, 48(%rsp)
	movl	20(%rsp), %r12d
	movl	16(%rsp), %ebp
	addl	$5, %eax
	cltq
	movq	%rax, 64(%rsp)
	movl	52(%rsp), %eax
	addl	$5, %eax
	cltq
	movq	%rax, 72(%rsp)
	.p2align 4,,10
	.p2align 3
.L8647:
	testl	%r14d, %r14d
	jle	.L8726
	leal	-80(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L8727
.L8673:
	movq	64(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8652
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8728
.L8653:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8729
.L8654:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8680
	testb	$4, 46264(%rbx,%rcx)
	je	.L8680
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L8656:
	movzbl	(%rax), %eax
	movb	%al, 8(%rsp)
.L8651:
	testl	%r13d, %r13d
	jle	.L8730
	leal	-80(%r12), %eax
	cmpl	$3, %eax
	jbe	.L8731
.L8675:
	movq	72(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8659
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8732
.L8660:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8733
.L8661:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8683
	testb	$4, 46264(%rbx,%rcx)
	je	.L8683
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L8663:
	movzbl	(%rax), %eax
	cmpb	%al, 8(%rsp)
	je	.L8734
.L8684:
	movl	$2, %eax
	xorl	%r15d, %r15d
	movl	$2, %edx
.L8664:
	testl	%r14d, %r14d
	jle	.L8666
	addl	$1, %ebp
	subl	$1, %r14d
	andl	$16777215, %ebp
.L8666:
	testl	%r13d, %r13d
	jle	.L8667
	addl	$1, %r12d
	subl	$1, %r13d
	andl	$16777215, %r12d
.L8667:
	testl	$2047, %ebp
	je	.L8668
	testl	$2047, %r12d
	jne	.L8669
.L8668:
	movq	40(%rsp), %rdi
	movl	%ebp, 192(%r11)
	movq	32(%rsp), %rsi
	movl	%r12d, 192(%r10)
	movl	%r14d, 192(%rdi)
	movl	%r13d, 192(%rsi)
.L8669:
	cmpb	30(%rsp), %r15b
	je	.L8686
	addl	$1, 48(%rsp)
	testl	%r13d, %r13d
	jle	.L8735
.L8670:
	testb	%r15b, %r15b
	jne	.L8647
	cmpl	$4095, 48(%rsp)
	jle	.L8647
	movl	$3, %eax
.L8648:
	movq	40(%rsp), %rsi
	movl	%ebp, 192(%r11)
	movl	%r12d, 192(%r10)
	movl	%r14d, 192(%rsi)
	movq	32(%rsp), %rsi
	movl	%r13d, 192(%rsi)
.L8671:
	movb	%al, 100(%rbx)
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8639:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L8640
	.p2align 4,,10
	.p2align 3
.L8724:
	testl	%r14d, %r14d
	jg	.L8643
	movb	$2, 100(%rbx)
.L8638:
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8730:
	.cfi_restore_state
	movzbl	31(%rsp), %eax
	cmpb	%al, 8(%rsp)
	jne	.L8684
.L8734:
	movl	60(%rsp), %eax
	testb	%r15b, %r15b
	movl	$1, %edx
	cmove	%r13d, %eax
	movl	%eax, 60(%rsp)
	movl	56(%rsp), %eax
	cmove	%r14d, %eax
	movl	%eax, 56(%rsp)
	movl	20(%rsp), %eax
	cmove	%r12d, %eax
	movl	%eax, 20(%rsp)
	movl	16(%rsp), %eax
	cmove	%ebp, %eax
	addl	$1, %r15d
	movl	%eax, 16(%rsp)
	movl	$1, %eax
	jmp	.L8664
	.p2align 4,,10
	.p2align 3
.L8726:
	movzbl	31(%rsp), %eax
	movb	%al, 8(%rsp)
	jmp	.L8651
	.p2align 4,,10
	.p2align 3
.L8723:
	movb	$0, 100(%rbx)
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L8725:
	.cfi_restore_state
	testl	%r14d, %r14d
	jg	.L8687
	.p2align 4,,10
	.p2align 3
.L8686:
	xorl	%eax, %eax
.L8645:
	movl	16(%rsp), %edi
	movl	20(%rsp), %edx
	movq	40(%rsp), %rsi
	movl	%edi, 192(%r11)
	movl	56(%rsp), %edi
	movl	%edx, 192(%r10)
	movq	32(%rsp), %rdx
	movl	%edi, 192(%rsi)
	movl	60(%rsp), %esi
	movl	%esi, 192(%rdx)
	jmp	.L8671
	.p2align 4,,10
	.p2align 3
.L8735:
	testl	%r14d, %r14d
	jg	.L8670
	cmpl	$1, %edx
	jne	.L8648
	.p2align 4,,5
	jmp	.L8645
	.p2align 4,,10
	.p2align 3
.L8644:
	movzbl	30(%rsp), %eax
	cmpl	%r14d, %eax
	setg	100(%rbx)
	jmp	.L8638
.L8729:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8654
.L8680:
	movzbl	%sil, %r8d
.L8655:
	movl	24(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r11, 80(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_logical_to_main_l
	movq	80(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L8656
.L8733:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8661
.L8683:
	movzbl	%sil, %r8d
.L8662:
	movl	52(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movq	%r11, 88(%rsp)
	movq	%r10, 80(%rsp)
	call	s370_logical_to_main_l
	movq	88(%rsp), %r11
	movq	80(%rsp), %r10
	jmp	.L8663
.L8732:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8660
.L8659:
	movzbl	97(%rbx), %r8d
	jmp	.L8662
.L8728:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8653
.L8652:
	movzbl	97(%rbx), %r8d
	jmp	.L8655
.L8727:
	movq	%rbx, %rdi
	movq	%r11, 80(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_store_int_timer
	movq	80(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L8673
.L8731:
	movq	%rbx, %rdi
	movq	%r11, 88(%rsp)
	movq	%r10, 80(%rsp)
	call	s370_store_int_timer
	movq	88(%rsp), %r11
	movq	80(%rsp), %r10
	jmp	.L8675
	.cfi_endproc
.LFE825:
	.size	s370_compare_until_substring_equal, .-s370_compare_until_substring_equal
	.p2align 4,,15
	.globl	s370_convert_utf16_to_utf8
	.type	s370_convert_utf16_to_utf8, @function
s370_convert_utf16_to_utf8:
.LFB826:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movzbl	3(%rdi), %eax
	movb	$4, 130(%rsi)
	addq	$4, 136(%rsi)
	movzbl	%al, %edi
	movl	%eax, %r12d
	movl	%edi, 60(%rsp)
	andl	$15, %r12d
	sarl	$4, 60(%rsp)
	movzbl	%r12b, %edi
	movl	%edi, 4(%rsp)
	testb	$1, 60(%rsp)
	jne	.L8737
	testb	$1, %al
	jne	.L8737
.L8738:
	movl	60(%rsp), %edi
	movzbl	%r12b, %r12d
	movzbl	2(%rbp), %edx
	movslq	%edi, %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, 8(%rsp)
	movl	192(%rax), %ebp
	leaq	(%rbx,%r12,8), %rax
	movq	%rax, 24(%rsp)
	movl	192(%rax), %r12d
	movl	%edi, %eax
	addl	$1, %eax
	cltq
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, 16(%rsp)
	movl	192(%rax), %r11d
	movl	4(%rsp), %eax
	addl	$1, %eax
	cltq
	leaq	(%rbx,%rax,8), %rax
	movl	192(%rax), %r10d
	movq	%rax, 32(%rsp)
	cmpl	$1, %r10d
	seta	%al
	jbe	.L8739
	testl	%r11d, %r11d
	je	.L8768
.L8739:
	testl	%r11d, %r11d
	je	.L8809
	testb	%al, %al
	.p2align 4,,3
	je	.L8809
	movl	60(%rsp), %eax
	andl	$16, %edx
	movl	$4096, %edi
	movl	%r11d, %r13d
	andl	$16777215, %ebp
	andl	$16777215, %r12d
	movb	%dl, 107(%rsp)
	movl	%r10d, %r14d
	movl	%edi, %r11d
	movl	$0, 56(%rsp)
	addl	$5, %eax
	cltq
	movq	%rax, 40(%rsp)
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 64(%rsp)
	jmp	.L8741
	.p2align 4,,10
	.p2align 3
.L8937:
	movb	%r15b, 112(%rsp)
	movl	%edx, %r14d
	movl	$1, %r10d
	movl	$1, 48(%rsp)
	movl	$2047, %eax
	xorl	%r15d, %r15d
.L8753:
	cmpl	%r13d, %r15d
	jae	.L8768
.L8938:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	%eax, %edx
	jg	.L8769
	movq	40(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8770
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8930
.L8771:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8931
.L8772:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8819
	testb	$2, 46264(%rbx,%rcx)
	je	.L8819
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L8774:
	movq	%rax, %rdx
	xorl	%eax, %eax
	leaq	112(%rsp), %rcx
	testb	$4, %r10b
	je	.L8778
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movl	$4, %eax
.L8778:
	testb	$2, %r10b
	je	.L8779
	movzwl	(%rcx,%rax), %esi
	movw	%si, (%rdx,%rax)
	addq	$2, %rax
.L8779:
	andl	$1, %r10d
	je	.L8777
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, (%rdx,%rax)
.L8777:
	cmpl	$83, %ebp
	jbe	.L8932
.L8782:
	movq	8(%rsp), %rax
	leal	1(%r15,%rbp), %ebp
	subl	%r15d, %r13d
	andl	$16777215, %ebp
	subl	$1, %r13d
	testl	%r14d, %r14d
	movl	%ebp, 192(%rax)
	movq	16(%rsp), %rax
	movl	%r13d, 192(%rax)
	movq	24(%rsp), %rax
	movl	%r12d, 192(%rax)
	movq	32(%rsp), %rax
	movl	%r14d, 192(%rax)
	setne	%al
	testl	%r13d, %r13d
	jne	.L8805
	testb	%al, %al
	movl	$1, %edx
	cmove	56(%rsp), %edx
	movl	%edx, 56(%rsp)
.L8805:
	testl	%r13d, %r13d
	je	.L8823
	testb	%al, %al
	je	.L8823
	subl	$1, %r11d
	je	.L8810
	cmpl	$1, %r14d
	jbe	.L8823
.L8741:
	testb	$1, %r12b
	jne	.L8933
.L8743:
	leal	-79(%r12), %eax
	cmpl	$4, %eax
	jbe	.L8934
.L8745:
	movl	4(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L8746
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8935
.L8747:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8936
.L8748:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8813
	testb	$4, 46264(%rbx,%rcx)
	je	.L8813
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L8750:
	movzwl	(%rax), %r15d
#APP
# 477 "vstore.h" 1
	rorw $8, %r15w
# 0 "" 2
#NO_APP
.L8751:
	leal	2(%r12), %eax
	leal	-2(%r14), %edx
	movl	%eax, %r12d
	andl	$16777215, %r12d
	cmpw	$127, %r15w
	jbe	.L8937
	cmpw	$2047, %r15w
	ja	.L8754
	movl	%r15d, %eax
	andl	$63, %r15d
	movl	%edx, %r14d
	orl	$-128, %r15d
	shrw	$6, %ax
	movl	$2, %r10d
	movb	%r15b, 113(%rsp)
	movl	$1, %r15d
	orl	$-64, %eax
	cmpl	%r13d, %r15d
	movb	%al, 112(%rsp)
	movl	$2046, %eax
	movl	$2, 48(%rsp)
	jb	.L8938
	.p2align 4,,10
	.p2align 3
.L8768:
	movl	$1, %eax
.L8740:
	movb	%al, 100(%rbx)
.L8736:
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8737:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L8738
	.p2align 4,,10
	.p2align 3
.L8754:
	leal	10240(%r15), %ecx
	cmpw	$1023, %cx
	jbe	.L8755
	movl	%r15d, %eax
	movl	%edx, %r14d
	movl	$3, %r10d
	shrw	$12, %ax
	movl	$3, 48(%rsp)
	orl	$-32, %eax
	movb	%al, 112(%rsp)
	movl	%r15d, %eax
	andl	$63, %r15d
	andl	$4032, %eax
	orl	$-128, %r15d
	sarl	$6, %eax
	movb	%r15b, 114(%rsp)
	movl	$2, %r15d
	orl	$-128, %eax
	movb	%al, 113(%rsp)
	movl	$2045, %eax
	jmp	.L8753
	.p2align 4,,10
	.p2align 3
.L8755:
	cmpl	$1, %edx
	jbe	.L8823
	testb	$1, %al
	jne	.L8939
.L8757:
	leal	-79(%r12), %edx
	cmpl	$4, %edx
	jbe	.L8940
.L8759:
	movl	4(%rsp), %edi
	leal	5(%rdi), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L8760
	leal	1(%rdx), %esi
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rsi,8)
	jne	.L8941
.L8761:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L8942
.L8762:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L8816
	testb	$4, 46264(%rbx,%rcx)
	je	.L8816
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L8764:
	movzwl	(%rax), %eax
#APP
# 477 "vstore.h" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
.L8765:
	addl	$2, %r12d
	subl	$4, %r14d
	andl	$16777215, %r12d
	cmpb	$0, 107(%rsp)
	je	.L8766
	leal	9216(%rax), %edx
	cmpw	$768, %dx
	ja	.L8943
.L8766:
	movl	%r15d, %ecx
	movl	$4, %r10d
	movl	$4, 48(%rsp)
	andl	$960, %ecx
	sarl	$6, %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	andl	$3, %ecx
	shrw	$2, %dx
	sall	$4, %ecx
	orl	$-16, %edx
	movb	%dl, 112(%rsp)
	movl	%r15d, %edx
	andl	$3, %r15d
	andl	$60, %edx
	sall	$4, %r15d
	sarl	$2, %edx
	orl	$-128, %r15d
	orl	$-128, %edx
	orl	%ecx, %edx
	movb	%dl, 113(%rsp)
	movl	%eax, %edx
	andl	$63, %eax
	andl	$960, %edx
	orl	$-128, %eax
	sarl	$6, %edx
	movb	%al, 115(%rsp)
	movl	$2044, %eax
	orl	%edx, %r15d
	movb	%r15b, 114(%rsp)
	movl	$3, %r15d
	jmp	.L8753
	.p2align 4,,10
	.p2align 3
.L8823:
	movzbl	56(%rsp), %eax
	jmp	.L8740
.L8810:
	movl	$3, %eax
	jmp	.L8740
.L8943:
	movb	$2, 100(%rbx)
	jmp	.L8736
.L8936:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8748
.L8813:
	movzbl	%sil, %r8d
.L8749:
	movl	4(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r11d, 48(%rsp)
	call	s370_logical_to_main_l
	movl	48(%rsp), %r11d
	jmp	.L8750
.L8931:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8772
.L8819:
	movzbl	%sil, %r8d
.L8773:
	movl	60(%rsp), %esi
	movq	%r10, %r9
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movl	%r11d, 72(%rsp)
	movq	%r10, 48(%rsp)
	call	s370_logical_to_main_l
	movl	72(%rsp), %r11d
	movq	48(%rsp), %r10
	jmp	.L8774
.L8935:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8747
.L8746:
	movzbl	97(%rbx), %r8d
	jmp	.L8749
.L8930:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8771
.L8770:
	movzbl	97(%rbx), %r8d
	jmp	.L8773
.L8769:
	movq	64(%rsp), %rax
	movl	$2048, %r10d
	subl	%edx, %r10d
	movl	1892(%rax), %edx
	testl	%edx, %edx
	je	.L8783
	movl	%ebp, %esi
	addl	$1, %edx
	shrl	$11, %esi
	movslq	%edx, %rax
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L8944
.L8784:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L8945
.L8785:
	movl	%ebp, %edi
	andl	$14680064, %edi
	orl	2224(%rbx), %edi
	cmpl	10424(%rcx), %edi
	jne	.L8822
	testb	$1, 46264(%rbx,%rsi)
	je	.L8822
	movq	35000(%rcx), %rdi
	movq	%rdi, 984(%rbx)
	movq	%rdi, 88(%rsp)
	movl	%ebp, %edi
	movq	%rdi, 80(%rsp)
	movq	26808(%rcx), %rdi
	xorq	%rdi, 80(%rsp)
	movl	%r10d, %edi
	movq	%rdi, 72(%rsp)
.L8787:
	leal	(%r10,%rbp), %r8d
	movslq	%edx, %rdx
	movl	%r8d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rsi
	movl	2232(%rsi), %r9d
	cmpl	%r9d, 320(%rbx,%rdx,8)
	jne	.L8946
.L8789:
	testb	%al, %al
	jne	.L8947
.L8791:
	movl	%r8d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rsi), %edx
	jne	.L8790
	testb	$2, 46264(%rbx,%rcx)
	je	.L8790
	movl	48(%rsp), %eax
	movl	%edi, %r8d
	xorq	26808(%rsi), %r8
	subl	%r10d, %eax
	movslq	%eax, %r10
.L8792:
	movq	88(%rsp), %rax
	leaq	112(%rsp), %r9
	movq	80(%rsp), %rdi
	movq	%r9, %rsi
	orb	$6, (%rax)
	cmpq	$8, 72(%rsp)
	jae	.L8948
.L8793:
	xorl	%eax, %eax
	testb	$4, 72(%rsp)
	je	.L8796
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	$4, %eax
.L8796:
	testb	$2, 72(%rsp)
	je	.L8797
	movzwl	(%rsi,%rax), %edx
	movw	%dx, (%rdi,%rax)
	addq	$2, %rax
.L8797:
	testb	$1, 72(%rsp)
	je	.L8795
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%rdi,%rax)
.L8795:
	movq	72(%rsp), %rsi
	movq	%r8, %rdi
	addq	%r9, %rsi
	cmpq	$8, %r10
	movq	%rsi, %rdx
	jae	.L8949
.L8799:
	xorl	%eax, %eax
	testb	$4, %r10b
	je	.L8802
	movl	(%rdx), %eax
	movl	%eax, (%rdi)
	movl	$4, %eax
.L8802:
	testb	$2, %r10b
	je	.L8803
	movzwl	(%rdx,%rax), %ecx
	movw	%cx, (%rdi,%rax)
	addq	$2, %rax
.L8803:
	andl	$1, %r10d
	je	.L8782
	movzbl	(%rdx,%rax), %edx
	movb	%dl, (%rdi,%rax)
	jmp	.L8782
.L8933:
	movl	%r12d, %eax
	andl	$2047, %eax
	cmpl	$2047, %eax
	jne	.L8743
	movl	4(%rsp), %esi
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r11d, 48(%rsp)
	call	s370_vfetch2_full
	movl	48(%rsp), %r11d
	movl	%eax, %r15d
	jmp	.L8751
.L8932:
	leal	(%r15,%rbp), %eax
	cmpl	$79, %eax
	jbe	.L8782
	movq	%rbx, %rdi
	movl	%r11d, 48(%rsp)
	call	s370_fetch_int_timer
	movl	48(%rsp), %r11d
	jmp	.L8782
.L8934:
	movq	%rbx, %rdi
	movl	%r11d, 48(%rsp)
	call	s370_store_int_timer
	movl	48(%rsp), %r11d
	jmp	.L8745
.L8948:
	cmpq	$127, 72(%rsp)
	ja	.L8950
	movq	72(%rsp), %rcx
	movq	%r9, %rsi
	shrq	$3, %rcx
	rep movsq
	jmp	.L8793
.L8949:
	cmpq	$127, %r10
	ja	.L8951
	movq	%r10, %rcx
	shrq	$3, %rcx
	rep movsq
	movq	%rsi, %rdx
	jmp	.L8799
.L8945:
	cmpb	43192(%rbx,%rsi), %al
	je	.L8785
.L8822:
	movzbl	%al, %r8d
.L8786:
	movl	60(%rsp), %esi
	movl	%r10d, %eax
	movq	%rbx, %rdx
	movq	%rax, %r9
	movl	$1, %ecx
	movl	%ebp, %edi
	movl	%r11d, 108(%rsp)
	movl	%r10d, 96(%rsp)
	movq	%rax, 72(%rsp)
	call	s370_logical_to_main_l
	movl	96(%rsp), %r10d
	movq	%rax, 80(%rsp)
	movq	984(%rbx), %rax
	movl	108(%rsp), %r11d
	movq	%rax, 88(%rsp)
	movq	64(%rsp), %rax
	movl	1892(%rax), %edx
	movzbl	97(%rbx), %eax
	testl	%edx, %edx
	jne	.L8952
	leal	(%r10,%rbp), %edi
	andl	$16777215, %edi
.L8790:
	movl	48(%rsp), %edx
	movzbl	%al, %r8d
	movl	$2, %ecx
	movl	60(%rsp), %esi
	movl	%r11d, 96(%rsp)
	subl	%r10d, %edx
	movslq	%edx, %r10
	movq	%rbx, %rdx
	movq	%r10, %r9
	movq	%r10, 48(%rsp)
	call	s370_logical_to_main_l
	movl	96(%rsp), %r11d
	movq	%rax, %r8
	movq	48(%rsp), %r10
	jmp	.L8792
.L8951:
	movq	%r10, %rdx
	movl	%r11d, 48(%rsp)
	call	memcpy
	movl	48(%rsp), %r11d
	jmp	.L8782
.L8947:
	cmpb	43192(%rbx,%rcx), %al
	je	.L8791
	jmp	.L8790
.L8946:
	movzbl	1976(%rbx,%rdx), %edx
	testb	%dl, 44216(%rbx,%rcx)
	jne	.L8789
	jmp	.L8790
.L8939:
	movl	%eax, %edx
	andl	$2047, %edx
	cmpl	$2047, %edx
	jne	.L8757
	movl	4(%rsp), %esi
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r11d, 48(%rsp)
	call	s370_vfetch2_full
	movl	48(%rsp), %r11d
	jmp	.L8765
.L8942:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8762
.L8816:
	movzbl	%sil, %r8d
.L8763:
	movl	4(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r11d, 48(%rsp)
	call	s370_logical_to_main_l
	movl	48(%rsp), %r11d
	jmp	.L8764
.L8809:
	xorl	%eax, %eax
	jmp	.L8740
.L8952:
	addl	$1, %edx
	jmp	.L8787
.L8944:
	movzbl	44216(%rbx,%rsi), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L8784
.L8783:
	movzbl	97(%rbx), %r8d
	jmp	.L8786
.L8941:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L8761
.L8760:
	movzbl	97(%rbx), %r8d
	jmp	.L8763
.L8940:
	movq	%rbx, %rdi
	movl	%r11d, 72(%rsp)
	movl	%eax, 48(%rsp)
	call	s370_store_int_timer
	movl	72(%rsp), %r11d
	movl	48(%rsp), %eax
	jmp	.L8759
.L8950:
	movq	72(%rsp), %rdx
	movl	%r11d, 108(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r10, 88(%rsp)
	movq	%r9, 48(%rsp)
	call	memcpy
	movq	48(%rsp), %r9
	movq	88(%rsp), %r10
	movq	96(%rsp), %r8
	movl	108(%rsp), %r11d
	jmp	.L8795
	.cfi_endproc
.LFE826:
	.size	s370_convert_utf16_to_utf8, .-s370_convert_utf16_to_utf8
	.p2align 4,,15
	.globl	s370_convert_utf8_to_utf16
	.type	s370_convert_utf8_to_utf16, @function
s370_convert_utf8_to_utf16:
.LFB827:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movzbl	3(%rdi), %eax
	movb	$4, 130(%rsi)
	addq	$4, 136(%rsi)
	movzbl	%al, %edi
	movl	%edi, 56(%rsp)
	movl	%eax, %edi
	sarl	$4, 56(%rsp)
	andl	$15, %edi
	movl	%edi, 60(%rsp)
	testb	$1, 56(%rsp)
	jne	.L8954
	testb	$1, %al
	jne	.L8954
.L8955:
	movl	56(%rsp), %edi
	movl	60(%rsp), %esi
	movzbl	2(%rbp), %edx
	movslq	%edi, %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, 8(%rsp)
	movl	192(%rax), %r12d
	movslq	%esi, %rax
	movq	%rax, 16(%rsp)
	movl	192(%rbx,%rax,8), %ebp
	movl	%edi, %eax
	addl	$1, %eax
	cltq
	movq	%rax, 24(%rsp)
	movl	192(%rbx,%rax,8), %r13d
	movl	%esi, %eax
	addl	$1, %eax
	cltq
	movl	192(%rbx,%rax,8), %r11d
	movq	%rax, 32(%rsp)
	testl	%r11d, %r11d
	setne	%al
	je	.L8956
	testl	%r13d, %r13d
	je	.L9063
.L8956:
	testl	%r13d, %r13d
	je	.L9094
	testb	%al, %al
	.p2align 4,,3
	je	.L9094
	shrb	$4, %dl
	andl	$16777215, %r12d
	andl	$16777215, %ebp
	movl	%edx, %eax
	movl	$4096, %r10d
	movl	$0, 48(%rsp)
	andl	$1, %eax
	movl	%r11d, %r14d
	movl	%eax, 52(%rsp)
	movl	60(%rsp), %eax
	addl	$5, %eax
	cltq
	movq	%rax, (%rsp)
	movl	56(%rsp), %eax
	addl	$5, %eax
	cltq
	movq	%rax, 40(%rsp)
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L8958:
	leal	-80(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L9311
.L8959:
	movq	(%rsp), %rax
	leaq	(%rbx,%rax,4), %r15
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L8960
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L9312
.L8961:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L9313
.L8962:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L9098
	testb	$4, 46264(%rbx,%rcx)
	je	.L9098
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L8964:
	movzbl	(%rax), %r11d
	testb	%r11b, %r11b
	movb	%r11b, 96(%rsp)
	js	.L8965
	xorl	%r15d, %r15d
.L8966:
	cmpl	$1, %r13d
	jbe	.L9063
	movl	%r12d, %eax
	andl	$2047, %eax
	cmpl	$2047, %eax
	je	.L9073
	movq	40(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L9074
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L9314
.L9075:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L9315
.L9076:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L9123
	testb	$2, 46264(%rbx,%rcx)
	je	.L9123
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L9078:
#APP
# 248 "vstore.h" 1
	rorw $8, %r11w
# 0 "" 2
#NO_APP
	movw	%r11w, (%rax)
	leal	-79(%r12), %eax
	cmpl	$4, %eax
	jbe	.L9316
.L9079:
	addl	$2, %r12d
	subl	$2, %r13d
	andl	$16777215, %r12d
.L9072:
	movq	8(%rsp), %rax
	leal	1(%rbp,%r15), %ebp
	subl	%r15d, %r14d
	andl	$16777215, %ebp
	subl	$1, %r14d
	testl	%r14d, %r14d
	movl	%r12d, 192(%rax)
	movq	24(%rsp), %rax
	movl	%r13d, 192(%rbx,%rax,8)
	movq	16(%rsp), %rax
	movl	%ebp, 192(%rbx,%rax,8)
	movq	32(%rsp), %rax
	movl	%r14d, 192(%rbx,%rax,8)
	jne	.L9317
.L9127:
	movzbl	48(%rsp), %eax
	jmp	.L8957
	.p2align 4,,10
	.p2align 3
.L8954:
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L8955
	.p2align 4,,10
	.p2align 3
.L9063:
	movl	$1, %eax
.L8957:
	movb	%al, 100(%rbx)
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9317:
	.cfi_restore_state
	testl	%r13d, %r13d
	movl	$1, %eax
	cmovne	48(%rsp), %eax
	movl	%eax, 48(%rsp)
	je	.L9127
	subl	$1, %r10d
	jne	.L8958
	movl	$3, %eax
	jmp	.L8957
	.p2align 4,,10
	.p2align 3
.L8965:
	movl	%r11d, %eax
	andl	$-32, %eax
	cmpb	$-64, %al
	je	.L9318
	movl	%r11d, %eax
	andl	$-16, %eax
	cmpb	$-32, %al
	je	.L9319
	andl	$-8, %r11d
	cmpb	$-16, %r11b
	jne	.L9111
	cmpl	$3, %r14d
	jbe	.L9127
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L9034
	leal	1(%rax), %edx
	movl	%ebp, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L9320
.L9035:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L9321
.L9036:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L9114
	testb	$4, 46264(%rbx,%rcx)
	je	.L9114
	movl	%ebp, %r11d
	xorq	26808(%rax), %r11
.L9038:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2044, %eax
	jg	.L9039
	leal	-77(%rbp), %eax
	cmpl	$6, %eax
	jbe	.L9322
.L9040:
	movl	(%r11), %eax
	movl	%eax, 96(%rsp)
.L9041:
	movl	52(%rsp), %eax
	movzbl	96(%rsp), %r11d
	testl	%eax, %eax
	je	.L9059
	cmpb	$-16, %r11b
	je	.L9323
	leal	15(%r11), %eax
	cmpb	$2, %al
	jbe	.L9324
	cmpb	$-12, %r11b
	jne	.L9059
	movzbl	97(%rsp), %ecx
	leal	-128(%rcx), %eax
	cmpb	$15, %al
	ja	.L8997
.L9309:
	movzbl	98(%rsp), %edx
	leal	-128(%rdx), %eax
	cmpb	$63, %al
	ja	.L8997
	movzbl	99(%rsp), %eax
	leal	-128(%rax), %esi
	cmpb	$63, %sil
	jbe	.L9061
.L8997:
	movb	$2, 100(%rbx)
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9059:
	.cfi_restore_state
	movzbl	97(%rsp), %ecx
	movzbl	98(%rsp), %edx
	movzbl	99(%rsp), %eax
.L9061:
	movl	%ecx, %r15d
	andl	$7, %r11d
	andl	$48, %ecx
	movl	%edx, %esi
	sarl	$4, %ecx
	andl	$15, %r15d
	sall	$2, %r11d
	andl	$48, %esi
	sall	$2, %r15d
	orl	%r11d, %ecx
	sarl	$4, %esi
	andl	$63, %eax
	subl	$1, %ecx
	orl	%esi, %r15d
	andl	$15, %edx
	andl	$15, %ecx
	orw	$-10240, %r15w
	orw	$-9216, %ax
	sall	$6, %ecx
	sall	$6, %edx
	orl	%ecx, %r15d
	orl	%edx, %eax
	cmpl	$3, %r13d
	jbe	.L9063
	sall	$16, %r15d
	movzwl	%ax, %eax
	orl	%eax, %r15d
	testb	$3, %r12b
	jne	.L9325
.L9064:
	movq	40(%rsp), %rax
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L9066
	movl	%r12d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L9326
.L9067:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L9327
.L9068:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L9120
	testb	$2, 46264(%rbx,%rcx)
	je	.L9120
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L9070:
	bswap	%r15d
	movl	%r15d, (%rax)
	leal	-77(%r12), %eax
	cmpl	$6, %eax
	jbe	.L9328
.L9071:
	addl	$4, %r12d
	subl	$4, %r13d
	movl	$3, %r15d
	andl	$16777215, %r12d
	jmp	.L9072
	.p2align 4,,10
	.p2align 3
.L9318:
	movl	52(%rsp), %esi
	testl	%esi, %esi
	je	.L8968
	cmpb	$-63, %r11b
	jbe	.L8997
.L8968:
	cmpl	$1, %r14d
	jbe	.L9127
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L8971
	leal	1(%rax), %edx
	movl	%ebp, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L9329
.L8972:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L9330
.L8973:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L9101
	testb	$4, 46264(%rbx,%rcx)
	je	.L9101
	movl	%ebp, %r11d
	xorq	26808(%rax), %r11
.L8975:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2047, %eax
	je	.L8976
	leal	-79(%rbp), %eax
	cmpl	$4, %eax
	jbe	.L9331
.L8977:
	movzwl	(%r11), %eax
	movw	%ax, 96(%rsp)
.L8978:
	movl	52(%rsp), %ecx
	movzbl	97(%rsp), %r11d
	testl	%ecx, %ecx
	je	.L8998
	leal	-128(%r11), %eax
	cmpb	$63, %al
	ja	.L8997
.L8998:
	movzbl	96(%rsp), %eax
	andl	$63, %r11d
	movl	$1, %r15d
	andl	$31, %eax
	sall	$6, %eax
	orl	%eax, %r11d
	jmp	.L8966
	.p2align 4,,10
	.p2align 3
.L9319:
	cmpl	$2, %r14d
	jbe	.L9127
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L9001
	leal	1(%rax), %edx
	movl	%ebp, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L9332
.L9002:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L9333
.L9003:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L9107
	testb	$4, 46264(%rbx,%rcx)
	je	.L9107
	movl	%ebp, %r11d
	xorq	26808(%rax), %r11
.L9005:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2045, %eax
	jg	.L9006
	leal	-78(%rbp), %eax
	cmpl	$5, %eax
	jbe	.L9334
.L9007:
	movzwl	(%r11), %eax
	movw	%ax, 96(%rsp)
	movzbl	2(%r11), %eax
	movb	%al, 98(%rsp)
.L9008:
	movl	52(%rsp), %edx
	testl	%edx, %edx
	je	.L9335
	movzbl	96(%rsp), %r11d
	cmpb	$-32, %r11b
	je	.L9336
	leal	31(%r11), %eax
	cmpb	$11, %al
	movzbl	97(%rsp), %eax
	ja	.L9337
.L9030:
	leal	-128(%rax), %edx
	cmpb	$63, %dl
	ja	.L8997
	movzbl	98(%rsp), %edx
	addl	$-128, %edx
	cmpb	$63, %dl
	ja	.L8997
.L9031:
	cmpb	$-19, %r11b
	je	.L9286
	movzbl	98(%rsp), %edx
	jmp	.L9032
	.p2align 4,,10
	.p2align 3
.L9324:
	movzbl	97(%rsp), %ecx
	leal	-128(%rcx), %eax
	cmpb	$63, %al
	jbe	.L9309
	jmp	.L8997
	.p2align 4,,10
	.p2align 3
.L9335:
	movzbl	97(%rsp), %eax
	movzbl	96(%rsp), %r11d
	movzbl	98(%rsp), %edx
.L9032:
	sall	$12, %r11d
	andl	$63, %edx
	andl	$63, %eax
	orl	%edx, %r11d
	sall	$6, %eax
	movl	$2, %r15d
	orl	%eax, %r11d
	jmp	.L8966
	.p2align 4,,10
	.p2align 3
.L9323:
	movzbl	97(%rsp), %ecx
	leal	112(%rcx), %eax
	cmpb	$47, %al
	jbe	.L9309
	jmp	.L8997
	.p2align 4,,10
	.p2align 3
.L9337:
	cmpb	$-18, %r11b
	je	.L9030
	.p2align 4,,7
	jmp	.L9031
.L9336:
	movzbl	97(%rsp), %eax
	leal	96(%rax), %edx
	cmpb	$31, %dl
	ja	.L8997
.L9307:
	movzbl	98(%rsp), %edx
	leal	-128(%rdx), %ecx
	cmpb	$63, %cl
	jbe	.L9032
	jmp	.L8997
	.p2align 4,,10
	.p2align 3
.L9286:
	leal	-128(%rax), %edx
	cmpb	$31, %dl
	jbe	.L9307
	.p2align 4,,5
	jmp	.L8997
	.p2align 4,,10
	.p2align 3
.L9111:
	movl	$2, %eax
	jmp	.L8957
.L9313:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8962
.L9098:
	movzbl	%sil, %r8d
.L8963:
	movl	60(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movl	%r10d, 72(%rsp)
	call	s370_logical_to_main_l
	movl	72(%rsp), %r10d
	jmp	.L8964
.L9312:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L8961
.L8960:
	movzbl	97(%rbx), %r8d
	jmp	.L8963
.L9315:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L9076
.L9123:
	movzbl	%sil, %r8d
.L9077:
	movl	56(%rsp), %esi
	movl	$2, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r10d, 80(%rsp)
	movl	%r11d, 72(%rsp)
	call	s370_logical_to_main_l
	movl	80(%rsp), %r10d
	movl	72(%rsp), %r11d
	jmp	.L9078
.L9327:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L9068
.L9120:
	movzbl	%sil, %r8d
.L9069:
	movl	56(%rsp), %esi
	movl	$4, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movl	%r10d, 72(%rsp)
	call	s370_logical_to_main_l
	movl	72(%rsp), %r10d
	jmp	.L9070
.L9073:
	movq	64(%rsp), %rax
	movl	1892(%rax), %edx
	testl	%edx, %edx
	je	.L9080
	movl	%r12d, %esi
	addl	$1, %edx
	shrl	$11, %esi
	movslq	%edx, %rax
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L9338
.L9081:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L9339
.L9082:
	movl	%r12d, %edi
	andl	$14680064, %edi
	orl	2224(%rbx), %edi
	cmpl	10424(%rcx), %edi
	jne	.L9126
	testb	$1, 46264(%rbx,%rsi)
	je	.L9126
	movq	35000(%rcx), %rdi
	movq	%rdi, 984(%rbx)
	movq	%rdi, 80(%rsp)
	movl	%r12d, %edi
	movq	%rdi, 72(%rsp)
	movq	26808(%rcx), %rdi
	xorq	%rdi, 72(%rsp)
.L9084:
	movslq	%edx, %rdx
	leal	1(%r12), %r8d
	movl	%r8d, %edi
	andl	$16777215, %edi
	movl	%edi, %ecx
	shrl	$11, %ecx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rsi
	movl	2232(%rsi), %r9d
	cmpl	%r9d, 320(%rbx,%rdx,8)
	jne	.L9340
.L9086:
	testb	%al, %al
	jne	.L9341
.L9088:
	movl	%r8d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rsi), %edx
	jne	.L9087
	testb	$2, 46264(%rbx,%rcx)
	je	.L9087
	movl	%edi, %eax
	xorq	26808(%rsi), %rax
.L9089:
	movq	80(%rsp), %rdi
	movl	%r11d, %edx
	shrw	$8, %dx
	orb	$6, (%rdi)
	movq	72(%rsp), %rdi
	movb	%dl, (%rdi)
	movb	%r11b, (%rax)
	jmp	.L9079
.L9326:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L9067
.L9066:
	movzbl	97(%rbx), %r8d
	jmp	.L9069
.L9325:
	movl	%r12d, %eax
	andl	$2047, %eax
	cmpl	$2044, %eax
	jbe	.L9064
	movl	56(%rsp), %edx
	movq	%rbx, %rcx
	movl	%r12d, %esi
	movl	%r15d, %edi
	movl	%r10d, 72(%rsp)
	call	s370_vstore4_full
	movl	72(%rsp), %r10d
	jmp	.L9071
.L9314:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L9075
.L9074:
	movzbl	97(%rbx), %r8d
	jmp	.L9077
.L9321:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L9036
.L9114:
	movzbl	%sil, %r8d
.L9037:
	movl	60(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movl	%r10d, 72(%rsp)
	call	s370_logical_to_main_l
	movl	72(%rsp), %r10d
	movq	%rax, %r11
	jmp	.L9038
.L9311:
	movq	%rbx, %rdi
	movl	%r10d, 72(%rsp)
	call	s370_store_int_timer
	movl	72(%rsp), %r10d
	jmp	.L8959
.L9320:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L9035
.L9034:
	movzbl	97(%rbx), %r8d
	jmp	.L9037
.L9039:
	movl	$2048, 72(%rsp)
	subl	%eax, 72(%rsp)
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L9042
	leal	1(%rax), %esi
	movl	72(%rsp), %eax
	movslq	%esi, %rsi
	leal	(%rax,%rbp), %ecx
	movl	%ecx, %edi
	andl	$16777215, %edi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L9342
.L9043:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L9343
.L9045:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L9044
	testb	$4, 46264(%rbx,%rax)
	je	.L9044
	movl	%edi, %r9d
	xorq	26808(%rdx), %r9
.L9046:
	movl	72(%rsp), %r15d
	movq	%r11, %rsi
	leaq	96(%rsp), %r8
	movq	%r8, %rdi
	cmpq	$8, %r15
	jae	.L9344
.L9047:
	xorl	%eax, %eax
	testb	$4, %r15b
	je	.L9050
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	$4, %eax
.L9050:
	testb	$2, %r15b
	je	.L9051
	movzwl	(%rsi,%rax), %edx
	movw	%dx, (%rdi,%rax)
	addq	$2, %rax
.L9051:
	testb	$1, %r15b
	je	.L9049
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%rdi,%rax)
.L9049:
	leaq	(%r8,%r15), %rdi
	movl	$4, %edx
	movq	%r9, %rsi
	subl	72(%rsp), %edx
	movq	%rdi, %r11
	movslq	%edx, %rdx
	cmpq	$8, %rdx
	jae	.L9345
.L9053:
	xorl	%eax, %eax
	testb	$4, %dl
	je	.L9056
	movl	(%rsi), %eax
	movl	%eax, (%r11)
	movl	$4, %eax
.L9056:
	testb	$2, %dl
	je	.L9057
	movzwl	(%rsi,%rax), %ecx
	movw	%cx, (%r11,%rax)
	addq	$2, %rax
.L9057:
	andl	$1, %edx
	je	.L9041
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%r11,%rax)
	jmp	.L9041
.L9345:
	cmpq	$127, %rdx
	ja	.L9346
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
	movq	%rdi, %r11
	jmp	.L9053
.L9316:
	movq	%rbx, %rdi
	movl	%r10d, 72(%rsp)
	call	s370_fetch_int_timer
	movl	72(%rsp), %r10d
	jmp	.L9079
.L9328:
	movq	%rbx, %rdi
	movl	%r10d, 72(%rsp)
	call	s370_fetch_int_timer
	movl	72(%rsp), %r10d
	jmp	.L9071
.L9346:
	movl	%r10d, 72(%rsp)
	call	memcpy
	movl	72(%rsp), %r10d
	jmp	.L9041
.L9042:
	movl	72(%rsp), %eax
	leal	(%rax,%rbp), %edi
	andl	$16777215, %edi
.L9310:
	movzbl	97(%rbx), %r8d
.L9044:
	movl	60(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 88(%rsp)
	movq	%r11, 80(%rsp)
	call	s370_logical_to_main_l
	movl	88(%rsp), %r10d
	movq	%rax, %r9
	movq	80(%rsp), %r11
	jmp	.L9046
.L9339:
	cmpb	43192(%rbx,%rsi), %al
	je	.L9082
.L9126:
	movzbl	%al, %r8d
.L9083:
	movl	56(%rsp), %esi
	movq	%rbx, %rdx
	movl	$1, %r9d
	movl	$1, %ecx
	movl	%r12d, %edi
	movl	%r10d, 92(%rsp)
	movl	%r11d, 88(%rsp)
	call	s370_logical_to_main_l
	movl	88(%rsp), %r11d
	movq	%rax, 72(%rsp)
	movq	984(%rbx), %rax
	movl	92(%rsp), %r10d
	movq	%rax, 80(%rsp)
	movq	64(%rsp), %rax
	movl	1892(%rax), %edx
	movzbl	97(%rbx), %eax
	testl	%edx, %edx
	jne	.L9347
	leal	1(%r12), %edi
	andl	$16777215, %edi
.L9087:
	movl	56(%rsp), %esi
	movl	$1, %r9d
	movzbl	%al, %r8d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 92(%rsp)
	movl	%r11d, 88(%rsp)
	call	s370_logical_to_main_l
	movl	92(%rsp), %r10d
	movl	88(%rsp), %r11d
	jmp	.L9089
.L9344:
	cmpq	$127, %r15
	ja	.L9348
	movq	%r15, %rcx
	movq	%r8, %rdi
	shrq	$3, %rcx
	rep movsq
	jmp	.L9047
.L9343:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L9045
	jmp	.L9044
.L9342:
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L9043
	jmp	.L9310
.L9348:
	movq	%r15, %rdx
	movl	%r10d, 88(%rsp)
	movq	%r9, 80(%rsp)
	call	memcpy
	movq	80(%rsp), %r9
	movq	%rax, %r8
	movl	88(%rsp), %r10d
	jmp	.L9049
.L9341:
	cmpb	43192(%rbx,%rcx), %al
	je	.L9088
	jmp	.L9087
.L9340:
	movzbl	1976(%rbx,%rdx), %edx
	testb	%dl, 44216(%rbx,%rcx)
	jne	.L9086
	jmp	.L9087
.L9329:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L8972
.L8971:
	movzbl	97(%rbx), %r8d
.L8974:
	movl	60(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movl	%r10d, 72(%rsp)
	call	s370_logical_to_main_l
	movl	72(%rsp), %r10d
	movq	%rax, %r11
	jmp	.L8975
.L9322:
	movq	%rbx, %rdi
	movl	%r10d, 80(%rsp)
	movq	%r11, 72(%rsp)
	call	s370_store_int_timer
	movl	80(%rsp), %r10d
	movq	72(%rsp), %r11
	jmp	.L9040
.L9347:
	addl	$1, %edx
	jmp	.L9084
.L9338:
	movzbl	44216(%rbx,%rsi), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L9081
.L9080:
	movzbl	97(%rbx), %r8d
	jmp	.L9083
.L9333:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L9003
.L9107:
	movzbl	%sil, %r8d
.L9004:
	movl	60(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movl	%r10d, 72(%rsp)
	call	s370_logical_to_main_l
	movl	72(%rsp), %r10d
	movq	%rax, %r11
	jmp	.L9005
.L9332:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L9002
.L9001:
	movzbl	97(%rbx), %r8d
	jmp	.L9004
.L9331:
	movq	%rbx, %rdi
	movl	%r10d, 80(%rsp)
	movq	%r11, 72(%rsp)
	call	s370_store_int_timer
	movl	80(%rsp), %r10d
	movq	72(%rsp), %r11
	jmp	.L8977
.L8976:
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L8979
	leal	1(%rbp), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L9349
.L8980:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L9350
.L8982:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L8981
	testb	$4, 46264(%rbx,%rax)
	je	.L8981
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L8983:
	movzbl	(%r11), %edx
	movb	%dl, 96(%rsp)
	movzbl	(%rax), %eax
	movb	%al, 97(%rsp)
	jmp	.L8978
.L9330:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L8973
.L9101:
	movzbl	%sil, %r8d
	jmp	.L8974
.L9349:
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L8980
	movzbl	97(%rbx), %r8d
.L8981:
	movl	60(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 80(%rsp)
	movq	%r11, 72(%rsp)
	call	s370_logical_to_main_l
	movl	80(%rsp), %r10d
	movq	72(%rsp), %r11
	jmp	.L8983
.L9350:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L8982
	jmp	.L8981
.L8979:
	leal	1(%rbp), %edi
	movzbl	97(%rbx), %r8d
	andl	$16777215, %edi
	jmp	.L8981
.L9094:
	xorl	%eax, %eax
	jmp	.L8957
.L9006:
	movl	$2048, 72(%rsp)
	subl	%eax, 72(%rsp)
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L9009
	leal	1(%rax), %esi
	movl	72(%rsp), %eax
	movslq	%esi, %rsi
	leal	(%rax,%rbp), %ecx
	movl	%ecx, %edi
	andl	$16777215, %edi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L9351
.L9010:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L9352
.L9012:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L9011
	testb	$4, 46264(%rbx,%rax)
	je	.L9011
	movl	%edi, %r9d
	xorq	26808(%rdx), %r9
.L9013:
	movl	72(%rsp), %r15d
	movq	%r11, %rsi
	leaq	96(%rsp), %r8
	movq	%r8, %rdi
	cmpq	$8, %r15
	jae	.L9353
.L9014:
	xorl	%eax, %eax
	testb	$4, %r15b
	je	.L9017
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	$4, %eax
.L9017:
	testb	$2, %r15b
	je	.L9018
	movzwl	(%rsi,%rax), %edx
	movw	%dx, (%rdi,%rax)
	addq	$2, %rax
.L9018:
	testb	$1, %r15b
	je	.L9016
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%rdi,%rax)
.L9016:
	leaq	(%r8,%r15), %rdi
	movl	$3, %edx
	movq	%r9, %rsi
	subl	72(%rsp), %edx
	movq	%rdi, %r11
	movslq	%edx, %rdx
	cmpq	$8, %rdx
	jae	.L9354
.L9020:
	xorl	%eax, %eax
	testb	$4, %dl
	je	.L9023
	movl	(%rsi), %eax
	movl	%eax, (%r11)
	movl	$4, %eax
.L9023:
	testb	$2, %dl
	je	.L9024
	movzwl	(%rsi,%rax), %ecx
	movw	%cx, (%r11,%rax)
	addq	$2, %rax
.L9024:
	andl	$1, %edx
	je	.L9008
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%r11,%rax)
	jmp	.L9008
.L9354:
	cmpq	$127, %rdx
	ja	.L9355
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
	movq	%rdi, %r11
	jmp	.L9020
.L9353:
	cmpq	$127, %r15
	ja	.L9356
	movq	%r15, %rcx
	movq	%r8, %rdi
	shrq	$3, %rcx
	rep movsq
	jmp	.L9014
.L9351:
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L9010
	movzbl	97(%rbx), %r8d
.L9011:
	movl	60(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 88(%rsp)
	movq	%r11, 80(%rsp)
	call	s370_logical_to_main_l
	movl	88(%rsp), %r10d
	movq	%rax, %r9
	movq	80(%rsp), %r11
	jmp	.L9013
.L9355:
	movl	%r10d, 72(%rsp)
	call	memcpy
	movl	72(%rsp), %r10d
	jmp	.L9008
.L9356:
	movq	%r15, %rdx
	movl	%r10d, 88(%rsp)
	movq	%r9, 80(%rsp)
	call	memcpy
	movq	80(%rsp), %r9
	movq	%rax, %r8
	movl	88(%rsp), %r10d
	jmp	.L9016
.L9352:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L9012
	jmp	.L9011
.L9009:
	movl	72(%rsp), %eax
	movzbl	97(%rbx), %r8d
	leal	(%rax,%rbp), %edi
	andl	$16777215, %edi
	jmp	.L9011
.L9334:
	movq	%rbx, %rdi
	movl	%r10d, 80(%rsp)
	movq	%r11, 72(%rsp)
	call	s370_store_int_timer
	movl	80(%rsp), %r10d
	movq	72(%rsp), %r11
	jmp	.L9007
	.cfi_endproc
.LFE827:
	.size	s370_convert_utf8_to_utf16, .-s370_convert_utf8_to_utf16
	.p2align 4,,15
	.globl	s370_convert_to_binary
	.type	s370_convert_to_binary, @function
s370_convert_to_binary:
.LFB828:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r13d
	movl	%eax, %edx
	shrl	$20, %r13d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r13d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L9411
.L9358:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r15d
	je	.L9359
	cltq
	addl	192(%rbx,%rax,8), %ebp
.L9359:
	addq	$4, 136(%rbx)
	movb	$4, 130(%rbx)
	movl	%ebp, %r12d
	andl	$16777215, %r12d
	leal	5(%r15), %eax
	cltq
	leaq	(%rbx,%rax,4), %r10
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L9360
	leal	1(%rax), %edx
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L9412
.L9361:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L9413
.L9362:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L9360
	testb	$4, 46264(%rbx,%rcx)
	je	.L9360
	movl	%r12d, %r14d
	xorq	26808(%rax), %r14
.L9363:
	movl	%r12d, %eax
	andl	$2047, %eax
	cmpl	$2040, %eax
	jg	.L9364
	subl	$73, %r12d
	cmpl	$10, %r12d
	jbe	.L9414
.L9365:
	movq	(%r14), %rax
	leaq	64(%rsp), %rbp
	movq	%rax, 64(%rsp)
.L9366:
	leaq	48(%rsp), %rdx
	movl	$7, %esi
	movq	%rbp, %rdi
	leaq	32(%rsp), %r8
	leaq	16(%rsp), %rcx
	call	packed_to_binary
	movl	32(%rsp), %edx
	testl	%edx, %edx
	jne	.L9415
.L9375:
	movq	48(%rsp), %rax
	cmpq	$-2147483648, %rax
	jl	.L9376
	cmpq	$2147483647, %rax
	jle	.L9416
.L9376:
	movslq	%r13d, %r13
	movl	$1, 16(%rsp)
	movl	%eax, 192(%rbx,%r13,8)
.L9377:
	movq	%rbx, %rdi
	movl	$9, %esi
	call	*2032(%rbx)
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9416:
	.cfi_restore_state
	movslq	%r13d, %r13
	movl	%eax, 192(%rbx,%r13,8)
	movl	16(%rsp), %eax
	testl	%eax, %eax
	jne	.L9377
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9415:
	.cfi_restore_state
	movl	$0, 780(%rbx)
	movl	$7, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L9375
.L9412:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L9361
.L9360:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%r12d, %edi
	movq	%r10, 8(%rsp)
	call	s370_logical_to_main_l
	movq	8(%rsp), %r10
	movq	%rax, %r14
	jmp	.L9363
.L9411:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L9358
.L9364:
	movl	1892(%r10), %eax
	andl	$2047, %ebp
	movl	$2048, %r11d
	subl	%ebp, %r11d
	testl	%eax, %eax
	je	.L9417
	leal	1(%rax), %esi
	leal	(%r11,%r12), %eax
	movslq	%esi, %rsi
	movl	%eax, %r12d
	andl	$16777215, %r12d
	movl	%r12d, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbx,%rsi,8)
	jne	.L9418
.L9368:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L9419
.L9369:
	movl	%eax, %esi
	andl	$14680064, %esi
	orl	2224(%rbx), %esi
	cmpl	10424(%rcx), %esi
	jne	.L9367
	testb	$4, 46264(%rbx,%rdx)
	je	.L9367
	xorq	26808(%rcx), %r12
.L9370:
	movl	%r11d, %r15d
	leaq	64(%rsp), %rbp
	cmpq	$127, %r15
	ja	.L9420
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	rep movsb
.L9372:
	movl	$8, %edx
	addq	%rbp, %r15
	subl	%r11d, %edx
	movslq	%edx, %rdx
	cmpq	$127, %rdx
	ja	.L9421
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rdx, %rcx
	rep movsb
	jmp	.L9366
.L9413:
	cmpb	43192(%rbx,%rcx), %dl
	je	.L9362
	jmp	.L9360
.L9414:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L9365
.L9421:
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	memcpy
	.p2align 4,,2
	jmp	.L9366
.L9420:
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movl	%r11d, 8(%rsp)
	call	memcpy
	movl	8(%rsp), %r11d
	jmp	.L9372
.L9417:
	leal	(%r11,%r12), %eax
.L9367:
	movzbl	97(%rbx), %r8d
	andl	$16777215, %eax
	movl	$1, %r9d
	movl	%eax, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%r11d, 8(%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r11d
	movq	%rax, %r12
	jmp	.L9370
.L9419:
	cmpb	43192(%rbx,%rdx), %sil
	je	.L9369
	jmp	.L9367
.L9418:
	movzbl	44216(%rbx,%rdx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L9368
	jmp	.L9367
	.cfi_endproc
.LFE828:
	.size	s370_convert_to_binary, .-s370_convert_to_binary
	.p2align 4,,15
	.globl	s370_convert_to_decimal
	.type	s370_convert_to_decimal, @function
s370_convert_to_decimal:
.LFB829:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	(%rdi), %esi
	bswap	%esi
	movl	%esi, %eax
	movl	%esi, %edx
	shrl	$20, %eax
	shrl	$16, %edx
	movl	%esi, %ebp
	andl	$15, %eax
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L9486
.L9423:
	shrl	$12, %esi
	andl	$15, %esi
	movl	%esi, %r13d
	je	.L9424
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L9424:
	addq	$4, 136(%rbx)
	cltq
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	andl	$16777215, %r12d
	leaq	16(%rsp), %rsi
	movslq	192(%rbx,%rax,8), %rdi
	call	binary_to_packed
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2040, %eax
	jg	.L9425
	leal	5(%r13), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L9426
	leal	1(%rax), %ecx
	movl	%r12d, %eax
	shrl	$11, %eax
	movslq	%ecx, %rcx
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L9487
.L9427:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L9488
.L9428:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L9426
	testb	$2, 46264(%rbx,%rax)
	je	.L9426
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L9429:
	movq	24(%rsp), %rdx
	subl	$73, %r12d
	cmpl	$10, %r12d
	movq	%rdx, (%rax)
	jbe	.L9489
.L9422:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L9487:
	.cfi_restore_state
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L9427
.L9426:
	movzbl	97(%rbx), %r8d
	movl	$8, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L9429
.L9425:
	movl	$2048, %r14d
	subl	%eax, %r14d
	leal	5(%r13), %eax
	cltq
	leaq	(%rbx,%rax,4), %r10
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L9431
	leal	1(%rax), %ecx
	movl	%r12d, %edx
	shrl	$11, %edx
	movslq	%ecx, %rcx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L9490
.L9432:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L9491
.L9433:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rax), %ebp
	jne	.L9431
	testb	$1, 46264(%rbx,%rdx)
	je	.L9431
	movq	35000(%rax), %rdx
	movl	%r12d, %r15d
	movl	%r14d, %ebp
	movq	%rdx, 984(%rbx)
	xorq	26808(%rax), %r15
.L9434:
	movl	1892(%r10), %eax
	movq	984(%rbx), %r11
	testl	%eax, %eax
	je	.L9492
	leal	1(%rax), %ecx
	addl	%r14d, %r12d
	movl	%r12d, %esi
	movslq	%ecx, %rcx
	andl	$16777215, %esi
	movl	%esi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L9493
.L9436:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L9494
.L9437:
	movl	%r12d, %ecx
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L9435
	testb	$2, 46264(%rbx,%rax)
	je	.L9435
	movl	%esi, %ebx
	xorq	26808(%rdx), %rbx
.L9438:
	orb	$6, (%r11)
	cmpq	$127, %rbp
	leaq	24(%rsp), %rsi
	ja	.L9495
	movq	%r15, %rdi
	movq	%rbp, %rcx
	rep movsb
.L9440:
	leaq	24(%rsp,%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	subl	%r14d, %edx
	movslq	%edx, %rdx
	cmpq	$127, %rdx
	ja	.L9496
	movq	%rdx, %rcx
	rep movsb
	jmp	.L9422
.L9486:
	movslq	%edx, %rdx
	addl	192(%rbx,%rdx,8), %ebp
	jmp	.L9423
.L9488:
	cmpb	43192(%rbx,%rax), %cl
	je	.L9428
	jmp	.L9426
.L9489:
	movq	%rbx, %rdi
	call	s370_fetch_int_timer
	.p2align 4,,5
	jmp	.L9422
.L9496:
	.p2align 4,,5
	call	memcpy
	.p2align 4,,8
	jmp	.L9422
.L9495:
	movq	%rbp, %rdx
	movq	%r15, %rdi
	call	memcpy
	.p2align 4,,2
	jmp	.L9440
.L9492:
	addl	%r14d, %r12d
.L9435:
	movzbl	97(%rbx), %r8d
	movl	$8, %r9d
	movl	%r12d, %edi
	subl	%r14d, %r9d
	movq	%rbx, %rdx
	andl	$16777215, %edi
	movslq	%r9d, %r9
	movl	$2, %ecx
	movl	%r13d, %esi
	movq	%r11, 8(%rsp)
	call	s370_logical_to_main_l
	movq	8(%rsp), %r11
	movq	%rax, %rbx
	jmp	.L9438
.L9494:
	cmpb	43192(%rbx,%rax), %cl
	je	.L9437
	jmp	.L9435
.L9493:
	movzbl	44216(%rbx,%rax), %edi
	testb	%dil, 1976(%rbx,%rcx)
	jne	.L9436
	jmp	.L9435
.L9491:
	cmpb	43192(%rbx,%rdx), %cl
	je	.L9433
.L9431:
	movzbl	97(%rbx), %r8d
	movl	%r14d, %ebp
	movl	$1, %ecx
	movq	%rbp, %r9
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%r12d, %edi
	movq	%r10, 8(%rsp)
	call	s370_logical_to_main_l
	movq	8(%rsp), %r10
	movq	%rax, %r15
	jmp	.L9434
.L9490:
	movzbl	44216(%rbx,%rdx), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L9432
	jmp	.L9431
	.cfi_endproc
.LFE829:
	.size	s370_convert_to_decimal, .-s370_convert_to_decimal
	.p2align 4,,15
	.globl	s370_divide_register
	.type	s370_divide_register, @function
s370_divide_register:
.LFB830:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movzbl	1(%rdi), %eax
	movb	$2, 130(%rsi)
	addq	$2, 136(%rsi)
	movzbl	%al, %ebp
	movl	%eax, %r12d
	sarl	$4, %ebp
	andl	$15, %r12d
	testb	$1, %bpl
	jne	.L9509
.L9498:
	leal	1(%rbp), %eax
	movslq	%r12d, %r12
	movslq	%ebp, %rbp
	movslq	192(%rbx,%r12,8), %rcx
	leaq	(%rbx,%rbp,8), %rsi
	cltq
	leaq	(%rbx,%rax,8), %rdi
	movl	192(%rsi), %eax
	movl	192(%rdi), %edx
	testl	%ecx, %ecx
	jne	.L9510
.L9499:
	movq	2032(%rbx), %rax
	movq	%rbx, %rdi
	movl	$9, %esi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L9509:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L9498
	.p2align 4,,10
	.p2align 3
.L9510:
	salq	$32, %rax
	movl	$2147483648, %r8d
	orq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	$4294967295, %ecx
	addq	%rax, %r8
	cmpq	%rcx, %r8
	ja	.L9499
	movl	%eax, 192(%rdi)
	movl	%edx, 192(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE830:
	.size	s370_divide_register, .-s370_divide_register
	.p2align 4,,15
	.globl	s370_divide
	.type	s370_divide, @function
s370_divide:
.LFB831:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %esi
	bswap	%esi
	movl	%esi, %eax
	movl	%esi, %edx
	shrl	$20, %eax
	shrl	$16, %edx
	movl	%esi, %ebp
	movl	%eax, %r13d
	andl	$4095, %ebp
	andl	$15, %r13d
	andl	$15, %edx
	jne	.L9554
.L9512:
	shrl	$12, %esi
	andl	$15, %esi
	movl	%esi, %r14d
	je	.L9513
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L9513:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$1, %al
	jne	.L9555
.L9514:
	testb	$3, %bpl
	jne	.L9556
.L9515:
	leal	-77(%r12), %eax
	cmpl	$6, %eax
	jbe	.L9557
.L9517:
	leal	5(%r14), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L9518
	leal	1(%rax), %ecx
	movl	%r12d, %eax
	shrl	$11, %eax
	movslq	%ecx, %rcx
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L9558
.L9519:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L9559
.L9520:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L9518
	testb	$4, 46264(%rbx,%rax)
	je	.L9518
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L9521:
	movl	(%rax), %ecx
	bswap	%ecx
.L9522:
	leal	1(%r13), %eax
	movslq	%r13d, %r13
	testl	%ecx, %ecx
	leaq	(%rbx,%r13,8), %rsi
	cltq
	leaq	(%rbx,%rax,8), %rdi
	movl	192(%rsi), %eax
	movl	192(%rdi), %edx
	jne	.L9560
.L9523:
	movq	2032(%rbx), %rax
	movq	%rbx, %rdi
	movl	$9, %esi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L9555:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L9514
	.p2align 4,,10
	.p2align 3
.L9560:
	salq	$32, %rax
	movslq	%ecx, %rcx
	movl	$2147483648, %r8d
	orq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	$4294967295, %ecx
	addq	%rax, %r8
	cmpq	%rcx, %r8
	ja	.L9523
	movl	%eax, 192(%rdi)
	movl	%edx, 192(%rsi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L9558:
	.cfi_restore_state
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L9519
.L9518:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L9521
.L9554:
	movslq	%edx, %rdx
	addl	192(%rbx,%rdx,8), %ebp
	jmp	.L9512
.L9559:
	cmpb	43192(%rbx,%rax), %cl
	je	.L9520
	jmp	.L9518
.L9556:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2044, %eax
	jbe	.L9515
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	movl	%eax, %ecx
	jmp	.L9522
.L9557:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,3
	jmp	.L9517
	.cfi_endproc
.LFE831:
	.size	s370_divide, .-s370_divide
	.p2align 4,,15
	.globl	s370_exclusive_or_register
	.type	s370_exclusive_or_register, @function
s370_exclusive_or_register:
.LFB832:
	.cfi_startproc
	movzbl	1(%rdi), %ecx
	addq	$2, 136(%rsi)
	movq	%rcx, %rax
	andl	$15, %ecx
	shrq	%rax
	andl	$120, %eax
	leaq	(%rsi,%rax), %rdx
	movl	192(%rsi,%rcx,8), %eax
	xorl	%eax, 192(%rdx)
	setne	100(%rsi)
	ret
	.cfi_endproc
.LFE832:
	.size	s370_exclusive_or_register, .-s370_exclusive_or_register
	.p2align 4,,15
	.globl	s370_exclusive_or
	.type	s370_exclusive_or, @function
s370_exclusive_or:
.LFB833:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L9595
.L9563:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L9564
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L9564:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$3, %bpl
	jne	.L9596
.L9565:
	leal	-77(%r13), %edx
	cmpl	$6, %edx
	jbe	.L9597
.L9567:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L9568
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L9598
.L9569:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L9599
.L9570:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L9568
	testb	$4, 46264(%rbx,%rcx)
	je	.L9568
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L9571:
	movl	(%rax), %eax
	bswap	%eax
.L9572:
	movslq	%r12d, %r12
	leaq	(%rbx,%r12,8), %rdx
	xorl	%eax, 192(%rdx)
	setne	100(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L9598:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L9569
.L9568:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L9571
.L9596:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L9565
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch4_full
	jmp	.L9572
.L9595:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L9563
.L9599:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L9570
	jmp	.L9568
.L9597:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L9567
	.cfi_endproc
.LFE833:
	.size	s370_exclusive_or, .-s370_exclusive_or
	.p2align 4,,15
	.globl	s370_exclusive_or_immediate
	.type	s370_exclusive_or_immediate, @function
s370_exclusive_or_immediate:
.LFB834:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %eax
	movl	%ebp, %r12d
	shrl	$12, %eax
	shrl	$16, %r12d
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L9601
	cltq
	addl	192(%rsi,%rax,8), %ebp
	andl	$16777215, %ebp
.L9601:
	leal	-79(%rbp), %eax
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	cmpl	$4, %eax
	jbe	.L9624
.L9602:
	leal	5(%r13), %eax
	cltq
	movl	1892(%rbx,%rax,4), %edx
	testl	%edx, %edx
	je	.L9603
	leal	1(%rdx), %eax
	movl	%ebp, %ecx
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L9625
.L9604:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L9626
.L9605:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L9603
	testb	$2, 46264(%rbx,%rcx)
	je	.L9603
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L9606:
	xorb	%r12b, (%rax)
	setne	100(%rbx)
	subl	$80, %ebp
	cmpl	$3, %ebp
	jbe	.L9627
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L9625:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L9604
.L9603:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L9606
.L9626:
	cmpb	43192(%rbx,%rcx), %al
	je	.L9605
	.p2align 4,,4
	jmp	.L9603
.L9624:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L9602
.L9627:
	popq	%rax
	.cfi_def_cfa_offset 40
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE834:
	.size	s370_exclusive_or_immediate, .-s370_exclusive_or_immediate
	.p2align 4,,15
	.globl	s370_exclusive_or_character
	.type	s370_exclusive_or_character, @function
s370_exclusive_or_character:
.LFB835:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	2(%rdi), %eax
	bswap	%eax
	movl	%eax, %r14d
	movl	%eax, %ecx
	shrl	$16, %r14d
	shrl	$28, %ecx
	andl	$4095, %r14d
	testl	%ecx, %ecx
	movl	%ecx, 8(%rsp)
	je	.L9629
	movslq	%ecx, %rdx
	addl	192(%rsi,%rdx,8), %r14d
	andl	$16777215, %r14d
.L9629:
	movl	%eax, %r15d
	shrl	$12, %eax
	andl	$4095, %r15d
	andl	$15, %eax
	movl	%eax, 56(%rsp)
	je	.L9630
	cltq
	addl	192(%rbp,%rax,8), %r15d
	andl	$16777215, %r15d
.L9630:
	movzbl	1(%rdi), %ebx
	xorl	%eax, %eax
	movb	$6, 130(%rbp)
	addq	$6, 136(%rbp)
	cmpl	$83, %r14d
	setbe	%al
	movzbl	%bl, %r13d
	movq	%rax, 16(%rsp)
	jbe	.L9802
.L9632:
	cmpl	$83, %r15d
	jbe	.L9803
.L9634:
	testl	%r13d, %r13d
	je	.L9804
	movl	8(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	0(%rbp,%rax,4), %rax
	movq	%rax, 32(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L9646
	leal	1(%rax), %edx
	movl	%r14d, %esi
	shrl	$11, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	0(%rbp,%rsi,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbp,%rdx,8)
	jne	.L9805
.L9647:
	movzbl	97(%rbp), %ecx
	testb	%cl, %cl
	jne	.L9806
.L9648:
	movl	%r14d, %edx
	andl	$14680064, %edx
	orl	2224(%rbp), %edx
	cmpl	10424(%rax), %edx
	jne	.L9719
	testb	$1, 46264(%rbp,%rsi)
	je	.L9719
	movq	35000(%rax), %r11
	movl	%r14d, %ebx
	movzbl	%cl, %r8d
	movq	%r11, 984(%rbp)
	xorq	26808(%rax), %rbx
.L9650:
	movl	56(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	0(%rbp,%rax,4), %rax
	movq	%rax, 24(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L9651
	leal	1(%rax), %edx
	movl	%r15d, %esi
	shrl	$11, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	0(%rbp,%rsi,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbp,%rdx,8)
	jne	.L9807
.L9652:
	testb	%r8b, %r8b
	jne	.L9808
.L9653:
	movl	%r15d, %edx
	andl	$14680064, %edx
	orl	2224(%rbp), %edx
	cmpl	10424(%rax), %edx
	jne	.L9651
	testb	$4, 46264(%rbp,%rsi)
	je	.L9651
	movl	%r15d, %r12d
	xorq	26808(%rax), %r12
.L9654:
	movl	$2047, %r10d
	movl	%r14d, %eax
	subl	%r13d, %r10d
	andl	$2047, %eax
	cmpl	%r10d, %eax
	jg	.L9655
	movl	%r15d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r10d
	jl	.L9656
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%r12, %rbx
	movl	$1, %esi
	je	.L9809
	.p2align 4,,10
	.p2align 3
.L9773:
	movzbl	(%r12,%rax), %edx
	xorb	%dl, (%rbx,%rax)
	cmovne	%esi, %ecx
	addq	$1, %rax
	cmpl	%eax, %r13d
	jge	.L9773
.L9664:
	orb	$6, (%r11)
.L9677:
	cmpq	$0, 16(%rsp)
	movb	%cl, 100(%rbp)
	jne	.L9810
.L9628:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L9809:
	.cfi_restore_state
	leal	1(%r13), %edx
	movq	%rbx, %rdi
	movslq	%edx, %rdx
	cmpq	$8, %rdx
	jae	.L9811
.L9658:
	testb	$4, %dl
	jne	.L9812
.L9661:
	testb	$2, %dl
	jne	.L9813
.L9662:
	andl	$1, %edx
	.p2align 4,,2
	jne	.L9814
	xorl	%ecx, %ecx
	.p2align 4,,3
	jmp	.L9664
.L9814:
	movb	$0, (%rdi)
	xorl	%ecx, %ecx
	jmp	.L9664
.L9813:
	xorl	%eax, %eax
	addq	$2, %rdi
	movw	%ax, -2(%rdi)
	jmp	.L9662
.L9812:
	movl	$0, (%rdi)
	addq	$4, %rdi
	jmp	.L9661
.L9811:
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep stosq
	jmp	.L9658
.L9807:
	movzbl	44216(%rbp,%rsi), %edi
	testb	%dil, 1976(%rbp,%rdx)
	jne	.L9652
.L9651:
	movl	56(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbp, %rdx
	movl	%r15d, %edi
	movq	%r11, 40(%rsp)
	call	s370_logical_to_main_l
	movq	40(%rsp), %r11
	movq	%rax, %r12
	jmp	.L9654
.L9806:
	cmpb	43192(%rbp,%rsi), %cl
	je	.L9648
.L9719:
	movzbl	%cl, %r8d
.L9649:
	movl	8(%rsp), %esi
	movzbl	%bl, %r9d
	movl	$1, %ecx
	movq	%rbp, %rdx
	movl	%r14d, %edi
	call	s370_logical_to_main_l
	movq	984(%rbp), %r11
	movq	%rax, %rbx
	movzbl	97(%rbp), %r8d
	jmp	.L9650
.L9805:
	movzbl	44216(%rbp,%rsi), %ecx
	testb	%cl, 1976(%rbp,%rdx)
	jne	.L9647
.L9646:
	movzbl	97(%rbp), %r8d
	jmp	.L9649
.L9808:
	cmpb	43192(%rbp,%rsi), %r8b
	je	.L9653
	jmp	.L9651
.L9802:
	leal	(%r14,%r13), %eax
	cmpl	$79, %eax
	jbe	.L9632
	movq	%rbp, %rdi
	call	s370_store_int_timer
	jmp	.L9632
.L9804:
	movl	56(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L9636
	leal	1(%rax), %edx
	movl	%r15d, %eax
	shrl	$11, %eax
	movslq	%edx, %rdx
	andl	$1023, %eax
	leaq	0(%rbp,%rax,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbp,%rdx,8)
	jne	.L9815
.L9637:
	movzbl	97(%rbp), %edx
	testb	%dl, %dl
	jne	.L9816
.L9638:
	movl	%r15d, %esi
	andl	$14680064, %esi
	orl	2224(%rbp), %esi
	cmpl	10424(%rcx), %esi
	jne	.L9716
	testb	$4, 46264(%rbp,%rax)
	je	.L9716
	xorq	26808(%rcx), %r15
	movzbl	%dl, %r8d
.L9640:
	movl	8(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L9641
	leal	1(%rax), %esi
	movl	%r14d, %eax
	shrl	$11, %eax
	movslq	%esi, %rsi
	andl	$1023, %eax
	leaq	0(%rbp,%rax,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbp,%rsi,8)
	jne	.L9817
.L9642:
	testb	%r8b, %r8b
	jne	.L9818
.L9643:
	movl	%r14d, %esi
	andl	$14680064, %esi
	orl	2224(%rbp), %esi
	cmpl	10424(%rcx), %esi
	jne	.L9641
	testb	$2, 46264(%rbp,%rax)
	je	.L9641
	xorq	26808(%rcx), %r14
.L9644:
	movzbl	(%r14), %eax
	xorb	(%r15), %al
	testb	%al, %al
	movb	%al, (%r14)
	setne	100(%rbp)
	jmp	.L9628
.L9803:
	leal	(%r15,%r13), %eax
	cmpl	$79, %eax
	jbe	.L9634
	movq	%rbp, %rdi
	call	s370_store_int_timer
	jmp	.L9634
.L9818:
	cmpb	%r8b, 43192(%rbp,%rax)
	je	.L9643
.L9641:
	movl	8(%rsp), %esi
	movl	%r14d, %edi
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbp, %rdx
	call	s370_logical_to_main_l
	movq	%rax, %r14
	jmp	.L9644
.L9817:
	movzbl	44216(%rbp,%rax), %edi
	testb	%dil, 1976(%rbp,%rsi)
	jne	.L9642
	jmp	.L9641
.L9816:
	cmpb	43192(%rbp,%rax), %dl
	je	.L9638
.L9716:
	movzbl	%dl, %r8d
.L9639:
	movl	56(%rsp), %esi
	movl	%r15d, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbp, %rdx
	call	s370_logical_to_main_l
	movzbl	97(%rbp), %r8d
	movq	%rax, %r15
	jmp	.L9640
.L9815:
	movzbl	44216(%rbp,%rax), %esi
	testb	%sil, 1976(%rbp,%rdx)
	jne	.L9637
.L9636:
	movzbl	97(%rbp), %r8d
	jmp	.L9639
.L9655:
	movl	$2048, 40(%rsp)
	subl	%eax, 40(%rsp)
	movq	32(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L9678
	leal	1(%rax), %esi
	movl	40(%rsp), %eax
	movslq	%esi, %rsi
	leal	(%rax,%r14), %ecx
	movl	%ecx, %edi
	andl	$16777215, %edi
	movl	%edi, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	0(%rbp,%rdx,8), %rax
	movl	2232(%rax), %r9d
	cmpl	%r9d, 320(%rbp,%rsi,8)
	jne	.L9819
.L9679:
	movzbl	97(%rbp), %r8d
	testb	%r8b, %r8b
	jne	.L9820
.L9681:
	andl	$14680064, %ecx
	orl	2224(%rbp), %ecx
	cmpl	10424(%rax), %ecx
	jne	.L9680
	testb	$1, 46264(%rbp,%rdx)
	je	.L9680
	movq	35000(%rax), %rcx
	movq	%rdi, 8(%rsp)
	movq	%rcx, 984(%rbp)
	movq	26808(%rax), %rax
	movq	%rcx, 32(%rsp)
	xorq	%rax, 8(%rsp)
.L9682:
	movl	%r15d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r10d
	jl	.L9683
	movq	%rbx, %rax
	xorl	%ecx, %ecx
	movl	$1, %esi
.L9685:
	addq	$1, %r12
	movzbl	-1(%r12), %edx
	addq	$1, %rax
	xorb	%dl, -1(%rax)
	movl	%eax, %edx
	cmovne	%esi, %ecx
	subl	%ebx, %edx
	cmpl	%edx, 40(%rsp)
	jg	.L9685
	movl	%r13d, %edi
	subl	40(%rsp), %edi
	js	.L9686
	movq	8(%rsp), %r8
	xorl	%eax, %eax
	movl	$1, %esi
.L9687:
	movzbl	(%r12,%rax), %edx
	xorb	%dl, (%r8,%rax)
	cmovne	%esi, %ecx
	addq	$1, %rax
	cmpl	%eax, %edi
	jge	.L9687
.L9686:
	orb	$6, (%r11)
	movq	32(%rsp), %rax
	orb	$6, (%rax)
	jmp	.L9677
.L9810:
	addl	%r14d, %r13d
	cmpl	$79, %r13d
	jbe	.L9628
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
.L9656:
	.cfi_restore_state
	movl	$2048, %r10d
	subl	%eax, %r10d
	movq	24(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L9667
	leal	(%r10,%r15), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	0(%rbp,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbp,%rsi,8)
	jne	.L9821
.L9668:
	movzbl	97(%rbp), %r8d
	testb	%r8b, %r8b
	jne	.L9822
.L9670:
	andl	$14680064, %ecx
	orl	2224(%rbp), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L9669
	testb	$4, 46264(%rbp,%rax)
	je	.L9669
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L9671:
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	movl	$1, %edi
.L9673:
	addq	$1, %rdx
	movzbl	-1(%rdx), %esi
	addq	$1, %rbx
	xorb	%sil, -1(%rbx)
	movl	%edx, %esi
	cmovne	%edi, %ecx
	subl	%r12d, %esi
	cmpl	%esi, %r10d
	jg	.L9673
	movl	%r13d, %edi
	xorl	%edx, %edx
	movl	$1, %r8d
	subl	%r10d, %edi
	js	.L9664
.L9796:
	movzbl	(%rax,%rdx), %esi
	xorb	%sil, (%rbx,%rdx)
	cmovne	%r8d, %ecx
	addq	$1, %rdx
	cmpl	%edx, %edi
	jge	.L9796
	jmp	.L9664
.L9683:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movq	24(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L9688
	leal	(%r10,%r15), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	0(%rbp,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbp,%rsi,8)
	jne	.L9823
.L9689:
	movzbl	97(%rbp), %r8d
	testb	%r8b, %r8b
	jne	.L9824
.L9691:
	andl	$14680064, %ecx
	orl	2224(%rbp), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L9690
	testb	$4, 46264(%rbp,%rax)
	je	.L9690
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L9692:
	cmpl	%r10d, 40(%rsp)
	je	.L9825
	movq	%rbx, %rdx
	movl	$0, %ecx
	movl	$1, %edi
	jge	.L9705
.L9699:
	addq	$1, %r12
	movzbl	-1(%r12), %esi
	addq	$1, %rdx
	xorb	%sil, -1(%rdx)
	movl	%edx, %esi
	cmovne	%edi, %ecx
	subl	%ebx, %esi
	cmpl	40(%rsp), %esi
	jl	.L9699
	movl	%r10d, %edi
	subl	40(%rsp), %edi
	testl	%edi, %edi
	jle	.L9700
	movq	8(%rsp), %r9
	xorl	%edx, %edx
	movl	$1, %r8d
.L9702:
	movzbl	(%r12,%rdx), %esi
	xorb	%sil, (%r9,%rdx)
	cmovne	%r8d, %ecx
	addq	$1, %rdx
	cmpl	%edx, %edi
	jg	.L9702
	movq	8(%rsp), %rbx
	subl	$1, %edi
	leaq	1(%rbx,%rdi), %rdi
	movq	%rdi, 8(%rsp)
.L9700:
	movl	%r13d, %r8d
	subl	%r10d, %r8d
	js	.L9686
	movq	8(%rsp), %r9
	xorl	%edx, %edx
	movl	$1, %edi
.L9703:
	movzbl	(%rax,%rdx), %esi
	xorb	%sil, (%r9,%rdx)
	cmovne	%edi, %ecx
	addq	$1, %rdx
	cmpl	%edx, %r8d
	jge	.L9703
	jmp	.L9686
.L9705:
	addq	$1, %r12
	movzbl	-1(%r12), %esi
	addq	$1, %rdx
	xorb	%sil, -1(%rdx)
	movl	%edx, %esi
	cmovne	%edi, %ecx
	subl	%ebx, %esi
	cmpl	%esi, %r10d
	jg	.L9705
	movl	40(%rsp), %r8d
	subl	%r10d, %r8d
	testl	%r8d, %r8d
	jle	.L9706
	xorl	%esi, %esi
	movl	$1, %r9d
.L9708:
	movzbl	(%rax,%rsi), %edi
	xorb	%dil, (%rdx,%rsi)
	cmovne	%r9d, %ecx
	addq	$1, %rsi
	cmpl	%esi, %r8d
	jg	.L9708
	subl	$1, %r8d
	leaq	1(%rax,%r8), %rax
.L9706:
	movl	%r13d, %r8d
	subl	40(%rsp), %r8d
	js	.L9686
	movq	8(%rsp), %r9
	xorl	%edx, %edx
	movl	$1, %edi
.L9709:
	movzbl	(%rax,%rdx), %esi
	xorb	%sil, (%r9,%rdx)
	cmovne	%edi, %ecx
	addq	$1, %rdx
	cmpl	%edx, %r8d
	jge	.L9709
	jmp	.L9686
.L9825:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %edi
.L9695:
	movzbl	(%r12,%rdx), %esi
	xorb	%sil, (%rbx,%rdx)
	cmovne	%edi, %ecx
	addq	$1, %rdx
	cmpl	%edx, 40(%rsp)
	jg	.L9695
	movl	%r13d, %r8d
	subl	40(%rsp), %r8d
	js	.L9686
	movq	8(%rsp), %r9
	xorl	%edx, %edx
	movl	$1, %edi
.L9696:
	movzbl	(%rax,%rdx), %esi
	xorb	%sil, (%r9,%rdx)
	cmovne	%edi, %ecx
	addq	$1, %rdx
	cmpl	%edx, %r8d
	jge	.L9696
	jmp	.L9686
.L9823:
	movzbl	44216(%rbp,%rax), %r8d
	testb	%r8b, 1976(%rbp,%rsi)
	jne	.L9689
.L9801:
	movzbl	97(%rbp), %r8d
.L9690:
	movl	56(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbp, %rdx
	movl	%r10d, 48(%rsp)
	movq	%r11, 24(%rsp)
	call	s370_logical_to_main_l
	movl	48(%rsp), %r10d
	movq	24(%rsp), %r11
	jmp	.L9692
.L9824:
	cmpb	43192(%rbp,%rax), %r8b
	je	.L9691
	jmp	.L9690
.L9688:
	leal	(%r10,%r15), %edi
	andl	$16777215, %edi
	jmp	.L9801
.L9821:
	movzbl	44216(%rbp,%rax), %r8d
	testb	%r8b, 1976(%rbp,%rsi)
	jne	.L9668
.L9800:
	movzbl	97(%rbp), %r8d
.L9669:
	movl	56(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbp, %rdx
	movl	%r10d, 24(%rsp)
	movq	%r11, 8(%rsp)
	call	s370_logical_to_main_l
	movl	24(%rsp), %r10d
	movq	8(%rsp), %r11
	jmp	.L9671
.L9822:
	cmpb	43192(%rbp,%rax), %r8b
	je	.L9670
	jmp	.L9669
.L9667:
	leal	(%r10,%r15), %edi
	andl	$16777215, %edi
	jmp	.L9800
.L9819:
	movzbl	44216(%rbp,%rdx), %r8d
	testb	%r8b, 1976(%rbp,%rsi)
	jne	.L9679
	movzbl	97(%rbp), %r8d
.L9680:
	movl	8(%rsp), %esi
	movl	$1, %r9d
	movl	$1, %ecx
	movq	%rbp, %rdx
	movl	%r10d, 60(%rsp)
	movq	%r11, 48(%rsp)
	call	s370_logical_to_main_l
	movl	60(%rsp), %r10d
	movq	%rax, 8(%rsp)
	movq	984(%rbp), %rax
	movq	48(%rsp), %r11
	movq	%rax, 32(%rsp)
	jmp	.L9682
.L9820:
	cmpb	43192(%rbp,%rdx), %r8b
	je	.L9681
	jmp	.L9680
.L9678:
	movl	40(%rsp), %eax
	movzbl	97(%rbp), %r8d
	leal	(%rax,%r14), %edi
	andl	$16777215, %edi
	jmp	.L9680
	.cfi_endproc
.LFE835:
	.size	s370_exclusive_or_character, .-s370_exclusive_or_character
	.p2align 4,,15
	.globl	s370_execute
	.type	s370_execute, @function
s370_execute:
.LFB836:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	movl	%eax, %ecx
	shrl	$20, %ebp
	shrl	$16, %ecx
	movl	%eax, %edx
	andl	$4095, %edx
	andl	$15, %ebp
	andl	$15, %ecx
	movl	%edx, 800(%rsi)
	jne	.L9856
.L9827:
	shrl	$12, %eax
	andl	$15, %eax
	je	.L9828
	cltq
	addl	192(%rbx,%rax,8), %edx
.L9828:
	movl	%edx, %eax
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %eax
	andl	$1, %edx
	movl	%eax, 800(%rbx)
	jne	.L9857
.L9829:
	leaq	1014(%rbx), %r12
	movl	%eax, %edx
	andl	$2147481601, %edx
	movq	$0, 1014(%rbx)
	cmpl	168(%rbx), %edx
	jne	.L9830
	andl	$2047, %eax
	orq	144(%rbx), %rax
	cmpq	160(%rbx), %rax
	jae	.L9830
.L9831:
	cmpq	%r12, %rax
	je	.L9832
	movq	(%rax), %rax
	movq	%rax, 1014(%rbx)
.L9832:
	movzbl	1014(%rbx), %eax
	cmpb	$68, %al
	je	.L9833
	cmpb	$-58, %al
	movzbl	1015(%rbx), %ecx
	movl	%eax, %edx
	je	.L9834
.L9835:
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.L9836
	movslq	%ebp, %rbp
	movzbl	192(%rbx,%rbp,8), %eax
.L9836:
	orl	%ecx, %eax
	movb	%al, 1015(%rbx)
	movzbl	808(%rbx), %eax
	orl	$1, %eax
	andl	$-3, %eax
	cmpb	$63, %dl
	movb	%al, 808(%rbx)
	movq	136(%rbx), %rax
	jbe	.L9837
	cmpb	$-64, %dl
	sbbq	%rdx, %rdx
	andl	$2, %edx
	leaq	-6(%rax,%rdx), %rax
	movq	2080(%rbx), %rdx
	movq	%rax, 136(%rbx)
	movzwl	1014(%rbx), %eax
.L9840:
#APP
# 4413 "general1.c" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
	movq	%rbx, %rsi
	movzwl	%ax, %eax
	movq	%r12, %rdi
	call	*(%rdx,%rax,8)
	movl	52(%rbx), %eax
	addl	$1, 880(%rbx)
	andl	56(%rbx), %eax
	testl	$16318464, %eax
	jne	.L9826
	andb	$-2, 808(%rbx)
.L9826:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9837:
	.cfi_restore_state
	subq	$2, %rax
	movq	2080(%rbx), %rdx
	movq	%rax, 136(%rbx)
	movzwl	1014(%rbx), %eax
	jmp	.L9840
	.p2align 4,,10
	.p2align 3
.L9857:
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	movl	800(%rbx), %eax
	jmp	.L9829
	.p2align 4,,10
	.p2align 3
.L9834:
	testb	$15, %cl
	jne	.L9835
.L9833:
	movl	$3, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	movzbl	1015(%rbx), %ecx
	movzbl	1014(%rbx), %edx
	jmp	.L9835
.L9830:
	movq	%rbx, %rdi
	call	s370_instfetch.constprop.20
	jmp	.L9831
.L9856:
	movslq	%ecx, %rcx
	addl	192(%rsi,%rcx,8), %edx
	movl	%edx, 800(%rsi)
	jmp	.L9827
	.cfi_endproc
.LFE836:
	.size	s370_execute, .-s370_execute
	.p2align 4,,15
	.globl	s370_execute_relative_long
	.type	s370_execute_relative_long, @function
s370_execute_relative_long:
.LFB837:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	2(%rdi), %eax
	movzbl	1(%rdi), %edx
	bswap	%eax
	cltq
	shrb	$4, %dl
	addq	%rax, %rax
	testb	$1, 808(%rsi)
	movzbl	%dl, %r12d
	jne	.L9859
	movq	136(%rsi), %rcx
	movq	%rcx, %rdx
	subq	144(%rsi), %rdx
	addl	168(%rsi), %edx
	addl	%edx, %eax
	andl	$16777215, %eax
.L9860:
	movl	%eax, %edx
	addq	$6, %rcx
	movl	%eax, 800(%rbx)
	andl	$2147481601, %edx
	movq	%rcx, 136(%rbx)
	cmpl	168(%rbx), %edx
	movb	$6, 130(%rbx)
	leaq	1014(%rbx), %rbp
	movq	$0, 1014(%rbx)
	jne	.L9861
	andl	$2047, %eax
	orq	144(%rbx), %rax
	cmpq	160(%rbx), %rax
	jae	.L9861
.L9862:
	cmpq	%rbp, %rax
	je	.L9863
	movq	(%rax), %rax
	movq	%rax, 1014(%rbx)
.L9863:
	movzbl	1014(%rbx), %eax
	cmpb	$68, %al
	je	.L9864
	cmpb	$-58, %al
	movzbl	1015(%rbx), %ecx
	je	.L9865
.L9866:
	xorl	%edx, %edx
	testl	%r12d, %r12d
	je	.L9867
	movzbl	192(%rbx,%r12,8), %edx
.L9867:
	orb	$3, 808(%rbx)
	orl	%ecx, %edx
	cmpb	$63, %al
	movb	%dl, 1015(%rbx)
	movq	136(%rbx), %rdx
	jbe	.L9868
	cmpb	$-64, %al
	sbbq	%rax, %rax
	andl	$2, %eax
	leaq	-6(%rdx,%rax), %rax
	movq	2080(%rbx), %rdx
	movq	%rax, 136(%rbx)
	movzwl	1014(%rbx), %eax
.L9871:
#APP
# 4484 "general1.c" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
	movq	%rbx, %rsi
	movzwl	%ax, %eax
	movq	%rbp, %rdi
	call	*(%rdx,%rax,8)
	movl	52(%rbx), %eax
	addl	$1, 880(%rbx)
	andl	56(%rbx), %eax
	testl	$16318464, %eax
	jne	.L9858
	andb	$-2, 808(%rbx)
.L9858:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9868:
	.cfi_restore_state
	subq	$2, %rdx
	movzwl	1014(%rbx), %eax
	movq	%rdx, 136(%rbx)
	movq	2080(%rbx), %rdx
	jmp	.L9871
	.p2align 4,,10
	.p2align 3
.L9865:
	testb	$15, %cl
	jne	.L9866
.L9864:
	movl	$3, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	movzbl	1015(%rbx), %ecx
	movzbl	1014(%rbx), %eax
	jmp	.L9866
.L9861:
	movq	%rbx, %rdi
	call	s370_instfetch.constprop.20
	jmp	.L9862
.L9859:
	addl	800(%rsi), %eax
	movq	136(%rsi), %rcx
	andl	$16777215, %eax
	jmp	.L9860
	.cfi_endproc
.LFE837:
	.size	s370_execute_relative_long, .-s370_execute_relative_long
	.p2align 4,,15
	.globl	s370_insert_characters_under_mask
	.type	s370_insert_characters_under_mask, @function
s370_insert_characters_under_mask:
.LFB838:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %r13d
	movl	%ebp, %r12d
	shrl	$16, %r13d
	movl	%ebp, %r15d
	shrl	$20, %r12d
	movl	%r13d, %r14d
	shrl	$12, %r15d
	andl	$15, %r12d
	andl	$15, %r14d
	andl	$4095, %ebp
	andl	$15, %r15d
	je	.L9881
	movslq	%r15d, %rax
	addl	192(%rsi,%rax,8), %ebp
	andl	$16777215, %ebp
.L9881:
	addq	$4, 136(%rbx)
	cmpl	$7, %r14d
	movb	$4, 130(%rbx)
	je	.L9883
	cmpl	$15, %r14d
	jne	.L10035
	testb	$3, %bpl
	jne	.L10036
.L9902:
	leal	-77(%rbp), %eax
	cmpl	$6, %eax
	jbe	.L10037
.L9904:
	leal	5(%r15), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L9905
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L10038
.L9906:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L10039
.L9907:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L9905
	testb	$4, 46264(%rbx,%rcx)
	je	.L9905
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L9908:
	movl	(%rax), %eax
	bswap	%eax
.L9909:
	movslq	%r12d, %r12
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%eax, 192(%rbx,%r12,8)
	je	.L9910
	sarl	$31, %eax
	leal	2(%rax), %edx
.L9910:
	movb	%dl, 100(%rbx)
.L9880:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L10035:
	.cfi_restore_state
	movslq	%r14d, %r11
	movl	$0, 32(%rsp)
	movzbl	icmlen.36614(,%r11,4), %eax
	movl	%eax, (%rsp)
	leal	5(%r15), %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 8(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L9911
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L10040
.L9912:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L10041
.L9913:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L9911
	testb	$4, 46264(%rbx,%rcx)
	je	.L9911
	movl	%ebp, %r10d
	xorq	26808(%rdx), %r10
.L9914:
	movl	$2047, %eax
	movl	%ebp, %edx
	subl	(%rsp), %eax
	andl	$2047, %edx
	cmpl	%eax, %edx
	jg	.L9915
	cmpl	$83, %ebp
	jbe	.L10042
.L9917:
	movl	(%rsp), %edx
	leaq	32(%rsp), %rdi
	movq	%r10, %rsi
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpq	$8, %rdx
	jae	.L10043
	xorl	%eax, %eax
	testb	$4, %dl
	jne	.L10044
.L9921:
	testb	$2, %dl
	jne	.L10045
.L9922:
	andl	$1, %edx
	jne	.L10046
.L9924:
	testl	%r14d, %r14d
	.p2align 4,,2
	jne	.L9933
.L10051:
	movb	$0, 32(%rsp)
.L9933:
	movl	32(%rsp), %eax
	xorl	%edx, %edx
	bswap	%eax
	testl	%eax, %eax
	je	.L9934
	sarl	$31, %eax
	leal	2(%rax), %edx
.L9934:
	movb	%dl, 100(%rbx)
	movl	icmmask.36615(,%r11,4), %edx
	movslq	%r12d, %r12
	leaq	(%rbx,%r12,8), %rax
	andl	192(%rax), %edx
	testb	$8, %r13b
	movl	%edx, 192(%rax)
	jne	.L10047
	movl	$2, %edi
	movl	$1, %esi
	xorl	%ecx, %ecx
.L9935:
	testb	$4, %r13b
	je	.L9936
	movzbl	32(%rsp,%rcx), %ecx
	sall	$16, %ecx
	orl	%edx, %ecx
	movl	%ecx, 192(%rax)
	movl	%ecx, %edx
	movslq	%esi, %rcx
	movl	%edi, %esi
.L9936:
	testb	$2, %r13b
	je	.L9937
	movzbl	32(%rsp,%rcx), %ecx
	sall	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 192(%rax)
	movl	%ecx, %edx
	movslq	%esi, %rcx
.L9937:
	andl	$1, %r13d
	je	.L9880
	movzbl	32(%rsp,%rcx), %ecx
	orl	%edx, %ecx
	movl	%ecx, 192(%rax)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9883:
	.cfi_restore_state
	leal	5(%r15), %eax
	movb	$0, 32(%rsp)
	cltq
	leaq	(%rbx,%rax,4), %r14
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L9885
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L10048
.L9886:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L10049
.L9887:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L9885
	testb	$4, 46264(%rbx,%rcx)
	je	.L9885
	movl	%ebp, %r13d
	xorq	26808(%rdx), %r13
.L9888:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2045, %eax
	jg	.L9889
	subl	$78, %ebp
	cmpl	$5, %ebp
	jbe	.L10050
.L9890:
	movzwl	0(%r13), %eax
	movw	%ax, 33(%rsp)
	movzbl	2(%r13), %eax
	movb	%al, 35(%rsp)
.L9891:
	movslq	%r12d, %r12
	movl	32(%rsp), %edx
	leaq	(%rbx,%r12,8), %rcx
	movl	192(%rcx), %eax
	bswap	%edx
	andl	$-16777216, %eax
	orl	%edx, %eax
	movl	%eax, 192(%rcx)
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L9900
	andl	$8388608, %edx
	cmpl	$1, %edx
	sbbl	%eax, %eax
	notl	%eax
	addl	$2, %eax
.L9900:
	movb	%al, 100(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L10047:
	.cfi_restore_state
	movzbl	32(%rsp), %ecx
	movl	$3, %edi
	movl	$2, %esi
	sall	$24, %ecx
	orl	%edx, %ecx
	movl	%ecx, 192(%rax)
	movl	%ecx, %edx
	movl	$1, %ecx
	jmp	.L9935
	.p2align 4,,10
	.p2align 3
.L10046:
	movzbl	(%rsi,%rax), %edx
	testl	%r14d, %r14d
	movb	%dl, (%rdi,%rax)
	jne	.L9933
	jmp	.L10051
	.p2align 4,,10
	.p2align 3
.L10045:
	movzwl	(%rsi,%rax), %ecx
	movw	%cx, (%rdi,%rax)
	addq	$2, %rax
	andl	$1, %edx
	je	.L9924
	jmp	.L10046
	.p2align 4,,10
	.p2align 3
.L10044:
	movl	(%rsi), %eax
	testb	$2, %dl
	movl	%eax, (%rdi)
	movl	$4, %eax
	je	.L9922
	jmp	.L10045
	.p2align 4,,10
	.p2align 3
.L10043:
	cmpq	$127, %rdx
	ja	.L10052
	movq	%rdx, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	testb	$4, %dl
	rep movsq
	je	.L9921
	jmp	.L10044
	.p2align 4,,10
	.p2align 3
.L10052:
	movq	%r11, (%rsp)
	call	memcpy
	movq	(%rsp), %r11
	jmp	.L9924
.L10048:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L9886
.L9885:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	movq	%rax, %r13
	jmp	.L9888
.L10040:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L9912
.L9911:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%ebp, %edi
	movq	%r11, 16(%rsp)
	call	s370_logical_to_main_l
	movq	16(%rsp), %r11
	movq	%rax, %r10
	jmp	.L9914
.L10038:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L9906
.L9905:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L9908
.L10042:
	addl	(%rsp), %ebp
	cmpl	$79, %ebp
	jbe	.L9917
	movq	%rbx, %rdi
	movq	%r11, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_store_int_timer
	movq	16(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L9917
.L10049:
	cmpb	43192(%rbx,%rcx), %al
	je	.L9887
	jmp	.L9885
.L9889:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L10053
	leal	1(%rax), %ecx
	addl	%r10d, %ebp
	movl	%ebp, %r14d
	movslq	%ecx, %rcx
	andl	$16777215, %r14d
	movl	%r14d, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L10054
.L9893:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L10055
.L9894:
	movl	%ebp, %ecx
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L9892
	testb	$4, 46264(%rbx,%rax)
	je	.L9892
	xorq	26808(%rdx), %r14
.L9895:
	movl	%r10d, %r15d
	leaq	32(%rsp), %rbp
	cmpq	$127, %r15
	leaq	1(%rbp), %rax
	ja	.L10056
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rcx
	rep movsb
.L9897:
	leaq	1(%rbp,%r15), %rax
	movl	$3, %edx
	subl	%r10d, %edx
	movslq	%edx, %rdx
	cmpq	$127, %rdx
	ja	.L10057
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rdx, %rcx
	rep movsb
	jmp	.L9891
.L10041:
	cmpb	43192(%rbx,%rcx), %al
	je	.L9913
	jmp	.L9911
.L9915:
	movq	8(%rsp), %rax
	movl	$2048, 16(%rsp)
	subl	%edx, 16(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L10058
	addl	16(%rsp), %ebp
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	movl	%ebp, %esi
	andl	$16777215, %esi
	movl	%esi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L10059
.L9926:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L10060
.L9927:
	movl	%ebp, %ecx
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L9925
	testb	$4, 46264(%rbx,%rax)
	je	.L9925
	movl	%esi, %r15d
	xorq	26808(%rdx), %r15
.L9928:
	movl	16(%rsp), %r8d
	leaq	32(%rsp), %rbp
	cmpq	$127, %r8
	ja	.L10061
	movq	%rbp, %rdi
	movq	%r10, %rsi
	movq	%r8, %rcx
	rep movsb
.L9930:
	movl	(%rsp), %edx
	addq	%rbp, %r8
	addl	$1, %edx
	subl	16(%rsp), %edx
	movslq	%edx, %rdx
	cmpq	$127, %rdx
	ja	.L10062
	movq	%r8, %rdi
	movq	%r15, %rsi
	movq	%rdx, %rcx
	rep movsb
	jmp	.L9924
.L10036:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2044, %eax
	jbe	.L9902
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%ebp, %edi
	call	s370_vfetch4_full
	jmp	.L9909
.L10050:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L9890
.L10039:
	cmpb	43192(%rbx,%rcx), %al
	je	.L9907
	.p2align 4,,4
	jmp	.L9905
.L10037:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L9904
.L10053:
	addl	%r10d, %ebp
.L9892:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	$1, %r9d
	andl	$16777215, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	%r10d, (%rsp)
	call	s370_logical_to_main_l
	movl	(%rsp), %r10d
	movq	%rax, %r14
	jmp	.L9895
.L10055:
	cmpb	43192(%rbx,%rax), %cl
	je	.L9894
	jmp	.L9892
.L10054:
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L9893
	jmp	.L9892
.L10057:
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	memcpy
	.p2align 4,,2
	jmp	.L9891
.L10056:
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	call	memcpy
	movl	(%rsp), %r10d
	jmp	.L9897
.L10062:
	movq	%r15, %rsi
	movq	%r8, %rdi
	movq	%r11, (%rsp)
	call	memcpy
	movq	(%rsp), %r11
	jmp	.L9924
.L10061:
	movq	%r8, %rdx
	movq	%r10, %rsi
	movq	%rbp, %rdi
	movq	%r11, 24(%rsp)
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %r8
	movq	24(%rsp), %r11
	jmp	.L9930
.L10058:
	movl	16(%rsp), %eax
	addl	%eax, %ebp
.L9925:
	movzbl	97(%rbx), %r8d
	movl	%ebp, %edi
	movl	%r15d, %esi
	andl	$16777215, %edi
	movl	$1, %r9d
	movq	%rbx, %rdx
	movl	$4, %ecx
	movq	%r11, 24(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r11
	movq	%rax, %r15
	movq	8(%rsp), %r10
	jmp	.L9928
.L10060:
	cmpb	43192(%rbx,%rax), %cl
	je	.L9927
	jmp	.L9925
.L10059:
	movzbl	44216(%rbx,%rax), %edi
	testb	%dil, 1976(%rbx,%rcx)
	jne	.L9926
	jmp	.L9925
	.cfi_endproc
.LFE838:
	.size	s370_insert_characters_under_mask, .-s370_insert_characters_under_mask
	.p2align 4,,15
	.globl	s370_BF_7
	.type	s370_BF_7, @function
s370_BF_7:
.LFB839:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %r13d
	movl	%ebp, %esi
	shrl	$20, %r13d
	shrl	$12, %esi
	andl	$4095, %ebp
	andl	$15, %r13d
	andl	$15, %esi
	movl	%esi, %r14d
	je	.L10064
	movslq	%esi, %rax
	addl	192(%rbx,%rax,8), %ebp
	andl	$16777215, %ebp
.L10064:
	addq	$4, 136(%rbx)
	leal	5(%r14), %eax
	movb	$0, 16(%rsp)
	cltq
	movb	$4, 130(%rbx)
	leaq	(%rbx,%rax,4), %r15
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L10065
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L10112
.L10066:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L10113
.L10067:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10065
	testb	$4, 46264(%rbx,%rcx)
	je	.L10065
	movl	%ebp, %r12d
	xorq	26808(%rdx), %r12
.L10068:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2045, %eax
	jg	.L10069
	subl	$78, %ebp
	cmpl	$5, %ebp
	jbe	.L10114
.L10070:
	movzwl	(%r12), %eax
	movw	%ax, 17(%rsp)
	movzbl	2(%r12), %eax
	movb	%al, 19(%rsp)
.L10071:
	movslq	%r13d, %r13
	movl	16(%rsp), %edx
	leaq	(%rbx,%r13,8), %rcx
	movl	192(%rcx), %eax
	bswap	%edx
	andl	$-16777216, %eax
	orl	%edx, %eax
	movl	%eax, 192(%rcx)
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L10080
	andl	$8388608, %edx
	cmpl	$1, %edx
	sbbl	%eax, %eax
	notl	%eax
	addl	$2, %eax
.L10080:
	movb	%al, 100(%rbx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L10112:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L10066
.L10065:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	movq	%rax, %r12
	jmp	.L10068
.L10069:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movl	1892(%r15), %eax
	testl	%eax, %eax
	je	.L10115
	leal	1(%rax), %esi
	leal	(%r10,%rbp), %eax
	movslq	%esi, %rsi
	movl	%eax, %ebp
	andl	$16777215, %ebp
	movl	%ebp, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbx,%rsi,8)
	jne	.L10116
.L10073:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L10117
.L10074:
	movl	%eax, %esi
	andl	$14680064, %esi
	orl	2224(%rbx), %esi
	cmpl	10424(%rcx), %esi
	jne	.L10072
	testb	$4, 46264(%rbx,%rdx)
	je	.L10072
	xorq	26808(%rcx), %rbp
.L10075:
	movl	%r10d, %r14d
	leaq	17(%rsp), %rax
	cmpq	$127, %r14
	ja	.L10118
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	rep movsb
.L10077:
	leaq	17(%rsp,%r14), %rax
	movl	$3, %edx
	subl	%r10d, %edx
	movslq	%edx, %rdx
	cmpq	$127, %rdx
	ja	.L10119
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%rdx, %rcx
	rep movsb
	jmp	.L10071
.L10113:
	cmpb	43192(%rbx,%rcx), %al
	je	.L10067
	jmp	.L10065
.L10114:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L10070
.L10119:
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	memcpy
	.p2align 4,,2
	jmp	.L10071
.L10118:
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movl	%r10d, 12(%rsp)
	call	memcpy
	movl	12(%rsp), %r10d
	jmp	.L10077
.L10115:
	leal	(%r10,%rbp), %eax
.L10072:
	movzbl	97(%rbx), %r8d
	andl	$16777215, %eax
	movl	$1, %r9d
	movl	%eax, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r10d, 12(%rsp)
	call	s370_logical_to_main_l
	movl	12(%rsp), %r10d
	movq	%rax, %rbp
	jmp	.L10075
.L10117:
	cmpb	43192(%rbx,%rdx), %sil
	je	.L10074
	jmp	.L10072
.L10116:
	movzbl	44216(%rbx,%rdx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L10073
	jmp	.L10072
	.cfi_endproc
.LFE839:
	.size	s370_BF_7, .-s370_BF_7
	.p2align 4,,15
	.globl	s370_BF_F
	.type	s370_BF_F, @function
s370_BF_F:
.LFB840:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %r12d
	movl	%ebp, %eax
	shrl	$20, %r12d
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %r12d
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L10121
	cltq
	addl	192(%rsi,%rax,8), %ebp
	andl	$16777215, %ebp
.L10121:
	addq	$4, 136(%rbx)
	testb	$3, %bpl
	movb	$4, 130(%rbx)
	jne	.L10153
.L10122:
	leal	-77(%rbp), %eax
	cmpl	$6, %eax
	jbe	.L10154
.L10124:
	leal	5(%r13), %eax
	cltq
	movl	1892(%rbx,%rax,4), %edx
	testl	%edx, %edx
	je	.L10125
	leal	1(%rdx), %eax
	movl	%ebp, %ecx
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L10155
.L10126:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L10156
.L10127:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10125
	testb	$4, 46264(%rbx,%rcx)
	je	.L10125
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L10128:
	movl	(%rax), %eax
	bswap	%eax
.L10129:
	movslq	%r12d, %r12
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%eax, 192(%rbx,%r12,8)
	je	.L10130
	sarl	$31, %eax
	leal	2(%rax), %edx
.L10130:
	movb	%dl, 100(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L10155:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L10126
.L10125:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L10128
.L10153:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2044, %eax
	jbe	.L10122
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	s370_vfetch4_full
	jmp	.L10129
.L10156:
	cmpb	43192(%rbx,%rcx), %al
	je	.L10127
	.p2align 4,,4
	jmp	.L10125
.L10154:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L10124
	.cfi_endproc
.LFE840:
	.size	s370_BF_F, .-s370_BF_F
	.p2align 4,,15
	.globl	s370_BF_x
	.type	s370_BF_x, @function
s370_BF_x:
.LFB841:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %r12d
	movl	%ebp, %r14d
	shrl	$16, %r12d
	movl	%ebp, %eax
	shrl	$20, %r14d
	movl	%r12d, %r10d
	shrl	$12, %eax
	andl	$15, %r14d
	andl	$15, %r10d
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, (%rsp)
	je	.L10158
	cltq
	addl	192(%rsi,%rax,8), %ebp
	movl	(%rsp), %eax
	andl	$16777215, %ebp
.L10158:
	addq	$4, 136(%rbx)
	addl	$5, %eax
	movslq	%r10d, %r11
	cltq
	movb	$4, 130(%rbx)
	movzbl	icmlen.36650(,%r11,4), %r15d
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 8(%rsp)
	movl	1892(%rax), %eax
	movl	$0, 32(%rsp)
	testl	%eax, %eax
	je	.L10159
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L10238
.L10160:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L10239
.L10161:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10159
	testb	$4, 46264(%rbx,%rcx)
	je	.L10159
	movl	%ebp, %r13d
	xorq	26808(%rdx), %r13
.L10162:
	movl	%ebp, %edx
	movl	$2047, %eax
	andl	$2047, %edx
	subl	%r15d, %eax
	cmpl	%eax, %edx
	jg	.L10163
	cmpl	$83, %ebp
	jbe	.L10240
.L10165:
	leaq	32(%rsp), %rdi
	addl	$1, %r15d
	movq	%r13, %rsi
	movslq	%r15d, %rdx
	cmpq	$8, %rdx
	jae	.L10241
.L10166:
	xorl	%eax, %eax
	testb	$4, %dl
	jne	.L10242
	testb	$2, %dl
	jne	.L10243
.L10170:
	andl	$1, %edx
	jne	.L10244
.L10172:
	testl	%r10d, %r10d
	.p2align 4,,2
	jne	.L10181
	movb	$0, 32(%rsp)
.L10181:
	movl	32(%rsp), %eax
	xorl	%edx, %edx
	bswap	%eax
	testl	%eax, %eax
	je	.L10182
	sarl	$31, %eax
	leal	2(%rax), %edx
.L10182:
	movb	%dl, 100(%rbx)
	movl	icmmask.36651(,%r11,4), %edx
	movslq	%r14d, %r14
	leaq	(%rbx,%r14,8), %rax
	andl	192(%rax), %edx
	testb	$8, %r12b
	movl	%edx, 192(%rax)
	je	.L10190
	movzbl	32(%rsp), %ecx
	movl	$3, %edi
	movl	$2, %esi
	sall	$24, %ecx
	orl	%edx, %ecx
	movl	%ecx, 192(%rax)
	movl	%ecx, %edx
	movl	$1, %ecx
.L10183:
	testb	$4, %r12b
	je	.L10184
	movzbl	32(%rsp,%rcx), %ecx
	sall	$16, %ecx
	orl	%edx, %ecx
	movl	%ecx, 192(%rax)
	movl	%ecx, %edx
	movslq	%esi, %rcx
	movl	%edi, %esi
.L10184:
	testb	$2, %r12b
	je	.L10185
	movzbl	32(%rsp,%rcx), %ecx
	sall	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 192(%rax)
	movl	%ecx, %edx
	movslq	%esi, %rcx
.L10185:
	andl	$1, %r12d
	je	.L10157
	movzbl	32(%rsp,%rcx), %ecx
	orl	%edx, %ecx
	movl	%ecx, 192(%rax)
.L10157:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L10190:
	.cfi_restore_state
	movl	$2, %edi
	movl	$1, %esi
	xorl	%ecx, %ecx
	jmp	.L10183
	.p2align 4,,10
	.p2align 3
.L10244:
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%rdi,%rax)
	jmp	.L10172
	.p2align 4,,10
	.p2align 3
.L10243:
	movzwl	(%rsi,%rax), %ecx
	movw	%cx, (%rdi,%rax)
	addq	$2, %rax
	andl	$1, %edx
	je	.L10172
	jmp	.L10244
	.p2align 4,,10
	.p2align 3
.L10242:
	movl	(%rsi), %eax
	testb	$2, %dl
	movl	%eax, (%rdi)
	movl	$4, %eax
	je	.L10170
	jmp	.L10243
	.p2align 4,,10
	.p2align 3
.L10241:
	cmpq	$127, %rdx
	ja	.L10245
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
	jmp	.L10166
	.p2align 4,,10
	.p2align 3
.L10245:
	movq	%r11, 8(%rsp)
	movl	%r10d, (%rsp)
	call	memcpy
	movl	(%rsp), %r10d
	movq	8(%rsp), %r11
	jmp	.L10172
.L10238:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L10160
.L10159:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movl	(%rsp), %esi
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r11, 24(%rsp)
	movl	%r10d, 20(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r11
	movq	%rax, %r13
	movl	20(%rsp), %r10d
	jmp	.L10162
.L10239:
	cmpb	43192(%rbx,%rcx), %al
	je	.L10161
	jmp	.L10159
.L10163:
	movq	8(%rsp), %rax
	movl	$2048, 20(%rsp)
	subl	%edx, 20(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L10246
	leal	1(%rax), %esi
	movl	20(%rsp), %eax
	movslq	%esi, %rsi
	addl	%ebp, %eax
	movl	%eax, %ebp
	andl	$16777215, %ebp
	movl	%ebp, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbx,%rsi,8)
	jne	.L10247
.L10174:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L10248
.L10175:
	movl	%eax, %esi
	andl	$14680064, %esi
	orl	2224(%rbx), %esi
	cmpl	10424(%rcx), %esi
	jne	.L10173
	testb	$4, 46264(%rbx,%rdx)
	je	.L10173
	xorq	26808(%rcx), %rbp
.L10176:
	movl	20(%rsp), %r9d
	leaq	32(%rsp), %r8
	cmpq	$127, %r9
	ja	.L10249
	movq	%r8, %rdi
	movq	%r13, %rsi
	movq	%r9, %rcx
	rep movsb
.L10178:
	leal	1(%r15), %edx
	addq	%r9, %r8
	subl	20(%rsp), %edx
	movslq	%edx, %rdx
	cmpq	$127, %rdx
	ja	.L10250
	movq	%r8, %rdi
	movq	%rbp, %rsi
	movq	%rdx, %rcx
	rep movsb
	jmp	.L10172
.L10240:
	addl	%r15d, %ebp
	cmpl	$79, %ebp
	jbe	.L10165
	movq	%rbx, %rdi
	movq	%r11, 8(%rsp)
	movl	%r10d, (%rsp)
	call	s370_store_int_timer
	movq	8(%rsp), %r11
	movl	(%rsp), %r10d
	jmp	.L10165
.L10250:
	movq	%rbp, %rsi
	movq	%r8, %rdi
	movq	%r11, 8(%rsp)
	movl	%r10d, (%rsp)
	call	memcpy
	movl	(%rsp), %r10d
	movq	8(%rsp), %r11
	jmp	.L10172
.L10249:
	movq	%r9, %rdx
	movq	%r8, %rdi
	movq	%r13, %rsi
	movq	%r11, 24(%rsp)
	movl	%r10d, 8(%rsp)
	movq	%r9, (%rsp)
	call	memcpy
	movq	(%rsp), %r9
	movq	%rax, %r8
	movl	8(%rsp), %r10d
	movq	24(%rsp), %r11
	jmp	.L10178
.L10246:
	movl	20(%rsp), %eax
	addl	%ebp, %eax
.L10173:
	movzbl	97(%rbx), %r8d
	andl	$16777215, %eax
	movl	$1, %r9d
	movl	(%rsp), %esi
	movl	%eax, %edi
	movl	$4, %ecx
	movq	%rbx, %rdx
	movq	%r11, 24(%rsp)
	movl	%r10d, 8(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r11
	movq	%rax, %rbp
	movl	8(%rsp), %r10d
	jmp	.L10176
.L10248:
	cmpb	43192(%rbx,%rdx), %sil
	je	.L10175
	jmp	.L10173
.L10247:
	movzbl	44216(%rbx,%rdx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L10174
	jmp	.L10173
	.cfi_endproc
.LFE841:
	.size	s370_BF_x, .-s370_BF_x
	.p2align 4,,15
	.globl	s370_insert_program_mask
	.type	s370_insert_program_mask, @function
s370_insert_program_mask:
.LFB842:
	.cfi_startproc
	movzbl	3(%rdi), %eax
	addq	$4, 136(%rsi)
	sarl	$4, %eax
	movslq	%eax, %rdx
	movzbl	100(%rsi), %eax
	sall	$4, %eax
	orb	101(%rsi), %al
	movb	%al, 195(%rsi,%rdx,8)
	ret
	.cfi_endproc
.LFE842:
	.size	s370_insert_program_mask, .-s370_insert_program_mask
	.p2align 4,,15
	.globl	s370_load_register
	.type	s370_load_register, @function
s370_load_register:
.LFB843:
	.cfi_startproc
	movzbl	1(%rdi), %eax
	addq	$2, 136(%rsi)
	movq	%rax, %rdx
	shrq	$4, %rax
	andl	$15, %edx
	andl	$15, %eax
	movl	192(%rsi,%rdx,8), %edx
	movl	%edx, 192(%rsi,%rax,8)
	ret
	.cfi_endproc
.LFE843:
	.size	s370_load_register, .-s370_load_register
	.p2align 4,,15
	.globl	s370_1800
	.type	s370_1800, @function
s370_1800:
.LFB844:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE844:
	.size	s370_1800, .-s370_1800
	.p2align 4,,15
	.globl	s370_1801
	.type	s370_1801, @function
s370_1801:
.LFB845:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE845:
	.size	s370_1801, .-s370_1801
	.p2align 4,,15
	.globl	s370_1802
	.type	s370_1802, @function
s370_1802:
.LFB846:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE846:
	.size	s370_1802, .-s370_1802
	.p2align 4,,15
	.globl	s370_1803
	.type	s370_1803, @function
s370_1803:
.LFB847:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE847:
	.size	s370_1803, .-s370_1803
	.p2align 4,,15
	.globl	s370_1804
	.type	s370_1804, @function
s370_1804:
.LFB848:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE848:
	.size	s370_1804, .-s370_1804
	.p2align 4,,15
	.globl	s370_1805
	.type	s370_1805, @function
s370_1805:
.LFB849:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE849:
	.size	s370_1805, .-s370_1805
	.p2align 4,,15
	.globl	s370_1806
	.type	s370_1806, @function
s370_1806:
.LFB850:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE850:
	.size	s370_1806, .-s370_1806
	.p2align 4,,15
	.globl	s370_1807
	.type	s370_1807, @function
s370_1807:
.LFB851:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE851:
	.size	s370_1807, .-s370_1807
	.p2align 4,,15
	.globl	s370_1808
	.type	s370_1808, @function
s370_1808:
.LFB852:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE852:
	.size	s370_1808, .-s370_1808
	.p2align 4,,15
	.globl	s370_1809
	.type	s370_1809, @function
s370_1809:
.LFB853:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE853:
	.size	s370_1809, .-s370_1809
	.p2align 4,,15
	.globl	s370_180A
	.type	s370_180A, @function
s370_180A:
.LFB854:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE854:
	.size	s370_180A, .-s370_180A
	.p2align 4,,15
	.globl	s370_180B
	.type	s370_180B, @function
s370_180B:
.LFB855:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE855:
	.size	s370_180B, .-s370_180B
	.p2align 4,,15
	.globl	s370_180C
	.type	s370_180C, @function
s370_180C:
.LFB856:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE856:
	.size	s370_180C, .-s370_180C
	.p2align 4,,15
	.globl	s370_180D
	.type	s370_180D, @function
s370_180D:
.LFB857:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE857:
	.size	s370_180D, .-s370_180D
	.p2align 4,,15
	.globl	s370_180E
	.type	s370_180E, @function
s370_180E:
.LFB858:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE858:
	.size	s370_180E, .-s370_180E
	.p2align 4,,15
	.globl	s370_180F
	.type	s370_180F, @function
s370_180F:
.LFB859:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 192(%rsi)
	ret
	.cfi_endproc
.LFE859:
	.size	s370_180F, .-s370_180F
	.p2align 4,,15
	.globl	s370_1810
	.type	s370_1810, @function
s370_1810:
.LFB860:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE860:
	.size	s370_1810, .-s370_1810
	.p2align 4,,15
	.globl	s370_1811
	.type	s370_1811, @function
s370_1811:
.LFB861:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE861:
	.size	s370_1811, .-s370_1811
	.p2align 4,,15
	.globl	s370_1812
	.type	s370_1812, @function
s370_1812:
.LFB862:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE862:
	.size	s370_1812, .-s370_1812
	.p2align 4,,15
	.globl	s370_1813
	.type	s370_1813, @function
s370_1813:
.LFB863:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE863:
	.size	s370_1813, .-s370_1813
	.p2align 4,,15
	.globl	s370_1814
	.type	s370_1814, @function
s370_1814:
.LFB864:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE864:
	.size	s370_1814, .-s370_1814
	.p2align 4,,15
	.globl	s370_1815
	.type	s370_1815, @function
s370_1815:
.LFB865:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE865:
	.size	s370_1815, .-s370_1815
	.p2align 4,,15
	.globl	s370_1816
	.type	s370_1816, @function
s370_1816:
.LFB866:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE866:
	.size	s370_1816, .-s370_1816
	.p2align 4,,15
	.globl	s370_1817
	.type	s370_1817, @function
s370_1817:
.LFB867:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE867:
	.size	s370_1817, .-s370_1817
	.p2align 4,,15
	.globl	s370_1818
	.type	s370_1818, @function
s370_1818:
.LFB868:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE868:
	.size	s370_1818, .-s370_1818
	.p2align 4,,15
	.globl	s370_1819
	.type	s370_1819, @function
s370_1819:
.LFB869:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE869:
	.size	s370_1819, .-s370_1819
	.p2align 4,,15
	.globl	s370_181A
	.type	s370_181A, @function
s370_181A:
.LFB870:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE870:
	.size	s370_181A, .-s370_181A
	.p2align 4,,15
	.globl	s370_181B
	.type	s370_181B, @function
s370_181B:
.LFB871:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE871:
	.size	s370_181B, .-s370_181B
	.p2align 4,,15
	.globl	s370_181C
	.type	s370_181C, @function
s370_181C:
.LFB872:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE872:
	.size	s370_181C, .-s370_181C
	.p2align 4,,15
	.globl	s370_181D
	.type	s370_181D, @function
s370_181D:
.LFB873:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE873:
	.size	s370_181D, .-s370_181D
	.p2align 4,,15
	.globl	s370_181E
	.type	s370_181E, @function
s370_181E:
.LFB874:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE874:
	.size	s370_181E, .-s370_181E
	.p2align 4,,15
	.globl	s370_181F
	.type	s370_181F, @function
s370_181F:
.LFB875:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 200(%rsi)
	ret
	.cfi_endproc
.LFE875:
	.size	s370_181F, .-s370_181F
	.p2align 4,,15
	.globl	s370_1820
	.type	s370_1820, @function
s370_1820:
.LFB876:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE876:
	.size	s370_1820, .-s370_1820
	.p2align 4,,15
	.globl	s370_1821
	.type	s370_1821, @function
s370_1821:
.LFB877:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE877:
	.size	s370_1821, .-s370_1821
	.p2align 4,,15
	.globl	s370_1822
	.type	s370_1822, @function
s370_1822:
.LFB878:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE878:
	.size	s370_1822, .-s370_1822
	.p2align 4,,15
	.globl	s370_1823
	.type	s370_1823, @function
s370_1823:
.LFB879:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE879:
	.size	s370_1823, .-s370_1823
	.p2align 4,,15
	.globl	s370_1824
	.type	s370_1824, @function
s370_1824:
.LFB880:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE880:
	.size	s370_1824, .-s370_1824
	.p2align 4,,15
	.globl	s370_1825
	.type	s370_1825, @function
s370_1825:
.LFB881:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE881:
	.size	s370_1825, .-s370_1825
	.p2align 4,,15
	.globl	s370_1826
	.type	s370_1826, @function
s370_1826:
.LFB882:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE882:
	.size	s370_1826, .-s370_1826
	.p2align 4,,15
	.globl	s370_1827
	.type	s370_1827, @function
s370_1827:
.LFB883:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE883:
	.size	s370_1827, .-s370_1827
	.p2align 4,,15
	.globl	s370_1828
	.type	s370_1828, @function
s370_1828:
.LFB884:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE884:
	.size	s370_1828, .-s370_1828
	.p2align 4,,15
	.globl	s370_1829
	.type	s370_1829, @function
s370_1829:
.LFB885:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE885:
	.size	s370_1829, .-s370_1829
	.p2align 4,,15
	.globl	s370_182A
	.type	s370_182A, @function
s370_182A:
.LFB886:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE886:
	.size	s370_182A, .-s370_182A
	.p2align 4,,15
	.globl	s370_182B
	.type	s370_182B, @function
s370_182B:
.LFB887:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE887:
	.size	s370_182B, .-s370_182B
	.p2align 4,,15
	.globl	s370_182C
	.type	s370_182C, @function
s370_182C:
.LFB888:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE888:
	.size	s370_182C, .-s370_182C
	.p2align 4,,15
	.globl	s370_182D
	.type	s370_182D, @function
s370_182D:
.LFB889:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE889:
	.size	s370_182D, .-s370_182D
	.p2align 4,,15
	.globl	s370_182E
	.type	s370_182E, @function
s370_182E:
.LFB890:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE890:
	.size	s370_182E, .-s370_182E
	.p2align 4,,15
	.globl	s370_182F
	.type	s370_182F, @function
s370_182F:
.LFB891:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 208(%rsi)
	ret
	.cfi_endproc
.LFE891:
	.size	s370_182F, .-s370_182F
	.p2align 4,,15
	.globl	s370_1830
	.type	s370_1830, @function
s370_1830:
.LFB892:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE892:
	.size	s370_1830, .-s370_1830
	.p2align 4,,15
	.globl	s370_1831
	.type	s370_1831, @function
s370_1831:
.LFB893:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE893:
	.size	s370_1831, .-s370_1831
	.p2align 4,,15
	.globl	s370_1832
	.type	s370_1832, @function
s370_1832:
.LFB894:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE894:
	.size	s370_1832, .-s370_1832
	.p2align 4,,15
	.globl	s370_1833
	.type	s370_1833, @function
s370_1833:
.LFB895:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE895:
	.size	s370_1833, .-s370_1833
	.p2align 4,,15
	.globl	s370_1834
	.type	s370_1834, @function
s370_1834:
.LFB896:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE896:
	.size	s370_1834, .-s370_1834
	.p2align 4,,15
	.globl	s370_1835
	.type	s370_1835, @function
s370_1835:
.LFB897:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE897:
	.size	s370_1835, .-s370_1835
	.p2align 4,,15
	.globl	s370_1836
	.type	s370_1836, @function
s370_1836:
.LFB898:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE898:
	.size	s370_1836, .-s370_1836
	.p2align 4,,15
	.globl	s370_1837
	.type	s370_1837, @function
s370_1837:
.LFB899:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE899:
	.size	s370_1837, .-s370_1837
	.p2align 4,,15
	.globl	s370_1838
	.type	s370_1838, @function
s370_1838:
.LFB900:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE900:
	.size	s370_1838, .-s370_1838
	.p2align 4,,15
	.globl	s370_1839
	.type	s370_1839, @function
s370_1839:
.LFB901:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE901:
	.size	s370_1839, .-s370_1839
	.p2align 4,,15
	.globl	s370_183A
	.type	s370_183A, @function
s370_183A:
.LFB902:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE902:
	.size	s370_183A, .-s370_183A
	.p2align 4,,15
	.globl	s370_183B
	.type	s370_183B, @function
s370_183B:
.LFB903:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE903:
	.size	s370_183B, .-s370_183B
	.p2align 4,,15
	.globl	s370_183C
	.type	s370_183C, @function
s370_183C:
.LFB904:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE904:
	.size	s370_183C, .-s370_183C
	.p2align 4,,15
	.globl	s370_183D
	.type	s370_183D, @function
s370_183D:
.LFB905:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE905:
	.size	s370_183D, .-s370_183D
	.p2align 4,,15
	.globl	s370_183E
	.type	s370_183E, @function
s370_183E:
.LFB906:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE906:
	.size	s370_183E, .-s370_183E
	.p2align 4,,15
	.globl	s370_183F
	.type	s370_183F, @function
s370_183F:
.LFB907:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 216(%rsi)
	ret
	.cfi_endproc
.LFE907:
	.size	s370_183F, .-s370_183F
	.p2align 4,,15
	.globl	s370_1840
	.type	s370_1840, @function
s370_1840:
.LFB908:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE908:
	.size	s370_1840, .-s370_1840
	.p2align 4,,15
	.globl	s370_1841
	.type	s370_1841, @function
s370_1841:
.LFB909:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE909:
	.size	s370_1841, .-s370_1841
	.p2align 4,,15
	.globl	s370_1842
	.type	s370_1842, @function
s370_1842:
.LFB910:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE910:
	.size	s370_1842, .-s370_1842
	.p2align 4,,15
	.globl	s370_1843
	.type	s370_1843, @function
s370_1843:
.LFB911:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE911:
	.size	s370_1843, .-s370_1843
	.p2align 4,,15
	.globl	s370_1844
	.type	s370_1844, @function
s370_1844:
.LFB912:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE912:
	.size	s370_1844, .-s370_1844
	.p2align 4,,15
	.globl	s370_1845
	.type	s370_1845, @function
s370_1845:
.LFB913:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE913:
	.size	s370_1845, .-s370_1845
	.p2align 4,,15
	.globl	s370_1846
	.type	s370_1846, @function
s370_1846:
.LFB914:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE914:
	.size	s370_1846, .-s370_1846
	.p2align 4,,15
	.globl	s370_1847
	.type	s370_1847, @function
s370_1847:
.LFB915:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE915:
	.size	s370_1847, .-s370_1847
	.p2align 4,,15
	.globl	s370_1848
	.type	s370_1848, @function
s370_1848:
.LFB916:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE916:
	.size	s370_1848, .-s370_1848
	.p2align 4,,15
	.globl	s370_1849
	.type	s370_1849, @function
s370_1849:
.LFB917:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE917:
	.size	s370_1849, .-s370_1849
	.p2align 4,,15
	.globl	s370_184A
	.type	s370_184A, @function
s370_184A:
.LFB918:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE918:
	.size	s370_184A, .-s370_184A
	.p2align 4,,15
	.globl	s370_184B
	.type	s370_184B, @function
s370_184B:
.LFB919:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE919:
	.size	s370_184B, .-s370_184B
	.p2align 4,,15
	.globl	s370_184C
	.type	s370_184C, @function
s370_184C:
.LFB920:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE920:
	.size	s370_184C, .-s370_184C
	.p2align 4,,15
	.globl	s370_184D
	.type	s370_184D, @function
s370_184D:
.LFB921:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE921:
	.size	s370_184D, .-s370_184D
	.p2align 4,,15
	.globl	s370_184E
	.type	s370_184E, @function
s370_184E:
.LFB922:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE922:
	.size	s370_184E, .-s370_184E
	.p2align 4,,15
	.globl	s370_184F
	.type	s370_184F, @function
s370_184F:
.LFB923:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 224(%rsi)
	ret
	.cfi_endproc
.LFE923:
	.size	s370_184F, .-s370_184F
	.p2align 4,,15
	.globl	s370_1850
	.type	s370_1850, @function
s370_1850:
.LFB924:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE924:
	.size	s370_1850, .-s370_1850
	.p2align 4,,15
	.globl	s370_1851
	.type	s370_1851, @function
s370_1851:
.LFB925:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE925:
	.size	s370_1851, .-s370_1851
	.p2align 4,,15
	.globl	s370_1852
	.type	s370_1852, @function
s370_1852:
.LFB926:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE926:
	.size	s370_1852, .-s370_1852
	.p2align 4,,15
	.globl	s370_1853
	.type	s370_1853, @function
s370_1853:
.LFB927:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE927:
	.size	s370_1853, .-s370_1853
	.p2align 4,,15
	.globl	s370_1854
	.type	s370_1854, @function
s370_1854:
.LFB928:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE928:
	.size	s370_1854, .-s370_1854
	.p2align 4,,15
	.globl	s370_1855
	.type	s370_1855, @function
s370_1855:
.LFB929:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE929:
	.size	s370_1855, .-s370_1855
	.p2align 4,,15
	.globl	s370_1856
	.type	s370_1856, @function
s370_1856:
.LFB930:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE930:
	.size	s370_1856, .-s370_1856
	.p2align 4,,15
	.globl	s370_1857
	.type	s370_1857, @function
s370_1857:
.LFB931:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE931:
	.size	s370_1857, .-s370_1857
	.p2align 4,,15
	.globl	s370_1858
	.type	s370_1858, @function
s370_1858:
.LFB932:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE932:
	.size	s370_1858, .-s370_1858
	.p2align 4,,15
	.globl	s370_1859
	.type	s370_1859, @function
s370_1859:
.LFB933:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE933:
	.size	s370_1859, .-s370_1859
	.p2align 4,,15
	.globl	s370_185A
	.type	s370_185A, @function
s370_185A:
.LFB934:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE934:
	.size	s370_185A, .-s370_185A
	.p2align 4,,15
	.globl	s370_185B
	.type	s370_185B, @function
s370_185B:
.LFB935:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE935:
	.size	s370_185B, .-s370_185B
	.p2align 4,,15
	.globl	s370_185C
	.type	s370_185C, @function
s370_185C:
.LFB936:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE936:
	.size	s370_185C, .-s370_185C
	.p2align 4,,15
	.globl	s370_185D
	.type	s370_185D, @function
s370_185D:
.LFB937:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE937:
	.size	s370_185D, .-s370_185D
	.p2align 4,,15
	.globl	s370_185E
	.type	s370_185E, @function
s370_185E:
.LFB938:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE938:
	.size	s370_185E, .-s370_185E
	.p2align 4,,15
	.globl	s370_185F
	.type	s370_185F, @function
s370_185F:
.LFB939:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 232(%rsi)
	ret
	.cfi_endproc
.LFE939:
	.size	s370_185F, .-s370_185F
	.p2align 4,,15
	.globl	s370_1860
	.type	s370_1860, @function
s370_1860:
.LFB940:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE940:
	.size	s370_1860, .-s370_1860
	.p2align 4,,15
	.globl	s370_1861
	.type	s370_1861, @function
s370_1861:
.LFB941:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE941:
	.size	s370_1861, .-s370_1861
	.p2align 4,,15
	.globl	s370_1862
	.type	s370_1862, @function
s370_1862:
.LFB942:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE942:
	.size	s370_1862, .-s370_1862
	.p2align 4,,15
	.globl	s370_1863
	.type	s370_1863, @function
s370_1863:
.LFB943:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE943:
	.size	s370_1863, .-s370_1863
	.p2align 4,,15
	.globl	s370_1864
	.type	s370_1864, @function
s370_1864:
.LFB944:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE944:
	.size	s370_1864, .-s370_1864
	.p2align 4,,15
	.globl	s370_1865
	.type	s370_1865, @function
s370_1865:
.LFB945:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE945:
	.size	s370_1865, .-s370_1865
	.p2align 4,,15
	.globl	s370_1866
	.type	s370_1866, @function
s370_1866:
.LFB946:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE946:
	.size	s370_1866, .-s370_1866
	.p2align 4,,15
	.globl	s370_1867
	.type	s370_1867, @function
s370_1867:
.LFB947:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE947:
	.size	s370_1867, .-s370_1867
	.p2align 4,,15
	.globl	s370_1868
	.type	s370_1868, @function
s370_1868:
.LFB948:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE948:
	.size	s370_1868, .-s370_1868
	.p2align 4,,15
	.globl	s370_1869
	.type	s370_1869, @function
s370_1869:
.LFB949:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE949:
	.size	s370_1869, .-s370_1869
	.p2align 4,,15
	.globl	s370_186A
	.type	s370_186A, @function
s370_186A:
.LFB950:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE950:
	.size	s370_186A, .-s370_186A
	.p2align 4,,15
	.globl	s370_186B
	.type	s370_186B, @function
s370_186B:
.LFB951:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE951:
	.size	s370_186B, .-s370_186B
	.p2align 4,,15
	.globl	s370_186C
	.type	s370_186C, @function
s370_186C:
.LFB952:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE952:
	.size	s370_186C, .-s370_186C
	.p2align 4,,15
	.globl	s370_186D
	.type	s370_186D, @function
s370_186D:
.LFB953:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE953:
	.size	s370_186D, .-s370_186D
	.p2align 4,,15
	.globl	s370_186E
	.type	s370_186E, @function
s370_186E:
.LFB954:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE954:
	.size	s370_186E, .-s370_186E
	.p2align 4,,15
	.globl	s370_186F
	.type	s370_186F, @function
s370_186F:
.LFB955:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 240(%rsi)
	ret
	.cfi_endproc
.LFE955:
	.size	s370_186F, .-s370_186F
	.p2align 4,,15
	.globl	s370_1870
	.type	s370_1870, @function
s370_1870:
.LFB956:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE956:
	.size	s370_1870, .-s370_1870
	.p2align 4,,15
	.globl	s370_1871
	.type	s370_1871, @function
s370_1871:
.LFB957:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE957:
	.size	s370_1871, .-s370_1871
	.p2align 4,,15
	.globl	s370_1872
	.type	s370_1872, @function
s370_1872:
.LFB958:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE958:
	.size	s370_1872, .-s370_1872
	.p2align 4,,15
	.globl	s370_1873
	.type	s370_1873, @function
s370_1873:
.LFB959:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE959:
	.size	s370_1873, .-s370_1873
	.p2align 4,,15
	.globl	s370_1874
	.type	s370_1874, @function
s370_1874:
.LFB960:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE960:
	.size	s370_1874, .-s370_1874
	.p2align 4,,15
	.globl	s370_1875
	.type	s370_1875, @function
s370_1875:
.LFB961:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE961:
	.size	s370_1875, .-s370_1875
	.p2align 4,,15
	.globl	s370_1876
	.type	s370_1876, @function
s370_1876:
.LFB962:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE962:
	.size	s370_1876, .-s370_1876
	.p2align 4,,15
	.globl	s370_1877
	.type	s370_1877, @function
s370_1877:
.LFB963:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE963:
	.size	s370_1877, .-s370_1877
	.p2align 4,,15
	.globl	s370_1878
	.type	s370_1878, @function
s370_1878:
.LFB964:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE964:
	.size	s370_1878, .-s370_1878
	.p2align 4,,15
	.globl	s370_1879
	.type	s370_1879, @function
s370_1879:
.LFB965:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE965:
	.size	s370_1879, .-s370_1879
	.p2align 4,,15
	.globl	s370_187A
	.type	s370_187A, @function
s370_187A:
.LFB966:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE966:
	.size	s370_187A, .-s370_187A
	.p2align 4,,15
	.globl	s370_187B
	.type	s370_187B, @function
s370_187B:
.LFB967:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE967:
	.size	s370_187B, .-s370_187B
	.p2align 4,,15
	.globl	s370_187C
	.type	s370_187C, @function
s370_187C:
.LFB968:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE968:
	.size	s370_187C, .-s370_187C
	.p2align 4,,15
	.globl	s370_187D
	.type	s370_187D, @function
s370_187D:
.LFB969:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE969:
	.size	s370_187D, .-s370_187D
	.p2align 4,,15
	.globl	s370_187E
	.type	s370_187E, @function
s370_187E:
.LFB970:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE970:
	.size	s370_187E, .-s370_187E
	.p2align 4,,15
	.globl	s370_187F
	.type	s370_187F, @function
s370_187F:
.LFB971:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 248(%rsi)
	ret
	.cfi_endproc
.LFE971:
	.size	s370_187F, .-s370_187F
	.p2align 4,,15
	.globl	s370_1880
	.type	s370_1880, @function
s370_1880:
.LFB972:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE972:
	.size	s370_1880, .-s370_1880
	.p2align 4,,15
	.globl	s370_1881
	.type	s370_1881, @function
s370_1881:
.LFB973:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE973:
	.size	s370_1881, .-s370_1881
	.p2align 4,,15
	.globl	s370_1882
	.type	s370_1882, @function
s370_1882:
.LFB974:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE974:
	.size	s370_1882, .-s370_1882
	.p2align 4,,15
	.globl	s370_1883
	.type	s370_1883, @function
s370_1883:
.LFB975:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE975:
	.size	s370_1883, .-s370_1883
	.p2align 4,,15
	.globl	s370_1884
	.type	s370_1884, @function
s370_1884:
.LFB976:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE976:
	.size	s370_1884, .-s370_1884
	.p2align 4,,15
	.globl	s370_1885
	.type	s370_1885, @function
s370_1885:
.LFB977:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE977:
	.size	s370_1885, .-s370_1885
	.p2align 4,,15
	.globl	s370_1886
	.type	s370_1886, @function
s370_1886:
.LFB978:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE978:
	.size	s370_1886, .-s370_1886
	.p2align 4,,15
	.globl	s370_1887
	.type	s370_1887, @function
s370_1887:
.LFB979:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE979:
	.size	s370_1887, .-s370_1887
	.p2align 4,,15
	.globl	s370_1888
	.type	s370_1888, @function
s370_1888:
.LFB980:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE980:
	.size	s370_1888, .-s370_1888
	.p2align 4,,15
	.globl	s370_1889
	.type	s370_1889, @function
s370_1889:
.LFB981:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE981:
	.size	s370_1889, .-s370_1889
	.p2align 4,,15
	.globl	s370_188A
	.type	s370_188A, @function
s370_188A:
.LFB982:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE982:
	.size	s370_188A, .-s370_188A
	.p2align 4,,15
	.globl	s370_188B
	.type	s370_188B, @function
s370_188B:
.LFB983:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE983:
	.size	s370_188B, .-s370_188B
	.p2align 4,,15
	.globl	s370_188C
	.type	s370_188C, @function
s370_188C:
.LFB984:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE984:
	.size	s370_188C, .-s370_188C
	.p2align 4,,15
	.globl	s370_188D
	.type	s370_188D, @function
s370_188D:
.LFB985:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE985:
	.size	s370_188D, .-s370_188D
	.p2align 4,,15
	.globl	s370_188E
	.type	s370_188E, @function
s370_188E:
.LFB986:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE986:
	.size	s370_188E, .-s370_188E
	.p2align 4,,15
	.globl	s370_188F
	.type	s370_188F, @function
s370_188F:
.LFB987:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 256(%rsi)
	ret
	.cfi_endproc
.LFE987:
	.size	s370_188F, .-s370_188F
	.p2align 4,,15
	.globl	s370_1890
	.type	s370_1890, @function
s370_1890:
.LFB988:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE988:
	.size	s370_1890, .-s370_1890
	.p2align 4,,15
	.globl	s370_1891
	.type	s370_1891, @function
s370_1891:
.LFB989:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE989:
	.size	s370_1891, .-s370_1891
	.p2align 4,,15
	.globl	s370_1892
	.type	s370_1892, @function
s370_1892:
.LFB990:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE990:
	.size	s370_1892, .-s370_1892
	.p2align 4,,15
	.globl	s370_1893
	.type	s370_1893, @function
s370_1893:
.LFB991:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE991:
	.size	s370_1893, .-s370_1893
	.p2align 4,,15
	.globl	s370_1894
	.type	s370_1894, @function
s370_1894:
.LFB992:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE992:
	.size	s370_1894, .-s370_1894
	.p2align 4,,15
	.globl	s370_1895
	.type	s370_1895, @function
s370_1895:
.LFB993:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE993:
	.size	s370_1895, .-s370_1895
	.p2align 4,,15
	.globl	s370_1896
	.type	s370_1896, @function
s370_1896:
.LFB994:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE994:
	.size	s370_1896, .-s370_1896
	.p2align 4,,15
	.globl	s370_1897
	.type	s370_1897, @function
s370_1897:
.LFB995:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE995:
	.size	s370_1897, .-s370_1897
	.p2align 4,,15
	.globl	s370_1898
	.type	s370_1898, @function
s370_1898:
.LFB996:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE996:
	.size	s370_1898, .-s370_1898
	.p2align 4,,15
	.globl	s370_1899
	.type	s370_1899, @function
s370_1899:
.LFB997:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE997:
	.size	s370_1899, .-s370_1899
	.p2align 4,,15
	.globl	s370_189A
	.type	s370_189A, @function
s370_189A:
.LFB998:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE998:
	.size	s370_189A, .-s370_189A
	.p2align 4,,15
	.globl	s370_189B
	.type	s370_189B, @function
s370_189B:
.LFB999:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE999:
	.size	s370_189B, .-s370_189B
	.p2align 4,,15
	.globl	s370_189C
	.type	s370_189C, @function
s370_189C:
.LFB1000:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE1000:
	.size	s370_189C, .-s370_189C
	.p2align 4,,15
	.globl	s370_189D
	.type	s370_189D, @function
s370_189D:
.LFB1001:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE1001:
	.size	s370_189D, .-s370_189D
	.p2align 4,,15
	.globl	s370_189E
	.type	s370_189E, @function
s370_189E:
.LFB1002:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE1002:
	.size	s370_189E, .-s370_189E
	.p2align 4,,15
	.globl	s370_189F
	.type	s370_189F, @function
s370_189F:
.LFB1003:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 264(%rsi)
	ret
	.cfi_endproc
.LFE1003:
	.size	s370_189F, .-s370_189F
	.p2align 4,,15
	.globl	s370_18A0
	.type	s370_18A0, @function
s370_18A0:
.LFB1004:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1004:
	.size	s370_18A0, .-s370_18A0
	.p2align 4,,15
	.globl	s370_18A1
	.type	s370_18A1, @function
s370_18A1:
.LFB1005:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1005:
	.size	s370_18A1, .-s370_18A1
	.p2align 4,,15
	.globl	s370_18A2
	.type	s370_18A2, @function
s370_18A2:
.LFB1006:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1006:
	.size	s370_18A2, .-s370_18A2
	.p2align 4,,15
	.globl	s370_18A3
	.type	s370_18A3, @function
s370_18A3:
.LFB1007:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1007:
	.size	s370_18A3, .-s370_18A3
	.p2align 4,,15
	.globl	s370_18A4
	.type	s370_18A4, @function
s370_18A4:
.LFB1008:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1008:
	.size	s370_18A4, .-s370_18A4
	.p2align 4,,15
	.globl	s370_18A5
	.type	s370_18A5, @function
s370_18A5:
.LFB1009:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1009:
	.size	s370_18A5, .-s370_18A5
	.p2align 4,,15
	.globl	s370_18A6
	.type	s370_18A6, @function
s370_18A6:
.LFB1010:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1010:
	.size	s370_18A6, .-s370_18A6
	.p2align 4,,15
	.globl	s370_18A7
	.type	s370_18A7, @function
s370_18A7:
.LFB1011:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1011:
	.size	s370_18A7, .-s370_18A7
	.p2align 4,,15
	.globl	s370_18A8
	.type	s370_18A8, @function
s370_18A8:
.LFB1012:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1012:
	.size	s370_18A8, .-s370_18A8
	.p2align 4,,15
	.globl	s370_18A9
	.type	s370_18A9, @function
s370_18A9:
.LFB1013:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1013:
	.size	s370_18A9, .-s370_18A9
	.p2align 4,,15
	.globl	s370_18AA
	.type	s370_18AA, @function
s370_18AA:
.LFB1014:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE1014:
	.size	s370_18AA, .-s370_18AA
	.p2align 4,,15
	.globl	s370_18AB
	.type	s370_18AB, @function
s370_18AB:
.LFB1015:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1015:
	.size	s370_18AB, .-s370_18AB
	.p2align 4,,15
	.globl	s370_18AC
	.type	s370_18AC, @function
s370_18AC:
.LFB1016:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1016:
	.size	s370_18AC, .-s370_18AC
	.p2align 4,,15
	.globl	s370_18AD
	.type	s370_18AD, @function
s370_18AD:
.LFB1017:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1017:
	.size	s370_18AD, .-s370_18AD
	.p2align 4,,15
	.globl	s370_18AE
	.type	s370_18AE, @function
s370_18AE:
.LFB1018:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1018:
	.size	s370_18AE, .-s370_18AE
	.p2align 4,,15
	.globl	s370_18AF
	.type	s370_18AF, @function
s370_18AF:
.LFB1019:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 272(%rsi)
	ret
	.cfi_endproc
.LFE1019:
	.size	s370_18AF, .-s370_18AF
	.p2align 4,,15
	.globl	s370_18B0
	.type	s370_18B0, @function
s370_18B0:
.LFB1020:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1020:
	.size	s370_18B0, .-s370_18B0
	.p2align 4,,15
	.globl	s370_18B1
	.type	s370_18B1, @function
s370_18B1:
.LFB1021:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1021:
	.size	s370_18B1, .-s370_18B1
	.p2align 4,,15
	.globl	s370_18B2
	.type	s370_18B2, @function
s370_18B2:
.LFB1022:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1022:
	.size	s370_18B2, .-s370_18B2
	.p2align 4,,15
	.globl	s370_18B3
	.type	s370_18B3, @function
s370_18B3:
.LFB1023:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1023:
	.size	s370_18B3, .-s370_18B3
	.p2align 4,,15
	.globl	s370_18B4
	.type	s370_18B4, @function
s370_18B4:
.LFB1024:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1024:
	.size	s370_18B4, .-s370_18B4
	.p2align 4,,15
	.globl	s370_18B5
	.type	s370_18B5, @function
s370_18B5:
.LFB1025:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1025:
	.size	s370_18B5, .-s370_18B5
	.p2align 4,,15
	.globl	s370_18B6
	.type	s370_18B6, @function
s370_18B6:
.LFB1026:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1026:
	.size	s370_18B6, .-s370_18B6
	.p2align 4,,15
	.globl	s370_18B7
	.type	s370_18B7, @function
s370_18B7:
.LFB1027:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1027:
	.size	s370_18B7, .-s370_18B7
	.p2align 4,,15
	.globl	s370_18B8
	.type	s370_18B8, @function
s370_18B8:
.LFB1028:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1028:
	.size	s370_18B8, .-s370_18B8
	.p2align 4,,15
	.globl	s370_18B9
	.type	s370_18B9, @function
s370_18B9:
.LFB1029:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1029:
	.size	s370_18B9, .-s370_18B9
	.p2align 4,,15
	.globl	s370_18BA
	.type	s370_18BA, @function
s370_18BA:
.LFB1030:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1030:
	.size	s370_18BA, .-s370_18BA
	.p2align 4,,15
	.globl	s370_18BB
	.type	s370_18BB, @function
s370_18BB:
.LFB1031:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE1031:
	.size	s370_18BB, .-s370_18BB
	.p2align 4,,15
	.globl	s370_18BC
	.type	s370_18BC, @function
s370_18BC:
.LFB1032:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1032:
	.size	s370_18BC, .-s370_18BC
	.p2align 4,,15
	.globl	s370_18BD
	.type	s370_18BD, @function
s370_18BD:
.LFB1033:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1033:
	.size	s370_18BD, .-s370_18BD
	.p2align 4,,15
	.globl	s370_18BE
	.type	s370_18BE, @function
s370_18BE:
.LFB1034:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1034:
	.size	s370_18BE, .-s370_18BE
	.p2align 4,,15
	.globl	s370_18BF
	.type	s370_18BF, @function
s370_18BF:
.LFB1035:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 280(%rsi)
	ret
	.cfi_endproc
.LFE1035:
	.size	s370_18BF, .-s370_18BF
	.p2align 4,,15
	.globl	s370_18C0
	.type	s370_18C0, @function
s370_18C0:
.LFB1036:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1036:
	.size	s370_18C0, .-s370_18C0
	.p2align 4,,15
	.globl	s370_18C1
	.type	s370_18C1, @function
s370_18C1:
.LFB1037:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1037:
	.size	s370_18C1, .-s370_18C1
	.p2align 4,,15
	.globl	s370_18C2
	.type	s370_18C2, @function
s370_18C2:
.LFB1038:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1038:
	.size	s370_18C2, .-s370_18C2
	.p2align 4,,15
	.globl	s370_18C3
	.type	s370_18C3, @function
s370_18C3:
.LFB1039:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1039:
	.size	s370_18C3, .-s370_18C3
	.p2align 4,,15
	.globl	s370_18C4
	.type	s370_18C4, @function
s370_18C4:
.LFB1040:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1040:
	.size	s370_18C4, .-s370_18C4
	.p2align 4,,15
	.globl	s370_18C5
	.type	s370_18C5, @function
s370_18C5:
.LFB1041:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1041:
	.size	s370_18C5, .-s370_18C5
	.p2align 4,,15
	.globl	s370_18C6
	.type	s370_18C6, @function
s370_18C6:
.LFB1042:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1042:
	.size	s370_18C6, .-s370_18C6
	.p2align 4,,15
	.globl	s370_18C7
	.type	s370_18C7, @function
s370_18C7:
.LFB1043:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1043:
	.size	s370_18C7, .-s370_18C7
	.p2align 4,,15
	.globl	s370_18C8
	.type	s370_18C8, @function
s370_18C8:
.LFB1044:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1044:
	.size	s370_18C8, .-s370_18C8
	.p2align 4,,15
	.globl	s370_18C9
	.type	s370_18C9, @function
s370_18C9:
.LFB1045:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1045:
	.size	s370_18C9, .-s370_18C9
	.p2align 4,,15
	.globl	s370_18CA
	.type	s370_18CA, @function
s370_18CA:
.LFB1046:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1046:
	.size	s370_18CA, .-s370_18CA
	.p2align 4,,15
	.globl	s370_18CB
	.type	s370_18CB, @function
s370_18CB:
.LFB1047:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1047:
	.size	s370_18CB, .-s370_18CB
	.p2align 4,,15
	.globl	s370_18CC
	.type	s370_18CC, @function
s370_18CC:
.LFB1048:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE1048:
	.size	s370_18CC, .-s370_18CC
	.p2align 4,,15
	.globl	s370_18CD
	.type	s370_18CD, @function
s370_18CD:
.LFB1049:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1049:
	.size	s370_18CD, .-s370_18CD
	.p2align 4,,15
	.globl	s370_18CE
	.type	s370_18CE, @function
s370_18CE:
.LFB1050:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1050:
	.size	s370_18CE, .-s370_18CE
	.p2align 4,,15
	.globl	s370_18CF
	.type	s370_18CF, @function
s370_18CF:
.LFB1051:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 288(%rsi)
	ret
	.cfi_endproc
.LFE1051:
	.size	s370_18CF, .-s370_18CF
	.p2align 4,,15
	.globl	s370_18D0
	.type	s370_18D0, @function
s370_18D0:
.LFB1052:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1052:
	.size	s370_18D0, .-s370_18D0
	.p2align 4,,15
	.globl	s370_18D1
	.type	s370_18D1, @function
s370_18D1:
.LFB1053:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1053:
	.size	s370_18D1, .-s370_18D1
	.p2align 4,,15
	.globl	s370_18D2
	.type	s370_18D2, @function
s370_18D2:
.LFB1054:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1054:
	.size	s370_18D2, .-s370_18D2
	.p2align 4,,15
	.globl	s370_18D3
	.type	s370_18D3, @function
s370_18D3:
.LFB1055:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1055:
	.size	s370_18D3, .-s370_18D3
	.p2align 4,,15
	.globl	s370_18D4
	.type	s370_18D4, @function
s370_18D4:
.LFB1056:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1056:
	.size	s370_18D4, .-s370_18D4
	.p2align 4,,15
	.globl	s370_18D5
	.type	s370_18D5, @function
s370_18D5:
.LFB1057:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1057:
	.size	s370_18D5, .-s370_18D5
	.p2align 4,,15
	.globl	s370_18D6
	.type	s370_18D6, @function
s370_18D6:
.LFB1058:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1058:
	.size	s370_18D6, .-s370_18D6
	.p2align 4,,15
	.globl	s370_18D7
	.type	s370_18D7, @function
s370_18D7:
.LFB1059:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1059:
	.size	s370_18D7, .-s370_18D7
	.p2align 4,,15
	.globl	s370_18D8
	.type	s370_18D8, @function
s370_18D8:
.LFB1060:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1060:
	.size	s370_18D8, .-s370_18D8
	.p2align 4,,15
	.globl	s370_18D9
	.type	s370_18D9, @function
s370_18D9:
.LFB1061:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1061:
	.size	s370_18D9, .-s370_18D9
	.p2align 4,,15
	.globl	s370_18DA
	.type	s370_18DA, @function
s370_18DA:
.LFB1062:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1062:
	.size	s370_18DA, .-s370_18DA
	.p2align 4,,15
	.globl	s370_18DB
	.type	s370_18DB, @function
s370_18DB:
.LFB1063:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1063:
	.size	s370_18DB, .-s370_18DB
	.p2align 4,,15
	.globl	s370_18DC
	.type	s370_18DC, @function
s370_18DC:
.LFB1064:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1064:
	.size	s370_18DC, .-s370_18DC
	.p2align 4,,15
	.globl	s370_18DD
	.type	s370_18DD, @function
s370_18DD:
.LFB1065:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE1065:
	.size	s370_18DD, .-s370_18DD
	.p2align 4,,15
	.globl	s370_18DE
	.type	s370_18DE, @function
s370_18DE:
.LFB1066:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1066:
	.size	s370_18DE, .-s370_18DE
	.p2align 4,,15
	.globl	s370_18DF
	.type	s370_18DF, @function
s370_18DF:
.LFB1067:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 296(%rsi)
	ret
	.cfi_endproc
.LFE1067:
	.size	s370_18DF, .-s370_18DF
	.p2align 4,,15
	.globl	s370_18E0
	.type	s370_18E0, @function
s370_18E0:
.LFB1068:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1068:
	.size	s370_18E0, .-s370_18E0
	.p2align 4,,15
	.globl	s370_18E1
	.type	s370_18E1, @function
s370_18E1:
.LFB1069:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1069:
	.size	s370_18E1, .-s370_18E1
	.p2align 4,,15
	.globl	s370_18E2
	.type	s370_18E2, @function
s370_18E2:
.LFB1070:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1070:
	.size	s370_18E2, .-s370_18E2
	.p2align 4,,15
	.globl	s370_18E3
	.type	s370_18E3, @function
s370_18E3:
.LFB1071:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1071:
	.size	s370_18E3, .-s370_18E3
	.p2align 4,,15
	.globl	s370_18E4
	.type	s370_18E4, @function
s370_18E4:
.LFB1072:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1072:
	.size	s370_18E4, .-s370_18E4
	.p2align 4,,15
	.globl	s370_18E5
	.type	s370_18E5, @function
s370_18E5:
.LFB1073:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1073:
	.size	s370_18E5, .-s370_18E5
	.p2align 4,,15
	.globl	s370_18E6
	.type	s370_18E6, @function
s370_18E6:
.LFB1074:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1074:
	.size	s370_18E6, .-s370_18E6
	.p2align 4,,15
	.globl	s370_18E7
	.type	s370_18E7, @function
s370_18E7:
.LFB1075:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1075:
	.size	s370_18E7, .-s370_18E7
	.p2align 4,,15
	.globl	s370_18E8
	.type	s370_18E8, @function
s370_18E8:
.LFB1076:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1076:
	.size	s370_18E8, .-s370_18E8
	.p2align 4,,15
	.globl	s370_18E9
	.type	s370_18E9, @function
s370_18E9:
.LFB1077:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1077:
	.size	s370_18E9, .-s370_18E9
	.p2align 4,,15
	.globl	s370_18EA
	.type	s370_18EA, @function
s370_18EA:
.LFB1078:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1078:
	.size	s370_18EA, .-s370_18EA
	.p2align 4,,15
	.globl	s370_18EB
	.type	s370_18EB, @function
s370_18EB:
.LFB1079:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1079:
	.size	s370_18EB, .-s370_18EB
	.p2align 4,,15
	.globl	s370_18EC
	.type	s370_18EC, @function
s370_18EC:
.LFB1080:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1080:
	.size	s370_18EC, .-s370_18EC
	.p2align 4,,15
	.globl	s370_18ED
	.type	s370_18ED, @function
s370_18ED:
.LFB1081:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1081:
	.size	s370_18ED, .-s370_18ED
	.p2align 4,,15
	.globl	s370_18EE
	.type	s370_18EE, @function
s370_18EE:
.LFB1082:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE1082:
	.size	s370_18EE, .-s370_18EE
	.p2align 4,,15
	.globl	s370_18EF
	.type	s370_18EF, @function
s370_18EF:
.LFB1083:
	.cfi_startproc
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 304(%rsi)
	ret
	.cfi_endproc
.LFE1083:
	.size	s370_18EF, .-s370_18EF
	.p2align 4,,15
	.globl	s370_18F0
	.type	s370_18F0, @function
s370_18F0:
.LFB1084:
	.cfi_startproc
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1084:
	.size	s370_18F0, .-s370_18F0
	.p2align 4,,15
	.globl	s370_18F1
	.type	s370_18F1, @function
s370_18F1:
.LFB1085:
	.cfi_startproc
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1085:
	.size	s370_18F1, .-s370_18F1
	.p2align 4,,15
	.globl	s370_18F2
	.type	s370_18F2, @function
s370_18F2:
.LFB1086:
	.cfi_startproc
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1086:
	.size	s370_18F2, .-s370_18F2
	.p2align 4,,15
	.globl	s370_18F3
	.type	s370_18F3, @function
s370_18F3:
.LFB1087:
	.cfi_startproc
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1087:
	.size	s370_18F3, .-s370_18F3
	.p2align 4,,15
	.globl	s370_18F4
	.type	s370_18F4, @function
s370_18F4:
.LFB1088:
	.cfi_startproc
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1088:
	.size	s370_18F4, .-s370_18F4
	.p2align 4,,15
	.globl	s370_18F5
	.type	s370_18F5, @function
s370_18F5:
.LFB1089:
	.cfi_startproc
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1089:
	.size	s370_18F5, .-s370_18F5
	.p2align 4,,15
	.globl	s370_18F6
	.type	s370_18F6, @function
s370_18F6:
.LFB1090:
	.cfi_startproc
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1090:
	.size	s370_18F6, .-s370_18F6
	.p2align 4,,15
	.globl	s370_18F7
	.type	s370_18F7, @function
s370_18F7:
.LFB1091:
	.cfi_startproc
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1091:
	.size	s370_18F7, .-s370_18F7
	.p2align 4,,15
	.globl	s370_18F8
	.type	s370_18F8, @function
s370_18F8:
.LFB1092:
	.cfi_startproc
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1092:
	.size	s370_18F8, .-s370_18F8
	.p2align 4,,15
	.globl	s370_18F9
	.type	s370_18F9, @function
s370_18F9:
.LFB1093:
	.cfi_startproc
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1093:
	.size	s370_18F9, .-s370_18F9
	.p2align 4,,15
	.globl	s370_18FA
	.type	s370_18FA, @function
s370_18FA:
.LFB1094:
	.cfi_startproc
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1094:
	.size	s370_18FA, .-s370_18FA
	.p2align 4,,15
	.globl	s370_18FB
	.type	s370_18FB, @function
s370_18FB:
.LFB1095:
	.cfi_startproc
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1095:
	.size	s370_18FB, .-s370_18FB
	.p2align 4,,15
	.globl	s370_18FC
	.type	s370_18FC, @function
s370_18FC:
.LFB1096:
	.cfi_startproc
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1096:
	.size	s370_18FC, .-s370_18FC
	.p2align 4,,15
	.globl	s370_18FD
	.type	s370_18FD, @function
s370_18FD:
.LFB1097:
	.cfi_startproc
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1097:
	.size	s370_18FD, .-s370_18FD
	.p2align 4,,15
	.globl	s370_18FE
	.type	s370_18FE, @function
s370_18FE:
.LFB1098:
	.cfi_startproc
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	movl	%eax, 312(%rsi)
	ret
	.cfi_endproc
.LFE1098:
	.size	s370_18FE, .-s370_18FE
	.p2align 4,,15
	.globl	s370_18FF
	.type	s370_18FF, @function
s370_18FF:
.LFB1099:
	.cfi_startproc
	addq	$2, 136(%rsi)
	ret
	.cfi_endproc
.LFE1099:
	.size	s370_18FF, .-s370_18FF
	.p2align 4,,15
	.globl	s370_load_and_test_register
	.type	s370_load_and_test_register, @function
s370_load_and_test_register:
.LFB1100:
	.cfi_startproc
	movzbl	1(%rdi), %eax
	addq	$2, 136(%rsi)
	movq	%rax, %rdx
	shrq	$4, %rax
	andl	$15, %edx
	andl	$15, %eax
	movl	192(%rsi,%rdx,8), %edx
	testl	%edx, %edx
	movl	%edx, 192(%rsi,%rax,8)
	js	.L10511
	cmpl	$1, %edx
	sbbl	%eax, %eax
	notl	%eax
	andl	$2, %eax
	movb	%al, 100(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L10511:
	movl	$1, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1100:
	.size	s370_load_and_test_register, .-s370_load_and_test_register
	.p2align 4,,15
	.globl	s370_load_complement_register
	.type	s370_load_complement_register, @function
s370_load_complement_register:
.LFB1101:
	.cfi_startproc
	movzbl	1(%rdi), %ecx
	movb	$2, 130(%rsi)
	movq	%rsi, %rax
	addq	$2, 136(%rsi)
	movzbl	%cl, %edx
	andl	$15, %ecx
	movl	192(%rsi,%rcx,8), %ecx
	sarl	$4, %edx
	cmpl	$-2147483648, %ecx
	je	.L10522
	negl	%ecx
	movslq	%edx, %rdx
	testl	%ecx, %ecx
	movl	%ecx, 192(%rsi,%rdx,8)
	movl	$1, %edx
	js	.L10516
	cmpl	$1, %ecx
	sbbl	%edx, %edx
	notl	%edx
	andl	$2, %edx
.L10516:
	movb	%dl, 100(%rax)
.L10513:
	rep ret
	.p2align 4,,10
	.p2align 3
.L10522:
	movslq	%edx, %rdx
	movl	%ecx, 192(%rsi,%rdx,8)
	testb	$8, 101(%rsi)
	movb	$3, 100(%rsi)
	je	.L10513
	movq	2032(%rsi), %rdx
	movq	%rax, %rdi
	movl	$8, %esi
	jmp	*%rdx
	.cfi_endproc
.LFE1101:
	.size	s370_load_complement_register, .-s370_load_complement_register
	.p2align 4,,15
	.globl	s370_load_halfword_immediate
	.type	s370_load_halfword_immediate, @function
s370_load_halfword_immediate:
.LFB1102:
	.cfi_startproc
	movl	(%rdi), %eax
	addq	$4, 136(%rsi)
	bswap	%eax
	movl	%eax, %edx
	cwtl
	shrl	$20, %edx
	andl	$15, %edx
	movl	%eax, 192(%rsi,%rdx,8)
	ret
	.cfi_endproc
.LFE1102:
	.size	s370_load_halfword_immediate, .-s370_load_halfword_immediate
	.p2align 4,,15
	.globl	s370_load_multiple
	.type	s370_load_multiple, @function
s370_load_multiple:
.LFB1103:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movl	(%rdi), %r13d
	bswap	%r13d
	movl	%r13d, %ebp
	movl	%r13d, %eax
	shrl	$20, %ebp
	movl	%r13d, %r10d
	shrl	$16, %eax
	shrl	$12, %r10d
	andl	$15, %ebp
	andl	$15, %eax
	andl	$4095, %r13d
	andl	$15, %r10d
	je	.L10525
	movslq	%r10d, %rdx
	addl	192(%rsi,%rdx,8), %r13d
	andl	$16777215, %r13d
.L10525:
	subl	%ebp, %eax
	movl	$2048, %r14d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$15, %eax
	leal	4(,%rax,4), %r15d
	movl	%r13d, %eax
	andl	$2047, %eax
	subl	%eax, %r14d
	leal	5(%r10), %eax
	cltq
	leaq	(%rbx,%rax,4), %r11
	movl	1892(%r11), %eax
	testl	%eax, %eax
	je	.L10526
	movl	%r13d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L10600
.L10527:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L10601
.L10528:
	movl	%r13d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10564
	testb	$4, 46264(%rbx,%rcx)
	je	.L10564
	movl	%r13d, %r12d
	xorq	26808(%rdx), %r12
.L10530:
	cmpl	%r14d, %r15d
	jg	.L10531
	movl	%r15d, %eax
	xorl	%ecx, %ecx
	sarl	$2, %eax
	.p2align 4,,10
	.p2align 3
.L10534:
	movl	(%r12,%rcx,4), %edi
	leal	0(%rbp,%rcx), %edx
	addq	$1, %rcx
	andl	$15, %edx
	cmpl	%ecx, %eax
	bswap	%edi
	movl	%edi, 192(%rbx,%rdx,8)
	jg	.L10534
.L10524:
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L10600:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L10527
.L10526:
	movzbl	97(%rbx), %r8d
.L10529:
	movl	%r10d, %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %edi
	movq	%r11, 8(%rsp)
	movl	%r10d, 4(%rsp)
	call	s370_logical_to_main_l
	movq	8(%rsp), %r11
	movq	%rax, %r12
	movl	4(%rsp), %r10d
	jmp	.L10530
.L10531:
	movl	1892(%r11), %eax
	leal	(%r14,%r13), %esi
	movl	%esi, %edi
	andl	$16777215, %edi
	testl	%eax, %eax
	je	.L10535
	leal	1(%rax), %edx
	movl	%edi, %eax
	shrl	$11, %eax
	movslq	%edx, %rdx
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rcx
	movl	2232(%rcx), %r9d
	cmpl	%r9d, 320(%rbx,%rdx,8)
	jne	.L10602
.L10536:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L10603
.L10537:
	andl	$14680064, %esi
	orl	2224(%rbx), %esi
	cmpl	10424(%rcx), %esi
	jne	.L10567
	testb	$4, 46264(%rbx,%rax)
	je	.L10567
	movl	%edi, %eax
	xorq	26808(%rcx), %rax
.L10539:
	testb	$3, %r14b
	jne	.L10540
	sarl	$2, %r14d
	testl	%r14d, %r14d
	je	.L10541
	xorl	%edx, %edx
.L10543:
	movl	(%r12,%rdx,4), %ecx
	leal	0(%rbp,%rdx), %esi
	addq	$1, %rdx
	andl	$15, %esi
	cmpl	%edx, %r14d
	bswap	%ecx
	movl	%ecx, 192(%rbx,%rsi,8)
	jg	.L10543
	sarl	$2, %r15d
	cmpl	%r15d, %r14d
	jge	.L10524
.L10561:
	addl	%ebp, %r14d
	addl	%r15d, %ebp
.L10545:
	movl	(%rax), %edx
	movl	%r14d, %ecx
	addl	$1, %r14d
	andl	$15, %ecx
	addq	$4, %rax
	cmpl	%ebp, %r14d
	bswap	%edx
	movl	%edx, 192(%rbx,%rcx,8)
	jne	.L10545
	jmp	.L10524
.L10601:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L10528
.L10564:
	movzbl	%sil, %r8d
	jmp	.L10529
.L10541:
	sarl	$2, %r15d
	jmp	.L10561
.L10540:
	leaq	16(%rsp), %rdx
	xorl	%ecx, %ecx
.L10547:
	movzbl	(%r12,%rcx), %esi
	addq	$1, %rcx
	addq	$1, %rdx
	cmpl	%ecx, %r14d
	movb	%sil, -1(%rdx)
	jg	.L10547
	testl	%r14d, %r14d
	movl	$1, %ecx
	cmovg	%r14d, %ecx
	cmpl	%ecx, %r15d
	jle	.L10557
	leaq	16(%rdx), %rsi
	movl	%r15d, %r8d
	subl	%ecx, %r8d
	cmpq	%rsi, %rax
	leaq	16(%rax), %rsi
	setae	%dil
	cmpq	%rsi, %rdx
	setae	%sil
	orb	%sil, %dil
	je	.L10551
	cmpl	$15, %r8d
	jbe	.L10551
	movl	%r8d, %r10d
	shrl	$4, %r10d
	movl	%r10d, %esi
	sall	$4, %esi
	testl	%esi, %esi
	je	.L10552
	xorl	%edi, %edi
	xorl	%r9d, %r9d
.L10558:
	movdqu	(%rax,%rdi), %xmm0
	addl	$1, %r9d
	movdqu	%xmm0, (%rdx,%rdi)
	addq	$16, %rdi
	cmpl	%r9d, %r10d
	ja	.L10558
	movl	%esi, %edi
	addl	%esi, %ecx
	addq	%rdi, %rdx
	addq	%rdi, %rax
	cmpl	%r8d, %esi
	je	.L10557
.L10552:
	movzbl	(%rax), %esi
	movb	%sil, (%rdx)
	leal	1(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	1(%rax), %esi
	movb	%sil, 1(%rdx)
	leal	2(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	2(%rax), %esi
	movb	%sil, 2(%rdx)
	leal	3(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	3(%rax), %esi
	movb	%sil, 3(%rdx)
	leal	4(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	4(%rax), %esi
	movb	%sil, 4(%rdx)
	leal	5(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	5(%rax), %esi
	movb	%sil, 5(%rdx)
	leal	6(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	6(%rax), %esi
	movb	%sil, 6(%rdx)
	leal	7(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	7(%rax), %esi
	movb	%sil, 7(%rdx)
	leal	8(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	8(%rax), %esi
	movb	%sil, 8(%rdx)
	leal	9(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	9(%rax), %esi
	movb	%sil, 9(%rdx)
	leal	10(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	10(%rax), %esi
	movb	%sil, 10(%rdx)
	leal	11(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	11(%rax), %esi
	movb	%sil, 11(%rdx)
	leal	12(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	12(%rax), %esi
	movb	%sil, 12(%rdx)
	leal	13(%rcx), %esi
	cmpl	%esi, %r15d
	jle	.L10557
	movzbl	13(%rax), %esi
	addl	$14, %ecx
	cmpl	%ecx, %r15d
	movb	%sil, 13(%rdx)
	jle	.L10557
	movzbl	14(%rax), %eax
	movb	%al, 14(%rdx)
.L10557:
	movl	16(%rsp), %eax
	sarl	$2, %r15d
	movslq	%ebp, %rdx
	cmpl	$1, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	20(%rsp), %eax
	leal	1(%rbp), %edx
	andl	$15, %edx
	cmpl	$2, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	24(%rsp), %eax
	leal	2(%rbp), %edx
	andl	$15, %edx
	cmpl	$3, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	28(%rsp), %eax
	leal	3(%rbp), %edx
	andl	$15, %edx
	cmpl	$4, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	32(%rsp), %eax
	leal	4(%rbp), %edx
	andl	$15, %edx
	cmpl	$5, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	36(%rsp), %eax
	leal	5(%rbp), %edx
	andl	$15, %edx
	cmpl	$6, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	40(%rsp), %eax
	leal	6(%rbp), %edx
	andl	$15, %edx
	cmpl	$7, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	44(%rsp), %eax
	leal	7(%rbp), %edx
	andl	$15, %edx
	cmpl	$8, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	48(%rsp), %eax
	leal	8(%rbp), %edx
	andl	$15, %edx
	cmpl	$9, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	52(%rsp), %eax
	leal	9(%rbp), %edx
	andl	$15, %edx
	cmpl	$10, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	56(%rsp), %eax
	leal	10(%rbp), %edx
	andl	$15, %edx
	cmpl	$11, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	60(%rsp), %eax
	leal	11(%rbp), %edx
	andl	$15, %edx
	cmpl	$12, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	64(%rsp), %eax
	leal	12(%rbp), %edx
	andl	$15, %edx
	cmpl	$13, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	68(%rsp), %eax
	leal	13(%rbp), %edx
	andl	$15, %edx
	cmpl	$14, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	72(%rsp), %eax
	leal	14(%rbp), %edx
	andl	$15, %edx
	cmpl	$15, %r15d
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jle	.L10524
	movl	76(%rsp), %eax
	leal	15(%rbp), %edx
	andl	$15, %edx
	bswap	%eax
	movl	%eax, 192(%rbx,%rdx,8)
	jmp	.L10524
.L10603:
	cmpb	43192(%rbx,%rax), %dl
	je	.L10537
.L10567:
	movzbl	%dl, %r8d
.L10538:
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, %esi
	call	s370_logical_to_main_l
	jmp	.L10539
.L10602:
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rdx)
	jne	.L10536
.L10535:
	movzbl	97(%rbx), %r8d
	jmp	.L10538
.L10551:
	leal	-1(%r15), %esi
	movl	%esi, %edi
	subl	%ecx, %edi
	leaq	1(%rax,%rdi), %rcx
.L10560:
	addq	$1, %rax
	movzbl	-1(%rax), %esi
	addq	$1, %rdx
	cmpq	%rcx, %rax
	movb	%sil, -1(%rdx)
	jne	.L10560
	jmp	.L10557
	.cfi_endproc
.LFE1103:
	.size	s370_load_multiple, .-s370_load_multiple
	.p2align 4,,15
	.globl	s370_load_negative_register
	.type	s370_load_negative_register, @function
s370_load_negative_register:
.LFB1104:
	.cfi_startproc
	movzbl	1(%rdi), %eax
	addq	$2, 136(%rsi)
	movzbl	%al, %edx
	andl	$15, %eax
	movl	192(%rsi,%rax,8), %eax
	sarl	$4, %edx
	movslq	%edx, %rdx
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%eax, %ecx
	testl	%ecx, %ecx
	movl	%ecx, 192(%rsi,%rdx,8)
	setne	100(%rsi)
	ret
	.cfi_endproc
.LFE1104:
	.size	s370_load_negative_register, .-s370_load_negative_register
	.p2align 4,,15
	.globl	s370_load_positive_register
	.type	s370_load_positive_register, @function
s370_load_positive_register:
.LFB1105:
	.cfi_startproc
	movzbl	1(%rdi), %edx
	movb	$2, 130(%rsi)
	movq	%rsi, %rax
	addq	$2, 136(%rsi)
	movzbl	%dl, %ecx
	andl	$15, %edx
	movl	192(%rsi,%rdx,8), %edx
	sarl	$4, %ecx
	movslq	%ecx, %rcx
	cmpl	$-2147483648, %edx
	je	.L10618
	testl	%edx, %edx
	js	.L10619
	movl	%edx, 192(%rsi,%rcx,8)
	xorl	%ecx, %ecx
	testl	%edx, %edx
	jne	.L10611
	movb	%cl, 100(%rax)
.L10607:
	rep ret
	.p2align 4,,10
	.p2align 3
.L10619:
	negl	%edx
	movl	%edx, 192(%rsi,%rcx,8)
.L10611:
	movl	$2, %ecx
	movb	%cl, 100(%rax)
	jmp	.L10607
	.p2align 4,,10
	.p2align 3
.L10618:
	movl	%edx, 192(%rsi,%rcx,8)
	testb	$8, 101(%rsi)
	movb	$3, 100(%rsi)
	je	.L10607
	movq	2032(%rsi), %rdx
	movq	%rax, %rdi
	movl	$8, %esi
	jmp	*%rdx
	.cfi_endproc
.LFE1105:
	.size	s370_load_positive_register, .-s370_load_positive_register
	.p2align 4,,15
	.globl	s370_monitor_call
	.type	s370_monitor_call, @function
s370_monitor_call:
.LFB1106:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %edx
	movl	%eax, %r12d
	shrl	$12, %edx
	andl	$4095, %eax
	shrl	$16, %r12d
	andl	$15, %edx
	movl	%eax, %ebp
	je	.L10621
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	andl	$16777215, %ebp
.L10621:
	addq	$4, 136(%rbx)
	cmpb	$15, %r12b
	movb	$4, 130(%rbx)
	ja	.L10628
.L10622:
	movzwl	392(%rbx), %edx
	movl	%r12d, %ecx
	sall	%cl, %edx
	andb	$128, %dh
	jne	.L10629
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L10629:
	.cfi_restore_state
	movzbl	%r12b, %r12d
	movl	%ebp, 784(%rbx)
	movq	%rbx, %rdi
	movw	%r12w, 1008(%rbx)
	movq	2032(%rbx), %rax
	movl	$64, %esi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L10628:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L10622
	.cfi_endproc
.LFE1106:
	.size	s370_monitor_call, .-s370_monitor_call
	.p2align 4,,15
	.globl	s370_move_immediate
	.type	s370_move_immediate, @function
s370_move_immediate:
.LFB1107:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	(%rdi), %ebp
	bswap	%ebp
	movl	%ebp, %eax
	movl	%ebp, %r12d
	shrl	$12, %eax
	shrl	$16, %r12d
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %esi
	je	.L10631
	cltq
	addl	192(%rbx,%rax,8), %ebp
	andl	$16777215, %ebp
.L10631:
	leal	5(%rsi), %eax
	movb	$4, 130(%rbx)
	movzbl	%r12b, %r12d
	addq	$4, 136(%rbx)
	cltq
	movl	1892(%rbx,%rax,4), %edx
	testl	%edx, %edx
	je	.L10632
	leal	1(%rdx), %eax
	movl	%ebp, %ecx
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L10653
.L10633:
	movzbl	97(%rbx), %eax
	testb	%al, %al
	jne	.L10654
.L10634:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10632
	testb	$2, 46264(%rbx,%rcx)
	je	.L10632
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L10635:
	subl	$80, %ebp
	movb	%r12b, (%rax)
	cmpl	$3, %ebp
	jbe	.L10655
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L10653:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L10633
.L10632:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L10635
.L10654:
	cmpb	43192(%rbx,%rcx), %al
	je	.L10634
	.p2align 4,,4
	jmp	.L10632
.L10655:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE1107:
	.size	s370_move_immediate, .-s370_move_immediate
	.p2align 4,,15
	.globl	s370_move_character
	.type	s370_move_character, @function
s370_move_character:
.LFB1108:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	2(%rdi), %eax
	bswap	%eax
	movl	%eax, %r13d
	movl	%eax, %r10d
	shrl	$16, %r13d
	shrl	$28, %r10d
	andl	$4095, %r13d
	testl	%r10d, %r10d
	je	.L10657
	movslq	%r10d, %rdx
	addl	192(%rsi,%rdx,8), %r13d
	andl	$16777215, %r13d
.L10657:
	movl	%eax, %r14d
	shrl	$12, %eax
	andl	$4095, %r14d
	andl	$15, %eax
	movl	%eax, 40(%rsp)
	je	.L10658
	cltq
	addl	192(%r12,%rax,8), %r14d
	andl	$16777215, %r14d
.L10658:
	movzbl	1(%rdi), %eax
	movb	$6, 130(%r12)
	addq	$6, 136(%r12)
	cmpl	$83, %r14d
	movl	%eax, 20(%rsp)
	movzbl	97(%r12), %eax
	movb	%al, 8(%rsp)
	jbe	.L10827
.L10660:
	movl	40(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%r12,%rax,4), %rax
	movq	%rax, 24(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L10661
	movl	%r14d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%r12,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%r12,%rax,8)
	jne	.L10828
.L10662:
	cmpb	$0, 8(%rsp)
	jne	.L10829
.L10663:
	movl	%r14d, %eax
	andl	$14680064, %eax
	orl	2224(%r12), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10661
	testb	$4, 46264(%r12,%rcx)
	je	.L10661
	movl	%r14d, %ebp
	xorq	26808(%rdx), %rbp
.L10664:
	leal	5(%r10), %eax
	cltq
	leaq	(%r12,%rax,4), %rax
	movq	%rax, 32(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L10665
	leal	1(%rax), %edx
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%r12,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%r12,%rdx,8)
	jne	.L10830
.L10666:
	cmpb	$0, 8(%rsp)
	jne	.L10831
.L10667:
	movl	%r13d, %edx
	andl	$14680064, %edx
	orl	2224(%r12), %edx
	cmpl	10424(%rax), %edx
	jne	.L10665
	testb	$1, 46264(%r12,%rcx)
	je	.L10665
	movq	35000(%rax), %r11
	movl	%r13d, %ebx
	movq	%r11, 984(%r12)
	xorq	26808(%rax), %rbx
.L10668:
	movl	20(%rsp), %esi
	movl	$2047, %r15d
	movl	%r13d, %eax
	andl	$2047, %eax
	subl	%esi, %r15d
	cmpl	%r15d, %eax
	jg	.L10669
	movl	%r14d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r15d
	jl	.L10670
	movl	%esi, %eax
	addl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L10671:
	testb	$7, %bl
	je	.L10832
	addq	$1, %rbp
	movzbl	-1(%rbp), %edx
	addq	$1, %rbx
	subl	$1, %eax
	movb	%dl, -1(%rbx)
	jne	.L10671
.L10673:
	orb	$6, (%r11)
.L10694:
	cmpl	$83, %r13d
	jbe	.L10833
.L10656:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L10832:
	.cfi_restore_state
	movq	%rbx, %rdx
	subq	%rbp, %rdx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	cmpl	$7, %edx
	jle	.L10712
	cmpl	$7, %eax
	jle	.L10712
	subl	$8, %eax
	movl	%eax, %edi
	shrl	$3, %edi
	movl	%edi, %edx
	leaq	8(,%rdx,8), %rsi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L10713:
	movq	0(%rbp,%rdx), %rcx
	movq	%rcx, (%rbx,%rdx)
	addq	$8, %rdx
	cmpq	%rsi, %rdx
	jne	.L10713
	negl	%edi
	addq	%rdx, %rbx
	addq	%rdx, %rbp
	leal	(%rax,%rdi,8), %eax
.L10712:
	testl	%eax, %eax
	je	.L10673
	leaq	16(%rbp), %rdx
	movl	%eax, %r8d
	cmpq	%rdx, %rbx
	leaq	16(%rbx), %rdx
	setae	%cl
	cmpq	%rdx, %rbp
	setae	%dl
	orb	%dl, %cl
	je	.L10680
	cmpl	$15, %eax
	jbe	.L10680
	movl	%eax, %edi
	shrl	$4, %edi
	movl	%edi, %edx
	sall	$4, %edx
	testl	%edx, %edx
	je	.L10681
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.L10686:
	movdqu	0(%rbp,%rcx), %xmm0
	addl	$1, %esi
	movdqu	%xmm0, (%rbx,%rcx)
	addq	$16, %rcx
	cmpl	%esi, %edi
	ja	.L10686
	movl	%edx, %ecx
	subl	%edx, %eax
	addq	%rcx, %rbx
	addq	%rcx, %rbp
	cmpl	%r8d, %edx
	je	.L10673
	.p2align 4,,10
	.p2align 3
.L10681:
	movzbl	0(%rbp), %edx
	cmpl	$1, %eax
	movb	%dl, (%rbx)
	je	.L10673
	movzbl	1(%rbp), %edx
	cmpl	$2, %eax
	movb	%dl, 1(%rbx)
	je	.L10673
	movzbl	2(%rbp), %edx
	cmpl	$3, %eax
	movb	%dl, 2(%rbx)
	je	.L10673
	movzbl	3(%rbp), %edx
	cmpl	$4, %eax
	movb	%dl, 3(%rbx)
	je	.L10673
	movzbl	4(%rbp), %edx
	cmpl	$5, %eax
	movb	%dl, 4(%rbx)
	je	.L10673
	movzbl	5(%rbp), %edx
	cmpl	$6, %eax
	movb	%dl, 5(%rbx)
	je	.L10673
	movzbl	6(%rbp), %edx
	cmpl	$7, %eax
	movb	%dl, 6(%rbx)
	je	.L10673
	movzbl	7(%rbp), %edx
	cmpl	$8, %eax
	movb	%dl, 7(%rbx)
	je	.L10673
	movzbl	8(%rbp), %edx
	cmpl	$9, %eax
	movb	%dl, 8(%rbx)
	je	.L10673
	movzbl	9(%rbp), %edx
	cmpl	$10, %eax
	movb	%dl, 9(%rbx)
	je	.L10673
	movzbl	10(%rbp), %edx
	cmpl	$11, %eax
	movb	%dl, 10(%rbx)
	je	.L10673
	movzbl	11(%rbp), %edx
	cmpl	$12, %eax
	movb	%dl, 11(%rbx)
	je	.L10673
	movzbl	12(%rbp), %edx
	cmpl	$13, %eax
	movb	%dl, 12(%rbx)
	je	.L10673
	movzbl	13(%rbp), %edx
	cmpl	$14, %eax
	movb	%dl, 13(%rbx)
	je	.L10673
	movzbl	14(%rbp), %eax
	movb	%al, 14(%rbx)
	jmp	.L10673
	.p2align 4,,10
	.p2align 3
.L10680:
	subl	$1, %eax
	leaq	1(%rbp,%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L10688:
	addq	$1, %rbp
	movzbl	-1(%rbp), %eax
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	movb	%al, -1(%rbx)
	jne	.L10688
	jmp	.L10673
.L10830:
	movzbl	44216(%r12,%rcx), %esi
	testb	%sil, 1976(%r12,%rdx)
	jne	.L10666
.L10665:
	movl	20(%rsp), %eax
	movl	%r10d, %esi
	movl	$1, %ecx
	movzbl	8(%rsp), %r8d
	movq	%r12, %rdx
	movl	%r13d, %edi
	movl	%r10d, 44(%rsp)
	leal	1(%rax), %r9d
	andl	$511, %r9d
	call	s370_logical_to_main_l
	movq	984(%r12), %r11
	movq	%rax, %rbx
	movl	44(%rsp), %r10d
	jmp	.L10668
.L10828:
	movzbl	44216(%r12,%rcx), %esi
	testb	%sil, 1976(%r12,%rax)
	jne	.L10662
.L10661:
	movzbl	8(%rsp), %r8d
	movl	$1, %r9d
	movq	%r12, %rdx
	movl	40(%rsp), %esi
	movl	$4, %ecx
	movl	%r14d, %edi
	movl	%r10d, 32(%rsp)
	call	s370_logical_to_main_l
	movl	32(%rsp), %r10d
	movq	%rax, %rbp
	jmp	.L10664
.L10827:
	movl	20(%rsp), %eax
	addl	%r14d, %eax
	cmpl	$79, %eax
	jbe	.L10660
	movq	%r12, %rdi
	movl	%r10d, 24(%rsp)
	call	s370_store_int_timer
	movl	24(%rsp), %r10d
	jmp	.L10660
.L10833:
	addl	20(%rsp), %r13d
	cmpl	$79, %r13d
	jbe	.L10656
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
.L10831:
	.cfi_restore_state
	movzbl	8(%rsp), %esi
	cmpb	43192(%r12,%rcx), %sil
	je	.L10667
	jmp	.L10665
.L10670:
	movl	$2048, %r15d
	subl	%eax, %r15d
	movq	24(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L10689
	leal	(%r15,%r14), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%r12,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%r12,%rsi,8)
	jne	.L10834
.L10690:
	cmpb	$0, 8(%rsp)
	jne	.L10835
.L10692:
	andl	$14680064, %ecx
	orl	2224(%r12), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L10691
	testb	$4, 46264(%r12,%rax)
	je	.L10691
	movl	%edi, %r14d
	xorq	26808(%rdx), %r14
.L10693:
	movl	%r15d, %edx
	movq	%rbp, %rsi
	movq	%r11, 8(%rsp)
	movq	%rbx, %rdi
	call	concpy.isra.2
	movl	20(%rsp), %edx
	movl	%r15d, %edi
	addq	%rbx, %rdi
	movq	%r14, %rsi
	subl	%r15d, %edx
	addl	$1, %edx
	call	concpy.isra.2
	movq	8(%rsp), %r11
	jmp	.L10673
.L10669:
	movl	$2048, 44(%rsp)
	subl	%eax, 44(%rsp)
	movq	32(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L10695
	leal	1(%rax), %esi
	movl	44(%rsp), %eax
	movslq	%esi, %rsi
	leal	(%rax,%r13), %ecx
	movl	%ecx, %edi
	andl	$16777215, %edi
	movl	%edi, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	(%r12,%rdx,8), %rax
	movl	2232(%rax), %r9d
	cmpl	%r9d, 320(%r12,%rsi,8)
	jne	.L10836
.L10696:
	cmpb	$0, 8(%rsp)
	jne	.L10837
.L10698:
	andl	$14680064, %ecx
	orl	2224(%r12), %ecx
	cmpl	10424(%rax), %ecx
	jne	.L10697
	testb	$1, 46264(%r12,%rdx)
	je	.L10697
	movq	35000(%rax), %rsi
	movq	%rsi, 984(%r12)
	movq	26808(%rax), %rax
	movq	%rsi, 48(%rsp)
	movl	%edi, %esi
	movq	%rsi, 32(%rsp)
	xorq	%rax, 32(%rsp)
.L10699:
	movl	%r14d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r15d
	jl	.L10700
	movl	44(%rsp), %r15d
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r11, 8(%rsp)
	movl	%r15d, %edx
	call	concpy.isra.2
	movl	20(%rsp), %edx
	movl	%r15d, %esi
	movq	32(%rsp), %rdi
	addq	%rbp, %rsi
	subl	%r15d, %edx
	addl	$1, %edx
	call	concpy.isra.2
	movq	8(%rsp), %r11
.L10701:
	orb	$6, (%r11)
	movq	48(%rsp), %rax
	orb	$6, (%rax)
	jmp	.L10694
.L10689:
	leal	(%r15,%r14), %edi
	andl	$16777215, %edi
.L10691:
	movzbl	8(%rsp), %r8d
	movl	$1, %r9d
	movq	%r12, %rdx
	movl	40(%rsp), %esi
	movl	$4, %ecx
	movq	%r11, 24(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r11
	movq	%rax, %r14
	jmp	.L10693
.L10835:
	movzbl	8(%rsp), %esi
	cmpb	43192(%r12,%rax), %sil
	je	.L10692
	jmp	.L10691
.L10700:
	movl	$2048, %r15d
	subl	%eax, %r15d
	movq	24(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L10702
	leal	(%r15,%r14), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%r12,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%r12,%rsi,8)
	jne	.L10838
.L10703:
	cmpb	$0, 8(%rsp)
	jne	.L10839
.L10705:
	andl	$14680064, %ecx
	orl	2224(%r12), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L10704
	testb	$4, 46264(%r12,%rax)
	je	.L10704
	movl	%edi, %r14d
	xorq	26808(%rdx), %r14
.L10706:
	cmpl	%r15d, 44(%rsp)
	movq	%r11, 8(%rsp)
	je	.L10840
	jge	.L10708
	movl	44(%rsp), %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	concpy.isra.2
	movl	44(%rsp), %eax
	movl	%r15d, %edx
	movslq	%eax, %rbx
	subl	%eax, %edx
	leaq	0(%rbp,%rbx), %rsi
	movq	32(%rsp), %rbp
	movq	%rbp, %rdi
	call	concpy.isra.2
	movl	20(%rsp), %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	subl	%r15d, %edx
	movslq	%r15d, %r15
	subq	%rbx, %r15
	addl	$1, %edx
	addq	%r15, %rdi
	call	concpy.isra.2
	movq	8(%rsp), %r11
	jmp	.L10701
.L10695:
	movl	44(%rsp), %eax
	leal	(%rax,%r13), %edi
	andl	$16777215, %edi
.L10697:
	movzbl	8(%rsp), %r8d
	movl	$1, %r9d
	movq	%r12, %rdx
	movl	$1, %ecx
	movl	%r10d, %esi
	movq	%r11, 56(%rsp)
	call	s370_logical_to_main_l
	movq	56(%rsp), %r11
	movq	%rax, 32(%rsp)
	movq	984(%r12), %rax
	movq	%rax, 48(%rsp)
	jmp	.L10699
.L10837:
	movzbl	8(%rsp), %esi
	cmpb	43192(%r12,%rdx), %sil
	je	.L10698
	jmp	.L10697
.L10834:
	movzbl	44216(%r12,%rax), %r8d
	testb	%r8b, 1976(%r12,%rsi)
	jne	.L10690
	jmp	.L10691
.L10829:
	movzbl	8(%rsp), %eax
	cmpb	43192(%r12,%rcx), %al
	je	.L10663
	jmp	.L10661
.L10836:
	movzbl	44216(%r12,%rdx), %r8d
	testb	%r8b, 1976(%r12,%rsi)
	jne	.L10696
	jmp	.L10697
.L10708:
	movq	%rbp, %rsi
	movl	%r15d, %edx
	movq	%rbx, %rdi
	call	concpy.isra.2
	movl	44(%rsp), %edx
	movslq	%r15d, %rbp
	leaq	(%rbx,%rbp), %rdi
	movq	%r14, %rsi
	subl	%r15d, %edx
	call	concpy.isra.2
	movslq	44(%rsp), %rax
	movl	20(%rsp), %esi
	movq	32(%rsp), %rdi
	subl	%eax, %esi
	subq	%rbp, %rax
	movl	%esi, %edx
	leaq	(%r14,%rax), %rsi
	addl	$1, %edx
	call	concpy.isra.2
	movq	8(%rsp), %r11
	jmp	.L10701
.L10840:
	movl	44(%rsp), %r15d
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	call	concpy.isra.2
	movl	20(%rsp), %edx
	movq	%r14, %rsi
	movq	32(%rsp), %rdi
	subl	%r15d, %edx
	addl	$1, %edx
	call	concpy.isra.2
	movq	8(%rsp), %r11
	jmp	.L10701
.L10702:
	leal	(%r15,%r14), %edi
	andl	$16777215, %edi
.L10704:
	movzbl	8(%rsp), %r8d
	movl	$1, %r9d
	movq	%r12, %rdx
	movl	40(%rsp), %esi
	movl	$4, %ecx
	movq	%r11, 24(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r11
	movq	%rax, %r14
	jmp	.L10706
.L10839:
	movzbl	8(%rsp), %esi
	cmpb	43192(%r12,%rax), %sil
	je	.L10705
	jmp	.L10704
.L10838:
	movzbl	44216(%r12,%rax), %r8d
	testb	%r8b, 1976(%r12,%rsi)
	jne	.L10703
	jmp	.L10704
	.cfi_endproc
.LFE1108:
	.size	s370_move_character, .-s370_move_character
	.p2align 4,,15
	.globl	s370_D200
	.type	s370_D200, @function
s370_D200:
.LFB1109:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	shrl	$12, %eax
	andl	$4095, %ebp
	andl	$15, %eax
	movl	%eax, %r13d
	je	.L10842
	cltq
	addl	192(%rsi,%rax,8), %ebp
	andl	$16777215, %ebp
.L10842:
	movzbl	4(%rdi), %esi
	movzbl	5(%rdi), %edx
	movl	%esi, %eax
	shrb	$4, %sil
	andl	$15, %eax
	movzbl	%sil, %esi
	sall	$8, %eax
	orl	%edx, %eax
	testl	%esi, %esi
	je	.L10843
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %eax
	andl	$16777215, %eax
.L10843:
	leal	5(%rsi), %edx
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L10844
	movl	%eax, %edi
	addl	$1, %edx
	shrl	$11, %edi
	movslq	%edx, %rdx
	andl	$1023, %edi
	leaq	(%rbx,%rdi,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdx,8)
	jne	.L10884
.L10845:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L10885
.L10846:
	movl	%eax, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L10844
	testb	$4, 46264(%rbx,%rdi)
	je	.L10844
	movl	%eax, %r12d
	xorq	26808(%rcx), %r12
.L10847:
	leal	5(%r13), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L10848
	leal	1(%rax), %edx
	movl	%ebp, %eax
	shrl	$11, %eax
	movslq	%edx, %rdx
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rcx
	movl	2232(%rcx), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L10886
.L10849:
	testb	%r8b, %r8b
	jne	.L10887
.L10850:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L10848
	testb	$2, 46264(%rbx,%rax)
	je	.L10848
	movl	%ebp, %eax
	xorq	26808(%rcx), %rax
.L10851:
	movzbl	(%r12), %edx
	subl	$80, %ebp
	cmpl	$3, %ebp
	movb	%dl, (%rax)
	jbe	.L10888
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L10884:
	.cfi_restore_state
	movzbl	44216(%rbx,%rdi), %r8d
	testb	%r8b, 1976(%rbx,%rdx)
	jne	.L10845
.L10844:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%eax, %edi
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r12
	jmp	.L10847
.L10886:
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L10849
.L10848:
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L10851
.L10887:
	cmpb	%r8b, 43192(%rbx,%rax)
	je	.L10850
	.p2align 4,,3
	jmp	.L10848
.L10885:
	cmpb	43192(%rbx,%rdi), %r8b
	je	.L10846
	.p2align 4,,3
	jmp	.L10844
.L10888:
	popq	%rax
	.cfi_def_cfa_offset 40
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
	.cfi_endproc
.LFE1109:
	.size	s370_D200, .-s370_D200
	.p2align 4,,15
	.globl	s370_move_inverse
	.type	s370_move_inverse, @function
s370_move_inverse:
.LFB1110:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	2(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	movl	%eax, %ecx
	shrl	$16, %ebp
	shrl	$28, %ecx
	andl	$4095, %ebp
	testl	%ecx, %ecx
	movl	%ecx, (%rsp)
	je	.L10890
	movslq	%ecx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	andl	$16777215, %ebp
.L10890:
	movl	%eax, %r12d
	shrl	$12, %eax
	andl	$4095, %r12d
	andl	$15, %eax
	movl	%eax, 4(%rsp)
	je	.L10891
	cltq
	addl	192(%rbx,%rax,8), %r12d
	andl	$16777215, %r12d
.L10891:
	movzbl	1(%rdi), %r15d
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	cmpb	$0, 2064(%rbx)
	js	.L10892
	movl	$1, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L10892:
	leal	0(%rbp,%r15), %r13d
	movl	%r13d, %eax
	xorl	%ebp, %eax
	testl	$2147481600, %eax
	movl	(%rsp), %eax
	leal	5(%rax), %r11d
	movslq	%r11d, %r11
	jne	.L10893
.L10894:
	movl	%r12d, %eax
	subl	%r15d, %eax
	movl	%eax, %r13d
	andl	$16777215, %r13d
	leal	0(%r13,%r15), %r14d
	movl	%r14d, %edx
	xorl	%r13d, %edx
	andl	$33552384, %edx
	jne	.L10905
	movl	4(%rsp), %eax
	leal	5(%rax), %r10d
	movslq	%r10d, %r10
.L10906:
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L10930:
	leal	-80(%r12), %eax
	cmpl	$3, %eax
	jbe	.L11005
.L10918:
	movl	1892(%rbx,%r10,4), %eax
	testl	%eax, %eax
	je	.L10919
	movl	%r12d, %esi
	addl	$1, %eax
	shrl	$11, %esi
	cltq
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L11006
.L10920:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11007
.L10921:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10940
	testb	$4, 46264(%rbx,%rsi)
	je	.L10940
	movl	%r12d, %eax
	movzbl	%cl, %r8d
	xorq	26808(%rdx), %rax
.L10923:
	movzbl	(%rax), %r14d
	movl	1892(%rbx,%r11,4), %eax
	testl	%eax, %eax
	je	.L10924
	movl	%ebp, %esi
	addl	$1, %eax
	shrl	$11, %esi
	cltq
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L11008
.L10925:
	testb	%r8b, %r8b
	jne	.L11009
.L10926:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10924
	testb	$2, 46264(%rbx,%rsi)
	je	.L10924
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L10927:
	movb	%r14b, (%rax)
	leal	-80(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L11010
.L10928:
	addl	$1, %ebp
	subl	$1, %r12d
	addl	$1, %r13d
	andl	$16777215, %ebp
	andl	$16777215, %r12d
	cmpl	%r15d, %r13d
	jle	.L10930
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L10893:
	.cfi_restore_state
	leaq	(%rbx,%r11,4), %r14
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L10895
	movl	%ebp, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L11011
.L10896:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L11012
.L10897:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L10935
	testb	$1, 46264(%rbx,%rcx)
	je	.L10935
	movq	35000(%rdx), %rax
	movq	%rax, 984(%rbx)
.L10899:
	movl	%ebp, %edx
	movl	$2047, %eax
	andl	$2047, %edx
	subl	%r15d, %eax
	cmpl	%eax, %edx
	jg	.L11013
	cmpl	$83, %ebp
	ja	.L10894
	cmpl	$79, %r13d
	jbe	.L10894
	movq	%rbx, %rdi
	movq	%r11, 8(%rsp)
	call	s370_store_int_timer
	movq	8(%rsp), %r11
	jmp	.L10894
	.p2align 4,,10
	.p2align 3
.L10905:
	movl	4(%rsp), %ecx
	leal	5(%rcx), %r10d
	movslq	%r10d, %r10
	leaq	(%rbx,%r10,4), %rcx
	movl	1892(%rcx), %edx
	movq	%rcx, 8(%rsp)
	testl	%edx, %edx
	je	.L10910
	leal	1(%rdx), %esi
	movl	%r13d, %edx
	shrl	$11, %edx
	movslq	%esi, %rsi
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %edi
	cmpl	%edi, 320(%rbx,%rsi,8)
	jne	.L11014
.L10909:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L11015
.L10911:
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L10937
	testb	$4, 46264(%rbx,%rdx)
	je	.L10937
.L10912:
	movl	%r13d, %edx
	movl	$2047, %eax
	andl	$2047, %edx
	subl	%r15d, %eax
	cmpl	%eax, %edx
	jg	.L11016
	cmpl	$83, %r13d
	ja	.L10906
	cmpl	$79, %r14d
	jbe	.L10906
	movq	%rbx, %rdi
	movq	%r11, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_store_int_timer
	movq	16(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L10906
	.p2align 4,,10
	.p2align 3
.L11008:
	movzbl	44216(%rbx,%rsi), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L10925
.L10924:
	movl	(%rsp), %esi
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r11, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_logical_to_main_l
	movq	16(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L10927
.L11007:
	cmpb	43192(%rbx,%rsi), %cl
	je	.L10921
.L10940:
	movzbl	%cl, %r8d
.L10922:
	movl	4(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movq	%r11, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	16(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L10923
.L11009:
	cmpb	43192(%rbx,%rsi), %r8b
	je	.L10926
	jmp	.L10924
	.p2align 4,,10
	.p2align 3
.L11006:
	movzbl	44216(%rbx,%rsi), %ecx
	testb	%cl, 1976(%rbx,%rax)
	jne	.L10920
.L10919:
	movzbl	97(%rbx), %r8d
	jmp	.L10922
.L11005:
	movq	%rbx, %rdi
	movq	%r11, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_store_int_timer
	movq	16(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L10918
.L11010:
	movq	%rbx, %rdi
	movq	%r11, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_fetch_int_timer
	movq	16(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L10928
.L11011:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L10896
.L10895:
	movzbl	97(%rbx), %r8d
.L10898:
	movl	(%rsp), %esi
	movl	$1, %r9d
	movl	$1, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r11, 8(%rsp)
	call	s370_logical_to_main_l
	movq	8(%rsp), %r11
	jmp	.L10899
.L11012:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L10897
.L10935:
	movzbl	%sil, %r8d
	jmp	.L10898
.L11013:
	movl	1892(%r14), %eax
	testl	%eax, %eax
	je	.L10901
	leal	1(%rax), %ecx
	movl	%r13d, %eax
	sall	$11, %eax
	movslq	%ecx, %rcx
	shrl	$22, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L11017
.L10902:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11018
.L10903:
	andl	$14680064, %r13d
	orl	2224(%rbx), %r13d
	cmpl	10424(%rdx), %r13d
	jne	.L10901
	testb	$1, 46264(%rbx,%rax)
	je	.L10901
	movq	35000(%rdx), %rax
	movq	%rax, 984(%rbx)
	jmp	.L10894
.L11018:
	cmpb	43192(%rbx,%rax), %cl
	je	.L10903
.L10901:
	movl	(%rsp), %esi
	movq	%rbx, %r8
	movl	$1, %ecx
	movl	%r15d, %edx
	movl	%ebp, %edi
	movq	%r11, 8(%rsp)
	call	s370_validate_operand.part.11
	movq	8(%rsp), %r11
	jmp	.L10894
.L11017:
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L10902
	jmp	.L10901
.L11014:
	movzbl	44216(%rbx,%rdx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L10909
.L10910:
	movzbl	97(%rbx), %r8d
.L10908:
	movl	4(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %edi
	movq	%r11, 24(%rsp)
	movq	%r10, 16(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r11
	movq	16(%rsp), %r10
	jmp	.L10912
.L11015:
	cmpb	43192(%rbx,%rdx), %sil
	je	.L10911
.L10937:
	movzbl	%sil, %r8d
	jmp	.L10908
.L11016:
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L10914
	leal	1(%rax), %ecx
	movl	%r14d, %eax
	sall	$11, %eax
	movslq	%ecx, %rcx
	shrl	$22, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L11019
.L10915:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11020
.L10916:
	andl	$14680064, %r14d
	orl	2224(%rbx), %r14d
	cmpl	10424(%rdx), %r14d
	jne	.L10914
	testb	$4, 46264(%rbx,%rax)
	jne	.L10906
.L10914:
	movl	4(%rsp), %esi
	movq	%rbx, %r8
	movl	$4, %ecx
	movl	%r15d, %edx
	movl	%r13d, %edi
	movq	%r11, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	s370_validate_operand.part.11
	movq	8(%rsp), %r10
	movq	16(%rsp), %r11
	jmp	.L10906
.L11020:
	cmpb	43192(%rbx,%rax), %cl
	je	.L10916
	jmp	.L10914
.L11019:
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L10915
	jmp	.L10914
	.cfi_endproc
.LFE1110:
	.size	s370_move_inverse, .-s370_move_inverse
	.p2align 4,,15
	.globl	s370_move_long
	.type	s370_move_long, @function
s370_move_long:
.LFB1111:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movzbl	1(%rdi), %eax
	movb	$2, 130(%rbx)
	addq	$2, 136(%rbx)
	movzbl	%al, %esi
	movl	%eax, %ebp
	movl	%esi, 40(%rsp)
	andl	$15, %ebp
	sarl	$4, 40(%rsp)
	movzbl	%bpl, %esi
	movl	%esi, 52(%rsp)
	testb	$1, 40(%rsp)
	jne	.L11022
	testb	$1, %al
	jne	.L11022
.L11023:
	movl	40(%rsp), %esi
	movzbl	%bpl, %ebp
	movslq	%esi, %rcx
	addl	$1, %esi
	leaq	(%rbx,%rcx,8), %rax
	movslq	%esi, %rsi
	movq	%rax, (%rsp)
	movl	192(%rax), %r11d
	leaq	(%rbx,%rbp,8), %rax
	movq	%rax, 8(%rsp)
	movl	192(%rax), %edx
	movl	52(%rsp), %eax
	movq	%rsi, 24(%rsp)
	movl	%r11d, %r12d
	movl	%edx, %ebp
	andl	$16777215, %r12d
	addl	$1, %eax
	andl	$16777215, %ebp
	cltq
	movq	%rax, 16(%rsp)
	addq	$24, %rax
	movzbl	3(%rbx,%rax,8), %edi
	movl	(%rbx,%rax,8), %r15d
	movb	%dil, 48(%rsp)
	movl	192(%rbx,%rsi,8), %esi
	andl	$16777215, %r15d
	movl	%r15d, %r14d
	movl	%esi, 44(%rsp)
	andl	$16777215, 44(%rsp)
	cmpl	$83, %ebp
	movslq	44(%rsp), %r13
	jbe	.L11257
.L11025:
	cmpl	$1, 44(%rsp)
	jle	.L11026
	cmpl	$1, %r15d
	jle	.L11026
	cmpb	$64, 99(%rbx)
	je	.L11258
.L11027:
	movl	44(%rsp), %eax
	cmpl	%eax, %r15d
	cmovle	%r15d, %eax
	leal	-1(%rbp,%rax), %eax
	andl	$16777215, %eax
	cmpl	%eax, %ebp
	jb	.L11259
	cmpl	%eax, %r12d
	jbe	.L11032
.L11256:
	cmpl	%ebp, %r12d
	jbe	.L11030
.L11032:
	movq	(%rsp), %rax
	movl	%r12d, 192(%rax)
	movq	8(%rsp), %rax
	movl	%ebp, 192(%rax)
	movb	$3, 100(%rbx)
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11022:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L11023
	.p2align 4,,10
	.p2align 3
.L11026:
	movq	$0, 32(%rsp)
	movl	44(%rsp), %ecx
	xorl	%r10d, %r10d
	testl	%ecx, %ecx
	jne	.L11260
.L11036:
	cmpl	%r15d, 44(%rsp)
	movl	$1, %eax
	jge	.L11261
.L11045:
	movb	%al, 100(%rbx)
	movq	(%rsp), %rax
	movl	%r12d, 192(%rax)
	movq	8(%rsp), %rax
	movl	%ebp, 192(%rax)
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.L11105
	movzbl	48(%rsp), %eax
	movzbl	%al, %esi
	movl	%esi, 48(%rsp)
	movq	%rax, %rsi
	movabsq	$72340172838076673, %rax
	imulq	%rsi, %rax
	testl	%r14d, %r14d
	movq	%rax, 56(%rsp)
	jne	.L11047
	.p2align 4,,10
	.p2align 3
.L11267:
	movl	$2048, %edx
	movl	%r12d, %eax
	movl	%edx, %ecx
	andl	$2047, %eax
	subl	%r13d, %ecx
	cmpl	%ecx, %eax
	jg	.L11262
	xorl	%r8d, %r8d
	xorl	%r15d, %r15d
.L11048:
	movslq	%r13d, %rdx
	movq	%r10, %rdi
	cmpq	$8, %rdx
	jae	.L11263
.L11049:
	andl	$7, %edx
	je	.L11051
	xorl	%eax, %eax
.L11052:
	movzbl	48(%rsp), %esi
	movb	%sil, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.L11052
.L11051:
	leal	0(%r13,%r12), %r11d
	xorl	%ecx, %ecx
	movl	%r11d, %r12d
	andl	$16777215, %r12d
.L11054:
	movq	(%rsp), %rax
	movl	%r12d, 192(%rax)
	movq	8(%rsp), %rax
	movl	%ebp, 192(%rax)
	movq	24(%rsp), %rax
	leaq	24(%rax), %rdx
	movl	(%rbx,%rdx,8), %eax
	andl	$-16777216, %eax
	orl	%r8d, %eax
	movl	%eax, (%rbx,%rdx,8)
	movq	16(%rsp), %rax
	leaq	24(%rax), %rdx
	movl	(%rbx,%rdx,8), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	cmpl	$256, %r15d
	movl	%eax, (%rbx,%rdx,8)
	jle	.L11072
	movl	52(%rbx), %eax
	andl	56(%rbx), %eax
	testl	$1073807344, %eax
	jne	.L11264
.L11073:
	testl	%r14d, %r14d
	je	.L11077
	testl	$2047, %ebp
	je	.L11078
	movslq	%r13d, %rax
	addq	%rax, 32(%rsp)
.L11077:
	addq	%r13, %r10
	testl	$2047, %r11d
	jne	.L11084
	movl	40(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L11085
	leal	1(%rax), %ecx
	movl	%r12d, %edx
	shrl	$11, %edx
	movslq	%ecx, %rcx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rcx,8)
	jne	.L11265
.L11086:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11266
.L11087:
	andl	$14680064, %r11d
	orl	2224(%rbx), %r11d
	cmpl	10424(%rax), %r11d
	jne	.L11116
	testb	$2, 46264(%rbx,%rdx)
	je	.L11116
	movl	%r12d, %r10d
	xorq	26808(%rax), %r10
.L11084:
	testl	%r15d, %r15d
	je	.L11046
	testl	%r14d, %r14d
	movslq	%r15d, %r13
	je	.L11267
.L11047:
	movl	$2048, %eax
	movl	%r12d, %edx
	movl	%eax, %ecx
	andl	$2047, %edx
	subl	%r13d, %ecx
	cmpl	%ecx, %edx
	jg	.L11268
	movl	%r13d, %eax
.L11055:
	movl	$2048, %esi
	movl	%ebp, %edx
	movl	%esi, %ecx
	andl	$2047, %edx
	subl	%r14d, %ecx
	cmpl	%ecx, %edx
	jg	.L11269
	movl	%r14d, %esi
.L11056:
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	testl	%esi, %esi
	je	.L11093
	testb	$7, %r10b
	movl	%esi, %ecx
	movq	32(%rsp), %rdx
	movq	%r10, %rax
	jne	.L11059
	jmp	.L11058
	.p2align 4,,10
	.p2align 3
.L11270:
	testb	$7, %al
	je	.L11058
.L11059:
	addq	$1, %rdx
	movzbl	-1(%rdx), %edi
	addq	$1, %rax
	subl	$1, %ecx
	movb	%dil, -1(%rax)
	jne	.L11270
.L11093:
	movl	%r13d, %r15d
	subl	%esi, %r14d
	addl	%esi, %ebp
	subl	%esi, %r15d
	movl	%r14d, %ecx
	andl	$16777215, %ebp
	leal	(%rsi,%r12), %r11d
	movl	%r15d, %r8d
	andl	$16777215, %ecx
	movl	%r11d, %r12d
	andl	$16777215, %r8d
	movslq	%esi, %r13
	andl	$16777215, %r12d
	jmp	.L11054
	.p2align 4,,10
	.p2align 3
.L11072:
	testl	%r15d, %r15d
	jne	.L11073
.L11046:
	cmpl	$83, %r12d
	jbe	.L11271
.L11091:
	testl	%r15d, %r15d
	jne	.L11272
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11058:
	.cfi_restore_state
	movq	%rax, %rdi
	subq	%rdx, %rdi
	movl	%edi, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %edi
	subl	%r8d, %edi
	cmpl	$7, %edi
	jle	.L11094
	cmpl	$7, %ecx
	jle	.L11094
	subl	$8, %ecx
	movl	%ecx, %r9d
	shrl	$3, %r9d
	movl	%r9d, %edi
	leaq	8(,%rdi,8), %r8
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L11095:
	movq	(%rdx,%rdi), %r11
	movq	%r11, (%rax,%rdi)
	addq	$8, %rdi
	cmpq	%r8, %rdi
	jne	.L11095
	negl	%r9d
	addq	%rdi, %rax
	addq	%rdi, %rdx
	leal	(%rcx,%r9,8), %ecx
.L11094:
	testl	%ecx, %ecx
	je	.L11093
	leaq	16(%rdx), %rdi
	cmpq	%rdi, %rax
	leaq	16(%rax), %rdi
	setae	%r8b
	cmpq	%rdi, %rdx
	setae	%dil
	orb	%dil, %r8b
	je	.L11064
	cmpl	$15, %ecx
	jbe	.L11064
	movl	%ecx, %r11d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	shrl	$4, %r11d
	movl	%r11d, %edi
	sall	$4, %edi
.L11069:
	movdqu	(%rdx,%r8), %xmm0
	addl	$1, %r9d
	movdqu	%xmm0, (%rax,%r8)
	addq	$16, %r8
	cmpl	%r9d, %r11d
	ja	.L11069
	movl	%edi, %r8d
	addq	%r8, %rax
	addq	%r8, %rdx
	movl	%ecx, %r8d
	subl	%edi, %r8d
	cmpl	%ecx, %edi
	je	.L11093
	movzbl	(%rdx), %ecx
	cmpl	$1, %r8d
	movb	%cl, (%rax)
	je	.L11093
	movzbl	1(%rdx), %ecx
	cmpl	$2, %r8d
	movb	%cl, 1(%rax)
	je	.L11093
	movzbl	2(%rdx), %ecx
	cmpl	$3, %r8d
	movb	%cl, 2(%rax)
	je	.L11093
	movzbl	3(%rdx), %ecx
	cmpl	$4, %r8d
	movb	%cl, 3(%rax)
	je	.L11093
	movzbl	4(%rdx), %ecx
	cmpl	$5, %r8d
	movb	%cl, 4(%rax)
	je	.L11093
	movzbl	5(%rdx), %ecx
	cmpl	$6, %r8d
	movb	%cl, 5(%rax)
	je	.L11093
	movzbl	6(%rdx), %ecx
	cmpl	$7, %r8d
	movb	%cl, 6(%rax)
	je	.L11093
	movzbl	7(%rdx), %ecx
	cmpl	$8, %r8d
	movb	%cl, 7(%rax)
	je	.L11093
	movzbl	8(%rdx), %ecx
	cmpl	$9, %r8d
	movb	%cl, 8(%rax)
	je	.L11093
	movzbl	9(%rdx), %ecx
	cmpl	$10, %r8d
	movb	%cl, 9(%rax)
	je	.L11093
	movzbl	10(%rdx), %ecx
	cmpl	$11, %r8d
	movb	%cl, 10(%rax)
	je	.L11093
	movzbl	11(%rdx), %ecx
	cmpl	$12, %r8d
	movb	%cl, 11(%rax)
	je	.L11093
	movzbl	12(%rdx), %ecx
	cmpl	$13, %r8d
	movb	%cl, 12(%rax)
	je	.L11093
	movzbl	13(%rdx), %ecx
	cmpl	$14, %r8d
	movb	%cl, 13(%rax)
	je	.L11093
	movzbl	14(%rdx), %edx
	movb	%dl, 14(%rax)
	jmp	.L11093
	.p2align 4,,10
	.p2align 3
.L11263:
	cmpq	$511, %rdx
	ja	.L11273
	movq	56(%rsp), %rax
	movq	%rdx, %rcx
	movq	%r10, %rdi
	shrq	$3, %rcx
	rep stosq
	jmp	.L11049
	.p2align 4,,10
	.p2align 3
.L11078:
	movl	52(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L11079
	leal	1(%rax), %edx
	movl	%ebp, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L11274
.L11080:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L11275
.L11081:
	movl	%ebp, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L11113
	testb	$4, 46264(%rbx,%rcx)
	je	.L11113
	movq	26808(%rax), %rax
	movl	%ebp, %esi
	movq	%rsi, 32(%rsp)
	xorq	%rax, 32(%rsp)
	jmp	.L11077
	.p2align 4,,10
	.p2align 3
.L11064:
	subl	$1, %ecx
	leaq	1(%rdx,%rcx), %rdi
	.p2align 4,,10
	.p2align 3
.L11071:
	addq	$1, %rdx
	movzbl	-1(%rdx), %ecx
	addq	$1, %rax
	cmpq	%rdi, %rdx
	movb	%cl, -1(%rax)
	jne	.L11071
	jmp	.L11093
.L11261:
	setg	%al
	addl	%eax, %eax
	jmp	.L11045
.L11264:
	movl	168(%rbx), %esi
	movl	136(%rbx), %eax
	movq	144(%rbx), %rcx
	movzbl	808(%rbx), %edx
	addl	%esi, %eax
	subl	%ecx, %eax
	testb	$1, %dl
	jne	.L11074
	movzbl	130(%rbx), %edx
.L11075:
	subl	%edx, %eax
	movl	%eax, %edx
	andl	$16777215, %edx
	cmpq	$0, 160(%rbx)
	movl	%edx, 112(%rbx)
	je	.L11046
	movl	%eax, %edx
	andl	$16775169, %edx
	cmpl	%edx, %esi
	jne	.L11076
	andl	$2047, %eax
	orq	%rcx, %rax
	movq	%rax, 136(%rbx)
	jmp	.L11046
.L11273:
	movl	48(%rsp), %esi
	movl	%r8d, 72(%rsp)
	movq	%r10, 64(%rsp)
	call	memset
	movq	64(%rsp), %r10
	movl	72(%rsp), %r8d
	jmp	.L11051
.L11259:
	cmpl	%eax, %r12d
	jbe	.L11256
.L11030:
	movl	52(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L11038
	leal	1(%rax), %esi
	movl	%ebp, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rsi,8)
	jne	.L11276
.L11039:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L11277
.L11040:
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L11041
	testb	$4, 46264(%rbx,%rcx)
	je	.L11041
	movq	26808(%rax), %rax
	movl	%ebp, %esi
	movq	%rsi, 32(%rsp)
	xorq	%rax, 32(%rsp)
.L11037:
	movl	40(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L11042
	leal	1(%rax), %edx
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movslq	%edx, %rdx
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rdx,8)
	jne	.L11278
.L11043:
	testb	%r8b, %r8b
	jne	.L11279
.L11044:
	movl	%r11d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L11042
	testb	$2, 46264(%rbx,%rcx)
	je	.L11042
	movl	%r12d, %r10d
	xorq	26808(%rax), %r10
	movl	$1, %eax
	cmpl	%r15d, 44(%rsp)
	jl	.L11045
	jmp	.L11261
.L11258:
	movl	40(%rsp), %r8d
	xorl	%esi, %esi
	testl	%r8d, %r8d
	je	.L11028
	movl	584(%rbx,%rcx,4), %esi
.L11028:
	movl	52(%rsp), %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L11029
	movslq	52(%rsp), %rax
	movl	584(%rbx,%rax,4), %eax
.L11029:
	cmpl	%eax, %esi
	jne	.L11030
	jmp	.L11027
.L11260:
	testl	%r15d, %r15d
	jne	.L11030
	movzbl	97(%rbx), %r8d
	.p2align 4,,3
	jmp	.L11037
.L11105:
	xorl	%r15d, %r15d
	jmp	.L11046
.L11275:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L11081
.L11113:
	movzbl	%sil, %r8d
.L11082:
	movl	52(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r10, 72(%rsp)
	movl	%r11d, 64(%rsp)
	call	s370_logical_to_main_l
	movq	72(%rsp), %r10
	movq	%rax, 32(%rsp)
	movl	64(%rsp), %r11d
	jmp	.L11077
.L11271:
	addl	44(%rsp), %r12d
	cmpl	$79, %r12d
	jbe	.L11091
	movq	%rbx, %rdi
	call	s370_fetch_int_timer
	jmp	.L11091
.L11262:
	subl	%eax, %edx
	subl	%edx, %r13d
	movl	%r13d, %r8d
	movl	%r13d, %r15d
	movslq	%edx, %r13
	andl	$16777215, %r8d
	jmp	.L11048
.L11257:
	leal	(%r15,%rbp), %eax
	cmpl	$79, %eax
	jbe	.L11025
	movq	%rbx, %rdi
	movq	%rcx, 64(%rsp)
	movl	%edx, 56(%rsp)
	movl	%r11d, 32(%rsp)
	call	s370_store_int_timer
	movq	64(%rsp), %rcx
	movl	56(%rsp), %edx
	movl	32(%rsp), %r11d
	jmp	.L11025
.L11274:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rdx)
	jne	.L11080
.L11079:
	movzbl	97(%rbx), %r8d
	jmp	.L11082
.L11269:
	subl	%edx, %esi
	jmp	.L11056
.L11278:
	movzbl	1976(%rbx,%rdx), %edx
	testb	%dl, 44216(%rbx,%rcx)
	jne	.L11043
.L11042:
	movl	44(%rsp), %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	40(%rsp), %esi
	movl	%r12d, %edi
	andl	$16777215, %r9d
	call	s370_logical_to_main_l
	movq	%rax, %r10
	jmp	.L11036
.L11279:
	cmpb	%r8b, 43192(%rbx,%rcx)
	je	.L11044
	jmp	.L11042
.L11266:
	cmpb	43192(%rbx,%rdx), %cl
	je	.L11087
.L11116:
	movzbl	%cl, %r8d
.L11088:
	movl	40(%rsp), %esi
	movslq	%r15d, %r9
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	movq	%rax, %r10
	jmp	.L11084
.L11276:
	movzbl	1976(%rbx,%rsi), %esi
	testb	%sil, 44216(%rbx,%rcx)
	jne	.L11039
.L11038:
	movzbl	97(%rbx), %r8d
.L11041:
	movl	52(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movl	%r11d, 56(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, 32(%rsp)
	movl	56(%rsp), %r11d
	jmp	.L11037
.L11076:
	movq	$0, 160(%rbx)
	jmp	.L11046
.L11268:
	subl	%edx, %eax
	jmp	.L11055
.L11272:
	leaq	1232(%rbx), %rdi
	movl	$-1, %esi
	call	longjmp
.L11265:
	movzbl	44216(%rbx,%rdx), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L11086
.L11085:
	movzbl	97(%rbx), %r8d
	jmp	.L11088
.L11277:
	cmpb	43192(%rbx,%rcx), %r8b
	je	.L11040
	jmp	.L11041
.L11074:
	andl	$2, %edx
	cmpb	$1, %dl
	sbbl	%edx, %edx
	andl	$-2, %edx
	addl	$6, %edx
	jmp	.L11075
	.cfi_endproc
.LFE1111:
	.size	s370_move_long, .-s370_move_long
	.p2align 4,,15
	.globl	s370_move_long_extended
	.type	s370_move_long_extended, @function
s370_move_long_extended:
.LFB1112:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	(%rdi), %edx
	bswap	%edx
	movl	%edx, %esi
	movl	%edx, %ecx
	shrl	$16, %esi
	shrl	$20, %ecx
	movl	%esi, %edi
	movl	%ecx, %eax
	andl	$15, %edi
	andl	$15, %eax
	movl	%edi, 4(%rsp)
	movl	%edx, %edi
	andl	$4095, %edx
	shrl	$12, %edi
	movl	%edx, 12(%rsp)
	andl	$15, %edi
	je	.L11281
	movslq	%edi, %rdi
	movl	192(%rbx,%rdi,8), %edx
	addl	%edx, 12(%rsp)
	andl	$16777215, 12(%rsp)
.L11281:
	orl	%esi, %ecx
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$1, %ecx
	je	.L11282
	movl	$6, %esi
	movq	%rbx, %rdi
	movl	%eax, (%rsp)
	call	*2032(%rbx)
	movl	(%rsp), %eax
.L11282:
	movl	4(%rsp), %r9d
	movslq	%eax, %rdx
	movl	$4096, %r14d
	leaq	(%rbx,%rdx,8), %rdi
	movl	192(%rdi), %edx
	movq	%rdi, 16(%rsp)
	movslq	%r9d, %rcx
	leaq	(%rbx,%rcx,8), %rdi
	leal	1(%rax), %ecx
	movl	192(%rdi), %r11d
	movq	%rdi, 40(%rsp)
	movslq	%ecx, %rcx
	leaq	(%rbx,%rcx,8), %rsi
	leal	1(%r9), %ecx
	movq	%rsi, 32(%rsp)
	movl	192(%rsi), %ebp
	movslq	%ecx, %rcx
	movl	%edx, %esi
	leaq	(%rbx,%rcx,8), %rcx
	andl	$4095, %esi
	movq	%rcx, 24(%rsp)
	movl	192(%rcx), %r13d
	movl	%r11d, %ecx
	andl	$4095, %ecx
	cmpl	%ecx, %esi
	jbe	.L11283
	subl	%esi, %r14d
.L11284:
	cmpl	%r13d, %ebp
	movl	$1, %r12d
	jb	.L11285
	cmpl	%ebp, %r13d
	sbbl	%r12d, %r12d
	andl	$2, %r12d
.L11285:
	testl	%ebp, %ebp
	je	.L11423
	leal	5(%rax), %ecx
	movl	%edx, %edi
	movl	%ebp, %r15d
	movslq	%ecx, %rcx
	andl	$16777215, %edi
	movl	1892(%rbx,%rcx,4), %ecx
	movl	%edi, %esi
	movl	%edi, (%rsp)
	testl	%ecx, %ecx
	je	.L11288
	leal	1(%rcx), %edi
	shrl	$11, %esi
	andl	$1023, %esi
	movslq	%edi, %rdi
	leaq	(%rbx,%rsi,8), %rcx
	movl	2232(%rcx), %r8d
	cmpl	%r8d, 320(%rbx,%rdi,8)
	jne	.L11424
.L11289:
	movzbl	97(%rbx), %edi
	testb	%dil, %dil
	jne	.L11425
.L11290:
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L11288
	testb	$2, 46264(%rbx,%rsi)
	je	.L11288
	movl	(%rsp), %r10d
	xorq	26808(%rcx), %r10
.L11291:
	movl	%r11d, %eax
	andl	$16777215, %eax
	cmpq	%r15, %r14
	cmovbe	%r14, %r15
	movl	%eax, 8(%rsp)
	movl	%r13d, %eax
	cmpq	%rax, %r14
	cmovbe	%r14, %rax
	cmpq	%r15, %rax
	movq	%rax, %r14
	movq	%rax, 48(%rsp)
	cmova	%r15, %r14
	testq	%r14, %r14
	je	.L11292
	movl	4(%rsp), %eax
	addl	$5, %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L11293
	leal	1(%rax), %ecx
	movl	8(%rsp), %eax
	movslq	%ecx, %rcx
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L11426
.L11294:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11427
.L11295:
	andl	$14680064, %r11d
	orl	2224(%rbx), %r11d
	cmpl	10424(%rdx), %r11d
	jne	.L11293
	testb	$4, 46264(%rbx,%rax)
	je	.L11293
	movl	8(%rsp), %eax
	xorq	26808(%rdx), %rax
.L11296:
	movl	%r14d, %ecx
	movq	%r10, %rdx
	.p2align 4,,10
	.p2align 3
.L11297:
	testb	$7, %dl
	je	.L11428
	addq	$1, %rax
	movzbl	-1(%rax), %esi
	addq	$1, %rdx
	subl	$1, %ecx
	movb	%sil, -1(%rdx)
	jne	.L11297
.L11302:
	addl	%r14d, 8(%rsp)
	subl	%r14d, %r13d
	subl	%r14d, %ebp
	addl	%r14d, (%rsp)
	addq	%r14, %r10
	subq	%r14, %r15
	subq	%r14, 48(%rsp)
.L11292:
	testq	%r15, %r15
	jne	.L11429
.L11314:
	movq	16(%rsp), %rax
	testl	%ebp, %ebp
	movl	(%rsp), %edx
	movl	%edx, 192(%rax)
	movq	32(%rsp), %rax
	movl	8(%rsp), %edx
	movl	%ebp, 192(%rax)
	movq	40(%rsp), %rax
	movl	%edx, 192(%rax)
	movq	24(%rsp), %rax
	movl	%r13d, 192(%rax)
	movl	$3, %eax
	cmovne	%eax, %r12d
.L11423:
	movb	%r12b, 100(%rbx)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11283:
	.cfi_restore_state
	subl	%ecx, %r14d
	jmp	.L11284
	.p2align 4,,10
	.p2align 3
.L11429:
	cmpq	$0, 48(%rsp)
	jne	.L11314
	cmpq	$8, %r15
	movzbl	12(%rsp), %edx
	movq	%r10, %rdi
	jae	.L11430
.L11315:
	movq	%r15, %rcx
	andl	$7, %ecx
	je	.L11317
	xorl	%eax, %eax
.L11318:
	movb	%dl, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%rcx, %rax
	jb	.L11318
.L11317:
	addl	%r15d, (%rsp)
	subl	%r15d, %ebp
	jmp	.L11314
	.p2align 4,,10
	.p2align 3
.L11428:
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movl	%esi, %edi
	sarl	$31, %edi
	xorl	%edi, %esi
	subl	%edi, %esi
	cmpl	$7, %esi
	jle	.L11321
	cmpl	$7, %ecx
	jle	.L11321
	subl	$8, %ecx
	movl	%ecx, %r9d
	shrl	$3, %r9d
	movl	%r9d, %esi
	leaq	8(,%rsi,8), %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L11322:
	movq	(%rax,%rsi), %rdi
	movq	%rdi, (%rdx,%rsi)
	addq	$8, %rsi
	cmpq	%r8, %rsi
	jne	.L11322
	negl	%r9d
	addq	%rsi, %rdx
	addq	%rsi, %rax
	leal	(%rcx,%r9,8), %ecx
.L11321:
	testl	%ecx, %ecx
	je	.L11302
	leaq	16(%rax), %rsi
	movl	%ecx, %r11d
	cmpq	%rsi, %rdx
	leaq	16(%rdx), %rsi
	setae	%dil
	cmpq	%rsi, %rax
	setae	%sil
	orb	%sil, %dil
	je	.L11305
	cmpl	$15, %ecx
	jbe	.L11305
	movl	%ecx, %r9d
	shrl	$4, %r9d
	movl	%r9d, %esi
	sall	$4, %esi
	testl	%esi, %esi
	je	.L11306
	xorl	%edi, %edi
	xorl	%r8d, %r8d
.L11311:
	movdqu	(%rax,%rdi), %xmm0
	addl	$1, %r8d
	movdqu	%xmm0, (%rdx,%rdi)
	addq	$16, %rdi
	cmpl	%r8d, %r9d
	ja	.L11311
	movl	%esi, %edi
	subl	%esi, %ecx
	addq	%rdi, %rdx
	addq	%rdi, %rax
	cmpl	%r11d, %esi
	je	.L11302
	.p2align 4,,10
	.p2align 3
.L11306:
	movzbl	(%rax), %esi
	cmpl	$1, %ecx
	movb	%sil, (%rdx)
	je	.L11302
	movzbl	1(%rax), %esi
	cmpl	$2, %ecx
	movb	%sil, 1(%rdx)
	je	.L11302
	movzbl	2(%rax), %esi
	cmpl	$3, %ecx
	movb	%sil, 2(%rdx)
	je	.L11302
	movzbl	3(%rax), %esi
	cmpl	$4, %ecx
	movb	%sil, 3(%rdx)
	je	.L11302
	movzbl	4(%rax), %esi
	cmpl	$5, %ecx
	movb	%sil, 4(%rdx)
	je	.L11302
	movzbl	5(%rax), %esi
	cmpl	$6, %ecx
	movb	%sil, 5(%rdx)
	je	.L11302
	movzbl	6(%rax), %esi
	cmpl	$7, %ecx
	movb	%sil, 6(%rdx)
	je	.L11302
	movzbl	7(%rax), %esi
	cmpl	$8, %ecx
	movb	%sil, 7(%rdx)
	je	.L11302
	movzbl	8(%rax), %esi
	cmpl	$9, %ecx
	movb	%sil, 8(%rdx)
	je	.L11302
	movzbl	9(%rax), %esi
	cmpl	$10, %ecx
	movb	%sil, 9(%rdx)
	je	.L11302
	movzbl	10(%rax), %esi
	cmpl	$11, %ecx
	movb	%sil, 10(%rdx)
	je	.L11302
	movzbl	11(%rax), %esi
	cmpl	$12, %ecx
	movb	%sil, 11(%rdx)
	je	.L11302
	movzbl	12(%rax), %esi
	cmpl	$13, %ecx
	movb	%sil, 12(%rdx)
	je	.L11302
	movzbl	13(%rax), %esi
	cmpl	$14, %ecx
	movb	%sil, 13(%rdx)
	je	.L11302
	movzbl	14(%rax), %eax
	movb	%al, 14(%rdx)
	jmp	.L11302
	.p2align 4,,10
	.p2align 3
.L11430:
	cmpq	$511, %r15
	ja	.L11431
	movabsq	$72340172838076673, %rcx
	movzbl	%dl, %eax
	imulq	%rcx, %rax
	movq	%r15, %rcx
	shrq	$3, %rcx
	rep stosq
	jmp	.L11315
	.p2align 4,,10
	.p2align 3
.L11305:
	subl	$1, %ecx
	leaq	1(%rax,%rcx), %rsi
	.p2align 4,,10
	.p2align 3
.L11313:
	addq	$1, %rax
	movzbl	-1(%rax), %ecx
	addq	$1, %rdx
	cmpq	%rsi, %rax
	movb	%cl, -1(%rdx)
	jne	.L11313
	jmp	.L11302
.L11431:
	movzbl	%dl, %esi
	movq	%r15, %rdx
	call	memset
	.p2align 4,,2
	jmp	.L11317
.L11424:
	movzbl	1976(%rbx,%rdi), %edi
	testb	%dil, 44216(%rbx,%rsi)
	jne	.L11289
.L11288:
	movzbl	97(%rbx), %r8d
	movq	%r15, %r9
	movl	$2, %ecx
	movl	(%rsp), %edi
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	%r11d, 8(%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r11d
	movq	%rax, %r10
	jmp	.L11291
.L11426:
	movzbl	1976(%rbx,%rcx), %ecx
	testb	%cl, 44216(%rbx,%rax)
	jne	.L11294
.L11293:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movl	4(%rsp), %esi
	movq	%rbx, %rdx
	movq	%r10, 56(%rsp)
	movl	8(%rsp), %edi
	call	s370_logical_to_main_l
	movq	56(%rsp), %r10
	jmp	.L11296
.L11425:
	cmpb	43192(%rbx,%rsi), %dil
	je	.L11290
	jmp	.L11288
.L11427:
	cmpb	43192(%rbx,%rax), %cl
	je	.L11295
	.p2align 4,,4
	jmp	.L11293
	.cfi_endproc
.LFE1112:
	.size	s370_move_long_extended, .-s370_move_long_extended
	.p2align 4,,15
	.globl	s370_move_numerics
	.type	s370_move_numerics, @function
s370_move_numerics:
.LFB1113:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	2(%rdi), %eax
	bswap	%eax
	movl	%eax, %r13d
	movl	%eax, %esi
	shrl	$16, %r13d
	shrl	$28, %esi
	andl	$4095, %r13d
	testl	%esi, %esi
	movl	%esi, (%rsp)
	je	.L11433
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %r13d
	andl	$16777215, %r13d
.L11433:
	movl	%eax, %r14d
	shrl	$12, %eax
	andl	$4095, %r14d
	andl	$15, %eax
	movl	%eax, 40(%rsp)
	je	.L11434
	cltq
	addl	192(%rbx,%rax,8), %r14d
	andl	$16777215, %r14d
.L11434:
	movzbl	1(%rdi), %ebp
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	cmpl	$83, %r14d
	jbe	.L11688
.L11436:
	movl	(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 16(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11437
	leal	1(%rax), %edx
	movl	%r13d, %esi
	shrl	$11, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L11689
.L11438:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11690
.L11439:
	movl	%r13d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L11558
	testb	$1, 46264(%rbx,%rsi)
	je	.L11558
	movq	35000(%rax), %r11
	movl	%r13d, %r12d
	movzbl	%cl, %r8d
	movq	%r11, 984(%rbx)
	xorq	26808(%rax), %r12
.L11441:
	movl	40(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 8(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11442
	leal	1(%rax), %edx
	movl	%r14d, %esi
	shrl	$11, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L11691
.L11443:
	testb	%r8b, %r8b
	jne	.L11692
.L11444:
	movl	%r14d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L11442
	testb	$4, 46264(%rbx,%rsi)
	je	.L11442
	movl	%r14d, %r15d
	xorq	26808(%rax), %r15
.L11445:
	movl	$2047, %r10d
	movl	%r13d, %eax
	subl	%ebp, %r10d
	andl	$2047, %eax
	cmpl	%r10d, %eax
	jg	.L11446
	movl	%r14d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r10d
	jl	.L11447
	leaq	16(%r15), %rdx
	leal	1(%rbp), %eax
	cmpq	%rdx, %r12
	leaq	16(%r12), %rdx
	setae	%cl
	cmpq	%rdx, %r15
	setae	%dl
	orb	%dl, %cl
	je	.L11448
	cmpl	$15, %eax
	jbe	.L11448
	movl	%eax, %esi
	movdqa	.LC8(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %esi
	movdqa	.LC9(%rip), %xmm2
	xorl	%edi, %edi
	movl	%esi, %ecx
	sall	$4, %ecx
.L11454:
	movdqu	(%r12,%rdx), %xmm0
	addl	$1, %edi
	movdqu	(%r15,%rdx), %xmm1
	pand	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r12,%rdx)
	addq	$16, %rdx
	cmpl	%edi, %esi
	ja	.L11454
	movl	%ecx, %edx
	addq	%rdx, %r12
	addq	%rdx, %r15
	cmpl	%ecx, %eax
	je	.L11464
	.p2align 4,,10
	.p2align 3
.L11452:
	movzbl	(%r12), %eax
	addl	$1, %ecx
	addq	$1, %r12
	movzbl	(%r15), %edx
	addq	$1, %r15
	andl	$-16, %eax
	andl	$15, %edx
	orl	%edx, %eax
	movb	%al, -1(%r12)
	cmpl	%ecx, %ebp
	jge	.L11452
.L11464:
	orb	$6, (%r11)
.L11453:
	cmpl	$83, %r13d
	jbe	.L11693
.L11432:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11448:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L11456:
	movzbl	(%r12,%rax), %edx
	movzbl	(%r15,%rax), %ecx
	andl	$-16, %edx
	andl	$15, %ecx
	orl	%ecx, %edx
	movb	%dl, (%r12,%rax)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jge	.L11456
	jmp	.L11464
.L11691:
	movzbl	44216(%rbx,%rsi), %edi
	testb	%dil, 1976(%rbx,%rdx)
	jne	.L11443
.L11442:
	movl	40(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %edi
	movq	%r11, 24(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r11
	movq	%rax, %r15
	jmp	.L11445
.L11692:
	cmpb	%r8b, 43192(%rbx,%rsi)
	je	.L11444
	jmp	.L11442
.L11446:
	movl	$2048, 24(%rsp)
	subl	%eax, 24(%rsp)
	movq	16(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11473
	leal	1(%rax), %esi
	movl	24(%rsp), %eax
	movslq	%esi, %rsi
	leal	(%rax,%r13), %ecx
	movl	%ecx, %edi
	andl	$16777215, %edi
	movl	%edi, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rax
	movl	2232(%rax), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L11694
.L11474:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L11695
.L11476:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rax), %ecx
	jne	.L11475
	testb	$1, 46264(%rbx,%rdx)
	je	.L11475
	movq	35000(%rax), %rsi
	movq	%rdi, (%rsp)
	movq	%rsi, 984(%rbx)
	movq	26808(%rax), %rax
	movq	%rsi, 16(%rsp)
	xorq	%rax, (%rsp)
.L11477:
	movl	%r14d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r10d
	jl	.L11478
	movq	%r15, %rax
.L11480:
	movzbl	(%rax), %edx
	addq	$1, %rax
	addq	$1, %r12
	movzbl	-1(%r12), %ecx
	andl	$15, %edx
	andl	$-16, %ecx
	orl	%ecx, %edx
	movb	%dl, -1(%r12)
	movl	%eax, %edx
	subl	%r15d, %edx
	cmpl	%edx, 24(%rsp)
	jg	.L11480
	movl	%ebp, %esi
	subl	24(%rsp), %esi
	js	.L11487
	movq	(%rsp), %r10
	leaq	16(%rax), %rdx
	leal	1(%rsi), %edi
	cmpq	%rdx, %r10
	movq	%r10, %rdx
	setae	%cl
	addq	$16, %rdx
	cmpq	%rdx, %rax
	setae	%dl
	orb	%dl, %cl
	je	.L11482
	cmpl	$15, %edi
	jbe	.L11482
	movl	%edi, %r9d
	movdqa	.LC8(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %r9d
	movdqa	.LC9(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L11488:
	movdqu	(%r10,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%rax,%rdx), %xmm1
	pand	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r8d, %r9d
	ja	.L11488
	movq	(%rsp), %r8
	movl	%ecx, %edx
	addq	%rdx, %rax
	addq	%rdx, %r8
	cmpl	%edi, %ecx
	je	.L11487
.L11486:
	movzbl	(%r8), %edx
	addl	$1, %ecx
	addq	$1, %r8
	movzbl	(%rax), %edi
	addq	$1, %rax
	andl	$-16, %edx
	andl	$15, %edi
	orl	%edi, %edx
	movb	%dl, -1(%r8)
	cmpl	%esi, %ecx
	jle	.L11486
.L11487:
	orb	$6, (%r11)
	movq	16(%rsp), %rax
	orb	$6, (%rax)
	jmp	.L11453
.L11689:
	movzbl	44216(%rbx,%rsi), %ecx
	testb	%cl, 1976(%rbx,%rdx)
	jne	.L11438
.L11437:
	movzbl	97(%rbx), %r8d
.L11440:
	movl	(%rsp), %esi
	leal	1(%rbp), %r9d
	movl	$1, %ecx
	andl	$511, %r9d
	movq	%rbx, %rdx
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	movq	984(%rbx), %r11
	movq	%rax, %r12
	movzbl	97(%rbx), %r8d
	jmp	.L11441
.L11478:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11491
	leal	(%r10,%r14), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L11696
.L11492:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L11697
.L11494:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L11493
	testb	$4, 46264(%rbx,%rax)
	je	.L11493
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L11495:
	cmpl	%r10d, 24(%rsp)
	je	.L11698
	jge	.L11513
	movq	%r15, %rdx
.L11515:
	movzbl	(%rdx), %ecx
	addq	$1, %rdx
	addq	$1, %r12
	movzbl	-1(%r12), %esi
	andl	$15, %ecx
	andl	$-16, %esi
	orl	%esi, %ecx
	movb	%cl, -1(%r12)
	movl	%edx, %ecx
	subl	%r15d, %ecx
	cmpl	%ecx, 24(%rsp)
	jg	.L11515
	movl	%r10d, %ecx
	subl	24(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.L11516
	movq	(%rsp), %r12
	leaq	16(%rdx), %rsi
	cmpq	%rsi, %r12
	movq	%r12, %rsi
	setae	%dil
	addq	$16, %rsi
	cmpq	%rsi, %rdx
	setae	%sil
	orb	%sil, %dil
	je	.L11517
	cmpl	$15, %ecx
	jbe	.L11517
	movl	%ecx, %r9d
	movdqa	.LC8(%rip), %xmm3
	xorl	%esi, %esi
	shrl	$4, %r9d
	movdqa	.LC9(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %edi
	sall	$4, %edi
.L11522:
	movdqu	(%rdx,%rsi), %xmm0
	addl	$1, %r8d
	movdqu	(%r12,%rsi), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r12,%rsi)
	addq	$16, %rsi
	cmpl	%r9d, %r8d
	jb	.L11522
	movq	(%rsp), %r9
	movl	%edi, %esi
	addq	%rsi, %rdx
	cmpl	%edi, %ecx
	leaq	(%r9,%rsi), %r8
	je	.L11523
.L11521:
	movzbl	(%rdx), %esi
	addl	$1, %edi
	addq	$1, %r8
	movzbl	-1(%r8), %r9d
	addq	$1, %rdx
	andl	$15, %esi
	andl	$-16, %r9d
	orl	%r9d, %esi
	movb	%sil, -1(%r8)
	cmpl	%edi, %ecx
	jg	.L11521
.L11523:
	movq	(%rsp), %rdi
	subl	$1, %ecx
	leaq	1(%rdi,%rcx), %rdi
	movq	%rdi, (%rsp)
.L11516:
	movl	%ebp, %esi
	subl	%r10d, %esi
	js	.L11487
	movq	(%rsp), %r10
	leal	1(%rsi), %edi
	leaq	16(%r10), %rdx
	cmpq	%rdx, %rax
	leaq	16(%rax), %rdx
	setae	%cl
	cmpq	%rdx, %r10
	setae	%dl
	orb	%dl, %cl
	je	.L11525
	cmpl	$15, %edi
	jbe	.L11525
	movl	%edi, %r9d
	movdqa	.LC8(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %r9d
	movdqa	.LC9(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L11530:
	movdqu	(%rax,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%r10,%rdx), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r9d, %r8d
	jb	.L11530
	movq	(%rsp), %r8
	movl	%ecx, %edx
	addq	%rdx, %rax
	addq	%rdx, %r8
	cmpl	%ecx, %edi
	je	.L11487
.L11529:
	movzbl	(%rax), %edx
	addl	$1, %ecx
	addq	$1, %r8
	movzbl	-1(%r8), %edi
	addq	$1, %rax
	andl	$15, %edx
	andl	$-16, %edi
	orl	%edi, %edx
	movb	%dl, -1(%r8)
	cmpl	%ecx, %esi
	jge	.L11529
	jmp	.L11487
.L11513:
	movq	%r12, %rdx
.L11534:
	movzbl	(%rdx), %esi
	addq	$1, %rdx
	addq	$1, %r15
	movzbl	-1(%r15), %ecx
	andl	$-16, %esi
	andl	$15, %ecx
	orl	%esi, %ecx
	movb	%cl, -1(%rdx)
	movl	%edx, %ecx
	subl	%r12d, %ecx
	cmpl	%ecx, %r10d
	jg	.L11534
	movl	24(%rsp), %ecx
	subl	%r10d, %ecx
	testl	%ecx, %ecx
	jle	.L11535
	leaq	16(%rdx), %rsi
	cmpq	%rsi, %rax
	leaq	16(%rax), %rsi
	setae	%dil
	cmpq	%rsi, %rdx
	setae	%sil
	orb	%sil, %dil
	je	.L11536
	cmpl	$15, %ecx
	jbe	.L11536
	movl	%ecx, %r9d
	movdqa	.LC8(%rip), %xmm3
	xorl	%esi, %esi
	shrl	$4, %r9d
	movdqa	.LC9(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %edi
	sall	$4, %edi
.L11541:
	movdqu	(%rax,%rsi), %xmm0
	addl	$1, %r8d
	movdqu	(%rdx,%rsi), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%rdx,%rsi)
	addq	$16, %rsi
	cmpl	%r9d, %r8d
	jb	.L11541
	movl	%edi, %r8d
	addq	%r8, %rdx
	addq	%rax, %r8
	cmpl	%edi, %ecx
	je	.L11542
.L11540:
	movzbl	(%r8), %esi
	addl	$1, %edi
	addq	$1, %rdx
	movzbl	-1(%rdx), %r9d
	addq	$1, %r8
	andl	$15, %esi
	andl	$-16, %r9d
	orl	%r9d, %esi
	movb	%sil, -1(%rdx)
	cmpl	%edi, %ecx
	jg	.L11540
.L11542:
	subl	$1, %ecx
	leaq	1(%rax,%rcx), %rax
.L11535:
	movl	%ebp, %esi
	subl	24(%rsp), %esi
	js	.L11487
	movq	(%rsp), %r10
	leaq	16(%rax), %rdx
	leal	1(%rsi), %edi
	cmpq	%rdx, %r10
	movq	%r10, %rdx
	setae	%cl
	addq	$16, %rdx
	cmpq	%rdx, %rax
	setae	%dl
	orb	%dl, %cl
	je	.L11544
	cmpl	$15, %edi
	jbe	.L11544
	movl	%edi, %r9d
	movdqa	.LC8(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %r9d
	movdqa	.LC9(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L11549:
	movdqu	(%rax,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%r10,%rdx), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r9d, %r8d
	jb	.L11549
	movq	(%rsp), %r8
	movl	%ecx, %edx
	addq	%rdx, %rax
	addq	%rdx, %r8
	cmpl	%ecx, %edi
	je	.L11487
.L11548:
	movzbl	(%rax), %edx
	addl	$1, %ecx
	addq	$1, %r8
	movzbl	-1(%r8), %edi
	addq	$1, %rax
	andl	$15, %edx
	andl	$-16, %edi
	orl	%edi, %edx
	movb	%dl, -1(%r8)
	cmpl	%ecx, %esi
	jge	.L11548
	jmp	.L11487
.L11698:
	movl	24(%rsp), %edi
	leaq	16(%r15), %rcx
	movl	$1, %edx
	testl	%edi, %edi
	cmovg	%edi, %edx
	cmpq	%rcx, %r12
	setae	%sil
	leaq	16(%r12), %rcx
	cmpq	%rcx, %r15
	setae	%cl
	orb	%cl, %sil
	je	.L11497
	cmpl	$15, %edx
	jbe	.L11497
	movl	%edx, %r8d
	movdqa	.LC8(%rip), %xmm3
	xorl	%ecx, %ecx
	shrl	$4, %r8d
	movdqa	.LC9(%rip), %xmm2
	xorl	%esi, %esi
	movl	%r8d, %edi
	sall	$4, %edi
.L11502:
	movdqu	(%r15,%rcx), %xmm0
	addl	$1, %esi
	movdqu	(%r12,%rcx), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r12,%rcx)
	addq	$16, %rcx
	cmpl	%r8d, %esi
	jb	.L11502
	movl	%edi, %ecx
	addq	%rcx, %r12
	addq	%rcx, %r15
	cmpl	%edi, %edx
	movl	%edi, %ecx
	je	.L11503
.L11501:
	movzbl	(%r15), %edx
	addl	$1, %ecx
	addq	$1, %r12
	movzbl	-1(%r12), %esi
	addq	$1, %r15
	andl	$15, %edx
	andl	$-16, %esi
	orl	%esi, %edx
	movb	%dl, -1(%r12)
	cmpl	%ecx, 24(%rsp)
	jg	.L11501
.L11503:
	movl	%ebp, %esi
	subl	24(%rsp), %esi
	js	.L11487
	movq	(%rsp), %r10
	leaq	16(%rax), %rdx
	leal	1(%rsi), %edi
	cmpq	%rdx, %r10
	movq	%r10, %rdx
	setae	%cl
	addq	$16, %rdx
	cmpq	%rdx, %rax
	setae	%dl
	orb	%dl, %cl
	je	.L11505
	cmpl	$15, %edi
	jbe	.L11505
	movl	%edi, %r9d
	movdqa	.LC8(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %r9d
	movdqa	.LC9(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L11510:
	movdqu	(%rax,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%r10,%rdx), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r8d, %r9d
	ja	.L11510
	movq	(%rsp), %r8
	movl	%ecx, %edx
	addq	%rdx, %rax
	addq	%rdx, %r8
	cmpl	%edi, %ecx
	je	.L11487
.L11509:
	movzbl	(%r8), %edx
	addl	$1, %ecx
	addq	$1, %r8
	movzbl	(%rax), %edi
	addq	$1, %rax
	andl	$-16, %edx
	andl	$15, %edi
	orl	%edi, %edx
	movb	%dl, -1(%r8)
	cmpl	%ecx, %esi
	jge	.L11509
	jmp	.L11487
.L11517:
	movq	(%rsp), %r9
	xorl	%esi, %esi
.L11524:
	movzbl	(%rdx,%rsi), %edi
	movzbl	(%r9,%rsi), %r8d
	andl	$15, %edi
	andl	$-16, %r8d
	orl	%r8d, %edi
	movb	%dil, (%r9,%rsi)
	addq	$1, %rsi
	cmpl	%esi, %ecx
	jg	.L11524
	jmp	.L11523
.L11525:
	movq	(%rsp), %r8
	xorl	%edx, %edx
.L11532:
	movzbl	(%rax,%rdx), %ecx
	movzbl	(%r8,%rdx), %edi
	andl	$15, %ecx
	andl	$-16, %edi
	orl	%edi, %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %esi
	jge	.L11532
	jmp	.L11487
.L11497:
	xorl	%edx, %edx
.L11504:
	movzbl	(%r15,%rdx), %ecx
	movzbl	(%r12,%rdx), %esi
	andl	$15, %ecx
	andl	$-16, %esi
	orl	%esi, %ecx
	movb	%cl, (%r12,%rdx)
	addq	$1, %rdx
	cmpl	%edx, 24(%rsp)
	jg	.L11504
	jmp	.L11503
.L11536:
	xorl	%esi, %esi
.L11543:
	movzbl	(%rax,%rsi), %edi
	movzbl	(%rdx,%rsi), %r8d
	andl	$15, %edi
	andl	$-16, %r8d
	orl	%r8d, %edi
	movb	%dil, (%rdx,%rsi)
	addq	$1, %rsi
	cmpl	%esi, %ecx
	jg	.L11543
	jmp	.L11542
.L11544:
	movq	(%rsp), %r8
	xorl	%edx, %edx
.L11551:
	movzbl	(%rax,%rdx), %ecx
	movzbl	(%r8,%rdx), %edi
	andl	$15, %ecx
	andl	$-16, %edi
	orl	%edi, %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %esi
	jge	.L11551
	jmp	.L11487
.L11696:
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L11492
.L11687:
	movzbl	97(%rbx), %r8d
.L11493:
	movl	40(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 32(%rsp)
	movq	%r11, 8(%rsp)
	call	s370_logical_to_main_l
	movl	32(%rsp), %r10d
	movq	8(%rsp), %r11
	jmp	.L11495
.L11697:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L11494
	jmp	.L11493
.L11694:
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L11474
	movzbl	97(%rbx), %r8d
.L11475:
	movl	(%rsp), %esi
	movl	$1, %r9d
	movl	$1, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 44(%rsp)
	movq	%r11, 32(%rsp)
	call	s370_logical_to_main_l
	movl	44(%rsp), %r10d
	movq	%rax, (%rsp)
	movq	984(%rbx), %rax
	movq	32(%rsp), %r11
	movq	%rax, 16(%rsp)
	jmp	.L11477
.L11482:
	movq	(%rsp), %r8
	xorl	%edx, %edx
.L11490:
	movzbl	(%r8,%rdx), %ecx
	movzbl	(%rax,%rdx), %edi
	andl	$-16, %ecx
	andl	$15, %edi
	orl	%edi, %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %esi
	jge	.L11490
	jmp	.L11487
.L11491:
	leal	(%r10,%r14), %edi
	andl	$16777215, %edi
	jmp	.L11687
.L11505:
	movq	(%rsp), %r8
	xorl	%edx, %edx
.L11512:
	movzbl	(%r8,%rdx), %ecx
	movzbl	(%rax,%rdx), %edi
	andl	$-16, %ecx
	andl	$15, %edi
	orl	%edi, %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %esi
	jge	.L11512
	jmp	.L11487
.L11690:
	cmpb	43192(%rbx,%rsi), %cl
	je	.L11439
.L11558:
	movzbl	%cl, %r8d
	jmp	.L11440
.L11447:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11457
	leal	(%r10,%r14), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L11699
.L11458:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L11700
.L11460:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L11459
	testb	$4, 46264(%rbx,%rax)
	je	.L11459
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L11461:
	movq	%r12, %rdx
.L11463:
	movzbl	(%rdx), %esi
	addq	$1, %rdx
	addq	$1, %r15
	movzbl	-1(%r15), %ecx
	andl	$-16, %esi
	andl	$15, %ecx
	orl	%esi, %ecx
	movb	%cl, -1(%rdx)
	movl	%edx, %ecx
	subl	%r12d, %ecx
	cmpl	%ecx, %r10d
	jg	.L11463
	movl	%ebp, %edi
	subl	%r10d, %edi
	js	.L11464
	leaq	16(%rdx), %rcx
	leal	1(%rdi), %r8d
	cmpq	%rcx, %rax
	leaq	16(%rax), %rcx
	setae	%sil
	cmpq	%rcx, %rdx
	setae	%cl
	orb	%cl, %sil
	je	.L11465
	cmpl	$15, %r8d
	jbe	.L11465
	movl	%r8d, %r10d
	movdqa	.LC8(%rip), %xmm3
	xorl	%ecx, %ecx
	shrl	$4, %r10d
	movdqa	.LC9(%rip), %xmm2
	xorl	%r9d, %r9d
	movl	%r10d, %esi
	sall	$4, %esi
.L11470:
	movdqu	(%rdx,%rcx), %xmm0
	addl	$1, %r9d
	movdqu	(%rax,%rcx), %xmm1
	pand	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%rdx,%rcx)
	addq	$16, %rcx
	cmpl	%r9d, %r10d
	ja	.L11470
	movl	%esi, %ecx
	addq	%rcx, %rdx
	addq	%rcx, %rax
	cmpl	%r8d, %esi
	je	.L11464
.L11469:
	movzbl	(%rdx), %ecx
	addl	$1, %esi
	addq	$1, %rdx
	movzbl	(%rax), %r8d
	addq	$1, %rax
	andl	$-16, %ecx
	andl	$15, %r8d
	orl	%r8d, %ecx
	movb	%cl, -1(%rdx)
	cmpl	%esi, %edi
	jge	.L11469
	jmp	.L11464
.L11693:
	addl	%r13d, %ebp
	cmpl	$79, %ebp
	jbe	.L11432
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
.L11699:
	.cfi_restore_state
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L11458
.L11686:
	movzbl	97(%rbx), %r8d
.L11459:
	movl	40(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 8(%rsp)
	movq	%r11, (%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r10d
	movq	(%rsp), %r11
	jmp	.L11461
.L11700:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L11460
	jmp	.L11459
.L11688:
	leal	(%r14,%rbp), %eax
	cmpl	$79, %eax
	jbe	.L11436
	movq	%rbx, %rdi
	call	s370_store_int_timer
	jmp	.L11436
.L11473:
	movl	24(%rsp), %eax
	movzbl	97(%rbx), %r8d
	leal	(%rax,%r13), %edi
	andl	$16777215, %edi
	jmp	.L11475
.L11695:
	cmpb	43192(%rbx,%rdx), %r8b
	je	.L11476
	jmp	.L11475
.L11457:
	leal	(%r10,%r14), %edi
	andl	$16777215, %edi
	jmp	.L11686
.L11465:
	xorl	%ecx, %ecx
.L11472:
	movzbl	(%rdx,%rcx), %esi
	movzbl	(%rax,%rcx), %r8d
	andl	$-16, %esi
	andl	$15, %r8d
	orl	%r8d, %esi
	movb	%sil, (%rdx,%rcx)
	addq	$1, %rcx
	cmpl	%ecx, %edi
	jge	.L11472
	jmp	.L11464
	.cfi_endproc
.LFE1113:
	.size	s370_move_numerics, .-s370_move_numerics
	.p2align 4,,15
	.globl	s370_move_string
	.type	s370_move_string, @function
s370_move_string:
.LFB1114:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movzbl	3(%rdi), %r12d
	movb	$4, 130(%rsi)
	addq	$4, 136(%rsi)
	movzbl	%r12b, %eax
	andl	$15, %r12d
	movl	%eax, 8(%rsp)
	movzbl	%r12b, %eax
	sarl	$4, 8(%rsp)
	movl	%eax, 12(%rsp)
	testl	$-256, 192(%rsi)
	jne	.L11748
.L11702:
	movzbl	192(%rbx), %eax
	movzbl	%r12b, %r12d
	movl	$4096, %r15d
	movb	%al, 7(%rsp)
	movslq	8(%rsp), %rax
	leaq	(%rbx,%rax,8), %rax
	movl	192(%rax), %edx
	movq	%rax, 16(%rsp)
	leaq	(%rbx,%r12,8), %rax
	movq	%rax, 24(%rsp)
	movl	192(%rax), %eax
	movl	%edx, %ebp
	andl	$4095, %edx
	movl	%eax, %r12d
	andl	$4095, %eax
	andl	$16777215, %ebp
	andl	$16777215, %r12d
	cmpl	%eax, %edx
	jbe	.L11703
	subl	%edx, %r15d
.L11704:
	movl	12(%rsp), %eax
	xorl	%r14d, %r14d
	leal	5(%rax), %r11d
	movl	8(%rsp), %eax
	movslq	%r11d, %r11
	leal	5(%rax), %r10d
	movslq	%r10d, %r10
	.p2align 4,,10
	.p2align 3
.L11719:
	leal	-80(%r12), %eax
	cmpl	$3, %eax
	jbe	.L11749
.L11705:
	movl	1892(%rbx,%r11,4), %eax
	testl	%eax, %eax
	je	.L11706
	movl	%r12d, %esi
	addl	$1, %eax
	shrl	$11, %esi
	cltq
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L11750
.L11707:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11751
.L11708:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L11722
	testb	$4, 46264(%rbx,%rsi)
	je	.L11722
	movl	%r12d, %eax
	movzbl	%cl, %r8d
	xorq	26808(%rdx), %rax
.L11710:
	movzbl	(%rax), %r13d
	movl	1892(%rbx,%r10,4), %eax
	testl	%eax, %eax
	je	.L11711
	movl	%ebp, %esi
	addl	$1, %eax
	shrl	$11, %esi
	cltq
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L11752
.L11712:
	testb	%r8b, %r8b
	jne	.L11753
.L11713:
	movl	%ebp, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L11711
	testb	$2, 46264(%rbx,%rsi)
	je	.L11711
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L11714:
	movb	%r13b, (%rax)
	leal	-80(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L11754
.L11715:
	cmpb	%r13b, 7(%rsp)
	je	.L11755
	addl	$1, %ebp
	addl	$1, %r12d
	addl	$1, %r14d
	andl	$16777215, %ebp
	andl	$16777215, %r12d
	cmpl	%r14d, %r15d
	jg	.L11719
	movq	16(%rsp), %rax
	movl	%ebp, 192(%rax)
	movq	24(%rsp), %rax
	movl	%r12d, 192(%rax)
	movb	$3, 100(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11703:
	.cfi_restore_state
	subl	%eax, %r15d
	jmp	.L11704
	.p2align 4,,10
	.p2align 3
.L11755:
	movq	16(%rsp), %rax
	movl	%ebp, 192(%rax)
	movb	$1, 100(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11748:
	.cfi_restore_state
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
	jmp	.L11702
.L11752:
	movzbl	44216(%rbx,%rsi), %edi
	testb	%dil, 1976(%rbx,%rax)
	jne	.L11712
.L11711:
	movl	8(%rsp), %esi
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movq	%r10, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	s370_logical_to_main_l
	movq	40(%rsp), %r10
	movq	32(%rsp), %r11
	jmp	.L11714
.L11751:
	cmpb	43192(%rbx,%rsi), %cl
	je	.L11708
.L11722:
	movzbl	%cl, %r8d
.L11709:
	movl	12(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movq	%r10, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	40(%rsp), %r10
	movq	32(%rsp), %r11
	jmp	.L11710
.L11753:
	cmpb	43192(%rbx,%rsi), %r8b
	je	.L11713
	jmp	.L11711
	.p2align 4,,10
	.p2align 3
.L11750:
	movzbl	44216(%rbx,%rsi), %ecx
	testb	%cl, 1976(%rbx,%rax)
	jne	.L11707
.L11706:
	movzbl	97(%rbx), %r8d
	jmp	.L11709
.L11749:
	movq	%rbx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	s370_store_int_timer
	movq	40(%rsp), %r10
	movq	32(%rsp), %r11
	jmp	.L11705
.L11754:
	movq	%rbx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	s370_fetch_int_timer
	movq	40(%rsp), %r10
	movq	32(%rsp), %r11
	jmp	.L11715
	.cfi_endproc
.LFE1114:
	.size	s370_move_string, .-s370_move_string
	.p2align 4,,15
	.globl	s370_move_with_offset
	.type	s370_move_with_offset, @function
s370_move_with_offset:
.LFB1115:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	2(%rdi), %eax
	bswap	%eax
	movl	%eax, %r14d
	movl	%eax, %esi
	shrl	$16, %r14d
	shrl	$28, %esi
	andl	$4095, %r14d
	testl	%esi, %esi
	movl	%esi, 32(%rsp)
	je	.L11757
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %r14d
	andl	$16777215, %r14d
.L11757:
	movl	%eax, %r12d
	shrl	$12, %eax
	andl	$4095, %r12d
	andl	$15, %eax
	movl	%eax, 36(%rsp)
	je	.L11758
	cltq
	addl	192(%rbx,%rax,8), %r12d
	andl	$16777215, %r12d
.L11758:
	movzbl	1(%rdi), %r11d
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	movl	%r11d, %eax
	shrb	$4, %r11b
	andl	$15, %eax
	movl	%eax, 4(%rsp)
	movzbl	%r11b, %eax
	leal	(%r14,%rax), %r11d
	movl	%eax, 16(%rsp)
	movl	%r11d, %eax
	xorl	%r14d, %eax
	testl	$2147481600, %eax
	jne	.L11759
	movl	32(%rsp), %eax
	movl	%r11d, %ebp
	andl	$16777215, %ebp
	leal	5(%rax), %r13d
	movslq	%r13d, %r13
.L11760:
	movl	4(%rsp), %eax
	leal	(%r12,%rax), %r14d
	movl	%r14d, %eax
	xorl	%r12d, %eax
	testl	$2147481600, %eax
	jne	.L11772
	movl	36(%rsp), %edi
	movl	%r14d, %eax
	andl	$16777215, %eax
	leal	5(%rdi), %r15d
	movslq	%r15d, %r15
.L11773:
	leal	-80(%rax), %edx
	leal	-1(%rax), %edi
	cmpl	$3, %edx
	movl	%edi, 40(%rsp)
	jbe	.L11923
.L11786:
	leaq	(%rbx,%r15,4), %rsi
	movl	1892(%rsi), %edx
	movq	%rsi, 24(%rsp)
	testl	%edx, %edx
	je	.L11787
	leal	1(%rdx), %esi
	movl	%eax, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rsi,8)
	jne	.L11924
.L11788:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L11925
.L11789:
	andl	$14680064, %r14d
	orl	2224(%rbx), %r14d
	cmpl	10424(%rdx), %r14d
	jne	.L11833
	testb	$4, 46264(%rbx,%rcx)
	je	.L11833
	xorq	26808(%rdx), %rax
.L11791:
	movzbl	(%rax), %r14d
	leal	-80(%rbp), %r15d
	cmpl	$3, %r15d
	jbe	.L11926
.L11792:
	leaq	(%rbx,%r13,4), %rax
	movl	1892(%rax), %r10d
	movq	%rax, 8(%rsp)
	testl	%r10d, %r10d
	je	.L11793
	movl	%ebp, %eax
	addl	$1, %r10d
	shrl	$11, %eax
	movslq	%r10d, %r10
	andl	$1023, %eax
	movl	320(%rbx,%r10,8), %edi
	leaq	(%rbx,%rax,8), %rcx
	movl	2232(%rcx), %r9d
	cmpl	%r9d, %edi
	jne	.L11927
.L11794:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L11928
.L11795:
	movl	%r11d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L11836
	testb	$4, 46264(%rbx,%rax)
	je	.L11836
	movl	%ebp, %edx
	movl	%r14d, %r12d
	movzbl	%sil, %r8d
	xorq	26808(%rcx), %rdx
	leal	-1(%rbp), %r13d
	sall	$4, %r12d
	movzbl	(%rdx), %edx
	andl	$15, %edx
	orl	%edx, %r12d
.L11797:
	cmpl	%edi, %r9d
	jne	.L11929
.L11799:
	testb	%r8b, %r8b
	jne	.L11930
.L11801:
	leaq	(%rbx,%rax,8), %rdx
	andl	$14680064, %r11d
	orl	2224(%rbx), %r11d
	cmpl	10424(%rdx), %r11d
	jne	.L11800
	testb	$2, 46264(%rbx,%rax)
	je	.L11800
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L11802:
	cmpl	$3, %r15d
	movb	%r12b, (%rax)
	jbe	.L11931
.L11803:
	movl	16(%rsp), %eax
	testl	%eax, %eax
	je	.L11756
	movl	%eax, %r11d
	xorl	%r12d, %r12d
	subl	$1, %r11d
	addq	$1, %r11
	movq	%r11, 16(%rsp)
	movl	40(%rsp), %r11d
	jmp	.L11819
	.p2align 4,,10
	.p2align 3
.L11935:
	movzbl	97(%rbx), %r8d
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
.L11806:
	movq	8(%rsp), %rax
	orl	%ebp, %r15d
	movl	%r13d, %ebp
	andl	$16777215, %ebp
	leal	-1(%rbp), %r10d
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11813
	leal	1(%rax), %ecx
	movl	%ebp, %eax
	shrl	$11, %eax
	movslq	%ecx, %rcx
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L11932
.L11814:
	testb	%r8b, %r8b
	jne	.L11933
.L11815:
	andl	$14680064, %r13d
	orl	2224(%rbx), %r13d
	cmpl	10424(%rdx), %r13d
	jne	.L11813
	testb	$2, 46264(%rbx,%rax)
	je	.L11813
	movl	%ebp, %eax
	xorq	26808(%rdx), %rax
.L11816:
	subl	$80, %ebp
	movb	%r15b, (%rax)
	cmpl	$3, %ebp
	jbe	.L11934
.L11817:
	addq	$1, %r12
	cmpq	16(%rsp), %r12
	je	.L11756
	movl	%r10d, %r13d
.L11819:
	movl	4(%rsp), %eax
	shrb	$4, %r14b
	movl	%r14d, %ebp
	subl	%r12d, %eax
	testl	%eax, %eax
	jle	.L11935
	movl	%r11d, %r14d
	andl	$16777215, %r14d
	leal	-80(%r14), %eax
	leal	-1(%r14), %r10d
	cmpl	$3, %eax
	jbe	.L11936
.L11807:
	movq	24(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11808
	leal	1(%rax), %ecx
	movl	%r14d, %edx
	shrl	$11, %edx
	movslq	%ecx, %rcx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rax
	movl	2232(%rax), %esi
	cmpl	%esi, 320(%rbx,%rcx,8)
	jne	.L11937
.L11809:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L11938
.L11810:
	andl	$14680064, %r11d
	orl	2224(%rbx), %r11d
	cmpl	10424(%rax), %r11d
	jne	.L11811
	testb	$4, 46264(%rbx,%rdx)
	je	.L11811
	xorq	26808(%rax), %r14
.L11812:
	movzbl	(%r14), %r14d
	movl	%r10d, %r11d
	movl	%r14d, %r15d
	sall	$4, %r15d
	jmp	.L11806
	.p2align 4,,10
	.p2align 3
.L11756:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11759:
	.cfi_restore_state
	movl	32(%rsp), %eax
	leal	5(%rax), %r13d
	movslq	%r13d, %r13
	leaq	(%rbx,%r13,4), %rbp
	movl	1892(%rbp), %eax
	testl	%eax, %eax
	je	.L11761
	movl	%r14d, %ecx
	addl	$1, %eax
	shrl	$11, %ecx
	cltq
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rax,8)
	jne	.L11939
.L11762:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L11940
.L11763:
	movl	%r14d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rdx), %eax
	jne	.L11824
	testb	$1, 46264(%rbx,%rcx)
	je	.L11824
	movq	35000(%rdx), %rax
	movq	%rax, 984(%rbx)
.L11765:
	movl	$2047, %eax
	movl	%r14d, %edx
	subl	16(%rsp), %eax
	andl	$2047, %edx
	cmpl	%eax, %edx
	jg	.L11941
	cmpl	$83, %r14d
	jbe	.L11771
.L11922:
	movl	%r11d, %ebp
	andl	$16777215, %ebp
	jmp	.L11760
	.p2align 4,,10
	.p2align 3
.L11772:
	movl	36(%rsp), %eax
	leal	5(%rax), %r15d
	movslq	%r15d, %r15
	leaq	(%rbx,%r15,4), %r10
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L11777
	movl	%r12d, %edx
	addl	$1, %eax
	shrl	$11, %edx
	cltq
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rcx
	movl	2232(%rcx), %esi
	cmpl	%esi, 320(%rbx,%rax,8)
	jne	.L11942
.L11776:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L11943
.L11778:
	movl	%r12d, %eax
	andl	$14680064, %eax
	orl	2224(%rbx), %eax
	cmpl	10424(%rcx), %eax
	jne	.L11826
	testb	$4, 46264(%rbx,%rdx)
	je	.L11826
.L11779:
	movl	$2047, %eax
	movl	%r12d, %edx
	subl	4(%rsp), %eax
	andl	$2047, %edx
	cmpl	%eax, %edx
	jg	.L11944
	cmpl	$83, %r12d
	jbe	.L11785
	movl	%r14d, %eax
	andl	$16777215, %eax
	jmp	.L11773
.L11932:
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L11814
.L11813:
	movl	32(%rsp), %esi
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movl	%r11d, 44(%rsp)
	movl	%r10d, 40(%rsp)
	call	s370_logical_to_main_l
	movl	44(%rsp), %r11d
	movl	40(%rsp), %r10d
	jmp	.L11816
.L11937:
	movzbl	44216(%rbx,%rdx), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L11809
.L11808:
	movzbl	97(%rbx), %r8d
.L11811:
	movl	36(%rsp), %esi
	movl	%r14d, %edi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 40(%rsp)
	call	s370_logical_to_main_l
	movzbl	97(%rbx), %r8d
	movq	%rax, %r14
	movl	40(%rsp), %r10d
	jmp	.L11812
.L11933:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L11815
	jmp	.L11813
	.p2align 4,,10
	.p2align 3
.L11938:
	cmpb	43192(%rbx,%rdx), %r8b
	je	.L11810
	.p2align 4,,3
	jmp	.L11811
	.p2align 4,,10
	.p2align 3
.L11934:
	movq	%rbx, %rdi
	movl	%r11d, 44(%rsp)
	movl	%r10d, 40(%rsp)
	call	s370_fetch_int_timer
	movl	44(%rsp), %r11d
	movl	40(%rsp), %r10d
	jmp	.L11817
.L11936:
	movq	%rbx, %rdi
	movl	%r11d, 44(%rsp)
	movl	%r10d, 40(%rsp)
	call	s370_store_int_timer
	movl	44(%rsp), %r11d
	movl	40(%rsp), %r10d
	jmp	.L11807
.L11798:
	movzbl	97(%rbx), %r8d
.L11800:
	movl	32(%rsp), %esi
	movl	$1, %r9d
	movl	$2, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	s370_logical_to_main_l
	jmp	.L11802
.L11930:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L11801
	.p2align 4,,3
	jmp	.L11800
.L11923:
	movq	%rbx, %rdi
	movl	%eax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	call	s370_store_int_timer
	movl	24(%rsp), %eax
	movl	8(%rsp), %r11d
	jmp	.L11786
.L11931:
	movq	%rbx, %rdi
	call	s370_fetch_int_timer
	jmp	.L11803
.L11944:
	movl	1892(%r10), %eax
	testl	%eax, %eax
	je	.L11945
	leal	1(%rax), %ecx
	movl	%r14d, %eax
	andl	$16777215, %eax
	movslq	%ecx, %rcx
	movl	%eax, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rsi
	movl	2232(%rsi), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L11946
.L11783:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11947
.L11784:
	movl	%r14d, %ecx
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rsi), %ecx
	jne	.L11782
	testb	$4, 46264(%rbx,%rdx)
	jne	.L11773
.L11782:
	movl	4(%rsp), %edx
	movq	%rbx, %r8
	movl	$4, %ecx
	movl	36(%rsp), %esi
	movl	%r12d, %edi
	movl	%eax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	call	s370_validate_operand.part.11
	movl	8(%rsp), %r11d
	movl	24(%rsp), %eax
	jmp	.L11773
.L11947:
	cmpb	43192(%rbx,%rdx), %cl
	je	.L11784
	jmp	.L11782
.L11946:
	movzbl	44216(%rbx,%rdx), %edi
	testb	%dil, 1976(%rbx,%rcx)
	jne	.L11783
	jmp	.L11782
.L11945:
	movl	%r14d, %eax
	andl	$16777215, %eax
	jmp	.L11782
.L11785:
	cmpl	$79, %r14d
	ja	.L11821
	movl	%r14d, %eax
	jmp	.L11773
.L11924:
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L11788
.L11787:
	movzbl	97(%rbx), %r8d
.L11790:
	movl	36(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%eax, %edi
	movl	%r11d, 8(%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r11d
	jmp	.L11791
.L11821:
	movq	%rbx, %rdi
	movl	%r11d, 8(%rsp)
	call	s370_store_int_timer
	movl	%r14d, %eax
	movl	8(%rsp), %r11d
	andl	$16777215, %eax
	jmp	.L11773
.L11927:
	movzbl	44216(%rbx,%rax), %edx
	testb	%dl, 1976(%rbx,%r10)
	jne	.L11794
.L11793:
	movzbl	97(%rbx), %r8d
.L11796:
	movl	32(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%ebp, %edi
	movl	%r11d, 44(%rsp)
	leal	-1(%rbp), %r13d
	movl	%r14d, %r12d
	sall	$4, %r12d
	call	s370_logical_to_main_l
	movzbl	(%rax), %eax
	andl	$15, %eax
	orl	%eax, %r12d
	movq	8(%rsp), %rax
	movl	1892(%rax), %r10d
	testl	%r10d, %r10d
	je	.L11798
	movl	%ebp, %eax
	addl	$1, %r10d
	movzbl	97(%rbx), %r8d
	shrl	$11, %eax
	movslq	%r10d, %r10
	movl	44(%rsp), %r11d
	andl	$1023, %eax
	movl	320(%rbx,%r10,8), %edi
	movl	2232(%rbx,%rax,8), %r9d
	jmp	.L11797
.L11926:
	movq	%rbx, %rdi
	movl	%r11d, 8(%rsp)
	call	s370_store_int_timer
	movl	8(%rsp), %r11d
	jmp	.L11792
.L11929:
	movzbl	44216(%rbx,%rax), %edx
	testb	%dl, 1976(%rbx,%r10)
	jne	.L11799
	jmp	.L11800
.L11928:
	cmpb	43192(%rbx,%rax), %sil
	je	.L11795
.L11836:
	movzbl	%sil, %r8d
	jmp	.L11796
.L11939:
	movzbl	44216(%rbx,%rcx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L11762
.L11761:
	movzbl	97(%rbx), %r8d
.L11764:
	movl	32(%rsp), %esi
	movl	$1, %r9d
	movl	$1, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %edi
	movl	%r11d, 8(%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r11d
	jmp	.L11765
.L11940:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L11763
.L11824:
	movzbl	%sil, %r8d
	jmp	.L11764
.L11941:
	movl	1892(%rbp), %eax
	testl	%eax, %eax
	je	.L11767
	leal	1(%rax), %ecx
	movl	%r11d, %ebp
	andl	$16777215, %ebp
	movslq	%ecx, %rcx
	movl	%ebp, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L11948
.L11768:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L11949
.L11770:
	movl	%r11d, %ecx
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L11769
	testb	$1, 46264(%rbx,%rax)
	je	.L11769
	movq	35000(%rdx), %rax
	movq	%rax, 984(%rbx)
	jmp	.L11760
.L11771:
	cmpl	$79, %r11d
	ja	.L11820
	movl	%r11d, %ebp
	jmp	.L11760
.L11767:
	movl	%r11d, %ebp
	andl	$16777215, %ebp
.L11769:
	movl	16(%rsp), %edx
	movq	%rbx, %r8
	movl	$1, %ecx
	movl	32(%rsp), %esi
	movl	%r14d, %edi
	movl	%r11d, 8(%rsp)
	call	s370_validate_operand.part.11
	movl	8(%rsp), %r11d
	jmp	.L11760
.L11949:
	cmpb	43192(%rbx,%rax), %cl
	je	.L11770
	jmp	.L11769
.L11820:
	movq	%rbx, %rdi
	movl	%r11d, 8(%rsp)
	call	s370_store_int_timer
	movl	8(%rsp), %r11d
	jmp	.L11922
.L11948:
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L11768
	jmp	.L11769
.L11942:
	movzbl	44216(%rbx,%rdx), %esi
	testb	%sil, 1976(%rbx,%rax)
	jne	.L11776
.L11777:
	movzbl	97(%rbx), %r8d
.L11775:
	movl	36(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r12d, %edi
	movq	%r10, 24(%rsp)
	movl	%r11d, 8(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r10
	movl	8(%rsp), %r11d
	jmp	.L11779
.L11943:
	cmpb	43192(%rbx,%rdx), %sil
	je	.L11778
.L11826:
	movzbl	%sil, %r8d
	jmp	.L11775
.L11925:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L11789
.L11833:
	movzbl	%sil, %r8d
	jmp	.L11790
	.cfi_endproc
.LFE1115:
	.size	s370_move_with_offset, .-s370_move_with_offset
	.p2align 4,,15
	.globl	s370_move_zones
	.type	s370_move_zones, @function
s370_move_zones:
.LFB1116:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	2(%rdi), %eax
	bswap	%eax
	movl	%eax, %r13d
	movl	%eax, %esi
	shrl	$16, %r13d
	shrl	$28, %esi
	andl	$4095, %r13d
	testl	%esi, %esi
	movl	%esi, (%rsp)
	je	.L11951
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %r13d
	andl	$16777215, %r13d
.L11951:
	movl	%eax, %r14d
	shrl	$12, %eax
	andl	$4095, %r14d
	andl	$15, %eax
	movl	%eax, 40(%rsp)
	je	.L11952
	cltq
	addl	192(%rbx,%rax,8), %r14d
	andl	$16777215, %r14d
.L11952:
	movzbl	1(%rdi), %ebp
	movb	$6, 130(%rbx)
	addq	$6, 136(%rbx)
	cmpl	$83, %r14d
	jbe	.L12206
.L11954:
	movl	(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 16(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11955
	leal	1(%rax), %edx
	movl	%r13d, %esi
	shrl	$11, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L12207
.L11956:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L12208
.L11957:
	movl	%r13d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L12076
	testb	$1, 46264(%rbx,%rsi)
	je	.L12076
	movq	35000(%rax), %r11
	movl	%r13d, %r12d
	movzbl	%cl, %r8d
	movq	%r11, 984(%rbx)
	xorq	26808(%rax), %r12
.L11959:
	movl	40(%rsp), %eax
	addl	$5, %eax
	cltq
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 8(%rsp)
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11960
	leal	1(%rax), %edx
	movl	%r14d, %esi
	shrl	$11, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rax
	movl	2232(%rax), %edi
	cmpl	%edi, 320(%rbx,%rdx,8)
	jne	.L12209
.L11961:
	testb	%r8b, %r8b
	jne	.L12210
.L11962:
	movl	%r14d, %edx
	andl	$14680064, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rax), %edx
	jne	.L11960
	testb	$4, 46264(%rbx,%rsi)
	je	.L11960
	movl	%r14d, %r15d
	xorq	26808(%rax), %r15
.L11963:
	movl	$2047, %r10d
	movl	%r13d, %eax
	subl	%ebp, %r10d
	andl	$2047, %eax
	cmpl	%r10d, %eax
	jg	.L11964
	movl	%r14d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r10d
	jl	.L11965
	leaq	16(%r15), %rdx
	leal	1(%rbp), %eax
	cmpq	%rdx, %r12
	leaq	16(%r12), %rdx
	setae	%cl
	cmpq	%rdx, %r15
	setae	%dl
	orb	%dl, %cl
	je	.L11966
	cmpl	$15, %eax
	jbe	.L11966
	movl	%eax, %esi
	movdqa	.LC9(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %esi
	movdqa	.LC8(%rip), %xmm2
	xorl	%edi, %edi
	movl	%esi, %ecx
	sall	$4, %ecx
.L11972:
	movdqu	(%r12,%rdx), %xmm0
	addl	$1, %edi
	movdqu	(%r15,%rdx), %xmm1
	pand	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r12,%rdx)
	addq	$16, %rdx
	cmpl	%edi, %esi
	ja	.L11972
	movl	%ecx, %edx
	addq	%rdx, %r12
	addq	%rdx, %r15
	cmpl	%ecx, %eax
	je	.L11982
	.p2align 4,,10
	.p2align 3
.L11970:
	movzbl	(%r12), %eax
	addl	$1, %ecx
	addq	$1, %r12
	movzbl	(%r15), %edx
	addq	$1, %r15
	andl	$15, %eax
	andl	$-16, %edx
	orl	%edx, %eax
	movb	%al, -1(%r12)
	cmpl	%ecx, %ebp
	jge	.L11970
.L11982:
	orb	$6, (%r11)
.L11971:
	cmpl	$83, %r13d
	jbe	.L12211
.L11950:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11966:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L11974:
	movzbl	(%r12,%rax), %edx
	movzbl	(%r15,%rax), %ecx
	andl	$15, %edx
	andl	$-16, %ecx
	orl	%ecx, %edx
	movb	%dl, (%r12,%rax)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jge	.L11974
	jmp	.L11982
.L12209:
	movzbl	44216(%rbx,%rsi), %edi
	testb	%dil, 1976(%rbx,%rdx)
	jne	.L11961
.L11960:
	movl	40(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %edi
	movq	%r11, 24(%rsp)
	call	s370_logical_to_main_l
	movq	24(%rsp), %r11
	movq	%rax, %r15
	jmp	.L11963
.L12210:
	cmpb	%r8b, 43192(%rbx,%rsi)
	je	.L11962
	jmp	.L11960
.L11964:
	movl	$2048, 24(%rsp)
	subl	%eax, 24(%rsp)
	movq	16(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11991
	leal	1(%rax), %esi
	movl	24(%rsp), %eax
	movslq	%esi, %rsi
	leal	(%rax,%r13), %ecx
	movl	%ecx, %edi
	andl	$16777215, %edi
	movl	%edi, %edx
	shrl	$11, %edx
	andl	$1023, %edx
	leaq	(%rbx,%rdx,8), %rax
	movl	2232(%rax), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L12212
.L11992:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L12213
.L11994:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rax), %ecx
	jne	.L11993
	testb	$1, 46264(%rbx,%rdx)
	je	.L11993
	movq	35000(%rax), %rsi
	movq	%rdi, (%rsp)
	movq	%rsi, 984(%rbx)
	movq	26808(%rax), %rax
	movq	%rsi, 16(%rsp)
	xorq	%rax, (%rsp)
.L11995:
	movl	%r14d, %eax
	andl	$2047, %eax
	cmpl	%eax, %r10d
	jl	.L11996
	movq	%r15, %rax
.L11998:
	movzbl	(%rax), %edx
	addq	$1, %rax
	addq	$1, %r12
	movzbl	-1(%r12), %ecx
	andl	$-16, %edx
	andl	$15, %ecx
	orl	%ecx, %edx
	movb	%dl, -1(%r12)
	movl	%eax, %edx
	subl	%r15d, %edx
	cmpl	%edx, 24(%rsp)
	jg	.L11998
	movl	%ebp, %esi
	subl	24(%rsp), %esi
	js	.L12005
	movq	(%rsp), %r10
	leaq	16(%rax), %rdx
	leal	1(%rsi), %edi
	cmpq	%rdx, %r10
	movq	%r10, %rdx
	setae	%cl
	addq	$16, %rdx
	cmpq	%rdx, %rax
	setae	%dl
	orb	%dl, %cl
	je	.L12000
	cmpl	$15, %edi
	jbe	.L12000
	movl	%edi, %r9d
	movdqa	.LC9(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %r9d
	movdqa	.LC8(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L12006:
	movdqu	(%r10,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%rax,%rdx), %xmm1
	pand	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r8d, %r9d
	ja	.L12006
	movq	(%rsp), %r8
	movl	%ecx, %edx
	addq	%rdx, %rax
	addq	%rdx, %r8
	cmpl	%edi, %ecx
	je	.L12005
.L12004:
	movzbl	(%r8), %edx
	addl	$1, %ecx
	addq	$1, %r8
	movzbl	(%rax), %edi
	addq	$1, %rax
	andl	$15, %edx
	andl	$-16, %edi
	orl	%edi, %edx
	movb	%dl, -1(%r8)
	cmpl	%esi, %ecx
	jle	.L12004
.L12005:
	orb	$6, (%r11)
	movq	16(%rsp), %rax
	orb	$6, (%rax)
	jmp	.L11971
.L12207:
	movzbl	44216(%rbx,%rsi), %ecx
	testb	%cl, 1976(%rbx,%rdx)
	jne	.L11956
.L11955:
	movzbl	97(%rbx), %r8d
.L11958:
	movl	(%rsp), %esi
	leal	1(%rbp), %r9d
	movl	$1, %ecx
	andl	$511, %r9d
	movq	%rbx, %rdx
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	movq	984(%rbx), %r11
	movq	%rax, %r12
	movzbl	97(%rbx), %r8d
	jmp	.L11959
.L11996:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L12009
	leal	(%r10,%r14), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L12214
.L12010:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L12215
.L12012:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L12011
	testb	$4, 46264(%rbx,%rax)
	je	.L12011
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L12013:
	cmpl	%r10d, 24(%rsp)
	je	.L12216
	jge	.L12031
	movq	%r15, %rdx
.L12033:
	movzbl	(%rdx), %ecx
	addq	$1, %rdx
	addq	$1, %r12
	movzbl	-1(%r12), %esi
	andl	$-16, %ecx
	andl	$15, %esi
	orl	%esi, %ecx
	movb	%cl, -1(%r12)
	movl	%edx, %ecx
	subl	%r15d, %ecx
	cmpl	%ecx, 24(%rsp)
	jg	.L12033
	movl	%r10d, %ecx
	subl	24(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.L12034
	movq	(%rsp), %r12
	leaq	16(%rdx), %rsi
	cmpq	%rsi, %r12
	movq	%r12, %rsi
	setae	%dil
	addq	$16, %rsi
	cmpq	%rsi, %rdx
	setae	%sil
	orb	%sil, %dil
	je	.L12035
	cmpl	$15, %ecx
	jbe	.L12035
	movl	%ecx, %r9d
	movdqa	.LC9(%rip), %xmm3
	xorl	%esi, %esi
	shrl	$4, %r9d
	movdqa	.LC8(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %edi
	sall	$4, %edi
.L12040:
	movdqu	(%rdx,%rsi), %xmm0
	addl	$1, %r8d
	movdqu	(%r12,%rsi), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r12,%rsi)
	addq	$16, %rsi
	cmpl	%r9d, %r8d
	jb	.L12040
	movq	(%rsp), %r9
	movl	%edi, %esi
	addq	%rsi, %rdx
	cmpl	%edi, %ecx
	leaq	(%r9,%rsi), %r8
	je	.L12041
.L12039:
	movzbl	(%rdx), %esi
	addl	$1, %edi
	addq	$1, %r8
	movzbl	-1(%r8), %r9d
	addq	$1, %rdx
	andl	$-16, %esi
	andl	$15, %r9d
	orl	%r9d, %esi
	movb	%sil, -1(%r8)
	cmpl	%edi, %ecx
	jg	.L12039
.L12041:
	movq	(%rsp), %rdi
	subl	$1, %ecx
	leaq	1(%rdi,%rcx), %rdi
	movq	%rdi, (%rsp)
.L12034:
	movl	%ebp, %esi
	subl	%r10d, %esi
	js	.L12005
	movq	(%rsp), %r10
	leal	1(%rsi), %edi
	leaq	16(%r10), %rdx
	cmpq	%rdx, %rax
	leaq	16(%rax), %rdx
	setae	%cl
	cmpq	%rdx, %r10
	setae	%dl
	orb	%dl, %cl
	je	.L12043
	cmpl	$15, %edi
	jbe	.L12043
	movl	%edi, %r9d
	movdqa	.LC9(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %r9d
	movdqa	.LC8(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L12048:
	movdqu	(%rax,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%r10,%rdx), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r9d, %r8d
	jb	.L12048
	movq	(%rsp), %r8
	movl	%ecx, %edx
	addq	%rdx, %rax
	addq	%rdx, %r8
	cmpl	%ecx, %edi
	je	.L12005
.L12047:
	movzbl	(%rax), %edx
	addl	$1, %ecx
	addq	$1, %r8
	movzbl	-1(%r8), %edi
	addq	$1, %rax
	andl	$-16, %edx
	andl	$15, %edi
	orl	%edi, %edx
	movb	%dl, -1(%r8)
	cmpl	%ecx, %esi
	jge	.L12047
	jmp	.L12005
.L12031:
	movq	%r12, %rdx
.L12052:
	movzbl	(%rdx), %esi
	addq	$1, %rdx
	addq	$1, %r15
	movzbl	-1(%r15), %ecx
	andl	$15, %esi
	andl	$-16, %ecx
	orl	%esi, %ecx
	movb	%cl, -1(%rdx)
	movl	%edx, %ecx
	subl	%r12d, %ecx
	cmpl	%ecx, %r10d
	jg	.L12052
	movl	24(%rsp), %ecx
	subl	%r10d, %ecx
	testl	%ecx, %ecx
	jle	.L12053
	leaq	16(%rdx), %rsi
	cmpq	%rsi, %rax
	leaq	16(%rax), %rsi
	setae	%dil
	cmpq	%rsi, %rdx
	setae	%sil
	orb	%sil, %dil
	je	.L12054
	cmpl	$15, %ecx
	jbe	.L12054
	movl	%ecx, %r9d
	movdqa	.LC9(%rip), %xmm3
	xorl	%esi, %esi
	shrl	$4, %r9d
	movdqa	.LC8(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %edi
	sall	$4, %edi
.L12059:
	movdqu	(%rax,%rsi), %xmm0
	addl	$1, %r8d
	movdqu	(%rdx,%rsi), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%rdx,%rsi)
	addq	$16, %rsi
	cmpl	%r9d, %r8d
	jb	.L12059
	movl	%edi, %r8d
	addq	%r8, %rdx
	addq	%rax, %r8
	cmpl	%edi, %ecx
	je	.L12060
.L12058:
	movzbl	(%r8), %esi
	addl	$1, %edi
	addq	$1, %rdx
	movzbl	-1(%rdx), %r9d
	addq	$1, %r8
	andl	$-16, %esi
	andl	$15, %r9d
	orl	%r9d, %esi
	movb	%sil, -1(%rdx)
	cmpl	%edi, %ecx
	jg	.L12058
.L12060:
	subl	$1, %ecx
	leaq	1(%rax,%rcx), %rax
.L12053:
	movl	%ebp, %esi
	subl	24(%rsp), %esi
	js	.L12005
	movq	(%rsp), %r10
	leaq	16(%rax), %rdx
	leal	1(%rsi), %edi
	cmpq	%rdx, %r10
	movq	%r10, %rdx
	setae	%cl
	addq	$16, %rdx
	cmpq	%rdx, %rax
	setae	%dl
	orb	%dl, %cl
	je	.L12062
	cmpl	$15, %edi
	jbe	.L12062
	movl	%edi, %r9d
	movdqa	.LC9(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %r9d
	movdqa	.LC8(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L12067:
	movdqu	(%rax,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%r10,%rdx), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r9d, %r8d
	jb	.L12067
	movq	(%rsp), %r8
	movl	%ecx, %edx
	addq	%rdx, %rax
	addq	%rdx, %r8
	cmpl	%ecx, %edi
	je	.L12005
.L12066:
	movzbl	(%rax), %edx
	addl	$1, %ecx
	addq	$1, %r8
	movzbl	-1(%r8), %edi
	addq	$1, %rax
	andl	$-16, %edx
	andl	$15, %edi
	orl	%edi, %edx
	movb	%dl, -1(%r8)
	cmpl	%ecx, %esi
	jge	.L12066
	jmp	.L12005
.L12216:
	movl	24(%rsp), %edi
	leaq	16(%r15), %rcx
	movl	$1, %edx
	testl	%edi, %edi
	cmovg	%edi, %edx
	cmpq	%rcx, %r12
	setae	%sil
	leaq	16(%r12), %rcx
	cmpq	%rcx, %r15
	setae	%cl
	orb	%cl, %sil
	je	.L12015
	cmpl	$15, %edx
	jbe	.L12015
	movl	%edx, %r8d
	movdqa	.LC9(%rip), %xmm3
	xorl	%ecx, %ecx
	shrl	$4, %r8d
	movdqa	.LC8(%rip), %xmm2
	xorl	%esi, %esi
	movl	%r8d, %edi
	sall	$4, %edi
.L12020:
	movdqu	(%r15,%rcx), %xmm0
	addl	$1, %esi
	movdqu	(%r12,%rcx), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r12,%rcx)
	addq	$16, %rcx
	cmpl	%r8d, %esi
	jb	.L12020
	movl	%edi, %ecx
	addq	%rcx, %r12
	addq	%rcx, %r15
	cmpl	%edi, %edx
	movl	%edi, %ecx
	je	.L12021
.L12019:
	movzbl	(%r15), %edx
	addl	$1, %ecx
	addq	$1, %r12
	movzbl	-1(%r12), %esi
	addq	$1, %r15
	andl	$-16, %edx
	andl	$15, %esi
	orl	%esi, %edx
	movb	%dl, -1(%r12)
	cmpl	%ecx, 24(%rsp)
	jg	.L12019
.L12021:
	movl	%ebp, %esi
	subl	24(%rsp), %esi
	js	.L12005
	movq	(%rsp), %r10
	leaq	16(%rax), %rdx
	leal	1(%rsi), %edi
	cmpq	%rdx, %r10
	movq	%r10, %rdx
	setae	%cl
	addq	$16, %rdx
	cmpq	%rdx, %rax
	setae	%dl
	orb	%dl, %cl
	je	.L12023
	cmpl	$15, %edi
	jbe	.L12023
	movl	%edi, %r9d
	movdqa	.LC9(%rip), %xmm3
	xorl	%edx, %edx
	shrl	$4, %r9d
	movdqa	.LC8(%rip), %xmm2
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	sall	$4, %ecx
.L12028:
	movdqu	(%rax,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%r10,%rdx), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r8d, %r9d
	ja	.L12028
	movq	(%rsp), %r8
	movl	%ecx, %edx
	addq	%rdx, %rax
	addq	%rdx, %r8
	cmpl	%edi, %ecx
	je	.L12005
.L12027:
	movzbl	(%r8), %edx
	addl	$1, %ecx
	addq	$1, %r8
	movzbl	(%rax), %edi
	addq	$1, %rax
	andl	$15, %edx
	andl	$-16, %edi
	orl	%edi, %edx
	movb	%dl, -1(%r8)
	cmpl	%ecx, %esi
	jge	.L12027
	jmp	.L12005
.L12035:
	movq	(%rsp), %r9
	xorl	%esi, %esi
.L12042:
	movzbl	(%rdx,%rsi), %edi
	movzbl	(%r9,%rsi), %r8d
	andl	$-16, %edi
	andl	$15, %r8d
	orl	%r8d, %edi
	movb	%dil, (%r9,%rsi)
	addq	$1, %rsi
	cmpl	%esi, %ecx
	jg	.L12042
	jmp	.L12041
.L12043:
	movq	(%rsp), %r8
	xorl	%edx, %edx
.L12050:
	movzbl	(%rax,%rdx), %ecx
	movzbl	(%r8,%rdx), %edi
	andl	$-16, %ecx
	andl	$15, %edi
	orl	%edi, %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %esi
	jge	.L12050
	jmp	.L12005
.L12015:
	xorl	%edx, %edx
.L12022:
	movzbl	(%r15,%rdx), %ecx
	movzbl	(%r12,%rdx), %esi
	andl	$-16, %ecx
	andl	$15, %esi
	orl	%esi, %ecx
	movb	%cl, (%r12,%rdx)
	addq	$1, %rdx
	cmpl	%edx, 24(%rsp)
	jg	.L12022
	jmp	.L12021
.L12054:
	xorl	%esi, %esi
.L12061:
	movzbl	(%rax,%rsi), %edi
	movzbl	(%rdx,%rsi), %r8d
	andl	$-16, %edi
	andl	$15, %r8d
	orl	%r8d, %edi
	movb	%dil, (%rdx,%rsi)
	addq	$1, %rsi
	cmpl	%esi, %ecx
	jg	.L12061
	jmp	.L12060
.L12062:
	movq	(%rsp), %r8
	xorl	%edx, %edx
.L12069:
	movzbl	(%rax,%rdx), %ecx
	movzbl	(%r8,%rdx), %edi
	andl	$-16, %ecx
	andl	$15, %edi
	orl	%edi, %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %esi
	jge	.L12069
	jmp	.L12005
.L12214:
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L12010
.L12205:
	movzbl	97(%rbx), %r8d
.L12011:
	movl	40(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 32(%rsp)
	movq	%r11, 8(%rsp)
	call	s370_logical_to_main_l
	movl	32(%rsp), %r10d
	movq	8(%rsp), %r11
	jmp	.L12013
.L12215:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L12012
	jmp	.L12011
.L12212:
	movzbl	44216(%rbx,%rdx), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L11992
	movzbl	97(%rbx), %r8d
.L11993:
	movl	(%rsp), %esi
	movl	$1, %r9d
	movl	$1, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 44(%rsp)
	movq	%r11, 32(%rsp)
	call	s370_logical_to_main_l
	movl	44(%rsp), %r10d
	movq	%rax, (%rsp)
	movq	984(%rbx), %rax
	movq	32(%rsp), %r11
	movq	%rax, 16(%rsp)
	jmp	.L11995
.L12000:
	movq	(%rsp), %r8
	xorl	%edx, %edx
.L12008:
	movzbl	(%r8,%rdx), %ecx
	movzbl	(%rax,%rdx), %edi
	andl	$15, %ecx
	andl	$-16, %edi
	orl	%edi, %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %esi
	jge	.L12008
	jmp	.L12005
.L12009:
	leal	(%r10,%r14), %edi
	andl	$16777215, %edi
	jmp	.L12205
.L12023:
	movq	(%rsp), %r8
	xorl	%edx, %edx
.L12030:
	movzbl	(%r8,%rdx), %ecx
	movzbl	(%rax,%rdx), %edi
	andl	$15, %ecx
	andl	$-16, %edi
	orl	%edi, %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %esi
	jge	.L12030
	jmp	.L12005
.L12208:
	cmpb	43192(%rbx,%rsi), %cl
	je	.L11957
.L12076:
	movzbl	%cl, %r8d
	jmp	.L11958
.L11965:
	movl	$2048, %r10d
	subl	%eax, %r10d
	movq	8(%rsp), %rax
	movl	1892(%rax), %eax
	testl	%eax, %eax
	je	.L11975
	leal	(%r10,%r14), %ecx
	leal	1(%rax), %esi
	movl	%ecx, %edi
	andl	$16777215, %edi
	movslq	%esi, %rsi
	movl	%edi, %eax
	shrl	$11, %eax
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %r9d
	cmpl	%r9d, 320(%rbx,%rsi,8)
	jne	.L12217
.L11976:
	movzbl	97(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L12218
.L11978:
	andl	$14680064, %ecx
	orl	2224(%rbx), %ecx
	cmpl	10424(%rdx), %ecx
	jne	.L11977
	testb	$4, 46264(%rbx,%rax)
	je	.L11977
	movl	%edi, %eax
	xorq	26808(%rdx), %rax
.L11979:
	movq	%r12, %rdx
.L11981:
	movzbl	(%rdx), %esi
	addq	$1, %rdx
	addq	$1, %r15
	movzbl	-1(%r15), %ecx
	andl	$15, %esi
	andl	$-16, %ecx
	orl	%esi, %ecx
	movb	%cl, -1(%rdx)
	movl	%edx, %ecx
	subl	%r12d, %ecx
	cmpl	%ecx, %r10d
	jg	.L11981
	movl	%ebp, %edi
	subl	%r10d, %edi
	js	.L11982
	leaq	16(%rdx), %rcx
	leal	1(%rdi), %r8d
	cmpq	%rcx, %rax
	leaq	16(%rax), %rcx
	setae	%sil
	cmpq	%rcx, %rdx
	setae	%cl
	orb	%cl, %sil
	je	.L11983
	cmpl	$15, %r8d
	jbe	.L11983
	movl	%r8d, %r10d
	movdqa	.LC9(%rip), %xmm3
	xorl	%ecx, %ecx
	shrl	$4, %r10d
	movdqa	.LC8(%rip), %xmm2
	xorl	%r9d, %r9d
	movl	%r10d, %esi
	sall	$4, %esi
.L11988:
	movdqu	(%rdx,%rcx), %xmm0
	addl	$1, %r9d
	movdqu	(%rax,%rcx), %xmm1
	pand	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movdqu	%xmm0, (%rdx,%rcx)
	addq	$16, %rcx
	cmpl	%r9d, %r10d
	ja	.L11988
	movl	%esi, %ecx
	addq	%rcx, %rdx
	addq	%rcx, %rax
	cmpl	%r8d, %esi
	je	.L11982
.L11987:
	movzbl	(%rdx), %ecx
	addl	$1, %esi
	addq	$1, %rdx
	movzbl	(%rax), %r8d
	addq	$1, %rax
	andl	$15, %ecx
	andl	$-16, %r8d
	orl	%r8d, %ecx
	movb	%cl, -1(%rdx)
	cmpl	%esi, %edi
	jge	.L11987
	jmp	.L11982
.L12211:
	addl	%r13d, %ebp
	cmpl	$79, %ebp
	jbe	.L11950
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	s370_fetch_int_timer
.L12217:
	.cfi_restore_state
	movzbl	44216(%rbx,%rax), %r8d
	testb	%r8b, 1976(%rbx,%rsi)
	jne	.L11976
.L12204:
	movzbl	97(%rbx), %r8d
.L11977:
	movl	40(%rsp), %esi
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r10d, 8(%rsp)
	movq	%r11, (%rsp)
	call	s370_logical_to_main_l
	movl	8(%rsp), %r10d
	movq	(%rsp), %r11
	jmp	.L11979
.L12218:
	cmpb	43192(%rbx,%rax), %r8b
	je	.L11978
	jmp	.L11977
.L12206:
	leal	(%r14,%rbp), %eax
	cmpl	$79, %eax
	jbe	.L11954
	movq	%rbx, %rdi
	call	s370_store_int_timer
	jmp	.L11954
.L11991:
	movl	24(%rsp), %eax
	movzbl	97(%rbx), %r8d
	leal	(%rax,%r13), %edi
	andl	$16777215, %edi
	jmp	.L11993
.L12213:
	cmpb	43192(%rbx,%rdx), %r8b
	je	.L11994
	jmp	.L11993
.L11975:
	leal	(%r10,%r14), %edi
	andl	$16777215, %edi
	jmp	.L12204
.L11983:
	xorl	%ecx, %ecx
.L11990:
	movzbl	(%rdx,%rcx), %esi
	movzbl	(%rax,%rcx), %r8d
	andl	$15, %esi
	andl	$-16, %r8d
	orl	%r8d, %esi
	movb	%sil, (%rdx,%rcx)
	addq	$1, %rcx
	cmpl	%ecx, %edi
	jge	.L11990
	jmp	.L11982
	.cfi_endproc
.LFE1116:
	.size	s370_move_zones, .-s370_move_zones
	.p2align 4,,15
	.globl	s370_multiply_register
	.type	s370_multiply_register, @function
s370_multiply_register:
.LFB1117:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movzbl	1(%rdi), %eax
	movb	$2, 130(%rsi)
	addq	$2, 136(%rsi)
	movzbl	%al, %ebp
	movl	%eax, %r12d
	sarl	$4, %ebp
	andl	$15, %r12d
	testb	$1, %bpl
	je	.L12220
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L12220:
	leal	1(%rbp), %eax
	movslq	%r12d, %r12
	movslq	%ebp, %rbp
	cltq
	movslq	192(%rbx,%r12,8), %rcx
	leaq	(%rbx,%rax,8), %rdx
	movslq	192(%rdx), %rax
	imulq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 192(%rbx,%rbp,8)
	movl	%eax, 192(%rdx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1117:
	.size	s370_multiply_register, .-s370_multiply_register
	.p2align 4,,15
	.globl	s370_multiply
	.type	s370_multiply, @function
s370_multiply:
.LFB1118:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %esi
	bswap	%esi
	movl	%esi, %eax
	movl	%esi, %edx
	shrl	$20, %eax
	shrl	$16, %edx
	movl	%esi, %ebp
	movl	%eax, %r13d
	andl	$4095, %ebp
	andl	$15, %r13d
	andl	$15, %edx
	jne	.L12262
.L12226:
	shrl	$12, %esi
	andl	$15, %esi
	movl	%esi, %r14d
	je	.L12227
	movslq	%esi, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L12227:
	movl	%ebp, %r12d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r12d
	testb	$1, %al
	je	.L12228
	movl	$6, %esi
	movq	%rbx, %rdi
	call	*2032(%rbx)
.L12228:
	testb	$3, %bpl
	jne	.L12263
.L12229:
	leal	-77(%r12), %eax
	cmpl	$6, %eax
	jbe	.L12264
.L12231:
	leal	5(%r14), %eax
	cltq
	movl	1892(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	.L12232
	leal	1(%rax), %ecx
	movl	%r12d, %eax
	shrl	$11, %eax
	movslq	%ecx, %rcx
	andl	$1023, %eax
	leaq	(%rbx,%rax,8), %rdx
	movl	2232(%rdx), %edi
	cmpl	%edi, 320(%rbx,%rcx,8)
	jne	.L12265
.L12233:
	movzbl	97(%rbx), %ecx
	testb	%cl, %cl
	jne	.L12266
.L12234:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L12232
	testb	$4, 46264(%rbx,%rax)
	je	.L12232
	movl	%r12d, %eax
	xorq	26808(%rdx), %rax
.L12235:
	movl	(%rax), %eax
	bswap	%eax
.L12236:
	leal	1(%r13), %edx
	cltq
	movslq	%r13d, %r13
	movslq	%edx, %rdx
	leaq	(%rbx,%rdx,8), %rcx
	movslq	192(%rcx), %rdx
	imulq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, 192(%rbx,%r13,8)
	movl	%edx, 192(%rcx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L12265:
	.cfi_restore_state
	movzbl	44216(%rbx,%rax), %esi
	testb	%sil, 1976(%rbx,%rcx)
	jne	.L12233
.L12232:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r12d, %edi
	call	s370_logical_to_main_l
	jmp	.L12235
.L12263:
	movl	%ebp, %eax
	andl	$2047, %eax
	cmpl	$2044, %eax
	jbe	.L12229
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r12d, %edi
	call	s370_vfetch4_full
	jmp	.L12236
.L12262:
	movslq	%edx, %rdx
	addl	192(%rbx,%rdx,8), %ebp
	jmp	.L12226
.L12266:
	cmpb	43192(%rbx,%rax), %cl
	je	.L12234
	jmp	.L12232
.L12264:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L12231
	.cfi_endproc
.LFE1118:
	.size	s370_multiply, .-s370_multiply
	.p2align 4,,15
	.globl	s370_multiply_halfword
	.type	s370_multiply_halfword, @function
s370_multiply_halfword:
.LFB1119:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L12300
.L12268:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L12269
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L12269:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$1, %bpl
	jne	.L12301
.L12270:
	leal	-79(%r13), %edx
	cmpl	$4, %edx
	jbe	.L12302
.L12272:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L12273
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L12303
.L12274:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L12304
.L12275:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L12273
	testb	$4, 46264(%rbx,%rcx)
	je	.L12273
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L12276:
	movzwl	(%rax), %eax
#APP
# 477 "vstore.h" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
.L12277:
	movslq	%r12d, %r12
	movswq	%ax, %rax
	leaq	(%rbx,%r12,8), %rcx
	movslq	192(%rcx), %rdx
	imulq	%rax, %rdx
	movl	%edx, 192(%rcx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L12303:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L12274
.L12273:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L12276
.L12301:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2047, %edx
	jne	.L12270
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch2_full
	jmp	.L12277
.L12300:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L12268
.L12304:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L12275
	jmp	.L12273
.L12302:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L12272
	.cfi_endproc
.LFE1119:
	.size	s370_multiply_halfword, .-s370_multiply_halfword
	.p2align 4,,15
	.globl	s370_multiply_halfword_immediate
	.type	s370_multiply_halfword_immediate, @function
s370_multiply_halfword_immediate:
.LFB1120:
	.cfi_startproc
	movl	(%rdi), %eax
	addq	$4, 136(%rsi)
	bswap	%eax
	movl	%eax, %edx
	cwtl
	shrl	$20, %edx
	andl	$15, %edx
	leaq	(%rsi,%rdx,8), %rdx
	imull	192(%rdx), %eax
	movl	%eax, 192(%rdx)
	ret
	.cfi_endproc
.LFE1120:
	.size	s370_multiply_halfword_immediate, .-s370_multiply_halfword_immediate
	.p2align 4,,15
	.globl	s370_multiply_single_register
	.type	s370_multiply_single_register, @function
s370_multiply_single_register:
.LFB1121:
	.cfi_startproc
	movzbl	3(%rdi), %ecx
	addq	$4, 136(%rsi)
	movq	%rcx, %rax
	andl	$15, %ecx
	shrq	%rax
	andl	$120, %eax
	leaq	(%rsi,%rax), %rdx
	movl	192(%rdx), %eax
	imull	192(%rsi,%rcx,8), %eax
	movl	%eax, 192(%rdx)
	ret
	.cfi_endproc
.LFE1121:
	.size	s370_multiply_single_register, .-s370_multiply_single_register
	.p2align 4,,15
	.globl	s370_multiply_single
	.type	s370_multiply_single, @function
s370_multiply_single:
.LFB1122:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %r12d
	movl	%eax, %edx
	shrl	$20, %r12d
	shrl	$16, %edx
	movl	%eax, %ebp
	andl	$15, %r12d
	andl	$4095, %ebp
	andl	$15, %edx
	jne	.L12340
.L12308:
	shrl	$12, %eax
	andl	$15, %eax
	movl	%eax, %r14d
	je	.L12309
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %ebp
.L12309:
	movl	%ebp, %r13d
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	andl	$16777215, %r13d
	testb	$3, %bpl
	jne	.L12341
.L12310:
	leal	-77(%r13), %edx
	cmpl	$6, %edx
	jbe	.L12342
.L12312:
	leal	5(%r14), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L12313
	leal	1(%rdx), %esi
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movslq	%esi, %rsi
	andl	$1023, %ecx
	leaq	(%rbx,%rcx,8), %rdx
	movl	2232(%rdx), %eax
	cmpl	%eax, 320(%rbx,%rsi,8)
	jne	.L12343
.L12314:
	movzbl	97(%rbx), %esi
	testb	%sil, %sil
	jne	.L12344
.L12315:
	andl	$14680064, %ebp
	orl	2224(%rbx), %ebp
	cmpl	10424(%rdx), %ebp
	jne	.L12313
	testb	$4, 46264(%rbx,%rcx)
	je	.L12313
	movl	%r13d, %eax
	xorq	26808(%rdx), %rax
.L12316:
	movl	(%rax), %eax
	bswap	%eax
.L12317:
	movslq	%r12d, %r12
	leaq	(%rbx,%r12,8), %rdx
	imull	192(%rdx), %eax
	movl	%eax, 192(%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L12343:
	.cfi_restore_state
	movzbl	44216(%rbx,%rcx), %edi
	testb	%dil, 1976(%rbx,%rsi)
	jne	.L12314
.L12313:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_logical_to_main_l
	jmp	.L12316
.L12341:
	movl	%ebp, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L12310
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	s370_vfetch4_full
	jmp	.L12317
.L12340:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %ebp
	jmp	.L12308
.L12344:
	cmpb	43192(%rbx,%rcx), %sil
	je	.L12315
	jmp	.L12313
.L12342:
	movq	%rbx, %rdi
	call	s370_store_int_timer
	.p2align 4,,5
	jmp	.L12312
	.cfi_endproc
.LFE1122:
	.size	s370_multiply_single, .-s370_multiply_single
	.p2align 4,,15
	.globl	s390_add_register
	.type	s390_add_register, @function
s390_add_register:
.LFB1169:
	.cfi_startproc
	movzbl	1(%rdi), %ecx
	movb	$2, 130(%rsi)
	movq	%rsi, %rax
	addq	$2, 136(%rsi)
	movq	%rcx, %rdx
	andl	$15, %ecx
	shrq	%rdx
	andl	$120, %edx
	addq	%rsi, %rdx
	movl	192(%rsi,%rcx,8), %esi
	movl	192(%rdx), %edi
	leal	(%rdi,%rsi), %ecx
	cmpl	$0, %ecx
	movl	%ecx, 192(%rdx)
	jle	.L12346
	shrl	$31, %esi
	testb	%sil, %sil
	jne	.L12358
.L12355:
	movl	$2, %edx
.L12349:
	movb	%dl, 100(%rax)
.L12345:
	rep ret
	.p2align 4,,10
	.p2align 3
.L12358:
	shrl	$31, %edi
	testb	%dil, %dil
	je	.L12355
.L12347:
	testb	$8, 101(%rax)
	movb	$3, 100(%rax)
	je	.L12345
	movq	2032(%rax), %rdx
	movl	$8, %esi
	movq	%rax, %rdi
	jmp	*%rdx
	.p2align 4,,10
	.p2align 3
.L12346:
	jne	.L12359
	shrl	$31, %esi
	testb	%sil, %sil
	je	.L12357
	shrl	$31, %edi
	testb	%dil, %dil
	jne	.L12347
.L12357:
	xorl	%edx, %edx
	jmp	.L12349
	.p2align 4,,10
	.p2align 3
.L12359:
	testl	%esi, %esi
	js	.L12356
	testl	%edi, %edi
	.p2align 4,,5
	jns	.L12347
.L12356:
	movl	$1, %edx
	.p2align 4,,2
	jmp	.L12349
	.cfi_endproc
.LFE1169:
	.size	s390_add_register, .-s390_add_register
	.p2align 4,,15
	.globl	s390_add
	.type	s390_add, @function
s390_add:
.LFB1170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	movl	%eax, %edx
	shrl	$20, %ebp
	shrl	$16, %edx
	movl	%eax, %edi
	andl	$15, %ebp
	andl	$4095, %edi
	andl	$15, %edx
	jne	.L12404
.L12361:
	shrl	$12, %eax
	andl	$15, %eax
	je	.L12362
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %edi
.L12362:
	andl	120(%rbx), %edi
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	testb	$3, %dil
	jne	.L12405
.L12363:
	leal	5(%rax), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L12365
	movl	%edi, %esi
	addl	$1, %edx
	shrl	$12, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdx,8)
	jne	.L12406
.L12366:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L12407
.L12367:
	movl	%edi, %edx
	andl	$2143289344, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L12365
	testb	$4, 46264(%rbx,%rsi)
	je	.L12365
	movl	%edi, %eax
	xorq	26808(%rcx), %rax
.L12368:
	movl	(%rax), %eax
	bswap	%eax
.L12369:
	movslq	%ebp, %rbp
	leaq	(%rbx,%rbp,8), %rcx
	movl	192(%rcx), %esi
	leal	(%rsi,%rax), %edx
	cmpl	$0, %edx
	movl	%edx, 192(%rcx)
	jle	.L12370
	shrl	$31, %eax
	testb	%al, %al
	jne	.L12408
.L12379:
	movl	$2, %eax
.L12373:
	movb	%al, 100(%rbx)
.L12360:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12408:
	.cfi_restore_state
	shrl	$31, %esi
	testb	%sil, %sil
	je	.L12379
.L12371:
	testb	$8, 101(%rbx)
	movb	$3, 100(%rbx)
	je	.L12360
	movq	2032(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	movl	$8, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L12370:
	.cfi_restore_state
	jne	.L12409
	shrl	$31, %eax
	testb	%al, %al
	je	.L12381
	shrl	$31, %esi
	testb	%sil, %sil
	jne	.L12371
.L12381:
	xorl	%eax, %eax
	jmp	.L12373
	.p2align 4,,10
	.p2align 3
.L12409:
	testl	%eax, %eax
	js	.L12380
	testl	%esi, %esi
	.p2align 4,,5
	jns	.L12371
.L12380:
	movl	$1, %eax
	.p2align 4,,2
	jmp	.L12373
.L12406:
	movzbl	44216(%rbx,%rsi), %r8d
	testb	%r8b, 1976(%rbx,%rdx)
	jne	.L12366
.L12365:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%eax, %esi
	call	s390_logical_to_main_l
	jmp	.L12368
.L12405:
	movl	%edi, %edx
	andl	$2047, %edx
	cmpl	$2044, %edx
	jbe	.L12363
	movq	%rbx, %rdx
	movl	%eax, %esi
	call	s390_vfetch4_full
	jmp	.L12369
.L12407:
	cmpb	43192(%rbx,%rsi), %dl
	je	.L12367
	.p2align 4,,4
	jmp	.L12365
.L12404:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %edi
	jmp	.L12361
	.cfi_endproc
.LFE1170:
	.size	s390_add, .-s390_add
	.p2align 4,,15
	.globl	s390_add_halfword
	.type	s390_add_halfword, @function
s390_add_halfword:
.LFB1171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	(%rdi), %eax
	bswap	%eax
	movl	%eax, %ebp
	movl	%eax, %edx
	shrl	$20, %ebp
	shrl	$16, %edx
	movl	%eax, %edi
	andl	$15, %ebp
	andl	$4095, %edi
	andl	$15, %edx
	jne	.L12454
.L12411:
	shrl	$12, %eax
	andl	$15, %eax
	je	.L12412
	movslq	%eax, %rdx
	addl	192(%rbx,%rdx,8), %edi
.L12412:
	andl	120(%rbx), %edi
	movb	$4, 130(%rbx)
	addq	$4, 136(%rbx)
	testb	$1, %dil
	jne	.L12455
.L12413:
	leal	5(%rax), %edx
	movslq	%edx, %rdx
	movl	1892(%rbx,%rdx,4), %edx
	testl	%edx, %edx
	je	.L12415
	movl	%edi, %esi
	addl	$1, %edx
	shrl	$12, %esi
	movslq	%edx, %rdx
	andl	$1023, %esi
	leaq	(%rbx,%rsi,8), %rcx
	movl	2232(%rcx), %r10d
	cmpl	%r10d, 320(%rbx,%rdx,8)
	jne	.L12456
.L12416:
	movzbl	97(%rbx), %edx
	testb	%dl, %dl
	jne	.L12457
.L12417:
	movl	%edi, %edx
	andl	$2143289344, %edx
	orl	2224(%rbx), %edx
	cmpl	10424(%rcx), %edx
	jne	.L12415
	testb	$4, 46264(%rbx,%rsi)
	je	.L12415
	movl	%edi, %eax
	xorq	26808(%rcx), %rax
.L12418:
	movzwl	(%rax), %eax
#APP
# 477 "vstore.h" 1
	rorw $8, %ax
# 0 "" 2
#NO_APP
.L12419:
	movslq	%ebp, %rbp
	cwtl
	leaq	(%rbx,%rbp,8), %rcx
	movl	192(%rcx), %esi
	leal	(%rsi,%rax), %edx
	cmpl	$0, %edx
	movl	%edx, 192(%rcx)
	jle	.L12420
	shrl	$31, %eax
	testb	%al, %al
	jne	.L12458
.L12429:
	movl	$2, %eax
.L12423:
	movb	%al, 100(%rbx)
.L12410:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12458:
	.cfi_restore_state
	shrl	$31, %esi
	testb	%sil, %sil
	je	.L12429
.L12421:
	testb	$8, 101(%rbx)
	movb	$3, 100(%rbx)
	je	.L12410
	movq	2032(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	movl	$8, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L12420:
	.cfi_restore_state
	jne	.L12459
	shrl	$31, %eax
	testb	%al, %al
	je	.L12431
	shrl	$31, %esi
	testb	%sil, %sil
	jne	.L12421
.L12431:
	xorl	%eax, %eax
	jmp	.L12423
	.p2align 4,,10
	.p2align 3
.L12459:
	testl	%eax, %eax
	js	.L12430
	testl	%esi, %esi
	.p2align 4,,5
	jns	.L12421
.L12430:
	movl	$1, %eax
	.p2align 4,,2
	jmp	.L12423
.L12456:
	movzbl	44216(%rbx,%rsi), %r8d
	testb	%r8b, 1976(%rbx,%rdx)
	jne	.L12416
.L12415:
	movzbl	97(%rbx), %r8d
	movl	$1, %r9d
	movl	$4, %ecx
	movq	%rbx, %rdx
	movl	%eax, %esi
	call	s390_logical_to_main_l
	jmp	.L12418
.L12455:
	movl	%edi, %edx
	andl	$2047, %edx
	cmpl	$2047, %edx
	jne	.L12413
	movq	%rbx, %rdx
	movl	%eax, %esi
	call	s390_vfetch2_full
	jmp	.L12419
.L12457:
	cmpb	43192(%rbx,%rsi), %dl
	je	.L12417
	.p2align 4,,4
	jmp	.L12415
.L12454:
	movslq	%edx, %rdx
	addl	192(%rsi,%rdx,8), %edi
	jmp	.L12411
	.cfi_endproc
.LFE1171:
	.size	s390_add_halfword, .-s390_add_halfword
	.p2align 4,,15
	.globl	s390_add_halfword_immediate
	.type	s390_add_halfword_immediate, @function
s390_add_halfword_immediate:
.LFB1172:
	.cfi_startproc
	movl	(%rdi), %edx
	movq	%rsi, %rax
	movb	$4, 130(%rsi)
	addq	$4, 136(%rsi)
	bswap	%edx
	movl	%edx, %ecx
	movswl	%dx, %edx
	shrl	$20, %ecx
	andl	$15, %ecx
	leaq	(%rsi,%rcx,8), %rsi
	movl	192(%rsi), %edi
	leal	(%rdi,%rdx), %ecx
	cmpl	$0, %ecx
	movl	%ecx, 192(%rsi)
	jle	.L12461
	shrl	$31, %edx
	testb	%dl, %dl
	jne	.L12473
.L12470:
	movl	$2, %edx
.L12464:
	movb	%dl, 100(%rax)
.L12460:
	rep ret
	.p2align 4,,10
	.p2align 3
.L12473:
	shrl	$31, %edi
	testb	%dil, %dil
	je	.L12470
.L12462:
	testb	$8, 101(%rax)
	movb	$3, 100(%rax)
	je	.L12460
	movq	2032(%rax), %rdx
	movl	$8, %esi
	movq	%rax, %rdi
	jmp	*%rdx
	.p2align 4,,10
	.p2align 3
.L12461:
	jne	.L12474
	shrl	$31, %edx
	testb	%dl, %dl
	je	.L12472
	shrl	$31, %edi
	testb	%dil, %dil
	jne	.L12462
.L12472:
	xorl	%edx, %edx
	jmp	.L12464
	.p2align 4,,10
	.p2align 3
.L12474:
	testl	%edx, %edx
	js	.L12471
	testl	%edi, %edi
	.p2align 4,,5
	jns	.L12462
.L12471:
	movl	$1, %edx
	.p2align 4,,2
	jmp	.L12464
	.cfi_endproc
.LFE1172:
	.size	s390_add_halfword_immediate, .-s390_add_halfword_immediate
	.p2align 4,,15
	.globl	s390_add_logical_register
	.type	s390_add_logical_register, @function
s390_add_logical_register:
.LFB1173:
	.cfi_startproc
	movzbl	1(%rdi), %edi
	addq	$2, 136(%rsi)
	movq	%rdi, %rax
	andl	$15, %edi
	shrq	%rax
	andl	$120, %eax
	leaq	(%rsi,%rax), %rcx
	movl	192(%rsi,%rdi,8), %eax
	movl	192(%rcx), %edx
	addl	%edx, %eax
	movl	%eax, 192(%rcx)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1173:
	.size	s390_add_logical_register, .-s390_add_logical_register
	.p2align 4,,15
	.globl	s390_1E00
	.type	s390_1E00, @function
s390_1E00:
.LFB1174:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1174:
	.size	s390_1E00, .-s390_1E00
	.p2align 4,,15
	.globl	s390_1E01
	.type	s390_1E01, @function
s390_1E01:
.LFB1175:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1175:
	.size	s390_1E01, .-s390_1E01
	.p2align 4,,15
	.globl	s390_1E02
	.type	s390_1E02, @function
s390_1E02:
.LFB1176:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1176:
	.size	s390_1E02, .-s390_1E02
	.p2align 4,,15
	.globl	s390_1E03
	.type	s390_1E03, @function
s390_1E03:
.LFB1177:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1177:
	.size	s390_1E03, .-s390_1E03
	.p2align 4,,15
	.globl	s390_1E04
	.type	s390_1E04, @function
s390_1E04:
.LFB1178:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1178:
	.size	s390_1E04, .-s390_1E04
	.p2align 4,,15
	.globl	s390_1E05
	.type	s390_1E05, @function
s390_1E05:
.LFB1179:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1179:
	.size	s390_1E05, .-s390_1E05
	.p2align 4,,15
	.globl	s390_1E06
	.type	s390_1E06, @function
s390_1E06:
.LFB1180:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1180:
	.size	s390_1E06, .-s390_1E06
	.p2align 4,,15
	.globl	s390_1E07
	.type	s390_1E07, @function
s390_1E07:
.LFB1181:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1181:
	.size	s390_1E07, .-s390_1E07
	.p2align 4,,15
	.globl	s390_1E08
	.type	s390_1E08, @function
s390_1E08:
.LFB1182:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1182:
	.size	s390_1E08, .-s390_1E08
	.p2align 4,,15
	.globl	s390_1E09
	.type	s390_1E09, @function
s390_1E09:
.LFB1183:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1183:
	.size	s390_1E09, .-s390_1E09
	.p2align 4,,15
	.globl	s390_1E0A
	.type	s390_1E0A, @function
s390_1E0A:
.LFB1184:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1184:
	.size	s390_1E0A, .-s390_1E0A
	.p2align 4,,15
	.globl	s390_1E0B
	.type	s390_1E0B, @function
s390_1E0B:
.LFB1185:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1185:
	.size	s390_1E0B, .-s390_1E0B
	.p2align 4,,15
	.globl	s390_1E0C
	.type	s390_1E0C, @function
s390_1E0C:
.LFB1186:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1186:
	.size	s390_1E0C, .-s390_1E0C
	.p2align 4,,15
	.globl	s390_1E0D
	.type	s390_1E0D, @function
s390_1E0D:
.LFB1187:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1187:
	.size	s390_1E0D, .-s390_1E0D
	.p2align 4,,15
	.globl	s390_1E0E
	.type	s390_1E0E, @function
s390_1E0E:
.LFB1188:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1188:
	.size	s390_1E0E, .-s390_1E0E
	.p2align 4,,15
	.globl	s390_1E0F
	.type	s390_1E0F, @function
s390_1E0F:
.LFB1189:
	.cfi_startproc
	movl	192(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 192(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1189:
	.size	s390_1E0F, .-s390_1E0F
	.p2align 4,,15
	.globl	s390_1E10
	.type	s390_1E10, @function
s390_1E10:
.LFB1190:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1190:
	.size	s390_1E10, .-s390_1E10
	.p2align 4,,15
	.globl	s390_1E11
	.type	s390_1E11, @function
s390_1E11:
.LFB1191:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1191:
	.size	s390_1E11, .-s390_1E11
	.p2align 4,,15
	.globl	s390_1E12
	.type	s390_1E12, @function
s390_1E12:
.LFB1192:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1192:
	.size	s390_1E12, .-s390_1E12
	.p2align 4,,15
	.globl	s390_1E13
	.type	s390_1E13, @function
s390_1E13:
.LFB1193:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1193:
	.size	s390_1E13, .-s390_1E13
	.p2align 4,,15
	.globl	s390_1E14
	.type	s390_1E14, @function
s390_1E14:
.LFB1194:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1194:
	.size	s390_1E14, .-s390_1E14
	.p2align 4,,15
	.globl	s390_1E15
	.type	s390_1E15, @function
s390_1E15:
.LFB1195:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1195:
	.size	s390_1E15, .-s390_1E15
	.p2align 4,,15
	.globl	s390_1E16
	.type	s390_1E16, @function
s390_1E16:
.LFB1196:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1196:
	.size	s390_1E16, .-s390_1E16
	.p2align 4,,15
	.globl	s390_1E17
	.type	s390_1E17, @function
s390_1E17:
.LFB1197:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1197:
	.size	s390_1E17, .-s390_1E17
	.p2align 4,,15
	.globl	s390_1E18
	.type	s390_1E18, @function
s390_1E18:
.LFB1198:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1198:
	.size	s390_1E18, .-s390_1E18
	.p2align 4,,15
	.globl	s390_1E19
	.type	s390_1E19, @function
s390_1E19:
.LFB1199:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1199:
	.size	s390_1E19, .-s390_1E19
	.p2align 4,,15
	.globl	s390_1E1A
	.type	s390_1E1A, @function
s390_1E1A:
.LFB1200:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1200:
	.size	s390_1E1A, .-s390_1E1A
	.p2align 4,,15
	.globl	s390_1E1B
	.type	s390_1E1B, @function
s390_1E1B:
.LFB1201:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1201:
	.size	s390_1E1B, .-s390_1E1B
	.p2align 4,,15
	.globl	s390_1E1C
	.type	s390_1E1C, @function
s390_1E1C:
.LFB1202:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1202:
	.size	s390_1E1C, .-s390_1E1C
	.p2align 4,,15
	.globl	s390_1E1D
	.type	s390_1E1D, @function
s390_1E1D:
.LFB1203:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1203:
	.size	s390_1E1D, .-s390_1E1D
	.p2align 4,,15
	.globl	s390_1E1E
	.type	s390_1E1E, @function
s390_1E1E:
.LFB1204:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1204:
	.size	s390_1E1E, .-s390_1E1E
	.p2align 4,,15
	.globl	s390_1E1F
	.type	s390_1E1F, @function
s390_1E1F:
.LFB1205:
	.cfi_startproc
	movl	200(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 200(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1205:
	.size	s390_1E1F, .-s390_1E1F
	.p2align 4,,15
	.globl	s390_1E20
	.type	s390_1E20, @function
s390_1E20:
.LFB1206:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1206:
	.size	s390_1E20, .-s390_1E20
	.p2align 4,,15
	.globl	s390_1E21
	.type	s390_1E21, @function
s390_1E21:
.LFB1207:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1207:
	.size	s390_1E21, .-s390_1E21
	.p2align 4,,15
	.globl	s390_1E22
	.type	s390_1E22, @function
s390_1E22:
.LFB1208:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1208:
	.size	s390_1E22, .-s390_1E22
	.p2align 4,,15
	.globl	s390_1E23
	.type	s390_1E23, @function
s390_1E23:
.LFB1209:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1209:
	.size	s390_1E23, .-s390_1E23
	.p2align 4,,15
	.globl	s390_1E24
	.type	s390_1E24, @function
s390_1E24:
.LFB1210:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1210:
	.size	s390_1E24, .-s390_1E24
	.p2align 4,,15
	.globl	s390_1E25
	.type	s390_1E25, @function
s390_1E25:
.LFB1211:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1211:
	.size	s390_1E25, .-s390_1E25
	.p2align 4,,15
	.globl	s390_1E26
	.type	s390_1E26, @function
s390_1E26:
.LFB1212:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1212:
	.size	s390_1E26, .-s390_1E26
	.p2align 4,,15
	.globl	s390_1E27
	.type	s390_1E27, @function
s390_1E27:
.LFB1213:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1213:
	.size	s390_1E27, .-s390_1E27
	.p2align 4,,15
	.globl	s390_1E28
	.type	s390_1E28, @function
s390_1E28:
.LFB1214:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1214:
	.size	s390_1E28, .-s390_1E28
	.p2align 4,,15
	.globl	s390_1E29
	.type	s390_1E29, @function
s390_1E29:
.LFB1215:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1215:
	.size	s390_1E29, .-s390_1E29
	.p2align 4,,15
	.globl	s390_1E2A
	.type	s390_1E2A, @function
s390_1E2A:
.LFB1216:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1216:
	.size	s390_1E2A, .-s390_1E2A
	.p2align 4,,15
	.globl	s390_1E2B
	.type	s390_1E2B, @function
s390_1E2B:
.LFB1217:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1217:
	.size	s390_1E2B, .-s390_1E2B
	.p2align 4,,15
	.globl	s390_1E2C
	.type	s390_1E2C, @function
s390_1E2C:
.LFB1218:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1218:
	.size	s390_1E2C, .-s390_1E2C
	.p2align 4,,15
	.globl	s390_1E2D
	.type	s390_1E2D, @function
s390_1E2D:
.LFB1219:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1219:
	.size	s390_1E2D, .-s390_1E2D
	.p2align 4,,15
	.globl	s390_1E2E
	.type	s390_1E2E, @function
s390_1E2E:
.LFB1220:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1220:
	.size	s390_1E2E, .-s390_1E2E
	.p2align 4,,15
	.globl	s390_1E2F
	.type	s390_1E2F, @function
s390_1E2F:
.LFB1221:
	.cfi_startproc
	movl	208(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 208(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1221:
	.size	s390_1E2F, .-s390_1E2F
	.p2align 4,,15
	.globl	s390_1E30
	.type	s390_1E30, @function
s390_1E30:
.LFB1222:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1222:
	.size	s390_1E30, .-s390_1E30
	.p2align 4,,15
	.globl	s390_1E31
	.type	s390_1E31, @function
s390_1E31:
.LFB1223:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1223:
	.size	s390_1E31, .-s390_1E31
	.p2align 4,,15
	.globl	s390_1E32
	.type	s390_1E32, @function
s390_1E32:
.LFB1224:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1224:
	.size	s390_1E32, .-s390_1E32
	.p2align 4,,15
	.globl	s390_1E33
	.type	s390_1E33, @function
s390_1E33:
.LFB1225:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1225:
	.size	s390_1E33, .-s390_1E33
	.p2align 4,,15
	.globl	s390_1E34
	.type	s390_1E34, @function
s390_1E34:
.LFB1226:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1226:
	.size	s390_1E34, .-s390_1E34
	.p2align 4,,15
	.globl	s390_1E35
	.type	s390_1E35, @function
s390_1E35:
.LFB1227:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1227:
	.size	s390_1E35, .-s390_1E35
	.p2align 4,,15
	.globl	s390_1E36
	.type	s390_1E36, @function
s390_1E36:
.LFB1228:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1228:
	.size	s390_1E36, .-s390_1E36
	.p2align 4,,15
	.globl	s390_1E37
	.type	s390_1E37, @function
s390_1E37:
.LFB1229:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1229:
	.size	s390_1E37, .-s390_1E37
	.p2align 4,,15
	.globl	s390_1E38
	.type	s390_1E38, @function
s390_1E38:
.LFB1230:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1230:
	.size	s390_1E38, .-s390_1E38
	.p2align 4,,15
	.globl	s390_1E39
	.type	s390_1E39, @function
s390_1E39:
.LFB1231:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1231:
	.size	s390_1E39, .-s390_1E39
	.p2align 4,,15
	.globl	s390_1E3A
	.type	s390_1E3A, @function
s390_1E3A:
.LFB1232:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1232:
	.size	s390_1E3A, .-s390_1E3A
	.p2align 4,,15
	.globl	s390_1E3B
	.type	s390_1E3B, @function
s390_1E3B:
.LFB1233:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1233:
	.size	s390_1E3B, .-s390_1E3B
	.p2align 4,,15
	.globl	s390_1E3C
	.type	s390_1E3C, @function
s390_1E3C:
.LFB1234:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1234:
	.size	s390_1E3C, .-s390_1E3C
	.p2align 4,,15
	.globl	s390_1E3D
	.type	s390_1E3D, @function
s390_1E3D:
.LFB1235:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1235:
	.size	s390_1E3D, .-s390_1E3D
	.p2align 4,,15
	.globl	s390_1E3E
	.type	s390_1E3E, @function
s390_1E3E:
.LFB1236:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1236:
	.size	s390_1E3E, .-s390_1E3E
	.p2align 4,,15
	.globl	s390_1E3F
	.type	s390_1E3F, @function
s390_1E3F:
.LFB1237:
	.cfi_startproc
	movl	216(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 216(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1237:
	.size	s390_1E3F, .-s390_1E3F
	.p2align 4,,15
	.globl	s390_1E40
	.type	s390_1E40, @function
s390_1E40:
.LFB1238:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1238:
	.size	s390_1E40, .-s390_1E40
	.p2align 4,,15
	.globl	s390_1E41
	.type	s390_1E41, @function
s390_1E41:
.LFB1239:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1239:
	.size	s390_1E41, .-s390_1E41
	.p2align 4,,15
	.globl	s390_1E42
	.type	s390_1E42, @function
s390_1E42:
.LFB1240:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1240:
	.size	s390_1E42, .-s390_1E42
	.p2align 4,,15
	.globl	s390_1E43
	.type	s390_1E43, @function
s390_1E43:
.LFB1241:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1241:
	.size	s390_1E43, .-s390_1E43
	.p2align 4,,15
	.globl	s390_1E44
	.type	s390_1E44, @function
s390_1E44:
.LFB1242:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1242:
	.size	s390_1E44, .-s390_1E44
	.p2align 4,,15
	.globl	s390_1E45
	.type	s390_1E45, @function
s390_1E45:
.LFB1243:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1243:
	.size	s390_1E45, .-s390_1E45
	.p2align 4,,15
	.globl	s390_1E46
	.type	s390_1E46, @function
s390_1E46:
.LFB1244:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1244:
	.size	s390_1E46, .-s390_1E46
	.p2align 4,,15
	.globl	s390_1E47
	.type	s390_1E47, @function
s390_1E47:
.LFB1245:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1245:
	.size	s390_1E47, .-s390_1E47
	.p2align 4,,15
	.globl	s390_1E48
	.type	s390_1E48, @function
s390_1E48:
.LFB1246:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1246:
	.size	s390_1E48, .-s390_1E48
	.p2align 4,,15
	.globl	s390_1E49
	.type	s390_1E49, @function
s390_1E49:
.LFB1247:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1247:
	.size	s390_1E49, .-s390_1E49
	.p2align 4,,15
	.globl	s390_1E4A
	.type	s390_1E4A, @function
s390_1E4A:
.LFB1248:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1248:
	.size	s390_1E4A, .-s390_1E4A
	.p2align 4,,15
	.globl	s390_1E4B
	.type	s390_1E4B, @function
s390_1E4B:
.LFB1249:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1249:
	.size	s390_1E4B, .-s390_1E4B
	.p2align 4,,15
	.globl	s390_1E4C
	.type	s390_1E4C, @function
s390_1E4C:
.LFB1250:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1250:
	.size	s390_1E4C, .-s390_1E4C
	.p2align 4,,15
	.globl	s390_1E4D
	.type	s390_1E4D, @function
s390_1E4D:
.LFB1251:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1251:
	.size	s390_1E4D, .-s390_1E4D
	.p2align 4,,15
	.globl	s390_1E4E
	.type	s390_1E4E, @function
s390_1E4E:
.LFB1252:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1252:
	.size	s390_1E4E, .-s390_1E4E
	.p2align 4,,15
	.globl	s390_1E4F
	.type	s390_1E4F, @function
s390_1E4F:
.LFB1253:
	.cfi_startproc
	movl	224(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 224(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1253:
	.size	s390_1E4F, .-s390_1E4F
	.p2align 4,,15
	.globl	s390_1E50
	.type	s390_1E50, @function
s390_1E50:
.LFB1254:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1254:
	.size	s390_1E50, .-s390_1E50
	.p2align 4,,15
	.globl	s390_1E51
	.type	s390_1E51, @function
s390_1E51:
.LFB1255:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1255:
	.size	s390_1E51, .-s390_1E51
	.p2align 4,,15
	.globl	s390_1E52
	.type	s390_1E52, @function
s390_1E52:
.LFB1256:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1256:
	.size	s390_1E52, .-s390_1E52
	.p2align 4,,15
	.globl	s390_1E53
	.type	s390_1E53, @function
s390_1E53:
.LFB1257:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1257:
	.size	s390_1E53, .-s390_1E53
	.p2align 4,,15
	.globl	s390_1E54
	.type	s390_1E54, @function
s390_1E54:
.LFB1258:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1258:
	.size	s390_1E54, .-s390_1E54
	.p2align 4,,15
	.globl	s390_1E55
	.type	s390_1E55, @function
s390_1E55:
.LFB1259:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1259:
	.size	s390_1E55, .-s390_1E55
	.p2align 4,,15
	.globl	s390_1E56
	.type	s390_1E56, @function
s390_1E56:
.LFB1260:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1260:
	.size	s390_1E56, .-s390_1E56
	.p2align 4,,15
	.globl	s390_1E57
	.type	s390_1E57, @function
s390_1E57:
.LFB1261:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1261:
	.size	s390_1E57, .-s390_1E57
	.p2align 4,,15
	.globl	s390_1E58
	.type	s390_1E58, @function
s390_1E58:
.LFB1262:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1262:
	.size	s390_1E58, .-s390_1E58
	.p2align 4,,15
	.globl	s390_1E59
	.type	s390_1E59, @function
s390_1E59:
.LFB1263:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1263:
	.size	s390_1E59, .-s390_1E59
	.p2align 4,,15
	.globl	s390_1E5A
	.type	s390_1E5A, @function
s390_1E5A:
.LFB1264:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1264:
	.size	s390_1E5A, .-s390_1E5A
	.p2align 4,,15
	.globl	s390_1E5B
	.type	s390_1E5B, @function
s390_1E5B:
.LFB1265:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1265:
	.size	s390_1E5B, .-s390_1E5B
	.p2align 4,,15
	.globl	s390_1E5C
	.type	s390_1E5C, @function
s390_1E5C:
.LFB1266:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1266:
	.size	s390_1E5C, .-s390_1E5C
	.p2align 4,,15
	.globl	s390_1E5D
	.type	s390_1E5D, @function
s390_1E5D:
.LFB1267:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1267:
	.size	s390_1E5D, .-s390_1E5D
	.p2align 4,,15
	.globl	s390_1E5E
	.type	s390_1E5E, @function
s390_1E5E:
.LFB1268:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1268:
	.size	s390_1E5E, .-s390_1E5E
	.p2align 4,,15
	.globl	s390_1E5F
	.type	s390_1E5F, @function
s390_1E5F:
.LFB1269:
	.cfi_startproc
	movl	232(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 232(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1269:
	.size	s390_1E5F, .-s390_1E5F
	.p2align 4,,15
	.globl	s390_1E60
	.type	s390_1E60, @function
s390_1E60:
.LFB1270:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1270:
	.size	s390_1E60, .-s390_1E60
	.p2align 4,,15
	.globl	s390_1E61
	.type	s390_1E61, @function
s390_1E61:
.LFB1271:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1271:
	.size	s390_1E61, .-s390_1E61
	.p2align 4,,15
	.globl	s390_1E62
	.type	s390_1E62, @function
s390_1E62:
.LFB1272:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1272:
	.size	s390_1E62, .-s390_1E62
	.p2align 4,,15
	.globl	s390_1E63
	.type	s390_1E63, @function
s390_1E63:
.LFB1273:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1273:
	.size	s390_1E63, .-s390_1E63
	.p2align 4,,15
	.globl	s390_1E64
	.type	s390_1E64, @function
s390_1E64:
.LFB1274:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1274:
	.size	s390_1E64, .-s390_1E64
	.p2align 4,,15
	.globl	s390_1E65
	.type	s390_1E65, @function
s390_1E65:
.LFB1275:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1275:
	.size	s390_1E65, .-s390_1E65
	.p2align 4,,15
	.globl	s390_1E66
	.type	s390_1E66, @function
s390_1E66:
.LFB1276:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1276:
	.size	s390_1E66, .-s390_1E66
	.p2align 4,,15
	.globl	s390_1E67
	.type	s390_1E67, @function
s390_1E67:
.LFB1277:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	248(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1277:
	.size	s390_1E67, .-s390_1E67
	.p2align 4,,15
	.globl	s390_1E68
	.type	s390_1E68, @function
s390_1E68:
.LFB1278:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	256(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1278:
	.size	s390_1E68, .-s390_1E68
	.p2align 4,,15
	.globl	s390_1E69
	.type	s390_1E69, @function
s390_1E69:
.LFB1279:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	264(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1279:
	.size	s390_1E69, .-s390_1E69
	.p2align 4,,15
	.globl	s390_1E6A
	.type	s390_1E6A, @function
s390_1E6A:
.LFB1280:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	272(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1280:
	.size	s390_1E6A, .-s390_1E6A
	.p2align 4,,15
	.globl	s390_1E6B
	.type	s390_1E6B, @function
s390_1E6B:
.LFB1281:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	280(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1281:
	.size	s390_1E6B, .-s390_1E6B
	.p2align 4,,15
	.globl	s390_1E6C
	.type	s390_1E6C, @function
s390_1E6C:
.LFB1282:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	288(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1282:
	.size	s390_1E6C, .-s390_1E6C
	.p2align 4,,15
	.globl	s390_1E6D
	.type	s390_1E6D, @function
s390_1E6D:
.LFB1283:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	296(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1283:
	.size	s390_1E6D, .-s390_1E6D
	.p2align 4,,15
	.globl	s390_1E6E
	.type	s390_1E6E, @function
s390_1E6E:
.LFB1284:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	304(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1284:
	.size	s390_1E6E, .-s390_1E6E
	.p2align 4,,15
	.globl	s390_1E6F
	.type	s390_1E6F, @function
s390_1E6F:
.LFB1285:
	.cfi_startproc
	movl	240(%rsi), %edx
	xorl	%ecx, %ecx
	movl	312(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 240(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1285:
	.size	s390_1E6F, .-s390_1E6F
	.p2align 4,,15
	.globl	s390_1E70
	.type	s390_1E70, @function
s390_1E70:
.LFB1286:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	192(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1286:
	.size	s390_1E70, .-s390_1E70
	.p2align 4,,15
	.globl	s390_1E71
	.type	s390_1E71, @function
s390_1E71:
.LFB1287:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	200(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1287:
	.size	s390_1E71, .-s390_1E71
	.p2align 4,,15
	.globl	s390_1E72
	.type	s390_1E72, @function
s390_1E72:
.LFB1288:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	208(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1288:
	.size	s390_1E72, .-s390_1E72
	.p2align 4,,15
	.globl	s390_1E73
	.type	s390_1E73, @function
s390_1E73:
.LFB1289:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	216(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1289:
	.size	s390_1E73, .-s390_1E73
	.p2align 4,,15
	.globl	s390_1E74
	.type	s390_1E74, @function
s390_1E74:
.LFB1290:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	224(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1290:
	.size	s390_1E74, .-s390_1E74
	.p2align 4,,15
	.globl	s390_1E75
	.type	s390_1E75, @function
s390_1E75:
.LFB1291:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	232(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1291:
	.size	s390_1E75, .-s390_1E75
	.p2align 4,,15
	.globl	s390_1E76
	.type	s390_1E76, @function
s390_1E76:
.LFB1292:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	movl	240(%rsi), %eax
	addq	$2, 136(%rsi)
	addl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	orl	%ecx, %eax
	movb	%al, 100(%rsi)
	ret
	.cfi_endproc
.LFE1292:
	.size	s390_1E76, .-s390_1E76
	.p2align 4,,15
	.globl	s390_1E77
	.type	s390_1E77, @function
s390_1E77:
.LFB1293:
	.cfi_startproc
	movl	248(%rsi), %edx
	xorl	%ecx, %ecx
	addq	$2, 136(%rsi)
	leal	(%rdx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 248(%rsi)
	setne	%cl
	cmpl	%edx, %eax
	sbbl	%eax, %eax
	