ASM:
	FLOAT:
		ldr x0, =value
		ldr s0, [x0]
		fcvt d0, s0 // fcvt is Floating-point Convert precision (scalar)
	EXTERN (C):
		.extern printf (C function)
		LD:
			as main.s -o main.o
			ld main.o -o main -lc --dynamic-linker /lib/ld (Glibc)

	AS COMMON DIR:
		https://sourceware.org/binutils/docs/as/Pseudo-Ops.html

	STACK:
		IMPORTANT: ARM64 stack need to be 16Bit Aligned!
		str x0, [sp, -16]! // Push
		ldr x0, [sp], #16  // Pop

	HEAP:
		.bss
			i: .int
		.text
		ldr x0, =i // Load ADDR
		ldr x0, [x0] // Load value

		ldr x0, =i
		str x0, [x0] // Store

	REG:
		X8 - Call
		X0 - X.. - ARGV / Return

	SYSCALL:
		mov x8, SYSCODE
		svc 0		

	USEFULL WEBSITE:
		https://arm64.syscall.sh/

