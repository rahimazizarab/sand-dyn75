/*
 * Copyright (c)2003 Jason Paul Winter, All Rights Reserved.
 */

#define FTPDATA_DEV "SYS1.PARMLIB(VATLST00)" /* Existing file below FB 80 */
#define FTPDATA_OUT "SYS1.FTPDATA.OUT"       /* To be preallocated  FB 80 */
#define FTPDATA_IN  "SYS1.FTPDATA.IN"        /* To be preallocated  FB 121 */

/*
01234567890123456789012345678901234567890123456789012345678901234567890123456789
          1111111111222222222233333333334444444444555555555566666666667777777777

MVSRES,0,2,3350    ,Y        SYSTEM RESIDENCE (PRIVATE)                 00000001
SMP001,1,1,3350    ,N        DISTRIBUTION LIBRARIES (PUBLIC)            00000011
WORK01,1,1,3330    ,N        WORK PACK (PUBLIC)                         00000021
WORK02,1,0,3350    ,N        WORK PACK (STORAGE)                        00000025
WORK03,0,0,3350    ,N        DEVELOPMENT                                00000031
WORK04,0,0,3390    ,N        LARGE SUPPORT                              00000035
^    ^ ^ ^ ^      ^ ^ ^                                              ^
|    | | | |      | | |----------------------------------------------+ Comment
|    | | | |      | + operator should be requested to mount the volume
|    | | | |      |   if it is not found during IPL
|    | | | |------+ device type
|    | | + STORAGE is denoted by 0, PUBLIC by 1, and PRIVATE by 2
|    | + 0 for permanently resident volumes, and 1 for reserved volumes
|----+ volume serial number

PRIVATE - new datasets will be created on this volume only if the user(via JCL
or the TSO ALLOCATE command) specifies the volume serial of this disk volume.

PUBLIC - MVS may place a temporary dataset on this volume, if the user (via JCL
or otherwise) did not specify a volume serial for the temporary dataset.
Datasets may also be placed on the volume by specifying the volume serial, as
with PRIVATE volumes.  A temporary dataset is one with a DSNAME beginning with
an ampersand and/or with a disposition equivalent to NEW,DELETE. 

STORAGE - MVS places permanent datasets on this volume if the user did not
supply a volume serial for the datasets.  In addition, temporary datasets and
datasets placed by volume serial may also be placed on the volume.  

(Taken from the Hercules Help Pages.)

*/

#define maxdevs 200
long numdevs = 0;
char devices [maxdevs][7];
char units   [maxdevs][9];

long dirsupport () {
    long   i;
    FILE * fh;
    char   line [81];

    sprintf (line, "//DSN:%s", FTPDATA_DEV);
    fh = fopen (line, "rb");                  /*,lrecl=80,blksize=80,recfm=f*/
    if (fh == NULL) {
        return (1);
    };

    while (fread (line, 1, 80, fh) != 0) {

        strncpy (devices [numdevs], line, 6);
        i = 6;
        do {
            devices [numdevs][i--] = 0;
        } while (devices [numdevs][i] == ' ');

        strncpy (units [numdevs], &(line [11]), 8);
        i = 6;
        do {
            units [numdevs][i--] = 0;
        } while (units [numdevs][i] == ' ');

        if (++numdevs == maxdevs) break;
    };

    fclose (fh);

    return (0);
};

typedef struct dirs_tag * dirs_tag_ptr;
typedef struct dirs_tag {
    char name [45];
    long date;
    long org;   /* 1 = PS, 2 = PO */
    long block; /* 1 = F,  2 = FB, 3 = V,  4 = VB */
    long blksz;
    long lrecl;
} dirs;

#define maxdirs 1000
long dircount;
dirs directories [maxdirs];

long leapdays (long year) {
    long i;
    long j;
    long k = year - 1970;

    i = 0;
    j = 0;
    while (j != k) {
        if ((j + 1970) % 4 == 0) {
            i = i + 366;
        } else {
            i = i + 365;
        };
        j++;
    };

    return (i);
};

