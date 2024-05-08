/*
 * Project name:
     LCD (Demonstration of the LCD library routines)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20100502:
       - initial release;
     20210202:
       - Porting example for Necto Studio;
 * Description:
     This code demonstrates how to use LCD 4-bit library. LCD is first
     initialized, then user-defined text is written, then the text is moved.
* Test configuration:
     MCU:             dsPIC30F4013
                      http://ww1.microchip.com/downloads/en/DeviceDoc/70138F.pdf
     Dev.Board:       EASYPIC v8 for dsPIC30
                      http://www.mikroe.com/easypic-for-dspic30/
     Oscillator:      XT-PLL8, 80.000MHz
     Ext. Modules:    Character LCD 2x16
                      https://www.mikroe.com/lcd-2x16-blue
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on the following switch pins in order to get
       LCD backlight up and running: SW2.2, SW2.3 and SW2.4.
 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start "CodeGrip Suite";
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within "CodeGrip Suite").

*/

// LCD module connections.
sbit LCD_RS at LATD0_bit;
sbit LCD_EN at LATD1_bit;
sbit LCD_D4 at LATB0_bit;
sbit LCD_D5 at LATB1_bit;
sbit LCD_D6 at LATB2_bit;
sbit LCD_D7 at LATB3_bit;

sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
// End LCD module connections.

char txt1[] = "mikroElektronika";
char txt2[] = "2x16 LCD Testing";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;                                 // Loop variable.

void Move_Delay() {                     // Function used for text moving.
    Delay_ms(500);                      // You can change the moving speed here.
}

void main() {
    ADPCFG = 0xFFFF;                    // Configure AN pins as digital I/O.

    Lcd_Init();                         // Initialize LCD.

    Lcd_Cmd(_LCD_CLEAR);                // Clear display.
    Lcd_Cmd(_LCD_CURSOR_OFF);           // Cursor off.
    Lcd_Out(1,6,txt3);                  // Write text in first row.

    Lcd_Out(2,6,txt4);                  // Write text in second row.
    Delay_ms(2000);
    Lcd_Cmd(_LCD_CLEAR);                // Clear display.

    Lcd_Out(1,1,txt1);                  // Write text in first row.
    Lcd_Out(2,1,txt2);                  // Write text in second row.

    Delay_ms(2000);

    // Moving text
    for(i=0; i<2; i++) {                // Move text to the right 4 times.
        Lcd_Cmd(_LCD_SHIFT_RIGHT);
        Move_Delay();
    }

    while(1) {                          // Endless loop.
        for(i=0; i<5; i++) {            // Move text to the left 7 times.
            Lcd_Cmd(_LCD_SHIFT_LEFT);
            Move_Delay();
        }

        for(i=0; i<5; i++) {            // Move text to the right 7 times.
            Lcd_Cmd(_LCD_SHIFT_RIGHT);
            Move_Delay();
        }
    }
}
