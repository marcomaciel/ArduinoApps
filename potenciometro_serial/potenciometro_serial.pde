// teste usando o potenciometro
           
int valorPot = 0;       
int potPin = 1;

void setup()
{
  Serial.begin(9600);     
}

void loop() {
  
  valorPot = analogRead(potPin); 
  Serial.print("valor: ");           
  Serial.println(valorPot, DEC);        
  delay(1000);     

}


