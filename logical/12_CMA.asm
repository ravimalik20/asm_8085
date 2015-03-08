
;understanding complementing
;
; CMA

jmp start

;data


;code
start:	MVI A, 01h
	CMA

	OUT 01h

hlt