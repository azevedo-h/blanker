;
;   código para chavear entre dois estados distintos quando acionado um botão ligado a P2.2
;   estado 0: P0 = 00Fh; estado 1: P0 = 0F0h;
; 	autor: Hebert Azevedo Sá
; 	data: Fev/2025
;

	org		00h

offstate:
	mov		P0, #0Fh
	sjmp	loop

onstate:
	mov		P0, #0F0h
	sjmp	loop

loop:
	jb		P2.2, loop
	jnb		P2.2, $

	cpl		B.0
	jb		B.0, onstate
	jnb		B.0, offstate



	end
