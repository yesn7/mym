
suma 	.equ 0
resta	.equ 1
mult	.equ 2
and	.equ 3
mor	.equ 4
xor	.equ 5
 
;...
		.data
		.retain

Op1		.word 1
Op2		.word 2
resultado 	.word 0


	  	.global main
                .text
ptrOp1	        .field Op1
ptrOp2          .field Op1
ptrRes          .field Res


main:		; MENU
		; prueba si es suma
		CMP R0, #suma
		BEQ sumaOp 	; si es suma, va a esa sección
		CMP R0,#resta 	; si no, prueba si es resta
		BEQ restaOp

		
		


    	        B main


sumaOp:
		BL cargaOp_func	; llama a subrutina para cargar dato
		ADDS R3,R1,R2	; escriba su código
				
		BL   guardaRes_func		; llama a subrutina para guardar resultado
				; termina suma y regresa al inicio

restaOp:
			; escriba su código
			;

multOp:
			; escriba su código
			;

andOp:
			; escriba su código
			;

orOp:
			; escriba su código
			;

xorOp:
			; escriba su código
			;

cargaOp_func:
		LDR R4, ptrOp1 ; cargar operandos en R1 y R2
		LDR R1, [R4]
		LDR R5. ptrOp2
		LDR R2, [R5]
		BX LR
		
				

guardaRes_func:
		LDR R6, ptrRes
		STR R3, [R6]	; guarda resultado en R3
		BX  LR


stop 		B stop
		.end









