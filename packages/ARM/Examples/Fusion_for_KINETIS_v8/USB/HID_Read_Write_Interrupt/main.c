/* Project name:
     HID_Read_Write (USB HID Read & Write Test)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     This example establishes connection with the HID terminal that is active
     on the PC. Upon connection establishment, the HID Device Name will appear
     in the respective window. The character that user sends to the board from the HID
     terminal will be re-sent back to user.
 * Test configuration:
     Device:          MK64FN1M0XXX12
                      https://www.nxp.com/docs/en/data-sheet/K64P144M120SF5.pdf
     Dev.Board:       Fusion for KINETIS v8
                      https://www.mikroe.com/fusion-for-kinetis
     Oscillator:      PLL, 120.000MHz
     ext. modules:    None
     SW:              NECTO Studio
                      http://www.mikroe.com/necto
*/

char readbuff[ 64 ];
char writebuff[ 64 ];

void USB0Interrupt() iv IVT_INT_USB0  ics ICS_AUTO{
  USB_Interrupt_Handle();
}

void main(void){
  char cnt;
  MPU_CESR = 0;
  HID_Enable( &readbuff,&writebuff );

  while(1){
    while( !HID_Read() )
      ;

    for( cnt=0;cnt<64;cnt++ )
      writebuff[ cnt ]=readbuff[ cnt ];

    while( !HID_Write( &writebuff,64 ) )
        ;
  }
}
