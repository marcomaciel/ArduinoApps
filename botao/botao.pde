int ledPin = 13; // porta digital do led que irá acender
int inPin = 0; // botão é porta digital 0 - program-me
int val = 0; // variável para o status do led

void setup() {
  pinMode(ledPin, OUTPUT); // declara LED como saída
  pinMode(inPin, INPUT); // declara botão como entrada
}

void loop(){
  val = digitalRead(inPin); // le valor de entrada
  if (val == HIGH) { // check if the input is HIGH (button released)
    digitalWrite(ledPin, LOW);
  } else {
    digitalWrite(ledPin, HIGH); 
  }
}

