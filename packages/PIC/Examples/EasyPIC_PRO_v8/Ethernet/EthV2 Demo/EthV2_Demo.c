/*
 * Project Name:
     ethV2 Demo (Ethernal clock : LCD clock that gets date & time from the internet)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description  :
       This program intends to show new ethernet library possibilities.
       it is an LCD clock with no buttons : it gets date & time from the internet with SNTP requests.
       the clock embeds a web server to get information on its state, and to set preferences.
       preferences are set on admin page. username: admin
                                          password: clock
       enc IP address can be set manually or obtained from dhcp server if such exists.
 * Test configuration:
     MCU:             PIC18F97J60
                      http://ww1.microchip.com/downloads/en/DeviceDoc/39762d.pdf
     Dev.Board:       EasyPIC PRO v8
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS, 25.0000 MHz
     Ext. Modules:    LCD 2x16
                      https://www.mikroe.com/lcd-2x16-blue
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Since the internal ethernet module doesn't support auto-negotiation, full-duplex mode is
       not compatible with most switches/routers.  If a dedicated network is used
       where the duplex of the remote node can be manually configured, you may
       change this configuration.  Otherwise, half duplex should always be used.
     - Turn on LEDA and LEDB LEDs on switch SW4.1 and SW4.2. (board specific)
     - Turn on Lcd backlight switches SW11 (board specific)
 */

#include "built_in.h"
#include "timelib.h"
#include "__EthJ60.h"
#include "httpUtils.h"

// LCD module connections
sbit LCD_RS at LATD3_bit;  // for writing to output pin always use latch (PIC18 family)
sbit LCD_EN at LATD2_bit;  // for writing to output pin always use latch (PIC18 family)
sbit LCD_D4 at LATJ4_bit;  // for writing to output pin always use latch (PIC18 family)
sbit LCD_D5 at LATJ5_bit;  // for writing to output pin always use latch (PIC18 family)
sbit LCD_D6 at LATJ6_bit;  // for writing to output pin always use latch (PIC18 family)
sbit LCD_D7 at LATJ7_bit;  // for writing to output pin always use latch (PIC18 family)

sbit LCD_RS_Direction at TRISD3_bit;
sbit LCD_EN_Direction at TRISD2_bit;
sbit LCD_D4_Direction at TRISJ4_bit;
sbit LCD_D5_Direction at TRISJ5_bit;
sbit LCD_D6_Direction at TRISJ6_bit;
sbit LCD_D7_Direction at TRISJ7_bit;
// End of LCD module connections

/*
 * select either dynamic (with dhcp) network configuration, or static configuration
 */
// #define WITH_DHCP

/*
 * ts2str() mode flags
 */
#define TS2STR_DATE     1
#define TS2STR_TIME     2
#define TS2STR_TZ       4
#define TS2STR_ALL      (TS2STR_DATE | TS2STR_TIME)

/*
 * number of byte to parse in HTTP request
 */
#define HTTP_REQUEST_SIZE       128

/*
 * basic realm : admin private zone
 */
#define PRIVATE_LOGINPASSWD     "admin:clock"                           // user + password
#define ZONE_NAME               "Ethernal Clock administration"         // zone signature
#define MSG_DENIED              "Authorization Required"                // access denied message

/***********************************
 * RAM variables
 */
unsigned char   macAddr[6] = {0x00, 0x14, 0xA5, 0x76, 0x19, 0x3f} ;   // my MAC address

#ifdef WITH_DHCP
/*
 * if you have a DHCP server, ip address 0.0.0.0 means DCHP request,
 * otherwise, set your IP address here :
 */
unsigned char   ipAddr[4] = {0, 0, 0, 0 } ;

/*
 * if you don't have a DHCP server, put your network settings here,
 * otherwise, leave them blank :
 */
unsigned char gwIpAddr[4] ;          // gateway (router) IP address
unsigned char ipMask[4] ;            // network mask (for example : 255.255.255.0)
unsigned char dnsIpAddr[4] ;         // DNS server IP address
#else
unsigned char ipAddr[4]    = {10, 101, 14, 36} ;     // my ip addr
unsigned char gwIpAddr[4]  = {10, 101, 14, 1 } ;     // gateway (router) IP address
unsigned char ipMask[4]    = {255, 255, 255,  0 } ;  // network mask (for example : 255.255.255.0)
unsigned char dnsIpAddr[4] = {10, 101, 14, 99 } ;    // DNS server IP address
#endif


TimeStruct      ts, ls ;                // timestruct for now and last update
long    epoch = 0 ;                     // unix time now
long    lastSync = 0 ;                  // unix time of last sntp update
unsigned int    presTmr = 0 ;           // timer prescaler

unsigned char   bufInfo[200] ;          // LCD buffer
unsigned char   *marquee = 0;           // marquee pointer
unsigned char   lcdEvent = 0;           // marquee event flag
unsigned int    lcdTmr   = 0;           // marquee timer

unsigned char   sntpSync = 0 ;          // sntp sync flag
unsigned char   reloadDNS = 1 ;         // dns up to date flag
unsigned char   serverStratum = 0 ;     // sntp server stratum
unsigned char   serverFlags = 0 ;       // sntp server flags
char            serverPrecision = 0 ;   // sntp server precision

