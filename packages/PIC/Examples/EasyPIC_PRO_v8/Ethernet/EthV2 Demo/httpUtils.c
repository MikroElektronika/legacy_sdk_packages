/*
 * file         : httpUtils.c
 * project      : HTTP utils
 * author       : Bruno Gavand
 * compiler     : mikroC V6.2
 * date         : july 1rst 2007
 *
 * description  :
                Some useful functions for mikroC ethernet library
 *
 * target device :
 *              PIC18 family, should work also on PIC16 with reduced possibilities
 *
 * Licence :
 *      Feel free to use this source code at your own risks.
 *
 * history :
 *      created january 2007
 *
 * see more details on http://www.micro-examples.com/
 */

/*
 * library header
 */
#include        "httpUtils.h"

#define AUTH_STRING             "Authorization: Basic "         // basic realm signature
#define AUTH_STR_MAXLENGTH      128                             // maximum length of base64 encoded username:password (arbitrary limit)

/*
 * some HTTP headers
 */
const unsigned char HTTP_NotFound[]      = "HTTP/1.1 404 Not Found\n\n" ;                        // HTTP reply with error 404
const unsigned char HTTP_HeaderGif[]     = "HTTP/1.1 200 OK\nContent-type: image/gif\n\n" ;      // HTTP reply with GIF image mime type
const unsigned char HTTP_HeaderHtml[]    = "HTTP/1.1 200 OK\nContent-type: text/html\n\n" ;      // HTTP reply with HTML mime type
const unsigned char HTTP_Denied[]        = "HTTP/1.1 401 Authorization Required\nWWW-Authenticate: Basic realm=\"" ;       // HTTP reply with basic realm authorization needed
const unsigned char HTTP_Redir[]         = "HTTP/1.1 301 Moved Permanently\nLocation: " ;        // HTTP reply with redirection

/*
 * This is a base64 coding section taken from http://base64.sourceforge.net/
 *
 * This little utility implements the Base64
 * Content-Transfer-Encoding standard described in
 * RFC1113 (http://www.faqs.org/rfcs/rfc1113.html).
 *
 * This is the coding scheme used by MIME to allow
 * binary data to be transferred by SMTP mail.
 *
 * The following licence agreement is related only to base64 coding section.

   LICENCE :
      Copyright (c) 2001 Bob Trower, Trantor Standard Systems Inc.

      Permission is hereby granted, free of charge, to any person
      obtaining a copy of this software and associated
      documentation files (the "Software"), to deal in the
      Software without restriction, including without limitation
      the rights to use, copy, modify, merge, publish, distribute,
      sublicense, and/or sell copies of the Software, and to
      permit persons to whom the Software is furnished to do so,
      subject to the following conditions:

      The above copyright notice and this permission notice shall
      be included in all copies or substantial portions of the
      Software.

      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
      KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
      WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
      PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
      OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
      OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
      OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
      SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
/*
 * base64 array for reverse coding
 */
const char      HTTP_b64_reverse[] = "|$$$}rstuvwxyz{$$$$$$$>?@ABCDEFGHIJKLMNOPQRSTUVW$$$$$$XYZ[\\]^_`abcdefghijklmnopq" ;

/************************************************
 * PRIVATE FUNCTIONS
 ************************************************/
 
/*
 * decodes a 4 bytes array into a 3 bytes array
 */
void    HTTP_b64_decode4(unsigned char in[4], unsigned char out[3])
        {
        out[0] = (in[0] << 2) | (in[1] >> 4) ;
        out[1] = (in[1] << 4) | (in[2] >> 2) ;
        out[2] = ((in[2] << 6) & 0xc0) | in[3] ;
        }

/*
 * base 64 unencode string src to string dst
 */
void    HTTP_b64_unencode(char *src, char *dst)
        {
        unsigned char in[4], out[3], v;
        int i, len;

        while(*src)
                {
                for(len = 0, i = 0 ; i < 4 && *src ; i++)
                        {
                        v = 0;
                        while(*src && (v == 0))
                                {
                                v = *src++ ;
                                v = ((v < 43 || v > 122) ? 0 : HTTP_b64_reverse[v - 43]) ;
                                if(v)
                                        {
                                        v = ((v == '$') ? 0 : v - 61) ;
                                        }
                                }
                        if(*src)
                                {
                                len++;
                                if(v)
                                        {
                                        in[i] = (v - 1) ;
                                        }
                                }
                        else
                                {
                                in[i] = 0 ;
                                }
                        }

                if(len)
                        {
                        HTTP_b64_decode4(in, out) ;
                        for(i = 0 ; i < len - 1 ; i++)
                                {
                                *dst = out[i] ;
                                dst++ ;
                                }
                        }
                }

        *dst = 0 ;
        }

