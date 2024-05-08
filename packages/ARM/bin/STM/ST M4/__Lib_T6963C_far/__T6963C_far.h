/*
 * file         : T6963C_far.h
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
#define T6963C_CHARACTER_HEIGHT                 8       // character height in pixel

/*
 * command set
 * see T6963C datasheet
 */
#define T6963C_CURSOR_POINTER_SET               0b00100001
#define T6963C_OFFSET_REGISTER_SET              0b00100010
#define T6963C_ADDRESS_POINTER_SET              0b00100100

#define T6963C_TEXT_HOME_ADDRESS_SET            0b01000000
#define T6963C_TEXT_AREA_SET                    0b01000001
#define T6963C_GRAPHIC_HOME_ADDRESS_SET         0b01000010
#define T6963C_GRAPHIC_AREA_SET                 0b01000011

#define T6963C_ROM_MODE_OR                      0b10000000
#define T6963C_ROM_MODE_XOR                     0b10000001
#define T6963C_ROM_MODE_AND                     0b10000011
#define T6963C_ROM_MODE_TEXT                    0b10000100

#define T6963C_RAM_MODE_OR                      0b10001000
#define T6963C_RAM_MODE_XOR                     0b10001001
#define T6963C_RAM_MODE_AND                     0b10001011
#define T6963C_RAM_MODE_TEXT                    0b10001100

#define T6963C_DISPLAY_MASK                     0b10010000
#define T6963C_DISPLAY_GRAPHICS_BIT             F3
#define T6963C_DISPLAY_TEXT_BIT                 F2
#define T6963C_DISPLAY_CURSOR_BIT               F1
#define T6963C_DISPLAY_CURSOR_BLINK_BIT         F0

#define T6963C_CURSOR_PATTERN_MASK              0b10100111

#define T6963C_DATA_AUTO_WRITE_SET              0b10110000
#define T6963C_DATA_AUTO_READ_SET               0b10110001
#define T6963C_DATA_AUTO_RESET                  0b10110010

#define T6963C_DATA_WRITE_AUTO_INCREMENT        0b11000000
#define T6963C_DATA_READ_AUTO_INCREMENT         0b11000001
#define T6963C_DATA_WRITE_NO_INCREMENT          0b11000100
#define T6963C_DATA_READ_NO_INCREMENT           0b11000101

#define T6963C_DATA_BIT                         0b11110000

/*
 * status byte
 */
#define T6963C_STATUS_BUSY1    0x01
#define T6963C_STATUS_BUSY2    0x02
#define T6963C_STATUS_DARRDY   0x04
#define T6963C_STATUS_DAWRDY   0x08
#define T6963C_STATUS_CLR      0x20
#define T6963C_STATUS_ERR      0x40
#define T6963C_STATUS_BLINK    0x80

/*
 * color masks
 */
#define T6963C_WHITE            0b1000
#define T6963C_BLACK            0
#define T6963C_INVERT           2

/*******************************************
 * MACRO DEFINITIONS
 *******************************************/
/*
 * clear control bit
 */
#define T6963C_ClearBit(b)     b = 0

/*
 * set control bit
 */
#define T6963C_SetBit(b)        b = 1

/*
 * neg control bit
 */
#define T6963C_NegBit(b)        b = !b

/*
 * total panel memory size is one graphic panel plus one text panel size
 */
#define T6963C_PanelMemSize     (T6963C_GrMemSize + T6963C_TxtMemSize)

/*
 * display graphic panel number n
 */
#define T6963C_DisplayGrPanel(n)        T6963C_SetPtr(T6963C_PanelMemSize * n, T6963C_GRAPHIC_HOME_ADDRESS_SET)

/*
 * display text panel number n
 */
#define T6963C_DisplayTxtPanel(n)       T6963C_SetPtr(T6963C_PanelMemSize * n + T6963C_GrMemSize, T6963C_TEXT_HOME_ADDRESS_SET)

/*
 * compute graphic start address for panel number n
 */
#define  T6963C_SetGrPanel(n)           T6963C_GrHomeAddr = T6963C_PanelMemSize * n

/*
 * compute text start address for panel number n
 */
#define  T6963C_SetTxtPanel(n)          T6963C_TextHomeAddr = T6963C_PanelMemSize * n + T6963C_GrMemSize

/*
 * fill full #n panel with v bitmap (0 to clear)
 */
#define T6963C_PanelFill(v)             T6963C_Fill(v, 0, T6963C_PanelMemSize)

/*
 * fill graphic #n panel with v bitmap (0 to clear)
 */
#define T6963C_GrFill(v)                T6963C_Fill(v, 0, T6963C_GrMemSize)

/*
 * fill text #n panel with char v + 32 (0 to clear)
 */
#define T6963C_TxtFill(v)               T6963C_Fill(v, T6963C_GrMemSize, T6963C_TxtMemSize)

