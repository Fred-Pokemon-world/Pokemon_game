@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 sMysteryEventScriptContext,object
	.size	 sMysteryEventScriptContext,116
sMysteryEventScriptContext:
	.byte	0x0
	.space	115
.text
	.align	2, 0
	.type	 CheckCompatibility,function
	.thumb_func
CheckCompatibility:
	push	{r4, lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r4, #0x1
	and	r0, r0, r4
	cmp	r0, #0
	beq	.L8	@cond_branch
	and	r1, r1, r4
	cmp	r1, #0
	beq	.L8	@cond_branch
	and	r2, r2, r4
	cmp	r2, #0
	beq	.L8	@cond_branch
	and	r3, r3, r4
	cmp	r3, #0
	beq	.L8	@cond_branch
	mov	r0, #0x1
	b	.L9
.L8:
	mov	r0, #0x0
.L9:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 CheckCompatibility,.Lfe1-CheckCompatibility
	.align	2, 0
	.type	 SetIncompatible,function
	.thumb_func
SetIncompatible:
	push	{lr}
	ldr	r0, .L11
	ldr	r1, .L11+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x3
	bl	SetMysteryEventScriptStatus
	pop	{r0}
	bx	r0
.L12:
	.align	2, 0
.L11:
	.word	gStringVar4
	.word	gText_MysteryGiftCantBeUsed
.Lfe2:
	.size	 SetIncompatible,.Lfe2-SetIncompatible
	.align	2, 0
	.type	 InitMysteryEventScript,function
	.thumb_func
InitMysteryEventScript:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	ldr	r1, .L14
	ldr	r2, .L14+0x4
	bl	InitScriptContext
	add	r0, r4, #0
	add	r1, r5, #0
	bl	SetupBytecodeScript
	str	r5, [r4, #0x64]
	mov	r0, #0x0
	str	r0, [r4, #0x68]
	str	r0, [r4, #0x6c]
	str	r0, [r4, #0x70]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L15:
	.align	2, 0
.L14:
	.word	gMysteryEventScriptCmdTable
	.word	gMysteryEventScriptCmdTableEnd
.Lfe3:
	.size	 InitMysteryEventScript,.Lfe3-InitMysteryEventScript
	.align	2, 0
	.type	 RunMysteryEventScriptCommand,function
	.thumb_func
RunMysteryEventScriptCommand:
	push	{r4, lr}
	add	r4, r0, #0
	bl	RunScriptCommand
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L17	@cond_branch
	ldr	r0, [r4, #0x70]
	cmp	r0, #0
	beq	.L17	@cond_branch
	mov	r0, #0x1
	b	.L19
.L17:
	mov	r0, #0x0
.L19:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 RunMysteryEventScriptCommand,.Lfe4-RunMysteryEventScriptCommand
	.align	2, 0
	.globl	MEventScript_InitContext
	.type	 MEventScript_InitContext,function
	.thumb_func
MEventScript_InitContext:
	push	{lr}
	add	r1, r0, #0
	ldr	r0, .L21
	bl	InitMysteryEventScript
	pop	{r0}
	bx	r0
.L22:
	.align	2, 0
.L21:
	.word	sMysteryEventScriptContext
.Lfe5:
	.size	 MEventScript_InitContext,.Lfe5-MEventScript_InitContext
	.align	2, 0
	.globl	MEventScript_Run
	.type	 MEventScript_Run,function
	.thumb_func
MEventScript_Run:
	push	{r4, r5, lr}
	add	r5, r0, #0
	ldr	r4, .L24
	add	r0, r4, #0
	bl	RunMysteryEventScriptCommand
	ldr	r1, [r4, #0x6c]
	str	r1, [r5]
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L25:
	.align	2, 0
.L24:
	.word	sMysteryEventScriptContext
.Lfe6:
	.size	 MEventScript_Run,.Lfe6-MEventScript_Run
	.align	2, 0
	.globl	RunMysteryEventScript
	.type	 RunMysteryEventScript,function
	.thumb_func
RunMysteryEventScript:
	push	{lr}
	add	sp, sp, #-0x4
	bl	MEventScript_InitContext
.L27:
	mov	r0, sp
	bl	MEventScript_Run
	cmp	r0, #0
	bne	.L27	@cond_branch
	ldr	r0, [sp]
	add	sp, sp, #0x4
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 RunMysteryEventScript,.Lfe7-RunMysteryEventScript
	.align	2, 0
	.globl	SetMysteryEventScriptStatus
	.type	 SetMysteryEventScriptStatus,function
	.thumb_func
SetMysteryEventScriptStatus:
	ldr	r1, .L32
	str	r0, [r1, #0x6c]
	bx	lr
.L33:
	.align	2, 0
.L32:
	.word	sMysteryEventScriptContext
.Lfe8:
	.size	 SetMysteryEventScriptStatus,.Lfe8-SetMysteryEventScriptStatus
	.align	2, 0
	.globl	MEScrCmd_end
	.type	 MEScrCmd_end,function
	.thumb_func
MEScrCmd_end:
	push	{lr}
	bl	StopScript
	mov	r0, #0x1
	pop	{r1}
	bx	r1
.Lfe9:
	.size	 MEScrCmd_end,.Lfe9-MEScrCmd_end
	.align	2, 0
	.globl	MEScrCmd_checkcompat
	.type	 MEScrCmd_checkcompat,function
	.thumb_func
MEScrCmd_checkcompat:
	push	{r4, r5, r6, r7, lr}
	add	r7, r0, #0
	bl	ScriptReadWord
	str	r0, [r7, #0x68]
	add	r0, r7, #0
	bl	ScriptReadHalfword
	add	r5, r0, #0
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	add	r0, r7, #0
	bl	ScriptReadWord
	add	r6, r0, #0
	add	r0, r7, #0
	bl	ScriptReadHalfword
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	add	r0, r7, #0
	bl	ScriptReadWord
	add	r3, r0, #0
	add	r0, r5, #0
	add	r1, r6, #0
	add	r2, r4, #0
	bl	CheckCompatibility
	cmp	r0, #0x1
	bne	.L36	@cond_branch
	str	r0, [r7, #0x70]
	b	.L37
.L36:
	bl	SetIncompatible
.L37:
	mov	r0, #0x1
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe10:
	.size	 MEScrCmd_checkcompat,.Lfe10-MEScrCmd_checkcompat
	.align	2, 0
	.globl	MEScrCmd_nop
	.type	 MEScrCmd_nop,function
	.thumb_func
MEScrCmd_nop:
	mov	r0, #0x0
	bx	lr
.Lfe11:
	.size	 MEScrCmd_nop,.Lfe11-MEScrCmd_nop
	.align	2, 0
	.globl	MEScrCmd_setstatus
	.type	 MEScrCmd_setstatus,function
	.thumb_func
MEScrCmd_setstatus:
	ldr	r1, [r0, #0x8]
	ldrb	r2, [r1]
	add	r1, r1, #0x1
	str	r1, [r0, #0x8]
	str	r2, [r0, #0x6c]
	mov	r0, #0x0
	bx	lr
.Lfe12:
	.size	 MEScrCmd_setstatus,.Lfe12-MEScrCmd_setstatus
	.align	2, 0
	.globl	MEScrCmd_setmsg
	.type	 MEScrCmd_setmsg,function
	.thumb_func
MEScrCmd_setmsg:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r0, [r4, #0x8]
	ldrb	r5, [r0]
	add	r0, r0, #0x1
	str	r0, [r4, #0x8]
	add	r0, r4, #0
	bl	ScriptReadWord
	ldr	r1, [r4, #0x68]
	sub	r0, r0, r1
	ldr	r1, [r4, #0x64]
	add	r1, r0, r1
	cmp	r5, #0xff
	beq	.L42	@cond_branch
	ldr	r0, [r4, #0x6c]
	cmp	r5, r0
	bne	.L41	@cond_branch
.L42:
	ldr	r0, .L43
	bl	StringExpandPlaceholders
.L41:
	mov	r0, #0x0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L44:
	.align	2, 0
.L43:
	.word	gStringVar4
.Lfe13:
	.size	 MEScrCmd_setmsg,.Lfe13-MEScrCmd_setmsg
	.align	2, 0
	.globl	MEScrCmd_runscript
	.type	 MEScrCmd_runscript,function
	.thumb_func
MEScrCmd_runscript:
	push	{r4, lr}
	add	r4, r0, #0
	bl	ScriptReadWord
	ldr	r1, [r4, #0x68]
	sub	r0, r0, r1
	ldr	r1, [r4, #0x64]
	add	r0, r0, r1
	bl	RunScriptImmediately
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 MEScrCmd_runscript,.Lfe14-MEScrCmd_runscript
	.align	2, 0
	.globl	MEScrCmd_setenigmaberry
	.type	 MEScrCmd_setenigmaberry,function
	.thumb_func
MEScrCmd_setenigmaberry:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r7, r0, #0
	bl	IsEnigmaBerryValid
	mov	r8, r0
	add	r0, r7, #0
	bl	ScriptReadWord
	add	r4, r0, #0
	ldr	r0, [r7, #0x68]
	sub	r4, r4, r0
	ldr	r0, [r7, #0x64]
	add	r4, r4, r0
	ldr	r0, .L53
	mov	r9, r0
	ldr	r6, .L53+0x4
	ldr	r1, [r6]
	ldr	r5, .L53+0x8
	add	r1, r1, r5
	mov	r2, #0x7
	bl	StringCopyN
	add	r0, r4, #0
	bl	SetEnigmaBerry
	ldr	r4, .L53+0xc
	ldr	r1, [r6]
	add	r1, r1, r5
	add	r0, r4, #0
	mov	r2, #0x7
	bl	StringCopyN
	mov	r0, r8
	cmp	r0, #0
	bne	.L47	@cond_branch
	ldr	r0, .L53+0x10
	ldr	r1, .L53+0x14
	b	.L48
.L54:
	.align	2, 0
.L53:
	.word	gStringVar1
	.word	gSaveBlock1Ptr
	.word	0x30ec
	.word	gStringVar2
	.word	gStringVar4
	.word	gText_MysteryGiftBerry
.L47:
	mov	r0, r9
	add	r1, r4, #0
	bl	StringCompare
	cmp	r0, #0
	beq	.L49	@cond_branch
	ldr	r0, .L55
	ldr	r1, .L55+0x4
	b	.L48
.L56:
	.align	2, 0
.L55:
	.word	gStringVar4
	.word	gText_MysteryGiftBerryTransform
.L49:
	ldr	r0, .L57
	ldr	r1, .L57+0x4
.L48:
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r7, #0x6c]
	bl	IsEnigmaBerryValid
	cmp	r0, #0x1
	bne	.L51	@cond_branch
	ldr	r0, .L57+0x8
	mov	r1, #0x1
	bl	VarSet
	b	.L52
.L58:
	.align	2, 0
.L57:
	.word	gStringVar4
	.word	gText_MysteryGiftBerryObtained
	.word	0x4033
.L51:
	mov	r0, #0x1
	str	r0, [r7, #0x6c]
.L52:
	mov	r0, #0x0
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe15:
	.size	 MEScrCmd_setenigmaberry,.Lfe15-MEScrCmd_setenigmaberry
	.align	2, 0
	.globl	MEScrCmd_giveribbon
	.type	 MEScrCmd_giveribbon,function
	.thumb_func
MEScrCmd_giveribbon:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r2, [r4, #0x8]
	ldrb	r0, [r2]
	add	r2, r2, #0x1
	str	r2, [r4, #0x8]
	ldrb	r1, [r2]
	add	r2, r2, #0x1
	str	r2, [r4, #0x8]
	bl	GiveGiftRibbonToParty
	ldr	r0, .L60
	ldr	r1, .L60+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L61:
	.align	2, 0
.L60:
	.word	gStringVar4
	.word	gText_MysteryGiftSpecialRibbon
.Lfe16:
	.size	 MEScrCmd_giveribbon,.Lfe16-MEScrCmd_giveribbon
	.align	2, 0
	.globl	MEScrCmd_initramscript
	.type	 MEScrCmd_initramscript,function
	.thumb_func
MEScrCmd_initramscript:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	add	sp, sp, #-0x4
	add	r4, r0, #0
	ldr	r0, [r4, #0x8]
	ldrb	r1, [r0]
	mov	r9, r1
	add	r0, r0, #0x1
	str	r0, [r4, #0x8]
	ldrb	r1, [r0]
	mov	r8, r1
	add	r1, r0, #0x1
	str	r1, [r4, #0x8]
	ldrb	r6, [r0, #0x1]
	add	r1, r1, #0x1
	str	r1, [r4, #0x8]
	add	r0, r4, #0
	bl	ScriptReadWord
	add	r5, r0, #0
	ldr	r0, [r4, #0x68]
	sub	r5, r5, r0
	ldr	r0, [r4, #0x64]
	add	r5, r5, r0
	add	r0, r4, #0
	bl	ScriptReadWord
	add	r1, r0, #0
	ldr	r0, [r4, #0x68]
	sub	r1, r1, r0
	ldr	r0, [r4, #0x64]
	add	r1, r1, r0
	sub	r1, r1, r5
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	str	r6, [sp]
	add	r0, r5, #0
	mov	r2, r9
	mov	r3, r8
	bl	InitRamScript
	mov	r0, #0x0
	add	sp, sp, #0x4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe17:
	.size	 MEScrCmd_initramscript,.Lfe17-MEScrCmd_initramscript
	.align	2, 0
	.globl	MEScrCmd_givenationaldex
	.type	 MEScrCmd_givenationaldex,function
	.thumb_func
MEScrCmd_givenationaldex:
	push	{r4, lr}
	add	r4, r0, #0
	bl	EnableNationalPokedex
	ldr	r0, .L64
	ldr	r1, .L64+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L65:
	.align	2, 0
.L64:
	.word	gStringVar4
	.word	gText_MysteryGiftNationalDex
.Lfe18:
	.size	 MEScrCmd_givenationaldex,.Lfe18-MEScrCmd_givenationaldex
	.align	2, 0
	.globl	MEScrCmd_addrareword
	.type	 MEScrCmd_addrareword,function
	.thumb_func
MEScrCmd_addrareword:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r1, [r4, #0x8]
	ldrb	r0, [r1]
	add	r1, r1, #0x1
	str	r1, [r4, #0x8]
	bl	EnableRareWord
	ldr	r0, .L67
	ldr	r1, .L67+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L68:
	.align	2, 0
.L67:
	.word	gStringVar4
	.word	gText_MysteryGiftRareWord
.Lfe19:
	.size	 MEScrCmd_addrareword,.Lfe19-MEScrCmd_addrareword
	.align	2, 0
	.globl	MEScrCmd_setrecordmixinggift
	.type	 MEScrCmd_setrecordmixinggift,function
	.thumb_func
MEScrCmd_setrecordmixinggift:
	push	{r4, lr}
	add	r4, r0, #0
	bl	SetIncompatible
	mov	r0, #0x0
	str	r0, [r4, #0x70]
	mov	r0, #0x1
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe20:
	.size	 MEScrCmd_setrecordmixinggift,.Lfe20-MEScrCmd_setrecordmixinggift
	.align	2, 0
	.globl	MEScrCmd_givepokemon
	.type	 MEScrCmd_givepokemon,function
	.thumb_func
MEScrCmd_givepokemon:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x88
	add	r6, r0, #0
	bl	ScriptReadWord
	ldr	r1, [r6, #0x68]
	sub	r0, r0, r1
	ldr	r1, [r6, #0x64]
	add	r5, r0, r1
	mov	r0, #0x64
	add	r0, r0, r5
	mov	r8, r0
	add	r4, sp, #0x24
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, #0x64
	bl	memcpy
	add	r0, r4, #0
	mov	r1, #0x41
	bl	GetMonData
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	mov	r0, #0xce
	lsl	r0, r0, #0x1
	cmp	r4, r0
	bne	.L71	@cond_branch
	ldr	r0, .L78
	ldr	r1, .L78+0x4
	mov	r2, #0xb
	bl	StringCopyN
	b	.L72
.L79:
	.align	2, 0
.L78:
	.word	gStringVar1
	.word	gText_EggNickname
.L71:
	ldr	r0, .L80
	ldr	r1, .L80+0x4
	mov	r2, #0xb
	bl	StringCopyN
.L72:
	ldr	r0, .L80+0x8
	ldrb	r0, [r0]
	cmp	r0, #0x6
	bne	.L73	@cond_branch
	ldr	r0, .L80+0xc
	ldr	r1, .L80+0x10
	bl	StringExpandPlaceholders
	mov	r0, #0x3
	b	.L77
.L81:
	.align	2, 0
.L80:
	.word	gStringVar1
	.word	gText_MenuPokemon
	.word	gPlayerPartyCount
	.word	gStringVar4
	.word	gText_MysteryGiftFullParty
.L73:
	ldr	r7, .L82
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, #0x64
	bl	memcpy
	mov	r0, sp
	mov	r1, r8
	mov	r2, #0x24
	bl	memcpy
	mov	r0, #0xce
	lsl	r0, r0, #0x1
	cmp	r4, r0
	beq	.L75	@cond_branch
	add	r0, r4, #0
	bl	SpeciesToNationalPokedexNum
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	add	r0, r4, #0
	mov	r1, #0x2
	bl	GetSetPokedexFlag
	add	r0, r4, #0
	mov	r1, #0x3
	bl	GetSetPokedexFlag
.L75:
	add	r0, r7, #0
	mov	r1, #0xc
	bl	GetMonData
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	ItemIsMail
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L76	@cond_branch
	add	r0, r7, #0
	mov	r1, sp
	bl	GiveMailToMon2
.L76:
	bl	CompactPartySlots
	bl	CalculatePlayerPartyCount
	ldr	r0, .L82+0x4
	ldr	r1, .L82+0x8
	bl	StringExpandPlaceholders
	mov	r0, #0x2
.L77:
	str	r0, [r6, #0x6c]
	mov	r0, #0x0
	add	sp, sp, #0x88
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L83:
	.align	2, 0
.L82:
	.word	gPlayerParty+0x1f4
	.word	gStringVar4
	.word	gText_MysteryGiftSentOver
.Lfe21:
	.size	 MEScrCmd_givepokemon,.Lfe21-MEScrCmd_givepokemon
	.align	2, 0
	.globl	MEScrCmd_addtrainer
	.type	 MEScrCmd_addtrainer,function
	.thumb_func
MEScrCmd_addtrainer:
	push	{r4, lr}
	add	r4, r0, #0
	bl	ScriptReadWord
	add	r1, r0, #0
	ldr	r0, [r4, #0x68]
	sub	r1, r1, r0
	ldr	r0, [r4, #0x64]
	add	r1, r1, r0
	ldr	r0, .L85
	ldr	r0, [r0]
	mov	r2, #0x94
	lsl	r2, r2, #0x3
	add	r0, r0, r2
	mov	r2, #0xbc
	bl	memcpy
	bl	ValidateEReaderTrainer
	ldr	r0, .L85+0x4
	ldr	r1, .L85+0x8
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L86:
	.align	2, 0
.L85:
	.word	gSaveBlock2Ptr
	.word	gStringVar4
	.word	gText_MysteryGiftNewTrainer
.Lfe22:
	.size	 MEScrCmd_addtrainer,.Lfe22-MEScrCmd_addtrainer
	.align	2, 0
	.globl	MEScrCmd_enableresetrtc
	.type	 MEScrCmd_enableresetrtc,function
	.thumb_func
MEScrCmd_enableresetrtc:
	push	{r4, lr}
	add	r4, r0, #0
	bl	SetIncompatible
	mov	r0, #0x0
	str	r0, [r4, #0x70]
	mov	r0, #0x1
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe23:
	.size	 MEScrCmd_enableresetrtc,.Lfe23-MEScrCmd_enableresetrtc
	.align	2, 0
	.globl	MEScrCmd_checksum
	.type	 MEScrCmd_checksum,function
	.thumb_func
MEScrCmd_checksum:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	bl	ScriptReadWord
	add	r5, r0, #0
	add	r0, r6, #0
	bl	ScriptReadWord
	add	r4, r0, #0
	ldr	r0, [r6, #0x68]
	sub	r4, r4, r0
	ldr	r0, [r6, #0x64]
	add	r4, r4, r0
	add	r0, r6, #0
	bl	ScriptReadWord
	add	r1, r0, #0
	ldr	r0, [r6, #0x68]
	sub	r1, r1, r0
	ldr	r0, [r6, #0x64]
	add	r1, r1, r0
	sub	r1, r1, r4
	add	r0, r4, #0
	bl	CalcByteArraySum
	cmp	r5, r0
	beq	.L89	@cond_branch
	mov	r0, #0x0
	str	r0, [r6, #0x70]
	mov	r0, #0x1
	str	r0, [r6, #0x6c]
.L89:
	mov	r0, #0x1
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe24:
	.size	 MEScrCmd_checksum,.Lfe24-MEScrCmd_checksum
	.align	2, 0
	.globl	MEScrCmd_crc
	.type	 MEScrCmd_crc,function
	.thumb_func
MEScrCmd_crc:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	bl	ScriptReadWord
	add	r5, r0, #0
	add	r0, r6, #0
	bl	ScriptReadWord
	add	r4, r0, #0
	ldr	r0, [r6, #0x68]
	sub	r4, r4, r0
	ldr	r0, [r6, #0x64]
	add	r4, r4, r0
	add	r0, r6, #0
	bl	ScriptReadWord
	add	r1, r0, #0
	ldr	r0, [r6, #0x68]
	sub	r1, r1, r0
	ldr	r0, [r6, #0x64]
	add	r1, r1, r0
	sub	r1, r1, r4
	add	r0, r4, #0
	bl	CalcCRC16
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r5, r0
	beq	.L91	@cond_branch
	mov	r0, #0x0
	str	r0, [r6, #0x70]
	mov	r0, #0x1
	str	r0, [r6, #0x6c]
.L91:
	mov	r0, #0x1
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe25:
	.size	 MEScrCmd_crc,.Lfe25-MEScrCmd_crc
.text
	.align	2, 0 @ Don't pad with nop

