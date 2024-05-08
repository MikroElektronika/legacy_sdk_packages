#pragma setintsize mE

typedef struct
{
  unsigned long SYSCLK_Frequency; // SYSCLK clock frequency in Hz
  unsigned long HCLK_Frequency;   // HCLK clock frequency   in Hz
  unsigned long PCLK_Frequency;  // PCLK1 clock frequency  in Hz
  unsigned long ADCCLK_Frequency; // ADCCLK clock frequency in Hz
} RCC_ClocksTypeDef;