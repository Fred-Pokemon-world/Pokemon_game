@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.type	 Task_FieldPoisonEffect,function
	.thumb_func
Task_FieldPoisonEffect:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .L15
	add	r1, r0, r1
	mov	r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp	r0, #0x1
	beq	.L8	@cond_branch
	cmp	r0, #0x1
	bgt	.L13	@cond_branch
	cmp	r0, #0
	beq	.L6	@cond_branch
	b	.L5
.L16:
	.align	2, 0
.L15:
	.word	gTasks+0x8
.L13:
	cmp	r0, #0x2
	beq	.L10	@cond_branch
	b	.L5
.L6:
	ldrh	r0, [r1, #0x2]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x4
	ble	.L5	@cond_branch
	b	.L14
.L8:
	ldrh	r0, [r1, #0x2]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0x2]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L5	@cond_branch
.L14:
	ldrh	r0, [r1]
	add	r0, r0, #0x1
	strh	r0, [r1]
	b	.L5
.L10:
	add	r0, r2, #0
	bl	DestroyTask
	b	.L4
.L5:
	ldrb	r1, [r1, #0x2]
	lsl	r0, r1, #0x4
	orr	r0, r0, r1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x0
	bl	AdjustBgMosaic
.L4:
	pop	{r0}
	bx	r0
.Lfe1:
	.size	 Task_FieldPoisonEffect,.Lfe1-Task_FieldPoisonEffect
	.align	2, 0
	.globl	FldEffPoison_Start
	.type	 FldEffPoison_Start,function
	.thumb_func
FldEffPoison_Start:
	push	{lr}
	mov	r0, #0x48
	bl	PlaySE
	ldr	r0, .L18
	mov	r1, #0x50
	bl	CreateTask
	pop	{r0}
	bx	r0
.L19:
	.align	2, 0
.L18:
	.word	Task_FieldPoisonEffect
.Lfe2:
	.size	 FldEffPoison_Start,.Lfe2-FldEffPoison_Start
	.align	2, 0
	.globl	FldEffPoison_IsActive
	.type	 FldEffPoison_IsActive,function
	.thumb_func
FldEffPoison_IsActive:
	push	{lr}
	ldr	r0, .L21
	bl	FuncIsActiveTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.L22:
	.align	2, 0
.L21:
	.word	Task_FieldPoisonEffect
.Lfe3:
	.size	 FldEffPoison_IsActive,.Lfe3-FldEffPoison_IsActive
.text
	.align	2, 0 @ Don't pad with nop

