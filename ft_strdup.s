; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/25 17:36:22 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/25 17:36:22 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section	.text
	global	_ft_strdup
	extern	_malloc
	extern	_ft_memcpy
	extern	_ft_strlen

_ft_strdup:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 0
	je		return0
	push 	rdi
	call	_ft_strlen
	mov		rdi, rax
	mov		rcx, rax
	add		rdi, 1
	push	rdi
	call	_malloc
	test	rax, rax
	jz		end
	mov		rdi, rax
	pop		rcx
	pop		rsi
	cld
	rep		movsb

end:
	leave
	ret

return0:
	mov 	rax, 0
	leave
	ret