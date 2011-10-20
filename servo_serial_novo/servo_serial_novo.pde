#include <Servo.h> 
 
Servo servos[5];
int pin[5]={11,10,9,5,4};
int pos;
int entrada;
int VELO = 5;
 
void setup() 
{ 
  servos[1].attach(11); 
  servos[2].attach(10);
  servos[3].attach(9);
  servos[4].attach(5);
  servos[5].attach(4);
 
  Serial.begin(9600);
} 
 
void loop() 
{ 
  if (Serial.available() > 0) {
    entrada = Serial.read();
    Serial.print(entrada);
    if (entrada == '1'){
      abre(1);
      fecha(1);
    } else if (entrada == '2'){
	
    } else if (entrada == '3'){
	
    } else if (entrada == '4'){
	fecha(4);
    } else if (entrada == '5'){
	
    } else {
          
    }
  }  
  
} 

void abre(int dedo){
  for(pos = 0; pos < 180; pos += VELO) {                                  
    servos[dedo].write(pos); 
    delay(10);  
    Serial.print(dedo);
    Serial.print(" - ");
    Serial.println(pos);
  }      
} 

void fecha(int dedo){ 
  for(pos = 180; pos >= 1; pos -= VELO) {                                  
    servos[dedo].write(pos); 
    delay(10);  
    Serial.print(dedo);
    Serial.print(" - ");
    Serial.println(pos);
  }   
  
} 

