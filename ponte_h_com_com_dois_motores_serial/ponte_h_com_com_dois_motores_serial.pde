//motor 1
int motor1_Pin1 = 5;  
int motor1_Pin2 = 6; 
//motor 2
int motor2_Pin1 = 10;  
int motor2_Pin2 = 11; 

int entrada = 0;
 
void setup() {
  Serial.begin(9600);
  pinMode(motor1_Pin1, OUTPUT); 
  pinMode(motor1_Pin2, OUTPUT); 
  pinMode(motor2_Pin1, OUTPUT); 
  pinMode(motor2_Pin2, OUTPUT);   
}

void loop() {
  
  // testa se a porta serial está disponível
  if (Serial.available() > 0) {
    // le os dados da porta serial armazena na variavel 'entrada'
    entrada = Serial.read();
    if (entrada=='e')  {
      esquerda();
    } else if(entrada == 'd'){
      direita();
    } else if(entrada == 'f'){
      frente();
    } else if(entrada == 't'){
      tras();      
    } else {
      parar();
    }  
  }
}

void frente(){
  digitalWrite(motor1_Pin1, 1);   
  digitalWrite(motor1_Pin2, 0);   
  digitalWrite(motor2_Pin1, 1);   
  digitalWrite(motor2_Pin2, 0);     
}

void tras(){
  digitalWrite(motor1_Pin1, 0);   
  digitalWrite(motor1_Pin2, 1);   
  digitalWrite(motor2_Pin1, 0);   
  digitalWrite(motor2_Pin2, 1);     
}

void esquerda(){
  digitalWrite(motor1_Pin1, 1);   
  digitalWrite(motor1_Pin2, 0);   
  digitalWrite(motor2_Pin1, 0);   
  digitalWrite(motor2_Pin2, 1);     
}

void direita(){
  digitalWrite(motor1_Pin1, 0);   
  digitalWrite(motor1_Pin2, 1);   
  digitalWrite(motor2_Pin1, 1);   
  digitalWrite(motor2_Pin2, 0);     
}

void parar(){
  digitalWrite(motor1_Pin1, 0);   
  digitalWrite(motor1_Pin2, 0);  
  digitalWrite(motor2_Pin1, 0);   
  digitalWrite(motor2_Pin2, 0);    
}
