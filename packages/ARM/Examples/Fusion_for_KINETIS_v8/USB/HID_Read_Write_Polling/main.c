/* Project name:
     HID_Read_Write_Polling (USB HID Read & Write Test)
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

char cnt;
char kk;
char readbuff[ 64 ];
char writebuff[ 64 ];

unsigned long int i = 0;
void main(void){
  MPU_CESR = 0;
  HID_Enable( &readbuff,&writebuff );

  while(1){
    USB_Polling_Proc();               // Call this routine periodically
    kk = HID_Read();
    if( kk != 0 ){
      for( cnt=0;cnt<64;cnt++ )
        writebuff[ cnt ]=readbuff[ cnt ];
      HID_Write( &writebuff,64 );
    }
  }
}
