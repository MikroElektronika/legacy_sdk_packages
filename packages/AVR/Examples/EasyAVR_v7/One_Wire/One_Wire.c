/*
 * Project name:
     OneWire (Interfacing the DS1820 temperature sensor - all versions)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio;
 * Description:
     This code demonstrates one-wire communication with temperature sensor
     DS18x20 connected to PB4 pin.
     MCU reads temperature from the sensor and prints it on the LCD.
     The display format of the temperature is 'xxx.xxxxC'. To obtain correct
     results, the 18x20's temperature resolution has to be adjusted (constant
     TEMP_RESOLUTION).
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 -  ac:OneWire
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 8.0000 MHz
     Ext. Modules:    DS18x20, LCD 2x16
                      https://www.mikroe.com/ds1820-sensor
                      https://www.mikroe.com/lcd-2x16-with-ds1820
     SW:              Necto.
                      https://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

* NOTES:
     - Place the DS1820 jumper J18 in the left position (PB4).
     - Turn off the LED PORT on pin used for OneWire bus (PB4) - PORTB LED switch (SW10.6).
     - Turn on the LCD backlight on the EasyAVR v7 board (SW3.1).
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

// LCD module connections
sbit LCD_RS at PORTA.B2;
sbit LCD_EN at PORTD.B6;
sbit LCD_D4 at PORTC.B4;
sbit LCD_D5 at PORTC.B5;
sbit LCD_D6 at PORTC.B6;
sbit LCD_D7 at PORTC.B7;

sbit LCD_RS_Direction at DDRA.B2;
sbit LCD_EN_Direction at DDRD.B6;
sbit LCD_D4_Direction at DDRC.B4;
sbit LCD_D5_Direction at DDRC.B5;
sbit LCD_D6_Direction at DDRC.B6;
sbit LCD_D7_Direction at DDRC.B7;
// End LCD module connections

//  Set TEMP_RESOLUTION to the corresponding resolution of used DS18x20 sensor:
//  18S20: 9  (default setting; can be 9,10,11,or 12)
//  18B20: 12

const unsigned short TEMP_RESOLUTION = 9;

char *text = "000.0000";
unsigned temp;

void Display_Temperature(unsigned int temp2write) {
    const unsigned short RES_SHIFT = TEMP_RESOLUTION - 8;
    char temp_whole;
    unsigned int temp_fraction;

    // Check if temperature is negative.
    if (temp2write & 0x8000) {
        text[0] = '-';
        temp2write = ~temp2write + 1;
    }

    // Extract temp_whole.
    temp_whole = temp2write >> RES_SHIFT ;

    // Convert temp_whole to characters.
    if (temp_whole/100)
        text[0] = temp_whole/100  + 48;
    else
        text[0] = '0';

    // Extract tens digit.
    text[1] = (temp_whole/10)%10 + 48;

    // Extract ones digit.
    text[2] =  temp_whole%10     + 48;

    // Extract temp_fraction and convert it to unsigned int.
    temp_fraction  = temp2write << (4-RES_SHIFT);
    temp_fraction &= 0x000F;
    temp_fraction *= 625;

    // Convert temp_fraction to characters.
    text[4] =  temp_fraction/1000    + 48;      // Extract thousands digit
    text[5] = (temp_fraction/100)%10 + 48;      // Extract hundreds digit
    text[6] = (temp_fraction/10)%10  + 48;      // Extract tens digit
    text[7] =  temp_fraction%10      + 48;      // Extract ones digit

    // Print temperature on LCD.
    Lcd_Out(2, 5, text);
}

void main() {

    // Initialize LCD.
    Lcd_Init();

    // Clear LCD.
    Lcd_Cmd(_LCD_CLEAR);

    // Turn cursor off.
    Lcd_Cmd(_LCD_CURSOR_OFF);

    Lcd_Out(1, 1, " Temperature:   ");

    // Print degree character, 'C' for Centigrades.
    // Different LCD displays have different char code for degree.
    // If you see greek alpha letter try typing 223 instead of 178.
    Lcd_Chr(2,13,178);

    Lcd_Chr(2,14,'C');

    do {
        //--- Perform temperature reading.

        // Onewire reset signal.
        Ow_Reset(&PORTB, 4);

        // Issue command SKIP_ROM.
        Ow_Write(&PORTB, 4, 0xCC);

        // Issue command CONVERT_T.
        Ow_Write(&PORTB, 4, 0x44);
        Delay_us(120);

        Ow_Reset(&PORTB, 4);

        // Issue command SKIP_ROM.
        Ow_Write(&PORTB, 4, 0xCC);

        // Issue command READ_SCRATCHPAD
        Ow_Write(&PORTB, 4, 0xBE);
        Delay_ms(400);

        temp =  Ow_Read(&PORTB, 4);
        temp = (Ow_Read(&PORTB, 4) << 8) + temp;

        //--- Format and display result on LCD.
        Display_Temperature(temp);

        Delay_ms(500);
    } while (1);
}
