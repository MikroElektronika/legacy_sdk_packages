/*
 * Project name:
     Lcd Test (Simple demonstration of the LCD Library functions)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     This is a simple demonstration of LCD library functions. LCD is first
     initialized (4-bit data interface, default pin settings), then some
     text is written at the first and the second row.
 * Test configuration:
     MCU:             TM4C129XNCZAD
                      http://www.ti.com/lit/ds/symlink/tm4c129xnczad.pdf
     Dev.Board:       Fusion for TIVA v8
                      https://www.mikroe.com/fusion-for-tiva
     Oscillator:      MIOSC-PLL, 120.000MHz
     Ext. Modules:    ac:LCD
     SW:              mikroC PRO for ARM
                      https://www.mikroe.com/mikroc-arm
 * NOTES:
     - Turn on LCD backlight switch. (board specific)
                                          
*/

// LCD module connections
sbit LCD_RS at GPIO_PORTC_AHB_DATA.B4;
sbit LCD_EN at GPIO_PORTC_AHB_DATA.B5;
sbit LCD_D4 at GPIO_PORTH_AHB_DATA.B4;
sbit LCD_D5 at GPIO_PORTH_AHB_DATA.B5;
sbit LCD_D6 at GPIO_PORTH_AHB_DATA.B6;
sbit LCD_D7 at GPIO_PORTH_AHB_DATA.B7;

sbit LCD_RS_Direction at GPIO_PORTC_AHB_DIR.B4;
sbit LCD_EN_Direction at GPIO_PORTC_AHB_DIR.B5;
sbit LCD_D4_Direction at GPIO_PORTH_AHB_DIR.B4;
sbit LCD_D5_Direction at GPIO_PORTH_AHB_DIR.B5;
sbit LCD_D6_Direction at GPIO_PORTH_AHB_DIR.B6;
sbit LCD_D7_Direction at GPIO_PORTH_AHB_DIR.B7;
// End LCD module connections

char txt1[] = "mikroElektronika";    
char txt2[] = "TIVA";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;                              // Loop counter variable.

void Move_Delay() {                  // Function used for text moving.
  Delay_ms(200);                     // You can change the moving speed here.
}

void main(){
  Lcd_Init();                        // Initialize LCD.

  Lcd_Cmd(_LCD_CLEAR);               // Clear display.
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off.
  Lcd_Out(1,6,txt3);                 // Write text in first row.

  Lcd_Out(2,6,txt4);                 // Write text in second row.
  Delay_ms(2000);
  Lcd_Cmd(_LCD_CLEAR);               // Clear display.

  Lcd_Out(1,1,txt1);                 // Write text in first row.
  Lcd_Out(2,7,txt2);                 // Write text in second row.

  Delay_ms(2000);

  // Moving text
  for(i=0; i<4; i++) {               // Move text to the right 4 times.
    Lcd_Cmd(_LCD_SHIFT_RIGHT);
    Move_Delay();
  }

  while(1) {                         // Endless loop.
    for(i=0; i<7; i++) {             // Move text to the left 7 times.
      Lcd_Cmd(_LCD_SHIFT_LEFT);
      Move_Delay();
    }

    for(i=0; i<7; i++) {             // Move text to the right 7 times.
      Lcd_Cmd(_LCD_SHIFT_RIGHT);
      Move_Delay();
    }
  }
}
