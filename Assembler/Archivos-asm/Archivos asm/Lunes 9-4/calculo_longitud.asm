;Hola mundo con cálculo de longitud de cadena
;autor: yo merengues
section .data
	msg db 'Hola mundo salvaje',0Ah

section .text
	global _start
	_start:
		mov ebx, msg	;mover la dirección de msg a bx
		mov eax, ebx	;mover bx a ax, ambos apuntan al mismo segmento

		;Método para ir comparando byte por byte hasta encontrar un 0
		;Se hace un ciclo para eso
		nextchar:
								;cmp compara cadenas
			cmp byte[eax],0		;compara el byte de eax contra 0 
								;(0 es el delimitador de fin de línea)
			jz final			;jz (saltar si es zero)
								;Si es zero salta al final, sino salta a la siguiente línea
			inc eax;			;incremente un valor en eax
			jmp nextchar		;salta a nextchar

		final:
			sub eax, ebx		;sub = sustraction
								;eax = eax - ebx
			mov edx, eax		;mover longitud que está en eax a edx
			mov ecx, msg		;colocar en ecx la dirección de msg
			mov ebx, 1			;salida standar
			mov eax, 4			;llamada a impresión en pantalla
			int 80h				;llamada a interrupción 80h

			;Devolverle el control al SO
			mov edx, 0
			mov eax, 1
			int 80h