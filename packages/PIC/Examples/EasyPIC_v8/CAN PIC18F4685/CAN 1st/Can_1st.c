/*
 * Project name:
     Can_1st (CAN Network demonstration with mikroE's CAN module)
 * Copyright:
     (c) MikroElektronika, 2020.
 * Description:
     This project is a simple demonstration of CAN on PIC18F4685 with minor
     adjustments, it should work with any other MCU that has a CAN module.
     This code demonstrates how to use CAN library functions and procedures.
     It is used together with the CAN_2nd example (on second MCU), and it can
     be used to test the connection of MCU to the CAN network.
     This node initiates the communication with the Can_2nd node by sending some
     data to its address. The 2nd node responds by sending back the data incre-
     mented by 1. This (1st) node then does the same and sends incremented data
     back to 2nd node, etc.
 * Test configuration:
     MCU:             PIC18F4685
                      http://ww1.microchip.com/downloads/en/DeviceDoc/39761c.pdf
     Dev.Board:       EasyPIC v8
                      http://www.mikroe.com/easypic/
     Oscillator:      HS, 8.0000 MHz
     Ext. modules:    CAN onBoard
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Consult the CAN standard about CAN bus termination resistance.
     - Turn ON LEDs on PORTC (SW6.3) (board specific)
     - Pull down CAN COMM. switch to CAN position

 */

unsigned char Can_Init_Flags, Can_Send_Flags, Can_Rcv_Flags;               // CAN flags
unsigned char Rx_Data_Len;                                                 // received data length in bytes
char RxTx_Data[8];                                                         // CAN rx/tx data buffer
char Msg_Rcvd;                                                             // reception flag
const long ID_1st = 12111, ID_2nd = 3;                                     // node IDs
long Rx_ID;

void main() {

  PORTC = 0;                                                               // clear PORTC
  TRISC = 0;                                                               // set PORTC as output

  Can_Init_Flags = 0;
  Can_Send_Flags = 0;                                                      // clear flags
  Can_Rcv_Flags  = 0;

  Can_Send_Flags = _CAN_TX_PRIORITY_0 &                                    // form value to be used
                   _CAN_TX_XTD_FRAME &                                     // with CANWrite
                   _CAN_TX_NO_RTR_FRAME;

  Can_Init_Flags = _CAN_CONFIG_SAMPLE_THRICE &                             // form value to be used
                   _CAN_CONFIG_PHSEG2_PRG_ON &                             // with CANInit
                   _CAN_CONFIG_XTD_MSG &
                   _CAN_CONFIG_DBL_BUFFER_ON &
                   _CAN_CONFIG_VALID_XTD_MSG;

  CANInitialize(1,3,3,3,1,Can_Init_Flags);                                 // Initialize CAN module
  CANSetOperationMode(_CAN_MODE_CONFIG,0xFF);                              // set CONFIGURATION mode
  CANSetMask(_CAN_MASK_B1,-1,_CAN_CONFIG_XTD_MSG);                         // set all mask1 bits to ones
  CANSetMask(_CAN_MASK_B2,-1,_CAN_CONFIG_XTD_MSG);                         // set all mask2 bits to ones
  CANSetFilter(_CAN_FILTER_B2_F4,ID_2nd,_CAN_CONFIG_XTD_MSG);              // set id of filter B2_F4 to 2nd node ID

  CANSetOperationMode(_CAN_MODE_NORMAL,0xFF);                              // set NORMAL mode

  RxTx_Data[0] = 9;                                                        // set initial data to be sent

  CANWrite(ID_1st, RxTx_Data, 1, Can_Send_Flags);                          // send initial message

  while(1) {                                                               // endless loop
    Msg_Rcvd = CANRead(&Rx_ID , RxTx_Data , &Rx_Data_Len, &Can_Rcv_Flags); // receive message
    if ((Rx_ID == ID_2nd) && Msg_Rcvd) {                                   // if message received check id
      PORTC = RxTx_Data[0];                                                // id correct, output data at PORTC
      RxTx_Data[0]++ ;                                                     // increment received data
      Delay_ms(10);
      CANWrite(ID_1st, RxTx_Data, 1, Can_Send_Flags);                      // send incremented data back
    }
  }
}
