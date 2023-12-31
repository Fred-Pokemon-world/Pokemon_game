@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	ShowMapNamePopup
	.type	 ShowMapNamePopup,function
	.thumb_func
ShowMapNamePopup:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	mov	r0, #0x80
	lsl	r0, r0, #0x7
	bl	FlagGet
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L5	@cond_branch
	ldr	r0, .L9
	ldrb	r0, [r0]
	sub	r0, r0, #0x2
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bls	.L5	@cond_branch
	ldr	r5, .L9+0x4
	add	r0, r5, #0
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0xff
	bne	.L6	@cond_branch
	add	r0, r5, #0
	mov	r1, #0x5a
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgX
	ldr	r1, .L9+0x8
	mov	r0, #0x0
	mov	r2, #0x0
	bl	ChangeBgY
	ldr	r1, .L9+0xc
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r1, #0x0
	strh	r1, [r0, #0x8]
	strh	r1, [r0, #0xc]
	strh	r6, [r0, #0x18]
	b	.L5
.L10:
	.align	2, 0
.L9:
	.word	gQuestLogState
	.word	Task_MapNamePopup
	.word	-0x1081
	.word	gTasks
.L6:
	ldr	r0, .L11
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r2, #0x8
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x4
	beq	.L8	@cond_branch
	mov	r0, #0x4
	strh	r0, [r1, #0x8]
.L8:
	mov	r0, #0x1
	strh	r0, [r1, #0xe]
.L5:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L12:
	.align	2, 0
.L11:
	.word	gTasks
.Lfe1:
	.size	 ShowMapNamePopup,.Lfe1-ShowMapNamePopup
	.align	2, 0
	.type	 Task_MapNamePopup,function
	.thumb_func
Task_MapNamePopup:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .L35
	add	r4, r0, r1
	mov	r1, #0x8
	ldrsh	r0, [r4, r1]
	cmp	r0, #0x8
	bls	.LCB113
	b	.L14	@long jump
.LCB113:
	lsl	r0, r0, #0x2
	ldr	r1, .L35+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L36:
	.align	2, 0
.L35:
	.word	gTasks
	.word	.L33
	.align	2, 0
	.align	2, 0
.L33:
	.word	.L15
	.word	.L16
	.word	.L18
	.word	.L20
	.word	.L22
	.word	.L14
	.word	.L27
	.word	.L29
	.word	.L32
.L15:
	mov	r1, #0x18
	ldrsh	r0, [r4, r1]
	bl	MapNamePopupCreateWindow
	strh	r0, [r4, #0x10]
	mov	r0, #0x1
	strh	r0, [r4, #0x12]
	strh	r0, [r4, #0x8]
	b	.L14
.L16:
	bl	IsDma3ManagerBusyWithBgCopy
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L14	@cond_branch
.L18:
	ldrh	r0, [r4, #0xc]
	sub	r0, r0, #0x2
	strh	r0, [r4, #0xc]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r1, #0x18
	neg	r1, r1
	cmp	r0, r1
	bgt	.L14	@cond_branch
	mov	r0, #0x3
	strh	r0, [r4, #0x8]
	mov	r0, #0x0
	strh	r0, [r4, #0xa]
	b	.L14
.L20:
	ldrh	r0, [r4, #0xa]
	add	r0, r0, #0x1
	strh	r0, [r4, #0xa]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x78
	ble	.L14	@cond_branch
	mov	r0, #0x0
	strh	r0, [r4, #0xa]
	mov	r0, #0x4
	strh	r0, [r4, #0x8]
	b	.L14
.L22:
	ldrh	r0, [r4, #0xc]
	add	r0, r0, #0x2
	strh	r0, [r4, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	blt	.L14	@cond_branch
	mov	r1, #0xe
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	beq	.L24	@cond_branch
	ldrh	r0, [r4, #0x10]
	bl	MapNamePopupPrintMapNameOnWindow
	ldrb	r0, [r4, #0x10]
	mov	r1, #0x2
	bl	CopyWindowToVram
	mov	r0, #0x1
	strh	r0, [r4, #0x8]
	mov	r0, #0x0
	strh	r0, [r4, #0xe]
	b	.L14
.L24:
	mov	r0, #0x6
	strh	r0, [r4, #0x8]
	b	.L13
.L27:
	mov	r1, #0x12
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	beq	.L28	@cond_branch
	mov	r1, #0x14
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	bne	.L28	@cond_branch
	ldrb	r0, [r4, #0x10]
	bl	rbox_fill_rectangle
	ldrb	r0, [r4, #0x10]
	mov	r1, #0x1
	bl	CopyWindowToVram
	mov	r0, #0x1
	strh	r0, [r4, #0x14]
.L28:
	mov	r0, #0x7
	strh	r0, [r4, #0x8]
	b	.L13
.L29:
	bl	IsDma3ManagerBusyWithBgCopy
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0
	bne	.L13	@cond_branch
	mov	r1, #0x12
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	beq	.L31	@cond_branch
	ldrb	r0, [r4, #0x10]
	bl	RemoveWindow
	strh	r5, [r4, #0x12]
	mov	r0, #0x1
	strh	r0, [r4, #0x16]
.L31:
	mov	r0, #0x8
	strh	r0, [r4, #0x8]
	mov	r0, #0x0
	mov	r1, #0x0
	mov	r2, #0x0
	bl	ChangeBgY
	b	.L13
.L32:
	add	r0, r2, #0
	bl	DestroyTask
	b	.L13
.L14:
	ldrh	r1, [r4, #0xc]
	mov	r0, #0x12
	bl	SetGpuReg
.L13:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 Task_MapNamePopup,.Lfe2-Task_MapNamePopup
	.align	2, 0
	.globl	DismissMapNamePopup
	.type	 DismissMapNamePopup,function
	.thumb_func
DismissMapNamePopup:
	push	{lr}
	ldr	r0, .L40
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0xff
	beq	.L38	@cond_branch
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	ldr	r1, .L40+0x4
	add	r1, r0, r1
	mov	r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x5
	bgt	.L38	@cond_branch
	mov	r0, #0x6
	strh	r0, [r1]
.L38:
	pop	{r0}
	bx	r0
.L41:
	.align	2, 0
.L40:
	.word	Task_MapNamePopup
	.word	gTasks+0x8
.Lfe3:
	.size	 DismissMapNamePopup,.Lfe3-DismissMapNamePopup
	.align	2, 0
	.globl	IsMapNamePopupTaskActive
	.type	 IsMapNamePopupTaskActive,function
	.thumb_func
IsMapNamePopupTaskActive:
	push	{lr}
	ldr	r0, .L44
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0xff
	eor	r0, r0, r1
	neg	r1, r0
	orr	r1, r1, r0
	lsr	r1, r1, #0x1f
	add	r0, r1, #0
	pop	{r1}
	bx	r1
.L45:
	.align	2, 0
.L44:
	.word	Task_MapNamePopup
.Lfe4:
	.size	 IsMapNamePopupTaskActive,.Lfe4-IsMapNamePopupTaskActive
	.section .rodata
	.align	2, 0
.LC8:
	.byte	0x0
	.byte	0x1
	.byte	0x1d
	.byte	0xe
	.byte	0x2
	.byte	0xd
	.short	0x1
.text
	.align	2, 0
	.type	 MapNamePopupCreateWindow,function
	.thumb_func
MapNamePopupCreateWindow:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x8
	add	r4, r0, #0
	ldr	r0, .L52
	ldr	r1, [r0, #0x4]		@ created by thumb_load_double_from_address
	ldr	r0, [r0]		@ created by thumb_load_double_from_address
	str	r0, [sp]
	str	r1, [sp, #0x4]
	mov	r6, #0x1d
	ldr	r0, .L52+0x4
	ldrb	r0, [r0, #0x1a]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L47	@cond_branch
	cmp	r0, #0x7f
	beq	.L48	@cond_branch
	ldr	r2, [sp]
	lsr	r1, r2, #0x18
	add	r1, r1, #0x5
	lsl	r1, r1, #0x18
	ldr	r0, .L52+0x8
	and	r0, r0, r2
	orr	r0, r0, r1
	str	r0, [sp]
	mov	r6, #0x27
	b	.L47
.L53:
	.align	2, 0
.L52:
	.word	.LC8
	.word	gMapHeader
	.word	0xffffff
.L48:
	ldr	r2, [sp]
	lsr	r1, r2, #0x18
	add	r1, r1, #0x8
	lsl	r1, r1, #0x18
	ldr	r0, .L54
	and	r0, r0, r2
	orr	r0, r0, r1
	str	r0, [sp]
	mov	r6, #0x2d
.L47:
	mov	r0, sp
	bl	AddWindow
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	cmp	r4, #0
	beq	.L50	@cond_branch
	mov	r0, #0x3
	bl	GetTextWindowPalette
	mov	r1, #0xd0
	mov	r2, #0x20
	bl	LoadPalette
	b	.L51
.L55:
	.align	2, 0
.L54:
	.word	0xffffff
.L50:
	mov	r0, #0x3
	bl	GetTextWindowPalette
	ldr	r1, .L56
	mov	r2, #0x10
	bl	CpuSet
.L51:
	lsl	r4, r5, #0x18
	lsr	r4, r4, #0x18
	add	r0, r4, #0
	add	r1, r6, #0
	bl	LoadStdWindowTiles
	add	r0, r4, #0
	add	r1, r6, #0
	mov	r2, #0xd
	bl	DrawTextBorderOuter
	add	r0, r4, #0
	bl	PutWindowTilemap
	add	r0, r5, #0
	bl	MapNamePopupPrintMapNameOnWindow
	add	r0, r4, #0
	mov	r1, #0x3
	bl	CopyWindowToVram
	add	r0, r5, #0
	add	sp, sp, #0x8
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L57:
	.align	2, 0
.L56:
	.word	gPlttBufferUnfaded+0x1a0
.Lfe5:
	.size	 MapNamePopupCreateWindow,.Lfe5-MapNamePopupCreateWindow
	.align	2, 0
	.type	 MapNamePopupPrintMapNameOnWindow,function
	.thumb_func
MapNamePopupPrintMapNameOnWindow:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x28
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	mov	r5, #0x70
	ldr	r4, .L62
	ldrb	r1, [r4, #0x14]
	add	r0, sp, #0xc
	mov	r2, #0x0
	bl	GetMapName
	add	r2, r0, #0
	mov	r0, #0x1a
	ldrsb	r0, [r4, r0]
	cmp	r0, #0
	beq	.L59	@cond_branch
	add	r1, r0, #0
	add	r0, r2, #0
	bl	MapNamePopupAppendFloorNum
	mov	r0, #0x1a
	ldrsb	r0, [r4, r0]
	mov	r5, #0xb0
	cmp	r0, #0x7f
	beq	.L59	@cond_branch
	mov	r5, #0x98
.L59:
	mov	r2, #0x1
	neg	r2, r2
	mov	r0, #0x2
	add	r1, sp, #0xc
	bl	GetStringWidth
	add	r4, r0, #0
	sub	r4, r5, r4
	lsr	r4, r4, #0x1
	lsl	r5, r6, #0x18
	lsr	r5, r5, #0x18
	add	r0, r5, #0
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r0, #0x2
	str	r0, [sp]
	mov	r0, #0xff
	str	r0, [sp, #0x4]
	mov	r0, #0x0
	str	r0, [sp, #0x8]
	add	r0, r5, #0
	mov	r1, #0x2
	add	r2, sp, #0xc
	add	r3, r4, #0
	bl	AddTextPrinterParameterized
	add	sp, sp, #0x28
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L63:
	.align	2, 0
.L62:
	.word	gMapHeader
.Lfe6:
	.size	 MapNamePopupPrintMapNameOnWindow,.Lfe6-MapNamePopupPrintMapNameOnWindow
	.align	2, 0
	.type	 MapNamePopupAppendFloorNum,function
	.thumb_func
MapNamePopupAppendFloorNum:
	push	{lr}
	add	r2, r0, #0
	lsl	r1, r1, #0x18
	lsr	r3, r1, #0x18
	asr	r1, r1, #0x18
	cmp	r1, #0
	beq	.L68	@cond_branch
	mov	r0, #0x0
	strb	r0, [r2]
	add	r2, r2, #0x1
	cmp	r1, #0x7f
	bne	.L66	@cond_branch
	ldr	r1, .L69
	add	r0, r2, #0
	bl	StringCopy
	b	.L68
.L70:
	.align	2, 0
.L69:
	.word	gText_Rooftop2
.L66:
	cmp	r1, #0
	bge	.L67	@cond_branch
	mov	r0, #0xbc
	strb	r0, [r2]
	add	r2, r2, #0x1
	neg	r0, r1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
.L67:
	lsl	r1, r3, #0x18
	asr	r1, r1, #0x18
	add	r0, r2, #0
	mov	r2, #0x0
	mov	r3, #0x2
	bl	ConvertIntToDecimalStringN
	add	r2, r0, #0
	add	r1, r2, #0
	mov	r0, #0xc0
	strb	r0, [r2]
	add	r2, r2, #0x1
	mov	r0, #0xff
	strb	r0, [r1, #0x1]
	add	r0, r2, #0
.L68:
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 MapNamePopupAppendFloorNum,.Lfe7-MapNamePopupAppendFloorNum
.text
	.align	2, 0 @ Don't pad with nop

