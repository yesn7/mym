;*****************************************************************************
; LDR32
; Macro que carga un valor de 32 bits en un registro
;
; Sintaxis:    LDR32  Rd, imm32bit 
;	Rd:         Registro destino
;	imm32bit:   valor de 32 bits 
;
; Ejemplos:
; 	val	.equ	0x12345678
; 		LDR32 R0, val
;		LDR32 R1, 0xFFFF0000
;
;*****************************************************************************

LDR32 	.macro P1, P2						; P1, P2 son argumentos de la macro
		.eval (P2 & 0xFFFF0000) >> 16, temp	; el símbolo temp contiene los 16 MSB 
		.eval P2 & 0x0000FFFF, P2			; P2 contiene los 16 LSB
		 MOVW  P1, #P2						; carga en destino 16 LSB
		 MOVT  P1, #temp					; carga en destino 16 MSB
		.endm								; fin de macro

DSR     .macro P1, P2
		 PUSH  {R8, LR}	
		 LDR32  R8, P2 
		 STR    P1, [R8] 
		 POP   {R8, PC}
		.endm
		
INC		.macro	P1
		 ADDS   P1, #1
		.endm		


DEC		.macro	P1
		 SUBS   P1, #1
		.endm				