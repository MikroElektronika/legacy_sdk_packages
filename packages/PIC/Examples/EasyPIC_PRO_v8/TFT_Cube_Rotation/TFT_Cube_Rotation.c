/*
 * Project name:
     TFT_CCUBE_ROTATION
 * Copyright:
     (c) Mikroelektronika, 2020.
 * Description:
     This program demonstrates usage of the TFT library.
 * Test configuration:
     MCU:             PIC18F97J94
                      http://ww1.microchip.com/downloads/en/DeviceDoc/30000575C.pdf
     Dev.Board:       EasyPIC PRO v8
                      https://www.mikroe.com/easypic-pro
     Oscillator:      HS-PLL 64.0000 MHz, 16.0000 MHz Crystal
     SW:              NECTO Studio
                      https://mikroe.com/necto
*/

#define CL_MIKROE_YELLOW 0xFE66u

// TFT module connections
char TFT_16bit_DataPort_Lo at LATK;
char TFT_16bit_DataPort_Hi at LATH;
sbit TFT_16bit_RST at LATL7_bit;
sbit TFT_16bit_BLED at LATE4_bit;
sbit TFT_16bit_RS at LATJ2_bit;
sbit TFT_16bit_CS at LATJ3_bit;
sbit TFT_16bit_RD at LATJ1_bit;
sbit TFT_16bit_WR at LATG7_bit;
char TFT_16bit_DataPort_Lo_Direction at TRISK;
char TFT_16bit_DataPort_Hi_Direction at TRISH;
sbit TFT_16bit_RST_Direction at TRISL7_bit;
sbit TFT_16bit_BLED_Direction at TRISE4_bit;
sbit TFT_16bit_RS_Direction at TRISJ2_bit;
sbit TFT_16bit_CS_Direction at TRISJ3_bit;
sbit TFT_16bit_RD_Direction at TRISJ1_bit;
sbit TFT_16bit_WR_Direction at TRISG7_bit;
// End TFT module connections

// global variables for graphical memory control
static page = 1;
static scroll = 1;

const float px[8] = {-20.0,20.0,20.0,-20.0,-20.0,20.0,20.0,-20.0};   // points X of the cube
const float py[8] = {-20.0,-20.0,20.0,20.0,-20.0,-20.0,20.0,20.0};   // points Y of the cube
const float pz[8] = {-20.0,-20.0,-20.0,-20.0,20.0,20.0,20.0,20.0};   // points Z of the cube

const unsigned int face[12][3]={
                                  {0,1,2},{2,3,0},{1,5,6},{6,2,1},   // faces of the cube
                                  {5,4,7},{7,6,5},{4,0,3},{3,7,4},
                                  {3,2,6},{6,7,3},{0,4,5},{5,1,0}
                               };

                               
static void TFT_SSD1963_Set_PCLK_200MHz(){

  TFT_16bit_CS = 1;
  TFT_16bit_CS = 0;
  TFT_16bit_Set_Index_Ptr(0x28);                //SET display off

  TFT_16bit_Set_Index_Ptr(0xe6);                //SET PCLK freq=200MHz  pixel clock frequency
  TFT_16bit_Write_Command_Ptr(0x03);
  TFT_16bit_Write_Command_Ptr(0x0D);
  TFT_16bit_Write_Command_Ptr(0x40);

  TFT_16bit_Set_Index_Ptr(0x29);                //SET display on
  TFT_16bit_CS = 1;  
}             


                               
/**
 *  Custom set address function, edited to support double buffering
 */
