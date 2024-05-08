#pragma once

/* --- BLKATTR Register ---*/
#define _SDHC_BLKATTR_BLOCKCNT_MASK    (unsigned long) 0xFFFF0000
#define _SDHC_BLKATTR_BLOCKSIZE_MASK   (unsigned long) 0x00001FFF
#define _SDHC_BLKATTR_BLOCKCNT_SHIFT   (unsigned char) 0x10
#define _SDHC_BLKATTR_BLOCKSIZE_SHIFT  (unsigned char) 0x00

/* --- XFERTYP Register ---*/
#define _SDHC_XFERTYP_CMDINX_MASK   (unsigned long) 0x3F000000
#define _SDHC_XFERTYP_CMDTYP_MASK   (unsigned long) 0x00C00000
#define _SDHC_XFERTYP_DPSEL_MASK    (unsigned long) 0x00200000
#define _SDHC_XFERTYP_CICEN_MASK    (unsigned long) 0x00100000
#define _SDHC_XFERTYP_CCCEN_MASK    (unsigned long) 0x00080000
#define _SDHC_XFERTYP_RSPTYP_MASK   (unsigned long) 0x00030000
#define _SDHC_XFERTYP_MSBSEL_MASK   (unsigned long) 0x00000020
#define _SDHC_XFERTYP_DTDSEL_MASK   (unsigned long) 0x00000010
#define _SDHC_XFERTYP_AC12EN_MASK   (unsigned long) 0x00000004
#define _SDHC_XFERTYP_BCEN_MASK     (unsigned long) 0x00000002
#define _SDHC_XFERTYP_DMAEN_MASK    (unsigned long) 0x00000001
#define _SDHC_XFERTYP_CMDINX_SHIFT  (unsigned char) 0x18

/* --- PRSSTAT Register ---*/
#define _SDHC_PRSSTAT_CIHB          (unsigned long) 0x00000001
#define _SDHC_PRSSTAT_CDIHB         (unsigned long) 0x00000002
#define _SDHC_PRSSTAT_DLA           (unsigned long) 0x00000004
#define _SDHC_PRSSTAT_SDSTB         (unsigned long) 0x00000008
#define _SDHC_PRSSTAT_IPGOFF        (unsigned long) 0x00000010
#define _SDHC_PRSSTAT_HCKOFF        (unsigned long) 0x00000020
#define _SDHC_PRSSTAT_PEROFF        (unsigned long) 0x00000040
#define _SDHC_PRSSTAT_SDOFF         (unsigned long) 0x00000080
#define _SDHC_PRSSTAT_WTA           (unsigned long) 0x00000100
#define _SDHC_PRSSTAT_RTA           (unsigned long) 0x00000200
#define _SDHC_PRSSTAT_BWEN          (unsigned long) 0x00000400
#define _SDHC_PRSSTAT_BREN          (unsigned long) 0x00000800
#define _SDHC_PRSSTAT_CINS          (unsigned long) 0x00010000
#define _SDHC_PRSSTAT_CLSL          (unsigned long) 0x00800000
#define _SDHC_PRSSTAT_DLSL0         (unsigned long) 0x01000000
#define _SDHC_PRSSTAT_DLSL1         (unsigned long) 0x02000000
#define _SDHC_PRSSTAT_DLSL2         (unsigned long) 0x04000000
#define _SDHC_PRSSTAT_DLSL3         (unsigned long) 0x08000000
#define _SDHC_PRSSTAT_DLSL4         (unsigned long) 0x10000000
#define _SDHC_PRSSTAT_DLSL5         (unsigned long) 0x20000000
#define _SDHC_PRSSTAT_DLSL6         (unsigned long) 0x40000000
#define _SDHC_PRSSTAT_DLSL7         (unsigned long) 0x80000000

