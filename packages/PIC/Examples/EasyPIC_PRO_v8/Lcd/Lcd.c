/*
 * Project name:
     Lcd_Test (Demonstration of the LCD library routines)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This code demonstrates how to use LCD 4-bit library. LCD is first
     initialized, then some text is written, then the text is moved.
 * Test configuration:
     MCU:             PIC18F97J94
                      http://ww1.microchip.com/downloads/en/DeviceDoc/30000575C.pdf
     Dev.Board:       EasyPIC PRO v8 - ac:LCD
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS-PLL 64.0000 MHz
     Ext. Modules:    Character Lcd 2x16
                      https://www.mikroe.com/lcd-2x16-blue
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on Lcd backlight switches SW11 (board specific)
 */

// Lcd module connections
sbit LCD_RS at LATL7_bit;
sbit LCD_EN at LATJ3_bit;
sbit LCD_D4 at LATK4_bit;
sbit LCD_D5 at LATK5_bit;
sbit LCD_D6 at LATK6_bit;
sbit LCD_D7 at LATK7_bit;

sbit LCD_RS_Direction at TRISL7_bit;
sbit LCD_EN_Direction at TRISJ3_bit;
sbit LCD_D4_Direction at TRISK4_bit;
sbit LCD_D5_Direction at TRISK5_bit;
sbit LCD_D6_Direction at TRISK6_bit;
sbit LCD_D7_Direction at TRISK7_bit;
// End of Lcd module connections

char txt1[] = "mikroElektronika";    
char txt2[] = "EasyPIC PRO v8";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;

void Move_Delay() {                  // Function used for text moving
  Delay_ms(500);                     // You can change the moving speed here
}

void main(){
  
  Lcd_Init();                        // Initialize Lcd

  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
  Lcd_Out(1,6,txt3);                 // Write text in first row

  Lcd_Out(2,6,txt4);                 // Write text in second row
  Delay_ms(2000);
  Lcd_Cmd(_LCD_CLEAR);               // Clear display

  Lcd_Out(1,1,txt1);                 // Write text in first row
  Lcd_Out(2,2,txt2);                 // Write text in second row

  Delay_ms(2000);

  // Moving text
  for(i=0; i<4; i++) {               // Move text to the right 4 times
    Lcd_Cmd(_LCD_SHIFT_RIGHT);
    Move_Delay();
  }

  while(1) {                         // Endless loop
    for(i=0; i<8; i++) {             // Move text to the left 7 times
      Lcd_Cmd(_LCD_SHIFT_LEFT);
      Move_Delay();
    }

    for(i=0; i<8; i++) {             // Move text to the right 7 times
      Lcd_Cmd(_LCD_SHIFT_RIGHT);
      Move_Delay();
    }
  }
}
