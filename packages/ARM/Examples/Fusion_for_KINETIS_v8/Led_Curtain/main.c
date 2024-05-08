/* Project name:
     Led_Currtain (The simple example)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     Simple LED blinking.
 * Test configuration:
      MCU:            MK64FN1M0VDC12
                      https://www.nxp.com/docs/en/data-sheet/K64P144M120SF5.pdf
     Dev.Board:       Fusion for KINETIS v8
                      https://www.mikroe.com/fusion-for-kinetis
     Oscillator:      PLL, 120.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      http://www.mikroe.com/necto
 * NOTES:
     - Turn ON PORTA, PORTB, PORTC, PORTD, PORTE LED's at SW4 (board specific).
*/
 
int counter;
void main() {

  GPIO_Digital_Output( &PTA_PDOR, 0xFFF0 );            // Pins PA0 - PA3 used for programming.
  GPIO_Digital_Output( &PTB_PDOR, _GPIO_PINMASK_ALL );
  GPIO_Digital_Output( &PTC_PDOR, _GPIO_PINMASK_ALL );
  GPIO_Digital_Output( &PTD_PDOR, _GPIO_PINMASK_ALL );
  GPIO_Digital_Output( &PTE_PDOR, _GPIO_PINMASK_ALL );

  PTA_PDOR = 0;
  PTB_PDOR = 0;
  PTC_PDOR = 0;
  PTD_PDOR = 0;
  PTE_PDOR = 0;

  counter = 0;
  while(1) {
     // TURN ON LEDs.
     for ( counter = 0; counter < 8; counter++ ){
        PTA_PDOR  |= 0x8000 >> counter;
        PTB_PDOR  |= 0x8000 >> counter;
        PTC_PDOR  |= 0x8000 >> counter;
        PTD_PDOR  |= 0x8000 >> counter;
        PTE_PDOR  |= 0x8000 >> counter;
        PTA_PDOR  |= 0x0080 >> counter;
        PTB_PDOR  |= 0x0080 >> counter;
        PTC_PDOR  |= 0x0080 >> counter;
        PTD_PDOR  |= 0x0080 >> counter;
        PTE_PDOR  |= 0x0080 >> counter;
        Delay_ms(100);
      }
     // TURN OFF LEDs.
     for ( counter = 0; counter < 8; counter++ ){
        PTA_PDOR  &= 0x7FFF >> counter;
        PTB_PDOR  &= 0x7FFF >> counter;
        PTC_PDOR  &= 0x7FFF >> counter;
        PTD_PDOR  &= 0x7FFF >> counter;
        PTE_PDOR  &= 0x7FFF >> counter;
        PTA_PDOR  &= 0xFF7F >> counter;
        PTB_PDOR  &= 0xFF7F >> counter;
        PTC_PDOR  &= 0xFF7F >> counter;
        PTD_PDOR  &= 0xFF7F >> counter;
        PTE_PDOR  &= 0xFF7F >> counter;
        Delay_ms(100);
    }
  }
}
