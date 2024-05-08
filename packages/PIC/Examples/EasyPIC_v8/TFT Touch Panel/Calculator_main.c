/*
 * Project name:
     Calculator
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Test configuration:
     MCU:             PIC18F47K42
                      http://ww1.microchip.com/downloads/en/DeviceDoc/PIC18LF26-27-45-46-47-55-56-57K42-Data-Sheet-40001919E.pdf
     Dev.Board:       EasyPIC v8 
                      https://www.mikroe.com/easypic-v8
     Oscillator:      64000000 Hz
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * Notes:
     - Turn on GLCD backlight switch and PWM switch SW6.1 and SW6.2 (board specific)
     - Make sure that board voltage is set to 3.3V and the toggle button is on (CODEGRIP Suite power options)
     - Make sure that CAN switch is toggled to up position (GPIO position) RB3/RB2 (board specific)
 */

#include "Calculator_objects.h"

void main() {

  Start_TP();

  while (1) {
    Check_TP();

  }

}
