@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	2, 0
	.type	 sQLGfxTransitions,object
sQLGfxTransitions:
	.word	QL_GfxTransition_Normal
	.word	QL_GfxTransition_Bike
	.word	QL_GfxTransition_Fish
	.word	QL_GfxTransition_StartSurf
	.word	QL_GfxTransition_StopSurfSouth
	.word	QL_GfxTransition_StopSurfNorth
	.word	QL_GfxTransition_StopSurfWest
	.word	QL_GfxTransition_StopSurfEast
	.word	QL_GfxTransition_VSSeeker
	.size	 sQLGfxTransitions,36
.text
	.align	2, 0
	.globl	QuestLogUpdatePlayerSprite
	.type	 QuestLogUpdatePlayerSprite,function
	.thumb_func
QuestLogUpdatePlayerSprite:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0x8
	bhi	.L3	@cond_branch
	ldr	r0, .L4
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r0, [r1]
	bl	_call_via_r0
.L3:
	pop	{r0}
	bx	r0
.L5:
	.align	2, 0
.L4:
	.word	sQLGfxTransitions
.Lfe1:
	.size	 QuestLogUpdatePlayerSprite,.Lfe1-QuestLogUpdatePlayerSprite
	.align	2, 0
	.globl	QuestLogTryRecordPlayerAvatarGfxTransition
	.type	 QuestLogTryRecordPlayerAvatarGfxTransition,function
	.thumb_func
QuestLogTryRecordPlayerAvatarGfxTransition:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	ldr	r0, .L9
	ldrb	r0, [r0]
	cmp	r0, #0x2
	beq	.L7	@cond_branch
	mov	r0, #0x0
	b	.L8
.L10:
	.align	2, 0
.L9:
	.word	gQuestLogPlaybackState
.L7:
	add	r0, r1, #0
	bl	QuestLogRecordPlayerAvatarGfxTransition
	mov	r0, #0x1
.L8:
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 QuestLogTryRecordPlayerAvatarGfxTransition,.Lfe2-QuestLogTryRecordPlayerAvatarGfxTransition
	.align	2, 0
	.globl	QuestLogCallUpdatePlayerSprite
	.type	 QuestLogCallUpdatePlayerSprite,function
	.thumb_func
QuestLogCallUpdatePlayerSprite:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	QuestLogUpdatePlayerSprite
	pop	{r0}
	bx	r0
.Lfe3:
	.size	 QuestLogCallUpdatePlayerSprite,.Lfe3-QuestLogCallUpdatePlayerSprite
	.align	2, 0
	.type	 QL_GfxTransition_Normal,function
	.thumb_func
