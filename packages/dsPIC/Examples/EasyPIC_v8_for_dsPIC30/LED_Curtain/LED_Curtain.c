/*
 * Project name:
     Led_Curtain (Simple LED "curtain effect" example)
 * Target Platform:
     dsPIC
 * Copyright:
     (c) mikroElektronika, 2021.
 * Revision History:
    20100502:
       - Initial release;
    20210202:
       - Porting example into Necto Studio;
 * Description:
     Simple "Hello world" example for the world of dsPIC MCUs;
* Test configuration:
     MCU:             dsPIC30F4013
                      http://ww1.microchip.com/downloads/en/DeviceDoc/70138F.pdf
     Dev.Board:       EASYPIC v8 for dsPIC30
                      http://www.mikroe.com/easypic-for-dspic30/
     Oscillator:      XT-PLL8, 80.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON port LEDs at SW2 - from SW2.5 to SW2.10 (board specific).
 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start "CodeGrip Suite";
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within "CodeGrip Suite").

 */

int counter;

void wait() {
    Delay_ms(200);
}

void main() {
    ADPCFG = 0xFFFF;    // Configure AN pins as digital.

    TRISB = 0;          // Set direction to be output.
    TRISD = 0;          // Set direction to be output.
    TRISF = 0;          // Set direction to be output.

    LATB = 0;           // Turn OFF the PORTB LEDs.
    LATD = 0;           // Turn OFF the PORTD LEDs.
    LATF = 0;           // Turn OFF the PORTF LEDs.

    while (1) {
        for (counter = 0; counter < 8; counter++) {
            LATB |= 0x0101 << counter;
            LATD |= 1 << counter;
            LATF |= 1 << counter;
            wait();
        }

        counter = 0;
        while (counter < 8) {
            LATB &= ~(0x0101 << counter);
            LATD &= ~(1 << counter);
            LATF &= ~(1 << counter);
            wait();
            counter++;
        }
    }
}
