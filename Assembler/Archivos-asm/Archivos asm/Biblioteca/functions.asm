;cadena vacia para utilizar en la implemantacion de printstrln
vacio db 0Ah,0h 	;Enter unido a caracter
;int strlen(String message)
strlen:
	push rbx
	mov ebx, eax

nextchar:
	cmp byte [eax],0
	jz final
	inc eax
	jmp nextchar

final:
	sub eax, ebx
	pop rbx
	ret

;-----------------------------
;void printstr(String message)

printstr:
	push rdx
	push rcx
	push rbx
	push rax
	call strlen
	mov edx,eax
	pop rax
	mov ecx,eax
	mov ebx,1
	mov eax,4
	int 80h
	pop rbx
	pop rcx
	pop rdx
	ret 

;----------------------------------------
;void printstrln(String message)
;agregar un salto de línea a la cadena y desplegarla utilizando printstr
printstrln:
	call printstr   ;Impresión de cadena
	push rax
	mov eax,vacio 	;De acá para abajo es la impresión del enter
	;push rax
	;mov eax, rsp 	;Moviendo el valor del stack pointer hacia eax
	call printstr
	pop rax
	ret

;---------------------------
;void exit()
exit:
	mov ebx,0
	mov eax,1
	int 80h
	ret
