extern	scanf
extern	printf

section	.data
	printTRUE	db	'TRUE', 10, 0
	printFALSE	db	'FALSE', 10, 0
	printI	db	'%d', 10, 0
	printR	db	'%f', 10, 0
	printIArr	db	'%d ', 0
	printRArr	db	'%f ', 0
	getI	db	'%d', 0
	getR	db	'%f', 0
	printTRUEArr	db	'TRUE ', 0
	printFALSEArr	db	'FALSE ', 0

	bufferInt	db	0
	outputInt	db	0
	t0	dw	0
	t1	dw	0
	t2	dw	0
	t3	dw	0
	t4	dw	0
	t5	dw	0
	t6	dw	0
	t7	dw	0
	t8	dw	0
	t9	dw	0
	t10	dw	0
	t11	dw	0
	t12	dw	0
	t13	dw	0
	t14	dw	0
	t15	dw	0
	t16	dw	0
	t17	dw	0
	t18	dw	0
	t19	dw	0
	t20	dw	0
	t21	dw	0
	t22	dw	0
	t23	dw	0
	t24	dw	0
	t25	dw	0
	t26	dw	0
	t27	dw	0
	t28	dw	0
	t29	dw	0
	t30	dw	0
	t31	dw	0
	t32	dw	0
	t33	dw	0
	t34	dw	0
	t35	dw	0
	t36	dw	0
	t37	dw	0
	t38	dw	0
	t39	dw	0

section	.bss

section	.text
bits 64

global	main

main:
	push rbp
	mov rbp, rsp

	sub	rsp, 14

	sub	rsp, 4

	mov rsi,	bufferInt
	mov rdi, getI
	mov al, 0
	call scanf
	mov bx, word[bufferInt]
	mov word [rbp - 14], bx

	mov rsi,	bufferInt
	mov rdi, getI
	mov al, 0
	call scanf
	mov bx, word[bufferInt]
	mov word [rbp - 16], bx

	sub	rsp, 3



	 mov word[t0], 7
	mov	r8w, [t0]
	mov	word[rbp - 4], r8w

	mov r8w, 1
	mov word[rbp - 6], r8w
_L1: 
	cmp r8w, 3
	jg _L2

	mov rsi,	bufferInt
	mov rdi, getI
	mov al, 0
	call scanf
	mov bx, word[bufferInt]
	mov word [rbp - 0], bx

	mov rsi,	bufferInt
	mov rdi, getI
	mov al, 0
	call scanf
	mov bx, word[bufferInt]
	mov word [rbp - 2], bx

	xor rsi, rsi
	mov si, word [rbp - 0]
	cmp si, 1627389952
	jg _exit
	cmp si, 1627389952
	jl _exit
	sub rsi, 1627389952
	imul rsi, 2
	mov r12, rbp
	sub r12, 18
	sub r12, rsi
	 mov r8w, word[r12]
	 mov word [t1], r8w
	xor rsi, rsi
	mov si, word [rbp - 2]
	cmp si, 1627389952
	jg _exit
	cmp si, 1627389952
	jl _exit
	sub rsi, 1627389952
	imul rsi, 2
	mov r12, rbp
	sub r12, 19
	sub r12, rsi
	 mov r8w, word[r12]
	 mov word [t2], r8w
	 mov word r8w, [t1]
	 add r8w, [t2]
	 mov word [t0], r8w
	mov	r8w, [t0]
	mov	word[rbp - 8], r8w

	xor rsi, rsi
	mov si, word [rbp - 4]
	cmp si, 1627389952
	jg _exit
	cmp si, 1627389952
	jl _exit
	sub rsi, 1627389952
	imul rsi, 2
	mov r12, rbp
	sub r12, 18
	sub r12, rsi
	 mov r8w, word[r12]
	 mov word [t1], r8w
	xor rsi, rsi
	mov si, word [rbp - 2]
	cmp si, 1627389952
	jg _exit
	cmp si, 1627389952
	jl _exit
	sub rsi, 1627389952
	imul rsi, 2
	mov r12, rbp
	sub r12, 19
	sub r12, rsi
	 mov r8w, word[r12]
	 mov word [t2], r8w
	 mov word r8w, [t1]
	 add r8w, [t2]
	 mov word [t0], r8w
	mov	r8w, [t0]
	mov	word[rbp - 10], r8w

	xor rsi, rsi
	mov si, word [rbp - 0]
	cmp si, 1627389952
	jg _exit
	cmp si, 1627389952
	jl _exit
	sub rsi, 1627389952
	imul rsi, 2
	mov r12, rbp
	sub r12, 18
	sub r12, rsi
	 mov r8w, word[r12]
	 mov word [t1], r8w
	xor rsi, rsi
	mov si, word [rbp - 4]
	cmp si, 1627389952
	jg _exit
	cmp si, 1627389952
	jl _exit
	sub rsi, 1627389952
	imul rsi, 2
	mov r12, rbp
	sub r12, 19
	sub r12, rsi
	 mov r8w, word[r12]
	 mov word [t2], r8w
	 mov word r8w, [t1]
	 add r8w, [t2]
	 mov word [t0], r8w
	mov	r8w, [t0]
	mov	word[rbp - 12], r8w

	mov rax, 0
	mov ax, word[rbp - 8]
	movsx rax, ax
	mov rdi,printI
	mov rsi, rax
	mov rax, 0
	call printf

	mov rax, 0
	mov ax, word[rbp - 10]
	movsx rax, ax
	mov rdi,printI
	mov rsi, rax
	mov rax, 0
	call printf

	mov rax, 0
	mov ax, word[rbp - 12]
	movsx rax, ax
	mov rdi,printI
	mov rsi, rax
	mov rax, 0
	call printf
	mov r8w, word[rbp - 6]
	inc r8w
	mov word[rbp - 6], r8w
	jmp _L1

_L2:

_exit:
	mov rax, 1
	mov rbx, 0
	int 80h