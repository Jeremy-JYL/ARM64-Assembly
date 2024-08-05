.global	_start
.extern printf

.data
	format: .asciz "%d\n"

.text
	_start:
		mov	x0, #123
		str	x0, [sp, #-16]!

		ldr	x0, =format
		ldr	x1, [sp], #16

		bl	printf

	exit:
		mov	x8, #93
		mov	x0, #0
		svc 	0

