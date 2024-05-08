/*
 * Project name:
     UART (Usage of mikroC for PIC32 PRO UART library)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This simple example demonstrates usage of mikroC's UARTx libraries, through
     a 'loopback' interface. The data is being sent to PIC32 through UART and sent back.
 * Test configuration:
     MCU:             PIC32MX795F512L
                      http://ww1.microchip.com/downloads/en/DeviceDoc/61156F.pdf
     Dev.Board:       Fusion for PIC32 v8
                      https://www.mikroe.com/fusion-for-pic32
     Oscillator:      HS-PLL 80.0000 MHz, 16.0000 MHz Crystal
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON UART switches on "USB/UART" switch SW2.3 and SW2.4.
 */

char uart_rd;

void main() {
  AD1PCFG = 0xFFFF;               // Configure AN pins as digital I/O

  UART2_Init(56000);              // Initialize UART module at 56000 bps
  Delay_ms(100);                  // Wait for UART module to stabilize

  UART2_Write_Text("Start");
  UART2_Write(13);
  UART2_Write(10);

  while (1) {                     // Endless loop
    if (UART2_Data_Ready()) {     // If data is received
      uart_rd = UART2_Read();     // read the received data
      UART2_Write(uart_rd);       // and send data via UART
    }
  }
}
