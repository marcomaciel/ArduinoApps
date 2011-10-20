#include <Servo.h> 
 
Servo myservo1;
Servo myservo2; 
Servo myservo3; 
 
int servo1 = 9; 
int servo2 = 10; 
int servo3 = 11; 


int pos;

int entrada;
 
void setup() 
{ 
  myservo1.attach(servo1); 
  myservo2.attach(servo2); 
  myservo3.attach(servo3); 
  
  myservo1.write(0);
  myservo2.write(0);
  myservo3.write(0);
  
  Serial.begin(9600);
} 
 
void loop() 
{ 
  if (Serial.available() > 0) {
    entrada = Serial.read();
    Serial.print(entrada);
    if (entrada == '1'){
	abre1();
    } else if (entrada == '2'){
	fecha1();
    } else if (entrada == '3'){
	abre2();
    } else if (entrada == '4'){
	fecha2();
    } else if (entrada == '5'){
	abre3();
    } else if (entrada == '6'){
        fecha3();
    } else {
          
    }
  }  
} 

void abre1(){
  for(pos = 0; pos < 90; pos += 2) {                                   
    myservo1.write(pos); 
    delay(10);                       
  } 
}

void fecha1(){
  for(pos = 90; pos>=1; pos-= 2) {                                   
    myservo1.write(pos);    
    delay(10);                        
  }  
}

void abre2(){
  for(pos = 0; pos < 180; pos += 2) {                                   
    myservo2.write(pos); 
    delay(10);                       
  } 
}

void fecha2(){
  for(pos = 180; pos>=1; pos-= 2) {                                   
    myservo2.write(pos);    
    delay(10);                        
  }  
}

void abre3(){
  for(pos = 0; pos < 180; pos += 2) {                                   
    myservo3.write(pos); 
    delay(10);                       
  } 
}

void fecha3(){
  for(pos = 180; pos>=1; pos-= 2) {                                   
    myservo3.write(pos);    
    delay(10);                        
  }  
}

