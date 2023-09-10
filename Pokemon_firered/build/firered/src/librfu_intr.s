@ Generated by gcc 2.9-arm-000512 for ARM/elf
.gcc2_compiled.:
.text
	.align	0
	.global	IntrSIO32
	.type	 IntrSIO32,function
IntrSIO32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, current_function_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L8
	ldr	r0, [r3, #0]
	ldr	r2, [r0, #0]
	sub	fp, ip, #4
	cmp	r2, #10
	bne	.L3
	ldr	r0, [r0, #32]
	cmp	r0, #0
	ldmeqea	fp, {fp, sp, lr}
	bxeq	lr
	bl	Callback_Dummy_ID
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L3:
	ldrb	r3, [r0, #20]
	cmp	r3, #1
	bne	.L6
	bl	sio32intr_clock_master
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L6:
	bl	sio32intr_clock_slave
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L9:
	.align	0
.L8:
	.word	gSTWIStatus
.Lfe1:
	.size	 IntrSIO32,.Lfe1-IntrSIO32
	.align	0
	.type	 sio32intr_clock_master,function
sio32intr_clock_master:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, current_function_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	mov	r0, #80
	sub	fp, ip, #4
	bl	STWI_set_timer_in_RAM
	mov	r4, #288
	ldr	r2, .L37
	add	r4, r4, #67108864
	ldr	lr, [r4, #0]
	ldr	ip, [r2, #0]
	ldr	r3, [ip, #0]
	mov	r6, r2
	cmp	r3, #0
	bne	.L11
	cmp	lr, #-2147483648
	bne	.L18
	ldrb	r2, [ip, #5]	@ zero_extendqisi2
	ldrb	r3, [ip, #4]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L13
	ldr	r3, [ip, #36]
	mov	r1, r2
	ldr	r2, [r3, r1, asl #2]
	str	r2, [r4, #0]
	ldrb	r3, [ip, #5]
	add	r3, r3, #1
	strb	r3, [ip, #5]
	b	.L16
.L13:
	mov	r3, #1
	str	r3, [ip, #0]
	str	lr, [r4, #0]
	b	.L16
.L11:
	ldr	r3, [ip, #0]
	cmp	r3, #1
	bne	.L17
	mov	r3, #-1728053248
	add	r3, r3, #6684672
	mov	r5, #-2147483648
	and	r2, lr, r5, asr #15
	cmp	r2, r3
	bne	.L18
	mov	r3, #0
	strb	r3, [ip, #8]
	ldr	r1, [r6, #0]
	ldrb	r0, [r1, #8]	@ zero_extendqisi2
	ldr	r2, [r1, #40]
	str	lr, [r2, r0, asl #2]
	ldrb	r3, [r1, #8]
	add	r3, r3, #1
	strb	r3, [r1, #8]
	ldr	r2, [r6, #0]
	strb	lr, [r2, #9]
	ldr	r3, [r6, #0]
	mov	r2, lr, lsr #8
	strb	r2, [r3, #7]
	ldr	r1, [r6, #0]
	ldrb	r2, [r1, #7]	@ zero_extendqisi2
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L36
	mov	r3, #2
	str	r3, [r1, #0]
	str	r5, [r4, #0]
	b	.L16
.L18:
	bl	STWI_stop_timer_in_RAM
	mov	r0, #130
	bl	STWI_set_timer_in_RAM
	b	.L10
.L17:
	ldr	r3, [ip, #0]
	cmp	r3, #2
	bne	.L16
	ldrb	r1, [ip, #8]	@ zero_extendqisi2
	ldr	r2, [ip, #40]
	str	lr, [r2, r1, asl #2]
	ldrb	r3, [ip, #8]
	add	r3, r3, #1
	strb	r3, [ip, #8]
	ldr	r1, [r6, #0]
	ldrb	r2, [r1, #7]	@ zero_extendqisi2
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L24
.L36:
	mov	r3, #3
	str	r3, [r1, #0]
	b	.L16
.L24:
	mov	r3, #-2147483648
	str	r3, [r4, #0]
.L16:
	mov	r0, #1
	bl	handshake_wait
	mov	r0, r0, asl #16
	cmp	r0, #65536
	beq	.L10
	mov	r4, #296
	add	r4, r4, #67108864
	mov	r5, #20480
	add	r3, r5, #11
	strh	r3, [r4, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r0, #0
	bl	handshake_wait
	mov	r0, r0, asl #16
	cmp	r0, #65536
	beq	.L10
	bl	STWI_stop_timer_in_RAM
	ldr	r1, [r6, #0]
	ldr	r0, [r1, #0]
	cmp	r0, #3
	bne	.L28
	ldrb	r3, [r1, #9]	@ zero_extendqisi2
	cmp	r3, #165
	cmpne	r3, #167
	beq	.L30
	and	r3, r3, #255
	cmp	r3, #181
	beq	.L30
	cmp	r3, #183
	bne	.L29
.L30:
	mov	r1, #288
	add	r1, r1, #67108864
	mov	ip, #296
	add	ip, ip, #67108864
	ldr	r0, [r6, #0]
	mov	r3, #0
	strb	r3, [r0, #20]
	mov	r2, #-2147483648
	str	r2, [r1, #0]
	add	r3, r3, #20480
	add	r2, r3, #2
	strh	r2, [ip, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	add	r3, r3, #130
	strh	r3, [ip, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	ldr	r2, [r6, #0]
	mov	r3, #5
	str	r3, [r2, #0]
	b	.L31
.L29:
	cmp	r3, #238
	bne	.L32
	add	r3, r5, #3
	strh	r3, [r4, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r2, #4
	str	r2, [r1, #0]
	strh	r0, [r1, #18]	@ movhi   ;; CYGNUS LOCAL nickc
	b	.L31
.L32:
	add	r3, r5, #3
	strh	r3, [r4, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r2, #4
	str	r2, [r1, #0]
.L31:
	ldr	r2, [r6, #0]
	mov	r3, #0
	strb	r3, [r2, #44]
	ldr	r0, [r6, #0]
	ldr	r2, [r0, #24]
	cmp	r2, r3
	beq	.L10
	ldrh	r1, [r0, #18]	@ movhi
	ldrb	r0, [r0, #6]	@ zero_extendqisi2
	bl	Callback_Dummy_M
	b	.L10
.L38:
	.align	0
.L37:
	.word	gSTWIStatus
.L28:
	add	r3, r5, #3
	strh	r3, [r4, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	add	r2, r5, #131
	strh	r2, [r4, #0]	@ movhi   ;; CYGNUS LOCAL nickc
.L10:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.Lfe2:
	.size	 sio32intr_clock_master,.Lfe2-sio32intr_clock_master
	.align	0
	.type	 sio32intr_clock_slave,function
sio32intr_clock_slave:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, current_function_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	ldr	r4, .L85
	mov	r0, #100
	ldr	r3, [r4, #0]
	mov	r6, #0
	strb	r6, [r3, #16]
	sub	fp, ip, #4
	bl	STWI_set_timer_in_RAM
	mov	r0, r6
	bl	handshake_wait
	mov	r0, r0, asl #16
	cmp	r0, #65536
	mov	r5, r4
	beq	.L39
	mov	r3, #296
	add	r3, r3, #67108864
	mov	r2, #20480
	add	r2, r2, #10
	strh	r2, [r3, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	lr, #288
	ldr	r0, [r5, #0]
	add	lr, lr, #67108864
	ldr	ip, [lr, #0]
	ldr	r3, [r0, #0]
	cmp	r3, #5
	bne	.L41
	ldr	r3, [r0, #40]
	mov	r4, #1
	mov	r0, #-1728053248
	str	ip, [r3, #0]
	add	r0, r0, #6684672
	ldr	r2, [r5, #0]
	mov	r3, r0, lsr #16
	strb	r4, [r2, #5]
	cmp	r3, ip, lsr #16
	bne	.L60
	ldr	r3, [r5, #0]
	mov	r2, ip, lsr #8
	strb	r2, [r3, #4]
	ldr	r2, [r5, #0]
	strb	ip, [r2, #6]
	ldr	r1, [r5, #0]
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	cmp	r3, r6
	bne	.L43
	ldrb	r2, [r1, #6]	@ zero_extendqisi2
	sub	r3, r2, #39
	cmp	r2, #54
	cmpne	r3, #2
	bhi	.L44
	add	r3, r2, #128
	strb	r3, [r1, #9]
	ldr	r2, [r5, #0]
	ldrb	r3, [r2, #9]	@ zero_extendqisi2
	ldr	r1, [r2, #36]
	add	r3, r3, r0
	b	.L83
.L44:
	ldr	r2, [r1, #36]
	ldr	r3, .L85+4
	str	r3, [r2, #0]
	ldr	r2, [r5, #0]
	ldrb	r3, [r2, #6]
	sub	r3, r3, #16
	cmp	r3, #45
	bhi	.L55
	ldr	r3, [r2, #36]
	str	r4, [r3, #4]
	b	.L84
.L43:
	mov	r3, #-2147483648
	str	r3, [lr, #0]
	strb	r4, [r1, #5]
	ldr	r2, [r5, #0]
	add	r3, r3, #-2147483642
	str	r3, [r2, #0]
	b	.L50
.L41:
	ldr	r3, [r0, #0]
	cmp	r3, #6
	bne	.L51
	ldrb	r1, [r0, #5]	@ zero_extendqisi2
	ldr	r2, [r0, #40]
	str	ip, [r2, r1, asl #2]
	ldrb	r3, [r0, #5]
	add	r3, r3, #1
	strb	r3, [r0, #5]
	ldr	r1, [r5, #0]
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #5]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L52
	ldrb	r2, [r1, #6]	@ zero_extendqisi2
	sub	r3, r2, #40
	cmp	r2, #54
	cmpne	r3, #1
	bhi	.L53
	add	r3, r2, #128
	strb	r3, [r1, #9]
	ldr	r2, [r5, #0]
	ldrb	r3, [r2, #9]	@ zero_extendqisi2
	ldr	r1, [r2, #36]
	orr	r3, r3, #-1728053248
	orr	r3, r3, #6684672
.L83:
	str	r3, [r1, #0]
	ldr	r2, [r5, #0]
	strb	r6, [r2, #7]
	b	.L54
.L53:
	ldr	r2, [r1, #36]
	ldr	r3, .L85+4
	str	r3, [r2, #0]
	ldr	r2, [r5, #0]
	ldrb	r3, [r2, #6]
	sub	r3, r3, #16
	cmp	r3, #45
	ldrls	r2, [r2, #36]
	movls	r3, #1
	bls	.L82
.L55:
	ldr	r2, [r2, #36]
	mov	r3, #2
.L82:
	str	r3, [r2, #4]
.L84:
	ldr	r2, [r5, #0]
	mov	r3, #1
	strb	r3, [r2, #7]
	ldr	r1, [r5, #0]
	add	r3, r3, #2
	strh	r3, [r1, #18]	@ movhi   ;; CYGNUS LOCAL nickc
.L54:
	ldr	r0, [r5, #0]
	ldr	r2, [r0, #36]
	mov	r3, #288
	ldr	r1, [r2, #0]
	add	r3, r3, #67108864
	str	r1, [r3, #0]
	mov	r2, #1
	strb	r2, [r0, #8]
	ldr	r1, [r5, #0]
	mov	r3, #7
	str	r3, [r1, #0]
	b	.L50
.L52:
	mov	r3, #-2147483648
	str	r3, [lr, #0]
	b	.L50
.L51:
	ldr	r3, [r0, #0]
	cmp	r3, #7
	bne	.L50
	cmp	ip, #-2147483648
	bne	.L60
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	cmp	r2, r3
	movcc	r3, #8
	strcc	r3, [r0, #0]
	bcc	.L50
.L61:
	ldrb	r1, [r0, #8]	@ zero_extendqisi2
	ldr	r3, [r0, #36]
	ldr	r2, [r3, r1, asl #2]
	str	r2, [lr, #0]
	ldrb	r3, [r0, #8]
	add	r3, r3, #1
	strb	r3, [r0, #8]
	b	.L50
.L60:
	bl	STWI_stop_timer_in_RAM
	mov	r0, #100
	bl	STWI_set_timer_in_RAM
	b	.L39
.L50:
	mov	r0, #1
	bl	handshake_wait
	mov	r0, r0, asl #16
	cmp	r0, #65536
	beq	.L39
	mov	r6, r5
	ldr	r3, [r6, #0]
	ldr	r2, [r3, #0]
	cmp	r2, #8
	bne	.L65
	mov	r4, #296
	add	r4, r4, #67108864
	mov	r3, #20480
	add	r3, r3, #2
	strh	r3, [r4, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	bl	STWI_stop_timer_in_RAM
	ldr	r0, [r6, #0]
	ldrh	r3, [r0, #18]	@ movhi
	cmp	r3, #3
	bne	.L66
	bl	STWI_init_slave
	ldr	r3, [r6, #0]
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L39
	mov	r0, #492
	add	r0, r0, #2
	bl	Callback_Dummy_S
	b	.L39
.L66:
	mov	r3, #288
	add	r3, r3, #67108864
	mov	r1, #0
	str	r1, [r3, #0]
	mov	r2, #20480
	strh	r1, [r4, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	add	r2, r2, #3
	strh	r2, [r4, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r3, #1
	strb	r3, [r0, #20]
	ldr	r0, [r5, #0]
	ldr	r2, [r0, #28]
	str	r1, [r0, #0]
	cmp	r2, r1
	beq	.L39
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	ldrb	r0, [r0, #6]	@ zero_extendqisi2
	mov	r1, r2
	orr	r0, r0, r3, asl #8
	bl	Callback_Dummy_S
	b	.L39
.L65:
	mov	r3, #520
	add	r3, r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r1, #256
	add	r2, r1, #67108866
	ldrh	r3, [r2, #0]	@ movhi
	tst	r3, #128
	beq	.L71
	ldrh	r3, [r2, #0]	@ movhi
	tst	r3, #3
	bne	.L72
	mov	r2, #65280
	add	r1, r1, #67108864
	ldrh	r3, [r1, #0]	@ movhi
	add	r2, r2, #155
	cmp	r3, r2
	bls	.L71
.L73:
	ldrh	r3, [r1, #0]	@ movhi
	cmp	r3, r2
	bhi	.L73
	b	.L71
.L86:
	.align	0
.L85:
	.word	gSTWIStatus
	.word	-1721368082
.L72:
	mov	r2, #65280
	add	r1, r1, #67108864
	ldrh	r3, [r1, #0]	@ movhi
	add	r2, r2, #254
	cmp	r3, r2
	bls	.L71
.L78:
	ldrh	r3, [r1, #0]	@ movhi
	cmp	r3, r2
	bhi	.L78
.L71:
	mov	r1, #296
	add	r1, r1, #67108864
	mov	r0, #520
	add	r0, r0, #67108864
	mov	r3, #20480
	add	r2, r3, #2
	strh	r2, [r1, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	add	r3, r3, #130
	strh	r3, [r1, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r2, #1
	strh	r2, [r0, #0]	@ movhi   ;; CYGNUS LOCAL nickc
.L39:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.Lfe3:
	.size	 sio32intr_clock_slave,.Lfe3-sio32intr_clock_slave
	.align	0
	.type	 handshake_wait,function
handshake_wait:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, current_function_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	mov	r1, #296
	add	r1, r1, #67108864
	mov	r0, r0, asl #16
	ldr	r2, .L95
	sub	fp, ip, #4
	mov	lr, r0, lsr #14
	ldr	ip, [r2, #0]
.L88:
	ldrb	r3, [ip, #16]
	and	r0, r3, #255
	cmp	r0, #1
	beq	.L90
	ldrh	r3, [r1, #0]	@ movhi
	and	r3, r3, #4
	cmp	r3, lr
	bne	.L88
	mov	r0, #0
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L90:
	ldr	r2, [r2, #0]
	mov	r3, #0
	strb	r3, [r2, #16]
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L96:
	.align	0
.L95:
	.word	gSTWIStatus
.Lfe4:
	.size	 handshake_wait,.Lfe4-handshake_wait
	.align	0
	.type	 STWI_set_timer_in_RAM,function
STWI_set_timer_in_RAM:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, current_function_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	mov	r1, #520
	add	r1, r1, #67108864
	mov	r3, #0
	sub	fp, ip, #4
	ldr	ip, .L107
	and	lr, r0, #255
	ldr	r2, [ip, #0]
	cmp	lr, #80
	ldrb	r0, [r2, #10]	@ zero_extendqisi2
	mov	r4, ip
	mov	r2, lr
	strh	r3, [r1, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r0, r0, asl #2
	add	r3, r3, #256
	add	r1, r3, #67108864
	add	r3, r3, #67108866
	add	r5, r0, r3
	beq	.L100
	bgt	.L105
	cmp	lr, #50
	beq	.L99
	b	.L98
.L105:
	cmp	r2, #100
	beq	.L101
	cmp	r2, #130
	beq	.L102
	b	.L98
.L99:
	mvn	r3, #820
	strh	r3, [r0, r1]	@ movhi   ;; CYGNUS LOCAL nickc
	ldr	r2, [r4, #0]
	mov	r3, #1
	b	.L106
.L100:
	mov	r3, #-1375731712
	mov	r3, r3, asr #20
	strh	r3, [r0, r1]	@ movhi   ;; CYGNUS LOCAL nickc
	ldr	r2, [r4, #0]
	mov	r3, #2
	b	.L106
.L101:
	mvn	r3, #1632
	sub	r3, r3, #9
	strh	r3, [r0, r1]	@ movhi   ;; CYGNUS LOCAL nickc
	ldr	r2, [r4, #0]
	mov	r3, #3
	b	.L106
.L108:
	.align	0
.L107:
	.word	gSTWIStatus
.L102:
	mvn	r3, #2128
	sub	r3, r3, #2
	strh	r3, [r0, r1]	@ movhi   ;; CYGNUS LOCAL nickc
	ldr	r2, [r4, #0]
	mov	r3, #4
.L106:
	str	r3, [r2, #12]
.L98:
	mov	ip, #512
	add	ip, ip, #67108866
	mov	r3, #195
	strh	r3, [r5, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r1, #520
	ldr	r2, [r4, #0]
	add	r1, r1, #67108864
	ldrb	r0, [r2, #10]	@ zero_extendqisi2
	sub	r3, r3, #187
	mov	r3, r3, asl r0
	strh	r3, [ip, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r2, #1
	strh	r2, [r1, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	ldmea	fp, {r4, r5, fp, sp, lr}
	bx	lr
.Lfe5:
	.size	 STWI_set_timer_in_RAM,.Lfe5-STWI_set_timer_in_RAM
	.align	0
	.type	 STWI_stop_timer_in_RAM,function
STWI_stop_timer_in_RAM:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, current_function_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	mov	r1, #256
	ldr	lr, .L110
	add	r0, r1, #67108864
	ldr	r2, [lr, #0]
	sub	fp, ip, #4
	ldrb	r3, [r2, #10]	@ zero_extendqisi2
	mov	ip, #0
	str	ip, [r2, #12]
	mov	r3, r3, asl #2
	strh	ip, [r3, r0]	@ movhi   ;; CYGNUS LOCAL nickc
	ldr	r2, [lr, #0]
	ldrb	r3, [r2, #10]	@ zero_extendqisi2
	add	r1, r1, #67108866
	mov	r3, r3, asl #2
	strh	ip, [r3, r1]	@ movhi   ;; CYGNUS LOCAL nickc
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L111:
	.align	0
.L110:
	.word	gSTWIStatus
.Lfe6:
	.size	 STWI_stop_timer_in_RAM,.Lfe6-STWI_stop_timer_in_RAM
	.align	0
	.type	 STWI_init_slave,function
STWI_init_slave:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, current_function_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r0, .L113
	ldr	r2, [r0, #0]
	mov	r3, #5
	str	r3, [r2, #0]
	mov	r1, #0
	strb	r1, [r2, #20]
	ldr	r3, [r0, #0]
	strb	r1, [r3, #4]
	ldr	r2, [r0, #0]
	strb	r1, [r2, #5]
	ldr	r3, [r0, #0]
	strb	r1, [r3, #6]
	ldr	r2, [r0, #0]
	strb	r1, [r2, #7]
	ldr	r3, [r0, #0]
	strb	r1, [r3, #8]
	ldr	r2, [r0, #0]
	strb	r1, [r2, #9]
	ldr	r3, [r0, #0]
	str	r1, [r3, #12]
	sub	fp, ip, #4
	strb	r1, [r3, #16]
	mov	r2, #296
	ldr	ip, [r0, #0]
	add	r2, r2, #67108864
	strh	r1, [ip, #18]	@ movhi   ;; CYGNUS LOCAL nickc
	mov	r3, #20480
	strb	r1, [ip, #21]
	add	r3, r3, #130
	strh	r3, [r2, #0]	@ movhi   ;; CYGNUS LOCAL nickc
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L114:
	.align	0
.L113:
	.word	gSTWIStatus
.Lfe7:
	.size	 STWI_init_slave,.Lfe7-STWI_init_slave
	.align	0
	.type	 Callback_Dummy_M,function
Callback_Dummy_M:
	bx r2
.Lfe8:
	.size	 Callback_Dummy_M,.Lfe8-Callback_Dummy_M
	.align	0
	.type	 Callback_Dummy_S,function
Callback_Dummy_S:
	bx r1
.Lfe9:
	.size	 Callback_Dummy_S,.Lfe9-Callback_Dummy_S
	.align	0
	.type	 Callback_Dummy_ID,function
Callback_Dummy_ID:
	bx r0
.Lfe10:
	.size	 Callback_Dummy_ID,.Lfe10-Callback_Dummy_ID
.text
	.align	2, 0 @ Don't pad with nop

