%include 'functions.asm'
section .data
	msg1 db 'Hola mundo!', 0h
	msg2 db 'Reciclando código!', 0h

section .text
	global _start:
	_start:
		mov eax, msg1
		call printstrln
		mov eax, msg2
		call printstrln
		call exit