#include "TFT_Touch_objects.h"
#include "TFT_Touch_resources.h"

//--------------------- User code ---------------------//
char image = 1;
char label = 1;

void Start_screen() {
    TFT_Set_Font(&Tahoma11x13_Regular, CL_AQUA, FO_HORIZONTAL);
    TFT_Write_Text("This example shows some basic features of Visual TFT software.", 10, 105);
    TFT_Write_Text("By clicking on two buttons you can show/hide picture(mikroE Logo),", 10, 120);
    TFT_Write_Text("and Label ('MikroElektronika'). Changing of Label captions is", 10, 135);
    TFT_Write_Text("also demonstrated. Try it out, and don't hesitate to experiment", 10, 150);
    Delay_ms(2000);
}
//----------------- End of User code ------------------//

// Event Handlers.
void Button1OnClick() {
    // show/hide text.
    switch (label) {
        case 0: {
            DrawLabel(&Label1);
            label = 1;
            break;
        }
        case 1: {
            TFT_Set_Pen(CL_BLACK, 1);
            TFT_Set_Brush(1, CL_BLACK, 0, TOP_TO_BOTTOM, CL_BLACK, CL_BLACK);
            TFT_Rectangle(23, 7, 302, 63);
            label = 0;
        break;
        }
    }
}

void Button2OnClick() {
    // Show - hide image.
    switch (image) {
        case 0: {
            DrawCImage(&Image1);
            image = 1;
        break;
        }
        case 1: {
            TFT_Set_Pen(CL_BLACK, 1);
            TFT_Set_Brush(1, CL_BLACK, 0, TOP_TO_BOTTOM, CL_BLACK, CL_BLACK);
            TFT_Rectangle(12, 53, 277, 107);
            image = 0;
        break;
        }
    }
}
