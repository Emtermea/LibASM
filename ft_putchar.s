; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/29 18:33:23 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/29 18:33:23 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .text
		global	_ft_putchar

_ft_putchar:
		push	rbp
		mov		[rbp], di
		mov		rsi, rbp
		mov		rdi, STDOUT
		mov		rdx, 1
		mov		rax, MACH_SYSCALL(WRITE)
		syscall
		pop		rbp
		ret