/* --- PROCTL Register ---*/
#define _SDHC_PROCTL_LED_MASK       (unsigned long) 0x00000001
#define _SDHC_PROCTL_DTW_MASK       (unsigned long) 0x00000006
#define _SDHC_PROCTL_D3CD_MASK      (unsigned long) 0x00000008
#define _SDHC_PROCTL_EMODE_MASK     (unsigned long) 0x00000030
#define _SDHC_PROCTL_CDTL_MASK      (unsigned long) 0x00000040
#define _SDHC_PROCTL_CDSS_MASK      (unsigned long) 0x00000080
#define _SDHC_PROCTL_DMAS_MASK      (unsigned long) 0x00000300
#define _SDHC_PROCTL_SABGREQ_MASK   (unsigned long) 0x00010000
#define _SDHC_PROCTL_CREQ_MASK      (unsigned long) 0x00020000
#define _SDHC_PROCTL_RWCTL_MASK     (unsigned long) 0x00040000
#define _SDHC_PROCTL_IABG_MASK      (unsigned long) 0x00080000
#define _SDHC_PROCTL_WECINT_MASK    (unsigned long) 0x01000000
#define _SDHC_PROCTL_WECINS_MASK    (unsigned long) 0x02000000
#define _SDHC_PROCTL_WECRM_MASK     (unsigned long) 0x04000000
#define _SDHC_PROCTL_CREQ_SHIFT     (unsigned char) 0x11
#define _SDHC_PROCTL_DTW_SHIFT      (unsigned char) 0x01

/* --- SYSCTL Register ---*/
#define _SDHC_SYSCTL_IPGEN_MASK     (unsigned long) 0x00000001
#define _SDHC_SYSCTL_HCKEN_MASK     (unsigned long) 0x00000002
#define _SDHC_SYSCTL_PEREN_MASK     (unsigned long) 0x00000004
#define _SDHC_SYSCTL_SDCLKEN_MASK   (unsigned long) 0x00000008
#define _SDHC_SYSCTL_DVS_MASK       (unsigned long) 0x000000F0
#define _SDHC_SYSCTL_SDCLKFS_MASK   (unsigned long) 0x0000FF00
#define _SDHC_SYSCTL_DTOCV_MASK     (unsigned long) 0x000F0000
#define _SDHC_SYSCTL_INITA_MASK     (unsigned long) 0x08000000
#define _SDHC_SYSCTL_RSTA_MASK      (unsigned long) 0x01000000
#define _SDHC_SYSCTL_RSTC_MASK      (unsigned long) 0x02000000
#define _SDHC_SYSCTL_RSTD_MASK      (unsigned long) 0x04000000
#define _SDHC_SYSCTL_INITA_MASK     (unsigned long) 0x08000000
#define _SDHC_SYSCTL_DVS_SHIFT      (unsigned long) 0x04
#define _SDHC_SYSCTL_SDCLKFS_SHIFT  (unsigned long) 0x08
#define _SDHC_SYSCTL_DTOCV_SHIFT    (unsigned char) 0x10
#define _SDHC_SYSCTL_DTOCV_INIT     (unsigned long) 0x000E0000

/* --- IRQ Registers ---*/
#define _SDHC_IRQ_CC                (unsigned long) 0x00000001
#define _SDHC_IRQ_TC                (unsigned long) 0x00000002
#define _SDHC_IRQ_BGE               (unsigned long) 0x00000004
#define _SDHC_IRQ_DINT              (unsigned long) 0x00000008
#define _SDHC_IRQ_BWR               (unsigned long) 0x00000010
#define _SDHC_IRQ_BRR               (unsigned long) 0x00000020
#define _SDHC_IRQ_CINS              (unsigned long) 0x00000040
#define _SDHC_IRQ_CRM               (unsigned long) 0x00000080
#define _SDHC_IRQ_CINT              (unsigned long) 0x00000100
#define _SDHC_IRQ_CTOE              (unsigned long) 0x00010000
#define _SDHC_IRQ_CCE               (unsigned long) 0x00020000
#define _SDHC_IRQ_CEBE              (unsigned long) 0x00040000
#define _SDHC_IRQ_CIE               (unsigned long) 0x00080000
#define _SDHC_IRQ_DTOE              (unsigned long) 0x00100000
#define _SDHC_IRQ_DCE               (unsigned long) 0x00200000
#define _SDHC_IRQ_DEBE              (unsigned long) 0x00400000
#define _SDHC_IRQ_AC12E             (unsigned long) 0x01000000
#define _SDHC_IRQ_DMAE              (unsigned long) 0x10000000

