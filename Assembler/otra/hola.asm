section .data

msg db "hola mundo!!!!",10,13;este es el texto xD
len equ $ - msg

section .text

global _start

_start:
	;mov destino,origen destino=origen
	mov eax, 4;llama al sys_write
	mov ebx, 1;stdout
	mov ecx, msg;msg pantalla
	mov edx, len;longitud del mensaje
	int 0x80    ;interrupcion
	mov eax, 1 ; system "pause" exit
	int 0x80    
