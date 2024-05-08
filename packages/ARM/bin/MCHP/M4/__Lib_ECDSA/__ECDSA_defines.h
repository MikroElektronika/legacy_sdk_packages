#ifndef __ECDSA_DEFINES_H
#define __ECDSA_DEFINES_H

typedef struct elliptic_curve
{
    unsigned long* param[_ELLIPTIC_CURVE_NPARAMS];
    unsigned int byte_len;
    char flags;
    char rsvd1;
} ELLIPTIC_CURVE;

typedef struct {
    char* params[_ED_PARAM_MAX];
    unsigned int paramlen[_ED_PARAM_MAX];
    unsigned int flags;
    unsigned int rsvd;
} Ed25519_SIG_VERIFY;

#endif