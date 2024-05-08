  /*
 * Project name:
     UART
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     This simple example demonstrates usage of mikroC's UART libraries, through
     a 'loopback' interface. The data being sent to ARM through UART
     and sent back.
 * Test configuration:
     MCU:             MK64FN1M0XXX12
                      https://www.nxp.com/docs/en/data-sheet/K64P144M120SF5.pdf
     Dev.Board:       Fusion for KINETIS v8
                      https://www.mikroe.com/fusion-for-kinetis
     Oscillator:      PLL, 120.000MHz
     Ext. Modules:    None
     SW:              NECTO Studio
                      http://www.mikroe.com/necto
 * NOTES:
     - Turn ON USB UART TX and RX switches (board specific)
     - Use UART Terminal for communication with controller.
 */

char uart_rd;

void main()
{
  UART5_Init_Advanced( 56000, _UART_8_BIT_DATA, 
                             _UART_NOPARITY, 
                             _UART_ONE_STOPBIT, 
                             &_GPIO_Module_UART5_PD9_8 );
  
  Delay_ms(100);                   // Wait for UART module to stabilize.

  UART5_Write_Text("Start");
  UART5_Write(13);
  UART5_Write(10);

  while (1)                        // Endless loop.
  {
    if ( UART5_Data_Ready() )
    {                              // If data is received.
      uart_rd = UART5_Read();      // read the received data.
      UART5_Write( uart_rd );      // and send data via UART.
    }
  }
}
