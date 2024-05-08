/*******************************************************************************
PROTOTYPE       : unsigned char Ethernet_readPacket()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : process next packet available in ENC RAM buffer
REQUIRES        : Ethernet_init must have been called before
                  ERDPT must be correctly set either by Ethernet_init, or previous call to readPacket()
EXAMPLE         : Ethernet_readPacket()
*******************************************************************************/
unsigned char    Ethernet_readPacket();


/*******************************************************************************
PROTOTYPE       : void    Ethernet_doTCP(unsigned int start, unsigned int ipHeaderLen, unsigned int payloadAddr)
PARAMETERS      :
        start           : address of incoming packet in ENC receive buffer
        idHeaderLen     : size of IP header
        payLoadAddr     : address of payload in ENC transmit buffer
RETURNS         : nothing
DESCRIPTION     : handles an unframented, single-packet TCP/IP request
REQUIRES        : this function must be called only from Ethernet_readPacket()
EXAMPLE         :
*******************************************************************************/
void    Ethernet_doTCP(unsigned int start, unsigned int ipHeaderLen, unsigned int payloadAddr);


/*******************************************************************************
PROTOTYPE       : void Ethernet_doUDP(unsigned int start, unsigned char ipHeaderLen, unsigned int payloadAddr)
PARAMETERS      :
        start           : address of incoming packet in ENC receive buffer
        idHeaderLen     : size of IP header
        payLoadAddr     : address of payload in ENC transmit buffer
RETURNS         : nothing
DESCRIPTION     : reply to an UDP/IP request
REQUIRES        : this function must be called only from Ethernet_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_doUDP(unsigned int start, unsigned char ipHeaderLen, unsigned int payloadAddr);
char Ethernet_sendUDP2(unsigned char *destMAC, unsigned char *destIP, unsigned int sourcePort, unsigned int destPort, unsigned int pktLen);

/*******************************************************************************
PROTOTYPE       : void Ethernet_doDHCP()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : services dhcp
REQUIRES        : this function must be called only from Ethernet_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_doDHCP();
unsigned char Ethernet_DHCPReceive(void);
unsigned char Ethernet_DHCPmsg(unsigned char  messageType, unsigned char renewFlag);


/*******************************************************************************
PROTOTYPE       : void Ethernet_doDNS()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : services DNS
REQUIRES        : this function must be called only from Ethernet_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_doDNS();

/*******************************************************************************
PROTOTYPE       : void Ethernet_doARP()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : services ARP
REQUIRES        : this function must be called only from Ethernet_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_doARP();

/*******************************************************************************
PROTOTYPE       : Ethernet_checksum(unsigned int start, unsigned int l)
PARAMETERS      :
        start           address of first byte in ENC memory
        l               number of bytes to include in checksum calculation
RETURNS         : nothing (result is in ENC EDMACS[H:L] registers)
DESCRIPTION     : ENC performs DMA checksum of l bytes starting from start addr
REQUIRES        : Ethernet_init must have been called
EXAMPLE         : Ethernet_checksum(0x1000, 60)
*******************************************************************************/
void    Ethernet_checksum(unsigned int start, unsigned int l);


/*******************************************************************************
PROTOTYPE       : Ethernet_RAMcopy(unsigned int start, unsigned int stop, unsigned int dest, unsigned char w)
PARAMETERS      :
        start           address of first source byte (included) in ENC memory to copy
        stop            address of last source byte (not included) in ENC memory to copy
        dest            address of first destination byte in ENC memroy
        v               mode : 0 = no wrap (copy from transmit buffer), 1 = wrap (copy from receive buffer)
RETURNS         : nothing
DESCRIPTION     : ENC performs DMA memory copy from start to dest.
                  if wrap is allowed, performs correct operation to avoid ENC hang on circular buffer
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_RAMcopy(0x500, 0x600, 0x1400, 1)
*******************************************************************************/
void    Ethernet_RAMcopy(unsigned int start, unsigned int stop, unsigned int dest, unsigned char w);



/*******************************************************************************
PROTOTYPE       : Ethernet_MACswap()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : swap MAC addresses in ETH transmit buffer
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_MACswap()
*******************************************************************************/
void    Ethernet_MACswap();


/*******************************************************************************
PROTOTYPE       : Ethernet_IPswap()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : swap IP addresses in IP transmit buffer
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_IPswap()
*******************************************************************************/
void    Ethernet_IPswap(void);


/*******************************************************************************
PROTOTYPE       : Ethernet_txPacket(unsigned int l)
PARAMETERS      : length in bytes of packet to transmit
RETURNS         : 0 on error, 1 otherwise
DESCRIPTION     : send packet over wires
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_txPacket(60)
*******************************************************************************/
unsigned char Ethernet_txPacket(unsigned int l);


/*******************************************************************************
PROTOTYPE       : unsigned char   Ethernet_memcmp(unsigned int addr, unsigned char *s, unsigned char l)
PARAMETERS      :
        addr    : address of first byte in ENC RAM to compare
        s       : pointer to first byte of PIC RAM to compare
        l       : length in bytes of memory to compare
RETURNS         : 0 if compare matches, > 0 otherwise
DESCRIPTION     : compares ENC RAM to PIC RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_memcmp(0x0600, "TEST", 4)
*******************************************************************************/
unsigned char   Ethernet_memcmp(unsigned int addr, unsigned char *s, unsigned char l);


