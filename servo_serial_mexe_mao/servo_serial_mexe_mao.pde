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
 
void loop() { 
  if (Serial.available() > 0) {
    entrada = Serial.read();
    Serial.print(entrada);
    
    //mexeDedos(movDedo1, movDedo2, movDedo3, movDedo4, movDedo5);
    
    
   
  }  
  mexeDedos(1, 1, 1, 1, 1);
  mexeDedos(0, 0, 0, 0, 0);
  
} 

void mexeDedos(int movDedo1, int movDedo2, int movDedo3, int movDedo4, int movDedo5){

  if (movDedo1 == 0){
    fecha(1);
  }else{
    abre(1);
  }
  
  if (movDedo2 == 0){
    fecha(2);
  }else{
    abre(2);
  }
  
  if (movDedo3 == 0){
    fecha(3);
  }else{
    abre(3);
  }
  
  if (movDedo5 == 0){
    fecha(5);
  }else{
    abre(5);
  }

  if (movDedo4 == 0){
    fecha(4);
  }else{
    abre(4);
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

