int pinBuzzer = 6; 
int pinSirene = 13;
int tempo = 500;
int toques = 3;
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
    }
    if (serialIn == '1'){
      toca();
    } else {
      digitalWrite(pinBuzzer, LOW);  
      digitalWrite(pinSirene, LOW);     
    }
  }  
} 

void toca(){
  for (int i = 0; i <= toques; i++){
    digitalWrite(pinBuzzer, HIGH);
    digitalWrite(pinSirene, HIGH);
    delay(tempo);
    digitalWrite(pinBuzzer, LOW);
    digitalWrite(pinSirene, LOW);
    delay(tempo);
  }
}