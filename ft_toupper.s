; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 11:55:55 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/17 11:55:55 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_toupper

_ft_toupper:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 97
	jl		retc
	cmp		rdi, 122
	jg		retc

ret:
	sub		rdi, 32
	mov		rax, rdi
	leave
	ret

retc:
	mov		rax, rdi
	leave
	ret
