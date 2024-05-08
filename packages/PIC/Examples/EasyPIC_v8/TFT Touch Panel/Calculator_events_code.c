#include "Calculator_objects.h"
#include "Calculator_resources.h"

//--------------------- User code ---------------------//
TLabel *label_selected;
char temp_label[20];
typedef enum {_taFirst, _taSecond} TOperand;

void ClearLbl( TLabel *_label) {
  TFT_Set_Font(_label->FontName, /*CL_RED*/ Box3.Color, FO_HORIZONTAL);
  TFT_Write_Text(_label->Caption, _label->Left, _label->Top);
}

void DrawLbl( TLabel *_label) {
  TFT_Set_Font(_label->FontName, _label->Font_Color, FO_HORIZONTAL);
  TFT_Write_Text(_label->Caption, _label->Left, _label->Top);
}

void ClearLabel( TLabel *_label) {
  ClearLbl(_label);
  strcpy(_label->Caption, " ");
}

void ClearLabels() {
  label_selected = &Label1;
  ClearLabel(&Label1);
  ClearLabel(&Label2);
  ClearLabel(&Label3);
  ClearLabel(&Label6);
}

void Set_Defaults() {
  ClearLabels();
}

char Check_Value(long AValue, TOperand AOperand) {
  if ((AValue >= -32768) && (AValue <= 32767))
    return 0;
  else {
    if (AOperand == _taFirst)
      label_selected = &Label1;
    else
      label_selected = &Label3;
    ClearLbl(label_selected);
    strcpy(label_selected->Caption, "Out of Range");
    DrawLbl(label_selected);
    return 1;
  }
}
//----------------- End of User code ------------------//

// Event Handlers

void Button16Click() {
unsigned int count;
unsigned int result;

  // Delete
  count = strlen(label_selected->Caption);
  if (count > 1) {
    if (label_selected == &Label1) {
      strcpy(temp_label, Label1_Caption);
      ClearLbl(&Label1);
      temp_label[count-1] = 0;
      strcpy(Label1_Caption, temp_label);
      DrawLbl(&Label1);
    }
    else
      if (label_selected == &Label2) {
        strcpy(temp_label, Label2_Caption);
        ClearLbl(&Label2);
        temp_label[count-1] = 0;
        strcpy(Label2_Caption, temp_label);
        DrawLbl(&Label2);
      }
      else
        if (label_selected == &Label3) {
          strcpy(temp_label, Label3_Caption);
          ClearLbl(&Label3);
          temp_label[count-1] = 0;
          strcpy(Label3_Caption, temp_label);
          DrawLbl(&Label3);
        }
  }
  else {
    if (label_selected == &Label1) {
      strcpy(Label1_Caption, " ");
      DrawLbl(&Label1);
    }
    else
      if (label_selected == &Label2) {
        strcpy(Label2_Caption, " ");
        DrawLbl(&Label2);
        label_selected = &Label1;
      }
      else
        if (label_selected == &Label3) {
          strcpy(Label3_Caption, " ");
          DrawLbl(&Label3);
          label_selected = &Label2;
        }
  }
}

void Button17Click() {
  // Clear
  ClearLabels();
}

void Button12Click() {
  // Divide
  ClearLabel(&Label2);
  label_selected = &Label2;
  strcpy(label_selected->Caption, " /");
  DrawLbl(label_selected);
  label_selected = &Label3;
}

void Button13Click() {
  // Multiply
  ClearLabel(&Label2);
  label_selected = &Label2;
  strcpy(label_selected->Caption, " *");
  DrawLbl(label_selected);
  label_selected = &Label3;
}

void Button19Click() {
  // Seven
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "7");
    DrawLbl(label_selected);
  }
}

void Button7Click() {
  // Eight
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "8");
    DrawLbl(label_selected);
  }
}

void Button8Click() {
  // Nine
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "9");
    DrawLbl(label_selected);
  }
}

void Button14Click() {
  // Subtract
  ClearLabel(&Label2);
  label_selected = &Label2;
  strcpy(label_selected->Caption, " -");
  DrawLbl(label_selected);
  label_selected = &Label3;
}

void Button1Click() {
  // Four
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "4");
    DrawLbl(label_selected);
  }
}

void Button2Click() {
  // Five
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "5");
    DrawLbl(label_selected);
  }
}

void Button9Click() {
  // Six
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "6");
    DrawLbl(label_selected);
  }
}

void Button15Click() {
  // Add
  ClearLabel(&Label2);
  label_selected = &Label2;
  strcpy(label_selected->Caption, " +");
  DrawLbl(label_selected);
  label_selected = &Label3;
}

void Button5Click() {
  // One
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "1");
    DrawLbl(label_selected);
  }
}

void Button3Click() {
  // Two
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "2");
    DrawLbl(label_selected);
  }
}

void Button10Click() {
  // Three
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "3");
    DrawLbl(label_selected);
  }
}

void Button6Click() {
  // Zero
  if (label_selected != 0) {
    ClearLbl(label_selected);
    strcat(label_selected->Caption, "0");
    DrawLbl(label_selected);
  }
}

void Button4Click() {
char temp[20] = " -";
  // Change sign
  if ((label_selected != 0) && (label_selected != &Label2)) {
    strcpy(temp_label, label_selected->Caption);
    Ltrim(temp_label);
    switch (temp_label[0]) {
      case '-' : {
        temp_label[0] = 32;
        break;
      }
      default : {
        strcat(temp, temp_label);
        strcpy(temp_label, temp);
        break;
      }
    }

    ClearLbl(label_selected);
    strcpy(label_selected->Caption, temp_label);
    DrawLbl(label_selected);
  }
}

void Button18Click() {
  // Calculate
int first_operand, second_operand;
volatile float result;
long templ;
char first_operand_str[12];
char second_operand_str[12];
unsigned short counter, i;
char temp[5] = " ";
  // Calculate
  // -32768 .. 32767
  first_operand = 0;
  second_operand = 0;
  i = 0;
  for (counter = 1; counter < 12; counter++) {
    first_operand_str[i]  = Label1_Caption[counter];
    second_operand_str[i] = Label3_Caption[counter];
    i++;
  }
  
  templ = atol(first_operand_str);
  if (Check_Value(templ, _taFirst))
    return;
  first_operand = templ;
  templ = atol(second_operand_str);
  if (Check_Value(templ, _taSecond))
    return;
  second_operand = templ;

  ClearLbl(&Label6);
  strcpy(temp_label, Label2.Caption);
  Ltrim(temp_label);
  
  switch (temp_label[0]) {
    case '+' : {
         result = (long)first_operand + second_operand;
         templ = (ceil(result));
         LongToStr(templ, Label6_Caption);
         break;
       }
    case '-' : {
         result = (long)first_operand - second_operand;
         templ = ceil(result);
         LongToStr(templ, Label6_Caption);
         break;
       }
    case '*' : {
         result = (long)first_operand * second_operand;
         templ = ceil(result);
         LongToStr(templ, Label6_Caption);
         break;
       }
    case '/': {
         result = (float)first_operand / second_operand;
         FloatToStr(result, Label6_Caption);
         break;
       }
  }
  DrawLbl(&Label6);
}

void ButtonRound1Click() {
  DrawScreen(&Screen1);
  Set_Defaults();
}

void ButtonRound2Click() {
  ClearLabels();
  DrawScreen(&Screen2);
}