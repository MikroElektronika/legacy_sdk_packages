/*
 * Project name:
     Led_Blinking (The simplest simple example)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     Simple "Hello world" example for the world of ARM MCUs;
 * Test configuration:
     MCU:             MK64FN1M0XXX12
                      https://www.nxp.com/docs/en/data-sheet/K64P144M120SF5.pdf
     Dev.Board:       Fusion for KINETIS v8
                      https://www.mikroe.com/fusion-for-kinetis
     Oscillator:      PLL, 120.000MHz
     Ext. modules:    None.
     SW:              NECTO Studio
                      http://www.mikroe.com/necto
 * Note:
   - Turn ON PORTA, PORTB, PORTC, PORTD, PORTE LEDs at SW4 (board specific).
*/

void main() {

  GPIO_Digital_Output( &PTA_PDOR, 0xFFF0 );                // Pins PA0 - PA3 used for programming.
  GPIO_Digital_Output( &PTB_PDOR, _GPIO_PINMASK_ALL );
  GPIO_Digital_Output( &PTC_PDOR, _GPIO_PINMASK_ALL );
  GPIO_Digital_Output( &PTD_PDOR, _GPIO_PINMASK_ALL );
  GPIO_Digital_Output( &PTE_PDOR, _GPIO_PINMASK_ALL );

  PTA_PDOR = 0;
  PTB_PDOR = 0;
  PTC_PDOR = 0;
  PTD_PDOR = 0;
  PTE_PDOR = 0;
  
  while(1) {
    PTA_PDOR = ~PTA_PDOR;
    PTB_PDOR = ~PTB_PDOR;
    PTC_PDOR = ~PTC_PDOR;
    PTD_PDOR = ~PTD_PDOR;
    PTE_PDOR = ~PTE_PDOR;
    Delay_ms(1000);
  }
}
