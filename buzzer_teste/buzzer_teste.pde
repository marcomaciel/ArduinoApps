/* 
 * Looping pin
 * by DojoDave <http://www.0j0.org> 
 *
 * turns on and off an output pin connected
 * to a digital pin, at intervals of 1/2 second 
 *
 * Created 26 April 2005 
 */

int digPin = 12; // digital pin12 //program-me

void setup() {
    pinMode(digPin, OUTPUT);    // pin as output
} 
void loop() {
    digitalWrite(digPin, HIGH); // sets the pin HIGH
    delay(500);                 // waits for a second
    digitalWrite(digPin, LOW);  // sets the pin LOW
    delay(500);
} 
