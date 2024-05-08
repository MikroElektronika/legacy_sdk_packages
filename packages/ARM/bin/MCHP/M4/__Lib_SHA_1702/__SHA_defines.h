
 /* data Structures */
#include <stdint.h>


/* Function Prototypes */
void fnSHA_application(void);

#define SHA1_BLEN           (20u)
#define SHA1_WLEN           (5u)
#define SHA2_BLEN           (32u)
#define SHA2_WLEN           (8u)

#define SHA12_BLOCK_BLEN    (64u)
#define SHA12_BLOCK_WLEN    (16u)

#define SHA3_BLEN           (48u)
#define SHA3_WLEN           (12u)

#define SHA5_BLEN           (64u)
#define SHA5_WLEN           (16u)

#define SHA35_BLOCK_BLEN    (128u)
#define SHA35_BLOCK_WLEN    (32u)

#define SHA_RET_OK                      (0)
#define SHA_RET_START                   (1) /* OK, SHA Engine started */
#define SHA_RET_ERROR                   (0x80)  /* b[7]==1 indicates an error */
#define SHA_RET_ERR_BUSY                (0x80)
#define SHA_RET_ERR_BAD_ADDR            (0x81)
#define SHA_RET_ERR_TIMEOUT             (0x82)
#define SHA_RET_ERR_MAX_LEN             (0x83)
#define SHA_RET_ERR_UNSUPPORTED         (0x84)


typedef union {
    uint32_t w[SHA2_WLEN];
    uint8_t  b[SHA2_BLEN];
} SHA12_DIGEST_U;

typedef union {
    uint32_t  w[SHA5_WLEN];
    uint8_t b[SHA5_BLEN];
} SHA35_DIGEST_U;

/*
 * !!! SHA-1 & SHA-256
 * HW Engine requires alignment >= 4-byte boundary !!!
 */
typedef struct sha12_context_s SHA12_CONTEXT;
typedef struct sha12_context_s SHA12_CONTEXT_T;
struct sha12_context_s {
    SHA12_DIGEST_U hash;
    union {
        uint32_t w[(SHA12_BLOCK_WLEN) * 2];
        uint8_t b[(SHA12_BLOCK_BLEN) * 2];
    } block;
    uint8_t mode;
    uint8_t block_len;
    uint8_t rsvd[2];
    uint32_t total_msg_len;
};

/*
 * !!! SHA-512 HW Engine requires alignment >= 8-byte boundary !!!
 */
typedef struct sha35_context_s SHA35_CONTEXT;
typedef struct sha35_context_s SHA35_CONTEXT_T;
struct sha35_context_s {
    SHA35_DIGEST_U hash;
    union {
        uint32_t w[(SHA35_BLOCK_WLEN) * 2];
        uint8_t  b[(SHA35_BLOCK_BLEN) * 2];
    } block;
    uint8_t mode;
    uint8_t block_len;
    uint8_t rsvd[2];
    uint32_t total_msg_len;
} aligned(8);
//__attribute__((aligned(8)));


#define SHA_MODE_MD5    (0) // Not supported by HW
#define SHA_MODE_1      (1)
#define SHA_MODE_224    (2) // Not supported by HW
#define SHA_MODE_256    (3)
#define SHA_MODE_384    (4) // Not supported by HW
#define SHA_MODE_512    (5)

#define HASH_START_IEN      (1u)
#define HASH_START_NOIEN    (0u)