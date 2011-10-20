#include <Servo.h> 
 
Servo myservo1;
Servo myservo2; 
Servo myservo3; 
Servo myservo4; 
Servo myservo5; 
 
int servo1 = 10; 
int servo2 = 11; 
int servo3 = 9; 
int servo4 = 5; 
int servo5 = 4; 

int pos;

int entrada;
 
void setup() 
{ 
  myservo1.attach(servo1); 
  myservo2.attach(servo2); 
  myservo3.attach(servo3);
  myservo4.attach(servo4);  
  myservo5.attach(servo5);  
  
  myservo1.write(0);
  myservo2.write(0);
  myservo3.write(0);
  myservo4.write(0);
  myservo5.write(0);
  
  Serial.begin(9600);
} 
 
void loop() 
{ 
  if (Serial.available() > 0) {
    entrada = Serial.read();
    Serial.print(entrada);
    if (entrada == '1'){
	vira1();
    } else if (entrada == '2'){
	vira2();
    } else if (entrada == '3'){
	vira3();
    } else if (entrada == '4'){
	vira4();
    } else if (entrada == '5'){
	vira5();
    } else if (entrada == '6'){
        vira1a5();
    } else {
          
    }
  }  
} 
void vira5(){
  for(pos = 0; pos < 100; pos += 5) {                                  
    myservo5.write(pos); 
    delay(10);                      
  } 
  for(pos = 100; pos>=1; pos-= 5) {                                
    myservo5.write(pos);    
    delay(10);                       
  }  
} 

void vira4(){
  for(pos = 0; pos < 100; pos += 5) {                                  
    myservo4.write(pos); 
    delay(10);                      
  } 
  for(pos = 100; pos>=1; pos-= 5) {                                
    myservo4.write(pos);    
    delay(10);                       
  }  
} 

void vira1a5(){
  for(pos = 0; pos < 100; pos += 5) {                                  
    myservo1.write(pos); 
    myservo2.write(pos); 
    myservo3.write(pos); 
    myservo4.write(pos); 
    myservo5.write(pos); 
    delay(10);                      
  } 
  for(pos = 100; pos>=1; pos-= 5) {                                
    myservo1.write(pos);  
    myservo2.write(pos);
    myservo3.write(pos); 
    myservo4.write(pos); 
     myservo5.write(pos);    
    delay(10);                       
  }  
}

void vira1(){
  for(pos = 0; pos < 100; pos += 5) {                                   
    myservo1.write(pos); 
    delay(10);                       
  } 
  for(pos = 100; pos>=1; pos-= 5) {                                
    myservo1.write(pos);    
    delay(10);                        
  }  
}

void vira2(){
  for(pos = 0; pos < 100; pos += 5) {                                   
    myservo2.write(pos);     
    delay(10);                       
  } 
  for(pos = 100; pos>=1; pos-= 5) {                                   
    myservo2.write(pos);    
    delay(10);                        
  }  
}

void vira3(){
  for(pos = 0; pos < 100; pos += 5) {                                  
    myservo3.write(pos);     
    delay(10);                        
  } 
  for(pos = 100; pos>=1; pos-= 5) {                                   
    myservo3.write(pos);    
    delay(10);                        
  }  
}

