; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 11:36:28 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/17 11:36:28 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_isprint

_ft_isprint:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 32
	jl		ret0
	cmp		rdi, 126
	jg		ret0

ret1:
	mov		rax, 1
	leave
	ret

ret0:
	mov		rax, 0
	leave
	ret
