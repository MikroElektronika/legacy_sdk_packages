#pragma setintsize mE

#ifndef __ETHERNET_INTERN_H__
#define __ETHERNET_INTERN_H__

// Defines the PHY link speed. This is align with the speed for ENET MAC.
typedef enum _phy_speed
{
  kPHY_Speed10M = 0UL, // ENET PHY 10M speed.
  kPHY_Speed100M       // ENET PHY 100M speed.
} phy_speed_t;

// Defines the PHY link duplex.
typedef enum _phy_duplex
{
  kPHY_HalfDuplex = 0UL, // ENET PHY half duplex.
  kPHY_FullDuplex        // ENET PHY full duplex.
} phy_duplex_t;

// Defines the PHY loopback mode.
typedef enum _phy_loop
{
  kPHY_LocalLoop = 0UL, // ENET PHY local loopback.
  kPHY_RemoteLoop       // ENET PHY remote loopback.
} phy_loop_t;

typedef struct {
  unsigned char valid; // valid/invalid entry flag
  unsigned long tmr; // timestamp
  unsigned char ip[4]; // IP address
  unsigned char mac[6]; // MAC address behind the IP address
} Ethernet_Intern_arpCacheStruct;

typedef struct {
  unsigned canCloseTCP : 1;
  unsigned isBroadcast : 1;
} TEthInternPktFlags;

/* Generic status return codes. */
typedef enum _generic_status
{
  kStatus_Success = 0,
  kStatus_Fail = 1,
  kStatus_ReadOnly = 2,
  kStatus_OutOfRange = 3,
  kStatus_InvalidArgument = 4,
  kStatus_Timeout = 5,
  kStatus_NoTransferInProgress = 6,
};

/* Defines the PHY status. */
typedef enum _phy_status
{
  kStatus_PHY_SMIVisitTimeout = 4101,    // ENET PHY SMI visit timeout.
  kStatus_PHY_AutoNegotiateFail = 4102,  // ENET PHY AutoNegotiate Fail.
};

extern Ethernet_Intern_arpCacheStruct Ethernet_Intern_arpCache[]; // ARP cash, 3 entries max

extern unsigned char Ethernet_Intern_macAddr[6]; // MAC address of the controller
extern unsigned char Ethernet_Intern_ipAddr[4]; // IP address of the device
extern unsigned char Ethernet_Intern_gwIpAddr[4]; // GW
extern unsigned char Ethernet_Intern_ipMask[4]; // network mask
extern unsigned char Ethernet_Intern_dnsIpAddr[4]; // DNS server IP
extern unsigned char Ethernet_Intern_rmtIpAddr[4]; // remote IP Address of host (DNS server reply)

extern unsigned long Ethernet_Intern_userTimerSec; // must be incremented by user 1 time per second

/*
 * prototypes for public functions
 */
extern unsigned char Ethernet_Intern_doPacket();
extern void Ethernet_Intern_putByte(unsigned char b);
extern void Ethernet_Intern_putBytes(unsigned char *ptr, unsigned int n);
extern void Ethernet_Intern_putConstBytes(const unsigned char *ptr, unsigned int n);
extern unsigned char Ethernet_Intern_getByte();
extern void Ethernet_Intern_getBytes(unsigned char *ptr, unsigned long addr, unsigned int n);
extern unsigned int Ethernet_Intern_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthInternPktFlags * flags);
extern unsigned int Ethernet_Intern_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthInternPktFlags * flags);
extern void Ethernet_Intern_confNetwork(char *ipMask, char *gwIpAddr, char *dnsIpAddr);


#endif