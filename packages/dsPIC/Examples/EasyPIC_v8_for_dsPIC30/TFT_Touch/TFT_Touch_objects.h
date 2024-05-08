typedef enum {_taLeft, _taCenter, _taRight} TTextAlign;
typedef enum {_tavTop, _tavMiddle, _tavBottom} TTextAlignVertical;

typedef struct Screen TScreen;

typedef const far struct  CButton {
    TScreen*  OwnerScreen;
    char          Order;
    unsigned int  Left;
    unsigned int  Top;
    unsigned int  Width;
    unsigned int  Height;
    char          Pen_Width;
    unsigned int  Pen_Color;
    char          Visible;
    char          Active;
    char          Transparent;
    const far char      *Caption;
    TTextAlign    TextAlign;
    TTextAlignVertical TextAlignVertical;
    const far char    *FontName;
    unsigned int  Font_Color;
    char          VerticalText;
    char          Gradient;
    char          Gradient_Orientation;
    unsigned int  Gradient_Start_Color;
    unsigned int  Gradient_End_Color;
    unsigned int  Color;
    char          PressColEnabled;
    unsigned int  Press_Color;
    void          (*OnUpPtr)();
    void          (*OnDownPtr)();
    void          (*OnClickPtr)();
    void          (*OnPressPtr)();
} TCButton;

typedef struct  Label {
    TScreen*  OwnerScreen;
    char          Order;
    unsigned int  Left;
    unsigned int  Top;
    unsigned int  Width;
    unsigned int  Height;
    char          *Caption;
    const far char    *FontName;
    unsigned int  Font_Color;
    char          VerticalText;
    char          Visible;
    char          Active;
    void          (*OnUpPtr)();
    void          (*OnDownPtr)();
    void          (*OnClickPtr)();
    void          (*OnPressPtr)();
} TLabel;

typedef const far struct  CImage {
    TScreen*  OwnerScreen;
    char          Order;
    unsigned int  Left;
    unsigned int  Top;
    unsigned int  Width;
    unsigned int  Height;
    const far char    *Picture_Name;
    char          Visible;
    char          Active;
    char          Picture_Type;
    char          Picture_Ratio;
    void          (*OnUpPtr)();
    void          (*OnDownPtr)();
    void          (*OnClickPtr)();
    void          (*OnPressPtr)();
} TCImage;

struct Screen {
    unsigned int           Color;
    unsigned int           Width;
    unsigned int           Height;
    unsigned int           ObjectsCount;
    unsigned int           CButtonsCount;
    TCButton               * const code far *CButtons;
    unsigned int           LabelsCount;
    TLabel                 * const code far *Labels;
    unsigned int           CImagesCount;
    TCImage                * const code far *CImages;
};

extern   TScreen           Screen1;
extern   TCImage           Image1;
extern   TLabel            Label1;
extern   TCButton          Button1;
extern   TCButton          Button2;
extern   TCButton          * const code far Screen1_CButtons[2];
extern   TLabel            * const code far Screen1_Labels[1];
extern   TCImage           * const code far Screen1_CImages[1];


/////////////////////////
// Events Code Declarations
void Button1OnClick();
void Button2OnClick();
/////////////////////////

/////////////////////////////////
// Caption variables Declarations
extern const far char Image1_Caption[];
extern char Label1_Caption[];
extern const far char Button1_Caption[];
extern const far char Button2_Caption[];
/////////////////////////////////

void DrawScreen(TScreen *aScreen);
void DrawCButton(TCButton *aCButton);
void DrawLabel(TLabel *ALabel);
void DrawCImage(TCImage *ACimage);
void Start_screen();
void Check_TP();
void Start_TP();
void Process_TP_Press(unsigned int X, unsigned int Y);
void Process_TP_Up(unsigned int X, unsigned int Y);
void Process_TP_Down(unsigned int X, unsigned int Y);
