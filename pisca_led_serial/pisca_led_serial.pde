
int pin = 13;

void setup() {
  Serial.begin(9600); 
  pinMode(pin, INPUT);
  
}

void loop() {
  if (Serial.available() > 0) {
    char x = Serial.read();
    if (x=='1'){
      digitalWrite(pin, HIGH);           
    }else{
      digitalWrite(pin, LOW); 
    }       
  }  
}
