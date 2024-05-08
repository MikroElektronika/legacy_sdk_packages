/* Project name:
     Led_Curtain (The simple example)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     Simple "Hello world" example for the world of ARM MCUs;
 * Test configuration:
     Device:          STM32F767ZG
                      https://www.st.com/resource/en/datasheet/stm32f767zg.pdf
     Dev.Board:       Fusion for ARM v8
                      https://www.mikroe.com/fusion-for-arm
     Oscillator:      HSE-PLL, 216.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON PORTA, PORTB, PORTC, PORTD, PORTE, PORTF, PORTG LEDs at SW4 and SW5. (board specific).
 */
int counter;
void main() {
  GPIO_Digital_Output(&GPIOA_BASE,  0X1FFF);           // Set PORTA as digital output without pins used for debug
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

  counter = 0;
  while(1) {
    // TURN ON LEDs
    for (counter = 0; counter < 8; counter++){
        GPIOA_ODR |= 0x8080 >> counter;
        GPIOB_ODR |= 0x8080 >> counter;
        GPIOC_ODR |= 0x8080 >> counter;
        GPIOD_ODR |= 0x8080 >> counter;
        GPIOE_ODR |= 0x8080 >> counter;
        GPIOF_ODR |= 0x8080 >> counter;
        GPIOG_ODR |= 0x8080 >> counter;
        Delay_ms(100);
    }
    // TURN OFF LEDs
    for (counter = 0; counter < 8; counter++){
        GPIOA_ODR &= 0x7F7F >> counter;
        GPIOB_ODR &= 0x7F7F >> counter;
        GPIOC_ODR &= 0x7F7F >> counter;
        GPIOD_ODR &= 0x7F7F >> counter;
        GPIOE_ODR &= 0x7F7F >> counter;
        GPIOF_ODR &= 0x7F7F >> counter;
        GPIOG_ODR &= 0x7F7F >> counter;
        Delay_ms(100);
    }
  }
}
