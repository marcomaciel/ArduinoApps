int led_A = 7;
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
    int entrada = Serial.read();
    switch (entrada) {
    case 'A':
      digitalWrite(led_A, HIGH); //acende led_A
      break;
    case 'B':
      digitalWrite(led_B, HIGH); //acende led_B
      break;
    case 'a':
      digitalWrite(led_A, LOW); // apaga led_A
      break;
    case 'b':
      digitalWrite(led_B, LOW); // apaga led_B
      break;
    }
  }
}
