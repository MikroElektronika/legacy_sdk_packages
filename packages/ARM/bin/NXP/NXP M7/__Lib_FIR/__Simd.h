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

////////////////////////////////////////////////////////////////////////////////

static q31_t __SSAT(q31_t) {
  __asm {SSAT R0, #16, R0}
  return(R0);
}

////////////////////////////////////////////////////////////////////////////////

static q31_t __SHASX(q31_t, q31_t) {
    __asm {SHASX R0, R0, R1}
    return(R0);
  }

////////////////////////////////////////////////////////////////////////////////

  static q31_t __SMUSD(q31_t, q31_t) {
    __asm {SMUSD R0, R0, R1}
    return(R0);
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

  static unsigned long __SMLAD(unsigned long x, unsigned long y, unsigned long sum) {
    asm {
      SMLAD R0, R0, R1, R2
    }
    return R0;
  }

////////////////////////////////////////////////////////////////////////////////

  static unsigned long __SMUAD(unsigned long x, unsigned long y) {
    asm {
      SMUAD R0, R0, R1
    }
    return R0;
  }

////////////////////////////////////////////////////////////////////////////////

  static unsigned long __SMUADX(unsigned long x, unsigned long y) {
    asm {
      SMUADX R0, R0, R1
    }
    return R0;
  }

////////////////////////////////////////////////////////////////////////////////

  static unsigned long __QADD16(unsigned long x, unsigned long y) {
    asm {
      QADD16 R0, R0, R1
    }
    return R0;
  }

////////////////////////////////////////////////////////////////////////////////

  static unsigned long __QSUB16(unsigned long x, unsigned long y) {
    asm {
      QSUB16 R0, R0, R1
    }
    return R0;
  }

////////////////////////////////////////////////////////////////////////////////

  static unsigned long __SHADD16(unsigned long x, unsigned long y) {
    asm {
      SHADD16 R0, R0, R1
    }
    return R0;
  }

////////////////////////////////////////////////////////////////////////////////

  static unsigned long __SHSUB16(unsigned long x, unsigned long y) {
    asm {
      SHSUB16 R0, R0, R1
    }
    return R0;
  }
  
////////////////////////////////////////////////////////////////////////////////

  static unsigned long __QASX(unsigned long x, unsigned long y) {
    asm {
      QASX R0, R0, R1
    }
    return R0;
  }

////////////////////////////////////////////////////////////////////////////////

  #define __SIMD32(addr) (*(int32_t **) & (addr))
  
  #define __PKHBT(arg1, arg2, arg3) ((((int32_t)(arg1) <<  0) & (int32_t)0x0000FFFF) | \
                                  (((int32_t)(arg2) << arg3) & (int32_t)0xFFFF0000))

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////