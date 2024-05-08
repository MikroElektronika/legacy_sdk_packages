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
PROTOTYPE       : void    Ethernet_doTCP(unsigned long start, unsigned int ipHeaderLen, unsigned long payloadAddr)
PARAMETERS      :
        start           : address of incoming packet in receive buffer
        idHeaderLen     : size of IP header
        payLoadAddr     : address of payload in transmit buffer
RETURNS         : nothing
DESCRIPTION     : handles an unframented, single-packet TCP/IP request
REQUIRES        : this function must be called only from Ethernet_readPacket()
EXAMPLE         :
*******************************************************************************/
void    Ethernet_doTCP(unsigned long start, unsigned int ipHeaderLen, unsigned long payloadAddr);


/*******************************************************************************
PROTOTYPE       : void Ethernet_doUDP(unsigned long start, unsigned char ipHeaderLen, unsigned long payloadAddr)
PARAMETERS      :
        start           : address of incoming packet in receive buffer
        idHeaderLen     : size of IP header
        payLoadAddr     : address of payload in transmit buffer
RETURNS         : nothing
DESCRIPTION     : reply to an UDP/IP request
REQUIRES        : this function must be called only from Ethernet_readPacket()
EXAMPLE         :
*******************************************************************************/
void Ethernet_doUDP(unsigned long start, unsigned char ipHeaderLen, unsigned long payloadAddr);
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
PROTOTYPE       : Ethernet_checksum(unsigned long start, unsigned int l)
PARAMETERS      :
        start           address of first byte in memory
        l               number of bytes to include in checksum calculation
RETURNS         : nothing (result is in _Ethernet_Calculated_CRC variable)
DESCRIPTION     : performs checksum of l bytes starting from start addr
REQUIRES        : Ethernet_init must have been called
EXAMPLE         : Ethernet_checksum(0x1000, 60)
*******************************************************************************/
void    Ethernet_checksum(unsigned long start, unsigned int l);

/*******************************************************************************
PROTOTYPE       : Ethernet_CalculateChecksum(char* buffer, unsigned int count)
PARAMETERS      :
        buffer          pointer to first byte in memory
        count           number of bytes to include in checksum calculation
RETURNS         : calculated checksum
DESCRIPTION     : performs checksum of count bytes on buffer
REQUIRES        : Ethernet_init must have been called
EXAMPLE         : Ethernet_CalculateChecksum(buffer, 60)
*******************************************************************************/
unsigned int Ethernet_CalculateChecksum(char* buffer, unsigned int count);

/*******************************************************************************
PROTOTYPE       : void    Ethernet_RAMcopy(unsigned long start, unsigned long stop, unsigned long dest, unsigned char w)
PARAMETERS      :
        start           address of first source byte (included) in memory to copy
        stop            address of last source byte (not included) in memory to copy
        dest            address of first destination byte in memory
        v               mode : 0 = no wrap (copy from transmit buffer), 1 = wrap (copy from receive buffer)
RETURNS         : nothing
DESCRIPTION     : performs memory copy from start to dest.
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_RAMcopy(0x500, 0x600, 0x1400, 1)
*******************************************************************************/
void    Ethernet_RAMcopy(unsigned long start, unsigned long stop, unsigned long dest, unsigned char w);


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
PROTOTYPE       : unsigned char   Ethernet_memcmp(unsigned long addr, unsigned char *s, unsigned char l)
PARAMETERS      :
        addr    : address of first byte in RAM to compare
        s       : pointer to first byte in RAM to compare
        l       : length in bytes of memory to compare
RETURNS         : 0 if compare matches, > 0 otherwise
DESCRIPTION     : compares bytes in RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_memcmp(0x0600, "TEST", 4)
*******************************************************************************/
unsigned char   Ethernet_memcmp(unsigned long addr, unsigned char *s, unsigned char l);


/*******************************************************************************
PROTOTYPE       : void Ethernet_memcpy(unsigned long addr, unsigned char *s, unsigned int l)
PARAMETERS      :
        addr    : destination address of first byte in RAM
        s       : pointer to first byte of RAM to copy
        l       : length in bytes of memory to copy
RETURNS         : nothing
DESCRIPTION     : copy bytes
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_memcpy(0x0600, "TEST", 4)
*******************************************************************************/
void Ethernet_memcpy(unsigned long addr, unsigned char *s, unsigned int l);


/*******************************************************************************
PROTOTYPE       : void Ethernet_writeMemory(unsigned long addr, unsigned char v1, unsigned char v2)
PARAMETERS      :
        addr    : destination address of first byte
        v1      : value to store @ addr
        v2      : value to store @ addr + 1 if bis is set
RETURNS         : nothing
DESCRIPTION     : store one or two chars
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_writeMemory(0x100, 12, 0, 0)
*******************************************************************************/
void Ethernet_writeMemory(unsigned long addr, unsigned char v1, unsigned char v2);


/*******************************************************************************
PROTOTYPE       : void Ethernet_writeMemory2(unsigned int v)
PARAMETERS      :
        v       : two byte value to be stored to memory locations pointed to by
                  current/current+1 write pointer. High byte is written
                  to lower address (high byte first).
RETURNS         : nothing
DESCRIPTION     : store two chars to RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_writeMemory2(0x100)
*******************************************************************************/
void Ethernet_writeMemory2(unsigned int v);


/*******************************************************************************
PROTOTYPE       : void Ethernet_writeMem(unsigned long addr, unsigned char v1);
PARAMETERS      :
        addr    : destination address in RAM
        v1      : value to store @ addr
RETURNS         : nothing
DESCRIPTION     : store one char to RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : Ethernet_writeMem(0x100, 12)
*******************************************************************************/
void Ethernet_writeMem(unsigned long addr, unsigned char v1);


/*******************************************************************************
PROTOTYPE       : unsigned char Ethernet_readMem(unsigned long addr)
PARAMETERS      :
        addr    : address of first byte to read
RETURNS         : value of byte @ addr
DESCRIPTION     : read one byte from RAM
REQUIRES        : Ethernet_init must have been called before
EXAMPLE         : b = Ethernet_readMem(0x0250);
*******************************************************************************/
unsigned char   Ethernet_readMem(unsigned long addr);


void    Ethernet_writeAddr2(unsigned char *addr, unsigned int v);

extern  unsigned int    Ethernet_pktLen;               // size of last packet received (CRC non included)
