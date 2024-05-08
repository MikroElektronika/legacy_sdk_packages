/*
 * file         : T6963C.h
 * project      : T6963C GRAPHIC LCD PIC LIBRARY
 * author       : Bruno Gavand
 * ctime        : Jun 06 2005
 * mtime        : Jan 27 2006
 * description  :
 */

#ifndef __SPIT6963C_H__
#define __SPIT6963C_H__

/***********************************************
 * T6963C CONSTANT DEFINITIONS
 ***********************************************/
#define SPI_T6963C_CHARACTER_HEIGHT                 8       // character height in pixel

/*
 * command set
 * see T6963C datasheet
 */
#define SPI_T6963C_CURSOR_POINTER_SET               0b00100001
#define SPI_T6963C_OFFSET_REGISTER_SET              0b00100010
#define SPI_T6963C_ADDRESS_POINTER_SET              0b00100100

#define SPI_T6963C_TEXT_HOME_ADDRESS_SET            0b01000000
#define SPI_T6963C_TEXT_AREA_SET                    0b01000001
#define SPI_T6963C_GRAPHIC_HOME_ADDRESS_SET         0b01000010
#define SPI_T6963C_GRAPHIC_AREA_SET                 0b01000011

#define SPI_T6963C_ROM_MODE_OR                      0b10000000
#define SPI_T6963C_ROM_MODE_XOR                     0b10000001
#define SPI_T6963C_ROM_MODE_AND                     0b10000011
#define SPI_T6963C_ROM_MODE_TEXT                    0b10000100

#define SPI_T6963C_RAM_MODE_OR                      0b10001000
#define SPI_T6963C_RAM_MODE_XOR                     0b10001001
#define SPI_T6963C_RAM_MODE_AND                     0b10001011
#define SPI_T6963C_RAM_MODE_TEXT                    0b10001100

#define SPI_T6963C_DISPLAY_MASK                     0b10010000
#define SPI_T6963C_DISPLAY_GRAPHICS_BIT             F3
#define SPI_T6963C_DISPLAY_TEXT_BIT                 F2
#define SPI_T6963C_DISPLAY_CURSOR_BIT               F1
#define SPI_T6963C_DISPLAY_CURSOR_BLINK_BIT         F0

#define SPI_T6963C_CURSOR_PATTERN_MASK              0b10100111

#define SPI_T6963C_DATA_AUTO_WRITE_SET              0b10110000
#define SPI_T6963C_DATA_AUTO_READ_SET               0b10110001
#define SPI_T6963C_DATA_AUTO_RESET                  0b10110010

#define SPI_T6963C_DATA_WRITE_AUTO_INCREMENT        0b11000000
#define SPI_T6963C_DATA_READ_AUTO_INCREMENT         0b11000001
#define SPI_T6963C_DATA_WRITE_NO_INCREMENT          0b11000100
#define SPI_T6963C_DATA_READ_NO_INCREMENT           0b11000101

#define SPI_T6963C_DATA_BIT                         0b11110000

/*
 * status byte
 */
#define SPI_T6963C_STATUS_BUSY1    0x01
#define SPI_T6963C_STATUS_BUSY2    0x02
#define SPI_T6963C_STATUS_DARRDY   0x04
#define SPI_T6963C_STATUS_DAWRDY   0x08
#define SPI_T6963C_STATUS_CLR      0x20
#define SPI_T6963C_STATUS_ERR      0x40
#define SPI_T6963C_STATUS_BLINK    0x80

/*
 * color masks
 */
#define SPI_T6963C_WHITE            0b1000
#define SPI_T6963C_BLACK            0
#define SPI_T6963C_INVERT           2

/*******************************************
 * MACRO DEFINITIONS
 *******************************************/

/*
 * total panel memory size is one graphic panel plus one text panel size
 */
#define SPI_T6963C_panelMemSize     (SPI_T6963C_grMemSize + SPI_T6963C_txtMemSize)

/*
 * display graphic panel number n
 */
#define SPI_T6963C_displayGrPanel(n)        SPI_T6963C_setPtr(SPI_T6963C_panelMemSize * n, SPI_T6963C_GRAPHIC_HOME_ADDRESS_SET)

/*
 * display text panel number n
 */
#define SPI_T6963C_displayTxtPanel(n)       SPI_T6963C_setPtr(SPI_T6963C_panelMemSize * n + SPI_T6963C_grMemSize, SPI_T6963C_TEXT_HOME_ADDRESS_SET)

/*
 * compute graphic start address for panel number n
 */
#define  SPI_T6963C_setGrPanel(n)           SPI_T6963C_grHomeAddr = SPI_T6963C_panelMemSize * n

/*
 * compute text start address for panel number n
 */
#define  SPI_T6963C_setTxtPanel(n)          SPI_T6963C_textHomeAddr = SPI_T6963C_panelMemSize * n + SPI_T6963C_grMemSize

/*
 * fill full #n panel with v bitmap (0 to clear)
 */
#define SPI_T6963C_panelFill(v)             SPI_T6963C_fill(v, 0, SPI_T6963C_panelMemSize)

/*
 * fill graphic #n panel with v bitmap (0 to clear)
 */
#define SPI_T6963C_grFill(v)                SPI_T6963C_fill(v, 0, SPI_T6963C_grMemSize)

/*
 * fill text #n panel with char v + 32 (0 to clear)
 */
