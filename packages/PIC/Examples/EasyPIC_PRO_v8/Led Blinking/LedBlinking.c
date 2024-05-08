/*
 * Project name:
     LED_Blinking (Simple 'Hello World' project)
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
     Dev.board:       EasyPIC PRO v8
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS-PLL 64.0000 MHz
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON the PORT LEDs at SW4
 */

void main() {

  TRISA = 0;           // set direction to be output
  TRISB &= 0xC0;       // set direction to be output
  TRISC = 0;           // set direction to be output
  TRISD = 0;           // set direction to be output
  TRISE = 0;           // set direction to be output
  TRISF = 0;           // set direction to be output
  TRISG = 0;           // set direction to be output
  TRISH = 0;           // set direction to be output
  TRISJ = 0;           // set direction to be output

  do {
    LATA = 0x00;       // Turn OFF LEDs on PORTA
    LATB &= 0xC0;      // Turn OFF LEDs on PORTB
    LATC = 0x00;       // Turn OFF LEDs on PORTC
    LATD = 0x00;       // Turn OFF LEDs on PORTD
    LATE = 0x00;       // Turn OFF LEDs on PORTE
    LATF = 0x00;       // Turn OFF LEDs on PORTF
    LATG = 0x00;       // Turn OFF LEDs on PORTG
    LATH = 0x00;       // Turn OFF LEDs on PORTH
    LATJ = 0x00;       // Turn OFF LEDs on PORTJ
    Delay_ms(1000);    // 1 second delay

    LATA = 0xFF;       // Turn ON LEDs on PORTA
    LATB |= 0x3F;       // Turn ON LEDs on PORTB
    LATC = 0xFF;       // Turn ON LEDs on PORTC
    LATD = 0xFF;       // Turn ON LEDs on PORTD
    LATE = 0xFF;       // Turn ON LEDs on PORTE
    LATF = 0xFF;       // Turn ON LEDs on PORTF
    LATG = 0xFF;       // Turn ON LEDs on PORTG
    LATH = 0xFF;       // Turn ON LEDs on PORTH
    LATJ = 0xFF;       // Turn ON LEDs on PORTJ
    Delay_ms(1000);    // 1 second delay
  } while(1);          // Endless loop
}
