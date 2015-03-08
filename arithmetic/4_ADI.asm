
; Understanding addition instructions
; Add data byte with A

jmp start

;data


;code
start:	MVI A,04h
	; Adds the data byte with A
	ADI 06h
	OUT 02h

hlt