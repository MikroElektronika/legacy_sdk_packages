/*
 * Project name:
     GLCD (Demonstration of the GLCD library routines)
 * Target Platform:
     dsPIC
 * Copyright:
     (c) mikroElektronika, 2021.
 * Revision History:
     20100502:
       - Initial release;
     20210202:
       - Porting example into Necto Studio;
 * Description:
     This is a simple demonstration of the GLCD library routines:
     - Init and Clear (pattern fill)
     - Image display
     - Basic geometry - lines, circles, boxes and rectangles
     - Text display and handling
 * Test configuration:
     MCU:             dsPIC30F4013
                      http://ww1.microchip.com/downloads/en/DeviceDoc/70138F.pdf
     Dev.Board:       EASYPIC v8 for dsPIC30
                      http://www.mikroe.com/easypic-for-dspic30/
     Oscillator:      XT-PLL8, 80.000MHz
     Ext. Modules:    GLCD 128x64, KS108/107 controller
                      https://www.mikroe.com/glcd-128x64
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on the following switch pin in order to get
       GLCD backlight up and running: SW2.1.

 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start "CodeGrip Suite";
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within "CodeGrip Suite").

 */

//Declarations------------------------------------------------------------------
const code char truck_bmp[1024];
//--------------------------------------------------------------EOF-Declarations

// Glcd module connections.
sbit GLCD_D7 at RD3_bit;
sbit GLCD_D6 at RD2_bit;
sbit GLCD_D5 at RD1_bit;
sbit GLCD_D4 at RD0_bit;
sbit GLCD_D3 at RB3_bit;
sbit GLCD_D2 at RB2_bit;
sbit GLCD_D1 at RB1_bit;
sbit GLCD_D0 at RB0_bit;
sbit GLCD_D7_Direction at TRISD3_bit;
sbit GLCD_D6_Direction at TRISD2_bit;
sbit GLCD_D5_Direction at TRISD1_bit;
sbit GLCD_D4_Direction at TRISD0_bit;
sbit GLCD_D3_Direction at TRISB3_bit;
sbit GLCD_D2_Direction at TRISB2_bit;
sbit GLCD_D1_Direction at TRISB1_bit;
sbit GLCD_D0_Direction at TRISB0_bit;

sbit GLCD_CS1 at LATB4_bit;
sbit GLCD_CS2 at LATB5_bit;
sbit GLCD_RS  at LATF0_bit;
sbit GLCD_RW  at LATF1_bit;
sbit GLCD_EN  at LATF4_bit;
sbit GLCD_RST at LATF5_bit;
sbit GLCD_CS1_Direction at TRISB4_bit;
sbit GLCD_CS2_Direction at TRISB5_bit;
sbit GLCD_RS_Direction  at TRISF0_bit;
sbit GLCD_RW_Direction  at TRISF1_bit;
sbit GLCD_EN_Direction  at TRISF4_bit;
sbit GLCD_RST_Direction at TRISF5_bit;
// End Glcd module connections.

void delay2S(){                                           // 2 seconds delay function.
    Delay_ms(2000);
}

void main() {
    char counter;
    char *someText;

    ADPCFG = 0xFFFF;                                      // Configure AN pins as digital.

    Glcd_Init();                                          // Initialize GLCD.
    Glcd_Fill(0x00);                                      // Clear GLCD.

    while(1) {
        Glcd_Image(truck_bmp);                            // Draw image.
        delay2S(); delay2S();
        Glcd_Fill(0x00);                                  // Clear GLCD.
        Glcd_PartialImage(0,0,68,30,128,64,truck_bmp);    // Partial image.
        Delay_ms(500);
        Glcd_PartialImage(24,16,68,30,128,64,truck_bmp);
        Delay_ms(500);
        Glcd_PartialImage(56,34,68,30,128,64,truck_bmp);
        delay2S(); delay2S();
        Glcd_Fill(0x00);                                  // Clear GLCD.

        Glcd_Box(62,40,124,56,1);                         // Draw box.
        Glcd_Rectangle(5,5,84,35,1);                      // Draw rectangle.
        Delay_ms(1000);
        Glcd_Rectangle_Round_Edges(2,2,87,38,7,1);
        Delay_ms(1000);
        Glcd_Rectangle_Round_Edges_Fill(8,8,81,32,12,1);
        Delay_ms(1000);
        Glcd_Line(0, 0, 127, 63, 1);                      // Draw line.
        delay2S();

        for(counter = 5; counter < 60; counter+=5 ){      // Draw horizontal and vertical lines.
            Delay_ms(250);
            Glcd_V_Line(2, 54, counter, 1);
            Glcd_H_Line(2, 120, counter, 1);
        }
        delay2S();

        Glcd_Fill(0x00);                                  // Clear Glcd.
        Glcd_Set_Font(Character8x7, 8, 7, 32);            // Choose font.
        Glcd_Write_Text("mikroE", 5, 7, 2);               // Write string.

        for (counter = 1; counter <= 10; counter++)       // Draw circles.
            Glcd_Circle(63,32, 3*counter, 1);

        delay2S();

        Glcd_Circle_Fill(63,32, 30, 1);                   // Draw circles.
        delay2S();

        Glcd_Box(12,20, 70,57, 2);                        // Draw box.
        delay2S();

        Glcd_Fill(0xFF);                                  // Fill Glcd.

        Glcd_Set_Font(Font_Glcd_Character8x7, 8, 7, 32);  // Change font.
        someText = "8x7 Font";
        Glcd_Write_Text(someText, 5, 0, 2);               // Write string.
        delay2S();

        Glcd_Set_Font(Font_Glcd_System3x5, 3, 5, 32);     // Change font.
        someText = "3X5 CAPITALS ONLY";
        Glcd_Write_Text(someText, 60, 2, 2);              // Write string.
        delay2S();

        Glcd_Set_Font(Font_Glcd_5x7, 5, 7, 32);           // Change font.
        someText = "5x7 Font";
        Glcd_Write_Text(someText, 5, 4, 2);               // Write string.
        delay2S();

        Glcd_Set_Font(Font_Glcd_System5x7, 5, 7, 32);     // Change font.
        someText = "5x7 Font (v2)";
        Glcd_Write_Text(someText, 50, 6, 2);              // Write string.
        delay2S();
    }
}
