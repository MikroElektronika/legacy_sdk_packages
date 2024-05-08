/*
 * Project name:
     ADC_on LEDs (Display the result of ADC on Lcd display)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio.
 * Description:
      A simple example of using the ADC library.
      ADC results are displayed on PORTB and PORTC LEDs.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 - ac:ADC
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    None.
     SW:              Necto Studio.
                      http://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * NOTES:
     - Turn on PORTB and PORTC LEDs (SW10.6 and SW10.7).
     - To simulate analog input on ADC channel 5, use on-board potentiometer P3
       and connect jumper J4 to pin PA5.
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

#include <built_in.h>

unsigned int adc_rd;

void main() {
  // Set PORTB as output.
  DDRB = 0xFF;

  // Set PORTC as output.
  DDRC = 0xFF;

  while (1) {
      // Get ADC value from 5th channel.
      adc_rd = ADC_Read(5);

      // Display adc_rd[7..0].
      PORTB = adc_rd;

      // Display adc_rd[9..8].
      PORTC = Hi(adc_rd);
  }
}
