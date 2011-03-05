/* Teclado Serial
 * --------------
 *
 * Programa feito para tocar notas dependendo dos
 * dados vindos a partir da porta serial.
 *
 * O cálculo dos tons é feito segundo a seguinte fórmula:
 *
 *       timeHigh = 1/(2 * toneFrequency) = period / 2
 *
 * sendo que as diferentes notas estão descritas na tabela:
 *
 * Nota 	Frequência 	Período LP (timeHigh)	
 * c 	        261 Hz 	        3830 	1915 	
 * d 	        294 Hz 	        3400 	1700 	
 * e 	        329 Hz 	        3038 	1519 	
 * f 	        349 Hz 	        2864 	1432 	
 * g 	        392 Hz 	        2550 	1275 	
 * a 	        440 Hz 	        2272 	1136 	
 * b 	        493 Hz 	        2028	1014	
 * C	        523 Hz	        1912 	956
 *
 * (cleft) 2005 D. Cuartielles para o K3
 */

int  ledPin = 13;
int  speakerOut = 12;
byte names[] ={'c', 'd', 'e', 'f', 'g', 'a', 'b', 'C'};  
int  tones[] = {1915, 1700, 1519, 1432, 1275, 1136, 1014, 956};
byte val = 0;
int  serByte = -1;
int  statePin = LOW;
int  count = 0;

void setup() {
 pinMode(ledPin, OUTPUT); 
 pinMode(speakerOut, OUTPUT); 
 Serial.begin(9600);
}
void loop() {
  digitalWrite(speakerOut, LOW);     
  serByte = Serial.read();
  if (serByte != -1) {
    val = serByte;
    Serial.print(val);
    statePin = !statePin;
    digitalWrite(ledPin, statePin);
  }
  for (count=0; count<=8; count++) {
    if (names[count] == val) {       
      digitalWrite(speakerOut, HIGH);
      delayMicroseconds(tones[count]);
      digitalWrite(speakerOut, LOW);
      delayMicroseconds(tones[count]);
    }
  }
}
