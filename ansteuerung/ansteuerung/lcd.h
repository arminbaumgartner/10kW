//////////////////////////////////////////////////////////////////////////////
//
// Headerfile LCD.h zur LCD Ansteuerung am Port F des ATmega32u4
//
// Befehle: LCD_init(), LCD_cmd(char data), LCD_send(char data)
//          LCD_string(char *data)
//
// LCD_init();               initialisiert Port F
//                           und LCD im 4-Bit Mode, 2 Zeilen, 5x8 Dots
//                           Bsp.: LCD_init();
//
// LCD_cmd(char data);       schickt Befehl ans LCD
//                           Bsp.: LCD_cmd(0xC5);
//gehe zu 2. Zeile, 6. Position
//
// LCD_send(char data);      schickt Daten ans LCD
//                           Bsp.: LCD_send(0xEF); sendet ein ö
//
// LCD_string(char *data);   schickt eine Zeichenkette ans LCD
//                           Bsp.: LCD_string("Hallo");    sendet Hallo
//
// Pinbelegung am Board:
// LCD |   32U4   | Bemerkung
// ----|----------|--------------------
// DB7 |    PF7   |
// DB6 |    PF6   |
// DB5 |    PF5   |
// DB4 |    PF4   |
// DB3 |     -    | wird nicht benötigt
// DB2 |     -    | wird nicht benötigt
// DB1 |     -    | wird nicht benötigt
// DB0 |     -    | wird nicht benötigt
// E   |    PF1   |
// R/W |     -    | per HW auf GND gelegt
// RS  |    PB0   |
//
// ////////////////////////////////////////////////////////////////////////////////


#define F_CPU 16000000

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdlib.h>
#include <util/delay.h>



//-- Hier die Pinzuordnung bei Bedarf aendern (siehe Tabelle oben) --//

#define DB7 PORTF7
#define DB6 PORTF6
#define DB5 PORTF5
#define DB4 PORTF4
#define E PORTF1
#define RS PORTB0

// PORT Zuordnung muss im gesamten LCD.h angepasst werden!!!
// d.h. PORTF und DDRF durch gewünschten anderen Port ersetzen //

//------------------- Ende Pinzuordnung ------------------------------//


void delay_ms (unsigned int ms);   //Hilfsfunktion: Zeitvernichtung 
void Enable(void);  //Hilfsfunktion: H=>L Flanke der Enable Leitung (E) 
void LCD_init(void);
void LCD_send(char data);
void LCD_cmd(char data);
void LCD_string(char *data);

void LCD_Display(void);