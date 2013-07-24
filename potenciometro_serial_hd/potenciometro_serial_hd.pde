// teste usando o potenciometro
           
int valorPot = 0;       
int potPin = 1;
int valorMapeado = 0;
int ledPin = 9;  

void setup()
{
  Serial.begin(9600);     
  
}

void loop() {
  
  valorPot = analogRead(potPin); 
  Serial.print("valor: ");           
  Serial.println(valorPot, DEC);        
  delay(1000);     
  valorMapeado = map(valorPot, 0, 1023, 0, 255);  
   analogWrite(ledPin,  valorMapeado);         
    // wait for 30 milliseconds to see the dimming effect    
    //delay(30);                            
  } 





