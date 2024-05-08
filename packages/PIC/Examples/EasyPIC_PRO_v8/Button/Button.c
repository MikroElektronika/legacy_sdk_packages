/*
 * Project name:
     Button (Demonstration of using Button Library)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This program demonstrates usage on-board button as PORTB input.
     On every RB0 one-to-zero transition PORTD is inverted.
 * Test configuration:
     MCU:             PIC18F97J94
                      http://ww1.microchip.com/downloads/en/DeviceDoc/30000575C.pdf
     Dev.Board:       EasyPIC PRO v8
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS-PLL 64.0000 MHz, 16.0000 MHz Crystal
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON the PORTD LEDs at SW4.4 (board specific)
     - Pull-down PORTB-RB0
     - Pull up PORTB button press level at SW5.2 (board specific)
*/

bit oldstate;                                    // Old state flag

void main() {

  TRISB0_bit = 1;                                // Set RB0 pin as input

  TRISD = 0x00;                                  // Configure PORTD as output
  LATD = 0xAA;                                   // Initial PORTD value

  oldstate = 0;

  do {
    if (Button(&PORTB, 0, 1, 1)) {               // Detect logical one
      oldstate = 1;                              // Update flag
    }
    if (oldstate && Button(&PORTB, 0, 1, 0)) {   // Detect one-to-zero transition
      LATD = ~LATD;                              // Invert PORTD
      oldstate = 0;                              // Update flag
    }
  } while(1);                                    // Endless loop
}
