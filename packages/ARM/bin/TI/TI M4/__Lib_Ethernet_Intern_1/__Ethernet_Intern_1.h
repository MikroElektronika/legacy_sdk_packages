#pragma setintsize mE

#define _ETHERNET_MULTICAST   0b1
#define _ETHERNET_BROADCAST   0b10

#define _ETHERNET_HALFDUPLEX   0b1
#define _ETHERNET_FULLDUPLEX   0b10
#define _ETHERNET_SPD10        0b100
#define _ETHERNET_SPD100       0b1000
#define _ETHERNET_AUTO_NEGOTIATION    0b10000
#define _ETHERNET_MANUAL_NEGOTIATION  0b100000

/*
 * library globals
 */
typedef struct {
    unsigned char valid; // valid/invalid entry flag
    unsigned long tmr; // timestamp
    unsigned char ip[4]; // IP address
    unsigned char mac[6]; // MAC address behind the IP address
} Ethernet_Intern_arpCacheStruct;

extern Ethernet_Intern_arpCacheStruct Ethernet_Intern_arpCache[]; // ARP cash, 3 entries max

extern unsigned char Ethernet_Intern_macAddr[6]; // MAC address of the controller
extern unsigned char Ethernet_Intern_ipAddr[4]; // IP address of the device
extern unsigned char Ethernet_Intern_gwIpAddr[4]; // GW
extern unsigned char Ethernet_Intern_ipMask[4]; // network mask
extern unsigned char Ethernet_Intern_dnsIpAddr[4]; // DNS server IP
extern unsigned char Ethernet_Intern_rmtIpAddr[4]; // remote IP Address of host (DNS server reply)

extern unsigned long Ethernet_Intern_userTimerSec; // must be incremented by user 1 time per second

typedef struct {
    unsigned canCloseTCP : 1;
    unsigned isBroadcast : 1;
} TEthInternPktFlags;

/*
 * prototypes for public functions
 */
//extern  void            Ethernet_Intern_Init(unsigned char *resetPort, unsigned char resetBit, unsigned char *CSport, unsigned char CSbit, unsigned char *mac, unsigned char *ip, unsigned char fullDuplex);
extern void Ethernet_Intern_Init(unsigned char *mac, unsigned char *ip, unsigned char fullDuplex);

extern unsigned char Ethernet_Intern_doPacket();
extern void Ethernet_Intern_putByte(unsigned char b);
extern void Ethernet_Intern_putBytes(unsigned char *ptr, unsigned int n);
extern void Ethernet_Intern_putConstBytes(const unsigned char *ptr, unsigned int n);
extern unsigned char Ethernet_Intern_getByte();
extern void Ethernet_Intern_getBytes(unsigned char *ptr, unsigned long addr, unsigned int n);
extern unsigned int Ethernet_Intern_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthInternPktFlags * flags);
extern unsigned int Ethernet_Intern_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthInternPktFlags * flags);
extern void Ethernet_Intern_confNetwork(char *ipMask, char *gwIpAddr, char *dnsIpAddr);