#include <stdint.h>

#define SHA_MODE_MD5    (0) // Not supported by HW
#define SHA_MODE_1      (1)
#define SHA_MODE_224    (2) // Not supported by HW
#define SHA_MODE_256    (3)
#define SHA_MODE_384    (4) // Not supported by HW
#define SHA_MODE_512    (5)

#define HASH_START_IEN      (1u)
#define HASH_START_NOIEN    (0u)



//dodato
static void rom_memset32(uint32_t* dest, uint32_t val, uint32_t nbytes)
{    uint32_t i;
    for ( i = 0; i < (nbytes >> 2); i++) {
        dest[i] = val;
    }
}
/*-----------------------------------------------------------*/

static void rom_memset16(uint16_t* dest, uint16_t val, uint32_t nbytes)
{   uint32_t i;
    for ( i = 0; i < (nbytes >> 1); i++) {
        dest[i] = val;
    }
}
/*-----------------------------------------------------------*/

static void rom_memset8(uint8_t* dest, uint8_t val, uint32_t nbytes)
{   uint32_t i;
    for ( i = 0; i < nbytes; i++) {
        dest[i] = val;
    }
}
/*-----------------------------------------------------------*/

static void rom_memset(void* dest, uint32_t val, uint32_t nbytes)
{
    if ((0 != dest) && (0ul != nbytes)) {
        if (0ul == (((uint32_t)dest | nbytes) & 0x03ul)) {
            rom_memset32((uint32_t*)dest, val, nbytes);
        } else if (2ul == (((uint32_t)dest | nbytes) & 0x03ul)) {
            rom_memset16((uint16_t*)dest, (uint16_t)val, nbytes);
        } else {
            rom_memset8((uint8_t*)dest, (uint8_t)val, nbytes);
        }
    }
}
/*-----------------------------------------------------------*/

static void rom_memset2(void* dest, uint8_t bval, uint32_t nbytes)
{   uint32_t i;
    uint8_t* p8;
    uint32_t* p32;
    uint16_t hval;
    uint16_t *p16;
    if ((0 != dest) && (0ul != nbytes)) {
         i = 0ul;
         p8 = (uint8_t*)dest;
        if (0ul == ((uint32_t)dest & 0x03ul)) {
            uint32_t wval = (uint32_t)bval;
            wval <<= 8;
            wval += (uint32_t)bval;
            wval <<= 8;
            wval += (uint32_t)bval;
            wval <<= 8;
            wval += (uint32_t)bval;
            p32 = (uint32_t*)dest;
            i = 0ul;
            while (i < (nbytes >> 2)) {
                *p32++ = wval;
                i += 4ul;
            }
            p8 = (uint8_t*)p32;
        } else if (2ul == ((uint32_t)dest & 0x03ul)) {
            hval = (uint16_t)bval + (((uint16_t)bval) << 8);
            *p16 = (uint16_t*)dest;
            i = 0ul;
            while (i < (nbytes >> 1)) {
                *p16++ = hval;
                i += 2ul;
            }
            p8 = (uint8_t*)p16;
        }

        while (i < nbytes) {
            *p8++ = bval;
            i++;
        }
    }
}
/*-----------------------------------------------------------*/

static char rom_memcmp(const void* p1, const void* p2, uint32_t nbytes)
{   uint8_t m;
    uint32_t n;
    char match = 0;
    if (nbytes) {
        match = 1;
         m = ((uint32_t)p1 | (uint32_t)p2 | nbytes) & 0x03ul;
        if (0u == m) {
            for ( n = 0ul; n < (nbytes >> 2); n++) {
                if (((uint32_t*)p1)[n] != ((uint32_t*)p2)[n]) {
                    match = 0;
                    break;
                }
            }
        } else {
            for ( n = 0ul; n < nbytes; n++) {
                if (((uint8_t*)p1)[n] != ((uint8_t*)p2)[n]) {
                    match = 0;
                    break;
                }
            }
        }
    }
    return match;
}
/*-----------------------------------------------------------*/

