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
     MCU:             PIC18F47K42
                      http://ww1.microchip.com/downloads/en/DeviceDoc/PIC18LF26-27-45-46-47-55-56-57K42-Data-Sheet-40001919E.pdf
     Dev.Board:       EasyPIC v8
                      https://www.mikroe.com/easypic-v8
     Oscillator:      64.0000 MHz
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on RX and TX UART switches (SW23.8 and SW21.8) (board specific)
 */

char uart_rd;

void main() {
  ANSELC = 0;                     // Configure PORTC pins as digital

  UART1_Init(56000);              // Initialize UART module at 56000 bps
  Delay_ms(100);                  // Wait for UART module to stabilize

  UART1_Write_Text("Start");
  UART1_Write(13);
  UART1_Write(10);

  while (1) {                     // Endless loop
    if (UART1_Data_Ready()) {     // If data is received,
      uart_rd = UART1_Read();     // Read the received data,
      UART1_Write(uart_rd);       // Send data via UART
    }
  }
}
