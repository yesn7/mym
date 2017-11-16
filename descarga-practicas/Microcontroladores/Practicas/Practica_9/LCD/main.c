/*
 * main.c
 */

// Posicion de las lineas de control en los bits del puerto

#include "lcd.h"

unsigned char msj1[]= "Hola\0";
unsigned char msj2[]= " Mundo\0";

int main(void) {
	


	ports_init();
	LCD_clear();
	LCD_home();
	LCD_display_all_cursor();
	LCD_write_msj(msj1);
	LCD_write_msj(msj2);

	while(1);
}
