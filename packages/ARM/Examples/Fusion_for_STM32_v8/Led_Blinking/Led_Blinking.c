/* Project name:
     Led_Blinking (The simplest simple example)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     Simple "Hello world" example for the world of ARM MCUs;
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
     - Turn ON PORTA, PORTB, PORTC, PORTD, PORTE, PORTF, PORTG LEDs at SW4 and SW5. (board specific).
 */

void main() {
  GPIO_Digital_Output(&GPIOA_BASE,  0x1FFF);           // Set PORTA as digital output without pins used for debug
  GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_ALL); // Set PORTB as digital output
  GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_ALL); // Set PORTC as digital output
  GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_ALL); // Set PORTD as digital output
  GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_ALL); // Set PORTE as digital output
  GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_ALL); // Set PORTF as digital output
  GPIO_Digital_Output(&GPIOG_BASE, _GPIO_PINMASK_ALL); // Set PORTG as digital output

  GPIOA_ODR = 0;
  GPIOB_ODR = 0;
  GPIOC_ODR = 0;
  GPIOD_ODR = 0;
  GPIOE_ODR = 0;
  GPIOF_ODR = 0;
  GPIOG_ODR = 0;

  while(1) {
    GPIOA_ODR = ~GPIOA_ODR; // Toggle PORTA
    GPIOB_ODR = ~GPIOB_ODR; // Toggle PORTB
    GPIOC_ODR = ~GPIOC_ODR; // Toggle PORTC
    GPIOD_ODR = ~GPIOD_ODR; // Toggle PORTD
    GPIOE_ODR = ~GPIOE_ODR; // Toggle PORTE
    GPIOF_ODR = ~GPIOF_ODR; // Toggle PORTF
    GPIOG_ODR = ~GPIOG_ODR; // Toggle PORTG
    Delay_ms(1000);
  }
}
