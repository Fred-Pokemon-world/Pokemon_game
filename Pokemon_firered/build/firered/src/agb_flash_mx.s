@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.globl	mxMaxTime
	.section .rodata
	.align	1, 0
	.type	 mxMaxTime,object
mxMaxTime:
	.short	10
	.short	65469
	.short	194
	.short	10
	.short	65469
	.short	194
	.short	2000
	.short	65469
	.short	194
	.short	2000
	.short	65469
	.short	194
	.size	 mxMaxTime,24
	.globl	MX29L010
	.align	2, 0
	.type	 MX29L010,object
	.size	 MX29L010,48
MX29L010:
	.word	ProgramFlashByte_MX
	.word	ProgramFlashSector_MX
	.word	EraseFlashChip_MX
	.word	EraseFlashSector_MX
	.word	WaitForFlashWrite_Common
	.word	mxMaxTime
	.word	131072
	.word	4096
	.byte	12
	.space	1
	.short	32
	.short	0
	.space	2
	.short	3
	.short	1
	.byte	194
	.byte	9
	.space	2
	.globl	DefaultFlash
	.align	2, 0
	.type	 DefaultFlash,object
	.size	 DefaultFlash,48
DefaultFlash:
	.word	ProgramFlashByte_MX
	.word	ProgramFlashSector_MX
	.word	EraseFlashChip_MX
	.word	EraseFlashSector_MX
	.word	WaitForFlashWrite_Common
	.word	mxMaxTime
	.word	131072
	.word	4096
	.byte	12
	.space	1
	.short	32
	.short	0
	.space	2
	.short	3
	.short	1
	.byte	0
	.byte	0
	.space	2
	.align	2, 0
.LC0:
	.word	gFlash
	.align	2, 0
.LC1:
	.word	WaitForFlashWrite
.text
	.align	2, 0
	.globl	EraseFlashChip_MX
	.type	 EraseFlashChip_MX,function
	.thumb_func
EraseFlashChip_MX:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-64
	ldr	r5, .L3
	ldrh	r1, [r5]
	ldr	r6, .L3+4
	and	r1, r1, r6
	ldr	r0, .L3+8
	ldr	r0, [r0]
	ldrh	r0, [r0, #16]
	orr	r1, r1, r0
	strh	r1, [r5]
	ldr	r1, .L3+12
	mov	r4, #170
	strb	r4, [r1]
	ldr	r3, .L3+16
	mov	r2, #85
	strb	r2, [r3]
	mov	r0, #128
	strb	r0, [r1]
	strb	r4, [r1]
	strb	r2, [r3]
	mov	r0, #16
	strb	r0, [r1]
	mov	r0, sp
	bl	SetReadFlash1
	ldr	r0, .L3+20
	mov	r1, #224
	lsl	r1, r1, #20
	ldr	r3, [r0]
	mov	r0, #3
	mov	r2, #255
	bl	_call_via_r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5]
	and	r1, r1, r6
	mov	r2, #3
	orr	r1, r1, r2
	strh	r1, [r5]
	add	sp, sp, #64
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L4:
	.align	2, 0
.L3:
	.word	67109380
	.word	65532
	.word	gFlash
	.word	234902869
	.word	234891946
	.word	WaitForFlashWrite
.Lfe1:
	.size	 EraseFlashChip_MX,.Lfe1-EraseFlashChip_MX
	.section .rodata
	.align	2, 0
.LC2:
	.word	gFlash
	.align	2, 0
.LC3:
	.word	WaitForFlashWrite
.text
	.align	2, 0
	.globl	EraseFlashSector_MX
	.type	 EraseFlashSector_MX,function
	.thumb_func
