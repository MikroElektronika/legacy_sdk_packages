/*====================================================
 * ARM CORTEX STM32 M3 and M4 DSP library
 *
 * Stevan A. Milinkovic
 * Union University, School of Computing
 * Knez Mihailova 6, 11000 Belgrade, Serbia
 * e-mail: smilinkovic@raf.edu.rs

 Revision:   0.0.1
 Devices:    STM32F107VC and STM32F407VG
 Dev. Board: EasyMx PRO v7 for STM32(R) ARM(R)
 Oscillator: 72.000MHz

 Note: Include this file in user projects
 *====================================================*/

typedef  float float32_t;
typedef  signed int q15_t;
typedef  signed long int q31_t;
typedef  signed long long int q63_t;

typedef struct {
    uint16_t numTaps;                    // number of filter coefficients in the filter.
    q15_t *pState;                       // points to the state variable array. The array is of length numTaps+blockSize-1.
    q15_t *pCoeffs;                      // points to the coefficient array. The array is of length numTaps.
  } TFIR_Instance;

  typedef struct {
    int8_t numStages;                    // number of 2nd order stages in the filter.  Overall order is 2*numStages.
    q15_t *pState;                       // points to the array of state coefficients.  The array is of length 4*numStages.
    q15_t *pCoeffs;                      // points to the array of coefficients.  The array is of length 5*numStages.
    int8_t postShift;                    // additional shift, in bits, applied to each output sample.
  } TIIR_Instance;

typedef struct {
    uint16_t  fftLen;                    // length of the FFT.
    uint8_t   ifftFlag;                  // flag that selects forward (ifftFlag=0) or inverse (ifftFlag=1) transform.
    uint8_t   bitReverseFlag;            // flag that enables (bitReverseFlag=1) or disables (bitReverseFlag=0) bit reversal of output.
    q15_t     *pTwiddle;                 // points to the twiddle factor table.
    uint16_t  *pBitRevTable;             // points to the bit reversal table.
    uint16_t  twidCoefModifier;          // twiddle coefficient modifier that supports different size FFTs with the same twiddle factor table.
    uint16_t  bitRevFactor;              // bit reversal modifier that supports different size FFTs with the same bit reversal table.
  } TFFT_Radix4_Instance;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// FIR prototypes

char FIR_Init(TFIR_Instance *firInstance, uint16_t numTaps, q15_t *pCoeffs, q15_t *pState, uint32_t blockSize);
void FIR_Fast(const TFIR_Instance *firInstance, q15_t *pSrc, q15_t *pDst, uint32_t blockSize);

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// IIR prototypes

void IIR_Init(TIIR_Instance *S, uint8_t numStages, q15_t *pCoeffs, q15_t *pState, int8_t postShift);
void IIR_Fast(const TIIR_Instance *S, q15_t *pSrc, q15_t *pDst, uint32_t blockSize);

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// FFT prototypes

char FFT_Radix4_Init(TFFT_Radix4_Instance *fftInstance, uint16_t fftLen, uint8_t ifftFlag, uint8_t bitReverseFlag);
void FFT_Radix4(const TFFT_Radix4_Instance *fftInstance, q15_t *pSrc);

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////