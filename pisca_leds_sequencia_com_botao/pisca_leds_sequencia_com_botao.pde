#define QTD_LEDS 9
#define portaChave 0

int porta[QTD_LEDS] = {14,1,2,3,4,5,8,6,13};
int pausa = 500;

void setup() {
  for(int i = 0;i < QTD_LEDS; i++) {
    pinMode(porta[i],OUTPUT);
  }
  pinMode(portaChave,INPUT);
}

void loop() {
  if (digitalRead(portaChave) == HIGH) { //segurando o botão
    for(int i = 0;i < QTD_LEDS; i++) {
      digitalWrite(porta[i], HIGH);
      delay(pausa);
      digitalWrite(porta[i], LOW);
    }
  } else {
    for(int i = QTD_LEDS - 1;i >= 0; i--) {
      digitalWrite(porta[i], HIGH);
      delay(pausa);
      digitalWrite(porta[i], LOW);
    }
  }
}

