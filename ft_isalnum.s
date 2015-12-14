; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 10:25:20 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/17 10:25:20 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;


section .text
	global	_ft_isalnum
	extern	_ft_isdigit
	extern	_ft_isalpha

_ft_isalnum:
	push	rbp
	mov		rbp, rsp
	call	_ft_isdigit
	cmp		rax, 1
	je		ret1
	call	_ft_isalpha
	cmp		rax, 1
	je		ret1		

ret0:
	mov		rax, 0
	leave
	ret

ret1:
	mov		rax, 1
	leave
	ret
