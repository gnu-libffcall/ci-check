	.file	"cache-powerpc.c"
	.section	".text"
	.align 2
	.globl __TR_clear_cache_2
	.type	__TR_clear_cache_2, @function
__TR_clear_cache_2:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	stwu 1,-32(1)
	icbi 0,3; dcbf 0,3
	addi 0,3,4
	icbi 0,0; dcbf 0,0
	addi 9,3,8
	icbi 0,9; dcbf 0,9
	addi 0,3,12
	icbi 0,0; dcbf 0,0
	addi 9,3,16
	icbi 0,9; dcbf 0,9
	addi 3,3,20
	icbi 0,3; dcbf 0,3
	sync; isync
	addi 1,1,32
	blr
	.size	__TR_clear_cache_2, .-__TR_clear_cache_2
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
