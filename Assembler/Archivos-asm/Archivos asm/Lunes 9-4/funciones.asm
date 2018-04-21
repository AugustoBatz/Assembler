global printHola, msg ;hacemos visible la subrutina printHola y variable msg

section .data
	msg db "Hola!",10

section .text
	printHola:
		mov rax,4
		mov rbx,1
		mov rcx,msg
		mov rdx,6
		int 80h
		ret