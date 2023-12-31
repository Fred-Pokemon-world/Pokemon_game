@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	MultiBootInit
	.type	 MultiBootInit,function
	.thumb_func
MultiBootInit:
	add	r2, r0, #0
	mov	r1, #0x0
	strb	r1, [r2, #0x1e]
	strb	r1, [r2, #0x18]
	strb	r1, [r2, #0x1d]
	add	r3, r2, #0
	add	r3, r3, #0x4a
	mov	r0, #0xf
	strb	r0, [r3]
	add	r0, r2, #0
	add	r0, r0, #0x48
	strb	r1, [r0]
	strh	r1, [r2, #0x16]
	ldr	r0, .L3
	strh	r1, [r0]
	ldr	r2, .L3+0x4
	ldr	r3, .L3+0x8
	add	r0, r3, #0
	strh	r0, [r2]
	ldr	r0, .L3+0xc
	strh	r1, [r0]
	bx	lr
.L4:
	.align	2, 0
.L3:
	.word	0x4000134
	.word	0x4000128
	.word	0x2003
	.word	0x400012a
.Lfe1:
	.size	 MultiBootInit,.Lfe1-MultiBootInit
	.align	2, 0
	.globl	MultiBootMain
	.type	 MultiBootMain,function
	.thumb_func
MultiBootMain:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r7, r0, #0
	bl	MultiBootCheckComplete
	cmp	r0, #0
	beq	.LCB49
	b	.L92	@long jump
.LCB49:
	add	r0, r7, #0
	add	r0, r0, #0x4a
	ldrb	r1, [r0]
	mov	sl, r0
	cmp	r1, #0xf
	bls	.L8	@cond_branch
	sub	r0, r1, #0x1
	mov	r1, sl
	strb	r0, [r1]
	b	.L92
.L8:
	add	r1, r7, #0
	add	r1, r1, #0x48
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.L9	@cond_branch
	mov	r0, #0x0
	strb	r0, [r1]
	ldr	r0, .L101
	ldrh	r0, [r0]
	mov	r5, #0xfc
	and	r5, r5, r0
	cmp	r5, #0x8
	beq	.L9	@cond_branch
	add	r0, r7, #0
	bl	MultiBootInit
	mov	r0, #0x8
	eor	r0, r0, r5
	b	.L95
.L102:
	.align	2, 0
.L101:
	.word	0x4000128
.L9:
	ldrb	r0, [r7, #0x18]
	cmp	r0, #0xdf
	bls	.L11	@cond_branch
	add	r0, r7, #0
	bl	MultiBootHandShake
	add	r5, r0, #0
	cmp	r5, #0
	beq	.LCB109
	b	.L95	@long jump
.LCB109:
	add	r0, r7, #0
	add	r0, r0, #0x4b
	ldrb	r0, [r0]
	cmp	r0, #0x1
	bne	.L13	@cond_branch
	ldrb	r0, [r7, #0x18]
	cmp	r0, #0xe1
	bls	.L13	@cond_branch
	add	r0, r7, #0
	bl	MultiBootCheckComplete
	cmp	r0, #0
	bne	.LCB127
	b	.L98	@long jump
.LCB127:
.L13:
	add	r0, r7, #0
	bl	MultiBootCheckComplete
	cmp	r0, #0
	beq	.LCB134
	b	.L92	@long jump
.LCB134:
	ldrh	r0, [r7, #0x16]
	cmp	r0, #0
	bne	.L15	@cond_branch
	add	r0, r7, #0
	bl	MultiBootInit
	mov	r0, #0x71
	b	.L95
.L15:
	sub	r0, r0, #0x1
	strh	r0, [r7, #0x16]
	b	.L92
.L11:
	ldrb	r0, [r7, #0x18]
	cmp	r0, #0x2
	bne	.LCB156
	b	.L46	@long jump
.LCB156:
	cmp	r0, #0x2
	bgt	.L94	@cond_branch
	cmp	r0, #0
	beq	.L17	@cond_branch
	cmp	r0, #0x1
	beq	.L37	@cond_branch
	b	.L79
.L94:
	cmp	r0, #0xd0
	bne	.LCB167
	b	.L55	@long jump
.LCB167:
	cmp	r0, #0xd1
	bne	.LCB169
	b	.L70	@long jump
.LCB169:
	b	.L79
.L17:
	mov	r3, #0xe
	mov	r5, #0x3
	ldr	r0, .L103
	ldrh	r0, [r0, #0x6]
	add	r1, r0, #0
	ldr	r0, .L103+0x4
	ldrb	r2, [r7, #0x1e]
	add	r6, r2, #0
	cmp	r1, r0
	bne	.L19	@cond_branch
	add	r4, r1, #0
	ldr	r1, .L103+0x8
.L22:
	asr	r3, r3, #0x1
	sub	r1, r1, #0x2
	sub	r5, r5, #0x1
	cmp	r5, #0
	beq	.L19	@cond_branch
	ldrh	r0, [r1]
	cmp	r0, r4
	beq	.L22	@cond_branch
.L19:
	mov	r0, #0xe
	and	r3, r3, r0
	strb	r3, [r7, #0x1d]
	mov	r5, #0x3
	ldr	r0, .L103
	ldrh	r0, [r0, #0x6]
	add	r4, r0, #0
	asr	r0, r2, #0x3
	mov	r1, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L26	@cond_branch
	ldr	r0, .L103+0xc
	b	.L99
.L104:
	.align	2, 0
.L103:
	.word	0x4000120
	.word	0xffff
	.word	0x4000126
	.word	0x7208
.L26:
	sub	r5, r5, #0x1
	cmp	r5, #0
	beq	.L25	@cond_branch
	lsl	r0, r5, #0x1
	ldr	r1, .L105
	add	r0, r0, r1
	ldrh	r0, [r0]
	add	r4, r0, #0
	add	r0, r2, #0
	asr	r0, r0, r5
	mov	r1, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L26	@cond_branch
	add	r0, r1, #0
	lsl	r0, r0, r5
	mov	r1, #0xe4
	lsl	r1, r1, #0x7
	orr	r0, r0, r1
.L99:
	cmp	r4, r0
	beq	.L26	@cond_branch
	mov	r3, #0x0
.L25:
	add	r0, r3, #0
	and	r0, r0, r6
	strb	r0, [r7, #0x1e]
	cmp	r3, #0
	bne	.L31	@cond_branch
	mov	r0, #0xf
	mov	r2, sl
	strb	r0, [r2]
.L31:
	mov	r1, sl
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.L32	@cond_branch
	ldrb	r0, [r7, #0x1d]
	ldrb	r2, [r7, #0x1e]
	cmp	r0, r2
	beq	.L36	@cond_branch
	add	r0, r7, #0
	bl	MultiBootStartProbe
	b	.L37
.L106:
	.align	2, 0
.L105:
	.word	0x4000120
.L32:
	sub	r0, r0, #0x1
	mov	r1, sl
	strb	r0, [r1]
.L36:
	ldrb	r1, [r7, #0x1e]
	mov	r2, #0xc4
	lsl	r2, r2, #0x7
	b	.L100
.L37:
	add	r1, r7, #0
	add	r1, r1, #0x49
	mov	r0, #0x0
	strb	r0, [r1]
	mov	r5, #0x3
	mov	ip, r1
	ldr	r3, .L107
.L41:
	lsl	r0, r5, #0x1
	ldr	r2, .L107+0x4
	add	r0, r0, r2
	ldrh	r0, [r0]
	add	r4, r0, #0
	asr	r0, r4, #0x8
	sub	r2, r5, #0x1
	cmp	r0, #0x72
	bne	.L40	@cond_branch
	lsl	r0, r2, #0x1
	add	r0, r0, r3
	strh	r4, [r0]
	mov	r0, #0xff
	and	r4, r4, r0
	mov	r0, #0x1
	lsl	r0, r0, r5
	cmp	r4, r0
	bne	.L40	@cond_branch
	ldrb	r0, [r1]
	orr	r4, r4, r0
	strb	r4, [r1]
.L40:
	add	r5, r2, #0
	cmp	r5, #0
	bne	.L41	@cond_branch
	ldrb	r0, [r7, #0x1d]
	mov	r1, ip
	ldrb	r1, [r1]
	cmp	r0, r1
	bne	.L36	@cond_branch
	mov	r0, #0x2
	strb	r0, [r7, #0x18]
	mov	r2, ip
	ldrb	r1, [r2]
	mov	r2, #0xc2
	lsl	r2, r2, #0x7
	b	.L100
.L108:
	.align	2, 0
.L107:
	.word	MultiBoot_required_data
	.word	0x4000120
.L46:
	mov	r5, #0x3
	mov	r0, #0x49
	add	r0, r0, r7
	mov	ip, r0
	mov	r4, ip
	mov	r6, #0x1
	ldr	r1, .L109
	mov	r9, r1
	ldr	r2, .L109+0x4
	mov	r8, r2
.L50:
	ldrb	r3, [r4]
	add	r0, r3, #0
	asr	r0, r0, r5
	and	r0, r0, r6
	sub	r2, r5, #0x1
	cmp	r0, #0
	beq	.L49	@cond_branch
	lsl	r0, r5, #0x1
	add	r0, r0, r8
	ldrh	r1, [r0]
	lsl	r0, r2, #0x1
	add	r0, r0, r9
	ldrh	r0, [r0]
	cmp	r1, r0
	beq	.L49	@cond_branch
	add	r0, r6, #0
	lsl	r0, r0, r5
	eor	r3, r3, r0
	strb	r3, [r4]
.L49:
	add	r5, r2, #0
	cmp	r5, #0
	bne	.L50	@cond_branch
	b	.L54
.L110:
	.align	2, 0
.L109:
	.word	MultiBoot_required_data
	.word	0x4000120
.L55:
	mov	r3, #0x1
	mov	r5, #0x3
	mov	r0, #0x49
	add	r0, r0, r7
	mov	ip, r0
	add	r6, r7, #0
	add	r6, r6, #0x19
	ldr	r1, .L111
	mov	r8, r1
.L59:
	lsl	r0, r5, #0x1
	ldr	r2, .L111+0x4
	add	r0, r0, r2
	ldrh	r0, [r0]
	add	r4, r0, #0
	sub	r2, r5, #0x1
	add	r0, r6, r2
	strb	r4, [r0]
	mov	r0, ip
	ldrb	r1, [r0]
	asr	r1, r1, r5
	mov	r0, #0x1
	and	r1, r1, r0
	cmp	r1, #0
	beq	.L58	@cond_branch
	asr	r0, r4, #0x8
	sub	r0, r0, #0x72
	cmp	r0, #0x1
	bls	.LCB502
	b	.L96	@long jump
.LCB502:
	lsl	r0, r2, #0x1
	add	r0, r0, r8
	ldrh	r0, [r0]
	cmp	r4, r0
	bne	.L58	@cond_branch
	mov	r3, #0x0
.L58:
	add	r5, r2, #0
	cmp	r5, #0
	bne	.L59	@cond_branch
	cmp	r3, #0
	bne	.L64	@cond_branch
	ldrb	r1, [r7, #0x1c]
	mov	r2, #0xc6
	lsl	r2, r2, #0x7
.L100:
	add	r0, r2, #0
	orr	r1, r1, r0
	add	r0, r7, #0
	bl	MultiBootSend
	b	.L95
.L112:
	.align	2, 0
.L111:
	.word	MultiBoot_required_data
	.word	0x4000120
.L64:
	mov	r0, #0xd1
	strb	r0, [r7, #0x18]
	mov	r3, #0x11
	mov	r5, #0x3
	add	r1, r6, #0x2
.L68:
	ldrb	r0, [r1]
	add	r3, r3, r0
	sub	r1, r1, #0x1
	sub	r5, r5, #0x1
	cmp	r5, #0
	bne	.L68	@cond_branch
	strb	r3, [r7, #0x14]
	mov	r0, #0xff
	and	r3, r3, r0
	mov	r1, #0xc8
	lsl	r1, r1, #0x7
	add	r0, r1, #0
	orr	r3, r3, r0
	add	r0, r7, #0
	add	r1, r3, #0
	bl	MultiBootSend
	b	.L95
.L70:
	mov	r5, #0x3
	mov	r2, #0x49
	ldrb	r1, [r2, r7]
	ldr	r2, .L113
	mov	r3, #0x1
.L74:
	ldrh	r0, [r2]
	add	r4, r0, #0
	add	r0, r1, #0
	asr	r0, r0, r5
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L73	@cond_branch
	asr	r0, r4, #0x8
	cmp	r0, #0x73
	bne	.L97	@cond_branch
.L73:
	sub	r2, r2, #0x2
	sub	r5, r5, #0x1
	cmp	r5, #0
	bne	.L74	@cond_branch
	add	r0, r7, #0
	bl	MultiBoot
	add	r5, r0, #0
	cmp	r5, #0
	bne	.L78	@cond_branch
	mov	r0, #0xe0
	strb	r0, [r7, #0x18]
	add	r0, r0, #0xb0
	strh	r0, [r7, #0x16]
	b	.L92
.L114:
	.align	2, 0
.L113:
	.word	0x4000126
.L78:
	add	r0, r7, #0
	bl	MultiBootInit
	mov	r0, #0x1e
	mov	r1, sl
	strb	r0, [r1]
	mov	r0, #0x70
	b	.L95
.L79:
	mov	r5, #0x3
	mov	r2, #0x49
	add	r2, r2, r7
	mov	ip, r2
	mov	r8, ip
	mov	r0, #0x1
	mov	r9, r0
.L83:
	mov	r1, r8
	ldrb	r6, [r1]
	add	r0, r6, #0
	asr	r0, r0, r5
	mov	r2, r9
	and	r0, r0, r2
	cmp	r0, #0
	beq	.L82	@cond_branch
	lsl	r0, r5, #0x1
	ldr	r1, .L115
	add	r0, r0, r1
	ldrh	r0, [r0]
	add	r4, r0, #0
	asr	r2, r4, #0x8
	ldrb	r0, [r7, #0x18]
	lsr	r0, r0, #0x1
	mov	r1, #0x62
	sub	r1, r1, r0
	mov	r3, r9
	lsl	r3, r3, r5
	cmp	r2, r1
	bne	.L86	@cond_branch
	mov	r0, #0xff
	and	r4, r4, r0
	cmp	r4, r3
	beq	.L82	@cond_branch
.L86:
	eor	r6, r6, r3
	mov	r2, r8
	strb	r6, [r2]
.L82:
	sub	r5, r5, #0x1
	cmp	r5, #0
	bne	.L83	@cond_branch
	ldrb	r0, [r7, #0x18]
	cmp	r0, #0xc4
	bne	.L54	@cond_branch
	mov	r0, ip
	ldrb	r1, [r0]
	mov	r0, #0xe
	and	r0, r0, r1
	strb	r0, [r7, #0x1e]
	strb	r5, [r7, #0x18]
	b	.L36
.L116:
	.align	2, 0
.L115:
	.word	0x4000120
.L54:
	mov	r1, ip
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.L89	@cond_branch
	add	r0, r7, #0
	bl	MultiBootInit
	mov	r0, #0x50
	b	.L95
.L89:
	ldrb	r0, [r7, #0x18]
	add	r0, r0, #0x2
	strb	r0, [r7, #0x18]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xc4
	bne	.LCB747
	b	.L36	@long jump
.LCB747:
	ldrb	r0, [r7, #0x18]
	ldr	r1, [r7, #0x28]
	add	r0, r0, r1
	sub	r1, r0, #0x3
	ldrb	r2, [r1]
	lsl	r2, r2, #0x8
	sub	r0, r0, #0x4
	ldrb	r1, [r0]
	orr	r1, r1, r2
	add	r0, r7, #0
	bl	MultiBootSend
	add	r5, r0, #0
	cmp	r5, #0
	bne	.L95	@cond_branch
	add	r0, r7, #0
	add	r0, r0, #0x4b
	ldrb	r0, [r0]
	cmp	r0, #0x1
	bne	.L92	@cond_branch
.L98:
	bl	MultiBootWaitSendDone
	b	.L8
.L96:
.L97:
	add	r0, r7, #0
	bl	MultiBootInit
	mov	r0, #0x60
	b	.L95
.L92:
	mov	r0, #0x0
.L95:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 MultiBootMain,.Lfe2-MultiBootMain
	.align	2, 0
	.type	 MultiBootSend,function
	.thumb_func
MultiBootSend:
	push	{r4, lr}
	add	r2, r0, #0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	ldr	r3, .L120
	ldrh	r0, [r3]
	mov	r4, #0x8c
	and	r4, r4, r0
	cmp	r4, #0x8
	bne	.L118	@cond_branch
	ldr	r0, .L120+0x4
	strh	r1, [r0]
	ldr	r1, .L120+0x8
	add	r0, r1, #0
	strh	r0, [r3]
	add	r1, r2, #0
	add	r1, r1, #0x48
	mov	r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x0
	b	.L119
.L121:
	.align	2, 0
.L120:
	.word	0x4000128
	.word	0x400012a
	.word	0x2083
.L118:
	add	r0, r2, #0
	bl	MultiBootInit
	mov	r0, #0x8
	eor	r4, r4, r0
	add	r0, r4, #0
.L119:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 MultiBootSend,.Lfe3-MultiBootSend
	.align	2, 0
	.globl	MultiBootStartProbe
	.type	 MultiBootStartProbe,function
	.thumb_func
MultiBootStartProbe:
	push	{lr}
	add	r1, r0, #0
	ldrb	r0, [r1, #0x18]
	cmp	r0, #0
	beq	.L123	@cond_branch
	add	r0, r1, #0
	bl	MultiBootInit
	b	.L122
.L123:
	add	r2, r1, #0
	add	r2, r2, #0x4a
	strb	r0, [r2]
	strb	r0, [r1, #0x1e]
	mov	r0, #0x1
	strb	r0, [r1, #0x18]
.L122:
	pop	{r0}
	bx	r0
.Lfe4:
	.size	 MultiBootStartProbe,.Lfe4-MultiBootStartProbe
	.align	2, 0
	.globl	MultiBootStartMaster
	.type	 MultiBootStartMaster,function
	.thumb_func
MultiBootStartMaster:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	add	r6, r1, #0
	ldr	r0, [sp, #0x14]
	lsl	r3, r3, #0x18
	lsr	r5, r3, #0x18
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	mov	r3, #0x0
	ldrb	r0, [r4, #0x18]
	cmp	r0, #0
	bne	.L140	@cond_branch
	ldrb	r0, [r4, #0x1e]
	cmp	r0, #0
	beq	.L140	@cond_branch
	add	r0, r4, #0
	add	r0, r0, #0x4a
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.L140	@cond_branch
	str	r6, [r4, #0x20]
	add	r2, r2, #0xf
	mov	r0, #0x10
	neg	r0, r0
	and	r2, r2, r0
	sub	r0, r0, #0xf0
	add	r1, r2, r0
	ldr	r0, .L142
	cmp	r1, r0
	bls	.L127	@cond_branch
.L140:
	add	r0, r4, #0
	bl	MultiBootInit
	b	.L124
.L143:
	.align	2, 0
.L142:
	.word	0x3ff00
.L127:
	add	r0, r6, r2
	str	r0, [r4, #0x24]
	lsl	r1, r7, #0x18
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	add	r0, r1, r2
	asr	r0, r0, #0x18
	add	r2, r1, #0
	cmp	r0, #0x8
	bhi	.L128	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L144
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L145:
	.align	2, 0
.L144:
	.word	.L138
	.align	2, 0
	.align	2, 0
.L138:
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L133
	.word	.L137
	.word	.L137
	.word	.L137
	.word	.L137
.L132:
	lsl	r3, r5, #0x3
	asr	r1, r2, #0x18
	mov	r0, #0x3
	sub	r0, r0, r1
	b	.L141
.L133:
	mov	r0, #0x38
	add	r3, r5, #0
	b	.L141
.L137:
	lsl	r3, r5, #0x3
	asr	r0, r2, #0x18
	sub	r0, r0, #0x1
.L141:
	orr	r3, r3, r0
.L128:
	mov	r0, #0x3f
	and	r3, r3, r0
	lsl	r0, r3, #0x1
	mov	r2, #0x7f
	neg	r2, r2
	add	r1, r2, #0
	orr	r0, r0, r1
	strb	r0, [r4, #0x1c]
	mov	r0, #0xd0
	strb	r0, [r4, #0x18]
.L124:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe5:
	.size	 MultiBootStartMaster,.Lfe5-MultiBootStartMaster
	.align	2, 0
	.globl	MultiBootCheckComplete
	.type	 MultiBootCheckComplete,function
	.thumb_func
MultiBootCheckComplete:
	push	{lr}
	ldrb	r0, [r0, #0x18]
	cmp	r0, #0xe9
	beq	.L147	@cond_branch
	mov	r0, #0x0
	b	.L149
.L147:
	mov	r0, #0x1
.L149:
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 MultiBootCheckComplete,.Lfe6-MultiBootCheckComplete
	.align	2, 0
	.type	 MultiBootHandShake,function
	.thumb_func
MultiBootHandShake:
	push	{r4, r5, r6, lr}
	add	r3, r0, #0
	ldrb	r0, [r3, #0x18]
	cmp	r0, #0xe0
	beq	.L153	@cond_branch
	cmp	r0, #0xe0
	blt	.L154	@cond_branch
	cmp	r0, #0xe8
	bgt	.L154	@cond_branch
	cmp	r0, #0xe7
	blt	.L154	@cond_branch
	mov	r4, #0x3
	ldrb	r5, [r3, #0x1e]
	b	.L168
.L153:
	mov	r1, #0x0
	mov	r0, #0xe1
	strb	r0, [r3, #0x18]
	str	r1, [r3, #0x4]
	mov	r0, #0x80
	lsl	r0, r0, #0xd
	str	r0, [r3]
	b	.L175
.L154:
	mov	r4, #0x3
	ldrb	r5, [r3, #0x1e]
	mov	r6, #0x1
	ldr	r1, .L176
.L158:
	ldrh	r0, [r1]
	add	r2, r0, #0
	add	r0, r5, #0
	asr	r0, r0, r4
	and	r0, r0, r6
	cmp	r0, #0
	beq	.L157	@cond_branch
	ldr	r0, [r3, #0x4]
	cmp	r2, r0
	bne	.L153	@cond_branch
.L157:
	sub	r1, r1, #0x2
	sub	r4, r4, #0x1
	cmp	r4, #0
	bne	.L158	@cond_branch
	ldrb	r0, [r3, #0x18]
	add	r0, r0, #0x1
	strb	r0, [r3, #0x18]
	ldr	r1, [r3]
	ldrh	r0, [r3]
	str	r0, [r3, #0x4]
	cmp	r1, #0
	bne	.L161	@cond_branch
	ldr	r0, [r3, #0x28]
	add	r1, r0, #0
	add	r1, r1, #0xac
	ldrb	r1, [r1]
	add	r0, r0, #0xad
	ldrb	r0, [r0]
	lsl	r0, r0, #0x8
	orr	r1, r1, r0
	str	r1, [r3, #0x4]
	lsl	r1, r1, #0x5
	str	r1, [r3]
.L161:
	ldr	r0, [r3]
	lsr	r0, r0, #0x5
	str	r0, [r3]
.L162:
	ldrh	r1, [r3]
.L175:
	add	r0, r3, #0
	bl	MultiBootSend
	b	.L173
.L177:
	.align	2, 0
.L176:
	.word	0x4000126
.L168:
	lsl	r0, r4, #0x1
	ldr	r1, .L178
	add	r0, r0, r1
	ldrh	r0, [r0]
	add	r2, r0, #0
	add	r0, r5, #0
	asr	r0, r0, r4
	mov	r1, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L167	@cond_branch
	ldr	r0, [r3, #0x4]
	cmp	r2, r0
	bne	.L174	@cond_branch
.L167:
	sub	r4, r4, #0x1
	cmp	r4, #0
	bne	.L168	@cond_branch
	ldrb	r0, [r3, #0x18]
	add	r0, r0, #0x1
	strb	r0, [r3, #0x18]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xe9
	beq	.L171	@cond_branch
	ldr	r0, [r3, #0x28]
	add	r1, r0, #0
	add	r1, r1, #0xae
	ldrb	r1, [r1]
	add	r0, r0, #0xaf
	ldrb	r0, [r0]
	lsl	r0, r0, #0x8
	orr	r1, r1, r0
	str	r1, [r3]
	str	r1, [r3, #0x4]
	b	.L162
.L179:
	.align	2, 0
.L178:
	.word	0x4000120
.L174:
	add	r0, r3, #0
	bl	MultiBootInit
	mov	r0, #0x71
	b	.L173
.L171:
	mov	r0, #0x0
.L173:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 MultiBootHandShake,.Lfe7-MultiBootHandShake
	.align	2, 0
	.type	 MultiBootWaitCycles,function
	.thumb_func
MultiBootWaitCycles:
	mov r2, pc
	lsr r2, #24
	mov r1, #12
	cmp r2, #0x02
	beq MultiBootWaitCyclesLoop
	mov r1, #13
	cmp r2, #0x08
	beq MultiBootWaitCyclesLoop
	mov r1, #4
	MultiBootWaitCyclesLoop:
	sub r0, r1
	bgt MultiBootWaitCyclesLoop
	.code	16
	bx	lr
.Lfe8:
	.size	 MultiBootWaitCycles,.Lfe8-MultiBootWaitCycles
	.align	2, 0
	.type	 MultiBootWaitSendDone,function
	.thumb_func
MultiBootWaitSendDone:
	push	{r4, r5, lr}
	mov	r2, #0x0
	ldr	r3, .L188
	ldrh	r1, [r3]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L183	@cond_branch
	ldr	r5, .L188+0x4
	mov	r4, #0x80
.L184:
	add	r2, r2, #0x1
	cmp	r2, r5
	bgt	.L183	@cond_branch
	ldrh	r1, [r3]
	add	r0, r4, #0
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L184	@cond_branch
.L183:
	mov	r0, #0x96
	lsl	r0, r0, #0x2
	bl	MultiBootWaitCycles
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L189:
	.align	2, 0
.L188:
	.word	0x4000128
	.word	0x795c
.Lfe9:
	.size	 MultiBootWaitSendDone,.Lfe9-MultiBootWaitSendDone

	.lcomm	MultiBoot_required_data,6
.text
	.align	2, 0 @ Don't pad with nop