void TFT_Set_Addresss(unsigned int x1, unsigned int y1, unsigned int x2, unsigned int y2) {
    unsigned int s_col, e_col, s_page, e_page, _width, _height;
    _width  = 480;
    _height = 272;

    s_col = x1;
    e_col = x2;
    s_page = y1 + _height * page;
    e_page = y2 + _height * page;

    TFT_16bit_Set_Index_Ptr(0x2a);             // SET column address
    TFT_16bit_Write_Command_Ptr((char)(s_col >> 8));
    TFT_16bit_Write_Command_Ptr(s_col);
    TFT_16bit_Write_Command_Ptr((char)(e_col >> 8));
    TFT_16bit_Write_Command_Ptr(e_col);

    TFT_16bit_Set_Index_Ptr(0x2b);             // SET page address
    TFT_16bit_Write_Command_Ptr((char)(s_page >> 8));
    TFT_16bit_Write_Command_Ptr(s_page);
    TFT_16bit_Write_Command_Ptr((char)(e_page >> 8));
    TFT_16bit_Write_Command_Ptr(e_page);
    TFT_16bit_Set_Index_Ptr(0x2C);
}

/**
 *  Function that sets the start of the scroll area drawn on the screen
 */
void setScrollStart(unsigned int line){
   TFT_16bit_CS = 0;
   TFT_16bit_Set_Index(0x37);
   TFT_16bit_Write_Command((char)(line >> 8));
   TFT_16bit_Write_Command(line);
   TFT_16bit_CS = 1;
}

/**
 *  Function that sets the used scroll area inside the graphical memory
 */
void setScrollArea(unsigned int top,unsigned int scroll,unsigned int bottom){
   TFT_16bit_CS = 0;
   TFT_16bit_Set_Index(0x33);
   TFT_16bit_Write_Command((char)(top>>8));
   TFT_16bit_Write_Command(top);
   TFT_16bit_Write_Command((char)(scroll>>8));
   TFT_16bit_Write_Command(scroll);
   TFT_16bit_Write_Command((char)(bottom>>8));
   TFT_16bit_Write_Command(bottom);
   TFT_16bit_CS = 1;
}

/**
 * Switches the memory page of the graphical controller that is written to
 */
void switchPages(){
    if(page == 0){
         setScrollArea(0,272,0);
         page = 1;
    }
    else{
        setScrollArea(0,272,272);
        page = 0;
    }
}

/**
 * Switches the scroll area of the memory inside the graphical controller
 */
void switchScroll(){
    if(scroll == 0){
        setScrollStart(0);
        scroll = 1;
    }
    else{
        setScrollStart(272);
        scroll = 0;
    }
}

float tx,ty,tz,x,y,_z;        // tmp coords
int i;                        // counter
float sx,sy,sz,cx,cy,cz;      // sin and cos
float ax,ay,az;               // angles from 0 to 359
int dx,dy;                    // cube center and zoom
float zoom;
float nx[8];                  // x coordinates array
float ny[8];                  // y coordinates array
float oldx[8];                // old x coordinates array
float oldy[8];                // old y coordinates array
float deg = (3.14159 / 180);  // degree in radians

void draw_cube(){
        sx = sin(ax * deg);
        sy = sin(ay * deg);
        sz = sin(az * deg);
        cx = cos(ax * deg);
        cy = cos(ay * deg);
        cz = cos(az * deg);

        // calculate the new coordinates of the points
        for (i = 0; i < 8; i++){
            tx = px[i];
            ty = py[i];
            tz = pz[i];
            // Save old coordinates
            oldx[i] = nx[i];
            oldy[i] = ny[i];
            // Rotation   X
            y = ty * cx - tz * sx;
            _z = ty * sx + tz * cx;
            ty = y;
            tz = _z;
            // Rotation  Z
            x = tx * cz - ty * sz;
            y = tx * sz + ty * cz;
            tx = x;
            ty = y;
            // Rotation  Y
            x = tx * cy - tz * sy;
            _z = tx * sy + tz * cy;
            // Save screen coordinates
            nx[i] = (unsigned int)(x * zoom + dx);
            ny[i] = (unsigned int)(y * zoom + dy);
        }

        // draw the next cube in memory
        for (i = 0; i < 8; i++){
            TFT_16bit_Set_Pen(CL_MIKROE_YELLOW,1);        
            TFT_16bit_Line(nx[face[i][0]],ny[face[i][0]],nx[face[i][1]],ny[face[i][1]]);
            TFT_16bit_Line(nx[face[i][1]],ny[face[i][1]],nx[face[i][2]],ny[face[i][2]]);
        }
        // switch the memory draw address
        switchPages();
        // delete the last cube
        for (i = 0; i < 8; i++){
           TFT_16bit_Set_Pen(CL_BLACK_16bit,1);
           TFT_16bit_Line(oldx[face[i][0]],oldy[face[i][0]],oldx[face[i][1]],oldy[face[i][1]]);
           TFT_16bit_Line(oldx[face[i][1]],oldy[face[i][1]],oldx[face[i][2]],oldy[face[i][2]]);
        }
        // scroll to next graphical memory page
        switchScroll();
}

