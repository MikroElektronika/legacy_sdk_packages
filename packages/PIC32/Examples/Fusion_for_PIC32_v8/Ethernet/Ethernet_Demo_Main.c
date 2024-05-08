/*
 * Project Name:
 *   Ethernet (Ethernet Library demo for internal Ethernet module)
 * Copyright:
 *   (c) Mikroelektronika, 2020.
 * Description  :
 *      this code shows how to use the Ethernet library :
 *          the board will reply to ARP & ICMP echo requests
 *          the board will reply to UDP requests on any port :
 *          returns the request in upper char with a header made of remote host IP & port number
 *          the board will reply to HTTP requests on port 80, GET method with pathnames :
 *              /               will return the HTML main page
 *              /s              will return board status as text string
 *              /t0 ... /t7     will toggle PORTE bits and return HTML main page
 *                              all other requests return also HTML main page
 *
 * Test configuration:
 *   Device:          PIC32MX795F512L
 *                    http://ww1.microchip.com/downloads/en/DeviceDoc/61156F.pdf
 *   Dev.Board:       Fusion for PIC32 v8
 *                    https://www.mikroe.com/fusion-for-pic32
 *   Oscillator:      HS-PLL 80.0000 MHz, 16.0000 MHz Crystal
 *   Ext. Modules:    None.
 *   SW:              NECTO Studio
 *                    https://mikroe.com/necto
 * NOTES:
 *   - Pull-down PORTB 7-0 pins on "UP-PULL-DOWN" switch.
 *   - Turn ON button press level on switch SW3 for PORTB (SW3.3 and SW3.4).
 *   - Turn ON PORTE LEDs via SW4 switch (SW4.9 and SW4.10).
 *   - Open "Ethernet_Demo_Events_Code.c" source file, modify ethernet connections to suit your needs.
 *   - Open your preferred web browser and type-in the IP address that you have chosen,
 *     for example: "http://10.101.14.36"
 */

extern void InitPHYPins();
extern char myMacAddr[6];
extern char myIpAddr[4];

void main() {
  AD1PCFG = 0xFFFF; // Configure AN pins as digital I/O
  JTAGEN_bit = 0; // Disable JTAG
    
  PORTB = 0 ;
  TRISB = 0xFF ; // set PORTB as input for buttons

  PORTE = 0 ;
  TRISE = 0 ; // set PORTE as output for LEDs

  // Initialize physical ethernet pins.
  InitPHYPins();
  
  // Initialize Ethernet protocol.
  Ethernet_Init(myMacAddr, myIpAddr, _ETHERNET_AUTO_NEGOTIATION & _ETHERNET_DEFAULT_MAC);

  while (1) {
    Ethernet_doPacket();
  }

}
