#ifndef __LIB_USB_MZ_HS_H__
#define __LIB_USB_MZ_HS_H__

#include <stdint.h>

void Gen_Enable(uint8_t *readbuff, uint8_t *writebuff);

void Gen_RegisterEndpoints(uint8_t epRx, uint8_t epTx);

void HID_Enable(uint8_t *readbuff, uint8_t *writebuff);

uint16_t Gen_Read(uint8_t *readbuff, uint16_t length, uint8_t ep);

uint8_t HID_Read(void);

uint16_t Gen_Write(uint8_t *writebuff, uint8_t length, uint8_t ep);

uint8_t HID_Write(uint8_t *writebuff, uint8_t len);

void USB_Polling_Proc();

#endif // __LIB_USB_MZ_HS_H__
