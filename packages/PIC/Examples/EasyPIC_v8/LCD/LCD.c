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
     MCU:             PIC18F47K42
                      http://ww1.microchip.com/downloads/en/DeviceDoc/PIC18LF26-27-45-46-47-55-56-57K42-Data-Sheet-40001919E.pdf
     Dev.Board:       EasyPIC v8 ac:LCD
                      https://www.mikroe.com/easypic-v8
     Oscillator:      64.0000 MHz
     Ext. Modules:    Character Lcd 2x16
                      https://www.mikroe.com/lcd-2x16-blue
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on Lcd backlight switch and PWM switch SW6.3 and SW6.4 (board specific)
     - Make sure that CAN switch is toggled to up position (GPIO position) RB3/RB2 (board specific)
*/

//Lcd module connections
sbit LCD_RS at LATA3_bit;
sbit LCD_EN at LATB1_bit;
sbit LCD_D4 at LATB2_bit;
sbit LCD_D5 at LATB3_bit;
sbit LCD_D6 at LATB4_bit;
sbit LCD_D7 at LATB5_bit;

sbit LCD_RS_Direction at TRISA3_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D7_Direction at TRISB5_bit;
//End of Lcd module connections

char txt1[] = "mikroElektronika";
char txt2[] = "EasyPICv8";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;                              //Loop variable

void Move_Delay() {                  //Function used for text moving
  Delay_ms(500);                     //You can change the moving speed here
}

void main(){
  ANSELA = 0;                        //Configure PORTA pins as digital
  ANSELB = 0;                        //Configure PORTB pins as digital


  Lcd_Init();                        //Initialize Lcd

  Lcd_Cmd(_LCD_CLEAR);               //Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          //Cursor off
  Lcd_Out(1,6,txt3);                 //Write text in first row

  Lcd_Out(2,6,txt4);                 //Write text in second row
  Delay_ms(2000);
  Lcd_Cmd(_LCD_CLEAR);               //Clear display

  Lcd_Out(1,1,txt1);                 //Write text in first row
  Lcd_Out(2,5,txt2);                 //Write text in second row

  Delay_ms(2000);


  // Moving text
  for(i=0; i<4; i++) {               //Move text to the right 4 times
    Lcd_Cmd(_LCD_SHIFT_RIGHT);
    Move_Delay();
  }

  while(1) {                         //Endless loop
    for(i=0; i<8; i++) {             //Move text to the left 7 times
      Lcd_Cmd(_LCD_SHIFT_LEFT);
      Move_Delay();
    }

    for(i=0; i<8; i++) {             //Move text to the right 7 times
      Lcd_Cmd(_LCD_SHIFT_RIGHT);
      Move_Delay();
    }
  }
}