/*
 * set cursor size
 */
#define T6963C_Cursor_Height(n)         T6963C_SetPtr(0x0000, T6963C_CURSOR_PATTERN_MASK & (0b11111000 | n))

/*
 * set cursor on
 */
#define T6963C_Cursor_On()              T6963C_Display.T6963C_CURSOR_BIT = 1; T6963C_WriteCommand(T6963C_Display)

/*
 * set graphics on/off
 */
#define T6963C_Graphics(n)              T6963C_Display.T6963C_DISPLAY_GRAPHICS_BIT = n; T6963C_WriteCommand(T6963C_Display)

/*
 * set text on/off
 */
#define T6963C_Text(n)                  T6963C_Display.T6963C_DISPLAY_TEXT_BIT = n; T6963C_WriteCommand(T6963C_Display)

/*
 * set cursor on/off
 */
#define T6963C_Cursor(n)                T6963C_Display.T6963C_DISPLAY_CURSOR_BIT = n; T6963C_WriteCommand(T6963C_Display)

/*
 * cursor blink on/off
 */
#define T6963C_Cursor_Blink(n)         T6963C_Display.T6963C_DISPLAY_CURSOR_BLINK_BIT = n; T6963C_WriteCommand(T6963C_Display)
/***********************************
 * dsPIC SPECIFIC DEFINITIONS
 ***********************************/
#define TRIS_FROM_PORT_OFFSET           -4      // offset from PORT to TRIS register for dsPIC family

/************************************
 * LIBRARY PROTOTYPES
 ************************************/
void            T6963C_Init(unsigned int w, unsigned int h, unsigned int fntW);
void            T6963C_WriteData(unsigned char mydata);
void            T6963C_WriteCommand(unsigned char mydata);
void            T6963C_SetPtr(unsigned int addr, unsigned char t);
void            T6963C_WaitReady(void);
void            T6963C_Fill(unsigned char mydata, unsigned int start, unsigned int len);
void            T6963C_Dot(int x, int y, unsigned char color);
void            T6963C_Write_Char(unsigned char c, unsigned char x, unsigned char y, unsigned char mode);
void            T6963C_Write_Text(unsigned char *str, unsigned int x, unsigned int y, unsigned int mode);
void            T6963C_Line(int px0, int py0, int px1, int py1, unsigned int pcolor);
void            T6963C_Rectangle(int x0, int y0, int x1, int y1, unsigned int pcolor);
void            T6963C_Box(int x0, int y0, int x1, int y1, unsigned char pcolor);
void            T6963C_Circle(int x, int y, long r, unsigned int pcolor);
void            T6963C_Image(const char *pic);
void            T6963C_Sprite(unsigned char px, unsigned char py, const char *pic, unsigned int sx, unsigned int sy);
void            T6963C_Set_Cursor(unsigned int x, unsigned int y);
void            T6963C_PartialImage(unsigned int x_left, unsigned int y_top, unsigned int width,
                                    unsigned int height, code const unsigned short * image);
void T6963C_Rectangle_Round_Edges(unsigned int x_upper_left,   unsigned int y_upper_left,
                                  unsigned int x_bottom_right, unsigned int y_bottom_right,
                                  unsigned int round_radius,   unsigned short color);
void T6963C_Rectangle_Round_Edges_Fill(unsigned int x_upper_left,   unsigned int y_upper_left,
                                       unsigned int x_bottom_right, unsigned int y_bottom_right,
                                       unsigned int round_radius,   unsigned short color);
void T6963C_Circle_Fill(int x_center, int y_center, int radius, unsigned short color);


/****************************
 * GLOBAL VARIABLES
 ****************************/
extern far  sfr unsigned long T6963C_DataPort;             // pointer to DATA BUS port
extern far  sfr unsigned long T6963C_CntlPort;             // pointer to CONTROL port

extern  unsigned int    T6963C_GrWidth;       // graphic width
extern  unsigned int    T6963C_GrHeight;      // graphic height
extern  unsigned int    T6963C_TxtCols;       // number of text columns in a row

extern  unsigned int    T6963C_FontWidth;     // font width
extern  unsigned int    T6963C_GrHomeAddr;    // graphic home address
extern  unsigned int    T6963C_TextHomeAddr;  // text home address
extern  unsigned int    T6963C_GrMemSize;     // graphic panel memory size
extern  unsigned int    T6963C_TxtMemSize;    // text panel memory size

extern far sfr sbit   T6963C_Cntlwr;             // WR write bit mask
extern far sfr sbit   T6963C_Cntlrd;             // RD read bit mask
extern far sfr sbit   T6963C_Cntlcd;             // CD command/data bit mask
extern far sfr sbit   T6963C_Cntlrst;            // RST reset bit mask

extern  unsigned char   T6963C_Display;       // display control byte