/* --- AC12ERR Register ---*/
#define _SDHC_AC12ERR_CNIBAC12E     (unsigned long) 0x00000080
#define _SDHC_AC12ERR_AC12IE        (unsigned long) 0x00000010
#define _SDHC_AC12ERR_AC12CE        (unsigned long) 0x00000008
#define _SDHC_AC12ERR_AC12EBE       (unsigned long) 0x00000004
#define _SDHC_AC12ERR_AC12TOE       (unsigned long) 0x00000002
#define _SDHC_AC12ERR_AC12NE        (unsigned long) 0x00000001

/* --- HTCAPBLT Register ---*/
#define _SDHC_HTCAPBLT_VS33_MASK    (unsigned long) 0x01000000
#define _SDHC_HTCAPBLT_SRS_MASK     (unsigned long) 0x00800000
#define _SDHC_HTCAPBLT_DMAS_MASK    (unsigned long) 0x00400000
#define _SDHC_HTCAPBLT_HSS_MASK     (unsigned long) 0x00200000
#define _SDHC_HTCAPBLT_ADMAS_MASK   (unsigned long) 0x00100000
#define _SDHC_HTCAPBLT_MBL_MASK     (unsigned long) 0x00070000
#define _SDHC_HTCAPBLT_MBL_SHIFT    (unsigned char) 0x10
#define _SDHC_MAX_BLKLEN_512B       (unsigned char) 0x00
#define _SDHC_MAX_BLKLEN_1024B      (unsigned char) 0x01
#define _SDHC_MAX_BLKLEN_2048B      (unsigned char) 0x02
#define _SDHC_MAX_BLKLEN_4096B      (unsigned char) 0x03

/* --- WML Register ---*/
#define _SDHC_WML_WR_SHIFT          (unsigned char) 0x10
#define _SDHC_WML_RD_SHIFT          (unsigned char) 0x00

/* --- ADMAES Register ---*/
#define _SDHC_ADMAES_ADMAES         (unsigned long) 0x00000003
#define _SDHC_ADMAES_ADMALME        (unsigned long) 0x00000004
#define _SDHC_ADMAES_ADMADCE        (unsigned long) 0x00000008 

/* --- VENDOR Register ---*/
#define _SDHC_VENDOR_EXTDMAEN_MASK  (unsigned long) 0x00000001
#define _SDHC_VENDOR_EXBLKNU_MASK   (unsigned long) 0x00000002
#define _SDHC_VENDOR_INTSTVAL_MASK  (unsigned long) 0x00FF0000

/* --- MMCBOOT Register ---*/
#define _SDHC_MMCBOOT_BOOTBLKCNT_MASK  (unsigned long) 0xFFFF0000
#define _SDHC_MMCBOOT_AUTOSABGEN_MASK  (unsigned long) 0x00000080
#define _SDHC_MMCBOOT_BOOTEN_MASK      (unsigned long) 0x00000040
#define _SDHC_MMCBOOT_BOOTMODE_MASK    (unsigned long) 0x00000020
#define _SDHC_MMCBOOT_BOOTACK_MASK     (unsigned long) 0x00000010
#define _SDHC_MMCBOOT_DTOCVACK_MASK    (unsigned long) 0x0000000F
#define _SDHC_MMCBOOT_BOOTBLKCNT_SHIFT (unsigned char) 0x10
#define _SDHC_MMCBOOT_DTOCVACK_SHIFT   (unsigned char) 0x00

/* --- HOSTVER Register ---*/
#define _SDHC_HOSTVER_SVN_MASK      (unsigned long) 0x000000FF
#define _SDHC_HOSTVER_VVN_MASK      (unsigned long) 0x0000FF00
#define _SDHC_HOSTVER_SVN_SHIFT     (unsigned char) 0x00
#define _SDHC_HOSTVER_VVN_SHIFT     (unsigned char) 0x08

