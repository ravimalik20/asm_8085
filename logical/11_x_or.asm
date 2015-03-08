
;understanding X-OR
;
; XRA <reg>
; XRI <data>

jmp start

;data


;code
start:	MVI A, 04h
	MVI B, 05h

	XRA B
	OUT 01h

	MVI A, 04h
	XRI 44h
	OUT 02h

hlt