/*
 * Project name:
     UART (Usage of mikroC for dsPIC30/33 and PIC24 UART libraries)
 * Copyright:
     (c) mikroElektronika, 2021.
 * Revision History:
     20100502:
       - Initial release;
    20210202:
       - Porting example for Necto Studio;
 * Description:
     This simple example demonstrates usage of mikroC's UARTx libraries, through
     a 'loopback' interface. The data being sent to dsPIC through UART
     and sent back.
* Test configuration:
     MCU:             dsPIC30F4013
                      http://ww1.microchip.com/downloads/en/DeviceDoc/70138F.pdf
     dev.board:       EASYPIC v8 for dsPIC30
                      http://www.mikroe.com/easypic-for-dspic30/
     Oscillator:      XT-PLL8, 80.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on the following switch pins in order to get UART communication up and running:
       - SW5.1 ( RF2 - Rx pin ).
       - SW6.1 ( RF3 - Tx pin ).
 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start CodeGrip Suite;
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within "CodeGrip Suite").

 */

char uart_rd;

void main() {
    UART1_Init(9600);                   // Initialize UART module at 9600 bps.
    Delay_ms(100);                      // Wait for UART module to stabilize.

    // U1MODEbits.ALTIO = 1;            // Un-comment this line to have Rx and Tx pins on their alternate
                                        // locations. This is used to free the pins for other module, namely the SPI.

    UART1_Write_Text("Start");
    UART1_Write(10);
    UART1_Write(13);

    while (1) {                         // Endless loop.
        if (UART1_Data_Ready()) {       // If data is received,
            uart_rd = UART1_Read();     // read the received data,
            UART1_Write(uart_rd);       // and send data via UART.
        }
    }
}
