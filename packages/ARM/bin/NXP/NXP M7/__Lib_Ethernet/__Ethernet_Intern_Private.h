#pragma setintsize mE
#ifndef __ETHERNET_INTERN_PRIVATE_H__
#define __ETHERNET_INTERN_PRIVATE_H__

#include "__Ethernet_Intern.h"

/*******************************************************************************
PROTOTYPE       : unsigned char Ethernet_Intern_readPacket()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : process next packet
REQUIRES        : Ethernet_Intern_init must have been called before
                  ERDPT must be correctly set either by Ethernet_Intern_init, or previous call to readPacket()
EXAMPLE         : Ethernet_Intern_readPacket()
*******************************************************************************/
unsigned char    Ethernet_Intern_readPacket();


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_doTCP(unsigned int start, unsigned int ipHeaderLen, unsigned int payloadAddr)
PARAMETERS      :
        start           : address of incoming packet
        idHeaderLen     : size of IP header
        payLoadAddr     : address of payload
RETURNS         : nothing
DESCRIPTION     : handles an unframented, single-packet TCP/IP request
REQUIRES        : this function must be called only from Ethernet_Intern_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_Intern_doTCP(unsigned long start, unsigned int ipHeaderLen, unsigned long payloadAddr);


/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_doUDP()
PARAMETERS      :
RETURNS         : nothing
DESCRIPTION     : reply to an UDP/IP request
REQUIRES        : this function must be called only from Ethernet_Intern_readPacket()
EXAMPLE         :

V2.0 (bruno) : add DNS reply test before giving hand to user UDP function
*******************************************************************************/
void Ethernet_Intern_doUDP(unsigned long start, unsigned char ipHeaderLen, unsigned long payloadAddr);
char Ethernet_Intern_sendUDP2(unsigned char *destMAC, unsigned char *destIP, unsigned int sourcePort, unsigned int destPort, unsigned int pktLen);
char Ethernet_Intern_sendUDP(unsigned char *destIP, unsigned int sourcePort, unsigned int destPort, unsigned char *pkt, unsigned int pktLen);

/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_doDHCP()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : services dhcp
REQUIRES        : this function must be called only from Ethernet_Intern_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_Intern_doDHCP();
char Ethernet_Intern_DHCPReceive(void);
char Ethernet_Intern_DHCPmsg(unsigned char  messageType, unsigned char renewFlag);


/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_doDNS()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : services DNS
REQUIRES        : this function must be called only from Ethernet_Intern_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_Intern_doDNS();

/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_doARP()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : services ARP
REQUIRES        : this function must be called only from Ethernet_Intern_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_Intern_doARP();

/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_sendPing()
PARAMETERS      : None
RETURNS         : nothing
DESCRIPTION     : send reply on ping request
*******************************************************************************/
unsigned int Ethernet_Intern_sendPing();

/*******************************************************************************
PROTOTYPE       : Ethernet_Intern_checksum(unsigned int start, unsigned int l)
PARAMETERS      :
        start           address of first byte in "ethernet module" memory
        l               number of bytes to include in checksum calculation
RETURNS         : nothing (result is in ENC EDMACS[H:L] registers)
DESCRIPTION     : ENC performs DMA checksum of l bytes starting from start addr
REQUIRES        : Ethernet_Intern_init must have been called
EXAMPLE         : Ethernet_Intern_checksum(0x1000, 60)
*******************************************************************************/
void    Ethernet_Intern_checksum(unsigned long start, unsigned int l);

unsigned int Ethernet_Intern_CalculateChecksum(char* buffer, unsigned int count);


/*******************************************************************************
PROTOTYPE       : Ethernet_Intern_RAMcopy(unsigned int start, unsigned int stop, unsigned int dest, unsigned char w)
PARAMETERS      :
        start           address of first source byte (included) in "ethernet module" memory to copy
        stop            address of last source byte (not included) in "ethernet module" memory to copy
        dest            address of first destination byte in ENC memory
        v               mode : 0 = no wrap (copy from transmit buffer), 1 = wrap (copy from receive buffer)
RETURNS         : nothing
DESCRIPTION     : ENC performs DMA memory copy from start to dest.
                  if wrap is allowed, performs correct operation to avoid "ethernet module" hang on circular buffer
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_RAMcopy(0x500, 0x600, 0x1400, 1)
*******************************************************************************/
void Ethernet_Intern_RAMcopy(unsigned long start, unsigned long stop, unsigned long dest, unsigned char w);


