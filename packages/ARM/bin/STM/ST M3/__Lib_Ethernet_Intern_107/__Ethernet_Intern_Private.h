#pragma setintsize mE

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
RETURNS         : 1 no error, 0 otherwise
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
PROTOTYPE       : char Ethernet_Intern_GetSoftwareResetStatus()
PARAMETERS      :
        addr    : none
RETURNS         :
        0 - software reset complete
        1 - software reset not complete
DESCRIPTION     : Checks whether the ETHERNET software reset bit is set or not.
*******************************************************************************/
char Ethernet_Intern_GetSoftwareResetStatus();

/*******************************************************************************
PROTOTYPE       : unsigned char   Ethernet_Intern_readReg(unsigned char addr)
PARAMETERS      :
        addr    : address of "ethernet module" register to read
RETURNS         : value of register @ addr in current bank selection
DESCRIPTION     : read an ENC register
REQUIRES        : Ethernet_Intern_init must have been called before
                  bank selection is supposed to be already made
EXAMPLE         : b = Ethernet_Intern_readReg(0x10);
*******************************************************************************/
unsigned char   Ethernet_Intern_readReg(unsigned char addr);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_writeReg(unsigned char addr, unsigned short v)
PARAMETERS      :
        addr    : address of ENC register to write in current bank selection
        v       : value to write
RETURNS         : nothing
DESCRIPTION     : writes a byte to an ENC register
REQUIRES        : Ethernet_Intern_init must have been called before
                  bank selection is supposed to be already made
EXAMPLE         : Ethernet_Intern_writeReg(0w0400, 0x10);
*******************************************************************************/
void    Ethernet_Intern_writeReg(unsigned char addr, unsigned short v);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_setBitReg(unsigned char addr, unsigned char mask)
PARAMETERS      :
        addr    : address of ENC register
        mask    : bit mask of bits to set
RETURNS         : nothing
DESCRIPTION     : ENC register is ORed with mask
REQUIRES        : Ethernet_Intern_init must have been called before
                  bank selection is supposed to be already made
EXAMPLE         : Ethernet_Intern_setBitReg(0x12, 0b00010010);
*******************************************************************************/
void    Ethernet_Intern_setBitReg(unsigned char addr, unsigned char mask);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_clearBitReg(unsigned char addr, unsigned char mask)
PARAMETERS      :
        addr    : address of ENC register
        mask    : bit mask of bits to clear
RETURNS         : nothing
DESCRIPTION     : ENC register is ANDed with complement of mask
REQUIRES        : Ethernet_Intern_init must have been called before
                  bank selection is supposed to be already made
EXAMPLE         : Ethernet_Intern_clearBitReg(0x12, 0b00010010);
*******************************************************************************/
void    Ethernet_Intern_clearBitReg(unsigned char addr, unsigned char mask);


/*******************************************************************************
PROTOTYPE       : void Ethernet_Intern_setRxReadAddress(unsigned addr)
PARAMETERS      :
        addr    : absolute address (not taking care of wrapping) in enc receive buffer
RETURNS         : nothing
DESCRIPTION     : adjusts given enc buffer address taking care of receive buffer wrapping and
                  writes it into rx buffer read pointer (ERDPT)
REQUIRES        : Ethernet_Intern_init must have been called before
                  bank selection is supposed to be already made
EXAMPLE         : Ethernet_Intern_setRxReadAddress(0x1000);
*******************************************************************************/
void Ethernet_Intern_setRxReadAddress(unsigned addr);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_writeAddr(unsigned char addr, unsigned int v)
PARAMETERS      :
        addr    : address of ENC register to write in current bank selection
        v       : value to write
RETURNS         : nothing
DESCRIPTION     : writes an ENC register with high and low part
REQUIRES        : Ethernet_Intern_init must have been called before
                  bank selection is supposed to be already made
EXAMPLE         : Ethernet_Intern_writeReg(0w0400, 0x1000);
*******************************************************************************/
void    Ethernet_Intern_writeAddr(unsigned char addr, unsigned int v);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_readAddr(unsigned char addr)
PARAMETERS      :
        addr    : address of ENC register to read from in current bank selection
RETURNS         : value of register @ addr in current bank selection
DESCRIPTION     : reads ENC register both high and low part
REQUIRES        : Ethernet_Intern_init must have been called before
                  bank selection is supposed to be already made
EXAMPLE         : Ethernet_Intern_readAddr(0x0040);
*******************************************************************************/
unsigned int Ethernet_Intern_readAddr(unsigned char addr);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_writePHY(unsigned char reg, unsigned short h, unsigned short l)
PARAMETERS      :
        reg     : address of ENC PHY
        h       : high byte to write to register
        l       : low byte to write to register
RETURNS         : nothing
DESCRIPTION     : writes high and low bytes to PHY register
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_writePHY(3, 0, 0)
*******************************************************************************/
void    Ethernet_Intern_writePHY(unsigned char reg, unsigned short h, unsigned short l);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_readPHY(unsigned char reg, unsigned char *h, unsigned char *l)
PARAMETERS      :
        reg     : address of  PHY
        h       : pointer to high byte storage location
        l       : pointer to low byte storage location
RETURNS         : nothing
DESCRIPTION     : reads high and low bytes from PHY register
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_readPHY(3, &h, &l);
*******************************************************************************/
void    Ethernet_Intern_readPHY(unsigned char reg, unsigned char *h, unsigned char *l);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_delay()
PARAMETERS      : None
RETURNS         : nothing
DESCRIPTION     : 200ms delay; used here for accessing enc PHY level registers
                               while initializing enc module
REQUIRES        : nothing
EXAMPLE         : Ethernet_Intern_delay();
*******************************************************************************/
void    Ethernet_Intern_delay();

/*******************************************************************************
PROTOTYPE       : Ethernet_Intern_Init2(unsigned char configuration)
PARAMETERS      :
 configuration  : speed, duplex and negotiation configuration
RETURNS         : nothing
DESCRIPTION     : this is part of Ethernet_Intern_Init routine. For better linkage
                  due to pic16 flash paging, initialization routine was split
                  into two smaller routines. This routine handles initialization
                  phases 2-10 as described in enc datasheet.
REQUIRES        : nothing
EXAMPLE         : Ethernet_Intern_delay();
*******************************************************************************/
void    Ethernet_Intern_Init2(unsigned char configuration);