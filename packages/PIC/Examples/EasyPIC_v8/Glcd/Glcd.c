/*
 * Project name:
     GLCD_Test (Demonstration of the GLCD library routines)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This is a simple demonstration of the GLCD library routines:
     - Init and Clear (pattern fill)
     - Image display
     - Basic geometry - lines, circles, boxes and rectangles
     - Text display and handling
 * Test configuration:
     MCU:             PIC18F47K42
                      http://ww1.microchip.com/downloads/en/DeviceDoc/PIC18LF26-27-45-46-47-55-56-57K42-Data-Sheet-40001919E.pdf
     Dev.Board:       EasyPIC v8 ac:GLCD
                      https://www.mikroe.com/easypic-v8
     Oscillator:      64.0000 MHz
     Ext. Modules:    GLCD 128x64
                      https://www.mikroe.com/glcd-128x64?search_query=GLCD+128x64&results=10
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * Notes:
     - Turn on GLCD backlight switch and PWM switch SW6.1 and SW6.2 (board specific)
     - Make sure that CAN switch is toggled to up position (GPIO position) RB3/RB2 (board specific)
 */

//Declarations------------------------------------------------------------------
const code char truck_bmp[1024];
//-----------------------------------------------------------end-of-declarations

//Glcd module connections
char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at LATB5_bit;
sbit GLCD_CS2 at LATB4_bit;
sbit GLCD_RS  at LATB2_bit;
sbit GLCD_RW  at LATB3_bit;
sbit GLCD_EN  at LATC1_bit;
sbit GLCD_RST at LATA3_bit;

sbit GLCD_CS1_Direction at TRISB5_bit;
sbit GLCD_CS2_Direction at TRISB4_bit;
sbit GLCD_RS_Direction  at TRISB2_bit;
sbit GLCD_RW_Direction  at TRISB3_bit;
sbit GLCD_EN_Direction  at TRISC1_bit;
sbit GLCD_RST_Direction at TRISA3_bit;
//End of Glcd module connections

void delay2S(){                                     // 2 second delay function
  Delay_ms(2000);
}

void main() {

  unsigned short counter;
  char *someText;

  ANSELB = 0;                                       // Configure PORTB pins as digital I/O
  ANSELD = 0;                                       // Configure PORTD pins as digital I/O
  ANSELA = 0;                                       // Configure PORTA pins as digital I/O
  ANSELC = 0;                                       // Configure PORTC pins as digital I/O

  Glcd_Init();                                      // Initialize GLCD
  Glcd_Fill(0x00);                                  // Clear GLCD

  while(1) {
    Glcd_Image(truck_bmp);                          // Draw image
    delay2S(); delay2S();
    Glcd_Fill(0x00);                                // Clear GLCD
    Glcd_PartialImage(0,0,68,30,128,64,truck_bmp);  // Partial image
    Delay_ms(500);
    Glcd_PartialImage(24,16,68,30,128,64,truck_bmp);
    Delay_ms(500);
    Glcd_PartialImage(56,34,68,30,128,64,truck_bmp);
    delay2S(); delay2S();
    Glcd_Fill(0x00);                                // Clear GLCD

    Glcd_Box(62,40,124,56,1);                       // Draw box
    Glcd_Rectangle(5,5,84,35,1);                    // Draw rectangle
    Delay_ms(1000);
    Glcd_Rectangle_Round_Edges(2,2,87,38,7,1);
    Delay_ms(1000);
    Glcd_Rectangle_Round_Edges_Fill(8,8,81,32,12,1);
    Delay_ms(1000);
    Glcd_Line(0, 0, 127, 63, 1);                    // Draw line
    delay2S();

    for(counter = 5; counter < 60; counter+=5 ){    // Draw horizontal and vertical lines
      Delay_ms(250);
      Glcd_V_Line(2, 54, counter, 1);
      Glcd_H_Line(2, 120, counter, 1);
    }
    delay2S();

    Glcd_Fill(0x00);                                // Clear Glcd

    for (counter = 1; counter <= 10; counter++)     // Draw circles
      Glcd_Circle(63,32, 3*counter, 1);
    delay2S();

    for (counter = 1; counter <= 10; counter++)     // Draw circles
      Glcd_Circle_Fill(63,32, 3*counter, 1);
    delay2S();

    Glcd_Box(12,20, 70,57, 2);                      // Draw box
    delay2S();

    Glcd_Fill(0xFF);                                // Fill Glcd

    Glcd_Set_Font(Character8x7, 8, 7, 32);          // Change font
    Glcd_Write_Text("TEXT DEMO", 24, 3, 2);         // Write string
    delay2S();
    Glcd_Fill(0x00);                                // Clear Glcd

    Glcd_Set_Font(Character8x7, 8, 7, 32);          // Change font
    someText = "8x7 Font";
    Glcd_Write_Text(someText, 5, 0, 2);             // Write string
    delay2S();

    Glcd_Set_Font(System3x5, 3, 5, 32);             // Change font
    someText = "3X5 CAPITALS ONLY";
    Glcd_Write_Text(someText, 60, 2, 2);            // Write string
    delay2S();

    Glcd_Set_Font(font5x7, 5, 7, 32);               // Change font
    someText = "5x7 Font";
    Glcd_Write_Text(someText, 5, 4, 2);             // Write string
    delay2S();

    Glcd_Set_Font(FontSystem5x7_v2, 5, 7, 32);      // Change font
    someText = "5x7 Font (v2)";
    Glcd_Write_Text(someText, 50, 6, 2);            // Write string
    delay2S();
  }
}
