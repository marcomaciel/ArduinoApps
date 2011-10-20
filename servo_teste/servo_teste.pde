#include <Servo.h> 
 
Servo myservo;  
 
int servo = 10; 
int servo = 11; 
int pos;
 
void setup() 
{ 
  myservo1.attach(servo); 
  myservo2.attach(servo); 
  Serial.begin(9600);
} 
 
void loop() 
{ 
  for(pos = 0; pos < 100; pos += 2)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo1.write(pos);
    myservo2.write(pos);     
    delay(10);                       // waits 15ms for the servo to reach the position 
  } 
  for(pos = 100; pos>=1; pos-= 2)     // goes from 180 degrees to 0 degrees 
  {                                
    myservo1.write(pos);    
    myservo2.write(pos);    
    delay(10);                       // waits 15ms for the servo to reach the position 
  }                         
} 
