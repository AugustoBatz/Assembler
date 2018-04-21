;Este hola mundo es con cálculo de longitud de cadena
;pero utilizando llamada a subrutina

section .data
	msg db "Hola mundo salvaje!",0Ah

section .text
	global _start
	_start:
		mov eax, msg	;mueve la dirección de msg a eax
		call strlen		;llamada a la subrutina
		mov edx, eax	;la longitud se devuelve en eax
		mov ecx, msg
		mov ebx, 1
		mov eax, 4
		int 80h

		mov ebx, 0
		mov eax, 1
		int 80h

;Implementación de la subrutina
	strlen:
		push ebx		;esto coloca a ebx, en la pila
		mov ebx, eax
		nextchar:
			cmp byte[eax], 0
			jz finalizar
			inc eax
			jmp nextchar

	finalizar:
		sub eax, ebx
		pop ebx			;esto extrae de la pila a ebx
		ret