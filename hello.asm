global _start

section .data
	msg db "Hello, World!",10
section .text
_start:
	mov eax, 1	; Armazena o valor da chamada de write
	mov edi, 1	; Indica que o destino será em stdout
	mov esi, msg	; pega o endereço do rótulo msg
	mov edx, 14	; recebe o valor da quantidade de msg em bytes
	syscall		; chama a syscall

	mov eax, 60	; Armazena o valor da chamada de Exit
	xor edi, edi	; zera o edi para informa o valor zero no código
	syscall	

