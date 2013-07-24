
int ledPin = 6;//5;    

void setup()  { 
  // nothing happens in setup 
} 

void loop()  { 
  for(int fadeValue = 0 ; fadeValue <= 255; fadeValue +=5) { 
    analogWrite(ledPin, fadeValue);           
    delay(30);                            
  } 

  for(int fadeValue = 255 ; fadeValue >= 0; fadeValue -=5) { 
    analogWrite(ledPin, fadeValue);             
    delay(30);                            
  } 
}

