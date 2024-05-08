#include "TFT_objects.h"
#include "TFT_resources.h"
#include "built_in.h"


// TFT module connections
char TFT_DataPort at LATD;
sbit TFT_RST at LATA3_bit;
sbit TFT_BLED at LATC2_bit;
sbit TFT_RS at LATB2_bit;
sbit TFT_CS at LATC1_bit;
sbit TFT_RD at LATB5_bit;
sbit TFT_WR at LATB4_bit;
char TFT_DataPort_Direction at TRISD;
sbit TFT_RST_Direction at TRISA3_bit;
sbit TFT_BLED_Direction at TRISC2_bit;
sbit TFT_RS_Direction at TRISB2_bit;
sbit TFT_CS_Direction at TRISC1_bit;
sbit TFT_RD_Direction at TRISB5_bit;
sbit TFT_WR_Direction at TRISB4_bit;
// End TFT module connections

// Touch Panel module connections
sbit DriveX_Left at LATA1_bit;
sbit DriveX_Right at LATC0_bit;
sbit DriveY_Up at LATA4_bit;
sbit DriveY_Down at LATA0_bit;
sbit DriveX_Left_Direction at TRISA1_bit;
sbit DriveX_Right_Direction at TRISC0_bit;
sbit DriveY_Up_Direction at TRISA4_bit;
sbit DriveY_Down_Direction at TRISA0_bit;
// End Touch Panel module connections

// Global variables
unsigned int Xcoord, Ycoord;
const ADC_THRESHOLD = 750;
char PenDown;
void *PressedObject;
int PressedObjectType;
unsigned int caption_length, caption_height;
unsigned int display_width, display_height;

int _object_count;
unsigned short object_pressed;
TImage *local_image;
TImage *exec_image;
int image_order;

static void InitializeTouchPanel() {
  TFT_Init_ILI9341_8bit(320, 240);

}


/////////////////////////
  TScreen*  CurrentScreen;

  TScreen                Screen1;
  TImage               Image1;
  TImage               Image2;
  TImage                 * const code Screen1_Images[2]=
         {
         &Image1,              
         &Image2               
         };



static void InitializeObjects() {
  Screen1.Color                     = 0x0000;
  Screen1.Width                     = 320;
  Screen1.Height                    = 240;
  Screen1.ImagesCount               = 2;
  Screen1.Images                    = Screen1_Images;
  Screen1.ObjectsCount              = 2;


  Image1.OwnerScreen     = &Screen1;
  Image1.Order           = 0;
  Image1.Left            = 39;
  Image1.Top             = 77;
  Image1.Width           = 242;
  Image1.Height          = 28;
  Image1.Picture_Type    = 1;
  Image1.Picture_Ratio   = 1;
  Image1.Picture_Name    = mikroeLogoSlogan320x240B_jpg;
  Image1.Visible         = 1;
  Image1.Active          = 1;
  Image1.OnUpPtr         = 0;
  Image1.OnDownPtr       = 0;
  Image1.OnClickPtr      = 0;
  Image1.OnPressPtr      = 0;

  Image2.OwnerScreen     = &Screen1;
  Image2.Order           = 1;
  Image2.Left            = 37;
  Image2.Top             = 124;
  Image2.Width           = 244;
  Image2.Height          = 20;
  Image2.Picture_Type    = 1;
  Image2.Picture_Ratio   = 1;
  Image2.Picture_Name    = mikroeLogoSlogan320x240BB2_jpg;
  Image2.Visible         = 1;
  Image2.Active          = 1;
  Image2.OnUpPtr         = 0;
  Image2.OnDownPtr       = 0;
  Image2.OnClickPtr      = 0;
  Image2.OnPressPtr      = 0;
}

static char IsInsideObject (unsigned int X, unsigned int Y, unsigned int Left, unsigned int Top, unsigned int Width, unsigned int Height) { // static
  if ( (Left<= X) && (Left+ Width - 1 >= X) &&
       (Top <= Y)  && (Top + Height - 1 >= Y) )
    return 1;
  else
    return 0;
}


#define GetImage(index)               CurrentScreen->Images[index]


void DrawImage(TImage *AImage) {
  if (AImage->Visible != 0) {
    TFT_Image_Jpeg(AImage->Left, AImage->Top, AImage->Picture_Name);
  }
}

void DrawScreen(TScreen *aScreen) {
 unsigned int order;
  unsigned short image_idx;
  TImage *local_image;
  char save_bled, save_bled_direction;

  object_pressed = 0;
  order = 0;
  image_idx = 0;
  CurrentScreen = aScreen;

  if ((display_width != CurrentScreen->Width) || (display_height != CurrentScreen->Height)) {
    save_bled = TFT_BLED;
    save_bled_direction = TFT_BLED_Direction;
    TFT_BLED_Direction = 0;
    TFT_BLED           = 0;
    TFT_Init_ILI9341_8bit(CurrentScreen->Width, CurrentScreen->Height);
    TFT_Fill_Screen(CurrentScreen->Color);
    display_width = CurrentScreen->Width;
    display_height = CurrentScreen->Height;
    TFT_BLED           = save_bled;
    TFT_BLED_Direction = save_bled_direction;
  }
  else
    TFT_Fill_Screen(CurrentScreen->Color);


  while (order < CurrentScreen->ObjectsCount) {
    if (image_idx < CurrentScreen->ImagesCount) {
      local_image = GetImage(image_idx);
      if (order == local_image->Order) {
        image_idx++;
        order++;
        DrawImage(local_image);
      }
    }

  }
}

void Init_MCU() {
  ANSELA = 0x03;
  ANSELB = 0x00;
  ANSELC = 0x00;
  ANSELD = 0x00;
}

void Start_TP() {
  Init_MCU();

  InitializeTouchPanel();
  InitializeObjects();
  display_width = Screen1.Width;
  display_height = Screen1.Height;
  DrawScreen(&Screen1);
}