/*
//LISTVTOC EXEC PGM=IEHLIST,REGION=1024K
//SYSPRINT DD  SYSOUT=*
//DD1      DD  UNIT=3350,VOL=SER=WORK03,DISP=OLD
//SYSIN    DD  *
 LISTVTOC VOL=3350=WORK03,FORMAT
/ *
*/
long readvtoc (char * device, char * unit) {
    long   i;
    char * s;
    FILE * fh;
    char   file [55];
    char   tstr1a [45];
    char   tstr1b [9];
    char   tstr2a [45];
    char   tstr2b [9];
    char   tstr3b [9];
    char   tstrv [7];
    char   tstru [9];
    char   linea [81];
    char   lineb [81];
    char   line [122];
    __register (3) long r;

    if (dircount == maxdirs) return (0);

    sprintf (file, "//DSN:%s", FTPDATA_OUT);
    fh = fopen (file, "wb");
    if (fh == NULL) return (1);

    sprintf (linea, " LISTVTOC VOL=%s=%s,FORMAT", unit, device);
    sprintf (lineb, "%-80s", linea);
    fwrite (lineb, 1, 80, fh);

    fclose (fh);

    sprintf (tstr1a, "%-44s", FTPDATA_OUT);
    sprintf (tstr1b, "%-8s", "IEHIN");

    sprintf (tstr2a, "%-44s", FTPDATA_IN);
    sprintf (tstr2b, "%-8s", "IEHPRINT");

    sprintf (tstr3b, "%-8s", "IEHDD1");

    sprintf (tstrv, "%-6s", device);
    sprintf (tstru, "%-8s", unit);

    r = (long)&tstr1a;
    __asm { ST   R3,tstr1a};
    r = (long)&tstr1b;
    __asm { ST   R3,tstr1b};
    r = (long)&tstr2a;
    __asm { ST   R3,tstr2a};
    r = (long)&tstr2b;
    __asm { ST   R3,tstr2b};
    r = (long)&tstr3b;
    __asm { ST   R3,tstr3b};
    r = (long)&tstrv;
    __asm { ST   R3,tstrv};
    r = (long)&tstru;
    __asm { ST   R3,tstru};

    __asm {
         LA    R3,1(0,0)   Assume failed

         LA    R1,DADISP
         LA    R2,1(0,0)   DISP=OLD
         STC   R2,0(0,R1)
         LA    R1,DADSN
         L     R2,tstr1a
         MVC   0(44,R1),0(R2)
         LA    R1,DADD
         L     R2,tstr1b
         MVC   0(8,R1),0(R2)
         LA    R1,DYNAL
         SVC   99
         LTR   R15,R15
         BNZ   FAIL99C

         LA    R1,DADISP
         LA    R2,8(0,0)   DISP=SHR
         STC   R2,0(0,R1)
         LA    R1,DADSN
         L     R2,tstr2a
         MVC   0(44,R1),0(R2)
         LA    R1,DADD
         L     R2,tstr2b
         MVC   0(8,R1),0(R2)
         LA    R1,DYNAL
         SVC   99
         LTR   R15,R15
         BNZ   FAIL99B

         LA    R1,DADVOL
         L     R2,tstrv
         MVC   0(6,R1),0(R2)
         LA    R1,DADUNIT
         L     R2,tstru
         MVC   0(8,R1),0(R2)
         LA    R1,DYNAD
         SVC   99
         LTR   R15,R15
         BNZ   FAIL99A
    };

    __asm {
         LINK EP=IEHLIST,PARAM=(OPTLIST,IEHDDNS),VL=1

         B    SKIPDAT

tstr1a   DC    F'0'
tstr1b   DC    F'0'
tstr2a   DC    F'0'
tstr2b   DC    F'0'
tstr3b   DC    F'0'
tstrv    DC    F'0'
tstru    DC    F'0'

OPTLIST DC H'0'
*
IEHDDNS  DS    0F
         DC    AL2(STOPC-STARTC)
STARTC   EQU   *
         DC    XL8'00'                 EMPTY ENTRY (SYSLIN)
         DC    XL8'00'                 EMPTY ENTRY (SYSLMOD MBR)
         DC    XL8'00'                 EMPTY ENTRY (SYSLMOD)
         DC    XL8'00'                 EMPTY ENTRY (SYSLIB)
         DC    CL8'IEHIN'              SYSIN
         DC    CL8'IEHPRINT'           SYSPRINT
         DC    XL8'00'                 EMPTY ENTRY (SYSPUNCH)
         DC    XL8'00'                 EMPTY ENTRY (SYSUT1)
         DC    XL8'00'                 EMPTY ENTRY (SYSUT2)
         DC    XL8'00'                 EMPTY ENTRY (SYSUT3)
         DC    XL8'00'                 EMPTY ENTRY (SYSUT4)
STOPC    EQU   *
***
***
DYNAL    DC    A(DA1+X'80000000')
DA1      DC    X'14010000'
         DC    F'0'
         DC    A(DA2)
         DC    F'0'
         DC    F'0'

DAP1     DC    X'000100010008'
DADD     DC    C'        '      DD
         DC    X'0000'          Padding

DAP2     DC    X'00020001002C'
DADSN    DC    44C' '           DSN:44
         DC    X'0000'          Padding

DAP3     DC    X'000400010001'
DADISP   DC    X'08'            DISP=SHR (Changes)
         DC    X'00'            Padding

DA2      DC    A(DAP1)
         DC    A(DAP2)
         DC    A(DAP3+X'80000000')
***
***
DYNAD    DC    A(DAD1+X'80000000')
DAD1     DC    X'14010000'
         DC    F'0'
         DC    A(DAD2)
         DC    F'0'
         DC    F'0'

DADP1    DC    X'000100010008'
         DC    C'IEHDD1  '      DD
         DC    X'0000'          Padding

DADP2    DC    X'001000010006'
DADVOL   DC    6C' '            VOL=SER:6

DADP3    DC    X'001500010008'
DADUNIT  DC    8C' '            UNIT:8
         DC    X'0000'          Padding

DADP4    DC    X'000400010001'
DADDISP  DC    X'01'            DISP=OLD
         DC    X'00'            Padding

DAD2     DC    A(DADP1)
         DC    A(DADP2)
         DC    A(DADP3)
         DC    A(DADP4+X'80000000')
***
***

DYNDE    DC    A(DD1+X'80000000')
DD1      DC    X'14020000'
         DC    F'0'
         DC    A(DD2)
         DC    F'0'
         DC    F'0'

DDP1     DC    X'000100010008'
DDDD     DC    C'        '      DD
         DC    X'0000'          Padding

DDP2     DC    X'00070000'

DD2      DC    A(DDP1)
         DC    A(DDP2+X'80000000')

SKIPDAT DS 0H
    };

    __asm {
         LA    R3,0(0,0)   No longer failed

         LA    R1,DDDD
         L     R2,tstr3b
         MVC   0(8,R1),0(R2)
         LA    R1,DYNDE
         SVC   99

FAIL99A  DS    0H

         LA    R1,DDDD
         L     R2,tstr2b
         MVC   0(8,R1),0(R2)
         LA    R1,DYNDE
         SVC   99

FAIL99B  DS    0H

         LA    R1,DDDD
         L     R2,tstr1b
         MVC   0(8,R1),0(R2)
         LA    R1,DYNDE
         SVC   99

FAIL99C  DS    0H
    };

    if (r) return (1);

    sprintf (file, "//DSN:%s", FTPDATA_IN);
    fh = fopen (file, "rb");
    if (fh == NULL) return (1);

//01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901
//          1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122
//                                                                                                    1111111111111111111111

//0---------------DATA SET NAME---------------  ID  SER NO  SEQ NO  CREDT  EXPDT  REFDT  NO EXT  DSORG  RECFM OPTCD BLKSIZE
//0SYS2.LMOD                                     1  WORK04      1   12075  00000  12475     1     PO    U      00    32760 
//0A.A                                           1  WORK04      1   13975  00000  13975     1     PO    FB     00      256 

//0            LRECL  KEYLEN  INITIAL ALLOC  2ND ALLOC/LAST BLK PTR(T-R-L)   USED PDS BYTES  FMT 2 OR 3(C-H-R)/DSCB(C-H-R) 
//0                0            CYLS               0          1   6     0                                        0   1   3 
//0              256            CYLS               0          0  40 20910           25                           0   1   4 

    i = 0;
    while (fread (line, 1, 121, fh) != 0) {
        line [121] = 0;

        if (i == 2) {
            
            strncpy (linea, &(line [13]), 5);
            linea [5] = 0;
            strcat (lineb, " ");
            strcat (lineb, linea);

//01234567890123456789012345678901234567890123456789012345678901234567890
//          1111111111222222222233333333334444444444555555555566666666667

//SYS1.ADATA                                   13975 PO VB   8192  8188
//SYS1.LPALIB                                  12475 PO U   19069     0

//            printf ("%s\n", lineb);

            i = 0;

            if (strncmp (&(lineb [51]), "PS", 2) == 0) {
                directories [dircount].org = 1;
                i++;
            };

            if (strncmp (&(lineb [51]), "PO", 2) == 0) {
                directories [dircount].org = 2;
                i++;
            };

            if (strncmp (&(lineb [54]), "F  ", 3) == 0) {
                directories [dircount].block = 1;
                i++;
            };

            if (strncmp (&(lineb [54]), "FB ", 3) == 0) {
                directories [dircount].block = 2;
                i++;
            };

            if (strncmp (&(lineb [54]), "V  ", 3) == 0) {
                directories [dircount].block = 3;
                i++;
            };

            if (strncmp (&(lineb [54]), "VB ", 3) == 0) {
                directories [dircount].block = 4;
                i++;
            };

            if (i == 2) {
                s = strstr (lineb, " "); /* Get end of filename */
                i = s - lineb;
                strncpy (directories [dircount].name, lineb, i);
                directories [dircount].name [i] = 0;

                i = atol (&(lineb [48])); /* Get year */
                if (i >= 70) {
                    i = i + 1900;
                } else {
                    i = i + 2000;
                };
                i = leapdays (i);
                lineb [48] = 0;
                i += atol (&(lineb [45])); /* Add days */
                directories [dircount].date = i * 24 * 60 * 60; /* time=seconds past 1970 */

                i = 58;
                while (lineb [i] == ' ') i++;
                directories [dircount].blksz = atol (&(lineb [i]));

                i = 64;
                while (lineb [i] == ' ') i++;
                directories [dircount].lrecl = atol (&(lineb [i]));

                dircount++;

                if (dircount == maxdirs) break;
            };
            
            i = 0;
        };

        if ((i == 1) && (strncmp (&(line[13]), "LRECL", 5) == 0)) {

            i = 2;
        };


        if ((line [1] != ' ') && (line [1] != '-')) {

            lineb [0] = 0;

            strncpy (linea, &(line [1]), 44);
            linea [44] = 0;
            strcat (lineb, linea);

            strncpy (linea, &(line [80]), 5);
            linea [5] = 0;
            strcat (lineb, " ");
            strcat (lineb, linea);

            strncpy (linea, &(line [96]), 2);
            linea [2] = 0;
            strcat (lineb, " ");
            strcat (lineb, linea);

            strncpy (linea, &(line [102]), 3);
            linea [3] = 0;
            strcat (lineb, " ");
            strcat (lineb, linea);

            strncpy (linea, &(line [115]), 5);
            linea [5] = 0;
            strcat (lineb, " ");
            strcat (lineb, linea);

            i = 1;
        };
    };

    fclose (fh);

    return (0);

    __asm {
R0       EQU   0
R1       EQU   1
R2       EQU   2
R3       EQU   3
R4       EQU   4
R5       EQU   5
R6       EQU   6
R7       EQU   7
R8       EQU   8
R9       EQU   9
R10      EQU   10
R11      EQU   11
R12      EQU   12
R13      EQU   13
R14      EQU   14
R15      EQU   15
    };
};

#define maxdirent 1000
long pdsecount;
char pdsename [maxdirent][9];

extern long LISTER (char * dsn, char * dest, long * count);
//            [44chars.padded], [1000][9]  , long * retcnt