/*
 * week day names
 */
unsigned char   *wday[] =
        {
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat",
        "Sun"
        } ;

/*
 * month names
 */
unsigned char   *mon[] =
        {
        "",     // skip number zero, time library counts months from 1 to 12
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec"
        } ;

unsigned int  httpCounter = 0 ;                         // number of http requests
unsigned char path_private[]    = "/admin" ;            // private zone path name

const unsigned char httpHeader[] = "HTTP/1.1 200 OK\nContent-type: " ;  // HTTP header
const unsigned char httpMimeTypeHTML[] = "text/html\n\n" ;              // HTML MIME type
const unsigned char httpMimeTypeScript[] = "text/plain\n\n" ;           // TEXT MIME type

/*
 * configuration structure
 */
struct
        {
        unsigned char   lcdL1 ;                 // LCD line 1 message type
        unsigned char   lcdL2 ;                 // LCD line 2 message type
        short           tz ;                    // time zone (diff in hours to GMT)
        unsigned char   sntpIP[4] ;             // SNTP ip address
        unsigned char   sntpServer[128] ;       // SNTP host name
        } conf =
                {
                0,
                2,
                0,
                {0, 0, 0, 0},
                "swisstime.ethz.ch"             // Zurich, Switzerland: Integrated Systems Lab, Swiss Fed. Inst. of Technology
                                                // 129.132.2.21: swisstime.ethz.ch
                                                // Service Area: Switzerland and Europe
                } ;

/*
 * LCD message type options
 */
const unsigned char   *LCDoption[] =
        {
        "Marquee",
        "Date",
        "Time",
        "Off"
        } ;

/*
 * stylesheets
 */
// clock not synchronized : red background
const char    *CSSred = "\
HTTP/1.1 200 OK\nContent-type: text/css\n\n\
body {background-color: #ffccdd;}\
" ;

// clock synchronized : green background
const char    *CSSgreen = "\
HTTP/1.1 200 OK\nContent-type: text/css\n\n\
body {background-color: #ddffcc;}\
" ;

/*
 * HTTP + HTML common header
 */
const char    *HTMLheader = "\
HTTP/1.1 200 OK\nContent-type: text/html\n\n\
<HTML><HEAD>\
<TITLE>MikroElektronika Ethernal Clock</TITLE>\
</HEAD><BODY>\
<link rel=\"stylesheet\" type=\"text/css\" href=\"/s.css\">\
<center>\
<h2>Ethernal Clock</h2>\
" ;

/*
 * Time info
 */
const char      *HTMLtime = "\
<h3>Time | <a href=/2>SNTP</a> | <a href=/3>Network</a> | <a href=/4>System</a> | <a href=/admin>ADMIN</a></h3>\
<script src=/a></script>\
<table border=1 style=\"font-size:20px ;font-family: terminal ;\" width=500>\
<tr><td>Date and Time</td><td align=right><script>document.write(NOW)</script></td></tr>\
<tr><td>Unix Epoch</td><td align=right><script>document.write(EPOCH)</script></td></tr>\
<tr><td>Julian Day</td><td align=right><script>document.write(EPOCH / 24 / 3600 + 2440587.5)</script></td></tr>\
<tr><td>Last sync</td><td align=right><script>document.write(LAST)</script></td></tr>" ;

/*
 * SNTP info
 */
const char      *HTMLsntp = "\
<h3><a href=/>Time</a> | SNTP | <a href=/3>Network</a> | <a href=/4>System</a> | <a href=/admin>ADMIN</a></h3>\
<script src=/b></script>\
<table border=1 style=\"font-size:20px ;font-family: terminal ;\" width=500>\
<tr><td>Server</td><td align=right><script>document.write(SNTP)</script></td></tr>\
<tr><td>Leap</td><td align=right><script>document.write(LEAP)</script></td></tr>\
<tr><td>Version</td><td align=right><script>document.write(VN)</script></td></tr>\
<tr><td>Mode</td><td align=right><script>document.write(MODE)</script></td></tr>\
<tr><td>Stratum</td><td align=right><script>document.write(STRATUM)</script></td></tr>\
<tr><td>Precision</td><td align=right><script>document.write(Math.pow(2, PRECISION - 256))</script></td></tr>\
" ;

/*
 * Network info
 */
const char      *HTMLnetwork = "\
<h3><a href=/>Time</a> | <a href=/2>SNTP</a> | Network | <a href=/4>System</a> | <a href=/admin>ADMIN</a></h3>\
<script src=/c></script>\
<table border=1 style=\"font-size:20px ;font-family: terminal ;\" width=500>\
<tr><td>Clock IP</td><td align=right><script>document.write(IP)</script></td></tr>\
<tr><td>Clock MAC</td><td align=right><script>document.write(MAC)</script></td></tr>\
<tr><td>Network Mask</td><td align=right><script>document.write(MASK)</script></td></tr>\
<tr><td>Gateway</td><td align=right><script>document.write(GW)</script></td></tr>\
<tr><td>DNS</td><td align=right><script>document.write(DNS)</script></td></tr>\
<tr><td>Your IP</td><td align=right><script>document.write(CLIENT)</script></td></tr>" ;

