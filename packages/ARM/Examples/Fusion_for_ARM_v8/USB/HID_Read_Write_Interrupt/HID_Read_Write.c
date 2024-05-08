/* Project name:
     HID_Read_Write (USB HID Read & Write Test)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     This example establishes connection with the HID terminal that is active
     on the PC. Upon connection establishment, the HID Device Name ( USB HID Library ) will appear
     in the respective window. The character that user sends from the HID
     terminal will be re-sent back to user.
 * Test configuration:
     Device:          STM32F767ZG
                      https://www.st.com/resource/en/datasheet/stm32f767zg.pdf
     Dev.Board:       Fusion for ARM v8
                      https://www.mikroe.com/fusion-for-arm
     Oscillator:      HSE-PLL, 216.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
*/

char readbuff[64];
char writebuff[64];

void USB0Interrupt() iv IVT_INT_OTG_FS{
  USB_Interrupt_Proc();
}

void main(void){
  char cnt;
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
