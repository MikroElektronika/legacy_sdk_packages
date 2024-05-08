/*
 * Project Name:
     http_Demo (Ethernet Library demo for MCUs with built-in ethernet module)
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
       - Initial release
 * Description  :
       this code shows how to use the Ethernet mini library :
               the board will reply to ARP & ICMP echo requests
               the board will reply to UDP requests on any port :
                       returns the request in upper char with a header made of remote host IP & port number
               the board will reply to HTTP requests on port 80, GET method with pathnames :
                       /               will return the HTML main page
                       /s              will return board status as text string
                       /t0 ... /t7     will toggle RD0 to RD2 bit and return HTML main page
                       all other requests return also HTML main page
 * Test configuration:
     MCU:             PIC18F97J60
                      http://ww1.microchip.com/downloads/en/DeviceDoc/39762d.pdf
     Dev.Board:       EasyPIC PRO v8
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS, 25.0000 MHz
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Since the internal ethernet module doesn't support auto-negotiation, full-duplex mode is
       not compatible with most switches/routers.  If a dedicated network is used
       where the duplex of the remote node can be manually configured, you may
       change this configuration. Otherwise, half duplex should always be used.
     - Turn on LEDA and LEDB LEDs on switch SW4.1 and SW4.2 (board specific)
     - Turn ON the PORTD LEDs at SW4.4 (board specific)
     - Put PB Button Level Switch into VCC position and pull-down PORTB (board specific)
 */

#include   "__EthJ60.h"

#define Ethernet_HALFDUPLEX     0
#define Ethernet_FULLDUPLEX     1

/************************************************************
 * ROM constant strings
 */
const unsigned char httpHeader[] = "HTTP/1.1 200 OK\nContent-type: " ;  // HTTP header
const unsigned char httpMimeTypeHTML[] = "text/html\n\n" ;              // HTML MIME type
const unsigned char httpMimeTypeScript[] = "text/plain\n\n" ;           // TEXT MIME type
unsigned char httpMethod[] = "GET /";
/*
 * web page, splited into 2 parts :
 * when coming short of ROM, fragmented data is handled more efficiently by linker
 *
 * this HTML page calls the boards to get its status, and builds itself with javascript
 */
const   char    *indexPage =                   // Change the IP address of the page to be refreshed
"<meta http-equiv=\"refresh\" content=\"3;url=http://10.101.14.36\">\
<HTML><HEAD></HEAD><BODY>\
<h1>PIC18FxxJ60 Mini Web Server</h1>\
<a href=/>Reload</a>\
<script src=/s></script>\
<table><tr><td valign=top><table border=1 style=\"font-size:20px ;font-family: terminal ;\">\
</table></td><td><table border=1 style=\"font-size:20px ;font-family: terminal ;\">\
<tr><th colspan=2>PORTB</th></tr>\
<script>\
var str,i;\
str=\"\";\
for(i=0;i<8;i++)\
{str+=\"<tr><td bgcolor=pink>BUTTON RB\"+i+\"</td>\";\
if(PORTB&(1<<i)){str+=\"<td bgcolor=red>ON\";}\
else {str+=\"<td bgcolor=#cccccc>OFF\";}\
str+=\"</td></tr>\";}\
document.write(str) ;\
</script>\
" ;

const   char    *indexPage2 =  "</table></td><td valign=top>\
<table border=1 style=\"font-size:20px ;font-family: terminal ;\">\
<tr><th colspan=3>PORTD</th></tr>\
<script>\
var str,i;\
str=\"\";\
for(i=0;i<3;i++)\
{str+=\"<tr><td bgcolor=yellow>LED RD\"+i+\"</td>\";\
if(PORTD&(1<<i)){str+=\"<td bgcolor=red>ON\";}\
else {str+=\"<td bgcolor=#cccccc>OFF\";}\
str+=\"</td><td><a href=/t\"+i+\">Toggle</a></td></tr>\";}\
document.write(str) ;\
</script>\
</table></td></tr></table>\
This is HTTP request #<script>document.write(REQ)</script></BODY></HTML>\
" ;

/***********************************
 * RAM variables
 */
unsigned char   myMacAddr[6] = {0x00, 0x14, 0xA5, 0x76, 0x19, 0x3f} ;   // my MAC address
unsigned char   myIpAddr[4]  = {10, 101, 14, 36 } ;                     // my IP address
unsigned char   gwIpAddr[4]  = {10, 101, 14, 1 } ;                      // gateway (router) IP address
unsigned char   ipMask[4]    = {255, 255, 255,  0 } ;                   // network mask (for example : 255.255.255.0)
unsigned char   dnsIpAddr[4] = {10, 101, 14, 99 } ;                     // DNS server IP address

unsigned char   getRequest[15] ;                                        // HTTP request buffer
unsigned char   dyna[30] ;                                              // buffer for dynamic response
unsigned long   httpCounter = 0 ;                                       // counter of HTTP requests

/*******************************************
 * functions
 */

/*
 * put the constant string pointed to by s to the Ethernet controller's transmit buffer.
 */
#define putConstString  Ethernet_putConstString

/*
 * put the string pointed to by s to the Ethernet controller's transmit buffer
 */
#define putString  Ethernet_putString

/*
 * this function is called by the library
 * the user accesses to the HTTP request by successive calls to Ethernet_getByte()
 * the user puts data in the transmit buffer by successive calls to Ethernet_putByte()
 * the function must return the length in bytes of the HTTP reply, or 0 if nothing to transmit
 *
 * if you don't need to reply to HTTP requests,
 * just define this function with a return(0) as single statement
 *
 */
