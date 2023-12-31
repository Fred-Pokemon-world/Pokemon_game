@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 sMovementScripts,object
	.size	 sMovementScripts,64
sMovementScripts:
	.space	64
.text
	.align	2, 0
	.globl	ScriptMovement_StartObjectMovementScript
	.type	 ScriptMovement_StartObjectMovementScript,function
	.thumb_func
ScriptMovement_StartObjectMovementScript:
	push	{r4, lr}
	add	sp, sp, #-0x4
	add	r4, r3, #0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	mov	r3, sp
	bl	TryGetObjectEventIdByLocalIdAndMap
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L3	@cond_branch
	mov	r0, #0x1
	b	.L5
.L3:
	ldr	r0, .L6
	bl	FuncIsActiveTask
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L4	@cond_branch
	mov	r0, #0x32
	bl	ScriptMovement_StartMoveObjects
.L4:
	bl	GetMoveObjectsTaskId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, sp
	ldrb	r1, [r1]
	add	r2, r4, #0
	bl	ScriptMovement_TryAddNewMovement
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L5:
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r1}
	bx	r1
.L7:
	.align	2, 0
.L6:
	.word	ScriptMovement_MoveObjects
.Lfe1:
	.size	 ScriptMovement_StartObjectMovementScript,.Lfe1-ScriptMovement_StartObjectMovementScript
	.align	2, 0
	.globl	ScriptMovement_IsObjectMovementFinished
	.type	 ScriptMovement_IsObjectMovementFinished,function
	.thumb_func
