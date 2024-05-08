/*
 * Project name:
     Button (Demonstration of using Button Library)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This program demonstrates usage of on-board button as PORTB input.
     On every RB0 one-to-zero transition PORTC is inverted.
 * Test configuration:
     MCU:             PIC18F47K42
                      http://ww1.microchip.com/downloads/en/DeviceDoc/PIC18LF26-27-45-46-47-55-56-57K42-Data-Sheet-40001919E.pdf
     Dev.Board:       EasyPIC v8
                      https://www.mikroe.com/easypic-v8
     Oscillator:      64.0000 MHz
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON the PORTC LEDs at SW6.8
     - Pull-down PORTB-RB0
     - Pull up PORTB button press level (board specific)
*/

bit oldstate;                                    // Old state flag

void main() {

  ANSELB = 0;                                    // Configure PORTB pins as digital
  ANSELC = 0;                                    // Configure PORTC pins as digital

  TRISB0_bit = 1;                                // Set RB0 pin as input

  TRISC = 0x00;                                  // Configure PORTC as output
  LATC = 0xAA;                                   // Initial PORTC value

  oldstate = 0;

  do {
    if (Button(&PORTB, 0, 1, 1)) {               // Detect logical one
      oldstate = 1;                              // Update flag
    }
    if (oldstate && Button(&PORTB, 0, 1, 0)) {   // Detect one-to-zero transition
      LATC = ~LATC;                              // Invert PORTC
      oldstate = 0;                              // Update flag
    }
  } while(1);                                    // Endless loop
}
