/*
 * Project name:
     Button_Test (Sample usage of Button() function)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     Simple demonstration on usage of the Button() function.
 * Test configuration:
     MCU:             MK64FN1M0XXX12
                      https://www.nxp.com/docs/en/data-sheet/K64P144M120SF5.pdf
     Dev.Board:       Fusion for KINETIS v8
                      https://www.mikroe.com/fusion-for-kinetis
     Oscillator:      PLL, 120.000000
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://www.mikroe.com/necto
 * NOTES:
     - Turn on PORT D LED's at SW4 ( board specific );
     - Pull-down PB8 ( board specific );
     - Turn on Button press level at SW3 - PORTB. (board specific);
     - Pressing PB8 should toggle LEDs on PORT D.
*/

unsigned int oldState;

void main() {
    // Configure Pin PB8 as digital input.
    GPIO_Digital_Input( &PTB_PDIR, _GPIO_PINMASK_8 );
    
    // Configure port D as digital output.
    GPIO_Digital_Output( &PTD_PDOR, _GPIO_PINMASK_ALL );

    // Initialize port D.
    PTD_PDOR = 0;
    
    do {
        // If button is pressed, change variable oldState to 1.
        if( Button( &PTB_PDIR, 8, 1, 1 ) ) {
            oldState = 1;
        }
        // If button is pressed and oldState is 1,.
        // Change variable oldState to 0 and than toggle LEDs on port D.
        if( oldState && Button( &PTB_PDIR, 8, 1, 0 ) ) {
            oldState = 0;
            // Toggle state of port D.
            PTD_PDOR = ~PTD_PDOR;
        }
    } while(1);
}