#define _SDHC_CMD_NO_RESPONSE       (unsigned long) 0x0
#define _SDHC_CMD_RESPONSE_136      (unsigned long) 0x00010000  // R2
#define _SDHC_CMD_RESPONSE_48       (unsigned long) 0x00020000  // R3, R4, R1, R5, R6
#define _SDHC_CMD_RESPONSE_48_BUSY  (unsigned long) 0x00030000  // R1b, R5b

#define _SDHC_CMD_TYPE_NORMAL       (unsigned long) 0x0
#define _SDHC_CMD_TYPE_SUSPEND      (unsigned long) 0x00400000
#define _SDHC_CMD_TYPE_RESUME       (unsigned long) 0x00800000
#define _SDHC_CMD_TYPE_ABORT        (unsigned long) 0x00C00000

#define _SDHC_CMD_DMAEN             (unsigned long) 0x00000001
#define _SDHC_CMD_BCEN              (unsigned long) 0x00000002
#define _SDHC_CMD_AC12EN            (unsigned long) 0x00000004
#define _SDHC_CMD_HostToCard        (unsigned long) 0x00000000
#define _SDHC_CMD_CardToHost        (unsigned long) 0x00000010  // DTDSEL
#define _SDHC_CMD_MBSEL             (unsigned long) 0x00000020
#define _SDHC_CMD_CCCEN             (unsigned long) 0x00008000
#define _SDHC_CMD_CICEN             (unsigned long) 0x00010000
#define _SDHC_CMD_DPSEL             (unsigned long) 0x00020000

#define _SDHC_PROCTL_LedOff            (unsigned long) 0x0;
#define _SDHC_PROCTL_LedOn             (unsigned long) 0x00000001;

#define _SDHC_PROCTL_EndianBig         (unsigned long) 0x0;
#define _SDHC_PROCTL_EndianHalfWordBig (unsigned long) 0x00000010;
#define _SDHC_PROCTL_EndianLittle      (unsigned long) 0x00000020;

#define _SDHC_PROCTL_1BIT              (unsigned long) 0x0;
#define _SDHC_PROCTL_4BIT              (unsigned long) 0x00000002;
#define _SDHC_PROCTL_8BIT              (unsigned long) 0x00000004;

#define _SDHC_MMCBOOT_MmcbootNormal    (unsigned long) 0x0;
#define _SDHC_MMCBOOT_MmcbootAlter     (unsigned long) 0x00000020;

#define _SDHC_DATA_BLOCK_SIZE_1        (unsigned long) 0x00000001;
#define _SDHC_DATA_BLOCK_SIZE_2        (unsigned long) 0x00000002;
#define _SDHC_DATA_BLOCK_SIZE_4        (unsigned long) 0x00000004;
#define _SDHC_DATA_BLOCK_SIZE_8        (unsigned long) 0x00000008;
#define _SDHC_DATA_BLOCK_SIZE_16       (unsigned long) 0x00000010;
#define _SDHC_DATA_BLOCK_SIZE_32       (unsigned long) 0x00000020;
#define _SDHC_DATA_BLOCK_SIZE_64       (unsigned long) 0x00000040;
#define _SDHC_DATA_BLOCK_SIZE_128      (unsigned long) 0x00000080;
#define _SDHC_DATA_BLOCK_SIZE_256      (unsigned long) 0x00000100;
#define _SDHC_DATA_BLOCK_SIZE_512      (unsigned long) 0x00000200;
#define _SDHC_DATA_BLOCK_SIZE_1024     (unsigned long) 0x00000400;
#define _SDHC_DATA_BLOCK_SIZE_2048     (unsigned long) 0x00000800;
#define _SDHC_DATA_BLOCK_SIZE_4096     (unsigned long) 0x00001000;

#define _SDHC_SINGLE_BLOCK             (unsigned long) 0x0;
#define _SDHC_MULTIPLE_BLOCK           (unsigned long) 0x00000020;

#define _SDHC_HOST_TO_CARD             (unsigned long) 0x0;
#define _SDHC_CARD_TO_HOST             (unsigned long) 0x00000010;

#define _SDHC_BLOCKCNT_ENABLE          (unsigned long) 0x0;
#define _SDHC_BLOCKCNT_DISABLE         (unsigned long) 0x00000002;

