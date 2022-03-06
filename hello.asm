global _start

section .data
	msg db "Hello, World!",10
section .text
_start:
	mov eax, 1
	mov edi, 1
	mov esi, msg
	mov edx, 14
	syscall

	mov eax, 60
	xor edi, edi
	syscall	

