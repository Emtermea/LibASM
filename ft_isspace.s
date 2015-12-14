; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/02 17:44:33 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/04/02 17:44:33 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isspace

_ft_isspace:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 9
	je		end
	cmp		rdi, 10
	je		end
	cmp		rdi, 13
	je		end
	cmp		rdi, 11
	je		end
	cmp		rdi, 28
	je		end
	cmp		rdi, 32
	je		end
	mov		rax, 0

end0:
	mov		rax, 0
	leave
	ret	

end:
	mov		rax, 1
	leave
	ret