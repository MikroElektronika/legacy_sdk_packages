/*
 * Project name:
     Touch Panel Calibration and Write (Demo for working with TouchPanel Controller)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio.
 * Description:
     This code works with TouchPanel and GLCD. Two digital output and
     two analog input signals are used for communication with TouchPanel.
     This example shows how to calibrate touch panel and how to write on the screen.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 -  ac:Touch_Panel
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    GLCD 128x64, Touch Panel
                      https://www.mikroe.com/glcd-128x64
     SW:              Necto Studio.
                      http://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * Notes:
     - Turn on GLCD backlight (SW3.1) and TouchPanel Contoller switches (SW8.5, SW8.6, SW8.7 and SW8.8).
     - Turn off diodes connected to ADC pins.
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

// Touch Panel module connections.
sbit DriveA at PORTA.B2;
sbit DriveB at PORTA.B3;
sbit DriveA_Direction at DDRA.B2;
sbit DriveB_Direction at DDRA.B3;
// End Touch Panel module connections.

char write_erase;
char pen_size;

// GLCD menu messages.
char write_msg[] = "WRITE";
char clear_msg[] = "CLEAR";
char erase_msg[] = "ERASE";
unsigned int x_coord, y_coord;

void Initialize() {
    // Initialize GLCD.
    Glcd_Init();

    // Clear GLCD.
    Glcd_Fill(0);

    // Initialize ADC.
    ADC_Init();

    // Initialize touch panel.
    TP_Init(128, 64, 0, 1);

    // Set touch panel ADC threshold.
    TP_Set_ADC_Threshold(900);
}

void Calibrate() {

    // Draw bottom left dot.
    Glcd_Dot(0,63,1);
    Glcd_Write_Text("TOUCH BOTTOM LEFT",12,3,1);

    // Calibration of bottom left corner.
    TP_Calibrate_Bottom_Left();
    Delay_ms(1000);

    // Clear bottom left dot.
    Glcd_Dot(0,63,0);

    // Draw upper right dot.
    Glcd_Dot(127,0,1);
    Glcd_Write_Text("                 ",12,3,1);
    Glcd_Write_Text("TOUCH UPPER RIGHT",12,4,1);

    // Calibration of upper right corner.
    TP_Calibrate_Upper_Right();

  Delay_ms(1000);
}

void main() {

    Initialize();

    Glcd_Write_Text("CALIBRATION",32,3,1);
    Delay_ms(1000);

    // Clear GLCD.
    Glcd_Fill(0);

    Calibrate();

    Glcd_Fill(0);
    Glcd_Write_Text("WRITE ON SCREEN", 20, 5, 1) ;
    Delay_ms(1000);

    // Clear GLCD.
    Glcd_Fill(0);
    Glcd_V_Line(0,7,0,1);
    Glcd_Write_Text(clear_msg,1,0,0);
    Glcd_V_Line(0,7,97,1);
    Glcd_Write_Text(erase_msg,98,0,0);

    // Pen Menu:
    Glcd_Rectangle(41,0,52,9,1);
    Glcd_Box(45,3,48,6,1);
    Glcd_Rectangle(63,0,70,7,1);
    Glcd_Box(66,3,67,4,1);
    Glcd_Rectangle(80,0,86,6,1);
    Glcd_Dot(83,3,1);

    write_erase = 1;
    pen_size = 1;
    while (1) {

        if (TP_Press_Detect()) {

            // After a PRESS is detected read X-Y and convert it to 128x64 space.
            if (TP_Get_Coordinates(&x_coord, &y_coord) == 0) {

                if ((x_coord < 31) && (y_coord < 8)) {

                    Glcd_Fill(0);

                    // Pen Menu:
                    Glcd_Rectangle(41,0,52,9,1);
                    Glcd_Box(45,3,48,6,1);
                    Glcd_Rectangle(63,0,70,7,1);
                    Glcd_Box(66,3,67,4,1);
                    Glcd_Rectangle(80,0,86,6,1);
                    Glcd_Dot(83,3,1);

                    Glcd_V_Line(0,7,0,1);
                    Glcd_Write_Text(clear_msg,1,0,0);
                    Glcd_V_Line(0,7,97,1);

                    if (write_erase)
                        Glcd_Write_Text(erase_msg,98,0,0);
                    else
                        Glcd_Write_Text(write_msg,98,0,0);
                }

                // If write/erase is pressed:
                if ((x_coord > 96) && (y_coord < 8)) {
                    if (write_erase) {
                        write_erase = 0;
                        Glcd_Write_Text(write_msg,98,0,0);
                        Delay_ms(500);
                    } else {
                        write_erase = 1;
                        Glcd_Write_Text(erase_msg,98,0,0);
                        Delay_ms(500);
                    }
                }

                // If pen size is selected:
                if ((x_coord >= 41) && (x_coord <= 52) && (y_coord <= 9))
                pen_size = 3;

                if ((x_coord >= 63) && (x_coord <= 70) && (y_coord <= 7))
                pen_size = 2;

                if ((x_coord >= 80) && (x_coord <= 86) && (y_coord <= 6))
                pen_size = 1;

                if (y_coord < 11)
                continue;

                switch (pen_size) {
                case 1 : {
                            if ( (x_coord >= 0) && (y_coord >= 0) && (x_coord <= 127) && (y_coord <= 63) )
                                Glcd_Dot(x_coord, y_coord, write_erase);
                            break;
                        }
                case 2 : {
                            if ( (x_coord >= 0) && (y_coord >= 0) && (x_coord <= 127-1) && (y_coord <= 63-1) )
                                Glcd_Box(x_coord, y_coord, x_coord + 1, y_coord + 1, write_erase);
                            break;
                        }
                case 3 : {
                            if ( (x_coord >= 1) && (y_coord >= 1) && (x_coord <= 127-2) && (y_coord <= 63-2) )
                                Glcd_Box(x_coord-1, y_coord-1, x_coord + 2, y_coord + 2, write_erase);
                            break;
                        }
                }
            }
        }
    }
}
