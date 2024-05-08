/*
 * Project name:
     GLCD (Demonstration of the GLCD library routines)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio;
 * Description:
     This is a simple demonstration of the GLCD library routines:
     - Init and Clear (pattern fill)
     - Image display
     - Basic geometry - lines, circles, boxes and rectangles
     - Text display and handling
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7  - ac:GLCD
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    GLCD 128x64, KS108/107 controller
                      https://www.mikroe.com/glcd-128x64
     SW:              Necto.
                      https://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * Notes:
     - Turn on GLCD backlight switch on development board (SW3.1).
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

//Declarations------------------------------------------------------------------
const code char truck_bmp[1024];
//--------------------------------------------------------------end-declarations

// GLCD module connections.
char GLCD_DataPort at PORTC;
char GLCD_DataPort_Direction at DDRC;

sbit GLCD_CS1 at PORTB.B0;
sbit GLCD_CS2 at PORTB.B1;
sbit GLCD_RS  at PORTA.B2;
sbit GLCD_RW  at PORTA.B3;
sbit GLCD_EN  at PORTD.B6;
sbit GLCD_RST at PORTD.B7;

sbit GLCD_CS1_Direction at DDRB.B0;
sbit GLCD_CS2_Direction at DDRB.B1;
sbit GLCD_RS_Direction  at DDRA.B2;
sbit GLCD_RW_Direction  at DDRA.B3;
sbit GLCD_EN_Direction  at DDRD.B6;
sbit GLCD_RST_Direction at DDRD.B7;
// End GLCD module connections.

// 2 seconds delay function.
void Delay2s(){
    Delay_ms(2000);
}

void main() {
    char counter;
    char *someText;

    // Initialize GLCD.
    Glcd_Init();

    // Clear GLCD.
    Glcd_Fill(0x00);

    while(1) {
        // Draw image.
        Glcd_Image(truck_bmp);
        Delay2s(); Delay2s();

        // Clear GLCD.
        Glcd_Fill(0x00);

        // Partial image.
        Glcd_PartialImage(0,0,68,30,128,64,truck_bmp);
        Delay_ms(500);
        Glcd_PartialImage(24,16,68,30,128,64,truck_bmp);
        Delay_ms(500);
        Glcd_PartialImage(56,34,68,30,128,64,truck_bmp);
        Delay2s(); Delay2s();

        // Clear GLCD.
        Glcd_Fill(0x00);

        // Draw box.
        Glcd_Box(62,40,124,56,1);

        // Draw rectangle.
        Glcd_Rectangle(5,5,84,35,1);
        Delay_ms(1000);
        Glcd_Rectangle_Round_Edges(2,2,87,38,7,1);
        Delay_ms(1000);
        Glcd_Rectangle_Round_Edges_Fill(8,8,81,32,12,1);
        Delay_ms(1000);

        // Draw line.
        Glcd_Line(0, 0, 127, 63, 1);
        Delay2s();

        // Draw horizontal and vertical lines.
        for(counter = 5; counter < 60; counter += 5){
            Delay_ms(250);
            Glcd_V_Line(2, 54, counter, 1);
            Glcd_H_Line(2, 120, counter, 1);
        }
        Delay2s();

        // Clear Glcd.
        Glcd_Fill(0x00);

        // Choose font.
        Glcd_Set_Font(Character8x7, 8, 7, 32);

        // Write string.
        Glcd_Write_Text("mikroE", 5, 7, 2);

        // Draw circles.
        for (counter = 1; counter <= 10; counter++)
            Glcd_Circle(63,32, 3*counter, 1);
        Delay2s();

        // Draw circles.
        Glcd_Circle_Fill(63,32, 30, 1);
        Delay2s();

        // Draw box.
        Glcd_Box(12,20, 70,57, 2);
        Delay2s();

        // Fill Glcd.
        Glcd_Fill(0xFF);

        // Change font.
        Glcd_Set_Font(Character8x7, 8, 7, 32);
        someText = "8x7 Font";

        // Write string.
        Glcd_Write_Text(someText, 5, 0, 2);
        Delay2s();

        // Change font.
        Glcd_Set_Font(System3x5, 3, 5, 32);
        someText = "3X5 CAPITALS ONLY";

        // Write string.
        Glcd_Write_Text(someText, 60, 2, 2);
        Delay2s();

        // Change font.
        Glcd_Set_Font(font5x7, 5, 7, 32);
        someText = "5x7 Font";

        // Write string.
        Glcd_Write_Text(someText, 5, 4, 2);
        Delay2s();

        // Change font.
        Glcd_Set_Font(FontSystem5x7_v2, 5, 7, 32);
        someText = "5x7 Font (v2)";

        // Write string.
        Glcd_Write_Text(someText, 50, 6, 2);
        Delay2s();
    }
}