/*******************************************************************************
PROTOTYPE       : Ethernet_Intern_MACswap()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : swap MAC addresses in ETH transmit buffer
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_MACswap()
*******************************************************************************/
void Ethernet_Intern_MACswap();


/*******************************************************************************
PROTOTYPE       : Ethernet_Intern_IPswap()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : swap IP addresses in IP transmit buffer
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_IPswap()
*******************************************************************************/
void    Ethernet_Intern_IPswap(void);


/*******************************************************************************
PROTOTYPE       : Ethernet_Intern_TXpacket(unsigned int l)
PARAMETERS      : length in bytes of packet to transmit
RETURNS         : 0 - success
                :
DESCRIPTION     : send packet over wires
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_TXpacket(60)
*******************************************************************************/
char Ethernet_Intern_TXpacket(unsigned int l);


/*******************************************************************************
PROTOTYPE       : unsigned char   Ethernet_Intern_memcmp(unsigned int addr, unsigned char *s, unsigned char l)
PARAMETERS      :
        addr    :
        s       :
        l       : length in bytes of memory to compare
RETURNS         : 0 if compare matches, > 0 otherwise
DESCRIPTION     : compares "ethernet module" RAM to mcu RAM
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_memcmp(0x0600, "TEST", 4)
*******************************************************************************/
unsigned char Ethernet_Intern_memcmp(unsigned long addr, unsigned char *s, unsigned int l);


/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_memcpy(unsigned int addr, unsigned char *s, unsigned int l)
PARAMETERS      :
        addr    : destination address of first byte in "ethernet module" RAM
        s       : pointer to first byte of mcu RAM to copy to "ethernet module"
        l       : length in bytes of memory to copy
RETURNS         : nothing
DESCRIPTION     : copy PIC memory to "ethernet module" RAM.
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_memcpy(0x0600, "TEST", 4)
*******************************************************************************/
void Ethernet_Intern_memcpy(unsigned long addr, unsigned char *s, unsigned int l);


/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_writeMemory(unsigned int addr, unsigned char v1, unsigned char v2, unsigned char bis)
PARAMETERS      :
        addr    : destination address of first byte in "ethernet module" RAM
        v1      : value to store @ addr
        v2      : value to store @ addr + 1 if bis is set
        bis     : if 0, store only v1, otherwise store also v2
RETURNS         : nothing
DESCRIPTION     : store one or two chars to "ethernet module" RAM
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_writeMemory(0x100, 12, 0, 0)
*******************************************************************************/
void Ethernet_Intern_writeMemory(unsigned long addr, unsigned char v1, unsigned char v2);


/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_writeMemory2(unsigned int v)
PARAMETERS      :
        v       : two byte value to be stored @ enc memory locations pointed to by
                  current/current+1 write pointer (WRPTL). High byte is written
                  to lower address (high byte first).
RETURNS         : nothing
DESCRIPTION     : store two chars to "ethernet module" RAM
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_writeMemory2(0x100)
*******************************************************************************/
void Ethernet_Intern_writeMemory2(unsigned int v);


/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_writeMem(unsigned int addr, unsigned char v1);
PARAMETERS      :
        addr    : destination address in "ethernet module" RAM
        v1      : value to store @ addr
RETURNS         : nothing
DESCRIPTION     : store one char to "ethernet module" RAM
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_writeMem(0x100, 12)
*******************************************************************************/
void Ethernet_Intern_writeMem(unsigned long addr, unsigned char v1);

/*******************************************************************************
PROTOTYPE       : unsigned char   Ethernet_Intern_readMem(unsigned int addr)
PARAMETERS      :
        addr    : address of first byte to read
RETURNS         : value of byte @ addr
DESCRIPTION     : read one byte from ENC RAM
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : b = Ethernet_Intern_readMem(0x0250);
*******************************************************************************/
unsigned char   Ethernet_Intern_readMem(unsigned long addr);

/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_SoftwareReset()
PARAMETERS      :
        addr    : none
RETURNS         : none
DESCRIPTION     : Resets all MAC subsystem internal registers and logic.
*******************************************************************************/
void Ethernet_Intern_SoftwareReset();

/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_writeAddr(unsigned char addr, unsigned int v)
PARAMETERS      :
        addr    : address of ENC register to write in current bank selection
        v       : value to write
