; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/16 18:50:46 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/16 18:50:46 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_isalpha

_ft_isalpha:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 'A'
	jl		ret0
	cmp		rdi, 'z'
	jg		ret0
	cmp		rdi, 'Z'
	jle		ret1
	cmp		rdi, 'a'
	jge		ret1

ret0:
	mov		rax, 0
	leave
	ret

ret1:
	mov		rax, 1
	leave
	ret
