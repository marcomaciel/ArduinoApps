//motor 1
int motor1_Pin1 = 5;  
int motor1_Pin2 = 6; 
//motor 2
int motor2_Pin1 = 10;  
int motor2_Pin2 = 11; 
//botao
const int botaoPin = 2; 
int valorBotao = 0;
//led
const int ledPin =  13;  

int var = 0;
//int tempo = 500;

void setup() {
  //iniciando motores
  pinMode(motor1_Pin1, OUTPUT); 
  pinMode(motor1_Pin2, OUTPUT); 
  pinMode(motor2_Pin1, OUTPUT); 
  pinMode(motor2_Pin2, OUTPUT);   
  
  //iniciando botao
  pinMode(botaoPin, INPUT);
  
  //iniciando led
  pinMode(ledPin, OUTPUT);  
  
}

void loop() {

 

  while (var < 2) {
    frente(500);
    esquerda();    //chamada da função drive_esquerda
    delay(500);
    direita();    //chamada da função drive_direita
    delay(500);
    tras();    //chamada da função drive_direita
    delay(500);    
    parar();  
    var++;
  }
}

void frente(){
  digitalWrite(motor1_Pin1, 1);   
  digitalWrite(motor1_Pin2, 0);   
  digitalWrite(motor2_Pin1, 1);   
  digitalWrite(motor2_Pin2, 0);     
}

void frente(int tempo){
  digitalWrite(motor1_Pin1, 1);   
  digitalWrite(motor1_Pin2, 0);   
  digitalWrite(motor2_Pin1, 1);   
  digitalWrite(motor2_Pin2, 0);  
  delay(tempo);  
  parar();
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

