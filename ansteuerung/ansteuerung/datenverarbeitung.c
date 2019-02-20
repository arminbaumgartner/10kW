/*
 * datenverarbeitung.h
 *
 * Created: 05.09.2018 15:43:01
 * Author : Armin
 *
 *
 *Dieses Programm dient zur verarbeitung der Daten zwischen Akkumanagement und Motorcontroller
 *
 *	Übermittelte Daten über UART werden verwendet und zur Motorsteuerung genutzt
 *
 *
 */ 


#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdlib.h>
#include "berechnung.h"
#include "datenverarbeitung.h"
#include "lcd.h"
#include "kommunikation.h"


extern volatile float geschwindigkeit;
extern volatile float drehzahl;

uint16_t nennspannung = NENNSPANNUNG;
uint16_t maxspannung = MAXSPANNUNG;

char ausgabe_02 [5];



int akku_ladestand (uint16_t spannung)
{
	uint8_t ladestand=100;
	
	ladestand = (spannung - LADUNG00)/4;
	
	return ladestand;
	
}

void akku_daten_einbeziehen (uint8_t ladestand, uint8_t temp)
{
	if(ladestand == 10)
	{
		
		
	}
}

char geschwindigkeits_regulierung(char adc_wert, char adc_wert_alt)
{
	
	char kennlinie_wert;
	char regulierter_wert;

	float kennlinie_wert_float;
	float kennlinie_voltage;
	
	float angleich_gerade_gas;
	
	
	if (drehzahl >= MAXDREHZAHL)		//Überdrehzahl abfangen
	{
		drehzahl = MAXDREHZAHL;			//5000 U/min
	}
	

	
	if (drehzahl <= 2420)
	{
		kennlinie_voltage = (float)(drehzahl/DREHZAHLTEILER1);		//Teiler = 129
	}
	else if ((drehzahl >= 2420) && (drehzahl <= 3000))				//Teiler = 59
	{
		kennlinie_voltage = (float)((drehzahl/DREHZAHLTEILER2)-22.3);
	}
	else if (drehzahl >= 3000)										//Teiler = 106
	{
		kennlinie_voltage = (float)(drehzahl/DREHZAHLTEILER3);
	}
	else
	{
		kennlinie_voltage = 0;
	}
	
	
	//kennlinie_voltage = (float)(drehzahl/DREHZAHLTEILER1);
	
	//kennlinie_voltage = (float)(drehzahl/DREHZAHLTEILER);		//Teiler = 278	//100W motor
	
	kennlinie_wert_float = kennlinie_voltage * (253/48);			//5,27	// * (gesamtspannung_kom/NENNSPANNUNG)
	kennlinie_wert = (char)kennlinie_wert_float;
		
	
	/*
	if (drehzahl <= 1700)
	{
		angleich_gerade_gas = (WEGFAHR_WERT-(0.014*drehzahl));
	}
	else
	{
		angleich_gerade_gas = SICHERHEITSBEREICH;
	}
	*/
	
	angleich_gerade_gas = SICHERHEITSBEREICH;
	
		
	if (drehzahl == 0 && adc_wert > 20)		//Stillstand
	{
		
		regulierter_wert = WEGFAHR_WERT;	//Wegfahrwert
	}
	else
	{
		if (kennlinie_wert >= (255-SICHERHEITSBEREICH))			//Overflows vermeiden //bei gas
		{
			kennlinie_wert = (255-SICHERHEITSBEREICH);
		}
		else if (kennlinie_wert <= (0+SICHERHEITSBEREICH))		//beim bremsen 
		{
			kennlinie_wert = (0+SICHERHEITSBEREICH);
		}
		
		
		if (adc_wert > (kennlinie_wert+(char)angleich_gerade_gas))				//Überbereich
		{
				
			regulierter_wert = kennlinie_wert+(char)angleich_gerade_gas;
			
			
		}
		else if (adc_wert < (kennlinie_wert-SICHERHEITSBEREICH))			//Unterberreich		//kann im Stillstand nicht eintretten
		{
		
			regulierter_wert = kennlinie_wert-SICHERHEITSBEREICH;
						
		}
		else										
		{
			regulierter_wert = adc_wert;			//Im Bereich
		}		
	}

	
	
	return regulierter_wert;
	
}

void ladestand_ausgabe (uint8_t ladestand_ubernahme)
{
		sprintf(ausgabe_02,"%d",ladestand_ubernahme);
		LCD_cmd(0xC0);   //gehe zu 2. Zeile, 1. Position
		LCD_string(ausgabe_02);
}
