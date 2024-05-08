/*
 * Project name:
     Sound (Usage of Sound library)
 * Copyright:
     (c) Mikroelektronika, 2021.
 * Revision History:
     20130113:
       - initial release (FJ);
     20210310:
       - Porting example for Necto Studio.
 * Description:
     This project is a simple demonstration of how to
     use sound library for playing tones on a piezo speaker.
 * Test configuration:
     MCU:             ATMEGA32
                      http://www.atmel.com/Images/doc2503.pdf
     Dev.Board:       EasyAVR v7 - ac:Sound
                      http://www.mikroe.com/easyavr/
     Oscillator:      External Clock 08.0000 MHz
     Ext. Modules:    None.
     SW:              Necto Studio.
                      http://www.mikroe.com/necto
                      AVRFlash.
                      https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip

* NOTES:
     - Put Piezo Buzzer jumper J21 into upper position (PD4) (board specific).
     - Put Button Press Level switch PB into upper position and pull-down
       pins RB7...RB3 on PORTB (board specific).
     - Make sure to have AVRFlash application installed on your PC machine:
       - download link:
         - https://download.mikroe.com/setups/programming-software/mikroprog/avr/avrflash-programming-software-setup-v220.zip
       - user-manual link:
         - https://download.mikroe.com/documents/programmers-debuggers/mikroprog/avr/mikroprog-avr-manual-v100.pdf
       - Configuration of AVRFlash application:
         - LOCK Bits:
           - Mode 1
           - BLB0 Mode 1
           - BLB1 Mode 1
         - FUSE Bits:
           - BOD Disabled
           - Startup: 6 CK + 65ms
           - Boot block 2048 Words
           - External Clock
         - Device:
           - ATmega32
         - Device frequency [MHz]:
           - 8.0
       - After configuration of AVRFlash parameters, choose "Write" button within the AVRFlash application to successfully program this example.
 */

// Frequency = 659Hz, duration = 250ms.
void Tone1() {
    Sound_Play(659, 250);
}

// Frequency = 698Hz, duration = 250ms.
void Tone2() {
    Sound_Play(698, 250);
}

// Frequency = 784Hz, duration = 250ms.
void Tone3() {
    Sound_Play(784, 250);
}

// Function for generating "Yellow house" melody.
void Melody() {
    Tone1(); Tone2(); Tone3(); Tone3();
    Tone1(); Tone2(); Tone3(); Tone3();
    Tone1(); Tone2(); Tone3();
    Tone1(); Tone2(); Tone3(); Tone3();
    Tone1(); Tone2(); Tone3();
    Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
}

void ToneA() {
    Sound_Play( 880, 50);
}
void ToneC() {
    Sound_Play(1046, 50);
}
void ToneE() {
    Sound_Play(1318, 50);
}

// Function for generating "Melody2" melody.
void Melody2() {
    unsigned short i;
        for (i = 9; i > 0; i--) {
            ToneA();
            ToneC();
            ToneE();
        }
}

void main(void)
{
    // Configure PORTB as input.
    DDRB = 0x00;

    // Initialize sound pin.
    Sound_Init(&PORTD,4);

    // Play sound at 880Hz for 1 second.
    Sound_Play(880, 1000);

    while (1) { // Endless loop.

        // If PORTB.7 is pressed, play Tone1.
        if (PINB7_bit)
            Tone1();
        while (PINB7_bit) ; // Wait for button to be released.

        // If PORTB.6 is pressed play Tone2.
        if (PINB6_bit)
            Tone2();
        while (PINB6_bit) ; // Wait for button to be released.

        // If PORTB.5 is pressed play Tone3.
        if (PINB5_bit)
            Tone3();
        while (PINB5_bit) ; // Wait for button to be released.

        // If PORTB.4 is pressed play Melody2.
        if (PINB4_bit)
            Melody2();
        while (PINB4_bit) ; // Wait for button to be released.

        // If PORTB.3 is pressed play Melody.
        if (PINB3_bit)
            Melody();
        while (PINB3_bit) ; // Wait for button to be released.
  }
}
