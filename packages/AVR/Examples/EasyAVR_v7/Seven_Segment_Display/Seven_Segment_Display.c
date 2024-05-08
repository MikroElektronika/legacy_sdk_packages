/*
 * Project name:
     Seven Segment Display (The 'Hello World' example for the Seven Segment Display)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio.
 * Description:
     This code demonstrates how to display number on one 7-segment display
     (common cathode). Display is connected to PORTC (PC0..PC7, segment A to
     PC0, segment B to PC1, etc); common cathode is connected to the pin PA0 on
     PORTA. Number is incremented every 1s.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 - ac:7SEG
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    None.
     SW:              Necto Studio.
                      http://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * NOTES:
     - Turn on Seven Segment Display switches SW8.1, SW8.2, SW8.3 and SW8.4. (board specific)
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

#include "Display_Utils.h"

unsigned short shifter, portd_index;
unsigned int   digit, number;
unsigned short portd_array[4];

void Timer0Overflow_ISR() org IVT_ADDR_TIMER0_OVF {
    // Turn off all 7seg displays.
    PORTA = 0;

    // Bring appropriate value to PORTC.
    PORTC = portd_array[portd_index];

    // Turn on appropriate 7seg. display.
    PORTA = shifter;

    // Move shifter to next digit.
    shifter <<= 1;
    if (shifter > 8u)
        shifter = 1;

    // Increment portd_index.
    portd_index++ ;
    if (portd_index > 3u)
        // turn on 1st, turn off 2nd 7seg.
        portd_index = 0;
}

void main() {

    // Configure PORTA as output.
    DDRA = 0x0f;

    // Clear PORTA.
    PORTA = 0;

    // Configure PORTC as output.
    DDRC = 0xff;

    // Clear PORTC.
    PORTC = 0;

    digit = 0;
    portd_index = 0;
    shifter = 1;

    // Initial number value.
    number = 1234;

    // ClkI/O/64 (From prescaler).
    TCCR0 = 0x03;

    // Interrupt enable.
    SREG_I_bit = 1;

    // Timer0 overflow interrupt enable.
    TOIE0_bit = 1;

    do {
        digit = number / 1000u ;        // Extract thousands digit
        portd_array[3] = mask(digit);   // and store it to PORTC array.
        digit = (number / 100u) % 10u;  // Extract hundreds digit
        portd_array[2] = mask(digit);   // and store it to PORTC array.
        digit = (number / 10u) % 10u;   // Extract tens digit
        portd_array[1] = mask(digit);   // and store it to PORTC array.
        digit = number % 10u;           // Extract ones digit
        portd_array[0] = mask(digit);   // and store it to PORTC array.

        Delay_1sec();                   // One second delay.

        number++ ;                      // Increment number.
        if (number > 9999u) {
            number = 0;
        }
    } while(1);                         // Endless loop.
}
