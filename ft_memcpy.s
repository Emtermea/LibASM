; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/19 15:20:50 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/19 15:20:52 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memcpy

_ft_memcpy:
	push	rbp
	mov		rbp, rsp
	mov		rax, rsi
	mov		rcx, rdx
	mov		rbx, rdi
	rep		movsb 		; prend de rsi et met dans rdi jusqua rcx = 0
	mov		rax, rbx
	leave
	ret
