// Add -lncurses to the ld flags

.global _start
.extern initscr printw getch endwin

.data
	string: .asciz "Hello World!\n"

.text
	_start:
		bl	initscr
		
		ldr	x0, =string
		bl	printw

		bl	getch
		
		bl	endwin

	exit:
		mov	x8, #93
		mov	x0, #0
		svc	0

