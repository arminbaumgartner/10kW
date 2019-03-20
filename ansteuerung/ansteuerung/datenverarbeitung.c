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
	
	ladestand = ((spannung - MINSPANNUNG)/160);
	
	return ladestand;
	
}

void akku_daten_einbeziehen (uint8_t ladestand, uint8_t temp)
{
	if(ladestand == 10)
	{
		
		
	}
}

char geschwindigkeits_regulierung(char adc_wert)
{
	
	char kennlinie_wert;
	char regulierter_wert;
	
	float kennlinie_wert_float;
	float kennlinie_voltage;
	
	float angleich_gerade_gas;
	float angleich_gerade_bremsen;
	
	//float drehzahl_regelung = gemittelte_drehzahl_holen();
	//float drehzahl_regelung_alt = drehzahl_alt_holen();
	float drehzahl_regelung = drehzahl_holen();
	
	uint16_t ges_spannung_regelung;
	uint16_t niedrigste_zell_spannung_regelung;
	uint8_t temperatur_regelung;
	
		
	if (drehzahl_regelung >= MAXDREHZAHL)		//Überdrehzahl abfangen
	{
		drehzahl_regelung = MAXDREHZAHL;			//5000 U/min
	}
	
/*	
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
*/

	kennlinie_voltage = (float)(drehzahl_regelung/DREHZAHLTEILER3);			//Teiler 106


	ges_spannung_regelung = ges_spannung_uebertragung();
	niedrigste_zell_spannung_regelung = niedrigste_akku_voltage_uebertragung();
	temperatur_regelung = temperatur_uebertragung();
	
	
	if (kennlinie_voltage >= 40 && ges_spannung_regelung <=44000)			//Wenn Spannung zu niedrig wird && voll betrieb
	{
		kennlinie_voltage = 40;
	}
	
	//Leerlaufkennlinie erstellen	
	kennlinie_wert_float = kennlinie_voltage * (253/48);			//5,27
	kennlinie_wert = (char)kennlinie_wert_float;
		
	
	//Beschleunigungskennlinie
	 /*
	if (drehzahl <= 2000)
	{
		angleich_gerade_gas = (WEGFAHR_WERT+(0.0397*drehzahl)) ;		// * (gesamtspannung_kom/NENNSPANNUNG) //20Amper
	}
	else
	{
		angleich_gerade_gas = SICHERHEITSBEREICH;		// * (gesamtspannung_kom/NENNSPANNUNG)
	}
	*/
	 
	 angleich_gerade_gas = (WEGFAHR_WERT-0.0045*drehzahl) + 15; ;		// * (gesamtspannung_kom/NENNSPANNUNG) /
		 
	 if (angleich_gerade_gas <= 0)
	 {
		 angleich_gerade_gas=0;
	 }
	
	 
	
	
	
	//Rekuperation-kennlinie
	angleich_gerade_bremsen = SICHERHEITSBEREICH;
	
	
	if ((niedrigste_zell_spannung_regelung <= 2850) && (niedrigste_zell_spannung_regelung >= 2750))
	{
		
	}
	
	//		Sicherheit niedrigeste Zellspannung
	if (niedrigste_zell_spannung_regelung <= (MINZELLSPANNUNG+1))				//2801
	{
		angleich_gerade_gas = (angleich_gerade_gas*0.60);		//15% weniger gas
	}
	else if (niedrigste_zell_spannung_regelung <= (MINZELLSPANNUNG+100))		//2900
	{
		angleich_gerade_gas = (angleich_gerade_gas*0.65);		//10% weniger gas
	}
	else if (niedrigste_zell_spannung_regelung <= (MINZELLSPANNUNG+200))	//3000
	{
		angleich_gerade_gas = (angleich_gerade_gas*0.70);		//5% weniger gas
	}

	
	//	Sicherheit Temperatur
	if (temperatur_regelung >= 55)
	{
		angleich_gerade_gas = (angleich_gerade_gas*0.2);
	}
	
	
	
	//		Fahrbetrieb	
	if (drehzahl_regelung == 0 && adc_wert > 20)		//Stillstand
	{		
		regulierter_wert = WEGFAHR_WERT;	//Wegfahrwert
	}
	else
	{
		if (kennlinie_wert >= (255-angleich_gerade_gas))			//Overflows vermeiden //bei gas
		{
			kennlinie_wert = (255-angleich_gerade_gas);
		}
		else if (kennlinie_wert <= (0+angleich_gerade_bremsen))		//beim bremsen 
		{
			kennlinie_wert = (0+angleich_gerade_bremsen);
		}
		
		
		if (adc_wert > (kennlinie_wert+(char)angleich_gerade_gas))				//Überbereich
		{
			
			regulierter_wert = kennlinie_wert+(char)angleich_gerade_gas; //*  NENNspannung/ges-spannung(gelesen)
			
			
		}
		else if (adc_wert < (kennlinie_wert-angleich_gerade_bremsen))			//Unterberreich		//kann im Stillstand nicht eintretten
		{
		
			regulierter_wert = kennlinie_wert-angleich_gerade_bremsen;
						
		}
		else										
		{
			
			regulierter_wert = adc_wert;			//Im Bereich
		}		
	}

	
	//drehzahl_save(drehzahl_regelung);
	
	
	
	return regulierter_wert;
	
}

void ladestand_ausgabe (uint8_t ladestand_ubernahme)
{
		sprintf(ausgabe_02,"%d",ladestand_ubernahme);
		LCD_cmd(0xC0);   //gehe zu 2. Zeile, 1. Position
		LCD_string(ausgabe_02);
}
