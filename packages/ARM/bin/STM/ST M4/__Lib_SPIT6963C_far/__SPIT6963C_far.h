/*
 * file         : __SPIT6963C.h
 * project      : T6963C GRAPHIC LCD PIC LIBRARY
 * author       : Bruno Gavand
 * ctime        : Jun 06 2005
 * mtime        : Jan 27 2006
 * description  :
 */

#pragma setintsize mE
 
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
#define SPI_T6963C_PanelMemSize     (SPI_T6963C_GrMemSize + SPI_T6963C_TxtMemSize)

/*
 * display graphic panel number n
 */
#define SPI_T6963C_DisplayGrPanel(n)        SPI_T6963C_SetPtr(SPI_T6963C_PanelMemSize * n, SPI_T6963C_GRAPHIC_HOME_ADDRESS_SET)

/*
 * display text panel number n
 */
#define SPI_T6963C_DisplayTxtPanel(n)       SPI_T6963C_SetPtr(SPI_T6963C_PanelMemSize * n + SPI_T6963C_GrMemSize, SPI_T6963C_TEXT_HOME_ADDRESS_SET)

/*
 * compute graphic start address for panel number n
 */
#define  SPI_T6963C_SetGrPanel(n)           SPI_T6963C_GrHomeAddr = SPI_T6963C_PanelMemSize * n

/*
 * compute text start address for panel number n
 */
#define  SPI_T6963C_SetTxtPanel(n)          SPI_T6963C_TextHomeAddr = SPI_T6963C_PanelMemSize * n + SPI_T6963C_GrMemSize

/*
 * fill full #n panel with v bitmap (0 to clear)
 */
#define SPI_T6963C_PanelFill(v)             SPI_T6963C_Fill(v, 0, SPI_T6963C_PanelMemSize)

/*
 * fill graphic #n panel with v bitmap (0 to clear)
 */
#define SPI_T6963C_GrFill(v)                SPI_T6963C_Fill(v, 0, SPI_T6963C_GrMemSize)

/*
 * fill text #n panel with char v + 32 (0 to clear)
 */
#define SPI_T6963C_TxtFill(v)               SPI_T6963C_Fill(v, SPI_T6963C_GrMemSize, SPI_T6963C_TxtMemSize)

/*
 * set cursor size
 */
#define SPI_T6963C_Cursor_Height(n)         SPI_T6963C_SetPtr(0x0000, SPI_T6963C_CURSOR_PATTERN_MASK & (0b11111000 + n))

/*
 * set cursor on
 */
#define SPI_T6963C_Cursor_On()              SPI_T6963C_Display.SPI_T6963C_CURSOR_BIT = 1; SPI_T6963C_WriteCommand(SPI_T6963C_Display)

/*
 * set graphics on/off
 */
#define SPI_T6963C_Graphics(n)              SPI_T6963C_Display.SPI_T6963C_DISPLAY_GRAPHICS_BIT = n; SPI_T6963C_WriteCommand(SPI_T6963C_Display)

/*
 * set text on/off
 */
#define SPI_T6963C_Text(n)                  SPI_T6963C_Display.SPI_T6963C_DISPLAY_TEXT_BIT = n; SPI_T6963C_WriteCommand(SPI_T6963C_Display)

/*
 * set cursor on/off
 */
#define SPI_T6963C_Cursor(n)                SPI_T6963C_Display.SPI_T6963C_DISPLAY_CURSOR_BIT = n; SPI_T6963C_WriteCommand(SPI_T6963C_Display)

/*
 * cursor blink on/off
 */
#define SPI_T6963C_Cursor_Blink(n)         SPI_T6963C_Display.SPI_T6963C_DISPLAY_CURSOR_BLINK_BIT = n; SPI_T6963C_WriteCommand(SPI_T6963C_Display)

/***********************************
 * PIC SPECIFIC DEFINITIONS
 ***********************************/
//#define TRIS_FROM_PORT_OFFSET           18      // offset from PORT to TRIS register for P18 family

/************************************
 * LIBRARY PROTOTYPES
 ************************************/
void SPI_T6963C_Init(unsigned int width, unsigned char height, unsigned char fntW,char DeviceAddress,
                     unsigned char * rstport, unsigned char rstpin,
                     unsigned char * csport,  unsigned char cspin,
                     unsigned char wr, unsigned char rd, unsigned char cd, unsigned char rst);

void            SPI_T6963C_WriteData(unsigned char data_);
void            SPI_T6963C_WriteCommand(unsigned char data_);
void            SPI_T6963C_SetPtr(unsigned int addr, unsigned char t);
void            SPI_T6963C_WaitReady(void);
void            SPI_T6963C_Fill(unsigned char data_, unsigned int start, unsigned int len);
void            SPI_T6963C_Dot(int x, int y, unsigned char color);
void            SPI_T6963C_Write_Char(unsigned char c, unsigned char x, unsigned char y, unsigned char mode);
void            SPI_T6963C_Write_Text(unsigned char *str, unsigned char x, unsigned char y, unsigned char mode);
void            SPI_T6963C_Line(int px0, int py0, int px1, int py1, unsigned char pcolor);
void            SPI_T6963C_Rectangle(int x0, int y0, int x1, int y1, unsigned char pcolor);
void            SPI_T6963C_Box(int x0, int y0, int x1, int y1, unsigned char pcolor);
void            SPI_T6963C_Circle(int x, int y, long r, unsigned char pcolor);
void            SPI_T6963C_Image(const char *pic);
void            SPI_T6963C_Sprite(unsigned char px, unsigned char py, const char *pic, unsigned char sx, unsigned char sy);
void            SPI_T6963C_Set_Cursor(unsigned char x, unsigned char y);
void            SPI_T6963C_PartialImage(unsigned int x_left, unsigned int y_top, unsigned int width,
                                    unsigned int height, code const unsigned short * image);
void SPI_T6963C_Rectangle_Round_Edges(unsigned int x_upper_left,   unsigned int y_upper_left,
                                  unsigned int x_bottom_right, unsigned int y_bottom_right,
                                  unsigned int round_radius,   unsigned short color);
void SPI_T6963C_Rectangle_Round_Edges_Fill(unsigned int x_upper_left,   unsigned int y_upper_left,
                                       unsigned int x_bottom_right, unsigned int y_bottom_right,
                                       unsigned int round_radius,   unsigned short color);
void SPI_T6963C_Circle_Fill(int x_center, int y_center, int radius, unsigned short color);


/****************************
 * GLOBAL VARIABLES
 ****************************/

extern  unsigned int    SPI_T6963C_GrWidth;                // graphic width
extern  unsigned int    SPI_T6963C_GrHeight;               // graphic height
extern  unsigned int    SPI_T6963C_TxtCols;                // number of text columns in a row

extern  unsigned int    SPI_T6963C_FontWidth;              // font width
extern  unsigned int    SPI_T6963C_GrHomeAddr;             // graphic home address
extern  unsigned int    SPI_T6963C_TextHomeAddr;           // text home address
extern  unsigned int    SPI_T6963C_GrMemSize;              // graphic panel memory size
extern  unsigned int    SPI_T6963C_TxtMemSize;             // text panel memory size

extern far sfr sbit        SPI_T6963C_CntlWr;                 // WR write bit mask
extern far sfr sbit        SPI_T6963C_CntlRd;                 // RD read bit mask
extern far sfr sbit        SPI_T6963C_CntlCd;                 // CD command/data bit mask
extern far sfr sbit        SPI_T6963C_CntlRst;                // RST reset bit mask

extern  unsigned char   SPI_T6963C_Display;                // display control byte