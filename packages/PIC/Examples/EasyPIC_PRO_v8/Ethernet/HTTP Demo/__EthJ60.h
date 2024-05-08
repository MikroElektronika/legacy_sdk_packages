/*
 * file         : Eth_j60LibDef.h
 * project      : internal Ethernet controller library
 * author       : Bruno Gavand
 * compiler     : mikroC V5.0.0.3
 * ctime        : jun. 2006
 * mtime        : jul. 2006
 * release      : 1.0
 *
 * description  :
 *      definitions for internal Ethernet lib
 *
 */


/*
 * PHY registers
 */
#define PHLCON  0x14
#define PHCON2  0x10
#define PHCON1  0x00

/*
 * maximum packet length
 */
#define BUF_SIZE        1518

/*
 * ENC memory allocation
 */
#define RAM_SIZE        8192                            // 8kb RAM available
#define RECEIVE_START   0                               // receive buffer start address : Should be an even memory address; must be 0 for errata
#define RECEIVE_END     (TRANSMIT_START - 1)            // receive buffer end address   : Odd for errata workaround
#define TRANSMIT_START  (RAM_SIZE - (BUF_SIZE + 100))   // transmit buffer start address, a few more bytes for padding pseudo header + transmit status : Even memory address
#define REPLY_START     (TRANSMIT_START + 1)            // reply buffer starts after per packet control byte
#define RECEIVE_SIZE          (RECEIVE_END-RECEIVE_START+1)   // receive buffer size


#define Ethernet_HALFDUPLEX     0
#define Ethernet_FULLDUPLEX     1

#define NO_ADDR 0xffff

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
extern  void            Ethernet_Init(unsigned char *mac, unsigned char *ip, unsigned char fullDuplex);
extern  unsigned char   Ethernet_doPacket();
extern  void            Ethernet_putByte(unsigned char b);
extern  void            Ethernet_putBytes(unsigned char *ptr, unsigned int n);
extern  void            Ethernet_putConstBytes(const unsigned char *ptr, unsigned int n);
extern  unsigned char   Ethernet_getByte();
extern  void            Ethernet_getBytes(unsigned char *ptr, unsigned int addr, unsigned int n);
extern  unsigned int    Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags * flags);
extern  unsigned int    Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags * flags);
extern  void            Ethernet_confNetwork(char *ipMask, char *gwIpAddr, char *dnsIpAddr);