/*
 * end of base64 coding section
 */
 
/*******************************************
 * PUBLIC FUNCTIONS
 *******************************************/
 
/*
 * try to find base64 encoded passwd in next l HTTP request characters
 * passwd is username:password
 * returns 1 if found, 0 if failed
 */
unsigned char   HTTP_basicRealm(unsigned int l, unsigned char *passwd)
        {
        unsigned int    len = 0 ;       // my reply length
        unsigned int    i ;             // general purpose integers
        unsigned char   auth[AUTH_STR_MAXLENGTH] ;
        unsigned char   login[LOGINPASSWD_MAXLENGTH + 1] ;
        unsigned char   found ;

        i = 0 ;
        found = 0 ;
        while(l--)
                {
                auth[i] = Ethernet_getByte() ;
                if((auth[i] < 32) || (i == AUTH_STR_MAXLENGTH - 1))
                        {
                        if(memcmp(auth, AUTH_STRING, sizeof(AUTH_STRING) - 1) == 0)
                                {
                                auth[i] = 0 ;
                                HTTP_b64_unencode(auth + sizeof(AUTH_STRING) - 1, login) ;
                                if(strcmp(login, passwd) == 0)
                                        {
                                        found = 1 ;
                                        }
                                break ;
                                }
                        i = 0 ;
                        }
                else
                        {
                        i++ ;
                        }
                }

        return(found) ;
        }

/*
 * simplified routine to extract document name of a GET request from HTTP header
 * document name is copied to buffer buf
 * len points to the remaining length of the request to parse
 * max is buf size
 * returns 1 if GET request if found, 0 otherwise
 */
unsigned char   HTTP_getRequest(unsigned char *buf, unsigned int *len, unsigned int max)
        {
        unsigned int    i ;

        /*
         * check if GET method is invoked
         */
        if((Ethernet_getByte() != 'G')
                || (Ethernet_getByte() != 'E')
                || (Ethernet_getByte() != 'T')
                || (Ethernet_getByte() != ' ')
                )
                {
                return(0) ;
                }

        /*
         * yes, copy the following string to buf, until a separator is found or buffer size limit
         */
        for(i = 0 ; (i < max) && *len ; i++, buf++)
                {
                *buf = Ethernet_getByte() ;
                (*len)-- ;
                if(*buf < 32) break ;
                }
        *(buf) = 0 ;

        return(1) ;
        }

/*
 * reply with http code 401 (private)
 * the browser will pop up the authorization window to ask user for username + password
 * zone name zn is usually shown in the browser authorization window
 * if the user cancels the request, or after some attempts (usually 3),
 * the browser will show the message pointed to by m
 * if the user enters a username + password, the browser will encode it in base64
 * and add it to the header of a new HTTP request to the same document
 * if the server respond with anything but a new code 401, the browser will
 * add it also to the future requests
 * return : number of bytes added added to the transmit buffer
 */
unsigned int    HTTP_accessDenied(const unsigned char *zn, const unsigned char *m)
        {
        unsigned int len ;

        len = Ethernet_putConstString(HTTP_Denied) ;
        len += Ethernet_putConstString(zn) ;
        len += Ethernet_putConstString("\"\n\n") ;
        len += Ethernet_putConstString(m) ;

        return(len) ;
        }

/*
 * ask browser to redirect to new location url
 * return : number of bytes added added to the transmit buffer
 */
unsigned int    HTTP_redirect(unsigned char *url)
        {
        unsigned int len ;

        len = Ethernet_putConstString(HTTP_Redir) ;
        len += Ethernet_putString(url) ;
        len += Ethernet_putConstString("\n\n") ;

        return(len) ;
        }

/*
 * send an HTML web page to the browser
 * return : number of bytes added added to the transmit buffer
 */
unsigned int    HTTP_html(const unsigned char *html)
        {
        unsigned int len ;

        len = Ethernet_putConstString(HTTP_HeaderHtml) ;
        len += Ethernet_putConstString(html) ;

        return(len) ;
        }

/*
 * send a GIF image to the browser
 * return : number of bytes added added to the transmit buffer
 */
unsigned int    HTTP_imageGIF(const unsigned char *img, unsigned int l)
        {
        unsigned int len ;

        len = Ethernet_putConstString(HTTP_HeaderGif) ;
        Ethernet_putConstBytes(img, l) ;
        len += l;

        return(len) ;
        }

/*
 * send an error 404 (not found) to the browser
 * return : number of bytes added added to the transmit buffer
 */
unsigned int    HTTP_error()
        {
        int len;
        
        len = Ethernet_putConstString(HTTP_NotFound) ;

        return(len) ;
        }
