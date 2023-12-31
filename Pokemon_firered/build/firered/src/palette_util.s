@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	RouletteFlash_Reset
	.type	 RouletteFlash_Reset,function
	.thumb_func
RouletteFlash_Reset:
	push	{lr}
	mov	r1, #0x0
	strb	r1, [r0]
	strh	r1, [r0, #0x2]
	add	r0, r0, #0x4
	mov	r2, #0xc0
	bl	memset
	pop	{r0}
	bx	r0
.Lfe1:
	.size	 RouletteFlash_Reset,.Lfe1-RouletteFlash_Reset
	.align	2, 0
	.globl	RouletteFlash_Add
	.type	 RouletteFlash_Add,function
	.thumb_func
RouletteFlash_Add:
	push	{r4, r5, r6, r7, lr}
	add	r3, r0, #0
	lsl	r1, r1, #0x18
	lsr	r6, r1, #0x18
	cmp	r6, #0xf
	bhi	.L7	@cond_branch
	lsl	r0, r6, #0x1
	add	r0, r0, r6
	lsl	r0, r0, #0x2
	add	r5, r3, r0
	ldrb	r7, [r5, #0x4]
	lsr	r0, r7, #0x7
	cmp	r0, #0
	beq	.L6	@cond_branch
.L7:
	mov	r0, #0xff
	b	.L10
.L6:
	ldrh	r0, [r2]
	mov	r4, #0x0
	strh	r0, [r5, #0x8]
	ldrh	r0, [r2, #0x2]
	strh	r0, [r5, #0xa]
	ldrb	r0, [r2, #0x4]
	strb	r0, [r5, #0xc]
	ldrb	r0, [r2, #0x5]
	strb	r0, [r5, #0xd]
	ldrb	r0, [r2, #0x6]
	strb	r0, [r5, #0xe]
	ldrb	r3, [r2, #0x7]
	lsl	r0, r3, #0x1b
	lsr	r0, r0, #0x1b
	ldrb	r2, [r5, #0xf]
	mov	r1, #0x20
	neg	r1, r1
	and	r1, r1, r2
	orr	r1, r1, r0
	mov	r0, #0x60
	and	r0, r0, r3
	mov	r2, #0x61
	neg	r2, r2
	and	r1, r1, r2
	orr	r1, r1, r0
	lsl	r3, r3, #0x18
	asr	r3, r3, #0x1f
	lsl	r3, r3, #0x7
	mov	r0, #0x7f
	and	r1, r1, r0
	orr	r1, r1, r3
	strb	r1, [r5, #0xf]
	sub	r0, r0, #0xff
	and	r0, r0, r7
	mov	r2, #0x80
	orr	r0, r0, r2
	strb	r0, [r5, #0x4]
	strb	r4, [r5, #0x6]
	strb	r4, [r5, #0x5]
	lsl	r1, r1, #0x18
	cmp	r1, #0
	bge	.L8	@cond_branch
	mov	r0, #0xff
	b	.L11
.L8:
	mov	r0, #0x1
.L11:
	strb	r0, [r5, #0x7]
	add	r0, r6, #0
.L10:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 RouletteFlash_Add,.Lfe2-RouletteFlash_Add
	.align	2, 0
	.type	 RouletteFlash_Remove,function
	.thumb_func
RouletteFlash_Remove:
	push	{r4, lr}
	add	r2, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r4, r1, #0
	cmp	r4, #0xf
	bhi	.L14	@cond_branch
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	add	r1, r2, r0
	ldrb	r0, [r1, #0x4]
	lsr	r0, r0, #0x7
	cmp	r0, #0
	beq	.L14	@cond_branch
	add	r0, r1, #0x4
	mov	r1, #0x0
	mov	r2, #0xc
	bl	memset
	add	r0, r4, #0
	b	.L15
.L14:
	mov	r0, #0xff
.L15:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 RouletteFlash_Remove,.Lfe3-RouletteFlash_Remove
	.align	2, 0
	.type	 RouletteFlash_FadePalette,function
	.thumb_func
RouletteFlash_FadePalette:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r5, r0, #0
	mov	r0, #0x0
	mov	ip, r0
	ldrb	r1, [r5, #0x8]
	cmp	ip, r1
	bcc	.LCB174
	b	.L18	@long jump
.LCB174:
	mov	r7, #0x1f
	ldr	r0, .L45
	mov	sl, r0
	mov	r1, #0x7d
	neg	r1, r1
	mov	r9, r1
	mov	r0, #0x1f
	mov	r8, r0
.L20:
	ldrh	r0, [r5, #0x6]
	add	r0, r0, ip
	lsl	r0, r0, #0x1
	ldr	r1, .L45+0x4
	add	r3, r0, r1
	ldr	r1, .L45+0x8
	add	r6, r0, r1
	ldrb	r0, [r5]
	lsl	r0, r0, #0x19
	lsr	r0, r0, #0x19
	cmp	r0, #0x1
	beq	.L22	@cond_branch
	cmp	r0, #0x2
	beq	.L26	@cond_branch
	b	.L19
.L46:
	.align	2, 0
.L45:
	.word	-0x3e1
	.word	gPlttBufferFaded
	.word	gPlttBufferUnfaded
.L22:
	ldr	r0, [r3]
	lsl	r2, r0, #0x1b
	lsr	r0, r2, #0x1b
	mov	r1, #0x3
	ldrsb	r1, [r5, r1]
	add	r0, r0, r1
	cmp	r0, #0x1f
	bhi	.L23	@cond_branch
	lsr	r0, r2, #0x1b
	add	r0, r0, r1
	and	r0, r0, r7
	ldrb	r2, [r3]
	mov	r1, #0x20
	neg	r1, r1
	and	r1, r1, r2
	orr	r1, r1, r0
	strb	r1, [r3]
.L23:
	ldr	r0, [r3]
	lsl	r2, r0, #0x16
	lsr	r0, r2, #0x1b
	mov	r1, #0x3
	ldrsb	r1, [r5, r1]
	add	r0, r0, r1
	cmp	r0, #0x1f
	bhi	.L24	@cond_branch
	lsr	r0, r2, #0x1b
	add	r0, r0, r1
	mov	r1, r8
	and	r0, r0, r1
	lsl	r0, r0, #0x5
	ldrh	r2, [r3]
	mov	r1, sl
	and	r1, r1, r2
	orr	r1, r1, r0
	strh	r1, [r3]
.L24:
	ldr	r0, [r3]
	lsl	r2, r0, #0x11
	lsr	r0, r2, #0x1b
	mov	r1, #0x3
	ldrsb	r1, [r5, r1]
	add	r0, r0, r1
	cmp	r0, #0x1f
	bls	.LCB275
	b	.L19	@long jump
.LCB275:
	lsr	r0, r2, #0x1b
	add	r0, r0, r1
	b	.L42
.L26:
	mov	r0, #0x3
	ldrsb	r0, [r5, r0]
	cmp	r0, #0
	bge	.L27	@cond_branch
	ldr	r0, [r3]
	lsl	r4, r0, #0x1b
	lsr	r1, r4, #0x1b
	mov	r2, #0x3
	ldrsb	r2, [r5, r2]
	add	r1, r1, r2
	ldr	r0, [r6]
	lsl	r0, r0, #0x1b
	lsr	r0, r0, #0x1b
	cmp	r1, r0
	blt	.L28	@cond_branch
	lsr	r0, r4, #0x1b
	add	r0, r0, r2
	and	r0, r0, r7
	ldrb	r2, [r3]
	mov	r1, #0x20
	neg	r1, r1
	and	r1, r1, r2
	orr	r1, r1, r0
	strb	r1, [r3]
.L28:
	ldr	r0, [r3]
	lsl	r4, r0, #0x16
	lsr	r1, r4, #0x1b
	mov	r2, #0x3
	ldrsb	r2, [r5, r2]
	add	r1, r1, r2
	ldr	r0, [r6]
	lsl	r0, r0, #0x16
	lsr	r0, r0, #0x1b
	cmp	r1, r0
	blt	.L29	@cond_branch
	lsr	r0, r4, #0x1b
	add	r0, r0, r2
	mov	r1, r8
	and	r0, r0, r1
	lsl	r0, r0, #0x5
	ldrh	r2, [r3]
	mov	r1, sl
	and	r1, r1, r2
	orr	r1, r1, r0
	strh	r1, [r3]
.L29:
	ldr	r0, [r3]
	lsl	r4, r0, #0x11
	lsr	r1, r4, #0x1b
	mov	r2, #0x3
	ldrsb	r2, [r5, r2]
	add	r1, r1, r2
	ldr	r0, [r6]
	lsl	r0, r0, #0x11
	lsr	r0, r0, #0x1b
	cmp	r1, r0
	blt	.L19	@cond_branch
	b	.L43
.L27:
	ldr	r0, [r3]
	lsl	r4, r0, #0x1b
	lsr	r1, r4, #0x1b
	mov	r2, #0x3
	ldrsb	r2, [r5, r2]
	add	r1, r1, r2
	ldr	r0, [r6]
	lsl	r0, r0, #0x1b
	lsr	r0, r0, #0x1b
	cmp	r1, r0
	bgt	.L32	@cond_branch
	lsr	r0, r4, #0x1b
	add	r0, r0, r2
	and	r0, r0, r7
	ldrb	r2, [r3]
	mov	r1, #0x20
	neg	r1, r1
	and	r1, r1, r2
	orr	r1, r1, r0
	strb	r1, [r3]
.L32:
	ldr	r0, [r3]
	lsl	r4, r0, #0x16
	lsr	r1, r4, #0x1b
	mov	r2, #0x3
	ldrsb	r2, [r5, r2]
	add	r1, r1, r2
	ldr	r0, [r6]
	lsl	r0, r0, #0x16
	lsr	r0, r0, #0x1b
	cmp	r1, r0
	bgt	.L33	@cond_branch
	lsr	r0, r4, #0x1b
	add	r0, r0, r2
	mov	r1, r8
	and	r0, r0, r1
	lsl	r0, r0, #0x5
	ldrh	r2, [r3]
	mov	r1, sl
	and	r1, r1, r2
	orr	r1, r1, r0
	strh	r1, [r3]
.L33:
	ldr	r0, [r3]
	lsl	r4, r0, #0x11
	lsr	r1, r4, #0x1b
	mov	r2, #0x3
	ldrsb	r2, [r5, r2]
	add	r1, r1, r2
	ldr	r0, [r6]
	lsl	r0, r0, #0x11
	lsr	r0, r0, #0x1b
	cmp	r1, r0
	bgt	.L19	@cond_branch
.L43:
	lsr	r0, r4, #0x1b
	add	r0, r0, r2
.L42:
	and	r0, r0, r7
	lsl	r0, r0, #0x2
	ldrb	r2, [r3, #0x1]
	mov	r1, r9
	and	r1, r1, r2
	orr	r1, r1, r0
	strb	r1, [r3, #0x1]
.L19:
	mov	r0, ip
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	ip, r0
	ldrb	r0, [r5, #0x8]
	cmp	ip, r0
	bcs	.LCB456
	b	.L20	@long jump
.LCB456:
.L18:
	ldrb	r1, [r5, #0x2]
	add	r0, r1, #0x1
	strb	r0, [r5, #0x2]
	ldrb	r0, [r5, #0xb]
	lsl	r0, r0, #0x1b
	lsl	r1, r1, #0x18
	asr	r0, r0, #0x3
	cmp	r1, r0
	beq	.L38	@cond_branch
	mov	r0, #0x0
	b	.L39
.L38:
	mov	r0, #0x0
	strb	r0, [r5, #0x2]
	mov	r0, #0x3
	ldrsb	r0, [r5, r0]
	neg	r0, r0
	strb	r0, [r5, #0x3]
	ldrb	r2, [r5]
	mov	r1, #0x7f
	mov	r0, #0x7f
	and	r0, r0, r2
	cmp	r0, #0x1
	bne	.L40	@cond_branch
	lsl	r0, r2, #0x19
	lsr	r0, r0, #0x19
	add	r0, r0, #0x1
	b	.L44
.L40:
	lsl	r0, r2, #0x19
	lsr	r0, r0, #0x19
	sub	r0, r0, #0x1
.L44:
	and	r0, r0, r1
	mov	r1, #0x80
	neg	r1, r1
	and	r1, r1, r2
	orr	r1, r1, r0
	strb	r1, [r5]
	mov	r0, #0x1
.L39:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 RouletteFlash_FadePalette,.Lfe4-RouletteFlash_FadePalette
	.align	2, 0
	.type	 RouletteFlash_FlashPalette,function
	.thumb_func
RouletteFlash_FlashPalette:
	push	{r4, r5, lr}
	add	r3, r0, #0
	mov	r2, #0x0
	ldrb	r0, [r3]
	lsl	r0, r0, #0x19
	lsr	r0, r0, #0x19
	cmp	r0, #0x1
	beq	.L49	@cond_branch
	cmp	r0, #0x2
	beq	.L55	@cond_branch
	b	.L48
.L49:
	ldrb	r0, [r3, #0x8]
	cmp	r2, r0
	bcs	.L51	@cond_branch
	ldr	r4, .L64
.L53:
	ldrh	r0, [r3, #0x6]
	add	r0, r0, r2
	lsl	r0, r0, #0x1
	add	r0, r0, r4
	ldrh	r1, [r3, #0x4]
	strh	r1, [r0]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldrb	r0, [r3, #0x8]
	cmp	r2, r0
	bcc	.L53	@cond_branch
.L51:
	ldrb	r2, [r3]
	lsl	r1, r2, #0x19
	lsr	r1, r1, #0x19
	add	r1, r1, #0x1
	b	.L63
.L65:
	.align	2, 0
.L64:
	.word	gPlttBufferFaded
.L55:
	ldrb	r0, [r3, #0x8]
	cmp	r2, r0
	bcs	.L57	@cond_branch
	ldr	r5, .L66
	ldr	r4, .L66+0x4
.L59:
	ldrh	r0, [r3, #0x6]
	add	r0, r0, r2
	lsl	r0, r0, #0x1
	add	r1, r0, r5
	add	r0, r0, r4
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldrb	r0, [r3, #0x8]
	cmp	r2, r0
	bcc	.L59	@cond_branch
.L57:
	ldrb	r2, [r3]
	lsl	r1, r2, #0x19
	lsr	r1, r1, #0x19
	sub	r1, r1, #0x1
.L63:
	mov	r0, #0x7f
	and	r1, r1, r0
	mov	r0, #0x80
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3]
.L48:
	mov	r0, #0x1
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L67:
	.align	2, 0
.L66:
	.word	gPlttBufferFaded
	.word	gPlttBufferUnfaded
.Lfe5:
	.size	 RouletteFlash_FlashPalette,.Lfe5-RouletteFlash_FlashPalette
	.align	2, 0
	.globl	RouletteFlash_Run
	.type	 RouletteFlash_Run,function
	.thumb_func
RouletteFlash_Run:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	mov	r5, #0x0
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.L69	@cond_branch
.L73:
	ldrh	r0, [r4, #0x2]
	asr	r0, r0, r5
	mov	r1, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L72	@cond_branch
	lsl	r1, r5, #0x1
	add	r0, r1, r5
	lsl	r3, r0, #0x2
	add	r2, r4, r3
	ldrb	r0, [r2, #0x5]
	sub	r0, r0, #0x1
	strb	r0, [r2, #0x5]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r6, r1, #0
	cmp	r0, #0xff
	bne	.L72	@cond_branch
	ldrh	r0, [r2, #0x8]
	mov	r2, #0x80
	lsl	r2, r2, #0x8
	add	r1, r2, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L76	@cond_branch
	add	r0, r3, #0x4
	add	r0, r4, r0
	bl	RouletteFlash_FadePalette
	b	.L77
.L76:
	add	r0, r3, #0x4
	add	r0, r4, r0
	bl	RouletteFlash_FlashPalette
.L77:
	add	r0, r6, r5
	lsl	r0, r0, #0x2
	add	r0, r4, r0
	ldrb	r1, [r0, #0xd]
	strb	r1, [r0, #0x5]
.L72:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0xf
	bls	.L73	@cond_branch
.L69:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 RouletteFlash_Run,.Lfe6-RouletteFlash_Run
	.align	2, 0
	.globl	RouletteFlash_Enable
	.type	 RouletteFlash_Enable,function
	.thumb_func
RouletteFlash_Enable:
	push	{r4, r5, r6, r7, lr}
	add	r3, r0, #0
	lsl	r1, r1, #0x10
	lsr	r6, r1, #0x10
	mov	r4, #0x0
	ldrb	r0, [r3]
	add	r0, r0, #0x1
	strb	r0, [r3]
	mov	r5, #0x1
	mov	r7, #0x80
	neg	r7, r7
.L83:
	add	r0, r6, #0
	asr	r0, r0, r4
	and	r0, r0, r5
	cmp	r0, #0
	beq	.L82	@cond_branch
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	add	r2, r3, r0
	ldrb	r0, [r2, #0x4]
	lsr	r0, r0, #0x7
	cmp	r0, #0
	beq	.L82	@cond_branch
	add	r0, r5, #0
	lsl	r0, r0, r4
	ldrh	r1, [r3, #0x2]
	orr	r0, r0, r1
	strh	r0, [r3, #0x2]
	ldrb	r1, [r2, #0x4]
	add	r0, r7, #0
	and	r0, r0, r1
	orr	r0, r0, r5
	strb	r0, [r2, #0x4]
.L82:
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0xf
	bls	.L83	@cond_branch
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 RouletteFlash_Enable,.Lfe7-RouletteFlash_Enable
	.align	2, 0
	.globl	RouletteFlash_Stop
	.type	 RouletteFlash_Stop,function
	.thumb_func
RouletteFlash_Stop:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x4
	add	r6, r0, #0
	lsl	r1, r1, #0x10
	lsr	r7, r1, #0x10
	mov	r5, #0x0
	mov	r3, #0x1
.L91:
	ldrh	r0, [r6, #0x2]
	asr	r0, r0, r5
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L90	@cond_branch
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	add	r4, r6, r0
	ldrb	r0, [r4, #0x4]
	lsr	r0, r0, #0x7
	cmp	r0, #0
	beq	.L90	@cond_branch
	add	r0, r7, #0
	asr	r0, r0, r5
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L90	@cond_branch
	ldrh	r1, [r4, #0xa]
	lsl	r1, r1, #0x1
	ldr	r0, .L101
	add	r0, r1, r0
	ldr	r2, .L101+0x4
	add	r1, r1, r2
	ldrb	r2, [r4, #0xc]
	lsl	r2, r2, #0x1
	str	r3, [sp]
	bl	memcpy
	ldrb	r0, [r4, #0x4]
	mov	r2, #0x80
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r0, r1
	strb	r0, [r4, #0x4]
	mov	r0, #0x0
	strb	r0, [r4, #0x6]
	strb	r0, [r4, #0x5]
	ldrb	r0, [r4, #0xf]
	lsl	r0, r0, #0x18
	ldr	r3, [sp]
	cmp	r0, #0
	bge	.L95	@cond_branch
	mov	r0, #0xff
	strb	r0, [r4, #0x7]
	b	.L90
.L102:
	.align	2, 0
.L101:
	.word	gPlttBufferFaded
	.word	gPlttBufferUnfaded
.L95:
	strb	r3, [r4, #0x7]
.L90:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0xf
	bls	.L91	@cond_branch
	ldr	r0, .L103
	cmp	r7, r0
	bne	.L98	@cond_branch
	mov	r0, #0x0
	strb	r0, [r6]
	b	.L100
.L104:
	.align	2, 0
.L103:
	.word	0xffff
.L98:
	ldrh	r0, [r6, #0x2]
	bic	r0, r0, r7
.L100:
	strh	r0, [r6, #0x2]
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 RouletteFlash_Stop,.Lfe8-RouletteFlash_Stop
	.align	2, 0
	.globl	InitPulseBlend
	.type	 InitPulseBlend,function
	.thumb_func
InitPulseBlend:
	push	{r4, r5, lr}
	add	r5, r0, #0
	mov	r4, #0x0
	strh	r4, [r5]
	add	r0, r5, #0x4
	mov	r1, #0x0
	mov	r2, #0xc0
	bl	memset
.L109:
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	add	r0, r5, r0
	strb	r4, [r0, #0x4]
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0xf
	bls	.L109	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 InitPulseBlend,.Lfe9-InitPulseBlend
	.align	2, 0
	.globl	InitPulseBlendPaletteSettings
	.type	 InitPulseBlendPaletteSettings,function
	.thumb_func
InitPulseBlendPaletteSettings:
	push	{r4, r5, lr}
	add	r2, r0, #0
	add	r5, r1, #0
	mov	r3, #0x0
	mov	r4, #0x0
	ldrb	r0, [r2, #0x5]
	lsr	r0, r0, #0x7
	cmp	r0, #0
	bne	.L114	@cond_branch
	add	r4, r2, #0x4
	b	.L113
.L114:
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	cmp	r3, #0xf
	bhi	.L113	@cond_branch
	lsl	r0, r3, #0x1
	add	r0, r0, r3
	lsl	r1, r0, #0x2
	add	r0, r2, r1
	ldrb	r0, [r0, #0x5]
	lsr	r0, r0, #0x7
	cmp	r0, #0
	bne	.L114	@cond_branch
	add	r0, r1, #0x4
	add	r4, r2, r0
.L113:
	cmp	r4, #0
	beq	.L119	@cond_branch
	ldrb	r1, [r4, #0x1]
	mov	r0, #0x10
	neg	r0, r0
	and	r0, r0, r1
	mov	r1, #0x11
	neg	r1, r1
	and	r0, r0, r1
	mov	r1, #0x40
	orr	r0, r0, r1
	mov	r1, #0x80
	orr	r0, r0, r1
	strb	r0, [r4, #0x1]
	mov	r0, #0x0
	strb	r0, [r4, #0x2]
	strb	r0, [r4, #0x3]
	add	r1, r4, #0x4
	add	r0, r5, #0
	ldmia	r0!, {r2, r4}
	stmia	r1!, {r2, r4}
	add	r0, r3, #0
	b	.L120
.L119:
	mov	r0, #0xff
.L120:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe10:
	.size	 InitPulseBlendPaletteSettings,.Lfe10-InitPulseBlendPaletteSettings
	.align	2, 0
	.type	 ClearPulseBlendPalettesSettings,function
	.thumb_func
ClearPulseBlendPalettesSettings:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldrb	r1, [r4, #0x1]
	mov	r2, #0x40
	add	r0, r2, #0
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L122	@cond_branch
	ldrb	r1, [r4, #0xb]
	add	r0, r2, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L122	@cond_branch
	ldrh	r2, [r4, #0x6]
	ldrb	r0, [r4, #0x8]
	add	r0, r2, r0
	cmp	r2, r0
	bge	.L122	@cond_branch
	ldr	r5, .L128
	ldr	r3, .L128+0x4
.L126:
	lsl	r0, r2, #0x1
	add	r1, r0, r5
	add	r0, r0, r3
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	ldrh	r0, [r4, #0x6]
	ldrb	r1, [r4, #0x8]
	add	r0, r0, r1
	cmp	r2, r0
	blt	.L126	@cond_branch
.L122:
	add	r0, r4, #0x4
	mov	r1, #0x0
	mov	r2, #0x8
	bl	memset
	ldrb	r1, [r4, #0x1]
	mov	r0, #0x10
	neg	r0, r0
	and	r0, r0, r1
	mov	r1, #0x11
	neg	r1, r1
	and	r0, r0, r1
	sub	r1, r1, #0x10
	and	r0, r0, r1
	mov	r1, #0x40
	orr	r0, r0, r1
	mov	r1, #0x7f
	and	r0, r0, r1
	strb	r0, [r4, #0x1]
	mov	r0, #0x0
	strb	r0, [r4, #0x3]
	strb	r0, [r4, #0x2]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L129:
	.align	2, 0
.L128:
	.word	gPlttBufferFaded
	.word	gPlttBufferUnfaded
.Lfe11:
	.size	 ClearPulseBlendPalettesSettings,.Lfe11-ClearPulseBlendPalettesSettings
	.align	2, 0
	.globl	UnloadUsedPulseBlendPalettes
	.type	 UnloadUsedPulseBlendPalettes,function
	.thumb_func
UnloadUsedPulseBlendPalettes:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	lsl	r1, r1, #0x10
	lsr	r4, r1, #0x10
	lsl	r2, r2, #0x18
	mov	r5, #0x0
	cmp	r2, #0
	bne	.L136	@cond_branch
	mov	r1, #0xf
	and	r1, r1, r4
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, #0x4
	add	r0, r6, r0
	bl	ClearPulseBlendPalettesSettings
	b	.L132
.L136:
	mov	r0, #0x1
	and	r0, r0, r4
	cmp	r0, #0
	beq	.L137	@cond_branch
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r1, r0, #0x2
	add	r0, r6, r1
	ldrb	r0, [r0, #0x5]
	lsr	r0, r0, #0x7
	cmp	r0, #0
	beq	.L137	@cond_branch
	add	r0, r1, #0x4
	add	r0, r6, r0
	bl	ClearPulseBlendPalettesSettings
.L137:
	lsr	r4, r4, #0x1
	add	r0, r5, #0x1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	cmp	r5, #0xf
	bls	.L136	@cond_branch
.L132:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe12:
	.size	 UnloadUsedPulseBlendPalettes,.Lfe12-UnloadUsedPulseBlendPalettes
	.align	2, 0
	.globl	MarkUsedPulseBlendPalettes
	.type	 MarkUsedPulseBlendPalettes,function
	.thumb_func
MarkUsedPulseBlendPalettes:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	lsl	r1, r1, #0x10
	lsr	r4, r1, #0x10
	lsl	r2, r2, #0x18
	mov	r3, #0x0
	cmp	r2, #0
	bne	.L140	@cond_branch
	mov	r0, #0xf
	add	r3, r0, #0
	and	r3, r3, r4
	lsl	r1, r3, #0x1
	add	r1, r1, r3
	lsl	r1, r1, #0x2
	add	r1, r5, r1
	ldrb	r2, [r1, #0x5]
	mov	r0, #0x41
	neg	r0, r0
	and	r0, r0, r2
	strb	r0, [r1, #0x5]
	mov	r0, #0x1
	lsl	r0, r0, r3
	ldrh	r1, [r5]
	orr	r0, r0, r1
	strh	r0, [r5]
	b	.L141
.L140:
	mov	r6, #0x1
	mov	r7, #0x41
	neg	r7, r7
.L145:
	add	r0, r4, #0
	and	r0, r0, r6
	cmp	r0, #0
	beq	.L147	@cond_branch
	lsl	r0, r3, #0x1
	add	r0, r0, r3
	lsl	r0, r0, #0x2
	add	r2, r5, r0
	ldrb	r1, [r2, #0x5]
	lsr	r0, r1, #0x7
	cmp	r0, #0
	beq	.L147	@cond_branch
	lsl	r0, r1, #0x19
	cmp	r0, #0
	blt	.L146	@cond_branch
.L147:
	lsl	r0, r4, #0x11
	lsr	r4, r0, #0x10
	b	.L144
.L146:
	add	r0, r7, #0
	and	r0, r0, r1
	strb	r0, [r2, #0x5]
	add	r0, r6, #0
	lsl	r0, r0, r3
	ldrh	r1, [r5]
	orr	r0, r0, r1
	strh	r0, [r5]
.L144:
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	cmp	r3, #0xf
	bls	.L145	@cond_branch
.L141:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe13:
	.size	 MarkUsedPulseBlendPalettes,.Lfe13-MarkUsedPulseBlendPalettes
	.align	2, 0
	.globl	UnmarkUsedPulseBlendPalettes
	.type	 UnmarkUsedPulseBlendPalettes,function
	.thumb_func
UnmarkUsedPulseBlendPalettes:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r0
	lsl	r1, r1, #0x10
	lsr	r7, r1, #0x10
	lsl	r2, r2, #0x18
	mov	r0, #0x0
	mov	ip, r0
	cmp	r2, #0
	bne	.L151	@cond_branch
	mov	r1, #0xf
	and	r1, r1, r7
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, #0x4
	mov	r1, r8
	add	r3, r1, r0
	ldrb	r1, [r3, #0x1]
	mov	r0, #0xc0
	and	r0, r0, r1
	cmp	r0, #0x80
	bne	.L159	@cond_branch
	ldrb	r1, [r3, #0xb]
	mov	r0, #0x40
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L153	@cond_branch
	ldrh	r2, [r3, #0x6]
	ldrb	r0, [r3, #0x8]
	add	r0, r2, r0
	cmp	r2, r0
	bge	.L153	@cond_branch
	ldr	r5, .L174
	ldr	r4, .L174+0x4
.L157:
	lsl	r0, r2, #0x1
	add	r1, r0, r5
	add	r0, r0, r4
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	ldrh	r0, [r3, #0x6]
	ldrb	r1, [r3, #0x8]
	add	r0, r0, r1
	cmp	r2, r0
	blt	.L157	@cond_branch
.L153:
	ldrb	r0, [r3, #0x1]
	mov	r1, #0x40
	orr	r0, r0, r1
	strb	r0, [r3, #0x1]
	mov	r1, #0x1
	mov	r2, ip
	lsl	r1, r1, r2
	mov	r2, r8
	ldrh	r0, [r2]
	bic	r0, r0, r1
	strh	r0, [r2]
	b	.L159
.L175:
	.align	2, 0
.L174:
	.word	gPlttBufferFaded
	.word	gPlttBufferUnfaded
.L151:
	mov	r0, #0x1
	mov	r9, r0
	mov	r1, #0x40
	mov	sl, r1
.L163:
	mov	r2, ip
	lsl	r0, r2, #0x1
	add	r0, r0, ip
	lsl	r0, r0, #0x2
	add	r0, r0, #0x4
	mov	r1, r8
	add	r3, r1, r0
	add	r0, r7, #0
	mov	r2, r9
	and	r0, r0, r2
	cmp	r0, #0
	beq	.L165	@cond_branch
	ldrb	r1, [r3, #0x1]
	mov	r0, #0xc0
	and	r0, r0, r1
	cmp	r0, #0x80
	beq	.L164	@cond_branch
.L165:
	lsl	r0, r7, #0x11
	lsr	r7, r0, #0x10
	mov	r5, ip
	add	r5, r5, #0x1
	b	.L162
.L164:
	ldrb	r1, [r3, #0xb]
	mov	r0, sl
	and	r0, r0, r1
	mov	r5, ip
	add	r5, r5, #0x1
	cmp	r0, #0
	beq	.L167	@cond_branch
	ldrh	r2, [r3, #0x6]
	ldrb	r0, [r3, #0x8]
	add	r0, r2, r0
	cmp	r2, r0
	bge	.L167	@cond_branch
	ldr	r6, .L176
	ldr	r4, .L176+0x4
.L171:
	lsl	r0, r2, #0x1
	add	r1, r0, r6
	add	r0, r0, r4
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	ldrh	r0, [r3, #0x6]
	ldrb	r1, [r3, #0x8]
	add	r0, r0, r1
	cmp	r2, r0
	blt	.L171	@cond_branch
.L167:
	ldrb	r1, [r3, #0x1]
	mov	r0, sl
	orr	r0, r0, r1
	strb	r0, [r3, #0x1]
	mov	r1, r9
	mov	r0, ip
	lsl	r1, r1, r0
	mov	r2, r8
	ldrh	r0, [r2]
	bic	r0, r0, r1
	strh	r0, [r2]
.L162:
	lsl	r0, r5, #0x18
	lsr	r0, r0, #0x18
	mov	ip, r0
	cmp	r0, #0xf
	bls	.L163	@cond_branch
.L159:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L177:
	.align	2, 0
.L176:
	.word	gPlttBufferFaded
	.word	gPlttBufferUnfaded
.Lfe14:
	.size	 UnmarkUsedPulseBlendPalettes,.Lfe14-UnmarkUsedPulseBlendPalettes
	.align	2, 0
	.globl	UpdatePulseBlend
	.type	 UpdatePulseBlend,function
	.thumb_func
UpdatePulseBlend:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	str	r0, [sp]
	mov	r0, #0x0
	mov	sl, r0
	ldr	r1, [sp]
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	.LCB1525
	b	.L179	@long jump
.LCB1525:
	mov	r2, #0xf
	mov	r9, r2
	mov	r3, #0x10
	neg	r3, r3
	mov	r8, r3
	mov	r7, #0x1
.L183:
	mov	r5, sl
	lsl	r0, r5, #0x1
	add	r0, r0, sl
	lsl	r0, r0, #0x2
	add	r0, r0, #0x4
	ldr	r1, [sp]
	add	r4, r1, r0
	ldrb	r2, [r4, #0x1]
	mov	r3, #0xc0
	and	r3, r3, r2
	cmp	r3, #0x80
	beq	.LCB1551
	b	.L182	@long jump
.LCB1551:
	ldr	r0, .L204
	ldrb	r1, [r0, #0x7]
	add	r0, r3, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L185	@cond_branch
	ldrb	r0, [r4, #0xb]
	and	r3, r3, r0
	cmp	r3, #0
	beq	.LCB1565
	b	.L182	@long jump
.LCB1565:
.L185:
	ldrb	r0, [r4, #0x2]
	sub	r0, r0, #0x1
	strb	r0, [r4, #0x2]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xff
	beq	.LCB1576
	b	.L182	@long jump
.LCB1576:
	ldrb	r0, [r4, #0x9]
	strb	r0, [r4, #0x2]
	ldrh	r0, [r4, #0x6]
	ldrb	r1, [r4, #0x8]
	lsl	r2, r2, #0x1c
	lsr	r2, r2, #0x1c
	ldrh	r3, [r4, #0x4]
	bl	BlendPalette
	ldrb	r5, [r4, #0xb]
	lsl	r0, r5, #0x1a
	asr	r0, r0, #0x1e
	cmp	r0, #0x1
	beq	.L190	@cond_branch
	cmp	r0, #0x1
	bgt	.L200	@cond_branch
	cmp	r0, #0
	beq	.L188	@cond_branch
	b	.L187
.L205:
	.align	2, 0
.L204:
	.word	gPaletteFade
.L200:
	cmp	r0, #0x2
	beq	.L195	@cond_branch
	b	.L187
.L188:
	ldrb	r2, [r4, #0x1]
	lsl	r1, r2, #0x1c
	lsr	r0, r1, #0x1c
	add	r0, r0, #0x1
	mov	r3, r9
	and	r0, r0, r3
	mov	r6, r8
	add	r3, r6, #0
	and	r3, r3, r2
	orr	r3, r3, r0
	strb	r3, [r4, #0x1]
	lsr	r1, r1, #0x1c
	lsl	r0, r5, #0x1c
	asr	r0, r0, #0x1c
	cmp	r1, r0
	bne	.L187	@cond_branch
	ldrb	r0, [r4, #0x3]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x3]
	and	r3, r3, r6
	strb	r3, [r4, #0x1]
	b	.L187
.L190:
	ldrb	r3, [r4, #0x1]
	mov	r0, #0x10
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L191	@cond_branch
	lsl	r0, r3, #0x1c
	lsr	r0, r0, #0x1c
	sub	r0, r0, #0x1
	mov	r5, r9
	and	r0, r0, r5
	mov	r2, r8
	and	r2, r2, r3
	orr	r2, r2, r0
	strb	r2, [r4, #0x1]
	cmp	r0, #0
	bne	.L187	@cond_branch
	ldrb	r0, [r4, #0x3]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x3]
	lsl	r0, r2, #0x1b
	lsr	r0, r0, #0x1f
	eor	r0, r0, r7
	and	r0, r0, r7
	lsl	r0, r0, #0x4
	mov	r3, #0x11
	neg	r3, r3
	add	r1, r3, #0
	and	r2, r2, r1
	orr	r2, r2, r0
	strb	r2, [r4, #0x1]
	b	.L187
.L191:
	lsl	r0, r5, #0x1c
	asr	r0, r0, #0x1c
	sub	r0, r0, #0x1
	mov	r5, r9
	and	r0, r0, r5
	lsl	r2, r3, #0x1c
	lsr	r1, r2, #0x1c
	add	r1, r1, #0x1
	and	r1, r1, r5
	mov	r5, r8
	and	r3, r3, r5
	orr	r3, r3, r1
	strb	r3, [r4, #0x1]
	lsr	r2, r2, #0x1c
	cmp	r2, r0
	bne	.L187	@cond_branch
	ldrb	r0, [r4, #0x3]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x3]
	lsl	r0, r3, #0x1b
	lsr	r0, r0, #0x1f
	eor	r0, r0, r7
	and	r0, r0, r7
	lsl	r0, r0, #0x4
	mov	r2, #0x11
	neg	r2, r2
	add	r1, r2, #0
	and	r3, r3, r1
	orr	r3, r3, r0
	strb	r3, [r4, #0x1]
	b	.L187
.L195:
	ldrb	r2, [r4, #0x1]
	mov	r0, #0x10
	and	r0, r0, r2
	cmp	r0, #0
	beq	.L196	@cond_branch
	mov	r0, r8
	and	r0, r0, r2
	b	.L203
.L196:
	lsl	r1, r5, #0x1c
	asr	r1, r1, #0x1c
	mov	r3, r9
	and	r1, r1, r3
	mov	r0, r8
	and	r0, r0, r2
	orr	r0, r0, r1
.L203:
	strb	r0, [r4, #0x1]
	ldrb	r2, [r4, #0x1]
	lsl	r0, r2, #0x1b
	lsr	r0, r0, #0x1f
	eor	r0, r0, r7
	and	r0, r0, r7
	lsl	r0, r0, #0x4
	mov	r5, #0x11
	neg	r5, r5
	add	r1, r5, #0
	and	r2, r2, r1
	orr	r2, r2, r0
	strb	r2, [r4, #0x1]
	ldrb	r0, [r4, #0x3]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x3]
.L187:
	ldrb	r1, [r4, #0xa]
	cmp	r1, #0xff
	beq	.L182	@cond_branch
	ldrb	r0, [r4, #0x3]
	cmp	r0, r1
	bne	.L182	@cond_branch
	ldrb	r1, [r4]
	ldr	r0, [sp]
	mov	r2, #0x0
	bl	UnmarkUsedPulseBlendPalettes
.L182:
	mov	r0, sl
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	sl, r0
	cmp	r0, #0xf
	bhi	.LCB1798
	b	.L183	@long jump
.LCB1798:
.L179:
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe15:
	.size	 UpdatePulseBlend,.Lfe15-UpdatePulseBlend
	.align	2, 0
	.globl	FillTilemapRect
	.type	 FillTilemapRect,function
	.thumb_func
FillTilemapRect:
	push	{r4, r5, r6, r7, lr}
	add	r6, r0, #0
	ldr	r0, [sp, #0x14]
	ldr	r4, [sp, #0x18]
	lsl	r1, r1, #0x10
	lsr	r7, r1, #0x10
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r1, #0x0
	lsr	r3, r3, #0x13
	add	r3, r3, r2
	lsl	r3, r3, #0x1
	add	r6, r6, r3
	cmp	r1, r4
	bcs	.L208	@cond_branch
.L210:
	lsl	r0, r1, #0x6
	add	r2, r6, r0
	mov	r0, #0x0
	add	r3, r1, #0x1
	cmp	r0, r5
	bcs	.L209	@cond_branch
.L214:
	strh	r7, [r2]
	add	r2, r2, #0x2
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, r5
	bcc	.L214	@cond_branch
.L209:
	lsl	r0, r3, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, r4
	bcc	.L210	@cond_branch
.L208:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe16:
	.size	 FillTilemapRect,.Lfe16-FillTilemapRect
	.align	2, 0
	.globl	SetTilemapRect
	.type	 SetTilemapRect,function
	.thumb_func
SetTilemapRect:
	push	{r4, r5, r6, r7, lr}
	add	r7, r0, #0
	ldr	r0, [sp, #0x14]
	ldr	r4, [sp, #0x18]
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	lsl	r4, r4, #0x18
	lsr	r6, r4, #0x18
	mov	r4, #0x0
	lsr	r3, r3, #0x13
	add	r3, r3, r2
	lsl	r3, r3, #0x1
	add	r7, r7, r3
	cmp	r4, r6
	bcs	.L219	@cond_branch
.L221:
	lsl	r0, r4, #0x6
	add	r2, r7, r0
	mov	r3, #0x0
	add	r4, r4, #0x1
	cmp	r3, r5
	bcs	.L220	@cond_branch
.L225:
	ldrh	r0, [r1]
	strh	r0, [r2]
	add	r1, r1, #0x2
	add	r2, r2, #0x2
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	cmp	r3, r5
	bcc	.L225	@cond_branch
.L220:
	lsl	r0, r4, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, r6
	bcc	.L221	@cond_branch
.L219:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe17:
	.size	 SetTilemapRect,.Lfe17-SetTilemapRect
.text
	.align	2, 0 @ Don't pad with nop

