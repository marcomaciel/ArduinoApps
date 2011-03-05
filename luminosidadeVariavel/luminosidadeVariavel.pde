#define LDR 5
int led[] = {14,1,2,3,4,5,8,6,13};
int luminosidade;

void setup(){
  for(int x=0; x<9; x++){
   pinMode(led[x],OUTPUT); 
  } 
}

void loop(){
  luminosidade = analogRead(LDR);
  int ledsParaLigar = map(luminosidade, 0, 950, 0, 9);
  for(int x=0; x<ledsParaLigar; x++){    
    digitalWrite(led[x], HIGH);
    delay(100);
  }
  for(int x=0; x<ledsParaLigar; x++){    
    digitalWrite(led[x], LOW);
    delay(100);
  }  
}
