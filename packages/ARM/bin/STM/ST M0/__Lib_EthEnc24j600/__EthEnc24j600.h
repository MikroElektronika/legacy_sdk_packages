/*
 * file         : SPI_Ethernet_24j600_libdef.c
 * project      : Ethernet controller SPI_Ethernet mini library
 * author       : Bruno Gavand
 * compiler     : mikroC V8.0.0.0
 * ctime        : jan. 2008
 * mtime        : jan. 2008
 * release      : 1.0
 *
 * description  :
 *      definitions for SPI_Ethernet mini lib
 *
 */

#pragma setintsize mE

/*
 * registers
 */

// ENC424J600/624J600 register addresses           
// SPI Bank 0 registers --------
#define ETXST        0x0000
#define ETXSTL       0x0000
#define ETXSTH       0x0001
#define ETXLEN       0x0002
#define ETXLENL      0x0002
#define ETXLENH      0x0003
#define ERXST        0x0004
#define ERXSTL       0x0004
#define ERXSTH       0x0005
#define ERXTAIL      0x0006
#define ERXTAILL     0x0006
#define ERXTAILH     0x0007
#define ERXHEAD      0x0008
#define ERXHEADL     0x0008
#define ERXHEADH     0x0009
#define EDMAST       0x000A
#define EDMASTL      0x000A
#define EDMASTH      0x000B
#define EDMALEN      0x000C
#define EDMALENL     0x000C
#define EDMALENH     0x000D
#define EDMADST      0x000E
#define EDMADSTL     0x000E
#define EDMADSTH     0x000F
#define EDMACS       0x0010
#define EDMACSL      0x0010
#define EDMACSH      0x0011
#define ETXSTAT      0x0012
#define ETXSTATL     0x0012
#define ETXSTATH     0x0013
#define ETXWIRE      0x0014
#define ETXWIREL     0x0014
#define ETXWIREH     0x0015

// SPI all bank registers
#define EUDAST       0x0016
#define EUDASTL      0x0016
#define EUDASTH      0x0017
#define EUDAND       0x0018
#define EUDANDL      0x0018
#define EUDANDH      0x0019
#define ESTAT        0x001A
#define ESTATL       0x001A
#define ESTATH       0x001B
#define EIR          0x001C
#define EIRL         0x001C
#define EIRH         0x001D
#define ECON1        0x001E
#define ECON1L       0x001E
#define ECON1H       0x001F


// SPI Bank 1 registers -----
#define EHT1         0x0000
#define EHT1L        0x0000
#define EHT1H        0x0001
#define EHT2         0x0002
#define EHT2L        0x0002
#define EHT2H        0x0003
#define EHT3         0x0004
#define EHT3L        0x0004
#define EHT3H        0x0005
#define EHT4         0x0006
#define EHT4L        0x0006
#define EHT4H        0x0007
#define EPMM1        0x0008
#define EPMM1L       0x0008
#define EPMM1H       0x0009
#define EPMM2        0x000A
#define EPMM2L       0x000A
#define EPMM2H       0x000B
#define EPMM3        0x000C
#define EPMM3L       0x000C
#define EPMM3H       0x000D
#define EPMM4        0x000E
#define EPMM4L       0x000E
#define EPMM4H       0x000F
#define EPMCS        0x0010
#define EPMCSL       0x0010
#define EPMCSH       0x0011
#define EPMO         0x0012
#define EPMOL        0x0012
#define EPMOH        0x0013
#define ERXFCON      0x0014
#define ERXFCONL     0x0014
#define ERXFCONH     0x0015

// SPI all bank registers from 0x36 to 0x3F


// SPI Bank 2 registers -----
#define MACON1       0x0000
#define MACON1L      0x0000
#define MACON1H      0x0001
#define MACON2       0x0002
#define MACON2L      0x0002
#define MACON2H      0x0003
#define MABBIPG      0x0004
#define MABBIPGL     0x0004
#define MABBIPGH     0x0005
#define MAIPG        0x0006
#define MAIPGL       0x0006
#define MAIPGH       0x0007
#define MACLCON      0x0008
#define MACLCONL     0x0008
#define MACLCONH     0x0009
#define MAMXF        0x000A
#define MAMXFL       0x000A
#define MAMXFLL      0x000A
#define MAMXFLH      0x000B
#define MICMD        0x0012
#define MICMDL       0x0012
#define MICMDH       0x0013
#define MIREGADR     0x0014
#define MIREGADRL    0x0014
#define MIREGADRH    0x0015

// SPI all bank registers from 0x56 to 0x5F


// SPI Bank 3 registers -----
#define MAADR3       0x0000
#define MAADR3L      0x0000
#define MAADR3H      0x0001
#define MAADR2       0x0002
#define MAADR2L      0x0002
#define MAADR2H      0x0003
#define MAADR1       0x0004
#define MAADR1L      0x0004
#define MAADR1H      0x0005
#define MIWR         0x0006
#define MIWRL        0x0006
#define MIWRH        0x0007
#define MIRD         0x0008
#define MIRDL        0x0008
#define MIRDH        0x0009
#define MISTAT       0x000A
#define MISTATL      0x000A
#define MISTATH      0x000B
#define EPAUS        0x000C
#define EPAUSL       0x000C
#define EPAUSH       0x000D
#define ECON2        0x000E
#define ECON2L       0x000E
#define ECON2H       0x000F
#define ERXWM        0x0010
#define ERXWML       0x0010
#define ERXWMH       0x0011
#define EIE          0x0012
#define EIEL         0x0012
#define EIEH         0x0013
#define EIDLED       0x0014
#define EIDLEDL      0x0014
#define EIDLEDH      0x0015

// SPI all bank registers from 0x66 to 0x6F


