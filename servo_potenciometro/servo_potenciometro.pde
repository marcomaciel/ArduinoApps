#include <Servo.h> 
 
Servo myservo;  
 
int potpin = 1;  
int servo = 11;  //ou 10
int val;    
 
void setup() 
{ 
  myservo.attach(servo); 
} 
 
void loop() 
{ 
  val = analogRead(potpin);             
  val = map(val, 0, 1023, 0, 179);      
  myservo.write(val);                   
  delay(10);                           
} 
