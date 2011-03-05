int motorPin1 = 5;  
int motorPin2 = 6; 
int entrada = 0;
 
void setup() {
  Serial.begin(9600);
  pinMode(motorPin1, OUTPUT); 
  pinMode(motorPin2, OUTPUT); 
}

void loop() {
  
  // testa se a porta serial está disponível
  if (Serial.available() > 0) {
    // le os dados da porta serial armazena na variavel 'entrada'
    entrada = Serial.read();
    switch (entrada) {
    case 'e':
      digitalWrite(motorPin1, 1);   // Este pino HIGH, em conjunto com o de baixo LOW
      digitalWrite(motorPin2, 0);   // Fazem com que o motor da esquerda
      break;
    case 'd':
      digitalWrite(motorPin1, 0);  // Este pino LOW, em conjunto com o de baixo HIGH
      digitalWrite(motorPin2, 1);   // Fazem com que o motor da direita
      break;
    }
  }
}

void esquerda(){
  
}
