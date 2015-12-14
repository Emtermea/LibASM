; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/19 13:52:09 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/19 13:52:09 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_strlen

_ft_strlen:
	cmp		rdi,0
	je 		end
	push	rbp
	mov		rbp, rsp
 	mov 	rcx, 0x7FFFFFFF
 	add		rcx, 1
	xor 	al, al
	repne	scasb 				; repeat
	mov 	rax, 0x7FFFFFFF
	sub		rax, rcx
	jmp		end

nul:
	xor		rax, rax

end:
	leave
	ret