/*******************************************************************************
PROTOTYPE       : void Ethernet_memcpy(unsigned int addr, unsigned char *s, unsigned int l)
PARAMETERS      :
        addr    : destination address of first byte in ENC RAM
        s       : pointer to first byte of PIC RAM to copy to ENC
        l       : length in bytes of memory to copy
RETURNS         : nothing
DESCRIPTION     : copy PIC memory to ENC RAM.
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_memcpy(0x0600, "TEST", 4)
*******************************************************************************/
void Ethernet_memcpy(unsigned int addr, unsigned char *s, unsigned int l);


/*******************************************************************************
PROTOTYPE       : void Ethernet_writeMemory(unsigned int addr, unsigned char v1, unsigned char v2, unsigned char bis)
PARAMETERS      :
        addr    : destination address of first byte in ENC RAM
        v1      : value to store @ addr
        v2      : value to store @ addr + 1 if bis is set
        bis     : if 0, store only v1, otherwise store also v2
RETURNS         : nothing
DESCRIPTION     : store one or two chars to ENC RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_writeMemory(0x100, 12, 0, 0)
*******************************************************************************/
void Ethernet_writeMemory(unsigned int addr, unsigned char v1, unsigned char v2);


/*******************************************************************************
PROTOTYPE       : void Ethernet_writeMemory2(unsigned int v)
PARAMETERS      :
        v       : two byte value to be stored @ enc memory locations pointed to by
                  current/current+1 write pointer (WRPTL). High byte is written
                  to lower address (high byte first).
RETURNS         : nothing
DESCRIPTION     : store two chars to ENC RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_writeMemory2(0x100)
*******************************************************************************/
void Ethernet_writeMemory2(unsigned int v);


/*******************************************************************************
PROTOTYPE       : void Ethernet_writeMem(unsigned int addr, unsigned char v1);
PARAMETERS      :
        addr    : destination address in ENC RAM
        v1      : value to store @ addr
RETURNS         : nothing
DESCRIPTION     : store one char to ENC RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_writeMem(0x100, 12)
*******************************************************************************/
void Ethernet_writeMem(unsigned int addr, unsigned char v1);


/*******************************************************************************
PROTOTYPE       : unsigned char   Ethernet_readMem(unsigned int addr)
PARAMETERS      :
        addr    : address of first byte to read
RETURNS         : value of byte @ addr
DESCRIPTION     : read one byte from ENC RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : b = Ethernet_readMem(0x0250);
*******************************************************************************/
unsigned char   Ethernet_readMem(unsigned int addr);


void    Ethernet_writeAddr2(unsigned char *addr, unsigned int v);
unsigned char Ethernet_readReg2(unsigned char *addr);


/*******************************************************************************
PROTOTYPE       : void Ethernet_setRxReadAddress(unsigned addr)
PARAMETERS      :
        addr    : absolute address (not taking care of wrapping) in enc receive buffer
RETURNS         : nothing
DESCRIPTION     : adjusts given enc buffer address taking care of receive buffer wrapping and
                  writes it into rx buffer read pointer (ERDPT)
REQUIRES        : Ethernet_init must have been called before
                  bank selection is supposed to be already made
EXAMPLE         : Ethernet_setRxReadAddress(0x1000);
*******************************************************************************/
void Ethernet_setRxReadAddress(unsigned addr);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_writePHY(unsigned char reg, unsigned short h, unsigned short l)
PARAMETERS      :
        reg     : address of ENC PHY
        h       : high byte to write to register
        l       : low byte to write to register
RETURNS         : nothing
DESCRIPTION     : writes high and low bytes to PHY register
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_writePHY(3, 0, 0)
*******************************************************************************/
void    Ethernet_writePHY(unsigned char reg, unsigned short h, unsigned short l);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_readPHY(unsigned char reg, unsigned char *h, unsigned char *l)
PARAMETERS      :
        reg     : address of ENC PHY
        h       : pointer to high byte storage location
        l       : pointer to low byte storage location
RETURNS         : nothing
DESCRIPTION     : reads high and low bytes from PHY register
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_readPHY(3, &h, &l);
*******************************************************************************/
void    Ethernet_readPHY(unsigned char reg, unsigned char *h, unsigned char *l);


/*******************************************************************************
PROTOTYPE       : void    Ethernet_delay()
PARAMETERS      : None
RETURNS         : nothing
DESCRIPTION     : 200ms delay; used here for accessing enc PHY level registers
                               while initializing enc module
REQUIRES        : nothing
EXAMPLE         : Ethernet_delay();
*******************************************************************************/
void    Ethernet_delay();

/*******************************************************************************
PROTOTYPE       : Ethernet_Init2(unsigned char fullDuplex)
PARAMETERS      :
    fullDuplex  : full/half duplex switch
RETURNS         : nothing
DESCRIPTION     : this is part of Ethernet_Init routine. For better linkage
                  due to pic16 flash paging, initialization routine was splited
                  into two smaller routines. This routine handles initialization
                  phases 2-10 as described in enc datasheet.
REQUIRES        : nothing
EXAMPLE         : Ethernet_delay();
*******************************************************************************/
void    Ethernet_Init2(unsigned char fullDuplex);

extern  unsigned int    Ethernet_pktLen;               // size of last packet received (CRC non included)