/*
 * System info
 */
const char      *HTMLsystem = "\
<h3><a href=/>Time</a> | <a href=/2>SNTP</a> | <a href=/3>Network</a> | System | <a href=/admin>ADMIN</a></h3>\
<script src=/d></script>\
<table border=1 style=\"font-size:20px ;font-family: terminal ;\" width=500>\
<tr><td>Ethernet device</td><td align=right><script>document.write(SYSTEM)</script></td></tr>\
<tr><td>Fosc</td><td align=right><script>document.write(CLK/1000)</script> Mhz</td></tr>\
<tr><td>Up Since</td><td align=right><script>document.write(UP)</script></td></tr>\
<tr><td>HTTP Request #</td><td align=right><script>document.write(REQ)</script></td></tr>" ;

/*
 * ADMIN section (private zone)
 */
const char      *HTMLadmin = "\
<h3><a href=/>Time</a> | <a href=/2>SNTP</a> | <a href=/3>Network</a> | <a href=/4>System</a> | ADMIN</h3>\
<script src=/admin/s></script>\
<table border=1 style=\"font-size:20px ;font-family: terminal ;\" width=500>\
<tr><td>SNTP Server</td><td align=right><script>document.write(SERVER)</script></td></tr>\
<tr><td>Update clock from SNTP</td><td align=right><a href=/admin/r>now</a></td></tr>\
<tr><td>Time Zone</td><td align=right>GMT <script>document.write(TZ)</script></td></tr>\
<tr><td>LCD Line 1</td><td align=right><script>document.write(LCD1)</script></td></tr>\
<tr><td>LCD Line 2</td><td align=right><script>document.write(LCD2)</script></td></tr>\
" ;

/*
 * HTML common footer
 */
const   char    *HTMLfooter = "<HTML><HEAD>\
</table>\
<br>\
See more details on <a href=http://www.micro-examples.com target=_blank>www.micro-examples.com</a>\
<br>\
<a href=http://www.mikroe.com target=_blank>www.mikroe.com</a>\
</center>\
</BODY></HTML>" ;

/*******************************************
 * functions
 */

/*
 * LCD marquee
 */
void    mkMarquee(unsigned char l)
        {
        unsigned char   len ;
        char            marqeeBuff[17] ;

        if((*marquee == 0) || (marquee == 0))
                {
                marquee = bufInfo ;
                }
        if((len=strlen(marquee)) < 16) {
          memcpy(marqeeBuff, marquee, len) ;
          memcpy(marqeeBuff+len, bufInfo, 16-len) ;
        }
        else
          memcpy(marqeeBuff, marquee, 16) ;
        marqeeBuff[16] = 0 ;

        Lcd_Out(l, 1, marqeeBuff) ;
        }

/*
 * put the constant string pointed to by s to the Ethernet controller's transmit buffer.
 */
#define putConstString  Ethernet_putConstString

/*
 * put the string pointed to by s to the Ethernet controller's transmit buffer
 */
#define putString  Ethernet_putString

/*
 * convert l (signed) to ascii string into s, no leading spaces
 */
void    int2str(long l, unsigned char *s)
        {
        unsigned char   i, j, n ;

        if(l == 0)
                {
                s[0] = '0' ;
                s[1] = 0 ;
                }
        else
                {
                if(l < 0)
                        {
                        l *= -1 ;
                        n = 1 ;
                        }
                else
                        {
                        n = 0 ;
                        }
                s[0] = 0 ;
                i = 0 ;
                while(l > 0)
                        {
                        for(j = i + 1 ; j > 0 ; j--)
                                {
                                s[j] = s[j - 1] ;
                                }
                        s[0] = l % 10 ;
                        s[0] += '0' ;
                        i++ ;
                        l /= 10 ;
                        }
                if(n)
                        {
                        for(j = i + 1 ; j > 0 ; j--)
                                {
                                s[j] = s[j - 1] ;
                                }
                        s[0] = '-' ;
                        }
                }
        }

/*
 * convert ip to ascii string into s
 */
void    ip2str(unsigned char *s, unsigned char *ip)
        {
        unsigned char i ;
        unsigned char buf[4] ;

        *s = 0 ;
        for(i = 0 ; i < 4 ; i++)
                {
                int2str(ip[i], buf) ;
                strcat(s, buf) ;
                if(i != 3)
                  strcat(s, ".") ;
                }
        }

/*
 * convert time struct to t to ascii into s
 * m is mode
 */
