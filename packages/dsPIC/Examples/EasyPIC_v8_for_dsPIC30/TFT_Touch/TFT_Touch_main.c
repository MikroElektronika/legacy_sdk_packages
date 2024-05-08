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
     This is a simple demonstration of the TFT library routines using
     EasyTFT display hardware with touch capabilities.
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
       make sure to set voltage for the TFT itself
       (3V3 required) - see IMPORTANT section down below.

 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start "CodeGrip Suite";
      - Connect to "CodeGrip" which resides on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within "CodeGrip Suite").
    - This MCU requires 3V3 in order for TFT to start.
      - Start "CodeGrip Suite";
      - Connect to "CodeGrip" which resides on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 3V3 (Power setting tab within "CodeGrip Suite").
 */

#include "TFT_Touch_objects.h"

void main() {

    Start_TP();

    while (1) {
        Check_TP();
    }
}
