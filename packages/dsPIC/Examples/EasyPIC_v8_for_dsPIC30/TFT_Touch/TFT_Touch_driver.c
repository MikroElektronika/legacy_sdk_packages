#include "TFT_Touch_objects.h"
#include "TFT_Touch_resources.h"
#include "built_in.h"

// TFT module connections
char TFT_DataPort at LATD;
sbit TFT_RST at LATF5_bit;
sbit TFT_BLED at LATD0_bit;
sbit TFT_RS at LATF0_bit;
sbit TFT_CS at LATF4_bit;
sbit TFT_RD at LATB4_bit;
sbit TFT_WR at LATB5_bit;
char TFT_DataPort_Direction at TRISD;
sbit TFT_RST_Direction at TRISF5_bit;
sbit TFT_BLED_Direction at TRISD0_bit;
sbit TFT_RS_Direction at TRISF0_bit;
sbit TFT_CS_Direction at TRISF4_bit;
sbit TFT_RD_Direction at TRISB4_bit;
sbit TFT_WR_Direction at TRISB5_bit;
// End TFT module connections

// Touch Panel module connections
sbit DriveX_Left at LATB7_bit;
sbit DriveX_Right at LATC13_bit;
sbit DriveY_Up at LATC14_bit;
sbit DriveY_Down at LATB8_bit;
sbit DriveX_Left_Direction at TRISB7_bit;
sbit DriveX_Right_Direction at TRISC13_bit;
sbit DriveY_Up_Direction at TRISC14_bit;
sbit DriveY_Down_Direction at TRISB8_bit;
// End Touch Panel module connections

// Global variables
unsigned int Xcoord, Ycoord;
const ADC_THRESHOLD = 900;
char PenDown;
typedef unsigned long TPointer;
TPointer PressedObject;
int PressedObjectType;
unsigned int caption_length, caption_height;
unsigned int display_width, display_height;

int _object_count;
unsigned short object_pressed;
TCButton *local_cbutton;
TCButton *exec_cbutton;
int cbutton_order;
TLabel *local_label;
TLabel *exec_label;
int label_order;
TCImage *local_cimage;
TCImage *exec_cimage;
int cimage_order;

void Write_to_Data_Lines(unsigned char tft_data) {
    unsigned char tmp ;
    LATB.B0 = tft_data;
    LATB.B1 = tft_data >> 1;
    LATB.B2 = tft_data >> 2;
    LATB.B3 = tft_data >> 3;
    tmp = LATD;
    tmp &= 0xF0;
    LATD = tmp | ( tft_data >> 4 );
}

void Set_Index(unsigned short index) {
    TFT_RS = 0;
    Write_to_Data_Lines(index);
    TFT_WR = 0;
    asm nop;
    TFT_WR = 1;
}

void Write_Command(unsigned short cmd) {
    TFT_RS = 1;
    Write_to_Data_Lines(cmd);
    TFT_WR = 0;
    asm nop;
    TFT_WR = 1;
}

void Write_Data(unsigned int _data) {
    volatile unsigned short temp;
    TFT_RS = 1;
    temp = (_data >> 8);
    Write_to_Data_Lines(temp);
    TFT_WR = 0;
    asm nop;
    TFT_WR = 1;
    Write_to_Data_Lines(_data);
    TFT_WR = 0;
    asm nop;
    TFT_WR = 1;
}

void Init_ADC() {
    ADC1_Init();
}

static void InitializeTouchPanel() {
    Init_ADC();
    TFT_Set_Active(Set_Index, Write_Command, Write_Data);
    TFT_Init_ILI9341_8bit(320, 240);

    TP_TC_TFT_Init(320, 240, 8, 7);                         // Initialize touch panel.
    TP_TC_TFT_Set_ADC_Threshold(ADC_THRESHOLD);             // Set touch panel ADC threshold.

    PenDown = 0;
    PressedObject = 0;
    PressedObjectType = -1;
}

