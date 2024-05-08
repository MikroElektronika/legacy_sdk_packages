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
char readbuff[64];
char writebuff[64];

void USB1Interrupt() iv IVT_USB_1 ilevel 7 ics ICS_SRS{
  USB_Interrupt_Proc();
}

void main(void){
  AD1PCFG = 0xFFFF;                        // Configure AN pins as digital I/O        

  USBIE_bit = 0;
  IPC11bits.USBIP = 7;
  EnableInterrupts();

  HID_Enable(&readbuff,&writebuff);

  while(1){
    while(!HID_Read())
      ;

    for(cnt=0;cnt<64;cnt++)
      writebuff[cnt]=readbuff[cnt];

    while(!HID_Write(&writebuff,64))
      ;
  }
}