#define _SDHC_DMA_ENABLE               (unsigned long) 0x0;
#define _SDHC_DMA_DISABLE              (unsigned long) 0x00000001;

#define _SDHC_RESP0                    (unsigned char) 0x0;
#define _SDHC_RESP1                    (unsigned char) 0x1;
#define _SDHC_RESP2                    (unsigned char) 0x2;
#define _SDHC_RESP3                    (unsigned char) 0x3;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* SDHC Commands  Index */
#define _SDHC_GO_IDLE_STATE                       ((char)0)
#define _SDHC_SEND_OP_COND                        ((char)1)
#define _SDHC_ALL_SEND_CID                        ((char)2)
#define _SDHC_SET_REL_ADDR                        ((char)3) /* SDHC_SEND_REL_ADDR for SD Card */
#define _SDHC_SET_DSR                             ((char)4)
#define _SDHC_IO_SEND_OP_COND                     ((char)5)
#define _SDHC_SWITCH                              ((char)6)
#define _SDHC_SEL_DESEL_CARD                      ((char)7)
#define _SDHC_SEND_EXT_CSD                        ((char)8)
#define _SDHC_SEND_CSD                            ((char)9)
#define _SDHC_SEND_CID                            ((char)10)
#define _SDHC_READ_DAT_UNTIL_STOP                 ((char)11) /* SD Card doesn't support it */
#define _SDHC_STOP_TRANSMISSION                   ((char)12)
#define _SDHC_SEND_STATUS                         ((char)13)
// reserved                                       ((char)14)
#define _SDHC_GO_INACTIVE_STATE                   ((char)15)
#define _SDHC_SET_BLOCKLEN                        ((char)16)
#define _SDHC_READ_SINGLE_BLOCK                   ((char)17)
#define _SDHC_READ_MULT_BLOCK                     ((char)18)
// reserved                                       ((char)19)
#define _SDHC_WRITE_DAT_UNTIL_STOP                ((char)20) /* SD Card doesn't support it */
// reserved                                       ((char)21-23)
#define _SDHC_WRITE_SINGLE_BLOCK                  ((char)24)
#define _SDHC_WRITE_MULT_BLOCK                    ((char)25)
#define _SDHC_PROG_CID                            ((char)26) /* reserved for manufacturers */
#define _SDHC_PROG_CSD                            ((char)27)
#define _SDHC_SET_WRITE_PROT                      ((char)28)
#define _SDHC_CLR_WRITE_PROT                      ((char)29)
#define _SDHC_SEND_WRITE_PROT                     ((char)30)
#define _SDHC_TAG_SECTOR_START                    ((char)32) /* TO DO */
#define _SDHC_TAG_SECTOR_END                      ((char)33) /* TO DO */
#define _SDHC_UNTAG_SECTOR                        ((char)34) /* TO DO */
#define _SDHC_TAG_ERASE_GRP_START                 ((char)35) /* TO DO */
#define _SDHC_TAG_ERASE_GRP_END                   ((char)36) /* TO DO */
#define _SDHC_UNTAG_ERASE_GRP                     ((char)37) /* TO DO */
#define _SDHC_ERASE                               ((char)38)
#define _SDHC_FAST_IO                             ((char)39) /* SD Card doesn't support it */
#define _SDHC_GO_IRQ_STATE                        ((char)40) /* SD Card doesn't support it */
// reserved                                       ((char)41)
#define _SDHC_LOCK_UNLOCK                         ((char)42)
// reserved                                       ((char)43-51)
#define _SDHC_IO_RW_DIRECT                        ((char)52)
#define _SDHC_IO_RW_EXTENDED                      ((char)53)
// reserved                                       ((char)54)
#define _SDHC_APP_CMD                             ((char)55)
#define _SDHC_GEN_CMD                             ((char)56)
// reserved                                       ((char)57-59)
#define _SDHC_RW_MULT_REG                         ((char)60)
#define _SDHC_RW_MULT_BLOCK                       ((char)61)
// reserved                                       ((char)62-63)
#define _SDHC_NO_CMD                              ((char)64)

