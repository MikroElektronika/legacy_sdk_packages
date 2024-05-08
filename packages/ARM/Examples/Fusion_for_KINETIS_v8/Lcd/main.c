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
     MCU:             MK64FN1M0XXX12
                      https://www.nxp.com/docs/en/data-sheet/K64P144M120SF5.pdf
     Dev.Board:       Fusion for KINETIS v8
                      https://www.mikroe.com/fusion-for-kinetis
     Oscillator:      PLL, 120.000MHz
     Ext. modules:    LCD
     SW:              NECTO Studio
                      http://www.mikroe.com/necto
 * NOTES:
     - Turn on LCD backlight and PWM switches (board specific).
*/

// LCD module connections.
sbit LCD_RS at PTC_PDOR.B10;
sbit LCD_EN at PTC_PDOR.B11;
sbit LCD_D4 at PTD_PDOR.B4;
sbit LCD_D5 at PTD_PDOR.B5;
sbit LCD_D6 at PTD_PDOR.B6;
sbit LCD_D7 at PTD_PDOR.B7;
// End of LCD module connections.

char txt1[] = "mikroElektronika";
char txt2[] = "Kinetis";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;                                // Loop variable.

void Move_Delay() {                    // Function used for text moving.
  Delay_ms(750);                       // You can change the moving speed here.
}

void main(){
  Lcd_Init();                          // Initialize LCD.

  Lcd_Cmd( _LCD_CLEAR );               // Clear display.
  Lcd_Cmd( _LCD_CURSOR_OFF );          // Cursor off.
  Lcd_Out( 1,6,txt3 );                 // Write text in first row.

  Lcd_Out( 2,6,txt4 );                 // Write text in second row.
  Delay_ms(2000);
  Lcd_Cmd( _LCD_CLEAR );               // Clear display.

  Lcd_Out( 1,1,txt1 );                 // Write text in first row.
  Lcd_Out( 2,4,txt2 );                 // Write text in second row.

  Delay_ms(2000);

  // Moving text
  for( i=0; i<4; i++ ) {               // Move text to the right 4 times.
    Lcd_Cmd( _LCD_SHIFT_RIGHT );
    Move_Delay();
  }

  while(1) {                           // Endless loop.
    for( i=0; i<7; i++ ) {             // Move text to the left 7 times.
      Lcd_Cmd( _LCD_SHIFT_LEFT );
      Move_Delay();
    }

    for( i=0; i<7; i++ ) {             // Move text to the right 7 times.
      Lcd_Cmd( _LCD_SHIFT_RIGHT );
      Move_Delay();
    }
  }
}
