#include <Servo.h> 
 
Servo myservo;  
 
int potpin = 1;  
int servo = 6;  //ou 10
int val;    
 
void setup() 
{ 
  myservo.attach(servo); 
  Serial.begin(9600);
} 
 
void loop() 
{ 
  val = analogRead(potpin);             
  val = map(val, 0, 1023, 0, 179);      
  myservo.write(val);          
  Serial.println(val);  
  delay(10);                           
} 
