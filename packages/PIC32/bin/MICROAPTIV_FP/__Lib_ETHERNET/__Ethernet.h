#ifndef __ETHERNET_H__
#define __ETHERNET_H__
/*
 * library globals
 */
typedef struct
        {
        unsigned char   valid;                         // valid/invalid entry flag
        unsigned long   tmr;                           // timestamp
        unsigned char   ip[4];                         // IP address
        unsigned char   mac[6];                        // MAC address behind the IP address
        } Ethernet_arpCacheStruct;

extern Ethernet_arpCacheStruct Ethernet_arpCache[];    // ARP cash, 3 entries max

extern unsigned char    Ethernet_macAddr[6];           // MAC address of the controller
extern unsigned char    Ethernet_ipAddr[4];            // IP address of the device
extern unsigned char    Ethernet_gwIpAddr[4];          // GW
extern unsigned char    Ethernet_ipMask[4];            // network mask
extern unsigned char    Ethernet_dnsIpAddr[4];         // DNS serveur IP
extern unsigned char    Ethernet_rmtIpAddr[4];         // remote IP Address of host (DNS server reply)

extern unsigned long    Ethernet_userTimerSec;         // must be incremented by user 1 time per second

typedef struct {
  unsigned canCloseTCP: 1;
  unsigned isBroadcast: 1;
} TEthPktFlags;

/*
 * prototypes for public functions
 */
extern  void            Ethernet_Init(unsigned char *mac, unsigned char *ip, unsigned long configuration);
extern  unsigned char   Ethernet_doPacket();
extern  void            Ethernet_putByte(unsigned char b);
extern  void            Ethernet_putBytes(unsigned char *ptr, unsigned int n);
extern  void            Ethernet_putConstBytes(const unsigned char *ptr, unsigned int n);
extern  unsigned char   Ethernet_getByte();
extern  void            Ethernet_getBytes(unsigned char *ptr, unsigned long addr, unsigned int n);
extern  unsigned int    Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags * flags);
extern  unsigned int    Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags * flags);
extern  void            Ethernet_confNetwork(char *ipMask, char *gwIpAddr, char *dnsIpAddr);

#endif // __ETHERNET_H__
