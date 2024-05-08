//--------------------- User code ---------------------//
#include        "__Ethernet.h"
/************************************************************
 * ROM constant strings
 */
const code unsigned char httpHeader[] = "HTTP/1.1 200 OK\nContent-type: "; // HTTP header
const code unsigned char httpMimeTypeHTML[] = "text/html\n\n"; // HTML MIME type
const code unsigned char httpMimeTypeScript[] = "text/plain\n\n"; // TEXT MIME type
unsigned char httpMethod[] = "GET /";
/*
 * web page, splited into 2 parts :
 * when coming short of ROM, fragmented data is handled more efficiently by linker
 *
 * this HTML page calls the boards to get its status, and builds itself with javascript
 */
const code   char    *indexPage =
"<HTML><HEAD><meta http-equiv=\"refresh\" content=\"3;url=http://10.101.14.36\"><meta charset=\"utf8\"></HEAD><BODY>\
<h1>PIC32 Mini Web Server</h1>\
<a href=/>Reload</a>\
<script src=/s></script>\
<table><tr><td valign=top><table border=1 style=\"font-size:20px ;font-family: terminal ;\">\
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

const code   char    *indexPage2 =  "</table></td><td>\
<table border=1 style=\"font-size:20px ;font-family: terminal ;\">\
<tr><th colspan=3>PORTE</th></tr>\
<script>\
var str,i;\
str=\"\";\
for(i=0;i<8;i++)\
{str+=\"<tr><td bgcolor=yellow>LED E\"+i+\"</td>\";\
if(PORTE&(1<<i)){str+=\"<td bgcolor=red>ON\";}\
else {str+=\"<td bgcolor=#cccccc>OFF\";}\
str+=\"</td><td><a href=/t\"+i+\">Toggle</a></td></tr>\";}\
document.write(str) ;\
</script>\
</table></td></tr></table>\
This is HTTP request #<script>document.write(REQ)</script></BODY></HTML>\
" ;

unsigned char   myMacAddr[6] = {0x00, 0x14, 0xA5, 0x76, 0x19, 0x3f}; // my MAC address
unsigned char   myIpAddr[4]  = {10, 101,  14, 36 }; // my IP address
unsigned char   gwIpAddr[4]  = {10, 101,  14,  1 }; // gateway (router) IP address
unsigned char   ipMask[4]    = {255, 255, 254,  0 }; // network mask (for example : 255.255.255.0)
unsigned char   dnsIpAddr[4] = {10, 101,  14,  99 }; // DNS server IP address

unsigned char   getRequest[15]; // HTTP request buffer
unsigned char   dyna[31] ; // buffer for dynamic response
unsigned long   httpCounter = 0; // counter of HTTP requests

unsigned int    Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int destPort, unsigned int reqLength, TEthPktFlags *flags)
{
    unsigned int    len; // my reply length

    // reply is made of the remote host IP address in human readable format
    ByteToStr(remoteHost[0], dyna); // first IP address byte
    dyna[3] = '.';
    ByteToStr(remoteHost[1], dyna + 4); // second
    dyna[7] = '.';
    ByteToStr(remoteHost[2], dyna + 8); // third
    dyna[11] = '.';
    ByteToStr(remoteHost[3], dyna + 12); // fourth

    dyna[15] = ':'; // add separator

    // then remote host port number
    WordToStr(remotePort, dyna + 16);
    dyna[21] = '[';
    WordToStr(destPort, dyna + 22);
    dyna[27] = ']';
    dyna[28] = 0;

    // the total length of the request is the length of the dynamic string plus the text of the request
    len = 28 + reqLength;

    // puts the dynamic string into the transmit buffer
    Ethernet_putBytes(dyna, 28);

    // then puts the request string converted into upper char into the transmit buffer
    while(reqLength--)
    {
        Ethernet_putByte(toupper(Ethernet_getByte()));
    }

    return(len); // back to the library with the length of the UDP reply
    }

unsigned int    Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags *flags)
{
    unsigned int    len;            // my reply length

    // should we close tcp socket after response is sent?
    // library closes tcp socket by default if canCloseTCP flag is not reset here
    // flags->canCloseTCP = 0; // 0 - do not close socket
                                // otherwise - close socket

    if(localPort != 80) // I listen only to web request on port 80
    {
        return(0);
    }

    // get 10 first bytes only of the request, the rest does not matter here
    for(len = 0; len < 10; len++)
    {
        getRequest[len] = Ethernet_getByte();
    }
    getRequest[len] = 0;
    len = 0;

    if(memcmp(getRequest, httpMethod, 5)) // only GET method is supported here
    {
        return(0);
    }

    httpCounter++; // one more request done

    if(getRequest[5] == 's') // if request path name starts with s, store dynamic data in transmit buffer
    {
        // the text string replied by this request can be interpreted as javascript statements
        // by browsers

        len = Ethernet_putConstString(httpHeader); // HTTP header
        len += Ethernet_putConstString(httpMimeTypeScript); // with text MIME type

        // add PORTB value(buttons) to reply
        len += Ethernet_putConstString("var PORTB=");
        WordToStr(PORTB, dyna);
        len += Ethernet_putString(dyna);
        len += Ethernet_putConstString(";");
        
        // add PORTD value (LEDs) to reply
        len += Ethernet_putConstString("var PORTE=");
        WordToStr(PORTE, dyna);
        len += Ethernet_putString(dyna);
        len += Ethernet_putConstString(";");

        // add HTTP requests counter to reply
        WordToStr(httpCounter, dyna);
        len += Ethernet_putConstString("var REQ=");
        len += Ethernet_putString(dyna);
        len += Ethernet_putConstString(";");
    }
    else if(getRequest[5] == 't') // if request path name starts with t, toggle PORTD (LED) bit number that comes after
    {
        unsigned long   bitMask = 0; // for bit mask

        if(isdigit(getRequest[6])) // if 0 <= bit number <= 9, bits 8 & 9 does not exist but does not matter
        {
            bitMask = getRequest[6] - '0'; // convert ASCII to integer
            bitMask = 1 << bitMask;
            PORTE ^= bitMask; // toggle PORTE with xor operator
        }
    }

    if(len == 0) // what to do by default
    {
        len =  Ethernet_putConstString(httpHeader); // HTTP header
        len += Ethernet_putConstString(httpMimeTypeHTML); // with HTML MIME type
        len += Ethernet_putConstString(indexPage); // HTML page first part
        len += Ethernet_putConstString(indexPage2); // HTML page second part
    }

    return(len); // return to the library with the number of bytes to transmit
}

void InitPHYPins(){
    TRISD11_bit = 0; // ETH_ALT_MDC_BIT
    TRISD8_bit  = 1; // ETH_ALT_MDIO_BIT

    TRISD6_bit  = 0; // ETH_ALT_TXEN_BIT
    TRISF1_bit  = 0; // ETH_ALT_TXD0_BIT
    TRISF0_bit  = 0; // ETH_ALT_TXD1_BIT

    TRISG9_bit  = 1; // ETH_ALT_RXCLK_BIT
    TRISG8_bit  = 1; // ETH_ALT_RXDV_BIT
    TRISB12_bit = 1; // ETH_ALT_RXD0_BIT
    TRISB13_bit = 1; // ETH_ALT_RXD1_BIT
    TRISB11_bit = 1; // ETH_ALT_RXERR_BIT
}
//----------------- End of User code ------------------//