RETURNS         : nothing
DESCRIPTION     : writes an ENC register with high and low part
REQUIRES        : Ethernet_Intern_init must have been called before
                  bank selection is supposed to be already made
*******************************************************************************/
void    Ethernet_Intern_writeAddr(unsigned char addr, unsigned int v);

/*******************************************************************************
PROTOTYPE       : Ethernet_Intern_PHY_Write
DESCRIPTION     : PHY Write function. This function write data over the SMI to
                  the specified PHY register. This function is called by all PHY interfaces.
PARAMETERS      : phyAddr - The PHY address.
                  phyReg  - The PHY register.
                  data_   - The data written to the PHY register.
RETURNS         : kStatus_Success             - PHY write success
                  kStatus_PHY_SMIVisitTimeout - PHY SMI visit time out
*******************************************************************************/
unsigned long Ethernet_Intern_PHY_Write(unsigned long phyAddr, unsigned long phyReg, unsigned long data_);

/*******************************************************************************
PROTOTYPE     : Ethernet_Intern_PHY_Read
DESCRIPTION   : PHY Read function. This interface read data over the SMI from the
                specified PHY register. This function is called by all PHY interfaces.
PARAMETERS    : phyAddr - The PHY address.
                phyReg  - The PHY register.
                dataPtr - The address to store the data read from the PHY register.
RETURNS       : kStatus_Success - PHY read success
                kStatus_PHY_SMIVisitTimeout - PHY SMI visit time out
*******************************************************************************/
unsigned long Ethernet_Intern_PHY_Read(unsigned long phyAddr, unsigned long phyReg, unsigned long *dataPtr);

/*******************************************************************************
PROTOTYPE      : Ethernet_Intern_PHY_Init
DESCRIPTION    : Initializes PHY. This function initialize the SMI interface and initialize PHY.
                 The SMI is the MII management interface between PHY and MAC, which should be
                 firstly initialized before any other operation for PHY.
PARAMETERS     : phyAddr - The PHY address.
                 srcClock_Hz - The module clock frequency - system clock for MII management interface - SMI.
                 module - pins configuration
RETURNS        : kStatus_Success               - PHY initialize success
                 kStatus_PHY_SMIVisitTimeout   - PHY SMI visit time out
                 kStatus_PHY_AutoNegotiateFail - PHY auto negotiate fail
*******************************************************************************/
unsigned long Ethernet_Intern_PHY_Init(unsigned long phyAddr, unsigned long srcClock_Hz, const Module_Struct *module);

/*******************************************************************************
PROTOTYPE     : Ethernet_Intern_PHY_GetLinkSpeedDuplex
DESCRIPTION   : Gets the PHY link speed and duplex.
PARAMETERS    : phyAddr - The PHY address.
                speed   - The address of PHY link speed.
                duplex  - The link duplex of PHY.
RETURNS       : kStatus_Success  - PHY get link speed and duplex success
                kStatus_PHY_SMIVisitTimeout - PHY SMI visit time out
*******************************************************************************/
unsigned long Ethernet_Intern_PHY_GetLinkSpeedDuplex(unsigned long phyAddr, phy_speed_t *speed, phy_duplex_t *duplex);

/*******************************************************************************
PROTOTYPE     : Ethernet_Intern_PHY_GetLinkStatus
DESCRIPTION   : Gets the PHY link status.
PARAMETERS    : phyAddr  - The PHY address.
                status   - The link up or down status of the PHY.
                          - true the link is up.
                          - false the link is down.
RETURNS       : kStatus_Success - PHY get link status success
                kStatus_PHY_SMIVisitTimeout - PHY SMI visit time out
*******************************************************************************/
unsigned long Ethernet_Intern_PHY_GetLinkStatus(unsigned long phyAddr, unsigned char *status);

/*******************************************************************************
PROTOTYPE     : Ethernet_Intern_PHY_EnableLoopback
DESCRIPTION   : Enables/disables PHY loopback.
PARAMETERS    : phyAddr - The PHY address.
                mode    - The loopback mode to be enabled, please see "phy_loop_t".
                           the two loopback mode should not be both set. when one loopback mode is set
                           the other one should be disabled.
                enable  - True to enable, false to disable.
RETURNS       : kStatus_Success - PHY loopback success
                kStatus_PHY_SMIVisitTimeout - PHY SMI visit time out
*******************************************************************************/
unsigned long Ethernet_Intern_PHY_EnableLoopback(unsigned long phyAddr, phy_loop_t mode, unsigned char enable);

#endif