; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_abs.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/04 18:58:14 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/04/04 18:58:14 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_abs

_ft_abs:
	cmp		edi, 0
	jl		end
	mov		eax, edi
	ret

end:
	not		edi
	add		edi, 1
	mov		eax, edi
	ret
