section .data
       texto: db 'Hola mundo',10
       largoTexto: equ $-largoTexto

section .text              
global _start

      _start:
      mov eax, 4
      mov ebx, 1
      mov ecx, texto
      mov edx, largoTexto
      int 80h

      mov eax, 1
      mov ebx, 0
      int 80h 