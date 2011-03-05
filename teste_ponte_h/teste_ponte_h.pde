int motorPin5 = 5;  
int motorPin6 = 6;   
 
void setup() {
  
  pinMode(motorPin5, OUTPUT); 
  pinMode(motorPin6, OUTPUT); 
}

void loop() {
 
    //digitalWrite(motorPin5, 1);  // Este pino HIGH, em conjunto com o de baixo LOW
    digitalWrite(motorPin6, 1);   // Fazem com que o motor da Esquerda
    
    //delay(1000);
    
    //digitalWrite(motorPin5, 0);  // Este pino HIGH, em conjunto com o de baixo LOW
    //digitalWrite(motorPin6, 1);   // Fazem com que o motor da direita  



 }
