/*
 * Project name:
     CAN_1st (CAN Network demonstration with mikroE's CAN-1 module)
 * Copyright:
     (c) MikroElektronika, 2021.
 * Revision History:
     20100511:
       - Initial release;
     20210202:
       - Porting example into Necto Studio;
 * Description:
      This code demonstrates how to use CAN library functions and procedures.
      It is used together with the CAN_2nd example (on second MCU), and it can
      be used to test the connection of MCU to the CAN network.
      This node initiates the communication with the 2nd node by sending some
      data to its address. The 2nd node responds by sending back the data incre-
      mented by 1. This (1st) node then does the same and sends incremented data
      back to 2nd node, etc.
      With minor adjustments, it should work with any other MCU that has a CAN module.
 * Test configuration:
     MCU:             dsPIC30F4013
                      http://ww1.microchip.com/downloads/en/DeviceDoc/70138F.pdf
     Dev.Board:       EASYPIC v8 for dsPIC30
                      http://www.mikroe.com/easypic-for-dspic30/
     Oscillator:      XT-PLL8, 80.000MHz
     Ext. Modules:    -
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Turn ON PORTB LEDs at SW2.5 (board specific).
     - Turn ON CAN Rx (RF0) and Tx (RF1) switches (board specific).
 * IMPORTANT:
    - This MCU requires 5V in order for programming sequence to start.
      - Start CodeGrip Suite;
      - Connect to "CodeGrip" which is integrated on the "EasyPIC v8 for dsPIC30" board.
      - Connect to PIC30F4013 MCU.
      - Make sure that Board Voltage property is configured to 5V (Power setting tab within CodeGrip Suite).

*/

unsigned int Can_Init_Flags, Can_Send_Flags, Can_Rcv_Flags;  // can flags
unsigned int Rx_Data_Len;                                    // received data length in bytes
char RxTx_Data[8];                                           // can rx/tx data buffer
char Msg_Rcvd;                                               // reception flag
const unsigned long ID_1st = 12111, ID_2nd = 3;              // node IDs
unsigned long Rx_ID;

void main() {
    ADPCFG = 0xFFFF;
    PORTB = 0;
    TRISB = 0;

    Can_Init_Flags = 0;                             //
    Can_Send_Flags = 0;                             // Clear flags.
    Can_Rcv_Flags  = 0;                             //

    Can_Send_Flags = _CAN_TX_PRIORITY_0 &           // Form value to be used
                     _CAN_TX_XTD_FRAME &            // with CAN1Write.
                     _CAN_TX_NO_RTR_FRAME;

    Can_Init_Flags = _CAN_CONFIG_SAMPLE_THRICE &    // Form value to be used
                     _CAN_CONFIG_PHSEG2_PRG_ON &    // with CAN1Initialize.
                     _CAN_CONFIG_XTD_MSG &
                     _CAN_CONFIG_DBL_BUFFER_ON &
                     _CAN_CONFIG_MATCH_MSG_TYPE &
                     _CAN_CONFIG_LINE_FILTER_OFF;

    RxTx_Data[0] = 9;                               // Set initial data to be sent.
    CAN1Initialize(1,3,3,3,1,Can_Init_Flags);       // Initialize CAN1

    CAN1SetOperationMode(_CAN_MODE_CONFIG,0xFF);    // Set CONFIGURATION mode.

    CAN1SetMask(_CAN_MASK_B1,-1,_CAN_CONFIG_MATCH_MSG_TYPE & _CAN_CONFIG_XTD_MSG);   // Set all mask1 bits to ones.
    CAN1SetMask(_CAN_MASK_B2,-1,_CAN_CONFIG_MATCH_MSG_TYPE & _CAN_CONFIG_XTD_MSG);   // Set all mask2 bits to ones.
    CAN1SetFilter(_CAN_FILTER_B2_F3,ID_2nd,_CAN_CONFIG_XTD_MSG);                     // Set ID of filter B1_F1 to 2nd node ID.

    CAN1SetOperationMode(_CAN_MODE_NORMAL,0xFF);                                     // Set NORMAL mode.

    CAN1Write(ID_1st, RxTx_Data, 1, Can_Send_Flags);                                 // Send initial message.

    while(1) {                                                                       // Endless loop.
        Msg_Rcvd = CAN1Read(&Rx_ID , RxTx_Data , &Rx_Data_Len, &Can_Rcv_Flags);      // Receive message.
        if ((Rx_ID == ID_2nd) && Msg_Rcvd) {                                         // If message received check id.
            PORTB = RxTx_Data[0];                                                    // ID correct, output data at PORTB.
            RxTx_Data[0]++;                                                          // Increment received data.
            Delay_ms(10);
            CAN1Write(ID_1st, RxTx_Data, 1, Can_Send_Flags);                         // Send incremented data back.
        }
    }
}
