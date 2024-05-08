#ifndef __RSA_DEFINES_H_
#define __RSA_DEFINES_H_

#define PKE_SRP_FLAG_LSBF   (0u << 0)
#define PKE_SRP_FLAG_MSBF   (1u << 0)
#define PKE_MAX_SRP_PARAM   (7u)
#define PKE_SRP_PARAM_P     (0u)
#define PKE_SRP_PARAM_G     (1u)
#define PKE_SRP_PARAM_A     (2u)
#define PKE_SRP_PARAM_B     (3u)
#define PKE_SRP_PARAM_X     (4u)
#define PKE_SRP_PARAM_K     (5u)
#define PKE_SRP_PARAM_U     (6u)

typedef struct buff8_s {
    unsigned long len;
    char* pd;
} BUFF8;

typedef struct {
    unsigned int len64b;
    unsigned int flags;
    char* param[PKE_MAX_SRP_PARAM];
} PKE_SRP_DATA;

#endif