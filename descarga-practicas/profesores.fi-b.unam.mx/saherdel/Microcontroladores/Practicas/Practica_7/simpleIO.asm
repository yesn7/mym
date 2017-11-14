

			.include "gpio_reg.s"
			.include "macros.s"

			.global main
			.text


main:

			BL PortF_Init		; Configuración de puertos
			BL PortJ_Init		;

loop		BL PortJ_Input		; Lectura de pines Port J
			BL PortF_Output		; Escritura en pines Port F
			B  loop

PortF_Init:  ; Configuración de bits 4,0 en Puerto F como salidas

		    LDR32 R1, SYSCTL_RCGCGPIO_R		; 1) Activación de reloj para el Puerto F
			LDR   R0, [R1]
			ORR   R0, R0, #0x20 			; 	 encender bit 5 para activar reloj
			STR   R0, [R1]

			LDR32 R1, GPIO_PORTF_DIR_R		; 2) Configurar Registro de Dirección
			MOV   R0, #0x11					;    PF4 y PF0 Output
			STR   R0, [R1]

			LDR32 R1, GPIO_PORTF_DEN_R		; 3) Habilita modo Digital en Puerto F
			MOV   R0, #0xFF					;    1: Habilita I/O digital
			STR   R0, [R1]
			BX    LR


PortJ_Init:   ; Configuración de bits 1,0 en Puerto J como salidas

		    LDR32 R1, SYSCTL_RCGCGPIO_R		; 1) Activación de reloj para el Puerto J
			LDR   R0, [R1]
			ORR   R0, R0, #0x100 			;    encender bit 8 para activar reloj
			STR   R0, [R1]

			LDR32 R1, GPIO_PORTJ_DIR_R		; 2) Configurar Registro de Dirección
			MOV   R0, #0x00					;    PJ0 y PJ1 Inputs
			STR   R0, [R1]

			LDR32 R1, GPIO_PORTJ_PUR_R	 	; 3) Pull-up resistors for PJ1 , PJO
			MOV   R0, #0x03
			STR   R0, [R1]

			;LDR32 R1, GPIO_PORTJ_DR12R_R	; 4) OPCIONAL - Drive Select
			;MOV   R0, #0x01				;    solo bit 0
			;STR   R0, [R1]

			LDR32 R1, GPIO_PORTJ_DEN_R		; 5) Habilita modo Digital en Puerto J
			MOV   R0, #0x03					;    1: Habilita I/O digital
			STR   R0, [R1]
			BX    LR

PortJ_Input:
			LDR32 R1, GPIO_PORTJ_DATA_R   	; Apuntador al Registro de datos del Puerto J (los 8 bits)
			LDR   R0, [R1] 					; Lee todos los bits del puerto J
			AND   R0, R0, #0x03				; lee bits 1 y 0, guarda en R0
			MOV   R1, R0					; copia resultado en R1
			LSL   R1, #3					; R1 = R1 << 3
			ORR   R0, R1, R0				; R0 = R1 || R0
			AND   R0, #0x11					; mantiene valor de bit 4 y 1 en R0
			;MVN   R0, R0
			BX    LR

PortF_Output:
			LDR32 R1, GPIO_PORTF_DATA_R
			STR   R0, [R1]
			BX    LR


			.end
