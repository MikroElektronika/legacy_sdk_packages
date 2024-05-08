/*
 * Project name:
     LED_Curtain (Simple 'Hello World' project)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This is a simple 'Hello World' project. It turns on/off LEDs connected to
     PORTA, PORTB, PORTC, PORTD, PORTE, PORTF, PORTG, PORTH and PORTJ.
 * Test configuration:
     MCU:             PIC18F97J94
                      http://ww1.microchip.com/downloads/en/DeviceDoc/30000575C.pdf
     Dev.Board:       EasyPIC PRO v8
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS-PLL 64.0000 MHz
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON the PORT LEDs at SW4
*/

char counter;

void wait() {
  Delay_ms(100);
}

void main() {

  TRISA = 0;                                    // set direction to be output
  TRISB &= 0xC0;                                // set direction to be output
  TRISC = 0;                                    // set direction to be output
  TRISD = 0;                                    // set direction to be output
  TRISE = 0;                                    // set direction to be output
  TRISF = 0;                                    // set direction to be output
  TRISG = 0;                                    // set direction to be output
  TRISH = 0;                                    // set direction to be output
  TRISJ = 0;                                    // set direction to be output

  LATA = 0x00;                                  // turn OFF the LATD leds
  LATB &= 0xC0;                                 // turn OFF the LATD leds
  LATC = 0x00;                                  // turn OFF the LATC leds
  LATD = 0x00;                                  // turn OFF the LATD leds
  LATE = 0x00;                                  // turn OFF the LATD leds
  LATF = 0x00;                                  // turn OFF the LATD leds
  LATG = 0x00;                                  // turn OFF the LATD leds
  LATH = 0x00;                                  // turn OFF the LATD leds
  LATJ = 0x00;                                  // turn OFF the LATD leds

  while (1) {
    for (counter=0; counter<8; counter++) {
      LATA |= 1 << counter;
      LATB |= 1 << counter;
      LATC |= 1 << counter;
      LATD |= 1 << counter;
      LATE |= 1 << counter;
      LATF |= 1 << counter;
      LATG |= 1 << counter;
      LATH |= 1 << counter;
      LATJ |= 1 << counter;
      wait();
    }

    counter = 0;
    while (counter<8) {
      LATA &= ~(1 << counter);
      LATB &= ~(1 << counter);
      LATC &= ~(1 << counter);
      LATD &= ~(1 << counter);
      LATE &= ~(1 << counter);
      LATF &= ~(1 << counter);
      LATG &= ~(1 << counter);
      LATH &= ~(1 << counter);
      LATJ &= ~(1 << counter);
      wait();
      counter++;
    }
  }
}
