/*
 * Project name:
     LED_Blinking (Simple 'Hello World' project)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This is a simple 'Hello World' project. It turns on/off LEDs connected to
     PORTA, PORTB, PORTC, PORTD, PORTF and PORTG ports.
 * Test configuration:
     MCU:             PIC32MX795F512L
                      http://ww1.microchip.com/downloads/en/DeviceDoc/61156F.pdf
     Dev.board:       Fusion for PIC32 v8
                      https://www.mikroe.com/fusion-for-pic32
     Oscillator:      HS-PLL 80.0000 MHz, 16.0000 MHz Crystal
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON PORTA, B, C, D, F & G LEDs via "PORT LEDS" SW4 and SW5 switches (board specific).
 */

void main() {
  AD1PCFG = 0xFFFF;      // Configure AN pins as digital I/O

  TRISA = 0;             // Initialize PORTA as output
  TRISB = 0;             // Initialize PORTB as output
  TRISC = 0;             // Initialize PORTC as output
  TRISD = 0;             // Initialize PORTD as output
  TRISF = 0;             // Initialize PORTF as output
  TRISG = 0;             // Initialize PORTG as output

  LATA = 0;              // Set PORTA to zero
  LATB = 0;              // Set PORTB to zero
  LATC = 0;              // Set PORTC to zero
  LATD = 0;              // Set PORTD to zero
  LATF = 0;              // Set PORTF to zero
  LATG = 0;              // Set PORTG to zero

  while(1) {
    LATA = ~PORTA;       // Invert PORTA value
    LATB = ~PORTB;       // Invert PORTB value
    LATC = ~PORTC;       // Invert PORTC value
    LATD = ~PORTD;       // Invert PORTD value
    LATF = ~PORTF;       // Invert PORTF value
    LATG = ~PORTG;       // Invert PORTG value
    Delay_ms(1000);
  }
}
