; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/19 14:33:59 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/19 14:33:59 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_memset

_ft_memset:
	push	rbp
	mov		rbp, rsp
	mov		rax, rsi
	mov		rcx, rdx
	mov		rbx, rdi
	;cld
	rep		stosb
	mov		rax, rbx
	leave
	ret