ScriptMovement_IsObjectMovementFinished:
	push	{r4, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	mov	r3, sp
	bl	TryGetObjectEventIdByLocalIdAndMap
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L10	@cond_branch
	bl	GetMoveObjectsTaskId
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r0, sp
	ldrb	r1, [r0]
	add	r0, r4, #0
	bl	GetMovementScriptIdFromObjectEventId
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0x10
	beq	.L10	@cond_branch
	add	r0, r4, #0
	bl	IsMovementScriptFinished
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.L11
.L10:
	mov	r0, #0x1
.L11:
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 ScriptMovement_IsObjectMovementFinished,.Lfe2-ScriptMovement_IsObjectMovementFinished
	.align	2, 0
	.globl	ScriptMovement_UnfreezeObjectEvents
	.type	 ScriptMovement_UnfreezeObjectEvents,function
	.thumb_func
ScriptMovement_UnfreezeObjectEvents:
	push	{r4, lr}
	bl	GetMoveObjectsTaskId
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0xff
	beq	.L13	@cond_branch
	add	r0, r4, #0
	bl	ScriptMovement_UnfreezeActiveObjects
	add	r0, r4, #0
	bl	DestroyTask
.L13:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe3:
	.size	 ScriptMovement_UnfreezeObjectEvents,.Lfe3-ScriptMovement_UnfreezeObjectEvents
	.align	2, 0
	.type	 ScriptMovement_StartMoveObjects,function
	.thumb_func
ScriptMovement_StartMoveObjects:
	push	{r4, r5, lr}
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	ldr	r0, .L20
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r2, #0x1
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r3, r1, #0x3
	ldr	r5, .L20+0x4
	ldr	r0, .L20+0x8
	add	r4, r0, #0
.L18:
	lsl	r0, r2, #0x1
	add	r0, r0, r3
	add	r0, r0, r5
	ldrh	r1, [r0]
	orr	r1, r1, r4
	strh	r1, [r0]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0xf
	bls	.L18	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L21:
	.align	2, 0
.L20:
	.word	ScriptMovement_MoveObjects
	.word	gTasks+0x8
	.word	0xffff
.Lfe4:
	.size	 ScriptMovement_StartMoveObjects,.Lfe4-ScriptMovement_StartMoveObjects
	.align	2, 0
	.type	 GetMoveObjectsTaskId,function
	.thumb_func
GetMoveObjectsTaskId:
	push	{lr}
	ldr	r0, .L23
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.L24:
	.align	2, 0
.L23:
	.word	ScriptMovement_MoveObjects
.Lfe5:
	.size	 GetMoveObjectsTaskId,.Lfe5-GetMoveObjectsTaskId
	.align	2, 0
	.type	 ScriptMovement_TryAddNewMovement,function
	.thumb_func
ScriptMovement_TryAddNewMovement:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r9, r2
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	add	r7, r5, #0
	lsl	r1, r1, #0x18
	lsr	r6, r1, #0x18
	mov	r8, r6
	add	r0, r5, #0
	add	r1, r6, #0
	bl	GetMovementScriptIdFromObjectEventId
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x10
	beq	.L26	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	bl	IsMovementScriptFinished
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L29	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	add	r2, r6, #0
	b	.L32
.L26:
	add	r0, r7, #0
	mov	r1, #0xff
	bl	GetMovementScriptIdFromObjectEventId
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x10
	beq	.L29	@cond_branch
	add	r0, r7, #0
	add	r1, r4, #0
	mov	r2, r8
.L32:
	mov	r3, r9
	bl	ScriptMovement_AddNewMovement
	mov	r0, #0x0
	b	.L31
.L29:
	mov	r0, #0x1
.L31:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 ScriptMovement_TryAddNewMovement,.Lfe6-ScriptMovement_TryAddNewMovement
	.align	2, 0
	.type	 GetMovementScriptIdFromObjectEventId,function
	.thumb_func
GetMovementScriptIdFromObjectEventId:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r3, r1, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L41
	add	r1, r1, r0
	add	r1, r1, #0x2
	mov	r2, #0x0
.L37:
	ldrb	r0, [r1]
	cmp	r0, r3
	bne	.L36	@cond_branch
	add	r0, r2, #0
	b	.L40
.L42:
	.align	2, 0
.L41:
	.word	gTasks+0x8
.L36:
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r1, r1, #0x1
	cmp	r2, #0xf
	bls	.L37	@cond_branch
	mov	r0, #0x10
.L40:
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 GetMovementScriptIdFromObjectEventId,.Lfe7-GetMovementScriptIdFromObjectEventId
	.align	2, 0
	.globl	LoadObjectEventIdPtrFromMovementScript
	.type	 LoadObjectEventIdPtrFromMovementScript,function
	.thumb_func
LoadObjectEventIdPtrFromMovementScript:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r3, r1, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L50
	add	r1, r1, r0
	add	r1, r1, #0x2
	str	r1, [r2]
	mov	r0, #0x0
	cmp	r0, r3
	bcs	.L45	@cond_branch
.L46:
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r1, #0x1
	cmp	r0, r3
	bcc	.L46	@cond_branch
	str	r1, [r2]
.L45:
	pop	{r0}
	bx	r0
.L51:
	.align	2, 0
.L50:
	.word	gTasks+0x8
.Lfe8:
	.size	 LoadObjectEventIdPtrFromMovementScript,.Lfe8-LoadObjectEventIdPtrFromMovementScript
	.align	2, 0
	.globl	SetObjectEventIdAtMovementScript
	.type	 SetObjectEventIdAtMovementScript,function
	.thumb_func
SetObjectEventIdAtMovementScript:
	push	{r4, lr}
	add	sp, sp, #-0x4
	add	r4, r2, #0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r2, sp
	bl	LoadObjectEventIdPtrFromMovementScript
	ldr	r0, [sp]
	strb	r4, [r0]
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 SetObjectEventIdAtMovementScript,.Lfe9-SetObjectEventIdAtMovementScript
	.align	2, 0
	.globl	LoadObjectEventIdFromMovementScript
	.type	 LoadObjectEventIdFromMovementScript,function
	.thumb_func
LoadObjectEventIdFromMovementScript:
	push	{r4, lr}
	add	sp, sp, #-0x4
	add	r4, r2, #0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r2, sp
	bl	LoadObjectEventIdPtrFromMovementScript
	ldr	r0, [sp]
	ldrb	r0, [r0]
	strb	r0, [r4]
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 LoadObjectEventIdFromMovementScript,.Lfe10-LoadObjectEventIdFromMovementScript
	.align	2, 0
	.type	 ClearMovementScriptFinished,function
	.thumb_func
ClearMovementScriptFinished:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	ldr	r2, .L55
	lsr	r1, r1, #0x16
	add	r1, r1, r2
	ldr	r2, [r1]
	mvn	r2, r2
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	ldr	r3, .L55+0x4
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r3
	ldrh	r0, [r1, #0x8]
	and	r2, r2, r0
	strh	r2, [r1, #0x8]
	bx	lr
.L56:
	.align	2, 0
.L55:
	.word	gBitTable
	.word	gTasks
.Lfe11:
	.size	 ClearMovementScriptFinished,.Lfe11-ClearMovementScriptFinished
	.align	2, 0
	.type	 SetMovementScriptFinished,function
	.thumb_func
SetMovementScriptFinished:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	ldr	r3, .L58
	lsl	r2, r0, #0x2
	add	r2, r2, r0
	lsl	r2, r2, #0x3
	add	r2, r2, r3
	ldr	r0, .L58+0x4
	lsr	r1, r1, #0x16
	add	r1, r1, r0
	ldr	r0, [r1]
	ldrh	r1, [r2, #0x8]
	orr	r0, r0, r1
	strh	r0, [r2, #0x8]
	bx	lr
.L59:
	.align	2, 0
.L58:
	.word	gTasks
	.word	gBitTable
.Lfe12:
	.size	 SetMovementScriptFinished,.Lfe12-SetMovementScriptFinished
	.align	2, 0
	.type	 IsMovementScriptFinished,function
	.thumb_func
IsMovementScriptFinished:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	ldr	r3, .L64
	lsl	r2, r0, #0x2
	add	r2, r2, r0
	lsl	r2, r2, #0x3
	add	r2, r2, r3
	ldr	r0, .L64+0x4
	lsr	r1, r1, #0x16
	add	r1, r1, r0
	ldr	r0, [r1]
	ldrh	r1, [r2, #0x8]
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L61	@cond_branch
	mov	r0, #0x0
	b	.L63
.L65:
	.align	2, 0
.L64:
	.word	gTasks
	.word	gBitTable
.L61:
	mov	r0, #0x1
.L63:
	pop	{r1}
	bx	r1
.Lfe13:
	.size	 IsMovementScriptFinished,.Lfe13-IsMovementScriptFinished
	.align	2, 0
	.type	 SetMovementScript,function
	.thumb_func
SetMovementScript:
	lsl	r0, r0, #0x18
	ldr	r2, .L67
	lsr	r0, r0, #0x16
	add	r0, r0, r2
	str	r1, [r0]
	bx	lr
.L68:
	.align	2, 0
.L67:
	.word	sMovementScripts
.Lfe14:
	.size	 SetMovementScript,.Lfe14-SetMovementScript
	.align	2, 0
	.type	 GetMovementScript,function
	.thumb_func
GetMovementScript:
	lsl	r0, r0, #0x18
	ldr	r1, .L70
	lsr	r0, r0, #0x16
	add	r0, r0, r1
	ldr	r0, [r0]
	bx	lr
.L71:
	.align	2, 0
.L70:
	.word	sMovementScripts
.Lfe15:
	.size	 GetMovementScript,.Lfe15-GetMovementScript
	.align	2, 0
	.type	 ScriptMovement_AddNewMovement,function
	.thumb_func
ScriptMovement_AddNewMovement:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	r5, r0, #0
	add	r4, r1, #0
	add	r6, r2, #0
	mov	r8, r3
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	add	r0, r5, #0
	add	r1, r4, #0
	bl	ClearMovementScriptFinished
	add	r0, r4, #0
	mov	r1, r8
	bl	SetMovementScript
	add	r0, r5, #0
	add	r1, r4, #0
	add	r2, r6, #0
	bl	SetObjectEventIdAtMovementScript
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe16:
	.size	 ScriptMovement_AddNewMovement,.Lfe16-ScriptMovement_AddNewMovement
	.align	2, 0
	.type	 ScriptMovement_UnfreezeActiveObjects,function
	.thumb_func
ScriptMovement_UnfreezeActiveObjects:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L80
	add	r1, r1, r0
	add	r4, r1, #0x2
	mov	r5, #0x0
.L77:
	ldrb	r0, [r4]
	cmp	r0, #0xff
	beq	.L76	@cond_branch
	add	r1, r0, #0
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L80+0x4
	add	r0, r0, r1
	bl	UnfreezeObjectEvent
.L76:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	add	r4, r4, #0x1
	cmp	r5, #0xf
	bls	.L77	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L81:
	.align	2, 0
.L80:
	.word	gTasks+0x8
	.word	gObjectEvents
.Lfe17:
	.size	 ScriptMovement_UnfreezeActiveObjects,.Lfe17-ScriptMovement_UnfreezeActiveObjects
	.align	2, 0
	.type	 ScriptMovement_MoveObjects,function
	.thumb_func
ScriptMovement_MoveObjects:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	mov	r5, #0x0
	mov	r6, sp
.L86:
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, sp
	bl	LoadObjectEventIdFromMovementScript
	ldrb	r0, [r6]
	cmp	r0, #0xff
	beq	.L85	@cond_branch
	add	r4, r0, #0
	add	r0, r5, #0
	bl	GetMovementScript
	add	r3, r0, #0
	add	r0, r7, #0
	add	r1, r5, #0
	add	r2, r4, #0
	bl	ScriptMovement_TakeStep
.L85:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0xf
	bls	.L86	@cond_branch
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe18:
	.size	 ScriptMovement_MoveObjects,.Lfe18-ScriptMovement_MoveObjects
	.align	2, 0
	.type	 ScriptMovement_TakeStep,function
	.thumb_func
ScriptMovement_TakeStep:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r6, r3, #0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r7, r0, #0
	lsl	r1, r1, #0x18
	lsr	r5, r1, #0x18
	mov	r8, r5
	lsl	r2, r2, #0x18
	lsr	r4, r2, #0x18
	add	r1, r5, #0
	bl	IsMovementScriptFinished
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L89	@cond_branch
	lsl	r0, r4, #0x3
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	ldr	r1, .L95
	add	r4, r0, r1
	add	r0, r4, #0
	bl	ObjectEventIsHeldMovementActive
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L91	@cond_branch
	add	r0, r4, #0
	bl	ObjectEventClearHeldMovementIfFinished
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L89	@cond_branch
.L91:
	ldrb	r1, [r6]
	cmp	r1, #0xfe
	bne	.L92	@cond_branch
	add	r0, r7, #0
	add	r1, r5, #0
	bl	SetMovementScriptFinished
	add	r0, r4, #0
	bl	FreezeObjectEvent
	b	.L89
.L96:
	.align	2, 0
.L95:
	.word	gObjectEvents
.L92:
	add	r0, r4, #0
	bl	ObjectEventSetHeldMovement
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L89	@cond_branch
	add	r6, r6, #0x1
	mov	r0, r8
	add	r1, r6, #0
	bl	SetMovementScript
.L89:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe19:
	.size	 ScriptMovement_TakeStep,.Lfe19-ScriptMovement_TakeStep
.text
	.align	2, 0 @ Don't pad with nop

