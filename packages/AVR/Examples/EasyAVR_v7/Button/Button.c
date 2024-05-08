/*
 * Project name:
     Button (Demonstration of using Button Library)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio;
 * Description:
     This program demonstrates usage of the on-board button as PORTB input.
     On every PB0 one-to-zero transition PORTC is inverted.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 - ac:Buttons
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    None.
     SW:              Necto.
                      https://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * NOTES:
     - Make sure you turn ON the PORTC LEDs (SW10.7).
     - Put Button Press Level switch PB (SW1.2) into upper position and pull-down PORTB.B0 switch.
     - Make sure to have AVRFlash application installed on your PC machine:
       - download link:
         - https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip
       - user-manual link:
         - https://download.mikroe.com/documents/programmers-debuggers/mikroprog/avr/mikroprog-avr-manual-v100.pdf
       - Configuration of AVRFlash application:
         - LOCK Bits:
           - Mode 1
           - BLB0 Mode 1
           - BLB1 Mode 1
         - FUSE Bits:
           - BOD Disabled
           - Startup: 6 CK + 65ms
           - Boot block 2048 Words
           - External Clock
         - Device:
           - ATmega32
         - Device frequency [MHz]:
           - 8.0
       - After configuration of AVRFlash parameters, choose "Write" button within the AVRFlash application to successfully program this example.
*/

// Old state flag.
char oldstate;

void main() {

    // Set pin as input.
    DDRB.B0 = 0;

    // Configure PORTC as output.
    DDRC  = 0xFF;

    // Initial PORTC value.
    PORTC = 0xAA;

    oldstate = 0;

    do {
        // Detect logical one.
        if (Button(&PINB, 0, 1, 1)) {
            // Update flag.
            oldstate = 1;
        }

        // Detect one-to-zero transition.
        if (oldstate && Button(&PINB, 0, 1, 0)) {
            // Invert PORTC.
            PORTC = ~PORTC;

            // Update flag
            oldstate = 0;
        }
      // Endless loop.
    } while(1);
}