unsigned int    Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags *flags)
        {
        unsigned int    len = 0 ;                   // my reply length
        unsigned char   i ;                         // general purpose char

        // should we close tcp socket after response is sent?
        // library closes tcp socket by default if canClose flag is not reset here
        // flags->canCloseTCP = 0; // 0 - do not close socket
                                   // otherwise - close socket

        if(localPort != 80)                         // I listen only to web request on port 80
                {
                return(0) ;
                }

        // get 10 first bytes only of the request, the rest does not matter here
        for(i = 0 ; i < 10 ; i++)
                {
                getRequest[i] = Ethernet_getByte() ;
                }
        getRequest[10] = 0 ;

        if(memcmp(getRequest, httpMethod, 5))       // only GET method is supported here
                {
                return(0) ;
                }

        httpCounter++ ;                             // one more request done

        if(getRequest[5] == 's')                    // if request path name starts with s, store dynamic data in transmit buffer
                {
                // the text string replied by this request can be interpreted as javascript statements
                // by browsers

                len = putConstString(httpHeader) ;              // HTTP header
                len += putConstString(httpMimeTypeScript) ;     // with text MIME type

                // add PORTB value (buttons) to reply
                len += putConstString("var PORTB=") ;
                IntToStr(PORTB, dyna) ;
                len += putString(dyna) ;
                len += putConstString(";") ;

                // add PORTD value (LEDs) to reply
                len += putConstString("var PORTD=") ;
                IntToStr(PORTD, dyna) ;
                len += putString(dyna) ;
                len += putConstString(";") ;

                // add HTTP requests counter to reply
                IntToStr(httpCounter, dyna) ;
                len += putConstString("var REQ=") ;
                len += putString(dyna) ;
                len += putConstString(";") ;
                }
        else if(getRequest[5] == 't')                           // if request path name starts with t, toggle PORTD (LED) bit number that comes after
                {
                unsigned char   bitMask = 0 ;                   // for bit mask

                if(isdigit(getRequest[6]))                      // if 0 <= bit number <= 9, bits 8 & 9 does not exist but does not matter
                        {
                        bitMask = getRequest[6] - '0' ;         // convert ASCII to integer
                        bitMask = 1 << bitMask ;                // create bit mask
                        PORTD ^= bitMask ;                      // toggle PORTD with xor operator
                        }
                }

        if(len == 0)                                            // what do to by default
                {
                len =  putConstString(httpHeader) ;             // HTTP header
                len += putConstString(httpMimeTypeHTML) ;       // with HTML MIME type
                len += putConstString(indexPage) ;              // HTML page first part
                len += putConstString(indexPage2) ;             // HTML page second part
                }

        return(len) ;                                           // return to the library with the number of bytes to transmit
        }

/*
 * this function is called by the library
 * the user accesses to the UDP request by successive calls to Ethernet_getByte()
 * the user puts data in the transmit buffer by successive calls to Ethernet_putByte()
 * the function must return the length in bytes of the UDP reply, or 0 if nothing to transmit
 *
 * if you don't need to reply to UDP requests,
 * just define this function with a return(0) as single statement
 *
 */
unsigned int    Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int destPort, unsigned int reqLength, TEthPktFlags *flags)
        {
        unsigned int    len ;                           // my reply length

        // reply is made of the remote host IP address in human readable format
        ByteToStr(remoteHost[0], dyna) ;                // first IP address byte
        dyna[3] = '.' ;
        ByteToStr(remoteHost[1], dyna + 4) ;            // second
        dyna[7] = '.' ;
        ByteToStr(remoteHost[2], dyna + 8) ;            // third
        dyna[11] = '.' ;
        ByteToStr(remoteHost[3], dyna + 12) ;           // fourth

        dyna[15] = ':' ;                                // add separator

        // then remote host port number
        WordToStr(remotePort, dyna + 16) ;
        dyna[21] = '[' ;
        WordToStr(destPort, dyna + 22) ;
        dyna[27] = ']' ;
        dyna[28] = 0 ;

        // the total length of the request is the length of the dynamic string plus the text of the request
        len = 28 + reqLength;

        // puts the dynamic string into the transmit buffer
        Ethernet_putBytes(dyna, 28) ;

        // then puts the request string converted into upper char into the transmit buffer
        while(reqLength--)
                {
                Ethernet_putByte(toupper(Ethernet_getByte())) ;
                }

        return(len) ;           // back to the library with the length of the UDP reply
        }

/*
 * main entry
 */
void    main()
        {

        PORTB = 0 ;
        TRISB = 0xff ;          // set PORTB as input for buttons

        PORTD = 0 ;
        TRISD = 0 ;             // set PORTD as output

        /*
         * Initialize Ethernet controller
         */
        Ethernet_Init(myMacAddr, myIpAddr, Ethernet_FULLDUPLEX) ;

        // dhcp will not be used here, so use preconfigured addresses
        Ethernet_confNetwork(ipMask, gwIpAddr, dnsIpAddr) ;

        while(1)                        // do forever
                {
                /*
                 * if necessary, test the return value to get error code
                 */
                Ethernet_doPacket() ;   // process incoming Ethernet packets

                /*
                 * add your stuff here if needed
                 * Ethernet_doPacket() must be called as often as possible
                 * otherwise packets could be lost
                 */
                }
        }