static uint32_t rom_memcpy(void* dest, const void* src, uint32_t nbytes)
{
uint8_t m;
uint32_t i;
    if ((0 != dest) || (0!= src) || (0ul != nbytes)) {
          m = ((uint32_t)dest | (uint32_t)src | nbytes) & 0x03ul;
        if (0ul == m) {
            for ( i = 0ul; i < (nbytes >> 2); i++) {
                ((uint32_t*)dest)[i] = ((uint32_t*)src)[i];
            }
        } else if (2ul == m) {
            for ( i = 0ul; i < (nbytes >> 1); i++) {
                ((uint16_t*)dest)[i] = ((uint16_t*)src)[i];
            }
        } else {
            for (i = 0ul; i < nbytes; i++) {
                ((uint8_t*)dest)[i] = ((uint8_t*)src)[i];
            }
        }

        return nbytes;
    }
    return 0ul;
}
/*-----------------------------------------------------------*/

static void* rom_memcpy2(void* dest, const void* src, uint32_t nbytes)
{
    if ((0 != dest) && (0 != src) && (0ul != nbytes)) {
        uint32_t i = 0ul;
        uint8_t* p8d = (uint8_t*)dest;
        uint8_t* p8s = (uint8_t*)src;
        // check pointer alignement
        uint8_t alignment = ((uint32_t)dest | (uint32_t)src) & 0x03u;
        if (0u == alignment) {  // both aligned >= 4 bytes
            uint32_t* p32d = (uint32_t*)dest;
            uint32_t* p32s = (uint32_t*)src;
            while (i < (nbytes >> 2)) {
                *p32d++ = *p32s++;
                i += 4ul;
            }
        }
        else if (2u == alignment) { // both aligned >= 2 bytes
            uint16_t* p16d = (uint16_t*)dest;
            uint16_t* p16s = (uint16_t*)src;
            while (i < (nbytes >> 1)) {
                *p16d++ = *p16s++;
                i += 2ul;
            }
        }

        while (i < nbytes) {
            *p8d++ = *p8s++;
            i++;
        }
    }

    return dest;
}
/*-----------------------------------------------------------*/

static char rom_mem_is_zero(const void* src, uint32_t nbytes)
{
    char zero = 1;
    uint8_t m;
    uint32_t i;
    if ((0 != src) && (0ul != nbytes)) {
             m = ((uint32_t)src | nbytes) & 0x03u;
        if (0ul == m) {
            for ( i = 0ul; i < (nbytes >> 2); i++) {
                if (0ul != ((uint32_t*)src)[i]) {
                    zero = 0;
                    break;
                }
            }
        } else if (2u == m) {
            for ( i = 0ul; i < (nbytes >> 1); i++) {
                if (0u != ((uint16_t*)src)[i]) {
                    zero = 0;
                    break;
                }
            }
        } else {
            for ( i = 0ul; i < nbytes; i++) {
                if (0u != ((uint8_t*)src)[i]) {
                    zero = 0;
                    break;
                }
            }
        }
    }
    return zero;
}
/*-----------------------------------------------------------*/

/* MEC2016 Boot-ROM is not linked to the C or C++ standard libraries.
 * Default C++ constructors will call void* memset(void* dest, int ch, std::size_t count)
 * We can provide a function named memset to satisfy the compiler/linker
 */
static void* memset1(void* dest, int ch, int count)
{
    rom_memset2(dest, (uint8_t)ch, (uint32_t)count);
    return dest;
}
/*-----------------------------------------------------------*/

static void * memcpy1 ( void * destination, const void * source, int num )
{
    rom_memcpy2(destination, source, num);
    return destination;
}
/*-----------------------------------------------------------*/

/*-----------------------------------------------------------*/

/*-----------------------------------------------------------*/

/* end utils.c */
/**   @}
 */