/*
 * Project Name:
     Basic_Realm
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Revision History:
     - Initial release
 * Description  :
               This program show how to use the HTTP utils mini-library,
               to build a private web zone (username + password needed)
               with basic realm authentication method.
                                username: mikroe
                                password: basicrealm
               Includes also some other useful functions and methods.
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
       change this configuration.  Otherwise, half duplex should always be used.
 */

/*
 * library header
 */

#include   "__EthJ60.h"
#include   "httpUtils.h"

/*
 * pictures
 */
#include  "pictures.h"

/*
 * HTTP request buffer size (extra bytes will be ignored)
 */
#define  HTTP_REQUEST_SIZE 50

/*
 * username and password of the private zone,
 * separated by a period
 */
#define PRIVATE_LOGINPASSWD     "mikroe:basicrealm"

/*
 * reply message if authorization fails or if user gives up
 */
#define MSG_DENIED              "Authorization Required"

/*
 * private web zone name, will be displayed by the browser
 */
#define ZONE_NAME               "HTTP Utils private zone"

/*
 * main page : public zone
 */
const unsigned char publicHTML[] = "<html><body>\
<center>\
<h1>Basic Realm Authentication for mikroC Ethernet Library</h1>\
<h2>\
<img src=\"/stop.gif\">\
<a href=\"/private\"> Click here to enter private area </a>\
<img src=\"/stop.gif\">\
</h2>\
</center>\
</body></html>" ;

/*
 * second page : private zone
 */
const unsigned char privateHTML[] = "<html><body>\
<center>\
<h2>\
<font color=red>\
<h1>Welcome to the private area</h1>\
<img src=\"/good.gif\">\
<a href=\"/private/redirect\">Click here to be redirected to a great web site</a>\
<img src=\"/good.gif\">\
</font>\
</h2>\
</center>\
</body></html>" ;

/*
 * path names
 */
unsigned char path_private[]    = "/private" ;          // private zone
unsigned char path_redirect[]   = "/redirect" ;         // redirect under private zone
unsigned char path_stop[]       = "/stop.gif" ;         // image
unsigned char path_good[]       = "/good.gif" ;         // another image

/*
 * put your network settings here
 */
unsigned char   myMacAddr[6] = {0x00, 0x14, 0xA5, 0x76, 0x19, 0x3f} ;   // ethernet board MAC address
unsigned char   myIpAddr[4]  = {10, 101, 14, 36 } ;                     // my IP address
unsigned char   gwIpAddr[4]  = {10, 101, 14, 1 } ;                      // gateway (router) IP address
unsigned char   ipMask[4]    = {255, 255, 255,  0 } ;                   // network mask (for example : 255.255.255.0)
unsigned char   dnsIpAddr[4] = {10, 101, 14, 99 } ;                     // DNS server IP address

/*
 * URL for redirection
 */
unsigned char redirURL[]          = "http://www.mikroe.com/" ;

/*
 * buffer to receive a copy of HTTP request
 */
unsigned char http_request[HTTP_REQUEST_SIZE + 1] ;

/*
 * no reply to UDP requests
 */
unsigned int    Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int destPort, unsigned int reqLength, TEthPktFlags *flags)
        {
        return(0) ;
        }

/*
 * TCP request processing
 */
unsigned int    Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags *flags)
        {
        unsigned int    len = 0 ;       // my reply length
        unsigned char   admin ;         // admin flag set when private zon is allowed
        unsigned char   *ptr ;          // pointer to buffer

        // should we close tcp socket after response is sent?
        // library closes tcp socket by default if canClose flag is not reset here
        // flags->canCloseTCP = 0; // 0 - do not close socket
                                   // otherwise - close socket

        /*
         * check if request is on TCP port 80 (HTTP)
         */
        if(localPort != 80)
                {
                return(0) ;             // no reply to other ports
                }

        /*
         * check for a GET request
         */
        if(HTTP_getRequest(http_request, &reqLength, HTTP_REQUEST_SIZE) == 0)
                {
                return(0) ;             // no reply if not found
                }

        /*
         * try to find authorization
         */
        admin = HTTP_basicRealm(reqLength, PRIVATE_LOGINPASSWD) ;

        /*
         * process request string
         */
        if(memcmp(http_request, path_private, sizeof(path_private) - 1) == 0)   // is path under private section ?
                {
                // yes, points to sub path
                ptr = http_request + sizeof(path_private) - 1;

                // check if access is granted
                if(admin == 0)
                        {
                        // no, reply with access denied message
                        len = HTTP_accessDenied(ZONE_NAME, MSG_DENIED) ;
                        }
                else
                        {
                        // yes, test path if redirection is requested
                        if(memcmp(ptr, path_redirect, sizeof(path_redirect) - 1) == 0)
                                {
                                // yes, reply with redirect string
                                len = HTTP_redirect(redirURL) ;
                                }
                        else
                                {
                                // no, reply with private page
                                len = HTTP_html(privateHTML) ;
                                }
                        }
                }
        else if(memcmp(http_request, path_stop, strlen(path_stop)) == 0)        // is 'stop' image requested ?
                {
                // yes, reply with image header and dump image
                len = HTTP_imageGIF(dump_stop_GIF, DUMP_STOP_GIF_SIZE) ;
                }
        else if(memcmp(http_request, path_good, strlen(path_good)) == 0)        // is 'good' image requested ?
                {
                // yes, reply with image header and dump image
                len = HTTP_imageGIF(dump_good_GIF, DUMP_GOOD_GIF_SIZE) ;
                }
        else if(memcmp(http_request, "/", 1) == 0)                              // is home page requested ?
                {
                // yes, reply with html header and dump page
                len = HTTP_html(publicHTML) ;
                }
        else
                {
                // any other case, reply with error 404 (not found)
                len = HTTP_error() ;
                }

        return(len) ;   // return reply buffer length to library
        }

/*
 * program entry point
 */
void    main()
        {
        ADCON1 |= 0x0F;                  // Configure AN pins as digital
        CMCON  |= 7;                     // Turn off comparators

        Ethernet_Init(myMacAddr, myIpAddr, 1) ; // init ethernet board

        // dhcp will not be used here, so use preconfigured addresses
        Ethernet_confNetwork(ipMask, gwIpAddr, dnsIpAddr) ;

        for(;;)         // forever
                {
                /*
                 * if necessary, test the return value to get error code
                 */
                Ethernet_doPacket() ;   // process incoming Ethernet packets and do services
                }
        }
