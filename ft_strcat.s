; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: emtermea <emtermea@student.42.fr>          +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/16 17:03:33 by emtermea          ;+;    ;+;              ;
;    Updated: 2015/03/16 17:03:33 by emtermea         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_strcat

_ft_strcat:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi		;on save les adresses des deux chaines en parametres
	mov		rcx, rsi

while1:
	cmp		byte [rbx], 0 	; on compare la chaine a 0 pour savoir si on est a la fin
	je		while2			; aller a si equal
	inc		rbx				; incrementation de la chaine 
	jmp		while1			; moteur de la boucle

while2:						; une fois a la fin
	cmp		byte [rcx], 0 	; on compare pour savoir si on est a la fin de la 2eme
	je		end				; arrive a la fin
	mov		al, byte [rcx]	; al prend "la valeur du compteur"
	mov		byte [rbx], al 	; la chaine rbx au niveau de al
 	inc		rbx
	inc		rcx
	jmp		while2

end:
	mov		rax, rdi		; rax prend la valeur de retour (rdi = s2)
	leave
	ret
