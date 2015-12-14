; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 13:10:17 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/17 13:10:17 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_tolower

_ft_tolower:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 65
	jl		retc
	cmp		rdi, 90
	jg		retc

ret:
	add		rdi, 32
	mov		rax, rdi
	leave
	ret

retc:
	mov		rax, rdi
	leave
	ret
