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

 Note: Include this file in DSP libraries
 *====================================================*/

////////////////////////////////////////////////////////////////////////////////

static q31_t __SSAT(q31_t) {
  __asm {SSAT R0, #16, R0}
  return(R0);
}

////////////////////////////////////////////////////////////////////////////////

static q31_t __SHASX(q31_t x, q31_t y) {
  return (((q31_t)(((q15_t)(x >> 16) + (q15_t) y))<<15) & 0xFFFF0000)
  | (((q31_t)((q15_t) x - (q15_t)(y >> 16))>>1) & 0x0000FFFF);
}

////////////////////////////////////////////////////////////////////////////////

static q31_t __SMUSD(q31_t x, q31_t y) {
  return ((q31_t)((x<<16)>>16)) * ((q31_t)((y<<16)>>16)) - (q31_t) (x>>16) * (((q31_t)(y>>16)));
}

////////////////////////////////////////////////////////////////////////////////

#define __SMUSDX(x, y, sum)    \
  sum = ((q31_t) ((q15_t) ((x<<16)>>16))*((q15_t) (y>>16))) \
  - ((q31_t) ((q15_t) (x>>16))*((q15_t) ((y<<16)>>16)));

////////////////////////////////////////////////////////////////////////////////

static q15_t clip_q31_to_q15(q31_t x) {
  return ((q31_t) (x >> 16) != ((q31_t) x >> 15)) ? ((0x7FFF ^ ((q15_t) (x >> 31)))) : (q15_t) x;
}

////////////////////////////////////////////////////////////////////////////////

#define __QSAX(x, y) \
  ((q31_t) 0x00000000 + (clip_q31_to_q15((q31_t) ((q15_t) (x >> 16) - (q15_t) y))) << 16) \
  + clip_q31_to_q15((q31_t) ((q15_t) x + (q15_t) (y >> 16)))

////////////////////////////////////////////////////////////////////////////////


#define __SHSAX(x, y) \
  (((q31_t)(((((q15_t)(x>>16))- (q15_t)(y))>>1))<<16) & 0xFFFF0000) \
  | (((q31_t)(((q15_t) x +(q15_t)(y>>16))>>1)) & 0x0000FFFF)

////////////////////////////////////////////////////////////////////////////////

  #define __SMLAD(x, y, sum, res)   \
  res = sum + (q31_t)(x >> 16) * (q31_t)(y >> 16) \
  + (q31_t)((x<<16)>>16) * (q31_t)((y<<16)>>16);

  #define __SMUAD(x, y, sum)    \
  sum = (q31_t) (x>>16) * (((q31_t)(y>>16))) \
  +((q31_t)((x<<16)>>16)) * ((q31_t)((y<<16)>>16));

  #define __SMUADX(x, y, sum)    \
  sum = ((q31_t) x>>16) * ((q31_t) ((y<<16)>>16)) \
  +((q31_t) ((x<<16)>>16)) * (((q31_t)(y>>16)));

  #define __QADD16(x, y, sum)    \
  sum = ((__SSAT(((q31_t) ((x >> 16) + (y >> 16)))) << 16) & 0xFFFF0000) \
  | ((__SSAT((q15_t) x + (q15_t) y)) & 0x0000FFFF);

  #define __QSUB16(x, y, sum)    \
  sum = ((__SSAT(((q31_t) ((x >> 16) - (y >> 16)))) << 16) & 0xFFFF0000) \
  | ((__SSAT((q15_t) x - (q15_t) y)) & 0x0000FFFF);

  #define __SHADD16(x, y, sum)    \
  sum = (((q31_t) (((q15_t) (x >> 16) + (q15_t) (y >> 16))) << 15) & 0xFFFF0000) \
  | (((q31_t)(((q15_t) x + (q15_t) (y))) >> 1) & 0x0000FFFF);

  #define __QASX(x, y, sum)    \
  sum = ((q31_t) 0x00000000 + (clip_q31_to_q15((q31_t) ((q15_t) (x >> 16) + (q15_t) y))) << 16) \
  + clip_q31_to_q15((q31_t) ((q15_t) x - (q15_t) (y >> 16)));

  #define __SHSUB16(x, y, sum)    \
  sum = (((q31_t) (((q15_t) (x >> 16) - (q15_t) (y >> 16))) << 15) & 0xFFFF0000) \
  | (((q31_t)(((q15_t) x - (q15_t) (y))) >> 1) & 0x0000FFFF);


  #define __SIMD32(addr) (*(int32_t **) & (addr))
  
  #define __PKHBT(arg1, arg2, arg3) ((((int32_t)(arg1) <<  0) & (int32_t)0x0000FFFF) | \
                                  (((int32_t)(arg2) << arg3) & (int32_t)0xFFFF0000))