void Calibrate() {
    TFT_Set_Pen(CL_WHITE, 3);
    TFT_Set_Font(TFT_defaultFont, CL_WHITE, FO_HORIZONTAL);
    TFT_Write_Text("Touch selected corners for calibration", 50, 80);
    TFT_Line(315, 239, 319, 239);
    TFT_Line(309, 229, 319, 239);
    TFT_Line(319, 234, 319, 239);
    TFT_Write_Text("first here", 210, 220);

    TP_TC_TFT_Calibrate_Min();                              // Calibration of TP minimum.
    Delay_ms(500);

    TFT_Set_Pen(CL_BLACK, 3);
    TFT_Set_Font(TFT_defaultFont, CL_BLACK, FO_HORIZONTAL);
    TFT_Line(315, 239, 319, 239);
    TFT_Line(309, 229, 319, 239);
    TFT_Line(319, 234, 319, 239);
    TFT_Write_Text("first here", 210, 220);

    TFT_Set_Pen(CL_WHITE, 3);
    TFT_Set_Font(TFT_defaultFont, CL_WHITE, FO_HORIZONTAL);
    TFT_Write_Text("now here ", 20, 5);
    TFT_Line(0, 0, 5, 0);
    TFT_Line(0, 0, 0, 5);
    TFT_Line(0, 0, 10, 10);

    TP_TC_TFT_Calibrate_Max();                              // Calibration of TP maximum.
    Delay_ms(500);
}

/////////////////////////
    TScreen*  CurrentScreen;

    TScreen   Screen1;
    TCImage   Image1 =
    {
        &Screen1              , //   Image1.OwnerScreen
        0                     , //   Image1.Order
        65                    , //   Image1.Left
        60                    , //   Image1.Top
        188                   , //   Image1.Width
        25                    , //   Image1.Height
        &mikroe_logo_small_bmp, //   Image1.Picture_Name
        1                     , //   Image1.Visible
        1                     , //   Image1.Active
        0                     , //   Image1.Picture_Type
        1                     , //   Image1.Picture_Ratio
        0                     , //   Image1.OnUpPtr
        0                     , //   Image1.OnDownPtr
        0                     , //   Image1.OnClickPtr
        0                       //   Image1.OnPressPtr
    };
    TLabel                 Label1;

    char Label1_Caption[17] = "MikroElektronika";

    TCButton  Button1 =
    {
        &Screen1              , //   Button1.OwnerScreen
        2                     , //   Button1.Order
        69                    , //   Button1.Left
        115                   , //   Button1.Top
        177                   , //   Button1.Width
        41                    , //   Button1.Height
        1                     , //   Button1.Pen_Width
        0x0000                , //   Button1.Pen_Color
        1                     , //   Button1.Visible
        1                     , //   Button1.Active
        1                     , //   Button1.Transparent
        &Button1_Caption      , //   Button1.Caption
        _taCenter             , //   Button1.TextAlign
        _tavMiddle            , //   Button1.TextAlignVertical
        &Tahoma11x13_Regular  , //   Button1.FontName
        0x0000                , //   Button1.FontColor
        0                     , //   Button1.VerticalText
        1                     , //   Button1.Gradient
        0                     , //   Button1.Gradient_Orientation
        0xFFFF                , //   Button1.Gradient_Start_Color
        0xC618                , //   Button1.Gradient_End_Color
        0xC618                , //   Button1.Color
        1                     , //   Button1.PressColEnabled
        0xE71C                , //   Button1.Press_Color
        0                     , //   Button1.OnUpPtr
        0                     , //   Button1.OnDownPtr
        Button1OnClick        , //   Button1.OnClickPtr
        0                       //   Button1.OnPressPtr
    };

    const far char Button1_Caption[26] = "Click to show / hide text";

    TCButton  Button2 =
    {
        &Screen1              , //   Button2.OwnerScreen
        3                     , //   Button2.Order
        69                    , //   Button2.Left
        168                   , //   Button2.Top
        176                   , //   Button2.Width
        41                    , //   Button2.Height
        1                     , //   Button2.Pen_Width
        0x0000                , //   Button2.Pen_Color
        1                     , //   Button2.Visible
        1                     , //   Button2.Active
        1                     , //   Button2.Transparent
        &Button2_Caption      , //   Button2.Caption
        _taCenter             , //   Button2.TextAlign
        _tavMiddle            , //   Button2.TextAlignVertical
        &Tahoma11x13_Regular  , //   Button2.FontName
        0x0000                , //   Button2.FontColor
        0                     , //   Button2.VerticalText
        1                     , //   Button2.Gradient
        0                     , //   Button2.Gradient_Orientation
        0xFFFF                , //   Button2.Gradient_Start_Color
        0xC618                , //   Button2.Gradient_End_Color
        0xC618                , //   Button2.Color
        1                     , //   Button2.PressColEnabled
        0xE71C                , //   Button2.Press_Color
        0                     , //   Button2.OnUpPtr
        0                     , //   Button2.OnDownPtr
        Button2OnClick        , //   Button2.OnClickPtr
        0                       //   Button2.OnPressPtr
    };

    const far char Button2_Caption[27] = "Click to show / hide image";

    TCButton               * const code far Screen1_CButtons[2]=
            {
            &Button1,
            &Button2
            };
    TLabel                 * const code far Screen1_Labels[1]=
            {
            &Label1
            };
    TCImage                * const code far Screen1_CImages[1]=
            {
            &Image1
            };



