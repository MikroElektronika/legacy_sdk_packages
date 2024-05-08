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
     MCU:             TM4C129XNCZAD
                      http://www.ti.com/lit/ds/symlink/tm4c129xnczad.pdf
     Dev.Board:       Fusion for TIVA v8
                      https://www.mikroe.com/fusion-for-tiva
     Oscillator:      MIOSC-PLL, 120.000000
     Ext. Modules:    None
     SW:              NECTO Studio
                      https://www.mikroe.com/necto
 * NOTES:
     - Turn on UART switches on SW1.
*/

char uart_rd;

void main() {
  UART6_Init(56000);             // Initialize UART module at 56000 bps.
  Delay_ms(100);                 // Wait for UART module to stabilize.

  UART_Write_Text("Start");
  UART_Write(13);
  UART_Write(10);

  while (1) {                    // Endless loop.
    if (UART_Data_Ready()) {     // If data is received,
      uart_rd = UART_Read();     // read the received data
      UART_Write(uart_rd);       // and send data via UART.
    }
  }
}
