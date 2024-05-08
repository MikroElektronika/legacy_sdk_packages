#pragma setintsize mE

/*******************************************************************************
PROTOTYPE       : unsigned char Ethernet_Intern_readPacket()
PARAMETERS      : none
RETURNS         : nothing
DESCRIPTION     : process next packet
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : Ethernet_Intern_readPacket()
*******************************************************************************/
unsigned char    Ethernet_Intern_readPacket();


/*******************************************************************************
PROTOTYPE       : void    Ethernet_Intern_doTCP(unsigned int start, unsigned int ipHeaderLen, unsigned long payloadAddr)
PARAMETERS      :
        start           : address of incoming packet
        idHeaderLen     : size of IP header
        payLoadAddr     : address of payload
RETURNS         : nothing
DESCRIPTION     : handles an unfragmented, single-packet TCP/IP request
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
PROTOTYPE       : Ethernet_Intern_RAMcopy(unsigned int start, unsigned int stop, unsigned int dest, unsigned char w)
PARAMETERS      :
        start           address of first source byte (included) in "ethernet module" memory to copy
        stop            address of last source byte (not included) in "ethernet module" memory to copy
        dest            address of first destination byte in ETH memory
        v               mode : 0 = no wrap (copy from transmit buffer), 1 = wrap (copy from receive buffer)
RETURNS         : nothing
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
DESCRIPTION     : copy memory to "ethernet module" RAM.
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
        v       : two byte value to be stored @ ETH memory locations pointed to by
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
DESCRIPTION     : read one byte from ETH RAM
REQUIRES        : Ethernet_Intern_init must have been called before
EXAMPLE         : b = Ethernet_Intern_readMem(0x0250);
*******************************************************************************/
unsigned char   Ethernet_Intern_readMem(unsigned long addr);