static void InitializeObjects() {
    Screen1.Color          = 0x0000;
    Screen1.Width          = 320;
    Screen1.Height         = 240;
    Screen1.CButtonsCount  = 2;
    Screen1.CButtons       = Screen1_CButtons;
    Screen1.LabelsCount    = 1;
    Screen1.Labels         = Screen1_Labels;
    Screen1.CImagesCount   = 1;
    Screen1.CImages        = Screen1_CImages;
    Screen1.ObjectsCount   = 4;


    Label1.OwnerScreen     = &Screen1;
    Label1.Order           = 1;
    Label1.Left            = 86;
    Label1.Top             = 17;
    Label1.Width           = 156;
    Label1.Height          = 27;
    Label1.Visible         = 1;
    Label1.Active          = 1;
    Label1.Caption         = Label1_Caption;
    Label1.FontName        = Tahoma20x24_Regular;
    Label1.Font_Color      = 0xFFFF;
    Label1.VerticalText    = 0;
    Label1.OnUpPtr         = 0;
    Label1.OnDownPtr       = 0;
    Label1.OnClickPtr      = 0;
    Label1.OnPressPtr      = 0;
}

static char IsInsideObject (unsigned int X, unsigned int Y, unsigned int Left, unsigned int Top, unsigned int Width, unsigned int Height) { // static
    if ( (Left<= X) && (Left+ Width - 1 >= X) &&
         (Top <= Y)  && (Top + Height - 1 >= Y) )
        return 1;
    else
        return 0;
}

#define GetCButton(index)   CurrentScreen->CButtons[index]
#define GetLabel(index)     CurrentScreen->Labels[index]
#define GetCImage(index)    CurrentScreen->CImages[index]

