/*
 * Project name:
     TFT (Demonstration of the TFT library routines)
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
     This is a simple demonstration of the TFT library routines:
     - Init and Clear (pattern fill)
     - Image display
 * Test configuration:
     MCU:             dsPIC30F4013
                      http://ww1.microchip.com/downloads/en/DeviceDoc/70138F.pdf
     Dev.Board:       EASYPIC v8 for dsPIC30
                      http://www.mikroe.com/easypic-for-dspic30/
     Oscillator:      XT-PLL8, 80.000MHz
     Ext. Modules:    EasyTFT 320x240
                      https://www.mikroe.com/easytft-board
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on backlight at SW2 - SW2.1 (board specific).
     - After MCU has been programmed (5V required),
       make sure to set voltage for the TFT itself (3V3 required) - see IMPORTANT section down below.

 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start "CodeGrip Suite";
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within "CodeGrip Suite").
    - This MCU requires 3V3 in order for TFT to start.
      - Start "CodeGrip Suite";
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 3V3 (Power setting tab within "CodeGrip Suite").
 */

#include "built_in.h"
#include "TFT_resources.h"

// TFT module connections.
char TFT_DataPort at LATD;
sbit TFT_RST at LATF5_bit;
sbit TFT_RS at LATF0_bit;
sbit TFT_CS at LATF4_bit;
sbit TFT_RD at LATB4_bit;
sbit TFT_WR at LATB5_bit;
char TFT_DataPort_Direction at TRISD;
sbit TFT_RST_Direction at TRISF5_bit;
sbit TFT_RS_Direction at TRISF0_bit;
sbit TFT_CS_Direction at TRISF4_bit;
sbit TFT_RD_Direction at TRISB4_bit;
sbit TFT_WR_Direction at TRISB5_bit;
// End TFT module connections.

void Write_to_Data_Lines(unsigned char tft_data) {
    unsigned char tmp = LATB;
    tmp &= 0xF0;
    LATB = tmp | (tft_data & 0x0F);
    tmp = LATD;
    tmp &= 0xF0;
    LATD = tmp | (tft_data >> 4) ;
}

void Set_Index(unsigned char index) {
    TFT_RS = 0;
    Write_to_Data_Lines(index);
    TFT_WR = 0;
    asm nop;
    TFT_WR = 1;
}

void Write_Command(unsigned char cmd) {
    TFT_RS = 1;
    Write_to_Data_Lines(cmd);
    TFT_WR = 0;
    asm nop;
    TFT_WR = 1;
}

void Write_Data(unsigned int _data) {
    volatile unsigned short temp;
    TFT_RS = 1;
    temp = (_data>> 8);
    Write_to_Data_Lines(temp);
    TFT_WR = 0;
    asm nop;
    TFT_WR = 1;
    Write_to_Data_Lines(_data);
    TFT_WR = 0;
    asm nop;
    TFT_WR = 1;
}


void main() {
    ADPCFG = 0xFFFF;    // Configure AN pins as digital
    TRISB = 0x00;
    TRISD = 0x00;
    TFT_Set_Active(Set_Index,Write_Command,Write_Data);
    TFT_Init_ILI9341_8bit_Custom(320, 240);
    TFT_Fill_Screen(CL_BLACK);
    TFT_Image(50, 100, mikroe_logo_bmp, 1);
}
