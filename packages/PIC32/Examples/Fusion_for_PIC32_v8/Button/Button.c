/*
 * Project name:
     Button (Demonstration of using Button Library)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This program demonstrates usage of the on-board button as PORTA input.
     On every RA0 one-to-zero transition PORTB is inverted.
 * Test configuration:
     MCU:             PIC32MX795F512L
                      http://ww1.microchip.com/downloads/en/DeviceDoc/61156F.pdf
     Dev.Board:       Fusion for PIC32 v8
                      https://www.mikroe.com/fusion-for-pic32
     Oscillator:      HS-PLL 80.0000 MHz, 16.0000 MHz Crystal
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on PORTB LEDs via PORT LED switch SW4 (SW4.2 and SW4.3).
     - Pull-down PORTA.B0 via PORTA "UP-PULL-DOWN" switch.
     - Turn on Button Press Level via "Buttons" switch.
*/

unsigned int oldstate;

void main() {
  AD1PCFG = 0xFFFF;                             // Configure AN pins as digital I/O
  JTAGEN_bit = 0;                               // Disable JTAG

  TRISA0_bit = 1;                               // Set PORTA.B0 pin as input

  TRISB  = 0;                                   // Configure PORTB as output
  LATB = 0;                                     // Initial PORTB value
  
  do {
    if (Button(&PORTA, 0, 1, 1))                // detect logical one on RA0 pin
      oldstate = 1;
    if (oldstate && Button(&PORTA, 0, 1, 0)) {  // detect one-to-zero transition on RA0 pin
      LATB = ~PORTB;                            // invert PORTB value
      oldstate = 0;
    }
  } while(1);                                   // endless loop
}