void DrawCButton(TCButton *Abutton) {
    unsigned int ALeft, ATop;
    if (Abutton->Visible != 0) {
        if (object_pressed == 1) {
            object_pressed = 0;
            TFT_Set_Brush(Abutton->Transparent, Abutton->Press_Color, Abutton->Gradient, Abutton->Gradient_Orientation, Abutton->Gradient_End_Color, Abutton->Gradient_Start_Color);
        }
        else {
            TFT_Set_Brush(Abutton->Transparent, Abutton->Color, Abutton->Gradient, Abutton->Gradient_Orientation, Abutton->Gradient_Start_Color, Abutton->Gradient_End_Color);
        }
            TFT_Set_Pen(Abutton->Pen_Color, Abutton->Pen_Width);
            TFT_Rectangle(Abutton->Left, Abutton->Top, Abutton->Left + Abutton->Width - 1, Abutton->Top + Abutton->Height - 1);
        if (Abutton->VerticalText != 0)
            TFT_Set_Font(Abutton->FontName, Abutton->Font_Color, FO_VERTICAL_COLUMN);
        else
            TFT_Set_Font(Abutton->FontName, Abutton->Font_Color, FO_HORIZONTAL);
            TFT_Write_Const_Text_Return_Pos(Abutton->Caption, Abutton->Left, Abutton->Top);
        if (Abutton->TextAlign == _taLeft)
            ALeft = Abutton->Left + 4;
        else if (Abutton->TextAlign == _taCenter)
            ALeft = Abutton->Left + (Abutton->Width - caption_length) / 2;
        else if (Abutton->TextAlign == _taRight)
            ALeft = Abutton->Left + Abutton->Width - caption_length - 4;

        if (Abutton->TextAlignVertical == _tavTop)
            ATop = Abutton->Top + 4;
        else if (Abutton->TextAlignVertical == _tavMiddle)
            ATop = Abutton->Top + ((Abutton->Height - caption_height) / 2);
        else if (Abutton->TextAlignVertical == _tavBottom)
            ATop = Abutton->Top + (Abutton->Height - caption_height - 4);

        TFT_Write_Const_Text(Abutton->Caption, ALeft, ATop);
    }
}

void DrawLabel(TLabel *ALabel) {
    if (ALabel->Visible != 0) {
        if (ALabel->VerticalText != 0)
            TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_VERTICAL_COLUMN);
        else
            TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_HORIZONTAL);
        TFT_Write_Text(ALabel->Caption, ALabel->Left, ALabel->Top);
    }
}

void DrawCImage(TCImage *AImage) {
    if (AImage->Visible != 0) {
        TFT_Image(AImage->Left, AImage->Top, AImage->Picture_Name, AImage->Picture_Ratio);
    }
}

void DrawScreen(TScreen *aScreen) {
    unsigned int order;
    unsigned short cbutton_idx;
    TCButton *local_cbutton;
    unsigned short label_idx;
    TLabel *local_label;
    unsigned short cimage_idx;
    TCImage *local_cimage;
    char save_bled, save_bled_direction;

    object_pressed = 0;
    order = 0;
    cbutton_idx = 0;
    label_idx = 0;
    cimage_idx = 0;
    CurrentScreen = aScreen;

    if ((display_width != CurrentScreen->Width) || (display_height != CurrentScreen->Height)) {
        save_bled = TFT_BLED;
        save_bled_direction = TFT_BLED_Direction;
        TFT_BLED_Direction = 0;
        TFT_BLED           = 0;
        TFT_Set_Active(Set_Index, Write_Command, Write_Data);
        TFT_Init_ILI9341_8bit(CurrentScreen->Width, CurrentScreen->Height);
        TP_TC_TFT_Init(CurrentScreen->Width, CurrentScreen->Height, 8, 7);                                  // Initialize touch panel
        TP_TC_TFT_Set_ADC_Threshold(ADC_THRESHOLD);                              // Set touch panel ADC threshold
        TFT_Fill_Screen(CurrentScreen->Color);
        display_width = CurrentScreen->Width;
        display_height = CurrentScreen->Height;
        TFT_BLED           = save_bled;
        TFT_BLED_Direction = save_bled_direction;
    }
    else
        TFT_Fill_Screen(CurrentScreen->Color);


    while (order < CurrentScreen->ObjectsCount) {
        if (cbutton_idx < CurrentScreen->CButtonsCount) {
            local_cbutton = GetCButton(cbutton_idx);
            if (order == local_cbutton->Order) {
                cbutton_idx++;
                order++;
                DrawCButton(local_cbutton);
            }
        }

        if (label_idx < CurrentScreen->LabelsCount) {
            local_label = GetLabel(label_idx);
            if (order == local_label->Order) {
                label_idx++;
                order++;
                DrawLabel(local_label);
            }
        }

        if (cimage_idx < CurrentScreen->CImagesCount) {
            local_cimage = GetCImage(cimage_idx);
            if (order == local_cimage->Order) {
                cimage_idx++;
                order++;
                DrawCImage(local_cimage);
            }
        }
    }
}

