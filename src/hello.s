// Simple Hello World (GLIBC)

.global	_start
.extern	printf

.data
	string:	.asciz "Hello World!\n"

.text
	_start:
		ldr	x0, =string
		bl printf
		b exit

	exit:
		mov	x8, #93
		mov	x0, #0
		svc	0