void    ts2str(unsigned char *s, TimeStruct *t, unsigned char m)
        {
        unsigned char  tmp[6] ;

        /*
         * convert date members
         */
        if(m & TS2STR_DATE)
                {
                strcpy(s, wday[t->wd]) ;        // week day
                strcat(s, " ") ;
                ByteToStr(t->md, tmp) ;         // day num
                strcat(s, tmp + 1) ;
                strcat(s, " ") ;
                strcat(s, mon[t->mo]) ;        // month
                strcat(s, " ") ;
                WordToStr(t->yy, tmp) ;         // year
                strcat(s, tmp + 1) ;
                strcat(s, " ") ;
                }
        else
                {
                *s = 0 ;
                }

        /*
         * convert time members
         */
        if(m & TS2STR_TIME)
                {
                ByteToStr(t->hh, tmp) ;         // hour
                strcat(s, tmp + 1) ;
                strcat(s, ":") ;
                ByteToStr(t->mn, tmp) ;         // minute
                if(*(tmp + 1) == ' ')
                        {
                        *(tmp + 1) = '0' ;
                        }
                strcat(s, tmp + 1) ;
                strcat(s, ":") ;
                ByteToStr(t->ss, tmp) ;         // second
                if(*(tmp + 1) == ' ')
                        {
                        *(tmp + 1) = '0' ;
                        }
                strcat(s, tmp + 1) ;
                }

        /*
         * convert time zone
         */
        if(m & TS2STR_TZ)
                {
                strcat(s, " GMT") ;
                if(conf.tz > 0)
                        {
                        strcat(s, "+") ;
                        }
                int2str(conf.tz, s + strlen(s)) ;
                }
        }

/*
 * convert integer to hex char
 */
unsigned char nibble2hex(unsigned char n)
        {
        n &= 0x0f ;
        if(n >= 0x0a)
                {
                return(n + '7') ;
                }
        return(n + '0') ;
        }

/*
 * convert byte to hex string
 */
void    byte2hex(unsigned char *s, unsigned char v)
        {
        *s++ = nibble2hex(v >> 4) ;
        *s++ = nibble2hex(v) ;
        *s = '.' ;
        }

/*
 * build select HTML tag with LCD options
 */
unsigned int    mkLCDselect(unsigned char l, unsigned char m)
        {
        unsigned char i ;
        unsigned int len ;

        len = putConstString("<select onChange=\\\"document.location.href = '/admin/") ;
        Ethernet_putByte('0' + l) ; len++ ;
        len += putConstString("/' + this.selectedIndex\\\">") ;
        for(i = 0 ; i < 4 ; i++)
                {
                len += putConstString("<option ") ;
                if(i == m)
                        {
                        len += putConstString(" selected") ;
                        }
                len += putConstString(">") ;
                len += putConstString(LCDoption[i]) ;
                }
        len += putConstString("</select>\";") ;
        return(len) ;
        }

/*
 * display line
 */
void mkLCDLine(unsigned char l, unsigned char m)
        {
        switch(m)
                {
                case 0:
                        // build marquee string
                        memset(bufInfo, 0, sizeof(bufInfo)) ;
                        if(lastSync)
                                {
                                // clock is synchronized
                                strcpy(bufInfo, "Today is ") ;
                                ts2str(bufInfo + strlen(bufInfo), &ts, TS2STR_DATE) ;
                                strcat(bufInfo, ". Please visit www.micro-examples.com for more details about the Ethernal Clock. You can browse ") ;
                                ip2str(bufInfo + strlen(bufInfo), ipAddr) ;
                                strcat(bufInfo, " to set the clock preferences.    ") ;
                                }
                        else
                                {
                                // clock is not synchronized
                                strcpy(bufInfo, "The SNTP server did not respond, please browse ") ;
                                ip2str(bufInfo + strlen(bufInfo), ipAddr) ;
                                strcat(bufInfo, " to check clock settings.    ") ;
                                }
                        mkMarquee(l) ;           // display marquee
                        break ;
                case 1:
                        // build date string
                        if(lastSync)
                                {
                                ts2str(bufInfo, &ts, TS2STR_DATE) ;
                                }
                        else
                                {
                                strcpy(bufInfo, "Date Not Ready !") ;
                                }
                        Lcd_Out(l, 1, bufInfo) ;
                        break ;
                case 2:
                        // build time string
                        if(lastSync)
                                {
                                ts2str(bufInfo, &ts, TS2STR_TIME) ;
                                Lcd_Out(l, 4, bufInfo) ;
                                }
                        else
                                {
                                strcpy(bufInfo, "Time Not Ready !") ;
                                Lcd_Out(l, 1, bufInfo) ;
                                }
                        break ;
                }
        }

/*
 * make SNTP request
 */
