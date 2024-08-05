.global _start
.extern printf

.bss
	number: .int

.data
	format: .asciz "%d\n"

.text
	_start:
		ldr	x0, =number
		mov	x1, #123
		str	x1, [x0]

		ldr	x0, =format
		ldr	x1, =number
		ldr	x1, [x1]
		
		bl printf

	exit:
		mov	x8, #93
		mov	x0, #0
		svc	0

