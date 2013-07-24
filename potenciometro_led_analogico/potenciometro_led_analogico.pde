// teste usando o potenciometro
// variando a intensidade do led. Porta PWM.
           
int valorPot = 0;    
int valorMapeadoPot = 0;
int potPin = 1;
int ledPin = 6;

void setup()
{
  Serial.begin(9600);     
}

void loop() {
  valorPot = analogRead(potPin);      
  valorMapeadoPot = map(valorPot, 0, 1023, 0, 255);
  analogWrite(ledPin, valorMapeadoPot); 
  Serial.print("mapeado: ");           
  Serial.println(valorPot, DEC);  
}
