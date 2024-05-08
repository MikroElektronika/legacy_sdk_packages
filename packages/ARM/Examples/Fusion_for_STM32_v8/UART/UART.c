/* Project name:
     UART (Simple usage of UART module library functions)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     This simple example demonstrates usage of mikroC's UART libraries, through
     a 'loopback' interface. The data being sent to ARM through UART
     and sent back.
 * Test configuration:
     Device:          STM32F407ZG
                      https://www.st.com/resource/en/datasheet/stm32f407zg.pdf
     Dev.Board:       Fusion for ARM v8
                      https://www.mikroe.com/fusion-for-stm
                      ac:UART
     Oscillator:      HSE-PLL, 168.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON USB UART switches (SW1.3 and SW1.4). (board specific)
 */

char uart_rd;

void main() {
  UART6_Init(56000);              // Initialize UART module at 56000 bps
  Delay_ms(100);                  // Wait for UART module to stabilize

  UART6_Write_Text("Start");
  UART6_Write(13);
  UART6_Write(10);

  while (1) {                     // Endless loop
    if (UART6_Data_Ready()) {     // If data is received
      uart_rd = UART6_Read();     // read the received data
      UART6_Write(uart_rd);       // and send data via UART
    }
  }
}