void Get_Object(unsigned int X, unsigned int Y) {
    cbutton_order       = -1;
    label_order         = -1;
    cimage_order        = -1;
    //  CButtons
    for ( _object_count = 0 ; _object_count < CurrentScreen->CButtonsCount ; _object_count++ ) {
        local_cbutton = GetCButton(_object_count);
        if (local_cbutton->Active != 0) {
        if (IsInsideObject(X, Y, local_cbutton->Left, local_cbutton->Top,
                            local_cbutton->Width, local_cbutton->Height) == 1) {
                cbutton_order = local_cbutton->Order;
                exec_cbutton = local_cbutton;
            }
        }
    }

    //  Labels
    for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
        local_label = GetLabel(_object_count);
        if (local_label->Active != 0) {
        if (IsInsideObject(X, Y, local_label->Left, local_label->Top,
                            local_label->Width, local_label->Height) == 1) {
                label_order = local_label->Order;
                exec_label = local_label;
            }
        }
    }

    //  CImages
    for ( _object_count = 0 ; _object_count < CurrentScreen->CImagesCount ; _object_count++ ) {
        local_cimage = GetCImage(_object_count);
        if (local_cimage->Active != 0) {
        if (IsInsideObject(X, Y, local_cimage->Left, local_cimage->Top,
                            local_cimage->Width, local_cimage->Height) == 1) {
                cimage_order = local_cimage->Order;
                exec_cimage = local_cimage;
            }
        }
    }

    _object_count = -1;
    if (cbutton_order >  _object_count )
        _object_count = cbutton_order;
    if (label_order >  _object_count )
        _object_count = label_order;
    if (cimage_order >  _object_count )
        _object_count = cimage_order;
}

void Process_TP_Press(unsigned int X, unsigned int Y) {
    exec_cbutton        = 0;
    exec_label          = 0;
    exec_cimage         = 0;

    Get_Object(X, Y);

    if (_object_count != -1) {
        if (_object_count == cbutton_order) {
            if (exec_cbutton->Active != 0) {
                if (exec_cbutton->OnPressPtr != 0) {
                exec_cbutton->OnPressPtr();
                return;
                }
            }
        }

        if (_object_count == label_order) {
            if (exec_label->Active != 0) {
                if (exec_label->OnPressPtr != 0) {
                exec_label->OnPressPtr();
                return;
                }
            }
        }

        if (_object_count == cimage_order) {
            if (exec_cimage->Active != 0) {
                if (exec_cimage->OnPressPtr != 0) {
                    exec_cimage->OnPressPtr();
                    return;
                }
            }
        }
    }
}

void Process_TP_Up(unsigned int X, unsigned int Y) {

    switch (PressedObjectType) {
        // CButton
        case 8: {
            if (PressedObject != 0) {
                exec_cbutton = (TCButton*)PressedObject;
                if ((exec_cbutton->PressColEnabled != 0) && (exec_cbutton->OwnerScreen == CurrentScreen)) {
                    DrawCButton(exec_cbutton);
                }
                break;
            }
            break;
        }
    }

    exec_label    = 0;
    exec_cimage   = 0;

    Get_Object(X, Y);


    if (_object_count != -1) {
    // CButtons
        if (_object_count == cbutton_order) {
            if (exec_cbutton->Active != 0) {
                if (exec_cbutton->OnUpPtr != 0)
                exec_cbutton->OnUpPtr();
                if (PressedObject == (TPointer)exec_cbutton)
                if (exec_cbutton->OnClickPtr != 0)
                    exec_cbutton->OnClickPtr();
                PressedObject = 0;
                PressedObjectType = -1;
                return;
            }
        }

    // Labels
        if (_object_count == label_order) {
            if (exec_label->Active != 0) {
                if (exec_label->OnUpPtr != 0)
                exec_label->OnUpPtr();
                if (PressedObject == (TPointer)exec_label)
                if (exec_label->OnClickPtr != 0)
                    exec_label->OnClickPtr();
                PressedObject = 0;
                PressedObjectType = -1;
                return;
            }
        }

    // CImages
        if (_object_count == cimage_order) {
            if (exec_cimage->Active != 0) {
                if (exec_cimage->OnUpPtr != 0)
                    exec_cimage->OnUpPtr();
                if (PressedObject == (TPointer)exec_cimage)
                    if (exec_cimage->OnClickPtr != 0)
                        exec_cimage->OnClickPtr();
                PressedObject = 0;
                PressedObjectType = -1;
                return;
            }
        }

    }
    PressedObject = 0;
    PressedObjectType = -1;
}

