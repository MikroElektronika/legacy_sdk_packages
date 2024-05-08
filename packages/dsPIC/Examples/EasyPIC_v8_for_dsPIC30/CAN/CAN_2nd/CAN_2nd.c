/*
 * Project name:
     CAN_2nd (CAN Network demonstration with mikroE's CAN-1 module)
 * Copyright:
     (c) MikroElektronika, 2021.
 * Revision History:
     20100205:
       - Initial release;
     20210202:
       - Porting example into Necto Studio;
 * Description:
     This code demonstrates how to use CAN library functions and procedures.
     It is used together with the CAN_1st example (on second MCU), and it can
     be used to test the connection of MCU to the CAN network.
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

unsigned int Can_Init_Flags, Can_Send_Flags, Can_Rcv_Flags;  // CAN flags.
unsigned int Rx_Data_Len;                                    // Received data length in bytes.
char RxTx_Data[8];                                           // CAN Rx/Tx data buffer.
char Msg_Rcvd;                                               // Reception flag.
const unsigned long ID_1st = 12111, ID_2nd = 3;              // Node IDs.
unsigned long Rx_ID;

void main() {
    ADPCFG = 0xFFFF;
    PORTB = 0;
    TRISB = 0;

    Can_Init_Flags = 0;                               //
    Can_Send_Flags = 0;                               // Clear flags.
    Can_Rcv_Flags  = 0;                               //

    Can_Send_Flags = _CAN_TX_PRIORITY_0 &             // Form value to be used
                     _CAN_TX_XTD_FRAME &              // with CAN1Write.
                     _CAN_TX_NO_RTR_FRAME;

    Can_Init_Flags = _CAN_CONFIG_SAMPLE_THRICE &      // Form value to be used
                     _CAN_CONFIG_PHSEG2_PRG_ON &      // with CAN1Initialize.
                     _CAN_CONFIG_XTD_MSG &
                     _CAN_CONFIG_DBL_BUFFER_ON &
                     _CAN_CONFIG_MATCH_MSG_TYPE &
                     _CAN_CONFIG_LINE_FILTER_OFF;

    CAN1Initialize(1,3,3,3,1,Can_Init_Flags);         // Initialize CAN.

    CAN1SetOperationMode(_CAN_MODE_CONFIG,0xFF);      // Set CONFIGURATION mode.

    CAN1SetMask(_CAN_MASK_B1,-1,_CAN_CONFIG_MATCH_MSG_TYPE & _CAN_CONFIG_XTD_MSG);   // Set all mask1 bits to ones.
    CAN1SetMask(_CAN_MASK_B2,-1,_CAN_CONFIG_MATCH_MSG_TYPE & _CAN_CONFIG_XTD_MSG);   // Set all mask2 bits to ones.
    CAN1SetFilter(_CAN_FILTER_B1_F1,ID_1st,_CAN_CONFIG_XTD_MSG);                     // Set ID of filter B1_F1 to 1st node ID.

    CAN1SetOperationMode(_CAN_MODE_NORMAL,0xFF);                                     // Set NORMAL mode.


    while(1) {                                                                       // Endless loop.
        Msg_Rcvd = CAN1Read(&Rx_ID , RxTx_Data , &Rx_Data_Len, &Can_Rcv_Flags);      // Receive message.
        if ((Rx_ID == ID_1st) && Msg_Rcvd) {                                         // If message received check ID.
            PORTB = RxTx_Data[0];                                                    // ID correct, output data at PORTB.
            RxTx_Data[0]++;                                                          // Increment received data.
            CAN1Write(ID_2nd, RxTx_Data, 1, Can_Send_Flags);                         // Send incremented data back.
        }
    }
}
