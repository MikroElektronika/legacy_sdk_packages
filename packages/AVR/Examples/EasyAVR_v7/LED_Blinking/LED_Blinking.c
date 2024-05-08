/*
 * Project name:
     LED_Blinking (Simple 'Hello World' project)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio.
 * Description:
     This is a simple 'Hello World' project. It turns on/off diodes connected to
     PORTA, PORTB, PORTC and PORTD.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 -  ac:LEDs
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    None.
     SW:              Necto Studio.
                      http://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * NOTES:
     - Make sure you turn ON the PORTA, PORTB, PORTC and PORTD LEDs (SW10.5, SW10.6, SW10.7 and SW10.8).
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

void main(void)
{
    // Configure Data Direction Register for PORTA to acquire output functionality.
    DDRA = 0xFF;

    // Configure Data Direction Register for PORTB to acquire output functionality.
    DDRB = 0xFF;

    // Configure Data Direction Register for PORTC to acquire output functionality.
    DDRC = 0xFF;

    // Configure Data Direction Register for PORTD to acquire output functionality.
    DDRD = 0xFF;

    // Reset value in Data Register for PORTA.
    PORTA = 0x00;

    // Reset value in Data Register for PORTB.
    PORTB = 0x00;

    // Reset value in Data Register for PORTC.
    PORTC = 0x00;

    // Reset value in Data Register for PORTD.
    PORTD = 0x00;

    while (1)   // Endless loop.
    {
        // Turn ON and OFF diodes on PORTA (toogle value via BITWISE NOT operator).
        PORTA = ~PORTA;

        // Turn ON and OFF diodes on PORTB (toogle value via BITWISE NOT operator).
        PORTB = ~PORTB;

        // Turn ON and OFF diodes on PORTC (toogle value via BITWISE NOT operator).
        PORTC = ~PORTC;

        // Turn ON and OFF diodes on PORTD (toogle value via BITWISE NOT operator).
        PORTD = ~PORTD;

        // 1 second delay.
        Delay_1sec();
    }
}
