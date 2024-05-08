/*
 * Project name:
     LED_Curtain (Simple 'Hello World' project)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     20110929:
     - initial release
 * Description:
     This is a simple 'Hello World' project. It turns on/off LEDs connected to
     PORTA, PORTB, PORTC, PORTD and PORTE.
 * Test configuration:
     MCU:             PIC18F47K42
                      http://ww1.microchip.com/downloads/en/DeviceDoc/PIC18LF26-27-45-46-47-55-56-57K42-Data-Sheet-40001919E.pdf
     Dev.Board:       EasyPIC v8
                      https://www.mikroe.com/easypic-v8
     Oscillator:      64.0000 MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON the PORT LEDs at SW6
*/

char counter;

void wait() {
  Delay_ms(100);
}

void main() {

  TRISA = 0x00;                                 // set direction to be output
  TRISB &= 0xC0;                                // set direction to be output
  TRISC = 0x00;                                 // set direction to be output
  TRISD = 0x00;                                 // set direction to be output
  TRISE = 0x00;                                 // set direction to be output

  LATA = 0x00;                                  // turn OFF the LATD leds
  LATB &= 0xC0;                                 // turn OFF the LATD leds
  LATC = 0x00;                                  // turn OFF the LATC leds
  LATD = 0x00;                                  // turn OFF the LATD leds
  LATE = 0x00;                                  // turn OFF the LATD leds
  
  while (1) {
    for (counter=0; counter<8; counter++) {
      LATA |= 1 << counter;
      LATB |= 1 << counter;
      LATC |= 1 << counter;
      LATD |= 1 << counter;
      LATE |= 1 << counter;
      wait();
    }
       
    counter = 0;
    while (counter<8) {
      LATA &= ~(1 << counter);
      LATB &= ~(1 << counter);
      LATC &= ~(1 << counter);
      LATD &= ~(1 << counter);
      LATE &= ~(1 << counter);
      wait();
      counter++;
    }
  }
}
