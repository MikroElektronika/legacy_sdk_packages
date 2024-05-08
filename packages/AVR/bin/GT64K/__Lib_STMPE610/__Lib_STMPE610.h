#ifndef __STMPE610_H__
#define __STMPE610_H__

typedef struct {
  unsigned int X_Min;
  unsigned int X_Max;
  unsigned int Y_Min;
  unsigned int Y_Max;
  char         Rotate;
} TTPConstants;

typedef struct {
  unsigned int TP_Width;
  unsigned int TP_Height;
  char         TP_Rotate_180;
  char         Rotate;
  char         DataSet;
} TTPOrientation;

#endif __STMPE610_H__
