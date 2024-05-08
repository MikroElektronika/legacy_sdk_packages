/*
 * Project name:
     HID_Read_Write_Polling (USB HID Read & Write Test)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     This example establishes connection with the HID terminal that is active
     on the PC. Upon connection establishment, the HID Device Name will appear
     in the respective window. The character that user sends to PIC from the HID
     terminal will be re-sent back to user.
 * Test configuration:
     MCU:             TM4C129XNCZAD
                      http://www.ti.com/lit/ds/symlink/tm4c129xnczad.pdf
     Dev.Board:       Fusion for TIVA v8
                      https://www.mikroe.com/fusion-for-tiva
     Oscillator:      MIOSC-PLL, 120.000000
     Ext. Modules:    None
     SW:              NECTO Studio
                      https://www.mikroe.com/necto
 * NOTES:
     -  None.
 */

char cnt;
char kk;
char readbuff[64];
char writebuff[64];

void main(void){
  HID_Enable(&readbuff,&writebuff);

  while(1){
    USB_Polling_Proc();                 // Call this routine periodically.
    kk = HID_Read();
    if(kk != 0){
      for(cnt=0;cnt<64;cnt++)
        writebuff[cnt]=readbuff[cnt];
      HID_Write(&writebuff,64);
    }
  }
}
