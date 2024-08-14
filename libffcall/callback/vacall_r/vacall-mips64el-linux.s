	.file	1 "vacall-mips64.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	callback_receiver
	.type	callback_receiver, @function
callback_receiver:
	.frame	$fp,272,$31		# vars= 160, regs= 6/0, args= 0, gp= 0
	.mask	0xd0070000,-72
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-272
	sd	$fp,192($sp)
	move	$fp,$sp
	sd	$4,208($fp)
	ld	$4,8($2)
	ld	$25,0($2)
	daddiu	$12,$fp,208
	sd	$31,200($sp)
	sd	$18,176($sp)
	sd	$17,168($sp)
	sd	$16,160($sp)
	sd	$5,216($fp)
	sd	$6,224($fp)
	sd	$7,232($fp)
	sd	$8,240($fp)
	sd	$9,248($fp)
	sd	$10,256($fp)
	sd	$11,264($fp)
	sdc1	$f12,96($fp)
	sdc1	$f13,104($fp)
	sdc1	$f14,112($fp)
	sdc1	$f15,120($fp)
	sdc1	$f16,128($fp)
	sdc1	$f17,136($fp)
	sdc1	$f18,144($fp)
	sdc1	$f19,152($fp)
	swc1	$f12,60($fp)
	swc1	$f13,64($fp)
	swc1	$f14,68($fp)
	swc1	$f15,72($fp)
	swc1	$f16,76($fp)
	swc1	$f17,80($fp)
	swc1	$f18,84($fp)
	move	$5,$fp
	swc1	$f19,88($fp)
	sd	$12,24($fp)
	sw	$0,0($fp)
	sd	$0,32($fp)
	sw	$0,40($fp)
	jalr	$25
	sw	$0,56($fp)

	lw	$12,40($fp)
	beq	$12,$0,.L1
	li	$13,1			# 0x1

	beq	$12,$13,.L43
	li	$13,2			# 0x2

	beq	$12,$13,.L43
	li	$13,3			# 0x3

	beq	$12,$13,.L46
	li	$13,4			# 0x4

	beq	$12,$13,.L47
	li	$13,5			# 0x5

	beq	$12,$13,.L48
	li	$13,6			# 0x6

	beq	$12,$13,.L49
	li	$13,7			# 0x7

	beq	$12,$13,.L50
	li	$13,8			# 0x8

	beq	$12,$13,.L44
	li	$13,9			# 0x9

	beq	$12,$13,.L44
	li	$13,10			# 0xa

	beq	$12,$13,.L44
	li	$13,11			# 0xb

	beq	$12,$13,.L44
	li	$13,12			# 0xc

	beq	$12,$13,.L51
	li	$13,13			# 0xd

	beq	$12,$13,.L52
	li	$13,14			# 0xe

	beq	$12,$13,.L44
	li	$13,15			# 0xf

	bnel	$12,$13,.L58
	move	$sp,$fp

	lw	$12,0($fp)
	andi	$13,$12,0x400
	beq	$13,$0,.L1
	andi	$13,$12,0x4

	beq	$13,$0,.L19
	ld	$14,48($fp)

	ld	$12,48($fp)
	li	$13,1			# 0x1
	beq	$12,$13,.L53
	li	$13,2			# 0x2

	beq	$12,$13,.L54
	li	$13,4			# 0x4

	beq	$12,$13,.L55
	li	$13,8			# 0x8

	bnel	$12,$13,.L58
	move	$sp,$fp

	ld	$12,32($fp)
	ld	$2,0($12)
.L1:
	move	$sp,$fp
.L58:
	ld	$31,200($sp)
	ld	$fp,192($sp)
	ld	$18,176($sp)
	ld	$17,168($sp)
	ld	$16,160($sp)
	j	$31
	daddiu	$sp,$sp,272

	.align	3
.L43:
	move	$sp,$fp
	ld	$31,200($sp)
	ld	$18,176($sp)
	ld	$17,168($sp)
	ld	$16,160($sp)
	lb	$2,8($fp)
	ld	$fp,192($sp)
	j	$31
	daddiu	$sp,$sp,272

	.align	3
.L44:
	b	.L1
	ld	$2,8($fp)

	.align	3
.L46:
	b	.L1
	lbu	$2,8($fp)

	.align	3
.L47:
	b	.L1
	lh	$2,8($fp)

	.align	3
.L48:
	b	.L1
	lhu	$2,8($fp)

	.align	3
.L49:
	b	.L1
	lw	$2,8($fp)

	.align	3
.L51:
	b	.L1
	lwc1	$f0,8($fp)

	.align	3
.L50:
	b	.L1
	lwu	$2,8($fp)

.L52:
	b	.L1
	ldc1	$f0,8($fp)

