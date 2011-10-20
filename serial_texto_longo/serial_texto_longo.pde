
String msg;
String msg1;
String msg2;
String msg3;
String msg4;
String msg5;

void setup() {
	Serial.begin(9600);
        Serial.flush();
}

void loop() {
  
  char input[10];
  memset(input, '\0', 10);
  byte inByte = '\0';
  while(inByte != '!') {
    inByte = Serial.read(); // Wait for the start of the message
  }
  if(inByte == '!') {
    while(Serial.available() < 10) { // Wait until we receive 5 characters
      ;
    }
    for (int i=0; i < 10; i++) {
      input[i] = Serial.read(); // Read the characters into an array
    }
    Serial.print("Received: "); // Send the message back to the pc terminal
    Serial.println(input);
    msg = input;
    msg1 = msg.substring(1,2);
    msg2 = msg.substring(3,4);
    msg3 = msg.substring(5,6);
    msg4 = msg.substring(7,8);
    msg5 = msg.substring(9,10);
    
    Serial.println(msg1);
    Serial.println(msg2);
    Serial.println(msg3);
    Serial.println(msg4);
    Serial.println(msg5);
     
    
  }

}
