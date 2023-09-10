@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.type	 IsCurMapInLocationList,function
	.thumb_func
IsCurMapInLocationList:
	push	{r4, lr}
	add	r2, r0, #0
	ldr	r0, .L10
	ldr	r0, [r0]
	mov	r1, #0x4
	ldrsb	r1, [r0, r1]
	lsl	r1, r1, #0x8
	ldrb	r0, [r0, #0x5]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	add	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
	ldrh	r0, [r2]
	ldr	r1, .L10+0x4
	cmp	r0, r1
	beq	.L4	@cond_branch
	add	r4, r1, #0
	add	r1, r2, #0
.L6:
	ldrh	r0, [r1]
	cmp	r0, r3
	bne	.L5	@cond_branch
	mov	r0, #0x1
	b	.L9
.L11:
	.align	2, 0
.L10:
	.word	gSaveBlock1Ptr
	.word	0xffff
.L5:
	add	r1, r1, #0x2
	ldrh	r0, [r1]
	cmp	r0, r4
	bne	.L6	@cond_branch
.L4:
	mov	r0, #0x0
.L9:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 IsCurMapInLocationList,.Lfe1-IsCurMapInLocationList
	.section .rodata
	.align	1, 0
	.type	 sSaveLocationPokeCenterList,object
sSaveLocationPokeCenterList:
	.short	0x504
	.short	0x505
	.short	0x605
	.short	0x606
	.short	0x703
	.short	0x704
	.short	0x800
	.short	0x801
	.short	0x901
	.short	0x902
	.short	0xa0c
	.short	0xa0d
	.short	0xb05
	.short	0xb06
	.short	0xc05
	.short	0xc06
	.short	0xd00
	.short	0xd01
	.short	0xe06
	.short	0xe07
	.short	0x1000
	.short	0x1001
	.short	0x1500
	.short	0x1501
	.short	0x2000
	.short	0x2001
	.short	0x2102
	.short	0x2103
	.short	0x2201
	.short	0x2202
	.short	0x2301
	.short	0x2302
	.short	0x2400
	.short	0x2401
	.short	0x1f03
	.short	0x1f04
	.short	0x2500
	.short	0x2501
	.short	0x0
	.short	0x1
	.short	0x3
	.short	0x4
	.short	0xffff
	.size	 sSaveLocationPokeCenterList,86
.text
	.align	2, 0
	.globl	IsCurMapPokeCenter
	.type	 IsCurMapPokeCenter,function
	.thumb_func
IsCurMapPokeCenter:
	push	{lr}
	ldr	r0, .L13
	bl	IsCurMapInLocationList
	pop	{r1}
	bx	r1
.L14:
	.align	2, 0
.L13:
	.word	sSaveLocationPokeCenterList
.Lfe2:
	.size	 IsCurMapPokeCenter,.Lfe2-IsCurMapPokeCenter
	.section .rodata
	.align	1, 0
	.type	 sSaveLocationReloadLocList,object
sSaveLocationReloadLocList:
	.short	0xffff
	.size	 sSaveLocationReloadLocList,2
.text
	.align	2, 0
	.type	 IsCurMapReloadLocation,function
	.thumb_func
IsCurMapReloadLocation:
	push	{lr}
	ldr	r0, .L16
	bl	IsCurMapInLocationList
	pop	{r1}
	bx	r1
.L17:
	.align	2, 0
.L16:
	.word	sSaveLocationReloadLocList
.Lfe3:
	.size	 IsCurMapReloadLocation,.Lfe3-IsCurMapReloadLocation
	.section .rodata
	.align	1, 0
	.type	 sEmptyMapList,object
sEmptyMapList:
	.short	0xffff
	.size	 sEmptyMapList,2
.text
	.align	2, 0
	.type	 IsCurMapInEmptyList,function
	.thumb_func
IsCurMapInEmptyList:
	push	{lr}
	ldr	r0, .L19
	bl	IsCurMapInLocationList
	pop	{r1}
	bx	r1
.L20:
	.align	2, 0
.L19:
	.word	sEmptyMapList
.Lfe4:
	.size	 IsCurMapInEmptyList,.Lfe4-IsCurMapInEmptyList
	.align	2, 0
	.type	 TrySetPokeCenterWarpStatus,function
	.thumb_func
TrySetPokeCenterWarpStatus:
	push	{lr}
	bl	IsCurMapPokeCenter
	cmp	r0, #0
	bne	.L22	@cond_branch
	ldr	r0, .L25
	ldr	r2, [r0]
	ldrb	r1, [r2, #0x9]
	mov	r0, #0xfd
	and	r0, r0, r1
	b	.L24
.L26:
	.align	2, 0
.L25:
	.word	gSaveBlock2Ptr
.L22:
	ldr	r0, .L27
	ldr	r2, [r0]
	ldrb	r1, [r2, #0x9]
	mov	r0, #0x2
	orr	r0, r0, r1
.L24:
	strb	r0, [r2, #0x9]
	pop	{r0}
	bx	r0
.L28:
	.align	2, 0
.L27:
	.word	gSaveBlock2Ptr
.Lfe5:
	.size	 TrySetPokeCenterWarpStatus,.Lfe5-TrySetPokeCenterWarpStatus
	.align	2, 0
	.type	 TrySetReloadWarpStatus,function
	.thumb_func
TrySetReloadWarpStatus:
	push	{lr}
	bl	IsCurMapReloadLocation
	cmp	r0, #0
	bne	.L30	@cond_branch
	ldr	r0, .L33
	ldr	r2, [r0]
	ldrb	r1, [r2, #0x9]
	mov	r0, #0xfb
	and	r0, r0, r1
	b	.L32
.L34:
	.align	2, 0
.L33:
	.word	gSaveBlock2Ptr
.L30:
	ldr	r0, .L35
	ldr	r2, [r0]
	ldrb	r1, [r2, #0x9]
	mov	r0, #0x4
	orr	r0, r0, r1
.L32:
	strb	r0, [r2, #0x9]
	pop	{r0}
	bx	r0
.L36:
	.align	2, 0
.L35:
	.word	gSaveBlock2Ptr
.Lfe6:
	.size	 TrySetReloadWarpStatus,.Lfe6-TrySetReloadWarpStatus
	.align	2, 0
	.type	 TrySetUnknownWarpStatus,function
	.thumb_func
TrySetUnknownWarpStatus:
	push	{lr}
	bl	IsCurMapInEmptyList
	cmp	r0, #0
	bne	.L38	@cond_branch
	ldr	r0, .L41
	ldr	r2, [r0]
	ldrb	r1, [r2, #0x9]
	mov	r0, #0xf7
	and	r0, r0, r1
	b	.L40
.L42:
	.align	2, 0
.L41:
	.word	gSaveBlock2Ptr
.L38:
	ldr	r0, .L43
	ldr	r2, [r0]
	ldrb	r1, [r2, #0x9]
	mov	r0, #0x8
	orr	r0, r0, r1
.L40:
	strb	r0, [r2, #0x9]
	pop	{r0}
	bx	r0
.L44:
	.align	2, 0
.L43:
	.word	gSaveBlock2Ptr
.Lfe7:
	.size	 TrySetUnknownWarpStatus,.Lfe7-TrySetUnknownWarpStatus
	.align	2, 0
	.globl	TrySetMapSaveWarpStatus
	.type	 TrySetMapSaveWarpStatus,function
	.thumb_func
TrySetMapSaveWarpStatus:
	push	{lr}
	bl	TrySetPokeCenterWarpStatus
	bl	TrySetReloadWarpStatus
	bl	TrySetUnknownWarpStatus
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 TrySetMapSaveWarpStatus,.Lfe8-TrySetMapSaveWarpStatus
	.align	2, 0
	.globl	SetUnlockedPokedexFlags
	.type	 SetUnlockedPokedexFlags,function
	.thumb_func
SetUnlockedPokedexFlags:
	ldr	r0, .L47
	ldr	r2, [r0]
	add	r2, r2, #0xa8
	ldr	r0, [r2]
	mov	r1, #0x1
	orr	r0, r0, r1
	mov	r1, #0x10
	orr	r0, r0, r1
	mov	r1, #0x20
	orr	r0, r0, r1
	str	r0, [r2]
	bx	lr
.L48:
	.align	2, 0
.L47:
	.word	gSaveBlock2Ptr
.Lfe9:
	.size	 SetUnlockedPokedexFlags,.Lfe9-SetUnlockedPokedexFlags
	.align	2, 0
	.globl	SetPostgameFlags
	.type	 SetPostgameFlags,function
	.thumb_func
SetPostgameFlags:
	ldr	r3, .L50
	ldr	r2, [r3]
	ldrb	r1, [r2, #0x9]
	mov	r0, #0x80
	orr	r0, r0, r1
	strb	r0, [r2, #0x9]
	ldr	r2, [r3]
	add	r2, r2, #0xa8
	ldr	r0, [r2]
	mov	r1, #0x2
	orr	r0, r0, r1
	mov	r1, #0x4
	orr	r0, r0, r1
	mov	r1, #0x8
	orr	r0, r0, r1
	mov	r1, #0x80
	lsl	r1, r1, #0x8
	orr	r0, r0, r1
	str	r0, [r2]
	bx	lr
.L51:
	.align	2, 0
.L50:
	.word	gSaveBlock2Ptr
.Lfe10:
	.size	 SetPostgameFlags,.Lfe10-SetPostgameFlags
.text
	.align	2, 0 @ Don't pad with nop

