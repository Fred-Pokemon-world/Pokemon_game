@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	STWI_init_all
	.type	 STWI_init_all,function
	.thumb_func
STWI_init_all:
	push	{r4, lr}
	add	r3, r0, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	cmp	r2, #0x1
	bne	.L3	@cond_branch
	add	r2, r3, #0
	add	r2, r2, #0xe8
	str	r2, [r1]
	ldr	r1, .L6
	ldr	r0, .L6+0x4
	str	r0, [r1]
	str	r2, [r1, #0x4]
	ldr	r0, .L6+0x8
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	ldr	r1, .L6+0xc
	ldr	r2, .L6+0x10
	add	r0, r3, r2
	b	.L5
.L7:
	.align	2, 0
.L6:
	.word	0x40000d4
	.word	IntrSIO32
	.word	-0x7ffffb50
	.word	gSTWIStatus
	.word	0xa48
.L3:
	ldr	r0, .L8
	str	r0, [r1]
	ldr	r1, .L8+0x4
	add	r0, r3, #0
	add	r0, r0, #0xe8
.L5:
	str	r0, [r1]
	add	r2, r1, #0
	ldr	r1, [r2]
	str	r3, [r1, #0x28]
	add	r0, r3, #0
	add	r0, r0, #0x74
	str	r0, [r1, #0x24]
	ldrb	r0, [r1, #0x14]
	mov	r4, #0x0
	mov	r0, #0x1
	strb	r0, [r1, #0x14]
	ldr	r0, [r2]
	str	r4, [r0]
	strb	r4, [r0, #0x4]
	ldr	r0, [r2]
	strb	r4, [r0, #0x5]
	ldr	r0, [r2]
	strb	r4, [r0, #0x7]
	ldr	r0, [r2]
	strb	r4, [r0, #0x8]
	ldr	r0, [r2]
	strb	r4, [r0, #0x9]
	ldr	r0, [r2]
	str	r4, [r0, #0xc]
	ldrb	r1, [r0, #0x10]
	strb	r4, [r0, #0x10]
	ldr	r0, [r2]
	ldrh	r1, [r0, #0x12]
	mov	r1, #0x0
	strh	r4, [r0, #0x12]
	strb	r1, [r0, #0x15]
	ldr	r0, [r2]
	add	r0, r0, #0x2c
	ldrb	r2, [r0]
	strb	r1, [r0]
	ldr	r1, .L8+0x8
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	add	r0, r2, #0
	strh	r0, [r1]
	sub	r1, r1, #0xc
	ldr	r2, .L8+0xc
	add	r0, r2, #0
	strh	r0, [r1]
	bl	STWI_init_Callback_M
	bl	STWI_init_Callback_S
	ldr	r3, .L8+0x10
	ldrh	r2, [r3]
	strh	r4, [r3]
	ldr	r4, .L8+0x14
	ldrh	r0, [r4]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r4]
	strh	r2, [r3]
	pop	{r4}
	pop	{r0}
	bx	r0
.L9:
	.align	2, 0
.L8:
	.word	IntrSIO32
	.word	gSTWIStatus
	.word	0x4000134
	.word	0x5003
	.word	0x4000208
	.word	0x4000200
.Lfe1:
	.size	 STWI_init_all,.Lfe1-STWI_init_all
	.align	2, 0
	.globl	STWI_init_timer
	.type	 STWI_init_timer,function
	.thumb_func
STWI_init_timer:
	push	{r4, r5, lr}
	ldr	r2, .L11
	str	r2, [r0]
	ldr	r5, .L11+0x4
	ldr	r0, [r5]
	mov	r4, #0x0
	strb	r1, [r0, #0xa]
	ldr	r3, .L11+0x8
	ldrh	r2, [r3]
	strh	r4, [r3]
	ldr	r4, .L11+0xc
	ldr	r1, [r5]
	mov	r0, #0x8
	ldrb	r1, [r1, #0xa]
	lsl	r0, r0, r1
	ldrh	r1, [r4]
	orr	r0, r0, r1
	strh	r0, [r4]
	strh	r2, [r3]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L12:
	.align	2, 0
.L11:
	.word	STWI_intr_timer
	.word	gSTWIStatus
	.word	0x4000208
	.word	0x4000200
.Lfe2:
	.size	 STWI_init_timer,.Lfe2-STWI_init_timer
	.align	2, 0
	.globl	AgbRFU_SoftReset
	.type	 AgbRFU_SoftReset,function
	.thumb_func
AgbRFU_SoftReset:
	push	{r4, r5, lr}
	ldr	r5, .L18
	mov	r1, #0x80
	lsl	r1, r1, #0x8
	add	r0, r1, #0
	strh	r0, [r5]
	ldr	r2, .L18+0x4
	add	r0, r2, #0
	strh	r0, [r5]
	ldr	r1, .L18+0x8
	ldr	r0, [r1]
	ldrb	r0, [r0, #0xa]
	lsl	r0, r0, #0x2
	ldr	r3, .L18+0xc
	add	r2, r0, r3
	ldr	r4, .L18+0x10
	add	r3, r0, r4
	mov	r0, #0x0
	strh	r0, [r3]
	strh	r0, [r2]
	mov	r0, #0x83
	strh	r0, [r3]
	ldrh	r0, [r2]
	add	r4, r1, #0
	cmp	r0, #0x11
	bhi	.L15	@cond_branch
	ldr	r0, .L18+0x14
	add	r1, r0, #0
.L16:
	strh	r1, [r5]
	ldrh	r0, [r2]
	cmp	r0, #0x11
	bls	.L16	@cond_branch
.L15:
	mov	r0, #0x3
	strh	r0, [r3]
	ldr	r1, .L18
	ldr	r2, .L18+0x4
	add	r0, r2, #0
	strh	r0, [r1]
	sub	r1, r1, #0xc
	ldr	r3, .L18+0x18
	add	r0, r3, #0
	strh	r0, [r1]
	ldr	r0, [r4]
	mov	r2, #0x0
	str	r2, [r0]
	strb	r2, [r0, #0x4]
	ldr	r0, [r4]
	strb	r2, [r0, #0x5]
	ldr	r0, [r4]
	strb	r2, [r0, #0x6]
	ldr	r0, [r4]
	strb	r2, [r0, #0x7]
	ldr	r0, [r4]
	strb	r2, [r0, #0x8]
	ldr	r0, [r4]
	strb	r2, [r0, #0x9]
	ldr	r0, [r4]
	str	r2, [r0, #0xc]
	ldrb	r1, [r0, #0x10]
	strb	r2, [r0, #0x10]
	ldr	r1, [r4]
	ldrh	r0, [r1, #0x12]
	mov	r3, #0x0
	strh	r2, [r1, #0x12]
	ldrb	r0, [r1, #0x14]
	mov	r0, #0x1
	strb	r0, [r1, #0x14]
	ldr	r0, [r4]
	strb	r3, [r0, #0x15]
	ldr	r0, [r4]
	add	r0, r0, #0x2c
	ldrb	r1, [r0]
	strb	r3, [r0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L19:
	.align	2, 0
.L18:
	.word	0x4000134
	.word	0x80a0
	.word	gSTWIStatus
	.word	0x4000100
	.word	0x4000102
	.word	0x80a2
	.word	0x5003
.Lfe3:
	.size	 AgbRFU_SoftReset,.Lfe3-AgbRFU_SoftReset
	.align	2, 0
	.globl	STWI_set_MS_mode
	.type	 STWI_set_MS_mode,function
	.thumb_func
STWI_set_MS_mode:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L21
	ldr	r1, [r1]
	ldrb	r2, [r1, #0x14]
	strb	r0, [r1, #0x14]
	bx	lr
.L22:
	.align	2, 0
.L21:
	.word	gSTWIStatus
.Lfe4:
	.size	 STWI_set_MS_mode,.Lfe4-STWI_set_MS_mode
	.align	2, 0
	.globl	STWI_read_status
	.type	 STWI_read_status,function
	.thumb_func
STWI_read_status:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	cmp	r0, #0x1
	beq	.L26	@cond_branch
	cmp	r0, #0x1
	bgt	.L31	@cond_branch
	cmp	r0, #0
	beq	.L25	@cond_branch
	b	.L29
.L31:
	cmp	r1, #0x2
	beq	.L27	@cond_branch
	cmp	r1, #0x3
	beq	.L28	@cond_branch
	b	.L29
.L25:
	ldr	r0, .L33
	ldr	r0, [r0]
	ldrh	r0, [r0, #0x12]
	b	.L32
.L34:
	.align	2, 0
.L33:
	.word	gSTWIStatus
.L26:
	ldr	r0, .L35
	ldr	r0, [r0]
	ldrb	r0, [r0, #0x14]
	b	.L32
.L36:
	.align	2, 0
.L35:
	.word	gSTWIStatus
.L27:
	ldr	r0, .L37
	ldr	r0, [r0]
	ldr	r0, [r0]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	b	.L32
.L38:
	.align	2, 0
.L37:
	.word	gSTWIStatus
.L28:
	ldr	r0, .L39
	ldr	r0, [r0]
	ldrb	r0, [r0, #0x6]
	b	.L32
.L40:
	.align	2, 0
.L39:
	.word	gSTWIStatus
.L29:
	ldr	r0, .L41
.L32:
	pop	{r1}
	bx	r1
.L42:
	.align	2, 0
.L41:
	.word	0xffff
.Lfe5:
	.size	 STWI_read_status,.Lfe5-STWI_read_status
	.align	2, 0
	.globl	STWI_init_Callback_M
	.type	 STWI_init_Callback_M,function
	.thumb_func
STWI_init_Callback_M:
	push	{lr}
	mov	r0, #0x0
	bl	STWI_set_Callback_M
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 STWI_init_Callback_M,.Lfe6-STWI_init_Callback_M
	.align	2, 0
	.globl	STWI_init_Callback_S
	.type	 STWI_init_Callback_S,function
	.thumb_func
STWI_init_Callback_S:
	push	{lr}
	mov	r0, #0x0
	bl	STWI_set_Callback_S
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 STWI_init_Callback_S,.Lfe7-STWI_init_Callback_S
	.align	2, 0
	.globl	STWI_set_Callback_M
	.type	 STWI_set_Callback_M,function
	.thumb_func
STWI_set_Callback_M:
	ldr	r1, .L46
	ldr	r1, [r1]
	str	r0, [r1, #0x18]
	bx	lr
.L47:
	.align	2, 0
.L46:
	.word	gSTWIStatus
.Lfe8:
	.size	 STWI_set_Callback_M,.Lfe8-STWI_set_Callback_M
	.align	2, 0
	.globl	STWI_set_Callback_S
	.type	 STWI_set_Callback_S,function
	.thumb_func
STWI_set_Callback_S:
	ldr	r1, .L49
	ldr	r1, [r1]
	str	r0, [r1, #0x1c]
	bx	lr
.L50:
	.align	2, 0
.L49:
	.word	gSTWIStatus
.Lfe9:
	.size	 STWI_set_Callback_S,.Lfe9-STWI_set_Callback_S
	.align	2, 0
	.globl	STWI_set_Callback_ID
	.type	 STWI_set_Callback_ID,function
	.thumb_func
STWI_set_Callback_ID:
	ldr	r1, .L52
	ldr	r1, [r1]
	str	r0, [r1, #0x20]
	bx	lr
.L53:
	.align	2, 0
.L52:
	.word	gSTWIStatus
.Lfe10:
	.size	 STWI_set_Callback_ID,.Lfe10-STWI_set_Callback_ID
	.align	2, 0
	.globl	STWI_poll_CommandEnd
	.type	 STWI_poll_CommandEnd,function
	.thumb_func
STWI_poll_CommandEnd:
	push	{lr}
	ldr	r0, .L59
	ldr	r1, [r0]
	add	r2, r1, #0
	add	r2, r2, #0x2c
	ldrb	r1, [r2]
	add	r3, r0, #0
	cmp	r1, #0x1
	bne	.L56	@cond_branch
	add	r1, r2, #0
.L55:
	ldrb	r0, [r1]
	cmp	r0, #0x1
	beq	.L55	@cond_branch
.L56:
	ldr	r0, [r3]
	ldrh	r0, [r0, #0x12]
	pop	{r1}
	bx	r1
.L60:
	.align	2, 0
.L59:
	.word	gSTWIStatus
.Lfe11:
	.size	 STWI_poll_CommandEnd,.Lfe11-STWI_poll_CommandEnd
	.align	2, 0
	.globl	STWI_send_ResetREQ
	.type	 STWI_send_ResetREQ,function
	.thumb_func
STWI_send_ResetREQ:
	push	{lr}
	mov	r0, #0x10
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L62	@cond_branch
	ldr	r0, .L63
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L62:
	pop	{r0}
	bx	r0
.L64:
	.align	2, 0
.L63:
	.word	gSTWIStatus
.Lfe12:
	.size	 STWI_send_ResetREQ,.Lfe12-STWI_send_ResetREQ
	.align	2, 0
	.globl	STWI_send_LinkStatusREQ
	.type	 STWI_send_LinkStatusREQ,function
	.thumb_func
STWI_send_LinkStatusREQ:
	push	{lr}
	mov	r0, #0x11
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L66	@cond_branch
	ldr	r0, .L67
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L66:
	pop	{r0}
	bx	r0
.L68:
	.align	2, 0
.L67:
	.word	gSTWIStatus
.Lfe13:
	.size	 STWI_send_LinkStatusREQ,.Lfe13-STWI_send_LinkStatusREQ
	.align	2, 0
	.globl	STWI_send_VersionStatusREQ
	.type	 STWI_send_VersionStatusREQ,function
	.thumb_func
STWI_send_VersionStatusREQ:
	push	{lr}
	mov	r0, #0x12
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L70	@cond_branch
	ldr	r0, .L71
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L70:
	pop	{r0}
	bx	r0
.L72:
	.align	2, 0
.L71:
	.word	gSTWIStatus
.Lfe14:
	.size	 STWI_send_VersionStatusREQ,.Lfe14-STWI_send_VersionStatusREQ
	.align	2, 0
	.globl	STWI_send_SystemStatusREQ
	.type	 STWI_send_SystemStatusREQ,function
	.thumb_func
STWI_send_SystemStatusREQ:
	push	{lr}
	mov	r0, #0x13
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L74	@cond_branch
	ldr	r0, .L75
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L74:
	pop	{r0}
	bx	r0
.L76:
	.align	2, 0
.L75:
	.word	gSTWIStatus
.Lfe15:
	.size	 STWI_send_SystemStatusREQ,.Lfe15-STWI_send_SystemStatusREQ
	.align	2, 0
	.globl	STWI_send_SlotStatusREQ
	.type	 STWI_send_SlotStatusREQ,function
	.thumb_func
STWI_send_SlotStatusREQ:
	push	{lr}
	mov	r0, #0x14
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L78	@cond_branch
	ldr	r0, .L79
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L78:
	pop	{r0}
	bx	r0
.L80:
	.align	2, 0
.L79:
	.word	gSTWIStatus
.Lfe16:
	.size	 STWI_send_SlotStatusREQ,.Lfe16-STWI_send_SlotStatusREQ
	.align	2, 0
	.globl	STWI_send_ConfigStatusREQ
	.type	 STWI_send_ConfigStatusREQ,function
	.thumb_func
STWI_send_ConfigStatusREQ:
	push	{lr}
	mov	r0, #0x15
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L82	@cond_branch
	ldr	r0, .L83
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L82:
	pop	{r0}
	bx	r0
.L84:
	.align	2, 0
.L83:
	.word	gSTWIStatus
.Lfe17:
	.size	 STWI_send_ConfigStatusREQ,.Lfe17-STWI_send_ConfigStatusREQ
	.align	2, 0
	.globl	STWI_send_GameConfigREQ
	.type	 STWI_send_GameConfigREQ,function
	.thumb_func
STWI_send_GameConfigREQ:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	mov	r0, #0x16
	bl	STWI_init
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L86	@cond_branch
	ldr	r2, .L97
	ldr	r1, [r2]
	mov	r0, #0x6
	strb	r0, [r1, #0x4]
	ldr	r0, [r2]
	ldr	r1, [r0, #0x24]
	add	r1, r1, #0x4
	ldrh	r0, [r4]
	strh	r0, [r1]
	add	r1, r1, #0x2
	add	r4, r4, #0x2
	mov	r2, #0xd
.L90:
	ldrb	r0, [r4]
	strb	r0, [r1]
	add	r1, r1, #0x1
	add	r4, r4, #0x1
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L90	@cond_branch
	mov	r2, #0x7
.L95:
	ldrb	r0, [r5]
	strb	r0, [r1]
	add	r1, r1, #0x1
	add	r5, r5, #0x1
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L95	@cond_branch
	bl	STWI_start_Command
.L86:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L98:
	.align	2, 0
.L97:
	.word	gSTWIStatus
.Lfe18:
	.size	 STWI_send_GameConfigREQ,.Lfe18-STWI_send_GameConfigREQ
	.align	2, 0
	.globl	STWI_send_SystemConfigREQ
	.type	 STWI_send_SystemConfigREQ,function
	.thumb_func
STWI_send_SystemConfigREQ:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	lsl	r1, r1, #0x18
	lsr	r5, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r4, r2, #0x18
	mov	r0, #0x17
	bl	STWI_init
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L100	@cond_branch
	ldr	r2, .L101
	ldr	r1, [r2]
	mov	r0, #0x1
	strb	r0, [r1, #0x4]
	ldr	r0, [r2]
	ldr	r0, [r0, #0x24]
	add	r0, r0, #0x4
	strb	r4, [r0]
	add	r0, r0, #0x1
	strb	r5, [r0]
	add	r0, r0, #0x1
	strh	r6, [r0]
	bl	STWI_start_Command
.L100:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L102:
	.align	2, 0
.L101:
	.word	gSTWIStatus
.Lfe19:
	.size	 STWI_send_SystemConfigREQ,.Lfe19-STWI_send_SystemConfigREQ
	.align	2, 0
	.globl	STWI_send_SC_StartREQ
	.type	 STWI_send_SC_StartREQ,function
	.thumb_func
STWI_send_SC_StartREQ:
	push	{lr}
	mov	r0, #0x19
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L104	@cond_branch
	ldr	r0, .L105
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L104:
	pop	{r0}
	bx	r0
.L106:
	.align	2, 0
.L105:
	.word	gSTWIStatus
.Lfe20:
	.size	 STWI_send_SC_StartREQ,.Lfe20-STWI_send_SC_StartREQ
	.align	2, 0
	.globl	STWI_send_SC_PollingREQ
	.type	 STWI_send_SC_PollingREQ,function
	.thumb_func
STWI_send_SC_PollingREQ:
	push	{lr}
	mov	r0, #0x1a
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L108	@cond_branch
	ldr	r0, .L109
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L108:
	pop	{r0}
	bx	r0
.L110:
	.align	2, 0
.L109:
	.word	gSTWIStatus
.Lfe21:
	.size	 STWI_send_SC_PollingREQ,.Lfe21-STWI_send_SC_PollingREQ
	.align	2, 0
	.globl	STWI_send_SC_EndREQ
	.type	 STWI_send_SC_EndREQ,function
	.thumb_func
STWI_send_SC_EndREQ:
	push	{lr}
	mov	r0, #0x1b
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L112	@cond_branch
	ldr	r0, .L113
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L112:
	pop	{r0}
	bx	r0
.L114:
	.align	2, 0
.L113:
	.word	gSTWIStatus
.Lfe22:
	.size	 STWI_send_SC_EndREQ,.Lfe22-STWI_send_SC_EndREQ
	.align	2, 0
	.globl	STWI_send_SP_StartREQ
	.type	 STWI_send_SP_StartREQ,function
	.thumb_func
STWI_send_SP_StartREQ:
	push	{lr}
	mov	r0, #0x1c
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L116	@cond_branch
	ldr	r0, .L117
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L116:
	pop	{r0}
	bx	r0
.L118:
	.align	2, 0
.L117:
	.word	gSTWIStatus
.Lfe23:
	.size	 STWI_send_SP_StartREQ,.Lfe23-STWI_send_SP_StartREQ
	.align	2, 0
	.globl	STWI_send_SP_PollingREQ
	.type	 STWI_send_SP_PollingREQ,function
	.thumb_func
STWI_send_SP_PollingREQ:
	push	{lr}
	mov	r0, #0x1d
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L120	@cond_branch
	ldr	r0, .L121
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L120:
	pop	{r0}
	bx	r0
.L122:
	.align	2, 0
.L121:
	.word	gSTWIStatus
.Lfe24:
	.size	 STWI_send_SP_PollingREQ,.Lfe24-STWI_send_SP_PollingREQ
	.align	2, 0
	.globl	STWI_send_SP_EndREQ
	.type	 STWI_send_SP_EndREQ,function
	.thumb_func
STWI_send_SP_EndREQ:
	push	{lr}
	mov	r0, #0x1e
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L124	@cond_branch
	ldr	r0, .L125
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L124:
	pop	{r0}
	bx	r0
.L126:
	.align	2, 0
.L125:
	.word	gSTWIStatus
.Lfe25:
	.size	 STWI_send_SP_EndREQ,.Lfe25-STWI_send_SP_EndREQ
	.align	2, 0
	.globl	STWI_send_CP_StartREQ
	.type	 STWI_send_CP_StartREQ,function
	.thumb_func
STWI_send_CP_StartREQ:
	push	{r4, lr}
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	mov	r0, #0x1f
	bl	STWI_init
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L128	@cond_branch
	ldr	r2, .L129
	ldr	r1, [r2]
	mov	r0, #0x1
	strb	r0, [r1, #0x4]
	ldr	r0, [r2]
	ldr	r0, [r0, #0x24]
	str	r4, [r0, #0x4]
	bl	STWI_start_Command
.L128:
	pop	{r4}
	pop	{r0}
	bx	r0
.L130:
	.align	2, 0
.L129:
	.word	gSTWIStatus
.Lfe26:
	.size	 STWI_send_CP_StartREQ,.Lfe26-STWI_send_CP_StartREQ
	.align	2, 0
	.globl	STWI_send_CP_PollingREQ
	.type	 STWI_send_CP_PollingREQ,function
	.thumb_func
STWI_send_CP_PollingREQ:
	push	{lr}
	mov	r0, #0x20
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L132	@cond_branch
	ldr	r0, .L133
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L132:
	pop	{r0}
	bx	r0
.L134:
	.align	2, 0
.L133:
	.word	gSTWIStatus
.Lfe27:
	.size	 STWI_send_CP_PollingREQ,.Lfe27-STWI_send_CP_PollingREQ
	.align	2, 0
	.globl	STWI_send_CP_EndREQ
	.type	 STWI_send_CP_EndREQ,function
	.thumb_func
STWI_send_CP_EndREQ:
	push	{lr}
	mov	r0, #0x21
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L136	@cond_branch
	ldr	r0, .L137
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L136:
	pop	{r0}
	bx	r0
.L138:
	.align	2, 0
.L137:
	.word	gSTWIStatus
.Lfe28:
	.size	 STWI_send_CP_EndREQ,.Lfe28-STWI_send_CP_EndREQ
	.align	2, 0
	.globl	STWI_send_DataTxREQ
	.type	 STWI_send_DataTxREQ,function
	.thumb_func
STWI_send_DataTxREQ:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	lsl	r4, r1, #0x18
	lsr	r5, r4, #0x18
	mov	r0, #0x24
	bl	STWI_init
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L140	@cond_branch
	lsr	r2, r4, #0x1a
	mov	r0, #0x3
	and	r0, r0, r5
	cmp	r0, #0
	beq	.L141	@cond_branch
	add	r2, r2, #0x1
.L141:
	ldr	r1, .L142
	ldr	r0, [r1]
	strb	r2, [r0, #0x4]
	ldr	r0, [r1]
	ldr	r1, [r0, #0x24]
	add	r1, r1, #0x4
	ldrb	r2, [r0, #0x4]
	mov	r0, #0x80
	lsl	r0, r0, #0x13
	orr	r2, r2, r0
	add	r0, r6, #0
	bl	CpuSet
	bl	STWI_start_Command
.L140:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L143:
	.align	2, 0
.L142:
	.word	gSTWIStatus
.Lfe29:
	.size	 STWI_send_DataTxREQ,.Lfe29-STWI_send_DataTxREQ
	.align	2, 0
	.globl	STWI_send_DataTxAndChangeREQ
	.type	 STWI_send_DataTxAndChangeREQ,function
	.thumb_func
STWI_send_DataTxAndChangeREQ:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	lsl	r4, r1, #0x18
	lsr	r5, r4, #0x18
	mov	r0, #0x25
	bl	STWI_init
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L145	@cond_branch
	lsr	r2, r4, #0x1a
	mov	r0, #0x3
	and	r0, r0, r5
	cmp	r0, #0
	beq	.L146	@cond_branch
	add	r2, r2, #0x1
.L146:
	ldr	r1, .L147
	ldr	r0, [r1]
	strb	r2, [r0, #0x4]
	ldr	r0, [r1]
	ldr	r1, [r0, #0x24]
	add	r1, r1, #0x4
	ldrb	r2, [r0, #0x4]
	mov	r0, #0x80
	lsl	r0, r0, #0x13
	orr	r2, r2, r0
	add	r0, r6, #0
	bl	CpuSet
	bl	STWI_start_Command
.L145:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L148:
	.align	2, 0
.L147:
	.word	gSTWIStatus
.Lfe30:
	.size	 STWI_send_DataTxAndChangeREQ,.Lfe30-STWI_send_DataTxAndChangeREQ
	.align	2, 0
	.globl	STWI_send_DataRxREQ
	.type	 STWI_send_DataRxREQ,function
	.thumb_func
STWI_send_DataRxREQ:
	push	{lr}
	mov	r0, #0x26
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L150	@cond_branch
	ldr	r0, .L151
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L150:
	pop	{r0}
	bx	r0
.L152:
	.align	2, 0
.L151:
	.word	gSTWIStatus
.Lfe31:
	.size	 STWI_send_DataRxREQ,.Lfe31-STWI_send_DataRxREQ
	.align	2, 0
	.globl	STWI_send_MS_ChangeREQ
	.type	 STWI_send_MS_ChangeREQ,function
	.thumb_func
STWI_send_MS_ChangeREQ:
	push	{lr}
	mov	r0, #0x27
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L154	@cond_branch
	ldr	r0, .L155
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L154:
	pop	{r0}
	bx	r0
.L156:
	.align	2, 0
.L155:
	.word	gSTWIStatus
.Lfe32:
	.size	 STWI_send_MS_ChangeREQ,.Lfe32-STWI_send_MS_ChangeREQ
	.align	2, 0
	.globl	STWI_send_DataReadyAndChangeREQ
	.type	 STWI_send_DataReadyAndChangeREQ,function
	.thumb_func
STWI_send_DataReadyAndChangeREQ:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r5, r4, #0
	mov	r0, #0x28
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
	cmp	r3, #0
	bne	.L158	@cond_branch
	cmp	r4, #0
	bne	.L159	@cond_branch
	ldr	r0, .L161
	ldr	r0, [r0]
	strb	r3, [r0, #0x4]
	b	.L160
.L162:
	.align	2, 0
.L161:
	.word	gSTWIStatus
.L159:
	ldr	r2, .L163
	ldr	r1, [r2]
	mov	r0, #0x1
	strb	r0, [r1, #0x4]
	ldr	r0, [r2]
	ldr	r0, [r0, #0x24]
	add	r0, r0, #0x4
	strb	r5, [r0]
	add	r0, r0, #0x1
	strb	r3, [r0]
	add	r0, r0, #0x1
	strb	r3, [r0]
	strb	r3, [r0, #0x1]
.L160:
	bl	STWI_start_Command
.L158:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L164:
	.align	2, 0
.L163:
	.word	gSTWIStatus
.Lfe33:
	.size	 STWI_send_DataReadyAndChangeREQ,.Lfe33-STWI_send_DataReadyAndChangeREQ
	.align	2, 0
	.globl	STWI_send_DisconnectedAndChangeREQ
	.type	 STWI_send_DisconnectedAndChangeREQ,function
	.thumb_func
STWI_send_DisconnectedAndChangeREQ:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r5, r1, #0x18
	mov	r0, #0x29
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
	cmp	r3, #0
	bne	.L166	@cond_branch
	ldr	r2, .L167
	ldr	r1, [r2]
	mov	r0, #0x1
	strb	r0, [r1, #0x4]
	ldr	r0, [r2]
	ldr	r0, [r0, #0x24]
	add	r0, r0, #0x4
	strb	r4, [r0]
	add	r0, r0, #0x1
	strb	r5, [r0]
	add	r0, r0, #0x1
	strb	r3, [r0]
	strb	r3, [r0, #0x1]
	bl	STWI_start_Command
.L166:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L168:
	.align	2, 0
.L167:
	.word	gSTWIStatus
.Lfe34:
	.size	 STWI_send_DisconnectedAndChangeREQ,.Lfe34-STWI_send_DisconnectedAndChangeREQ
	.align	2, 0
	.globl	STWI_send_ResumeRetransmitAndChangeREQ
	.type	 STWI_send_ResumeRetransmitAndChangeREQ,function
	.thumb_func
STWI_send_ResumeRetransmitAndChangeREQ:
	push	{lr}
	mov	r0, #0x37
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L170	@cond_branch
	ldr	r0, .L171
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L170:
	pop	{r0}
	bx	r0
.L172:
	.align	2, 0
.L171:
	.word	gSTWIStatus
.Lfe35:
	.size	 STWI_send_ResumeRetransmitAndChangeREQ,.Lfe35-STWI_send_ResumeRetransmitAndChangeREQ
	.align	2, 0
	.globl	STWI_send_DisconnectREQ
	.type	 STWI_send_DisconnectREQ,function
	.thumb_func
STWI_send_DisconnectREQ:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r0, #0x30
	bl	STWI_init
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L174	@cond_branch
	ldr	r2, .L175
	ldr	r1, [r2]
	mov	r0, #0x1
	strb	r0, [r1, #0x4]
	ldr	r0, [r2]
	ldr	r0, [r0, #0x24]
	str	r4, [r0, #0x4]
	bl	STWI_start_Command
.L174:
	pop	{r4}
	pop	{r0}
	bx	r0
.L176:
	.align	2, 0
.L175:
	.word	gSTWIStatus
.Lfe36:
	.size	 STWI_send_DisconnectREQ,.Lfe36-STWI_send_DisconnectREQ
	.align	2, 0
	.globl	STWI_send_TestModeREQ
	.type	 STWI_send_TestModeREQ,function
	.thumb_func
STWI_send_TestModeREQ:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	mov	r0, #0x31
	bl	STWI_init
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L178	@cond_branch
	ldr	r2, .L179
	ldr	r1, [r2]
	mov	r0, #0x1
	strb	r0, [r1, #0x4]
	ldr	r0, [r2]
	ldr	r1, [r0, #0x24]
	lsl	r0, r4, #0x8
	orr	r0, r0, r5
	str	r0, [r1, #0x4]
	bl	STWI_start_Command
.L178:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L180:
	.align	2, 0
.L179:
	.word	gSTWIStatus
.Lfe37:
	.size	 STWI_send_TestModeREQ,.Lfe37-STWI_send_TestModeREQ
	.align	2, 0
	.globl	STWI_send_CPR_StartREQ
	.type	 STWI_send_CPR_StartREQ,function
	.thumb_func
STWI_send_CPR_StartREQ:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	lsl	r1, r1, #0x10
	lsr	r4, r1, #0x10
	lsl	r2, r2, #0x18
	lsr	r6, r2, #0x18
	mov	r0, #0x32
	bl	STWI_init
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L182	@cond_branch
	ldr	r2, .L183
	ldr	r1, [r2]
	mov	r0, #0x2
	strb	r0, [r1, #0x4]
	lsl	r0, r5, #0x10
	orr	r0, r0, r4
	ldr	r1, [r2]
	ldr	r1, [r1, #0x24]
	str	r0, [r1, #0x4]
	str	r6, [r1, #0x8]
	bl	STWI_start_Command
.L182:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L184:
	.align	2, 0
.L183:
	.word	gSTWIStatus
.Lfe38:
	.size	 STWI_send_CPR_StartREQ,.Lfe38-STWI_send_CPR_StartREQ
	.align	2, 0
	.globl	STWI_send_CPR_PollingREQ
	.type	 STWI_send_CPR_PollingREQ,function
	.thumb_func
STWI_send_CPR_PollingREQ:
	push	{lr}
	mov	r0, #0x33
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L186	@cond_branch
	ldr	r0, .L187
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L186:
	pop	{r0}
	bx	r0
.L188:
	.align	2, 0
.L187:
	.word	gSTWIStatus
.Lfe39:
	.size	 STWI_send_CPR_PollingREQ,.Lfe39-STWI_send_CPR_PollingREQ
	.align	2, 0
	.globl	STWI_send_CPR_EndREQ
	.type	 STWI_send_CPR_EndREQ,function
	.thumb_func
STWI_send_CPR_EndREQ:
	push	{lr}
	mov	r0, #0x34
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L190	@cond_branch
	ldr	r0, .L191
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L190:
	pop	{r0}
	bx	r0
.L192:
	.align	2, 0
.L191:
	.word	gSTWIStatus
.Lfe40:
	.size	 STWI_send_CPR_EndREQ,.Lfe40-STWI_send_CPR_EndREQ
	.align	2, 0
	.globl	STWI_send_StopModeREQ
	.type	 STWI_send_StopModeREQ,function
	.thumb_func
STWI_send_StopModeREQ:
	push	{lr}
	mov	r0, #0x3d
	bl	STWI_init
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r1, #0
	bne	.L194	@cond_branch
	ldr	r0, .L195
	ldr	r0, [r0]
	strb	r1, [r0, #0x4]
	bl	STWI_start_Command
.L194:
	pop	{r0}
	bx	r0
.L196:
	.align	2, 0
.L195:
	.word	gSTWIStatus
.Lfe41:
	.size	 STWI_send_StopModeREQ,.Lfe41-STWI_send_StopModeREQ
	.align	2, 0
	.type	 STWI_intr_timer,function
	.thumb_func
STWI_intr_timer:
	push	{r4, lr}
	ldr	r4, .L207
	ldr	r1, [r4]
	ldr	r0, [r1, #0xc]
	cmp	r0, #0x2
	beq	.L199	@cond_branch
	cmp	r0, #0x2
	bhi	.L206	@cond_branch
	cmp	r0, #0x1
	beq	.L201	@cond_branch
	b	.L198
.L208:
	.align	2, 0
.L207:
	.word	gSTWIStatus
.L206:
	cmp	r0, #0x3
	beq	.L202	@cond_branch
	cmp	r0, #0x4
	beq	.L201	@cond_branch
	b	.L198
.L199:
	ldrb	r0, [r1, #0x10]
	mov	r0, #0x1
	strb	r0, [r1, #0x10]
	mov	r0, #0x32
	bl	STWI_set_timer
	b	.L198
.L201:
	bl	STWI_stop_timer
	bl	STWI_restart_Command
	b	.L198
.L202:
	ldrb	r0, [r1, #0x10]
	mov	r0, #0x1
	strb	r0, [r1, #0x10]
	bl	STWI_stop_timer
	bl	STWI_reset_ClockCounter
	ldr	r0, [r4]
	ldr	r2, [r0, #0x18]
	cmp	r2, #0
	beq	.L198	@cond_branch
	mov	r0, #0xff
	mov	r1, #0x0
	bl	_call_via_r2
.L198:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe42:
	.size	 STWI_intr_timer,.Lfe42-STWI_intr_timer
	.align	2, 0
	.type	 STWI_set_timer,function
	.thumb_func
STWI_set_timer:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	add	r5, r3, #0
	ldr	r2, .L219
	ldr	r0, [r2]
	ldrb	r0, [r0, #0xa]
	lsl	r0, r0, #0x2
	ldr	r1, .L219+0x4
	add	r4, r0, r1
	add	r1, r1, #0x2
	add	r7, r0, r1
	ldr	r1, .L219+0x8
	mov	r0, #0x0
	strh	r0, [r1]
	add	r6, r2, #0
	cmp	r3, #0x50
	beq	.L212	@cond_branch
	cmp	r3, #0x50
	bgt	.L217	@cond_branch
	cmp	r3, #0x32
	beq	.L211	@cond_branch
	b	.L210
.L220:
	.align	2, 0
.L219:
	.word	gSTWIStatus
	.word	0x4000100
	.word	0x4000208
.L217:
	cmp	r5, #0x64
	beq	.L213	@cond_branch
	cmp	r5, #0x82
	beq	.L214	@cond_branch
	b	.L210
.L211:
	ldr	r1, .L221
	add	r0, r1, #0
	strh	r0, [r4]
	ldr	r1, [r6]
	mov	r0, #0x1
	b	.L218
.L222:
	.align	2, 0
.L221:
	.word	0xfccb
.L212:
	ldr	r1, .L223
	add	r0, r1, #0
	strh	r0, [r4]
	ldr	r1, [r6]
	mov	r0, #0x2
	b	.L218
.L224:
	.align	2, 0
.L223:
	.word	0xfae0
.L213:
	ldr	r1, .L225
	add	r0, r1, #0
	strh	r0, [r4]
	ldr	r1, [r6]
	mov	r0, #0x3
	b	.L218
.L226:
	.align	2, 0
.L225:
	.word	0xf996
.L214:
	ldr	r1, .L227
	add	r0, r1, #0
	strh	r0, [r4]
	ldr	r1, [r6]
	mov	r0, #0x4
.L218:
	str	r0, [r1, #0xc]
.L210:
	mov	r0, #0xc3
	strh	r0, [r7]
	ldr	r2, .L227+0x4
	ldr	r1, [r6]
	mov	r0, #0x8
	ldrb	r1, [r1, #0xa]
	lsl	r0, r0, r1
	strh	r0, [r2]
	ldr	r1, .L227+0x8
	mov	r0, #0x1
	strh	r0, [r1]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L228:
	.align	2, 0
.L227:
	.word	0xf7ad
	.word	0x4000202
	.word	0x4000208
.Lfe43:
	.size	 STWI_set_timer,.Lfe43-STWI_set_timer
	.align	2, 0
	.type	 STWI_stop_timer,function
	.thumb_func
STWI_stop_timer:
	ldr	r2, .L230
	ldr	r0, [r2]
	mov	r1, #0x0
	str	r1, [r0, #0xc]
	ldrb	r0, [r0, #0xa]
	lsl	r0, r0, #0x2
	ldr	r3, .L230+0x4
	add	r0, r0, r3
	strh	r1, [r0]
	ldr	r0, [r2]
	ldrb	r0, [r0, #0xa]
	lsl	r0, r0, #0x2
	ldr	r2, .L230+0x8
	add	r0, r0, r2
	strh	r1, [r0]
	bx	lr
.L231:
	.align	2, 0
.L230:
	.word	gSTWIStatus
	.word	0x4000100
	.word	0x4000102
.Lfe44:
	.size	 STWI_stop_timer,.Lfe44-STWI_stop_timer
	.align	2, 0
	.type	 STWI_init,function
	.thumb_func
STWI_init:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	add	r6, r5, #0
	ldr	r0, .L244
	ldrh	r0, [r0]
	cmp	r0, #0
	bne	.L233	@cond_branch
	ldr	r0, .L244+0x4
	ldr	r1, [r0]
	ldrh	r0, [r1, #0x12]
	mov	r0, #0x6
	strh	r0, [r1, #0x12]
	ldr	r2, [r1, #0x18]
	cmp	r2, #0
	beq	.L240	@cond_branch
	ldrh	r1, [r1, #0x12]
	add	r0, r5, #0
	bl	_call_via_r2
	b	.L243
.L245:
	.align	2, 0
.L244:
	.word	0x4000208
	.word	gSTWIStatus
.L233:
	ldr	r4, .L246
	ldr	r2, [r4]
	add	r3, r2, #0
	add	r3, r3, #0x2c
	ldrb	r0, [r3]
	cmp	r0, #0x1
	bne	.L236	@cond_branch
	ldrh	r0, [r2, #0x12]
	mov	r1, #0x0
	mov	r0, #0x2
	strh	r0, [r2, #0x12]
	ldrb	r0, [r3]
	strb	r1, [r3]
	ldr	r0, [r4]
	ldr	r2, [r0, #0x18]
	cmp	r2, #0
	beq	.L240	@cond_branch
	ldrh	r1, [r0, #0x12]
	add	r0, r5, #0
	bl	_call_via_r2
	b	.L243
.L247:
	.align	2, 0
.L246:
	.word	gSTWIStatus
.L236:
	ldrb	r0, [r2, #0x14]
	cmp	r0, #0
	bne	.L239	@cond_branch
	ldrh	r0, [r2, #0x12]
	mov	r0, #0x4
	strh	r0, [r2, #0x12]
	ldr	r3, [r2, #0x18]
	cmp	r3, #0
	beq	.L240	@cond_branch
	ldrh	r1, [r2, #0x12]
	add	r0, r5, #0
	bl	_call_via_r3
.L243:
.L240:
	mov	r0, #0x1
	b	.L242
.L239:
	ldrb	r0, [r3]
	mov	r1, #0x0
	mov	r0, #0x1
	strb	r0, [r3]
	ldr	r0, [r4]
	strb	r6, [r0, #0x6]
	ldr	r0, [r4]
	str	r1, [r0]
	strb	r1, [r0, #0x4]
	ldr	r0, [r4]
	strb	r1, [r0, #0x5]
	ldr	r0, [r4]
	strb	r1, [r0, #0x7]
	ldr	r0, [r4]
	strb	r1, [r0, #0x8]
	ldr	r0, [r4]
	strb	r1, [r0, #0x9]
	ldr	r0, [r4]
	str	r1, [r0, #0xc]
	ldrb	r2, [r0, #0x10]
	strb	r1, [r0, #0x10]
	ldr	r0, [r4]
	ldrh	r2, [r0, #0x12]
	mov	r2, #0x0
	strh	r1, [r0, #0x12]
	strb	r2, [r0, #0x15]
	ldr	r1, .L248
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	add	r0, r2, #0
	strh	r0, [r1]
	sub	r1, r1, #0xc
	ldr	r2, .L248+0x4
	add	r0, r2, #0
	strh	r0, [r1]
	mov	r0, #0x0
.L242:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L249:
	.align	2, 0
.L248:
	.word	0x4000134
	.word	0x5003
.Lfe45:
	.size	 STWI_init,.Lfe45-STWI_init
	.align	2, 0
	.type	 STWI_start_Command,function
	.thumb_func
STWI_start_Command:
	push	{r4, r5, lr}
	ldr	r5, .L251
	ldr	r0, [r5]
	ldr	r3, [r0, #0x24]
	ldrb	r1, [r0, #0x4]
	lsl	r1, r1, #0x8
	ldrb	r0, [r0, #0x6]
	ldr	r2, .L251+0x4
	orr	r0, r0, r2
	orr	r1, r1, r0
	str	r1, [r3]
	ldr	r2, .L251+0x8
	ldr	r1, [r5]
	ldr	r0, [r1, #0x24]
	ldr	r0, [r0]
	str	r0, [r2]
	mov	r2, #0x0
	str	r2, [r1]
	mov	r0, #0x1
	strb	r0, [r1, #0x5]
	ldr	r4, .L251+0xc
	ldrh	r3, [r4]
	strh	r2, [r4]
	ldr	r2, .L251+0x10
	ldr	r1, [r5]
	mov	r0, #0x8
	ldrb	r1, [r1, #0xa]
	lsl	r0, r0, r1
	ldrh	r1, [r2]
	orr	r0, r0, r1
	strh	r0, [r2]
	ldrh	r0, [r2]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r2]
	strh	r3, [r4]
	ldr	r1, .L251+0x14
	ldr	r2, .L251+0x18
	add	r0, r2, #0
	strh	r0, [r1]
	mov	r0, #0x0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L252:
	.align	2, 0
.L251:
	.word	gSTWIStatus
	.word	-0x669a0000
	.word	0x4000120
	.word	0x4000208
	.word	0x4000200
	.word	0x4000128
	.word	0x5083
.Lfe46:
	.size	 STWI_start_Command,.Lfe46-STWI_start_Command
	.align	2, 0
	.type	 STWI_restart_Command,function
	.thumb_func
STWI_restart_Command:
	push	{r4, lr}
	ldr	r4, .L261
	ldr	r2, [r4]
	ldrb	r0, [r2, #0x15]
	add	r3, r4, #0
	cmp	r0, #0x1
	bhi	.L254	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r2, #0x15]
	bl	STWI_start_Command
	b	.L255
.L262:
	.align	2, 0
.L261:
	.word	gSTWIStatus
.L254:
	ldrb	r0, [r2, #0x6]
	cmp	r0, #0x27
	beq	.L257	@cond_branch
	cmp	r0, #0x25
	beq	.L257	@cond_branch
	cmp	r0, #0x35
	beq	.L257	@cond_branch
	cmp	r0, #0x37
	bne	.L256	@cond_branch
.L257:
	ldr	r0, [r3]
	ldrh	r1, [r0, #0x12]
	mov	r2, #0x0
	mov	r1, #0x1
	strh	r1, [r0, #0x12]
	add	r0, r0, #0x2c
	ldrb	r1, [r0]
	strb	r2, [r0]
	ldr	r1, [r3]
	ldr	r2, [r1, #0x18]
	cmp	r2, #0
	beq	.L255	@cond_branch
	ldrb	r0, [r1, #0x6]
	ldrh	r1, [r1, #0x12]
	bl	_call_via_r2
	b	.L255
.L256:
	ldrh	r0, [r2, #0x12]
	mov	r1, #0x0
	mov	r0, #0x1
	strh	r0, [r2, #0x12]
	add	r0, r2, #0
	add	r0, r0, #0x2c
	ldrb	r2, [r0]
	strb	r1, [r0]
	ldr	r1, [r4]
	ldr	r2, [r1, #0x18]
	cmp	r2, #0
	beq	.L260	@cond_branch
	ldrb	r0, [r1, #0x6]
	ldrh	r1, [r1, #0x12]
	bl	_call_via_r2
.L260:
	ldr	r1, [r4]
	mov	r0, #0x4
	str	r0, [r1]
.L255:
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe47:
	.size	 STWI_restart_Command,.Lfe47-STWI_restart_Command
	.align	2, 0
	.type	 STWI_reset_ClockCounter,function
	.thumb_func
STWI_reset_ClockCounter:
	ldr	r3, .L264
	ldr	r1, [r3]
	mov	r0, #0x5
	str	r0, [r1]
	mov	r2, #0x0
	strb	r2, [r1, #0x4]
	ldr	r0, [r3]
	strb	r2, [r0, #0x5]
	ldr	r1, .L264+0x4
	mov	r0, #0x80
	lsl	r0, r0, #0x18
	str	r0, [r1]
	add	r1, r1, #0x8
	strh	r2, [r1]
	ldr	r2, .L264+0x8
	add	r0, r2, #0
	strh	r0, [r1]
	add	r2, r2, #0x7f
	add	r0, r2, #0
	strh	r0, [r1]
	mov	r0, #0x0
	bx	lr
.L265:
	.align	2, 0
.L264:
	.word	gSTWIStatus
	.word	0x4000120
	.word	0x5003
.Lfe48:
	.size	 STWI_reset_ClockCounter,.Lfe48-STWI_reset_ClockCounter
	.comm	gSTWIStatus, 4	@ 4
.text
	.align	2, 0 @ Don't pad with nop

