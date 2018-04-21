%include 'functions.asm'
section .data
	mensaje db 'Ingrese su nombre: ', 0h
	saludar db 'Hola, ',0h
section .bss ;segmento para declaracion de variables
	nombre: resb 255	;reservar 255 byrtes de memoria

section .text
	global _start
	_start:
		mov eax,mensaje
		call printstr
		;lectura de cadena por teclado con eco
		mov edx,255
		mov ecx,nombre
		mov ebx,0	;escritura por STDIN
		mov eax,3	;invoaciones SYS_READ
		int 80h
		;ha finalizado la lectura

		mov eax, saludar
		call printstr
		mov eax,nombre
		call printstr
		call exit



