/*
 * Project name:
     HID Read Write Polling (Testing the USB HID connection)
 * Copyright:
     (c) MikroElektronika, 2020.
 * Revision History:
    - Initial release
 * Description:
     This example establishes connection with the HID terminal that is active
     on the PC. Upon connection establishment, the HID Device Name will appear
     in the respective window. The character that user sends to PIC from the HID
     terminal will be re-sent back to user.
 * Test configuration:
     MCU:           PIC32MX795F512L
                    http://ww1.microchip.com/downloads/en/DeviceDoc/61156F.pdf
     Dev.board:     Fusion for PIC32 v8
                    https://www.mikroe.com/fusion-for-pic32
     Oscillator:    HS-PLL 80.0000 MHz, 16.0000 MHz Crystal
     SW:            NECTO Studio
                    https://mikroe.com/necto
 * NOTES:
     - Turn ON USB UART switches at SW2. (board specific)
*/


char cnt;
char kk;
char readbuff[64];
char writebuff[64];

unsigned long int i = 0;
void main(void){
  AD1PCFG = 0xFFFF;                   // Configure AN pins as digital I/O

  HID_Enable(&readbuff,&writebuff);

  while(1){
    USB_Polling_Proc();               // Call this routine periodically
    kk = HID_Read();
    if(kk != 0){
      for(cnt=0;cnt<64;cnt++)
        writebuff[cnt]=readbuff[cnt];
      HID_Write(&writebuff,64);
    }
  }
}
