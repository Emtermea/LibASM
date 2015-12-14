; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/02 17:40:16 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/04/02 17:40:16 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isupper

_ft_isupper:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 65
	jl 		false
	cmp 	rdi, 90
	jg 		false
	jmp 	true

true:
	mov 	rax, 1
	leave
	ret

false:
	mov 	rax, 0
	leave
	ret