void    mkSNTPrequest()
        {
        unsigned char sntpPkt[50];
        unsigned char * remoteIpAddr;

        if(reloadDNS)   // is SNTP ip address to be reloaded from DNS ?
                {
                // yes, it can take a while, so display something
                Lcd_Out(2, 1, "Connecting...   ") ;

                if(isalpha(*conf.sntpServer))   // doest host name start with an alphabetic character ?
                        {
                        // yes, try to solve with DNS request
                             memset(conf.sntpIP, 0, 4);
                             if(remoteIpAddr = Ethernet_dnsResolve(conf.sntpServer, 5))
                                {
                                // successful : save IP address
                                memcpy(conf.sntpIP, remoteIpAddr, 4) ;
                                }
                        }
                else
                        {
                        // host name is supposed to be an IP address, directly save it
                        unsigned char *ptr = conf.sntpServer ;

                        conf.sntpIP[0] = atoi(ptr) ;
                        ptr = strchr(ptr, '.') + 1 ;
                        conf.sntpIP[1] = atoi(ptr) ;
                        ptr = strchr(ptr, '.') + 1 ;
                        conf.sntpIP[2] = atoi(ptr) ;
                        ptr = strchr(ptr, '.') + 1 ;
                        conf.sntpIP[3] = atoi(ptr) ;
                        }

                reloadDNS = 0 ;         // no further call to DNS

                sntpSync = 0 ;          // clock is not sync for now
                }

        if(sntpSync)                    // is clock already synchronized from sntp ?
                {
                return ;                // yes, no need to request time
                }

        /*
         * prepare buffer for SNTP request
         */
        memset(sntpPkt, 0, 48) ;        // clear sntp packet

        // FLAGS : byte 0
        sntpPkt[0] = 0b00011001 ;       // LI = 0 ; VN = 3 ; MODE = 1

        // STRATUM : byte 1 = 0

        // POLL : byte 2
        sntpPkt[2] = 0x0a ;             // 1024 sec (arbitrary value)

        // PRECISION : byte 3
        sntpPkt[3] = 0xfa ;             // 0.015625 sec (arbitrary value)

        // DELAY : bytes 4 to 7 = 0.2656 sec (arbitrary value)
        sntpPkt[6] = 0x44 ;

        // DISPERSION : bytes 8 to 11 = 16 sec (arbitrary value)
        sntpPkt[9] = 0x10 ;

        // REFERENCE ID : bytes 12 to 15 = 0 (unspecified)

        // REFERENCE TIMESTAMP : bytes 16 to 23 (unspecified)

        // ORIGINATE TIMESTAMP : bytes 24 to 31 (unspecified)

        // RECEIVE TIMESTAMP : bytes 32 to 39 (unspecified)

        // TRANSMIT TIMESTAMP : bytes 40 to 47 (unspecified)

        Ethernet_sendUDP(conf.sntpIP, 123, 123, sntpPkt, 48) ; // transmit UDP packet

        sntpSync = 1 ;  // done
        lastSync = 0 ;
        }

/*
 * incoming TCP request
 */
