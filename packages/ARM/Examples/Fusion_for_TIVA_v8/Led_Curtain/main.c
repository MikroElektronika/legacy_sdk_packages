/*
 * Project name:
     Led_Curtain (The simple example)
 * Copyright:
     (c) Mikroelektronika, 2019.
 * Description:
     Simple "Hello world" example for the world of ARM MCUs;
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
     Turn on PORTs A, B, C, D, E, F, G, H, J, K, L, M, N, P, Q, R, S, T on switches SW4 and SW5 ( board specific ).
*/

int counter;

 void main() {
    // Set ports as digital outputs.
    GPIO_Digital_Output(&GPIO_PORTA_AHB, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTB_AHB, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTC_AHB,  0xF0);
    GPIO_Digital_Output(&GPIO_PORTD_AHB, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTE_AHB, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTF_AHB, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTG_AHB, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTH_AHB, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTJ_AHB, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTK, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTL, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTM, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTN, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTP, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTQ, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTR, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTS, _GPIO_PINMASK_ALL);
    GPIO_Digital_Output(&GPIO_PORTT, _GPIO_PINMASK_ALL);

    // Clear ports.
    GPIO_PORTA_AHB_DATA = 0;
    GPIO_PORTB_AHB_DATA = 0;
    GPIO_PORTC_AHB_DATA = 0;
    GPIO_PORTD_AHB_DATA = 0;
    GPIO_PORTE_AHB_DATA = 0;
    GPIO_PORTF_AHB_DATA = 0;
    GPIO_PORTG_AHB_DATA = 0;
    GPIO_PORTH_AHB_DATA = 0;
    GPIO_PORTJ_AHB_DATA = 0;
    GPIO_PORTK_DATA = 0;
    GPIO_PORTL_DATA = 0;
    GPIO_PORTM_DATA = 0;
    GPIO_PORTN_DATA = 0;
    GPIO_PORTP_DATA = 0;
    GPIO_PORTQ_DATA = 0;
    GPIO_PORTR_DATA = 0;
    GPIO_PORTS_DATA = 0;
    GPIO_PORTT_DATA = 0;

    while( 1 ) {
      // TURN ON LEDs.
      for (counter = 0; counter < 8; counter++){
        GPIO_PORTA_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTB_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTC_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTD_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTE_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTF_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTG_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTH_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTJ_AHB_DATA |= 0b10000000 >> counter;
        GPIO_PORTK_DATA |= 0b10000000 >> counter;
        GPIO_PORTL_DATA |= 0b10000000 >> counter;
        GPIO_PORTM_DATA |= 0b10000000 >> counter;
        GPIO_PORTN_DATA |= 0b10000000 >> counter;
        GPIO_PORTP_DATA |= 0b10000000 >> counter;
        GPIO_PORTQ_DATA |= 0b10000000 >> counter;
        GPIO_PORTR_DATA |= 0b10000000 >> counter;
        GPIO_PORTS_DATA |= 0b10000000 >> counter;
        GPIO_PORTT_DATA |= 0b10000000 >> counter;
        Delay_ms(100);
      }

      // TURN OFF LEDs.
      for (counter = 0; counter < 8; counter++){
        GPIO_PORTA_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTB_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTC_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTD_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTE_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTF_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTG_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTH_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTJ_AHB_DATA &= 0b01111111 >> counter;
        GPIO_PORTK_DATA &= 0b01111111 >> counter;
        GPIO_PORTL_DATA &= 0b01111111 >> counter;
        GPIO_PORTM_DATA &= 0b01111111 >> counter;
        GPIO_PORTN_DATA &= 0b01111111 >> counter;
        GPIO_PORTP_DATA &= 0b01111111 >> counter;
        GPIO_PORTQ_DATA &= 0b01111111 >> counter;
        GPIO_PORTR_DATA &= 0b01111111 >> counter;
        GPIO_PORTS_DATA &= 0b01111111 >> counter;
        GPIO_PORTT_DATA &= 0b01111111 >> counter;
        Delay_ms(100);
      }
    }
 }
