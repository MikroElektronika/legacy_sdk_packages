/*
 * Project name:
     Button_Test (Sample usage of Button() function)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     Simple demonstration on usage of the Button() function.
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
     - Turn on leds on PORT B on SW4 ( board specific );
     - Pull-down PA0 ( board specific );
     - Turn on Button press level at SW3 - PORTA. (board specific);
     - Pressing PA0 should toggle LEDs on PORT B.
*/

unsigned int oldState;

void main() {
    // Configure PA0 as digital input.
    GPIO_Digital_Input( &GPIO_PORTA_AHB, _GPIO_PINMASK_0 );
    
    // Configure port B as digital output.
    GPIO_Digital_Output( &GPIO_PORTB_AHB, _GPIO_PINMASK_ALL );

    // Initialize port B.
    GPIO_PORTB_AHB_DATA = 0;
    
    do {
        // If button is pressed, change variable oldState to 1.
        if( Button( &GPIO_PORTA_AHB_DATA, 0, 1, 1 ) ) {
            oldState = 1;
        }
        // If button is pressed and oldState is 1,
        // Change variable oldState to 0 and then toggle LEDs on PORT B.
        if( oldState && Button( &GPIO_PORTA_AHB_DATA, 0, 1, 0 ) ) {
            oldState = 0;
            // Toggle state of port B.
            GPIO_PORTB_AHB_DATA = ~GPIO_PORTB_AHB_DATA;
        }
    } while(1);
}
