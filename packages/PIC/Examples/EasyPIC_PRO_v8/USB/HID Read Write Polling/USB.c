/*
 * Project name:
     HID Read Write Interrupt (Testing the USB HID connection)
 * Copyright:
     (c) MikroElektronika, 2020.
 * Revision History:
    - Initial release
 * Description:
     This example establishes connection with the HID terminal that is active
     on the PC. Upon connection establishment, the HID Device Name will appear
     in the respective window, and the software will start transmitting fixed
     message over the USB HID connection, for eternity.
 * Test configuration:
     MCU:             PIC18F97J94
                      http://ww1.microchip.com/downloads/en/DeviceDoc/30000575C.pdf
     Dev.board:       EasyPIC PRO v8
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS, 16.000 MHz  (USB osc. is raised with PLL to 64.000MHz)
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - It may be complicated setting oscillator configuration flags related to USB,
       if you find any trouble with setting oscillator configuration flags,
       for more information use the existing clock scheme provided in Schemes folder.
*/

unsigned char readbuff[64]  absolute 0x500; // place the arrays to USB section
unsigned char writebuff[64] absolute 0x540;

char cnt;
char kk;

void main(void){

  HID_Enable(&readbuff,&writebuff);      // Enable HID communication

  while(1){
    USB_Polling_Proc();
    kk = HID_Read();

    if (kk != 0){
      for (cnt = 0; cnt < 64; cnt ++)
        writebuff[cnt]=readbuff[cnt];
      HID_Write(&writebuff,64);
    }
  }
}
