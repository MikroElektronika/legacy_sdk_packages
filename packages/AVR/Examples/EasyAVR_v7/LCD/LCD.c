/*
 * Project name:
     Lcd_Test (Demonstration of the LCD library routines)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio.
 * Description:
     This code demonstrates how the usage of the LCD 4-bit library. LCD is first
     initialized, then some text is written, then the text is shifted forward and backward.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 -  ac:LCD
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    Character LCD 2x16
                      https://www.mikroe.com/lcd-2x16-blue
     SW:              Necto Studio.
                      http://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

* NOTES:
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
// END LCD module connections.

// Global variables.
char txt1[] = "mikroElektronika";
char txt2[] = "EasyAVR v7";
char txt3[] = "Lcd4bit";
char txt4[] = "example";
char i;                                 // Loop variable.

void Move_Delay() {                     // Function used for text moving.
    Delay_ms(500);                      // You can change the moving speed here.
}

void main(void)
{
    Lcd_Init();                         // Initialize LCD.
    Lcd_Cmd(_LCD_CLEAR);                // Clear display.
    Lcd_Cmd(_LCD_CURSOR_OFF);           // Cursor off.

    Lcd_Out(1,6,txt3);                  // Write text in first row.
    Lcd_Out(2,6,txt4);                  // Write text in second row.
    Delay_ms(2000);
    Lcd_Cmd(_LCD_CLEAR);                // Clear display.

    Lcd_Out(1,1,txt1);                  // Write text in first row.
    Lcd_Out(2,4,txt2);                  // Write text in second row.
    Delay_ms(2000);

    // Moving text.
    for(i=0; i<4; i++) {               // Move text to the right 4 times.
        Lcd_Cmd(_LCD_SHIFT_RIGHT);
        Move_Delay();
    }

    while(1) {                         // Endless loop.
        for(i=0; i<7; i++) {           // Move text to the left 7 times.
            Lcd_Cmd(_LCD_SHIFT_LEFT);
            Move_Delay();
        }

        for(i=0; i<7; i++) {           // Move text to the right 7 times.
            Lcd_Cmd(_LCD_SHIFT_RIGHT);
            Move_Delay();
        }
    }
}