EraseFlashSector_MX:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-64
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	ldr	r0, .L12
	ldr	r0, [r0]
	ldrh	r0, [r0, #10]
	cmp	r6, r0
	bcc	.L6	@cond_branch
	ldr	r0, .L12+4
	b	.L11
.L13:
	.align	2, 0
.L12:
	.word	gFlash
	.word	33023
.L6:
	lsr	r0, r6, #4
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	bl	SwitchFlashBank
	mov	r0, #15
	and	r6, r6, r0
	mov	r7, #0
.L7:
	ldr	r3, .L14
	ldrh	r1, [r3]
	ldr	r0, .L14+4
	and	r1, r1, r0
	ldr	r0, .L14+8
	ldr	r2, [r0]
	ldrh	r0, [r2, #16]
	orr	r1, r1, r0
	strh	r1, [r3]
	ldrb	r4, [r2, #8]
	add	r0, r6, #0
	lsl	r0, r0, r4
	add	r4, r0, #0
	mov	r0, #224
	lsl	r0, r0, #20
	add	r4, r4, r0
	ldr	r1, .L14+12
	mov	r5, #170
	strb	r5, [r1]
	ldr	r3, .L14+16
	mov	r2, #85
	strb	r2, [r3]
	mov	r0, #128
	strb	r0, [r1]
	strb	r5, [r1]
	strb	r2, [r3]
	mov	r0, #48
	strb	r0, [r4]
	mov	r0, sp
	bl	SetReadFlash1
	ldr	r0, .L14+20
	ldr	r3, [r0]
	mov	r0, #2
	add	r1, r4, #0
	mov	r2, #255
	bl	_call_via_r3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	mov	r0, #160
	lsl	r0, r0, #8
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L10	@cond_branch
	cmp	r7, #3
	bhi	.L10	@cond_branch
	add	r0, r7, #1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	b	.L7
.L15:
	.align	2, 0
.L14:
	.word	67109380
	.word	65532
	.word	gFlash
	.word	234902869
	.word	234891946
	.word	WaitForFlashWrite
.L10:
	ldr	r2, .L16
	ldrh	r0, [r2]
	ldr	r1, .L16+4
	and	r0, r0, r1
	mov	r1, #3
	orr	r0, r0, r1
	strh	r0, [r2]
	add	r0, r3, #0
.L11:
	add	sp, sp, #64
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L17:
	.align	2, 0
.L16:
	.word	67109380
	.word	65532
.Lfe2:
	.size	 EraseFlashSector_MX,.Lfe2-EraseFlashSector_MX
	.section .rodata
	.align	2, 0
.LC4:
	.word	gFlash
	.align	2, 0
.LC5:
	.word	WaitForFlashWrite
.text
	.align	2, 0
	.globl	ProgramFlashByte_MX
	.type	 ProgramFlashByte_MX,function
	.thumb_func
ProgramFlashByte_MX:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-64
	add	r6, r1, #0
	lsl	r1, r0, #16
	lsr	r4, r1, #16
	lsl	r2, r2, #24
	lsr	r7, r2, #24
	ldr	r5, .L21
	ldr	r0, [r5]
	ldr	r0, [r0, #4]
	cmp	r6, r0
	bcs	.L19	@cond_branch
	lsr	r0, r1, #20
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	bl	SwitchFlashBank
	mov	r0, #15
	ldr	r1, [r5]
	and	r4, r4, r0
	ldrb	r1, [r1, #8]
	lsl	r4, r4, r1
	mov	r1, #224
	lsl	r1, r1, #20
	add	r0, r6, r1
	add	r4, r4, r0
	mov	r0, sp
	bl	SetReadFlash1
	ldr	r2, .L21+4
	ldrh	r0, [r2]
	ldr	r1, .L21+8
	and	r0, r0, r1
	ldr	r1, [r5]
	ldrh	r1, [r1, #16]
	orr	r0, r0, r1
	strh	r0, [r2]
	ldr	r2, .L21+12
	mov	r0, #170
	strb	r0, [r2]
	ldr	r1, .L21+16
	mov	r0, #85
	strb	r0, [r1]
	mov	r0, #160
	strb	r0, [r2]
	strb	r7, [r4]
	ldr	r0, .L21+20
	ldr	r3, [r0]
	mov	r0, #1
	add	r1, r4, #0
	add	r2, r7, #0
	bl	_call_via_r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	b	.L20
.L22:
	.align	2, 0
.L21:
	.word	gFlash
	.word	67109380
	.word	65532
	.word	234902869
	.word	234891946
	.word	WaitForFlashWrite
.L19:
	mov	r0, #128
	lsl	r0, r0, #8
.L20:
	add	sp, sp, #64
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 ProgramFlashByte_MX,.Lfe3-ProgramFlashByte_MX
	.section .rodata
	.align	2, 0
.LC6:
	.word	WaitForFlashWrite
.text
	.align	2, 0
	.type	 ProgramByte,function
	.thumb_func
ProgramByte:
	push	{r4, lr}
	ldr	r4, .L24
	mov	r2, #170
	strb	r2, [r4]
	ldr	r3, .L24+4
	mov	r2, #85
	strb	r2, [r3]
	mov	r2, #160
	strb	r2, [r4]
	ldrb	r2, [r0]
	strb	r2, [r1]
	ldr	r3, .L24+8
	ldrb	r2, [r0]
	ldr	r3, [r3]
	mov	r0, #1
	bl	_call_via_r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	pop	{r4}
	pop	{r1}
	bx	r1
.L25:
	.align	2, 0
.L24:
	.word	234902869
	.word	234891946
	.word	WaitForFlashWrite
.Lfe4:
	.size	 ProgramByte,.Lfe4-ProgramByte
	.section .rodata
	.align	2, 0
.LC7:
	.word	gFlash
	.align	2, 0
.LC8:
	.word	gFlashNumRemainingBytes
.text
	.align	2, 0
	.globl	ProgramFlashSector_MX
	.type	 ProgramFlashSector_MX,function
	.thumb_func
ProgramFlashSector_MX:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-64
	add	r7, r1, #0
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L35
	ldr	r0, [r0]
	ldrh	r0, [r0, #10]
	cmp	r4, r0
	bcc	.L27	@cond_branch
	ldr	r0, .L35+4
	b	.L34
.L36:
	.align	2, 0
.L35:
	.word	gFlash
	.word	33023
.L27:
	add	r0, r4, #0
	bl	EraseFlashSector_MX
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	bne	.L30	@cond_branch
	lsr	r0, r4, #4
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	bl	SwitchFlashBank
	mov	r0, #15
	and	r4, r4, r0
	mov	r0, sp
	bl	SetReadFlash1
	ldr	r3, .L37
	ldrh	r1, [r3]
	ldr	r0, .L37+4
	and	r1, r1, r0
	ldr	r0, .L37+8
	ldr	r2, [r0]
	ldrh	r0, [r2, #16]
	orr	r1, r1, r0
	strh	r1, [r3]
	ldr	r1, .L37+12
	ldr	r0, [r2, #4]
	strh	r0, [r1]
	ldrb	r0, [r2, #8]
	lsl	r4, r4, r0
	mov	r0, #224
	lsl	r0, r0, #20
	add	r4, r4, r0
	add	r6, r1, #0
	b	.L29
.L38:
	.align	2, 0
.L37:
	.word	67109380
	.word	65532
	.word	gFlash
	.word	gFlashNumRemainingBytes
.L32:
	ldrh	r0, [r6]
	sub	r0, r0, #1
	strh	r0, [r6]
	add	r7, r7, #1
	add	r4, r4, #1
.L29:
	ldrh	r0, [r6]
	cmp	r0, #0
	beq	.L30	@cond_branch
	add	r0, r7, #0
	add	r1, r4, #0
	bl	ProgramByte
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L32	@cond_branch
.L30:
	add	r0, r5, #0
.L34:
	add	sp, sp, #64
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe5:
	.size	 ProgramFlashSector_MX,.Lfe5-ProgramFlashSector_MX
.text
	.align	2, 0 @ Don't pad with nop

