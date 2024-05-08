/*
 * Project name:
     Button (Simple usage of Button() function)
 * Copyright:
     (c) mikroElektronika, 2021.
 * Revision History:
     20100205:
       - Initial release;
     20210202:
       - Porting example for Necto Studio;
 * Description:
     This example detects transition from logical high to logical low on input pin RD0.
 * Test configuration:
     MCU:             dsPIC30F4013
                      http://ww1.microchip.com/downloads/en/DeviceDoc/70138F.pdf
     Dev.Board:       EASYPIC v8 for dsPIC30
                      http://www.mikroe.com/easypic-for-dspic30/
     Oscillator:      XT-PLL8, 80.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON PORTB LEDs via PORT LED switch SW2 ( SW2.5 ).
     - Turn ON Button Press Level switch for PORTD/A ( SW4.3 ).
     - Pull down switch on PORTD, switch position 8 ( board specific ).

 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start CodeGrip Suite;
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within CodeGrip Suite).
    - After MCU has been programmed, place both J9 jumpers from "PGC/PGD" position to "GPIO" position.
 */

#include "stdbool.h"

bool oldstate;

void main() {
    ADPCFG = 0xFFFF;                                    // Initialize AN pins as digital.
    TRISD  = 0xFFFF;                                    // Initialize PORTD as input.
    TRISB  = 0x0000;                                    // Initialize PORTB as output.

    do {
        if ( Button(&PORTD, 0, 1, 1) ) {                // Detect logical HIGH state.
            oldstate = true;                            // Update previous state.
        }
        if ( oldstate && Button(&PORTD, 0, 1, 0) ) {    // Detect logical HIGH to logical ZERO transition.
            LATB = ~LATB;                               // Toggle PORTB.
            oldstate = false;                           // Update previous state.
        }
    } while( 1 );
}
