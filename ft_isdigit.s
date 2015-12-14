; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 10:16:27 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/17 10:16:27 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_isdigit

_ft_isdigit:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, '0'
	jl		ret0
	cmp		rdi, '9'
	jg		ret0

ret1:
	mov		rax, 1
	leave
	ret

ret0:
	mov		rax, 0
	leave
	ret
