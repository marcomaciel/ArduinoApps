#define LDR 5
int luminosidade;

void setup(){
  Serial.begin(9600); 
}

void loop(){

  luminosidade = analogRead(LDR);
  //comando para enviar um dado para o computador
  delay(500); 
  if (luminosidade <= 600){
    Serial.print("Claro - "  );     
    Serial.print(luminosidade); 
    Serial.println(); 
  } else {
    Serial.print("Escuro - " ); 
    Serial.print(luminosidade); 
    Serial.println(); 
  }
}