unsigned int    Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags *flags)
        {
        unsigned char   dyna[64] ;
        unsigned char   getRequest[HTTP_REQUEST_SIZE + 1] ;

        unsigned int    len = 0 ;
        int    i ;
        unsigned char   admin ;

        // should we close tcp socket after response is sent?
        // library closes tcp socket by default if canClose flag is not reset here
        // flags->canCloseTCP = 0; // 0 - do not close socket
                                   // otherwise - close socket

        if(localPort != 80)                     // I listen only to web request on port 80
                {
                return(0) ;                     // return without reply
                }

        /*
         * parse TCP frame and check for a GET request
         */
        if(HTTP_getRequest(getRequest, &reqLength, HTTP_REQUEST_SIZE) == 0)
                {
                return(0) ;                     // no reply if no GET request
                }

        /*
         * parse TCP frame and try to find basic realm authorization
         */
        admin = HTTP_basicRealm(reqLength, PRIVATE_LOGINPASSWD) ; // admin is set if login+password matches, cleared otherwise

        if(memcmp(getRequest, path_private, sizeof(path_private) - 1) == 0)   // is path under private section ?
                {
                unsigned char   *ptr ;

                // yes, points to sub path
                ptr = getRequest + sizeof(path_private) - 1;

                // check if access is granted
                if(admin == 0)
                        {
                        // no, reply with access denied message
                        len = HTTP_accessDenied(ZONE_NAME, MSG_DENIED) ;
                        }
                else
                        {
                        // yes, parse request
                        if(getRequest[sizeof(path_private)] == 's')
                                {
                                // request for javascript variables
                                len = putConstString(httpHeader) ;              // HTTP header
                                len += putConstString(httpMimeTypeScript) ;     // with script MIME type

                                // LCD line 1 select + options
                                len += putConstString("var LCD1=\"") ;
                                len += mkLCDselect(1, conf.lcdL1) ;

                                // LCD line 2 select + options
                                len += putConstString("var LCD2=\"") ;
                                len += mkLCDselect(2, conf.lcdL2) ;

                                // SNTP host name
                                len += putConstString("var SERVER=\"") ;
                                len += putConstString("<input onChange=\\\"document.location.href = '/admin/n/' + this.value\\\" value=\\\"") ;
                                len += putString(conf.sntpServer) ;
                                len += putConstString("\\\">\" ;") ;

                                // time zone select + options
                                len += putConstString("var TZ=\"") ;
                                len += putConstString("<select onChange=\\\"document.location.href = '/admin/t/' + this.selectedIndex\\\">") ;
                                for(i = -11 ; i < 12 ; i++)
                                        {
                                        len += putConstString("<option ") ;
                                        if(i == conf.tz)
                                                {
                                                len += putConstString(" selected") ;
                                                }
                                        len += putConstString(">") ;
                                        int2str(i, dyna) ;
                                        len += putString(dyna) ;
                                        }
                                len += putConstString("</select>\";") ;
                                }
                        else
                                {
                                // parse path to find parameters
                                switch(getRequest[sizeof(path_private)])
                                        {
                                        case '1' :
                                                // LCD line 1 selection
                                                Lcd_Cmd(_LCD_CLEAR) ;
                                                conf.lcdL1 = getRequest[sizeof(path_private) + 2] - '0' ;
                                                break ;
                                        case '2':
                                                // LCD line 2 selection
                                                Lcd_Cmd(_LCD_CLEAR) ;
                                                conf.lcdL2 = getRequest[sizeof(path_private) + 2] - '0' ;
                                                break ;
                                        case 'r':
                                                // force to renew SNTP request
                                                sntpSync = 0 ;
                                                if (!memcmp(conf.sntpIP, "\0\0\0\0", 4))
                                                  reloadDNS = 1 ; // force to solve DNS
                                                break ;
                                        case 'n':
                                                {
                                                // sntp server host name
                                                unsigned char *src, *dst, i ;

                                                src = &getRequest[sizeof(path_private) + 2] ;
                                                dst = conf.sntpServer ;
                                                for(i = 0 ; i < 128 ; i++)
                                                        {
                                                        *dst = *src++ ;
                                                        if(*dst == ' ')
                                                                {
                                                                *dst = 0 ;
                                                                break ;
                                                                }
                                                        dst++ ;
                                                        }
                                                reloadDNS = 1 ; // force to solve DNS
                                                }
                                                break ;
                                        case 't':
                                                // time zone
                                                conf.tz = atoi(&getRequest[sizeof(path_private) + 2]) ;
                                                conf.tz -= 11 ;
                                                break ;
                                        }

                                // reply to browser with admin HTML page
                                len += putConstString(HTMLheader) ;
                                len += putConstString(HTMLadmin) ;
                                len += putConstString(HTMLfooter) ;
                                }
                        }
                }
        else switch(getRequest[1])
                {
                // not in private zone, parse request path
                case 's':
                        // reply with stylesheet
                        if(lastSync == 0)
                                {
                                len = putConstString(CSSred) ;          // not sync
                                }
                        else
                                {
                                len = putConstString(CSSgreen) ;        // sync
                                }
                        break ;
                case 'a':
                        // reply with clock info javascript variables
                        len = putConstString(httpHeader) ;
                        len += putConstString(httpMimeTypeScript) ;

                        // add date to reply
                        ts2str(dyna, &ts, TS2STR_ALL | TS2STR_TZ) ;
                        len += putConstString("var NOW=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        // add epoch to reply
                        int2str(epoch, dyna) ;
                        len += putConstString("var EPOCH=") ;
                        len += putString(dyna) ;
                        len += putConstString(";") ;

                        // add last sync date
                        if(lastSync == 0)
                                {
                                strcpy(dyna, "???") ;
                                }
                        else
                                {
                                Time_epochToDate(lastSync + conf.tz * 3600, &ls) ;
                                ts2str(dyna, &ls, TS2STR_ALL | TS2STR_TZ) ;
                                }
                        len += putConstString("var LAST=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        break ;

                case 'b':
                        // reply with sntp info javascript variables
                        len = putConstString(httpHeader) ;
                        len += putConstString(httpMimeTypeScript) ;

                        // reply is made of the IP MASK in human readable format
                        ip2str(dyna, conf.sntpIP) ;
                        len += putConstString("var SNTP=\"") ;
                        len += putString(conf.sntpServer) ;
                        len += putConstString(" (") ;
                        len += putString(dyna) ;
                        len += putConstString(")") ;
                        len += putConstString("\";") ;

                        // add sntp stratum to reply
                        if(serverStratum == 0)
                                {
                                strcpy(dyna, "Unspecified") ;
                                }
                        else if(serverStratum == 1)
                                {
                                strcpy(dyna, "1 (primary)") ;
                                }
                        else if(serverStratum < 16)
                                {
                                int2str(serverStratum, dyna) ;
                                strcat(dyna, "(secondary)") ;
                                }
                        else
                                {
                                int2str(serverStratum, dyna) ;
                                strcat(dyna, " (reserved)") ;
                                }
                        len += putConstString("var STRATUM=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        // add sntp flags to reply
                        switch(serverFlags & 0b11000000)
                                {
                                case 0b00000000: strcpy(dyna, "No warning") ; break ;
                                case 0b01000000: strcpy(dyna, "Last minute has 61 seconds") ; break ;
                                case 0b10000000: strcpy(dyna, "Last minute has 59 seconds") ; break ;
                                case 0b11000000: strcpy(dyna, "SNTP server not synchronized") ; break ;
                                }
                        len += putConstString("var LEAP=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        int2str(serverPrecision, dyna) ;
                        len += putConstString("var PRECISION=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        switch(serverFlags & 0b00111000)
                                {
                                case 0b00011000: strcpy(dyna, "IPv4 only") ; break ;
                                case 0b00110000: strcpy(dyna, "IPv4, IPv6 and OSI") ; break ;
                                default: strcpy(dyna, "Undefined") ; break ;
                                }
                        len += putConstString("var VN=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        switch(serverFlags & 0b00000111)
                                {
                                case 0b00000000: strcpy(dyna, "Reserved") ; break ;
                                case 0b00000001: strcpy(dyna, "Symmetric active") ; break ;
                                case 0b00000010: strcpy(dyna, "Symmetric passive") ; break ;
                                case 0b00000011: strcpy(dyna, "Client") ; break ;
                                case 0b00000100: strcpy(dyna, "Server") ; break ;
                                case 0b00000101: strcpy(dyna, "Broadcast") ; break ;
                                case 0b00000110: strcpy(dyna, "Reserved for NTP control message") ; break ;
                                case 0b00000111: strcpy(dyna, "Reserved for private use") ; break ;
                                }
                        len += putConstString("var MODE=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        break ;

                case 'c':
                        // reply with network info javascript variables
                        len = putConstString(httpHeader) ;              // HTTP header
                        len += putConstString(httpMimeTypeScript) ;     // with text MIME type

                        // reply is made of the remote host IP address in human readable format
                        ip2str(dyna, ipAddr) ;
                        len += putConstString("var IP=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        byte2hex(dyna, macAddr[0]) ;
                        byte2hex(dyna + 3, macAddr[1]) ;
                        byte2hex(dyna + 6, macAddr[2]) ;
                        byte2hex(dyna + 9, macAddr[3]) ;
                        byte2hex(dyna + 12, macAddr[4]) ;
                        byte2hex(dyna + 15, macAddr[5]) ;
                        *(dyna + 17) = 0 ;
                        len += putConstString("var MAC=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        // reply is made of the remote host IP address in human readable format
                        ip2str(dyna, remoteHost) ;
                        len += putConstString("var CLIENT=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        // reply is made of the ROUTER address in human readable format
                        ip2str(dyna, gwIpAddr) ;
                        len += putConstString("var GW=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        // reply is made of the IP MASK in human readable format
                        ip2str(dyna, ipMask) ;
                        len += putConstString("var MASK=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        // reply is made of the IP MASK in human readable format
                        ip2str(dyna, dnsIpAddr) ;
                        len += putConstString("var DNS=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        break ;

                case 'd':
                        {
                        // reply with system info javascript variables
                        TimeStruct t ;

                        len = putConstString(httpHeader) ;              // HTTP header
                        len += putConstString(httpMimeTypeScript) ;     // with text MIME type

                        len += putConstString("var SYSTEM=\"PIC18FxxJ60\";") ;

                        int2str(Clock_kHz(), dyna) ;
                        len += putConstString("var CLK=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;

                        // add HTTP requests counter to reply
                        int2str(httpCounter, dyna) ;
                        len += putConstString("var REQ=") ;
                        len += putString(dyna) ;
                        len += putConstString(";") ;

                        Time_epochToDate(epoch - Ethernet_userTimerSec + conf.tz * 3600, &t) ;
                        ts2str(dyna, &t, TS2STR_ALL | TS2STR_TZ) ;
                        len += putConstString("var UP=\"") ;
                        len += putString(dyna) ;
                        len += putConstString("\";") ;


                        break ;
                        }

                case '4':
                        // reply with system info HTML page
                        len += putConstString(HTMLheader) ;
                        len += putConstString(HTMLsystem) ;
                        len += putConstString(HTMLfooter) ;
                        break ;

                case '3':
                        // reply with network info HTML page
                        len += putConstString(HTMLheader) ;
                        len += putConstString(HTMLnetwork) ;
                        len += putConstString(HTMLfooter) ;
                        break ;

                case '2':
                        // reply with sntp info HTML page
                        len += putConstString(HTMLheader) ;
                        len += putConstString(HTMLsntp) ;
                        len += putConstString(HTMLfooter) ;
                        break ;

                case '1':
                default:
                        // reply with clock info HTML page
                        len += putConstString(HTMLheader) ;
                        len += putConstString(HTMLtime) ;
                        len += putConstString(HTMLfooter) ;
                }

        httpCounter++ ;                             // one more request done

        return(len) ;                               // return to the library with the number of bytes to transmit
        }

/*
 * incoming UDP request
 */
unsigned int    Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int destPort, unsigned int reqLength, TEthPktFlags *flags)
        {
        unsigned char   i ;

        if(destPort == 123)             // check SNTP port number
                {
                unsigned long    tts ;

                serverFlags = Ethernet_getByte() ;
                serverStratum = Ethernet_getByte() ;
                Ethernet_getByte() ;        // skip poll
                serverPrecision = Ethernet_getByte() ;

                for(i = 0 ; i < 36 ; i++)
                        {
                        Ethernet_getByte() ; // skip all unused fileds
                        }

                // store transmit timestamp
                Highest(tts) = Ethernet_getByte() ;
                Higher(tts) = Ethernet_getByte() ;
                Hi(tts) = Ethernet_getByte() ;
                Lo(tts) = Ethernet_getByte() ;

                // convert sntp timestamp to unix epoch
                epoch = tts - 2208988800 ;

                // save last synchronization timestamp
                lastSync = epoch ;

                // update display
                marquee = bufInfo ;
                Lcd_Cmd(_LCD_CLEAR) ;
                }
        return(0) ;
        }

/*
 * ISR : triggered by timer 0 rollover
 */
void    interrupt()
        {
        if(INTCON.TMR0IF)                        // timer0 overflow ?
                {
                presTmr++ ;                      // increment prescaler
                            lcdTmr++ ;                       // increment marquee timer
                            if(presTmr > 12206)              // timer 0 overflows 12207 times per second
                  {                              // inc/ovf   overflows  prescaler  Fcy
                                                       //   222   *    1     *    2     *  4  +
                                                       //   256   *  12206   *    2     *  4  +
                                                 //         40         *    2     *  4  +       /* 40 cycles will pass untill we reach timer reload code in the interrupt routine */
                                                 //         2          *    2     *  4  =       /* If the TMR0 register is written to, the increment is inhibited for the following two instruction cycles */
                                                 //                                       25MHz
                        Ethernet_userTimerSec++ ;      // increment ethernet library counter
                        epoch++ ;                      // epoch is RTC counter
                        presTmr = 0 ;                  // reset prescaler
                  TMR0L   = 34 ;                 // first time do 222 increments
                        }
                if(lcdTmr == 2441 )              // it takes lcdTmr arround 2441 increments
                  {                              // for 200ms delays. This is used for lcd
                                                 // refreshing so we do not have to be very accurate
                  lcdEvent = 1;                  // set marquee event
                  lcdTmr = 0;                    // clear marquee timer
                  }
                INTCON.TMR0IF = 0 ;              // clear timer0 overflow flag
                }
        }

/*
 * main entry
 */
void    main()
        {
        /*
         * I/O configuration
         */
        ADCON1 = 0x0F ;
#ifndef P18F452
        CMCON = 0x07 ;
#endif
        // set RA0 and RA1 as outputs to be used as ethernet's LEDA and LEDB
        TRISA &= 0xFC ;

        PORTC = 0 ;
        TRISC = 0b11011100 ;    // set PORTC as input except for bits 0 (RESET) and 1 (CS)

        /*
         * read configuration from EEPROM
         * uncomment the following lines if configuration should be read from eeprom
         */
         // ptr = (unsigned char *)&conf ;
         // for(i = 0 ; i < sizeof(conf) ; i++)
         //        {
         //        *ptr++ = EEPROM_Read(i) ;
         //        }

        /*
         * configure TIMER 0 and interrupts
         */
        T0CON = 0b11000000 ;
        INTCON.TMR0IF = 0 ;       // clear TMR0 overflow interrupt flag
        INTCON.TMR0IE = 1 ;       // enable interrupt on TMR0 overflow
        INTCON.GIE = 1 ;          // enable global & peripheral interrupts

        /*
         * init LCD
         */
        Lcd_Init();
        Lcd_Cmd(_LCD_CLEAR) ;
        Lcd_Cmd(_LCD_CURSOR_OFF) ;
        Lcd_Out(1, 1, "EthClock Welcome");
        Lcd_Out(2, 1, "Ethernet init...") ;

        /*
         * init Ethernet
         */
        Ethernet_Init(macAddr, ipAddr, Ethernet_FULLDUPLEX) ;

        /*
         * try to get an IP address
         */
        Lcd_Out(2, 1, "Registering...  ") ;
        if(Ethernet_getIpAddress()[0] == 0)        // is IP address null ?
                {
                while(Ethernet_initDHCP(5) == 0) ; // try to get one from DHCP until it works
                /*
                 * read network parameters if neccessary
                 * by copying them into your globals,
                 * do NOT modify the contents of the locations pointed to
                 * by pointers which are returned by the below Ethernet_get routines
                 */
                memcpy(ipAddr,    Ethernet_getIpAddress(),    4) ; // get assigned IP address
                memcpy(ipMask,    Ethernet_getIpMask(),       4) ; // get assigned IP mask
                memcpy(gwIpAddr,  Ethernet_getGwIpAddress(),  4) ; // get assigned gateway IP address
                memcpy(dnsIpAddr, Ethernet_getDnsIpAddress(), 4) ; // get assigned dns IP address
                }
        else
                {
                Ethernet_confNetwork(ipMask, gwIpAddr, dnsIpAddr) ; // use configured IP address
                }

        while(1)                            // forever
                {
                /*
                 * if necessary, test the return value to get error code
                 */
                Ethernet_doPacket() ;       // process incoming Ethernet packets


                mkSNTPrequest() ;           // do sntp request if needed

#ifdef WITH_DHCP
                /*
                 * take care of the lease time
                 */
                if(Ethernet_doDHCPLeaseTime())
                        {
                        // is the lease time expired
                        Lcd_Out(2, 1, "DHCPrenewing...  ") ; // display status
                        while (!Ethernet_renewDHCP(5))       // try to renew until it works
                          ;
                        Lcd_Cmd(_LCD_CLEAR) ;
                        }
#endif

                /*
                 * update display
                 */
                Time_epochToDate(epoch + conf.tz * 3600l, &ts) ;
                if(lcdEvent)
                        { // is it time for lcd update
                        mkLCDLine(1, conf.lcdL1) ; // update lcd: first row
                        mkLCDLine(2, conf.lcdL2) ; // update lcd: second row
                        lcdEvent = 0 ;             // clear lcd update flag
                        marquee++ ;                // set marquee pointer
                        }
                }
        }