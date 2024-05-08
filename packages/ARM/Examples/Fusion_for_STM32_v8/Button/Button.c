/* Project name:
     Button_Test (Sample usage of Button() function)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     Simple demonstration on usage of the Button() function.
 * Test configuration:
     Device:          STM32F407ZG
                      https://www.st.com/resource/en/datasheet/stm32f407zg.pdf
     Dev.Board:       Fusion for STM32 v8
                      https://www.mikroe.com/fusion-for-stm
     Oscillator:      HSE-PLL, 168.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn on LEDs on PORTD at SW4 (board specific).
     - Pull-down PA0 (board specific).
     - Turn ON button press level for PORTA/L at SW3.1 (board specific).
     - Pressing PA0 button should togle LEDs on PORTD.
 */
 
unsigned int oldstate;

void main() {

  GPIO_Digital_Input(&GPIOA_IDR, _GPIO_PINMASK_0);         // Set PA0 as digital input
  GPIO_Digital_Output(&GPIOD_ODR, _GPIO_PINMASK_ALL);      // Set PORTD as digital output
  oldstate = 0;
  
  do {
    if (Button(&GPIOA_IDR, 0, 1, 1))                       // Detect logical one on PA0 pin
      oldstate = 1;
    if (oldstate && Button(&GPIOA_IDR, 0, 1, 0)) {         // Detect one-to-zero transition on PA0 pin
      GPIOD_ODR = ~GPIOD_ODR;                              // Invert PORTD value
      oldstate = 0;
    }
  } while(1);                                              // Endless loop
}
