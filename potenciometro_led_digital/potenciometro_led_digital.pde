// teste usando o potenciometro
// piscando led com variação de tempo 
           
int valorPot = 500;       
int potPin = 0;
int ledPin = 13;

void setup()
{
  Serial.begin(9600);     
  pinMode(ledPin, OUTPUT);   
}

void loop() {

  valorPot = analogRead(potPin); 
  Serial.print("valor: ");           
  Serial.println(valorPot, DEC);        
  
  digitalWrite(ledPin, HIGH);  
  delay(valorPot);  

  Serial.print("mapeado: ");           
  Serial.println(valorPot, DEC);  
  
  digitalWrite(ledPin, LOW);    
  delay(valorPot);  
}


