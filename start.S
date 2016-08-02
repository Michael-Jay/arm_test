.global _start

_start:
	b reset


reset:
	mrs r0, cpsr
	bic r0, r0, #0x1f
	orr r0, r0, #0xd3
	msr cpsr, r0

init_stack:
	@svc
	mov	sp, r0             @svc_sp  1k
	sub	r0, #1024
	mov sp, r0
	
	
	@set the output

	ldr r2, =0x11000000		@base addr
	mov r3, #0x1			@value
	mov r3, r3, lsl#28		@focus on con_7

	str r3, [r2, #0x0c40]	@set GPX2CON[7]=0X01
	
	
	@set output high
	
	ldr r2, =0x11000000
	mov r3, #0x1
	mov r3, r3, lsl #7
	
	str r3, [r2, #0x0c44]
	
	nop
	
	
	
	
	
