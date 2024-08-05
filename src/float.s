.global _start
.extern printf

.data
	format: .asciz "%f\n"
	f:	.float 1.123

.text
	_start:
		ldr 	x0, =format
		ldr 	x2, =f
		ldr 	s0, [x2]
		fcvt 	d0, s0
		mov 	x1, #0
	
		bl 	printf

	exit:
		mov	x8, #93
		mov 	x0, #0
		svc 	0