.L19:
	daddiu	$13,$14,-1
	sltu	$13,$13,16
	beql	$13,$0,.L59
	andi	$13,$12,0x800

	ld	$13,32($fp)
	li	$15,-8			# 0xfffffffffffffff8
	sltu	$25,$14,9
	andi	$24,$13,0x7
	and	$15,$13,$15
	beq	$25,$0,.L24
	daddu	$13,$14,$24

	sltu	$25,$13,9
	beq	$25,$0,.L25
	dsll	$13,$13,3

	daddiu	$13,$13,-1
	ld	$25,0($15)
	sll	$13,$13,0
	li	$15,2			# 0x2
	dsll	$13,$15,$13
	daddiu	$13,$13,-1
	and	$13,$13,$25
	sll	$24,$24,3
	dsra	$2,$13,$24
.L23:
	andi	$13,$12,0x800
.L59:
	beql	$13,$0,.L27
	andi	$12,$12,0x1000

	li	$13,4			# 0x4
	beq	$14,$13,.L56
	li	$13,8			# 0x8

	beql	$14,$13,.L57
	ld	$13,32($fp)

	andi	$12,$12,0x1000
	beql	$12,$0,.L58
	move	$sp,$fp

	li	$12,16			# 0x10
.L60:
	bnel	$14,$12,.L58
	move	$sp,$fp

	ld	$12,32($fp)
	ldc1	$f0,0($12)
	b	.L1
	ldc1	$f2,8($12)

.L27:
	beq	$12,$0,.L1
	li	$12,8			# 0x8

	bne	$14,$12,.L60
	li	$12,16			# 0x10

	ld	$13,32($fp)
	b	.L1
	ldc1	$f0,0($13)

.L24:
	sltu	$25,$13,17
	beq	$25,$0,.L26
	dsll	$13,$13,3

	daddiu	$13,$13,-65
	ld	$17,8($15)
	li	$25,2			# 0x2
	sll	$13,$13,0
	dsll	$13,$25,$13
	subu	$25,$0,$24
	sll	$25,$25,2
	ld	$16,0($15)
	daddiu	$13,$13,-1
	addiu	$15,$25,32
	and	$13,$13,$17
	sll	$24,$24,3
	dsll	$25,$13,$15
	dsra	$16,$16,$24
	dsll	$15,$25,$15
	or	$2,$16,$15
	b	.L23
	dsra	$3,$13,$24

.L53:
	ld	$12,32($fp)
	b	.L1
	lbu	$2,0($12)

.L54:
	ld	$12,32($fp)
	b	.L1
	lhu	$2,0($12)

.L26:
	daddiu	$13,$13,-129
	ld	$16,8($15)
	ld	$17,0($15)
	sll	$13,$13,0
	ld	$18,16($15)
	li	$15,2			# 0x2
	subu	$25,$0,$24
	dsll	$15,$15,$13
	daddiu	$15,$15,-1
	sll	$25,$25,3
	sll	$24,$24,3
	addiu	$25,$25,64
	and	$13,$15,$18
	dsll	$13,$13,$25
	dsra	$15,$17,$24
	dsll	$17,$16,$25
	dsra	$24,$16,$24
	or	$2,$15,$17
	b	.L23
	or	$3,$13,$24

.L56:
	ld	$12,32($fp)
	b	.L1
	lwc1	$f0,0($12)

.L55:
	ld	$12,32($fp)
	b	.L1
	lwu	$2,0($12)

.L25:
	daddiu	$13,$13,-65
	li	$25,2			# 0x2
	sll	$13,$13,0
	ld	$17,8($15)
	dsll	$13,$25,$13
	ld	$25,0($15)
	daddiu	$13,$13,-1
	subu	$16,$0,$24
	and	$15,$13,$17
	sll	$24,$24,3
	sll	$13,$16,3
	dsll	$13,$15,$13
	dsra	$24,$25,$24
	b	.L23
	or	$2,$13,$24

.L57:
	andi	$12,$12,0x1000
	lwc1	$f0,0($13)
	beq	$12,$0,.L1
	lwc1	$f2,4($13)

	b	.L1
	ldc1	$f0,0($13)

	.set	macro
	.set	reorder
	.end	callback_receiver
	.size	callback_receiver, .-callback_receiver
	.align	2
	.align	3
	.globl	callback_get_receiver
	.set	nomips16
	.set	nomicromips
	.ent	callback_get_receiver
	.type	callback_get_receiver, @function
callback_get_receiver:
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$13,%hi(%neg(%gp_rel(callback_get_receiver)))
	daddu	$13,$13,$25
	daddiu	$13,$13,%lo(%neg(%gp_rel(callback_get_receiver)))
	daddiu	$sp,$sp,-16
	ld	$12,%got_page(callback_receiver)($13)
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$2,$12,%got_ofst(callback_receiver)
	j	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	callback_get_receiver
	.size	callback_get_receiver, .-callback_get_receiver
	.ident	"GCC: (GNU) 5.4.0"
