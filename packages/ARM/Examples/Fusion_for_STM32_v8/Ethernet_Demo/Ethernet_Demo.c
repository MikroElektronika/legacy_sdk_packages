/*
 * Project Name:
     Ethernet_Demo (Ethernet Library demo for internal Ethernet module)
 * Copyright:
     (c) Mikroelektronika, 2019.

 * description  :
 *      this code shows how to use the Ethernet library :
 *              the board will reply to ARP & ICMP echo requests
 *              the board will reply to UDP requests on any port :
 *                      returns the request in upper char with a header made of remote host IP & port number
 *              the board will reply to HTTP requests on port 80, GET method with pathnames :
 *                      /               will return the HTML main page
 *                      /s              will return board status as text string
 *                      /t0 ... /t7     will toggle RD8 to RD15 bit and return HTML main page
 *                      all other requests return also HTML main page
 *
 * Test configuration:
     Device:          STM32F407ZG
                      https://www.st.com/resource/en/datasheet/stm32f407zg.pdf
     Dev.Board:       Fusion for STM32 v8
                      https://www.mikroe.com/fusion-for-stm
                      ac:ETHERNET
     Oscillator:      HSE-PLL, 150.000MHz
     Ext. Modules:    None.
     SW:              NECTO Studio
                      https://mikroe.com/necto
 * NOTES:
     - Pull-down PORTB/L pins (board specific)
     - Turn ON button press level for PORTB/L at SW3.3 (board specific).
     - Turn ON PORTD/H LEDs at SW4.8 (board specific).

 */

#include "__Ethernet_Intern.h"
#include "ctype.h"
#include "string.h"

const code unsigned char httpHeader[] = "HTTP/1.1 200 OK\nContent-type: ";  // HTTP header
const code unsigned char httpMimeTypeHTML[] = "text/html\n\n";              // HTML MIME type
const code unsigned char httpMimeTypeScript[] = "text/plain\n\n";           // TEXT MIME type
unsigned char httpMethod[] = "GET /";
/*
 * web page, splited into 2 parts :
 * when coming short of ROM, fragmented data is handled more efficiently by linker
 *
 * this HTML page calls the boards to get its status, and builds itself with javascript
 */
const code   char    *indexPage =                   // Change the IP address of the page to be refreshed
"<HTML><HEAD><meta http-equiv=\"refresh\" content=\"3;url=http://10.101.14.36\"><meta charset=\"utf8\"></HEAD><BODY>\
<h1>STM32F Mini Web Server</h1>\
<a href=/>Reload</a>\
<script src=/s></script>\
<table><tr><td valign=top><table border=1 style=\"font-size:20px ;font-family: terminal ;\">\
<tr><th colspan=2>PORTB</th></tr>\
<script>\
var str,i;\
str=\"\";\
for(i=0;i<8;i++)\
{str+=\"<tr><td bgcolor=pink>BUTTON PB\"+i+\"</td>\";\
if(PORTB&(1<<i)){str+=\"<td bgcolor=red>ON\";}\
else {str+=\"<td bgcolor=#cccccc>OFF\";}\
str+=\"</td></tr>\";}\
document.write(str) ;\
</script>\
" ;

const code   char    *indexPage2 =  "</table></td><td>\
<table border=1 style=\"font-size:20px ;font-family: terminal ;\">\
<tr><th colspan=3>PORTD</th></tr>\
<script>\
var str,i;\
str=\"\";\
for(i=8;i<16;i++)\
{str+=\"<tr><td bgcolor=yellow>LED D\"+i+\"</td>\";\
if(PORTD&(1<<i-8)){str+=\"<td bgcolor=red>ON\";}\
else {str+=\"<td bgcolor=#cccccc>OFF\";}\
str+=\"</td><td><a href=/t\"+(i-8)+\">Toggle</a></td></tr>\";}\
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

unsigned char   remoteIpAddr[4]  = {10, 101, 14, 36 };                  // my IP address

/*******************************************
 * functions
 */

/*
 * this function is called by the library
 * the user accesses to the HTTP request by successive calls to Ethernet_Intern_getByte()
 * the user puts data in the transmit buffer by successive calls to Ethernet_Intern_putByte()
 * the function must return the length in bytes of the HTTP reply, or 0 if nothing to transmit
 *
 * if you don't need to reply to HTTP requests,
 * just define this function with a return(0) as single statement
 *
 */
