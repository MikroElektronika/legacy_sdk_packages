/*
 * Project name:
     Led_Blinking (Simple LED blinking example)
 * Target Platform:
     dsPIC
 * Copyright:
     (c) mikroElektronika, 2021.
 * Revision History:
     20100502:
       - Initial release;
    20210202:
       - Porting example for Necto Studio;
 * Description:
     Simple "Hello world" example for the world of dsPIC MCUs;
* Test configuration:
     MCU:             dsPIC30F4013
                      http://ww1.microchip.com/downloads/en/DeviceDoc/70138F.pdf
     dev.board:       EasyPIC v8 for dspic30
                      http://www.mikroe.com/easypic-for-dspic30/
     Oscillator:      XT-PLL8, 80.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON port LEDs at SW2 - from SW2.5 to SW2.10 (board specific).
 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start "CodeGrip Suite";
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within "CodeGrip Suite").

 */

void main() {
    ADPCFG = 0xFFFF;    // Configure AN pins as digital I/O.
    TRISB = 0;          // Initialize PORTB as output.
    TRISC = 0;          // Initialize PORTC as output.
    TRISD = 0;          // Initialize PORTD as output.
    TRISF = 0;          // Initialize PORTF as output.

    LATB = 0;           // Set PORTB to zero.
    LATC = 0;           // Set PORTC to zero.
    LATD = 0;           // Set PORTD to zero.
    LATF = 0;           // Set PORTF to zero.

    while( 1 ) {
        LATB = ~LATB;   // Invert PORTB value.
        LATC = ~LATC;   // Invert PORTC value.
        LATD = ~LATD;   // Invert PORTD value.
        LATF = ~LATF;   // Invert PORTF value.
        Delay_ms(1000);
    }
}
