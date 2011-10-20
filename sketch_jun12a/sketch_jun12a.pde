int led_A = 13;
int led_B = 8;
 
void setup() {
  Serial.begin(9600);
  // define as portas como saida
  pinMode(led_A, OUTPUT);
  pinMode(led_B, OUTPUT);
 
}
void loop() {
  // testa se a porta serial está disponível
  if (Serial.available() > 0) {
    // le os dados da porta serial armazena na variavel 'entrada'
    int sinal = Serial.read();

  }
}

void acionarLED(int sinal){
      switch (entrada) {
    case '1':
      digitalWrite(led_A, HIGH); 
      Serial.println("Acende LED");
      break;
    case '2':
      digitalWrite(led_A, LOW); 
      Serial.println("Apaga LED");
      break;
    }
}    