unsigned int    Ethernet_Intern_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthInternPktFlags *flags)
        {
        unsigned int    len;       // my reply length
        char tmp;
        // should we close tcp socket after response is sent?
        // library closes tcp socket by default if canCloseTCP flag is not reset here
        // flags->canCloseTCP = 0; // 0 - do not close socket
                                   // otherwise - close socke

        if(localPort != 80)        // I listen only to web request on port 80
                {
                return(0);
                }


        // get 10 first bytes only of the request, the rest does not matter here
        for(len = 0; len < 10; len++)
        {
        getRequest[len] = Ethernet_Intern_getByte();
        }
        getRequest[len] = 0;
        len = 0;

        if(memcmp(getRequest, httpMethod, 5))       // only GET method is supported here
                {
                return(0);
                }

        httpCounter++;                              // one more request done

        if(getRequest[5] == 's')                    // if request path name starts with s, store dynamic data in transmit buffer
                {
                // the text string replied by this request can be interpreted as javascript statements
                // by browsers

                len = Ethernet_Intern_putConstString(httpHeader);              // HTTP header
                len += Ethernet_Intern_putConstString(httpMimeTypeScript);     // with text MIME type

                // add PORTB value (buttons) to reply
                len += Ethernet_Intern_putConstString("var PORTB=");
                WordToStr(GPIOB_IDR, dyna);
                len += Ethernet_Intern_putString(dyna);
                len += Ethernet_Intern_putConstString(";");

                // add PORTD value (LEDs) to reply
                len += Ethernet_Intern_putConstString("var PORTD=");
                WordToStr(GPIOD_ODR >> 8, dyna);
                len += Ethernet_Intern_putString(dyna);
                len += Ethernet_Intern_putConstString(";");

                // add HTTP requests counter to reply
                WordToStr(httpCounter, dyna);
                len += Ethernet_Intern_putConstString("var REQ=");
                len += Ethernet_Intern_putString(dyna);
                len += Ethernet_Intern_putConstString(";");
                }
        else if(getRequest[5] == 't')                          // if request path name starts with t, toggle PORTD (LED) bit number that comes after
                {
                unsigned long   bitMask = 0;                   // for bit mask

                if(isdigit(getRequest[6]))                     // if 0 <= bit number <= 9, bits 8 & 9 does not exist but does not matter
                        {
                        bitMask = getRequest[6] - '0';         // convert ASCII to integer
                        bitMask = 1 << (bitMask + 8);                // create bit mask
                        GPIOD_ODR = GPIOD_ODR ^ bitMask;       // toggle PORTD with xor operator
                        }
                }

        if(len == 0)                                           // what do to by default
                {
                len =  Ethernet_Intern_putConstString(httpHeader);             // HTTP header
                len += Ethernet_Intern_putConstString(httpMimeTypeHTML);       // with HTML MIME type
                len += Ethernet_Intern_putConstString(indexPage);              // HTML page first part
                len += Ethernet_Intern_putConstString(indexPage2);             // HTML page second part
                }

        return(len);                                           // return to the library with the number of bytes to transmit
        }

unsigned int    Ethernet_Intern_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int destPort, unsigned int reqLength, TEthInternPktFlags *flags) {
        unsigned int    len;                           // my reply length
        char tmp;

        if(destPort != 10001)
          return 0;
        // reply is made of the remote host IP address in human readable format
        ByteToStr(remoteHost[0], dyna);                // first IP address byte
        dyna[3] = '.';
        ByteToStr(remoteHost[1], dyna + 4);            // second
        dyna[7] = '.';
        ByteToStr(remoteHost[2], dyna + 8);            // third
        dyna[11] = '.';
        ByteToStr(remoteHost[3], dyna + 12);           // fourth

        dyna[15] = ':';                                // add separator

        // then remote host port number
        WordToStr(remotePort, dyna + 16);
        dyna[21] = '[';
        WordToStr(destPort, dyna + 22);
        dyna[27] = ']';
        dyna[28] = 0;

        // the total length of the request is the length of the dynamic string plus the text of the request
        len = 28 + reqLength;

        // puts the dynamic string into the transmit buffer
        Ethernet_Intern_putBytes(dyna, 28);

        // then puts the request string converted into upper char into the transmit buffer
        while(reqLength--)
                {
                tmp = Ethernet_Intern_getByte();
                Ethernet_Intern_putByte(toupper(tmp));
                }

        return(len);           // back to the library with the length of the UDP reply
        }

void main() {

  GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_LOW);
  GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_HIGH);

  Ethernet_Intern_Init(myMacAddr, myIpAddr, _ETHERNET_AUTO_NEGOTIATION, &_GPIO_MODULE_ETHERNET);
  Ethernet_Intern_confNetwork(ipMask, gwIpAddr, dnsIpAddr);

  while(1) {
    /*
     * if necessary, test the return value to get error code
     */
    Ethernet_Intern_doPacket();   // process incoming Ethernet packets

    /*
     * add your stuff here if needed
     * Ethernet_Intern_doPacket() must be called as often as possible
     * otherwise packets could be lost
     */
  }

}
