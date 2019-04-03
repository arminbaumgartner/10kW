

#define LADUNG100	3650
#define LADUNG80	3600
#define LADUNG60	3600
#define LADUNG40	3600
#define LADUNG20	3600
#define LADUNG00	2800

#define DREHZAHLTEILER	278

#define DREHZAHLTEILER3 106
#define DREHZAHLTEILER2 59
#define DREHZAHLTEILER1 129


#define NENNDREHZAHL 4700
#define MAXDREHZAHL 5000

#define SICHERHEITSBEREICH 10
#define WEGFAHR_WERT 14




int akku_ladestand (uint16_t spannung);
void akku_daten_einbeziehen (uint8_t ladestand, uint8_t temp);
char geschwindigkeits_regulierung(char adc_wert);

void ladestand_ausgabe (uint8_t ladestand_ubernahme); 