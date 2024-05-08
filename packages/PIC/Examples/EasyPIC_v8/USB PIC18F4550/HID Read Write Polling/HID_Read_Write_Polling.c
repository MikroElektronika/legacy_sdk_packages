/*
 * Project name:
     HID_Read_Write_Polling (Testing the USB HID connection)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
    - Initial release
 * Description:
     This example establishes connection with the HID terminal that is active
     on the PC. Upon connection establishment, the HID Device Name will appear
     in the respective window. After that software will wait for data and
     it will return received data back.
 * Test configuration:
     MCU:             PIC18F4550
                      http://ww1.microchip.com/downloads/en/DeviceDoc/39632D.pdf
     Dev.Board:       EasyPIC v8
                      https://www.mikroe.com/easypic-v8
     Oscillator:      HS, 8.000 MHz  (USB osc. is raised with PLL to 48.000MHz)
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     (*) Be VERY careful about the configuration flags for the 18F4550 - there's
     so much place for mistake!
    - In CODEGRIP Suite go to POWER and set Voltage to 5V
 */

unsigned char readbuff[64] absolute 0x500;  // Buffers should be in USB RAM, please consult datasheet
unsigned char writebuff[64] absolute 0x540;

char cnt;
char kk;

void main(void){
  ADCON1 |= 0x0F;                         // Configure all ports with analog function as digital
  CMCON  |= 7;                            // Disable comparators

  HID_Enable(&readbuff,&writebuff);       // Enable HID communication

  while(1){                               // USB servicing is done inside the while loop
    USB_Polling_Proc();                   // Call this routine periodically
    kk = HID_Read();
    if(kk != 0){
      for(cnt=0;cnt<64;cnt++)
        writebuff[cnt]=readbuff[cnt];
      HID_Write(&writebuff,64);
    }
  }
}
