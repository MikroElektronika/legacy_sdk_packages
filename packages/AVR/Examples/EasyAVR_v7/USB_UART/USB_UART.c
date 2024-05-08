/*
 * Project name:
     USB UART (Simple usage of UART module library functions)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio.
 * Description:
     This code demonstrates how to use UART library routines with on-board FTDI USB chip.
     Upon receiving data via RS232, MCU immediately sends it back to the sender.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 - ac:USB_UART
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    None
     SW:              Necto Studio.
                      http://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

 * NOTES:
     - RX and TX UART switches on EasyAVR v7 should be turned ON (SW10.1 and SW10.2).
     - Jumpers J12 and J23 should be placed in the USB UART position.
     - Make sure to have AVRFlash application installed on your PC machine:
       - download link:
         - https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip
       - user-manual link:
         - https://download.mikroe.com/documents/programmers-debuggers/mikroprog/avr/mikroprog-avr-manual-v100.pdf
       - Configuration of AVRFlash application:
         - LOCK Bits:
           - Mode 1
           - BLB0 Mode 1
           - BLB1 Mode 1
         - FUSE Bits:
           - BOD Disabled
           - Startup: 6 CK + 65ms
           - Boot block 2048 Words
           - External Clock
         - Device:
           - ATmega32
         - Device frequency [MHz]:
           - 8.0
       - After configuration of AVRFlash parameters, choose "Write" button within the AVRFlash application to successfully program this example.
 */

char uart_rd;

void main() {

    // Initialize UART module at 9600 bps.
    UART1_Init(9600);

    // Wait for UART module to stabilize.
    Delay_ms(100);

    UART1_Write_Text("Init");
    UART1_Write(13);
    UART1_Write(10);

    while (1) {                     // Endless loop.
    if (UART1_Data_Ready()) {       // If data is received,
            uart_rd = UART1_Read(); // read the received data,
            UART1_Write(uart_rd);   // and send data via UART.
        }
    }
}