#define SPI_T6963C_txtFill(v)               SPI_T6963C_fill(v, SPI_T6963C_grMemSize, SPI_T6963C_txtMemSize)

/*
 * set cursor size
 */
#define SPI_T6963C_Cursor_Height(n)         SPI_T6963C_setPtr(0x0000, SPI_T6963C_CURSOR_PATTERN_MASK & (0b11111000 + n))

/*
 * set cursor on
 */
#define SPI_T6963C_cursor_on()              SPI_T6963C_display.SPI_T6963C_CURSOR_BIT = 1; SPI_T6963C_writeCommand(SPI_T6963C_display)

/*
 * set graphics on/off
 */
#define SPI_T6963C_graphics(n)              SPI_T6963C_display.SPI_T6963C_DISPLAY_GRAPHICS_BIT = n; SPI_T6963C_writeCommand(SPI_T6963C_display)

/*
 * set text on/off
 */
#define SPI_T6963C_text(n)                  SPI_T6963C_display.SPI_T6963C_DISPLAY_TEXT_BIT = n; SPI_T6963C_writeCommand(SPI_T6963C_display)

/*
 * set cursor on/off
 */
#define SPI_T6963C_cursor(n)                SPI_T6963C_display.SPI_T6963C_DISPLAY_CURSOR_BIT = n; SPI_T6963C_writeCommand(SPI_T6963C_display)

/*
 * cursor blink on/off
 */
#define SPI_T6963C_cursor_blink(n)         SPI_T6963C_display.SPI_T6963C_DISPLAY_CURSOR_BLINK_BIT = n; SPI_T6963C_writeCommand(SPI_T6963C_display)

/***********************************
 * PIC SPECIFIC DEFINITIONS
 ***********************************/
//#define TRIS_FROM_PORT_OFFSET           18      // offset from PORT to TRIS register for P18 family

/************************************
 * LIBRARY PROTOTYPES
 ************************************/
void SPI_T6963C_init(unsigned int width, unsigned char height, unsigned char fntW,char DeviceAddress,
                     unsigned char * rstport, unsigned char rstpin,
                     unsigned char * csport,  unsigned char cspin,
                     unsigned char wr, unsigned char rd, unsigned char cd, unsigned char rst);

void            SPI_T6963C_writeData(unsigned char data_);
void            SPI_T6963C_writeCommand(unsigned char data_);
void            SPI_T6963C_setPtr(unsigned int addr, unsigned char t);
void            SPI_T6963C_waitReady(void);
void            SPI_T6963C_fill(unsigned char data_, unsigned int start, unsigned int len);
void            SPI_T6963C_dot(int x, int y, unsigned char color);
void            SPI_T6963C_write_char(unsigned char c, unsigned char x, unsigned char y, unsigned char mode);
void            SPI_T6963C_write_text(unsigned char *str, unsigned char x, unsigned char y, unsigned char mode);
void            SPI_T6963C_line(int px0, int py0, int px1, int py1, unsigned char pcolor);
void            SPI_T6963C_rectangle(int x0, int y0, int x1, int y1, unsigned char pcolor);
void            SPI_T6963C_box(int x0, int y0, int x1, int y1, unsigned char pcolor);
void            SPI_T6963C_circle(int x, int y, long r, unsigned char pcolor);
void            SPI_T6963C_image(const char *pic);
void            SPI_T6963C_sprite(unsigned char px, unsigned char py, const char *pic, unsigned char sx, unsigned char sy);
void            SPI_T6963C_set_cursor(unsigned char x, unsigned char y);
void            SPI_T6963C_Rectangle_Round_Edges(unsigned int x_upper_left, unsigned int y_upper_left, unsigned int x_bottom_right, unsigned int y_bottom_right, unsigned int round_radius, unsigned short color);
void            SPI_T6963C_Rectangle_Round_Edges_Fill(unsigned int x_upper_left, unsigned int y_upper_left, unsigned int x_bottom_right, unsigned int y_bottom_right, unsigned int round_radius, unsigned short color);
void            SPI_T6963C_Circle_Fill(int x_center, int y_center, int radius, unsigned short color);
void            SPI_T6963C_PartialImage(unsigned int x_left, unsigned int y_top, unsigned int width, unsigned int height, code const unsigned short * image);

/****************************
 * GLOBAL VARIABLES
 ****************************/

extern  unsigned int    SPI_T6963C_grWidth;                // graphic width
extern  unsigned int    SPI_T6963C_grHeight;               // graphic height
extern  unsigned int    SPI_T6963C_txtCols;                // number of text columns in a row

extern  unsigned int    SPI_T6963C_fontWidth;              // font width
extern  unsigned int    SPI_T6963C_grHomeAddr;             // graphic home address
extern  unsigned int    SPI_T6963C_textHomeAddr;           // text home address
extern  unsigned int    SPI_T6963C_grMemSize;              // graphic panel memory size
extern  unsigned int    SPI_T6963C_txtMemSize;             // text panel memory size

extern sfr sbit        SPI_T6963C_cntlwr;                 // WR write bit mask
extern sfr sbit        SPI_T6963C_cntlrd;                 // RD read bit mask
extern sfr sbit        SPI_T6963C_cntlcd;                 // CD command/data bit mask
extern sfr sbit        SPI_T6963C_cntlrst;                // RST reset bit mask

extern  unsigned char   SPI_T6963C_Display;                // display control byte

#endif // __SPIT6963C_H__
