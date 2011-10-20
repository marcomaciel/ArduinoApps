int pinBuzzer = 6; 
int pinLed = 13; 
int serialIn;
 
void setup() 
{ 
  pinMode(pinBuzzer, OUTPUT); 
  Serial.begin(9600);
} 
 
void loop() 
{ 
  if (Serial.available() > 0) {
    while (Serial.available()>0) {
      serialIn = Serial.read();
      Serial.print(serialIn);
      //delay(0);
    }
    if (serialIn == '1'){
      toca();
    } else {
      digitalWrite(pinBuzzer, LOW);      
    }
  }  
} 

void toca(){
  
  digitalWrite(pinBuzzer, HIGH);
  digitalWrite(pinLed, HIGH);
  delay(500);
  digitalWrite(pinBuzzer, LOW);
  digitalWrite(pinLed, LOW);
  delay(500);
  digitalWrite(pinBuzzer, HIGH);
  digitalWrite(pinLed, HIGH);
  delay(500);
  digitalWrite(pinBuzzer, LOW);
  digitalWrite(pinLed, LOW);
  delay(500);
  digitalWrite(pinBuzzer, HIGH);
  digitalWrite(pinLed, HIGH);
  delay(500);
  digitalWrite(pinBuzzer, LOW);
  digitalWrite(pinLed, LOW);
}