// SPI Non-banked Special Function Registers
#define EGPDATA         0x0080
#define EGPDATAL        0x0080
#define ERXDATA         0x0082
#define ERXDATAL        0x0082
#define EUDADATA        0x0084
#define EUDADATAL       0x0084
#define EGPRDPT         0x0086
#define EGPRDPTL        0x0086
#define EGPRDPTH        0x0087
#define EGPWRPT         0x0088
#define EGPWRPTL        0x0088
#define EGPWRPTH        0x0089
#define ERXRDPT         0x008A
#define ERXRDPTL        0x008A
#define ERXRDPTH        0x008B
#define ERXWRPT         0x008C
#define ERXWRPTL        0x008C
#define ERXWRPTH        0x008D
#define EUDARDPT        0x008E
#define EUDARDPTL       0x008E
#define EUDARDPTH       0x008F
#define EUDAWRPT        0x0090
#define EUDAWRPTL       0x0090
#define EUDAWRPTH       0x0091

// ENC424J600/624J600 PHY Register Addresses   //
#define PHCON1        0x00
#define PHSTAT1       0x01
#define PHANA         0x04
#define PHANLPA       0x05
#define PHANE         0x06
#define PHCON2        0x11
#define PHSTAT2       0x1B
#define PHSTAT3       0x1F


#define MISTAT_BUSY 1
#define MIIRD    0x01

/*
 * SPI commands
 */
#define BFSCMD  0b10000000      // bit field set
#define BFCCMD  0b10100000      // bit field clear
#define WCRCMD  0b01000000      // write control register
#define WCRUCMD 0b00100010
#define RCRCMD  0b00000000      // read control register
#define RCRUCMD 0b00100000      //

#define RRXDATA 0x2C            // read ERXDATA
#define WRXDATA 0x2E            // write ERXDATA

/*
 * maximum packet length
 */
#define BUF_SIZE        1518

/*
 * ENC memory allocation
 */
#define RAM_SIZE        0x6000                         // 24kB RAM available
#define TRANSMIT_START  0                              // transmit buffer start address
#define TRANSMIT_LENGTH  (BUF_SIZE + 100)              // transmit buffer length
#define RECEIVE_START   0x5340                         // receive buffer start address
#define RECEIVE_END     0x5FFF                         // receive buffer end address
#define RECEIVE_SIZE    (0x5FFF-RECEIVE_START+1)       // receive buffer size
#define REPLY_START     (TRANSMIT_START)               // reply buffer starts after per packet control byte

#define SPI_Ethernet_24j600_HALFDUPLEX     0xFF
#define SPI_Ethernet_24j600_FULLDUPLEX     0xFE
#define SPI_Ethernet_24j600_SPD10          0xFF
#define SPI_Ethernet_24j600_SPD100         0xFD
#define SPI_Ethernet_24j600_AUTO_NEGOTIATION      0xFB
#define SPI_Ethernet_24j600_MANUAL_NEGOTIATION    0xFF
#define SPI_Ethernet_24j600_ETHERNET_DEFAULT_MAC  0xF7
#define SPI_Ethernet_24j600_ETHERNET_CUSTOM_MAC   0xFF


#define NO_ADDR 0xFFFF

/*
 * library globals
 */
typedef struct {
    unsigned char valid; // valid/invalid entry flag
    unsigned long tmr; // timestamp
    unsigned char ip[4]; // IP address
    unsigned char mac[6]; // MAC address behind the IP address
} SPI_Ethernet_24j600_arpCacheStruct;

extern SPI_Ethernet_24j600_arpCacheStruct SPI_Ethernet_24j600_arpCache[]; // ARP cash, 3 entries max

extern unsigned char SPI_Ethernet_24j600_macAddr[6]; // MAC address of the controller
extern unsigned char SPI_Ethernet_24j600_ipAddr[4]; // IP address of the device
extern unsigned char SPI_Ethernet_24j600_gwIpAddr[4]; // GW
extern unsigned char SPI_Ethernet_24j600_ipMask[4]; // network mask
extern unsigned char SPI_Ethernet_24j600_dnsIpAddr[4]; // DNS serveur IP
extern unsigned char SPI_Ethernet_24j600_rmtIpAddr[4]; // remote IP Address of host (DNS server reply)

extern unsigned long SPI_Ethernet_24j600_userTimerSec; // must be incremented by user 1 time per second

typedef struct {
    unsigned canCloseTCP : 1;
    unsigned isBroadcast : 1;
} TEthPktFlags;

/*
 * prototypes for public functions
 */
//extern  void            SPI_Ethernet_24j600_Init(unsigned char *resetPort, unsigned char resetBit, unsigned char *CSport, unsigned char CSbit, unsigned char *mac, unsigned char *ip, unsigned char fullDuplex);
extern void SPI_Ethernet_24j600_Init(unsigned char *mac, unsigned char *ip, unsigned char fullDuplex);

extern unsigned char SPI_Ethernet_24j600_doPacket();
extern void SPI_Ethernet_24j600_putByte(unsigned char b);
extern void SPI_Ethernet_24j600_putBytes(unsigned char *ptr, unsigned int n);
extern void SPI_Ethernet_24j600_putConstBytes(const unsigned char *ptr, unsigned int n);
extern unsigned char SPI_Ethernet_24j600_getByte();
extern void SPI_Ethernet_24j600_getBytes(unsigned char *ptr, unsigned int addr, unsigned int n);
extern unsigned int SPI_Ethernet_24j600_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags * flags);
extern unsigned int SPI_Ethernet_24j600_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags * flags);
extern void SPI_Ethernet_24j600_confNetwork(char *ipMask, char *gwIpAddr, char *dnsIpAddr);