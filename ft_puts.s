; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 13:03:19 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/17 13:03:19 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .data
hello: 
	.bob	db "(null)", 0
	.bk		db 10

section .text
	global	_ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 0
	jne		suite
	lea		rdi, [rel hello.bob]

suite:
	mov		rbx, rdi
	jmp		while1

while1:
	cmp		byte [rbx], 0
	je		end
	mov		rdi, 1
	mov		rsi, rbx
	mov		rdx, 1
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	inc		rbx
	jmp		while1

end:
	mov		rdi, 1
	lea		rsi, [rel hello.bk]
	mov		rdx, 1
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	leave
	ret 