/* Following commands are SD Card Specific commands.
   SDHC_APP_CMD should be sent before sending these
   commands. */
#define _SDHC_SD_APP_SET_BUS_WIDTH                ((char)6)  /* For SD Card only */
#define _SDHC_SD_APP_STAUS                        ((char)13) /* For SD Card only */
#define _SDHC_SD_APP_SEND_NUM_WRITE_BLOCKS        ((char)22) /* For SD Card only */
#define _SDHC_SD_APP_SEND_WR_BLK_ERASE_COUNT      ((char)23) /* For SD Card only */
#define _SDHC_SD_APP_OP_COND                      ((char)41) /* For SD Card only */
#define _SDHC_SD_APP_SET_CLR_CARD_DETECT          ((char)42) /* For SD Card only */
#define _SDHC_SD_APP_SEND_SCR                     ((char)51) /* For SD Card only */

#define _SDHC_INITIAL_DVS         (unsigned long)0x1;
#define _SDHC_INITIAL_SDCLKFS     (unsigned long)0x2;
#define _SDHC_100KHz              (unsigned long)0x186A0;
#define _SDHC_400KHz              (unsigned long)0x61A80;
#define _SDHC_25MHz               (unsigned long)0x17D7840;
#define _SDHC_50MHz               (unsigned long)0x2FAF080;

typedef struct {
    unsigned char enable;
    unsigned long destClk;
} SDHC_clk_param;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef struct {
    unsigned long ackTimeout;      /*!< Sets the timeout value for the boot ACK. 
                                        ackTimeout has value 0x0 - 0xE */
    unsigned long mode;            /*!< Configures the boot mode. */
    unsigned long blockCount;      /*!< Configures the the block count for the boot. 
                                        BLOCKcOUNT HAS VALUE 0x0 .. 0xFFFF */
    unsigned long enMMCBOOTflags;  /*!< Enable or disable corresponding feature */
} SDHC_mmcboot_param;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef struct {
    unsigned long ledState;                 /*!< Sets the LED state. */
    unsigned long endianMode;               /*!< Configures the endian mode. */
    unsigned long dmaMode;                  /*!< Sets the DMA mode. */
    unsigned long enPROCTLflags;            /*!< Enable or disable corresponding feature */
} SDHC_proctl_param;    

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef struct {
    unsigned long writeWatermarkLevel;      /*!< Sets the watermark for writing. */
    unsigned long readWatermarkLevel;       /*!< Sets the watermark for reading. */
} SDHC_watermark_param;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef struct { 
    SDHC_clk_param clk;
    SDHC_mmcboot_param bootParams;          /*!< Configure read MMC card boot data feature*/
    SDHC_proctl_param  proctlParams;        /*!< Configure Protocol Control register */
    SDHC_watermark_param wmlParams;         /*!< Configure Watermark Level register */
    unsigned long enVENDORflags;            /*!< Enable or disable corresponding feature */
} SDHC_InitTypeDef;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef struct {  
    unsigned long dataTimeout;           /*!< data timeout,     value 0x0..0xE */
    unsigned long dataBlkSize;           /*!< data Block size,  value 0x0..0x1FFF */
    unsigned long dataBlkCount;          /*!< data Block count, value 0x0..0xFFFF */
} SDHC_dataStruct;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef struct {
    SDHC_dataStruct *dataStruct;
  
    unsigned long argument;              /*!< Cmd argument */
    unsigned long cmdIndex;              /*!< Cmd index */
    unsigned long cmdType;               /*!< Cmd type */
    unsigned long response;              /*!< Cmd response */
    unsigned long flags;                 /*!< Cmd Flags */
} SDHC_cmdReq;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef struct {
    unsigned char specVer;               /*!< Save the specification version */
    unsigned char vendorVer;             /*!< Save the vendor version */
    unsigned long maxBlkLen;             /*!< Save the max block length */
    unsigned long capability;            /*!< The capability flags */
} SDHC_basic_info;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef struct {
    unsigned long attribute;
    unsigned long *address;
} SDHC_ADMA2_descriptor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////