QL_GfxTransition_Normal:
	push	{r4, lr}
	ldr	r0, .L13
	ldrb	r0, [r0, #0x5]
	lsl	r4, r0, #0x3
	add	r4, r4, r0
	lsl	r4, r4, #0x2
	ldr	r0, .L13+0x4
	add	r4, r4, r0
	mov	r0, #0x0
	bl	GetPlayerAvatarGraphicsIdByStateId
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	QL_SetObjectGraphicsId
	ldrb	r1, [r4, #0x18]
	lsr	r1, r1, #0x4
	add	r0, r4, #0
	bl	ObjectEventTurn
	mov	r0, #0x1
	bl	SetPlayerAvatarStateMask
	pop	{r4}
	pop	{r0}
	bx	r0
.L14:
	.align	2, 0
.L13:
	.word	gPlayerAvatar
	.word	gObjectEvents
.Lfe4:
	.size	 QL_GfxTransition_Normal,.Lfe4-QL_GfxTransition_Normal
	.align	2, 0
	.type	 QL_GfxTransition_Bike,function
	.thumb_func
QL_GfxTransition_Bike:
	push	{r4, lr}
	ldr	r0, .L16
	ldrb	r0, [r0, #0x5]
	lsl	r4, r0, #0x3
	add	r4, r4, r0
	lsl	r4, r4, #0x2
	ldr	r0, .L16+0x4
	add	r4, r4, r0
	mov	r0, #0x1
	bl	GetPlayerAvatarGraphicsIdByStateId
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	QL_SetObjectGraphicsId
	ldrb	r1, [r4, #0x18]
	lsr	r1, r1, #0x4
	add	r0, r4, #0
	bl	ObjectEventTurn
	mov	r0, #0x2
	bl	SetPlayerAvatarStateMask
	mov	r0, #0x0
	mov	r1, #0x0
	bl	BikeClearState
	pop	{r4}
	pop	{r0}
	bx	r0
.L17:
	.align	2, 0
.L16:
	.word	gPlayerAvatar
	.word	gObjectEvents
.Lfe5:
	.size	 QL_GfxTransition_Bike,.Lfe5-QL_GfxTransition_Bike
	.align	2, 0
	.type	 QL_GfxTransition_Fish,function
	.thumb_func
QL_GfxTransition_Fish:
	push	{r4, r5, r6, lr}
	ldr	r6, .L22
	ldrb	r1, [r6, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L22+0x4
	add	r4, r0, r1
	ldrb	r1, [r4, #0x4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L22+0x8
	add	r5, r0, r1
	ldr	r0, .L22+0xc
	ldrb	r0, [r0]
	cmp	r0, #0x1
	beq	.L20	@cond_branch
	cmp	r0, #0x3
	bne	.L19	@cond_branch
.L20:
	bl	LockPlayerFieldControls
	mov	r4, #0x0
	mov	r0, #0x1
	strb	r0, [r6, #0x6]
	ldr	r0, .L22+0x10
	mov	r1, #0xff
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L22+0x14
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	strh	r4, [r1, #0x8]
	b	.L21
.L23:
	.align	2, 0
.L22:
	.word	gPlayerAvatar
	.word	gObjectEvents
	.word	gSprites
	.word	gQuestLogPlaybackState
	.word	Task_QLFishMovement
	.word	gTasks
.L19:
	mov	r0, #0x4
	bl	GetPlayerAvatarGraphicsIdByStateId
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	QL_SetObjectGraphicsId
	ldrb	r0, [r4, #0x18]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1c
	bl	GetFishingDirectionAnimNum
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r5, #0
	bl	StartSpriteAnim
.L21:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 QL_GfxTransition_Fish,.Lfe6-QL_GfxTransition_Fish
	.align	2, 0
	.type	 Task_QLFishMovement,function
	.thumb_func
Task_QLFishMovement:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	ldr	r0, .L39
	mov	r9, r0
	ldrb	r1, [r0, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L39+0x4
	add	r5, r0, r1
	ldrb	r1, [r5, #0x4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L39+0x8
	add	r7, r0, r1
	ldr	r1, .L39+0xc
	mov	r2, r8
	lsl	r0, r2, #0x2
	add	r0, r0, r8
	lsl	r0, r0, #0x3
	add	r4, r0, r1
	mov	r0, #0x8
	ldrsh	r6, [r4, r0]
	cmp	r6, #0x1
	beq	.L27	@cond_branch
	cmp	r6, #0x1
	bgt	.L37	@cond_branch
	cmp	r6, #0
	beq	.L26	@cond_branch
	b	.L25
.L40:
	.align	2, 0
.L39:
	.word	gPlayerAvatar
	.word	gObjectEvents
	.word	gSprites
	.word	gTasks
.L37:
	cmp	r6, #0x2
	beq	.L30	@cond_branch
	cmp	r6, #0x3
	beq	.L31	@cond_branch
	b	.L25
.L26:
	add	r0, r5, #0
	bl	ObjectEventClearHeldMovementIfActive
	ldrb	r0, [r5, #0x1]
	mov	r1, #0x8
	orr	r0, r0, r1
	strb	r0, [r5, #0x1]
	mov	r0, #0x4
	bl	GetPlayerAvatarGraphicsIdByStateId
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r5, #0
	bl	QL_SetObjectGraphicsId
	ldrb	r0, [r5, #0x18]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1c
	bl	GetFishingDirectionAnimNum
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r7, #0
	bl	StartSpriteAnim
	ldrh	r0, [r4, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x8]
	strh	r6, [r4, #0xa]
	b	.L25
.L27:
	add	r0, r7, #0
	bl	AlignFishingAnimationFrames
	ldrh	r1, [r4, #0xa]
	mov	r2, #0xa
	ldrsh	r0, [r4, r2]
	cmp	r0, #0x3b
	bgt	.L38	@cond_branch
	add	r0, r1, #0x1
	strh	r0, [r4, #0xa]
	b	.L25
.L30:
	bl	GetPlayerFacingDirection
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	GetFishingNoCatchDirectionAnimNum
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r7, #0
	bl	StartSpriteAnim
.L38:
	ldrh	r0, [r4, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x8]
	b	.L25
.L31:
	add	r0, r7, #0
	bl	AlignFishingAnimationFrames
	add	r0, r7, #0
	add	r0, r0, #0x3f
	ldrb	r1, [r0]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L25	@cond_branch
	mov	r0, r9
	ldrb	r1, [r0]
	mov	r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L33	@cond_branch
	mov	r0, #0x0
	bl	GetPlayerAvatarGraphicsIdByStateId
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r5, #0
	bl	QL_SetObjectGraphicsId
	b	.L34
.L33:
	mov	r0, #0x2
	bl	GetPlayerAvatarGraphicsIdByStateId
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r5, #0
	bl	QL_SetObjectGraphicsId
.L34:
	ldrb	r1, [r5, #0x18]
	lsr	r1, r1, #0x4
	add	r0, r5, #0
	bl	ObjectEventTurn
	mov	r0, #0x0
	strh	r0, [r7, #0x24]
	strh	r0, [r7, #0x26]
	bl	UnlockPlayerFieldControls
	mov	r0, r8
	bl	DestroyTask
.L25:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 Task_QLFishMovement,.Lfe7-Task_QLFishMovement
	.align	2, 0
	.type	 QL_GfxTransition_StartSurf,function
	.thumb_func
QL_GfxTransition_StartSurf:
	push	{r4, r5, lr}
	ldr	r5, .L43
	ldrb	r1, [r5, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L43+0x4
	add	r4, r0, r1
	ldrb	r1, [r5]
	mov	r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L42	@cond_branch
	mov	r0, #0x2
	bl	GetPlayerAvatarGraphicsIdByStateId
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	QL_SetObjectGraphicsId
	ldrb	r1, [r4, #0x18]
	lsr	r1, r1, #0x4
	add	r0, r4, #0
	bl	ObjectEventTurn
	mov	r0, #0x8
	bl	SetPlayerAvatarStateMask
	ldr	r1, .L43+0x8
	mov	r2, #0x10
	ldrsh	r0, [r4, r2]
	str	r0, [r1]
	mov	r2, #0x12
	ldrsh	r0, [r4, r2]
	str	r0, [r1, #0x4]
	ldrb	r0, [r5, #0x5]
	str	r0, [r1, #0x8]
	mov	r0, #0x8
	bl	FieldEffectStart
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strb	r0, [r4, #0x1a]
	mov	r1, #0x1
	bl	SetSurfBlob_BobState
.L42:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L44:
	.align	2, 0
.L43:
	.word	gPlayerAvatar
	.word	gObjectEvents
	.word	gFieldEffectArguments
.Lfe8:
	.size	 QL_GfxTransition_StartSurf,.Lfe8-QL_GfxTransition_StartSurf
	.align	2, 0
	.type	 QL_GfxTransition_VSSeeker,function
	.thumb_func
QL_GfxTransition_VSSeeker:
	push	{lr}
	mov	r0, #0x41
	bl	FieldEffectStart
	ldr	r0, .L46
	mov	r1, #0x0
	bl	CreateTask
	pop	{r0}
	bx	r0
.L47:
	.align	2, 0
.L46:
	.word	Task_QLVSSeekerMovement
.Lfe9:
	.size	 QL_GfxTransition_VSSeeker,.Lfe9-QL_GfxTransition_VSSeeker
	.align	2, 0
	.type	 Task_QLVSSeekerMovement,function
	.thumb_func
Task_QLVSSeekerMovement:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r0, #0x41
	bl	FieldEffectActiveListContains
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L49	@cond_branch
	bl	UnfreezeObjectEvents
	bl	UnlockPlayerFieldControls
	add	r0, r4, #0
	bl	DestroyTask
.L49:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 Task_QLVSSeekerMovement,.Lfe10-Task_QLVSSeekerMovement
	.align	2, 0
	.type	 QL_SetObjectGraphicsId,function
	.thumb_func
QL_SetObjectGraphicsId:
	push	{lr}
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	bl	ObjectEventSetGraphicsId
	pop	{r0}
	bx	r0
.Lfe11:
	.size	 QL_SetObjectGraphicsId,.Lfe11-QL_SetObjectGraphicsId
	.align	2, 0
	.type	 QL_GfxTransition_StopSurfSouth,function
	.thumb_func
QL_GfxTransition_StopSurfSouth:
	push	{lr}
	mov	r0, #0x1
	bl	CreateStopSurfingTask_NoMusicChange
	pop	{r0}
	bx	r0
.Lfe12:
	.size	 QL_GfxTransition_StopSurfSouth,.Lfe12-QL_GfxTransition_StopSurfSouth
	.align	2, 0
	.type	 QL_GfxTransition_StopSurfNorth,function
	.thumb_func
QL_GfxTransition_StopSurfNorth:
	push	{lr}
	mov	r0, #0x2
	bl	CreateStopSurfingTask_NoMusicChange
	pop	{r0}
	bx	r0
.Lfe13:
	.size	 QL_GfxTransition_StopSurfNorth,.Lfe13-QL_GfxTransition_StopSurfNorth
	.align	2, 0
	.type	 QL_GfxTransition_StopSurfWest,function
	.thumb_func
QL_GfxTransition_StopSurfWest:
	push	{lr}
	mov	r0, #0x3
	bl	CreateStopSurfingTask_NoMusicChange
	pop	{r0}
	bx	r0
.Lfe14:
	.size	 QL_GfxTransition_StopSurfWest,.Lfe14-QL_GfxTransition_StopSurfWest
	.align	2, 0
	.type	 QL_GfxTransition_StopSurfEast,function
	.thumb_func
QL_GfxTransition_StopSurfEast:
	push	{lr}
	mov	r0, #0x4
	bl	CreateStopSurfingTask_NoMusicChange
	pop	{r0}
	bx	r0
.Lfe15:
	.size	 QL_GfxTransition_StopSurfEast,.Lfe15-QL_GfxTransition_StopSurfEast
.text
	.align	2, 0 @ Don't pad with nop

