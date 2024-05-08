/*
 * Project name:
     Led_Curtain (Simple example of LEDs turning on and of in "curtain" visual effect)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     Simple "Hello world" example for the world of PIC32 MCUs
 * Test configuration:
     MCU:             PIC32MX795F512L
                      http://ww1.microchip.com/downloads/en/DeviceDoc/61156F.pdf
     Dev.Board:       Fusion for PIC32 v8
                      https://www.mikroe.com/fusion-for-pic32
     Oscillator:      HS-PLL 80.0000 MHz, 16.0000 MHz Crystal
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON PORTA, B, C, D, E, F & G LEDs via "PORT LEDS" SW4 and SW5 switches (board specific).
 */

char counter;

void wait() {
  Delay_ms(100);
}

void main() {
  AD1PCFG = 0xFFFF;   // Configure AN pins as digital I/O

  TRISA = 0;          // set direction to be output
  TRISB = 0;          // set direction to be output
  TRISC = 0;          // set direction to be output
  TRISD = 0;          // set direction to be output
  TRISE = 0;          // set direction to be output
  TRISF = 0;          // set direction to be output
  TRISG = 0;          // set direction to be output

  LATA = 0;           // turn OFF the LATA LEDs
  LATB = 0;           // turn OFF the LATB LEDs
  LATC = 0;           // turn OFF the LATC LEDs
  LATD = 0;           // turn OFF the LATD LEDs
  LATE = 0;           // turn OFF the LATE LEDs
  LATF = 0;           // turn OFF the LATF LEDs
  LATG = 0;           // turn OFF the LATG LEDs

  counter = 0;
  while(1) {
    // TURN ON LEDs
    for (counter = 0; counter < 4; counter++){
      LATA |= 0x8888 >> counter;
      LATB |= 0x8888 >> counter;
      LATC |= 0x8888 >> counter;
      LATD |= 0x8888 >> counter;
      LATE |= 0x8888 >> counter;
      LATF |= 0x8888 >> counter;
      LATG |= 0x8888 >> counter;
      Delay_ms(100);
    }
    // TURN OFF LEDs
    for (counter = 0; counter < 4; counter++){
      LATA &= 0x7777 >> counter;
      LATB &= 0x7777 >> counter;
      LATC &= 0x7777 >> counter;
      LATD &= 0x7777 >> counter;
      LATE &= 0x7777 >> counter;
      LATF &= 0x7777 >> counter;
      LATG &= 0x7777 >> counter;
      Delay_ms(100);
    }
  }
}
