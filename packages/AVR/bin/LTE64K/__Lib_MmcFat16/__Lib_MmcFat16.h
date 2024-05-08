#ifndef __MMC_FAT16_H__
#define __MMC_FAT16_H__

// fat16 error codes
#define F16_NOTADIR             1
#define F16_DIRNOTFOUND         2
#define F16_FILEEXISTS          3
#define F16_NOSPACE             4
#define F16_WRITEERR            5
#define F16_DIRFULL             6
#define F16_NOTOPENED           7
#define F16_NOTAFILE            8
#define F16_MAXFILES            9
#define F16_PREMATUREEOF        10
#define F16_EOF                 11
#define F16_DIRNOTEMPTY         12
#define F16_FILENOTFOUND        13
#define F16_NOPART              14
#define F16_NOTMOUNTABLE        15
#define F16_READERR             16
#define F16_INVALIDHANDLE       17
#define F16_INVALIDNAME         18

// file open modes
#define FILE_READ               0x01 // read only
#define FILE_WRITE              0x02 // write only
#define FILE_APPEND             0x04 // append to file

#define clustToSect(cl) (f16_boot.dataArea + ((long)cl - 2) * f16_boot.sectPerCluster)

/*
 * SECTOR_SIZE determines the size of the sector on the storage device.
 * It needs to be 512 for proper functioning.
 */
#define SD_SECTOR_SIZE 512

/*
 * partition information
 */
typedef struct
{
    unsigned char   status; // partition status
    unsigned char   type;   // partition type
    unsigned long   offset; // partition start sector
    //unsigned long   size;
} PART;

/*
 * boot record
 */
typedef struct
{
    unsigned int    bytesPerSect;   // bytes in sector
    unsigned int    sectPerCluster; // sectors in one cluster
    unsigned int    reserved;
    unsigned char   FATcopies;      // number of FAT table copies
    unsigned int    maxRootEntries; // max number of entries in root directory
    unsigned int    sectPerFAT;     // number of sectors in one FAT table
    unsigned long   FATstart;       // FAT table start sector
    unsigned long   rootDir;        // root directory start sector
    unsigned long   dataArea;       // data area start sector
} BOOT_STRUCT;

/*
 * fat16 file/directory entry information (row format)
 */
typedef struct
{
    unsigned char   nameExt[11];    // file/directory name
    unsigned char   attrib;         // file/directory attribute
    unsigned char   reserved;
    unsigned char   fineTime;
    unsigned char   ctime[2];       // create time
    unsigned char   cdate[2];       // create date
    unsigned char   adate[2];
    unsigned char   extAttrib[2];
    unsigned char   mtime[2];       // modification time
    unsigned char   mdate[2];       // modification date;
    unsigned char   first[2];       // modification date;
    unsigned char   size[4];        // file size
} FAT16_DIRENT;

#define FAT16_DIRENT_SIZE     sizeof(FAT16_DIRENT)

/*
 * directory structure for file manager
 */
typedef struct
{
    unsigned char   name[13];       // directory name
    unsigned char   attrib;         // directory attribute
    unsigned char   ctime[6];       // create time and date
    unsigned char   mtime[6];       // modification time and date
    unsigned long   size;           // directory size
    unsigned int    first;          // directory start cluster
    unsigned long   sect;           // directory entry sector
    unsigned int    entry;          // derectory entry number in the entry sector
} DIR;

/*
 * file structure for file manager
 */
typedef struct
{
    unsigned long   dirSectNum;     // directory entry sector
    unsigned int    dirOffSect;     // derectory entry offset in the entry sector
    unsigned int    openFirst;      // file start cluster
    unsigned long   openCursor;     // current file position (carret)
    unsigned int    openCluster;    // current file cluster
    unsigned long   openSect;       // current file sector
    unsigned int    openSectIdx;    // current sector index in current cluster
    unsigned int    openIdx;        // current position index in current sector
    unsigned long   openLength;     // file size
    unsigned int    openMode;       // file open mode
} FILE;

/*
 * buffer for mmc/sd card sector r/w handling
 */
typedef struct
{
    union
    {
        unsigned long   ______;                // alignment issue
        char            fSect[SD_SECTOR_SIZE]; // sector buffer
    };
    char fReadNeedsUpdate;                     // must be set when buffer is changed
                                               // outside library read routines
} SECTOR;

// externs
extern const unsigned char f16_boot_template[];
extern const unsigned char MAX_FILES;
extern const unsigned char CRLF[];
extern FILE f16_fileDesc[];
extern SECTOR f16_sector;

/******************************************************************************
 *                      Function Declarations
 ******************************************************************************/
char Mmc_Fat_Init(void);
char Mmc_Fat_Dir(void (*printfcn)(char ch));
char Mmc_Fat_MakeDir(char *name, char attrib);
char Mmc_Fat_RemoveDir(char *name);
char Mmc_Fat_Delete(void);
char Mmc_Fat_ChangeDir(char *name);
char Mmc_Fat_RenameDir(char *old, char *new);
char Mmc_Fat_Exists(char *name);
char Mmc_Fat_ExistsRecursive(char* name);
char Mmc_Fat_Rename(char *newname);
char Mmc_Fat_Assign(char *name, char attrib);
void Mmc_Fat_Append(void);
void Mmc_Fat_Read(char *fdata);
void Mmc_Fat_Write(char *fdata, unsigned int len);
void Mmc_Fat_Rewrite(void);
unsigned long Mmc_Fat_Tell(void);
unsigned long Mmc_Fat_Seek(unsigned long pos);
void Mmc_Fat_Reset(unsigned long *size);
unsigned long Mmc_Fat_Get_File_Size(void);
char Mmc_Fat_QuickFormat(char* volume_label);
unsigned long Mmc_Fat_Get_Swap_File(unsigned long nSect, char* name, char file_attr);

void Mmc_Fat_Set_File_Date(unsigned int  year, unsigned short  month, unsigned short day, unsigned short  hours, unsigned short  mins, unsigned short seconds);
void Mmc_Fat_Get_File_Date(unsigned int *year, unsigned short *month, unsigned short *day, unsigned short *hours, unsigned short *mins);
void Mmc_Fat_Get_File_Date_Modified(unsigned int *year, unsigned short *month, unsigned short *day, unsigned short *hours, unsigned short *mins);
/******************************************************************************/

#endif // __MMC_FAT16_H__
