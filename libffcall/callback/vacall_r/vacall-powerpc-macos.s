.text
	.align 2
_callback_receiver:
	mflr r0
	stmw r29,-12(r1)
	stw r0,8(r1)
	li r29,0
	stwu r1,-224(r1)
	mr r30,r1
	addi r0,r30,248
	stw r29,84(r30)
	stw r0,80(r30)
	lwz r0,0(r11)
	stw r3,248(r30)
	stw r4,252(r30)
	mtctr r0
	stw r9,272(r30)
	addi r4,r30,64
	stw r5,256(r30)
	stw r6,260(r30)
	stw r7,264(r30)
	stw r8,268(r30)
	stw r10,276(r30)
	stw r29,96(r30)
	stfd f1,100(r30)
	stfd f2,108(r30)
	stfd f3,116(r30)
	stfd f4,124(r30)
	stfd f5,132(r30)
	stfd f6,140(r30)
	stfd f7,148(r30)
	stfd f8,156(r30)
	stfd f9,164(r30)
	stfd f10,172(r30)
	stfd f11,180(r30)
	stfd f12,188(r30)
	stfd f13,196(r30)
	stw r29,64(r30)
	stw r29,88(r30)
	lwz r3,4(r11)
	bctrl
	lwz r9,88(r30)
	cmpwi cr0,r9,0
	beq- cr0,L1
	cmpwi cr0,r9,1
	beq- cr0,L41
	cmpwi cr0,r9,2
	beq- cr0,L41
	cmpwi cr0,r9,3
	beq- cr0,L42
	cmpwi cr0,r9,4
	beq- cr0,L43
	cmpwi cr0,r9,5
	beq- cr0,L44
	cmpwi cr0,r9,6
	beq- cr0,L40
	cmpwi cr0,r9,7
	beq- cr0,L40
	cmpwi cr0,r9,8
	beq- cr0,L40
	cmpwi cr0,r9,9
	beq- cr0,L40
	addi r0,r9,-10
	cmplwi cr0,r0,1
	bgt- cr0,L22
	lwz r3,72(r30)
	lwz r4,76(r30)
L1:
	lwz r1,0(r1)
	lwz r0,8(r1)
	lmw r29,-12(r1)
	mtlr r0
	blr
L22:
	cmpwi cr0,r9,12
	beq- cr0,L45
	cmpwi cr0,r9,13
	beq- cr0,L46
	cmpwi cr0,r9,14
	beq- cr0,L40
	cmpwi cr0,r9,15
	bne+ cr0,L1
	lwz r0,64(r30)
	andi. r9,r0,1024
	beq- cr0,L1
	lwz r9,92(r30)
	addi r0,r9,-1
	cmplwi cr0,r0,7
	bgt- cr0,L1
	lwz r0,84(r30)
	cmplwi cr0,r9,4
	rlwinm r8,r0,0,30,31
	rlwinm r5,r0,0,0,29
	add r6,r8,r9
	bgt- cr0,L33
	slwi r0,r8,3
	cmplwi cr0,r6,4
	subfic r0,r0,31
	li r9,2
	slw r9,r9,r0
	addi r7,r9,-1
	bgt- cr0,L34
	lwz r9,0(r5)
	slwi r0,r6,3
	subfic r0,r0,32
	and r9,r9,r7
	sraw r3,r9,r0
	b L1
L34:
	lwz r0,0(r5)
	slwi r9,r6,3
	lwz r10,4(r5)
	subfic r8,r9,64
	and r0,r0,r7
	addi r9,r9,-32
	slw r0,r0,r9
	sraw r10,r10,r8
L39:
	or r3,r10,r0
	b L1
L33:
	slwi r0,r8,3
	cmplwi cr0,r6,8
	subfic r0,r0,31
	li r9,2
	slw r9,r9,r0
	addi r29,r9,-1
	bgt- cr0,L37
	lwz r7,0(r5)
	slwi r10,r6,2
	addi r10,r10,-16
	lwz r8,4(r5)
	and r7,r7,r29
	slwi r9,r6,3
	subfic r9,r9,64
	slw r0,r7,r10
	slw r0,r0,r10
	sraw r8,r8,r9
	or r4,r0,r8
	sraw r3,r7,r9
	b L1
L37:
	slwi r9,r6,3
	lwz r0,4(r5)
	lwz r10,0(r5)
	subfic r6,r9,96
	lwz r8,8(r5)
	addi r9,r9,-64
	slw r7,r0,r9
	and r10,r10,r29
	sraw r8,r8,r6
	slw r10,r10,r9
	sraw r0,r0,r6
	or r4,r7,r8
	b L39
L40:
	lwz r3,72(r30)
	b L1
L46:
	lfd f1,72(r30)
	b L1
L45:
	lfs f1,72(r30)
	b L1
L44:
	lhz r3,72(r30)
	b L1
L43:
	lha r3,72(r30)
	b L1
L42:
	lbz r3,72(r30)
	b L1
L41:
	lbz r0,72(r30)
	extsb r3,r0
	b L1
	.align 2
	.globl _callback_get_receiver
_callback_get_receiver:
	mflr r0
	stmw r30,-8(r1)
	stw r0,8(r1)
	bcl 20,31,L1$pb
L1$pb:
	stwu r1,-48(r1)
	mflr r31
	addis r9,r31,ha16(L_callback_receiver$non_lazy_ptr-L1$pb)
	mr r30,r1
	lwz r3,lo16(L_callback_receiver$non_lazy_ptr-L1$pb)(r9)
	lwz r1,0(r1)
	lwz r0,8(r1)
	lmw r30,-8(r1)
	mtlr r0
	blr
.data
	.align 2
L_callback_receiver$non_lazy_ptr:
	.long	_callback_receiver