void Process_TP_Down(unsigned int X, unsigned int Y) {

    object_pressed      = 0;
    exec_cbutton        = 0;
    exec_label          = 0;
    exec_cimage         = 0;

    Get_Object(X, Y);

    if (_object_count != -1) {
        if (_object_count == cbutton_order) {
            if (exec_cbutton->Active != 0) {
                if (exec_cbutton->PressColEnabled != 0) {
                object_pressed = 1;
                DrawCButton(exec_cbutton);
                }
                PressedObject = (TPointer)exec_cbutton;
                PressedObjectType = 8;
                if (exec_cbutton->OnDownPtr != 0) {
                exec_cbutton->OnDownPtr();
                return;
                }
            }
        }

        if (_object_count == label_order) {
            if (exec_label->Active != 0) {
                PressedObject = (TPointer)exec_label;
                PressedObjectType = 2;
                if (exec_label->OnDownPtr != 0) {
                exec_label->OnDownPtr();
                return;
                }
            }
        }

        if (_object_count == cimage_order) {
            if (exec_cimage->Active != 0) {
                PressedObject = (TPointer)exec_cimage;
                PressedObjectType = 11;
                if (exec_cimage->OnDownPtr != 0) {
                exec_cimage->OnDownPtr();
                return;
                }
            }
        }

    }
}

void Check_TP() {
    if (TP_TC_TFT_Press_Detect()) {
        if (TP_TC_TFT_Get_Coordinates(&Xcoord, &Ycoord) == 0) {
            // After a PRESS is detected read X-Y and convert it to Display dimensions space
            Process_TP_Press(Xcoord, Ycoord);
            if (PenDown == 0) {
                PenDown = 1;
                Process_TP_Down(Xcoord, Ycoord);
            }
        }
    }
    else if (PenDown == 1) {
        PenDown = 0;
        Process_TP_Up(Xcoord, Ycoord);
    }
}

void Init_MCU()
{
    ADPCFG = 0xFE7F;                               // Configure AN pins as digital
    TRISB.B0 = 0;
    TRISB.B1 = 0;
    TRISB.B2 = 0;
    TRISB.B3 = 0;
    TRISB.B4 = 0;
    TRISB.B5 = 0;
    TRISB.B8 = 1;
    TRISB.B7 = 1;
    TRISD = 0x0000;
    TRISF = 0x0000;
    TRISC = 0x0000;
    ADC1_Init();
    TFT_DataPort_Direction = 0;

    Delay_ms(150);
    TFT_Set_Default_Mode();
    TP_TC_TFT_Set_Default_Mode();
    TFT_Set_Active(Set_Index,Write_Command,Write_Data);
}

void Start_TP() {
    Init_MCU();

    InitializeTouchPanel();

    Delay_ms(1000);
    TFT_Fill_Screen(0);
    Calibrate();
    TFT_Fill_Screen(0);

    InitializeObjects();
    display_width = Screen1.Width;
    display_height = Screen1.Height;
    Start_screen();
    DrawScreen(&Screen1);
}
