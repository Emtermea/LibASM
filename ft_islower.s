; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_lower.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/02 17:40:42 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/04/02 17:40:42 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_islower

	_ft_islower:
		push	rbp
		mov		rbp, rsp
		cmp		rdi,97
		jl		false
		cmp		rdi,122
		jg		false
		jmp		true

	false:
		mov		rax,0
		leave
		ret

	true:
		mov		rax,1
		leave
		ret