void Init_MCU()
{
    // If bus is busy, wait SDA high before initializing I2C module
    TRISC3_bit = 0;
    TRISC4_bit = 1;
    LATC3_bit = 1;
    while (PORTC.B4 == 0) 
    {
        LATC3_bit = 0;
        Delay_us(10);
        LATC3_bit = 1;
        Delay_us(10);
    }
    I2C1_Init(100000);
    TFT_16bit_Set_Default_Mode();
}

void Process_TP_Gesture(unsigned short aGestID) {
  int scroll_counter = 15;
  if (aGestID == ft5xx6_gest_move_up){
      while(scroll_counter--){
          ax += scroll_counter;
          if (ax > 359)
              ax = ax - 360;
          switchScroll();
          draw_cube();
          switchScroll();
      }
  }
  if (aGestID == ft5xx6_gest_move_left){
      while(scroll_counter--){
          ay -= scroll_counter;
          if (ay > 359)
              ay = ay - 360;
          switchScroll();
          draw_cube();
          switchScroll();
      }
  }
  if (aGestID == ft5xx6_gest_move_down){
      while(scroll_counter--){
          ax -= scroll_counter;
          if (ax > 359)
              ax = ax - 360;
          switchScroll();
          draw_cube();
          switchScroll();
      }
  }
  if (aGestID == ft5xx6_gest_move_right){
      while(scroll_counter--){
          ay += scroll_counter;
          if (ay > 359)
              ay = ay - 360;
          switchScroll();
          draw_cube();
          switchScroll();
      }
  }
  if (aGestID == FT5XX6_GEST_ZOOM_IN){
      if(zoom <= 3.0){
          zoom += 0.1;
          switchScroll();
          draw_cube();
          switchScroll();
      }
  }
  if (aGestID == FT5XX6_GEST_ZOOM_OUT){
      if(zoom >= 0.5){
          zoom -= 0.1;
          switchScroll();
          draw_cube();
          switchScroll();
      }
  }
}

void Check_TP() {
unsigned short gestureid;
  if (FT5XX6_PressDetect()) {
    gestureid = FT5XX6_GetGesture();
    if (gestureid) {
      Process_TP_Gesture(gestureid);
    }
  }
}

char FT5XX6_Config()  {
  FT5XX6_SetI2CAddress(0x38);
  if (FT5XX6_IsOperational() != FT5XX6_OK)
    return  FT5XX6_FAILURE;
  FT5XX6_SetDefaultMode();
  FT5XX6_SetController(_TC_FT5X16);
  FT5XX6_SetSizeAndRotation(480,272,0);
return FT5XX6_OK;
}

void main() {
    TFT_Init_SSD1963_Board_43_16bit(480, 272);
    TFT_16bit_SSD1963_Set_Address_Ptr = TFT_Set_Addresss;
    TFT_SSD1963_Set_PCLK_200MHz();
    TFT_16bit_Set_DBC_SSD1963(255);

    TFT_16bit_Fill_Screen(CL_BLACK_16bit);
    switchPages();
    TFT_16bit_Fill_Screen(CL_BLACK_16bit);

    Init_MCU();
    FT5XX6_Config();
    // cube starting angles
    ax = 45.0;
    ay = 30.0;
    az = 0.0;
    // starting cube zoom
    zoom = 1.5;
    // starting cube center coordinates
    dx = 240;
    dy = 136;

    draw_cube();
    switchScroll();
    while(1){
        Check_TP();
    }
}
