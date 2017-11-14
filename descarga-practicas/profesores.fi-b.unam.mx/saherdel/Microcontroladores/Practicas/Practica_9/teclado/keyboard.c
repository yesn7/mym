/*
 * keyboard.c
 *
 *  Created on: 17/10/2016
 *      Author:
 */



#include"perif.h"
#include "regs.h"

/* Global Variables */
unsigned char Keyboard_Row;
unsigned char Keyboard_Column;


unsigned char Key_Pressed;
//* define translation table
const unsigned char KeyboardTable[NB_ROW][NB_COLUMN] =
{
		{'1','2','3','A'},
		{'4','5','6','B'},
		{'7','8','9','C'},
		{'*','0','#','D'}
};

const int led_mask[NB_ROW][NB_COLUMN] =
{
{    LED1,      LED2,      LED1|LED2,   LED4|LED2},
{    LED3,    LED3|LED1,   LED3|LED2,   LED4|LED2|LED1},
{LED3|LED2|LED1, LED4,  LED4|LED1,   LED4|LED3},
{LED4|LED3|LED2, 0 , LED4|LED3|LED2|LED1, LED4|LED3|LED1}
};

//*-------------------------------------------------------------------------
//* Function Name: Get_Keyboard_Column
//* Object: Translate the Key buffer column
//* Input Parameters: read- Port value
//* Output Parameters: col- Active column value
//*-------------------------------------------------------------------------
unsigned char Get_Keyboard_Column(unsigned int read)
{ //* Begin
	unsigned char col;
	col = 0;
		if ( (read & KEYBOARD_COLUMN0) == KEYBOARD_COLUMN0)
		{
			col = COLUMN0;
		}
		else if ( (read & KEYBOARD_COLUMN1) == KEYBOARD_COLUMN1)
		{
			col = COLUMN1;
		}
		else if ( (read & KEYBOARD_COLUMN2) == KEYBOARD_COLUMN2)
		{
			col = COLUMN2;
		}
		else if ( (read & KEYBOARD_COLUMN3) == KEYBOARD_COLUMN3)
		{
			col = COLUMN3;
		}
	return col;
}//* End

void delay_kb(void){
	unsigned int i=0;
	for(i=0;i<5000;i++){}

}

//*-------------------------------------------------------------------------
//* Function Name: Read_Keyboard
//* Object: Encode and Display Key pressed
//* Input Parameters: none
//* Output Parameters: none
//*-------------------------------------------------------------------------
void Read_Keyboard (void)
{ //* Begin
	unsigned int i, val, data_leds;
	for(i = 0; i < 4; i++){		// para cada renglón, se escanea la columna
		GPIO_PORTM_DATA_R = 1 << i;		// enciende renglón i
		val = GPIO_PORTH_DATA_R & 0x0F; // lee puerto de columnas

		if(val != 0){		// si se presionó una tecla...
			// sección de debouncing  y trampa para botón
			delay_kb();
			while((GPIO_PORTH_DATA_R & 0x0F)); // aqui permanece hasta que se suelte la tecla
			//

			Keyboard_Column = Get_Keyboard_Column(val); // obtiene en que columna se presionó
			// decodifica tecla presionada, valor en ASCII
			Key_Pressed = KeyboardTable[i][Keyboard_Column];
			// Escribe en 4 bits de salida, la tecla presionada en valor HEX
			data_leds = led_mask[i][Keyboard_Column];
			GPIO_PORTN_DATA_R = data_leds;
		}
		else{ // si no se presionó ninguna tecla, muestra valor anterior
			GPIO_PORTN_DATA_R = data_leds;
		}
	}

}//* End



//*-------------------------------------------------------------------------
//* Function Name: Keyboard_Initialization
//* Object: Keyboard initialization
//* Input Parameters: none
//* Output Parameters: none
//*-------------------------------------------------------------------------
void Keyboard_Initialization (void)
{//* Begin

	SYSCTL_RCGCGPIO_R |=         ; // activa reloj en PTO M y H, N

	// Espera a que esté listo el puerto
	while((SYSCTL_PRGPIO_R &  ) == 0);

	// Renglones configurados como salida,
	// PORT M3-M0
                                    // 4 bits LSB salida
                                    // 4 LSB todos digitales (DEN)


	// Columnas configurado como entrada,
	// PORT H0-H0
                                       // 4 bits LSB salida
                                       // todos digitales   (DEN)
                                       // Habilita resistencias de pullDown

	// configura puerto de salida de leds
	// PORT N3-N0
	                                // 4 LSB salidas
                                        // todos digitales   (DEN)




}//* End

//*-------------------------------------------------------------------------
//* Function Name: main
//* Object: main program
//* Input Parameters: none

//*-------------------------------------------------------------------------
int main(void) {

	Keyboard_Initialization();
	//* Loop forever
	while(1){
		Read_Keyboard ();
	}

}

