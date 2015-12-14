; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/16 17:02:55 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/16 17:02:55 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_bzero

_ft_bzero:
	push	rbp
	mov		rbp, rsp
	mov		rcx, 0			; initialisation du conteur
	mov		rbx, rdi		; save ladresse de la premiere

while:
	cmp		rcx, rsi		; comparaison le compteur et la 2eme
	je		end				; jump if equal
	mov		byte [rbx], 0 	; on met 0 sur tous les bytes de rbx (rbx qui contient la valeur de la premiere)
	inc		rbx				; incrementation
	inc		rcx
	jmp		while			; faire tourner la boucle

end:
	leave					; quitter 
	ret						;valeur de retour
