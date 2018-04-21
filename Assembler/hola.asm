
section .text ;seccion de codigo
global _start ;variable global para indicar donde comienza el programa

_start: ;el programa iniciara aca


;imprimimos el texto en la terminal:

mov eax, 4 ;4=sys call para imprimir el texto en pantalla
mov ebx, 1 ;1=imprimir en la terminal
mov ecx, texto ;referencia a lo que queremos imprimir
mov edx, largoTexto ; el tamaño de lo que queremos imprimir
int 80h ;interrupción para ejecutar lo anterior


;Cerramos el programa:

mov eax, 1 ;1=sys call para salir
mov ebx, 0
int 80h ;interrupción para ejecutar lo anterior