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
		if (entrada == 'e'){
			esquerda();
		} else if (entrada == 'd'){
			direita();
		} else {
			parar();
		}
	}
}
 
void esquerda(){
	digitalWrite(motorPin1, 1);   // Motor para a esquerda
	digitalWrite(motorPin2, 0);   //
}
 
void direita(){
	digitalWrite(motorPin1, 0);   // Motor para a esquerda
	digitalWrite(motorPin2, 1);   //
}
 
void parar(){
 digitalWrite(motorPin1, 0);   // para o motor
 digitalWrite(motorPin2, 0);   //
}