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

	sub	rsp, 4

	sub	rsp, 33

	mov r13, 0
	mov r12, rbp
	sub r12, 4
_L1:
	cmp r13, 5
	jge _L2
	mov rsi,	bufferInt
	mov rdi, getI
	mov al, 0
	call scanf
	mov bx, word[bufferInt]
	mov word [r12], bx
	sub r12, 2
	add r13, 1
	jmp _L1
_L2:

	mov r13, 0
	mov r12, rbp
	sub r12, 15
_L3:
	cmp r13, 5
	jge _L4
	mov rsi,	bufferInt
	mov rdi, getI
	mov al, 0
	call scanf
	mov bx, word[bufferInt]
	mov word [r12], bx
	sub r12, 2
	add r13, 1
	jmp _L3
_L4:

	mov r8w, 6
	mov word[rbp - 0], r8w
_L5: 
	cmp r8w, 10
	jg _L6

	xor rsi, rsi
	mov si, word [rbp - 0]
	cmp rsi, 10
	jg _exit
	cmp rsi, 6
	jl _exit
	sub rsi, 6
	imul rsi, 2
	mov r12, rbp
	sub r12, 4
	sub r12, rsi
	 mov r8w, word[r12]
	 mov word [t1], r8w
	xor rsi, rsi
	mov si, word [rbp - 0]
	cmp rsi, 10
	jg _exit
	cmp rsi, 6
	jl _exit
	sub rsi, 6
	imul rsi, 2
	mov r12, rbp
	sub r12, 15
	sub r12, rsi
	 mov r8w, word[r12]
	 mov word [t2], r8w
	 mov word r8w, [t1]
	 add r8w, [t2]
	 mov word [t0], r8w
	mov	r8w, [t0]
	mov	word[rbp - 2], r8w

	mov rax, 0
	mov ax, word[rbp - 2]
	movsx rax, ax
	mov rdi,printI
	mov rsi, rax
	mov rax, 0
	call printf

	 mov word  r8w, [rbp - 2]
	 mov word [t0], r8w
	mov r12, rbp
	mov r13, rbp
	sub r13, 0
	mov r14, 0
	mov r14w, word[r13]
	sub r14, 6
	imul r14, 2
	sub r12, 26
	sub r12, r14
	mov r8w, word[t0]
	mov word[r12], r8w
	mov r8w, word[rbp - 0]
	inc r8w
	mov word[rbp - 0], r8w
	jmp _L5

_L6:

	mov r13, 0
	mov r12, rbp
	sub r12, 26
_L7:
	cmp r13, 5
	jge _L8
	mov rax, 0
	mov ax, word[r12]
	movsx rax, ax
	mov rdi,printI
	mov rsi, rax
	mov rax, 0
	call printf
	sub r12, 2
	add r13, 1
	jmp _L7
_L8:

_exit:
	mov rax, 1
	mov rbx, 0
	int 80h