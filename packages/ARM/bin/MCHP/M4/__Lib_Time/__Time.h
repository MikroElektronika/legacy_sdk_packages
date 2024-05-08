/*
 * file         : __Lib_Time.h
 * project      : TIME LIBRARY FOR ARM
 * author       : Bruno Gavand
 * ctime        : January 2011
 * mtime        : January 2011
 * description  :
 *      definitions for ARM time library
 * bug report   :
 *      none
 * todo         :
 *      nothing
 *
 */


/*
 * some constants
 */
#define Time_secInMn    60l                      // seconds per minute
#define Time_secInH     (Time_secInMn * 60l)     // seconds per hour
#define Time_secIn24h   (Time_secInH * 24l)      // seconds per day

/*
 * simple time structure
 */
typedef struct
        {
        unsigned char   ss;    // seconds
        unsigned char   mn;    // minutes
        unsigned char   hh;    // hours
        unsigned char   md;    // day in month, from 1 to 31
        unsigned char   wd;    // day in week, monday=0, tuesday=1, .... sunday=6
        unsigned char   mo;    // month number, from 1 to 12 (and not from 0 to 11 as with unix C time !)
        unsigned int    yy;    // year Y2K compliant, from 1892 to 2038
        } TimeStruct;

/*
 * private variables
 */
extern  long            Time_jd1970;   // 01/01/1970 julian day number

/*
 * public functions
 */
long    Time_dateToEpoch(TimeStruct *ts);
long    Time_dateDiff(TimeStruct *t1, TimeStruct *t2);
void    Time_epochToDate(long e, TimeStruct *ts);

