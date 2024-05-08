/*
 * Project name:
     LM35 Sensor (Temperature measurement)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio;
 * Description:
      A simple example of using the LM35 sensor.
      Temperature is displayed on LCD.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 - ac:LM35
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    LM35 Sensor, Character Lcd 2x16
                      https://www.mikroe.com/lm35-sensor
                      https://www.mikroe.com/lcd-2x16-blue
     SW:              Necto.
                      https://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * NOTES:
     - Place LM35 in proper socket and place jumper J19 in the right position (PA7) (board specific).
     - Turn off PORTA LEDs at SW10.5 (board specific).
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

// LCD module connections.
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
// End LCD module connections.

//  Set VREF according to the voltage reference :
//  5.00 - power supply jumper set to 5V position (reference = 5V)
//  3.30 - power supply jumper set to 3.3V position (reference = 3.3V)
const unsigned short VREF = 3.30;

unsigned int temp_res = 0;
float temp;
char txt[15];

void main() {

    // Configure PA7 pin as input.
    DDRA.B7 = 0;

    // Initialize ADC.
    ADC_Init();

    // Initialize LCD.
    Lcd_Init();

    // Clear display.
    Lcd_Cmd(_LCD_CLEAR);

    // Cursor off.
    Lcd_Cmd(_LCD_CURSOR_OFF);

    // Display "Temperature" string.
    Lcd_Out(1, 1, "Temperature :");

    // Different LCD displays have different char code for degree.
    // If you see greek alpha letter try typing 223 instead of 178.
    Lcd_Chr(2,8,178);

    // Display "C" for Celsius.
    Lcd_Chr(2,9,'C');

    temp_res = 0;
    do {
        // Get 10-bit results of AD conversion.
        temp_res = ADC_Get_Sample(7);

        // Calculate temperature in Celsius.
        temp = (temp_res * VREF)/10.240;

        // Convert temperature to string.
        FloatToStr(temp, txt);
        txt[4] = 0;

        // Write string in second row.
        Lcd_Out(2,3,txt);

        Delay_ms(300);
    } while(1);
}
