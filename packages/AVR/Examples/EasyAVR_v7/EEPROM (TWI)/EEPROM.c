/*
 * Project name:
     TWI_Simple (Simple test of TWI library routines)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio;
 * Description:
     This program demonstrates usage of the TWI library routines. It
     establishes TWI bus communication with 24C02 EEPROM chip, writes one byte
     of data on some location, then reads it and displays it on PORTB.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 - ac:Serial_EEPROM
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    None.
     SW:              Necto.
                      https://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * NOTES:
     - Turn on TWI switches SW6.3 and SW6.4. (board specific)
     - Turn on on-board Serial EEPROM switches SW5.7 and SW5.8 (board specific).
     - Turn on PORTB LEDs (SW10.6) (board specific).
     - Turn off PORTC LEDs (SW10.7) (board specific).
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

void main(){
    // Configure PORTB as output.
    DDRB = 0xFF;

    // Initialize TWI communication.
    TWI_Init(100000);

    // Issue TWI start signal.
    TWI_Start();

    // Send byte via TWI (device address + W).
    TWI_Write(0xA2);

    // Send byte (address of EEPROM location).
    TWI_Write(2);

    // Send data (data to be written).
    TWI_Write(0xAA);

    // Issue TWI stop signal.
    TWI_Stop();

    Delay_100ms();

    // Issue TWI start signal.
    TWI_Start();

    // Send byte via TWI (device address + W).
    TWI_Write(0xA2);

    // Send byte (data address).
    TWI_Write(2);

    // Issue TWI signal repeated start.
    TWI_Start();

    // Send byte (device address + R).
    TWI_Write(0xA3);

    // Read data (NO acknowledge).
    PORTB = TWI_Read(0u);

    // Issue TWI stop signal.
    TWI_Stop();
}
