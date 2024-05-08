/*
 * Project name:
     UART (Simple usage of UART module library functions)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description:
     This code demonstrates how to use uart library routines. Upon receiving
     data via USB connector, MCU immediately sends it back to the sender.
 * Test configuration:
     MCU:             PIC18F97J94
                      http://ww1.microchip.com/downloads/en/DeviceDoc/30000575C.pdf
     Dev.board:       EasyPIC PRO v8
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS-PLL 64.0000 MHz
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on RX and TX USB UART switches (SW1.3 and SW1.4) (board specific)
 */

char uart_rd;

void main() {

  UART1_Init(56000);                // Initialize UART module at 56000 bps
  Delay_ms(100);                    // Wait for UART module to stabilize

  UART1_Write_Text("Start");
  UART1_Write(13);
  UART1_Write(10);

  while (1) {                       // Endless loop
    if (UART1_Data_Ready()) {       // If data is received,
      uart_rd = UART1_Read();       // read the received data,
      UART1_Write(uart_rd);         // and send data via UART
    }
  }
}
