/*
*** For *nix type systems:
*** compile by: (Update "i686" to "i586" if required.) ***

gcc -DHAVE_CONFIG_H -I. -fomit-frame-pointer -O3 -march=i686 -W -Wall -shared -export-dynamic -o dyn75.dll dyn75.c tcpip.c .libs/libherc.dll.a .libs/libhercs.dll.a

  *** Or ***
  
gcc -DHAVE_CONFIG_H -I. -fomit-frame-pointer -O3 -march=i686 -W -Wall -shared -export-dynamic -o dyn75.dll dyn75.c tcpip.c hercules.a

libherc*.dll.a - is windows only, it's not required on unix.
It provides back-link support under cygwin.

If hercules is built without libtool, then hercules.a should
be used to include backlink support.

You can then issue ldmod dyninst dyn75 from the hercules panel,
or add the same statement to the hercules.cnf file.
*/

#include <stdio.h>
#include "hstdinc.h"

/* Original code from 2003/4 starts here... */

#include "hercules.h"

#if defined(WIN32) && !defined(HDL_USE_LIBTOOL)
/* We need to do some special tricks for cygwin here, since cygwin   */
/* does not support backlink and we need to resolve symbols during   */
/* dll initialisation (REGISTER/RESOLVER). Opcode tables are renamed */
/* such that no naming conflicts occur.                              */
 #define opcode_table opcode_table_r
 #define opcode_01xx  opcode_01xx_r
 #define opcode_a5xx  opcode_a5xx_r
 #define opcode_a4xx  opcode_a4xx_r
 #define opcode_a7xx  opcode_a1xx_r
 #define opcode_b2xx  opcode_b2xx_r
 #define opcode_b3xx  opcode_b3xx_r
 #define opcode_b9xx  opcode_b9xx_r
 #define opcode_c0xx  opcode_c0xx_r
 #define opcode_e3xx  opcode_e3xx_r
 #define opcode_e5xx  opcode_e5xx_r
 #define opcode_e6xx  opcode_e6xx_r
 #define opcode_ebxx  opcode_ebxx_r
 #define opcode_ecxx  opcode_ecxx_r
 #define opcode_edxx  opcode_edxx_r
 #define s370_opcode_table s370_opcode_table_r
 #define s390_opcode_table s390_opcode_table_r
 #define z900_opcode_table z900_opcode_table_r
#endif

#include "opcode.h"

#if defined(WIN32) && !defined(HDL_USE_LIBTOOL)
 #undef opcode_table
 #undef opcode_01xx
 #undef opcode_a5xx
 #undef opcode_a4xx
 #undef opcode_a7xx
 #undef opcode_b2xx
 #undef opcode_b3xx
 #undef opcode_b9xx
 #undef opcode_c0xx
 #undef opcode_e3xx
 #undef opcode_e5xx
 #undef opcode_e6xx
 #undef opcode_ebxx
 #undef opcode_ecxx
 #undef opcode_edxx
 #undef s370_opcode_table
 #undef s390_opcode_table
 #undef z900_opcode_table
#endif

#include "inline.h"
/*-------------------------------------------------------------------*/
/* 75xx TCP  - TCPIP Ra,yyy(Rb,Rc)  Ra=anything, Rc>4<14, Rb=0/ditto */
/*-------------------------------------------------------------------*/

extern long lar_tcpip (DW * regs); /* function in my tcpip.c file */

/******************************************************************************/

#if !defined(ebcdic_to_ascii)
#define ebcdic_to_ascii
static unsigned char DCCebcdic_to_ascii[] = {
    "\x00\x01\x02\x03\x9C\x09\x86\x7F\x97\x8D\x8E\x0B\x0C\x0D\x0E\x0F"
    "\x10\x11\x12\x13\x9D\x0A\x08\x87\x18\x19\x92\x8F\x1C\x1D\x1E\x1F"
    "\x80\x81\x82\x83\x84\x85\x17\x1B\x88\x89\x8A\x8B\x8C\x05\x06\x07"
    "\x90\x91\x16\x93\x94\x95\x96\x04\x98\x99\x9A\x9B\x14\x15\x9E\x1A"
    "\x20\xA0\xE2\xE4\xE0\xE1\xE3\xE5\xE7\xF1\xA2\x2E\x3C\x28\x2B\x7C"
    "\x26\xE9\xEA\xEB\xE8\xED\xEE\xEF\xEC\xDF\x21\x24\x2A\x29\x3B\x5E"
    "\x2D\x2F\xC2\xC4\xC0\xC1\xC3\xC5\xC7\xD1\xA6\x2C\x25\x5F\x3E\x3F"
    "\xF8\xC9\xCA\xCB\xC8\xCD\xCE\xCF\xCC\x60\x3A\x23\x40\x27\x3D\x22"
    "\xD8\x61\x62\x63\x64\x65\x66\x67\x68\x69\xAB\xBB\xF0\xFD\xFE\xB1"
    "\xB0\x6A\x6B\x6C\x6D\x6E\x6F\x70\x71\x72\xAA\xBA\xE6\xB8\xC6\xA4"
    "\xB5\x7E\x73\x74\x75\x76\x77\x78\x79\x7A\xA1\xBF\xD0\x5B\xDE\xAE"
    "\xAC\xA3\xA5\xB7\xA9\xA7\xB6\xBC\xBD\xBE\xDD\xA8\xAF\x5D\xB4\xD7"
    "\x7B\x41\x42\x43\x44\x45\x46\x47\x48\x49\xAD\xF4\xF6\xF2\xF3\xF5"
    "\x7D\x4A\x4B\x4C\x4D\x4E\x4F\x50\x51\x52\xB9\xFB\xFC\xF9\xFA\xFF"
    "\x5C\xF7\x53\x54\x55\x56\x57\x58\x59\x5A\xB2\xD4\xD6\xD2\xD3\xD5"
    "\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39\xB3\xDB\xDC\xD9\xDA\x9F"
};
#endif

#if !defined(ascii_to_ebcdic)
#define ascii_to_ebcdic
static unsigned char DCCascii_to_ebcdic[] = {
    "\x00\x01\x02\x03\x37\x2D\x2E\x2F\x16\x05\x15\x0B\x0C\x0D\x0E\x0F"
    "\x10\x11\x12\x13\x3C\x3D\x32\x26\x18\x19\x3F\x27\x1C\x1D\x1E\x1F"
    "\x40\x5A\x7F\x7B\x5B\x6C\x50\x7D\x4D\x5D\x5C\x4E\x6B\x60\x4B\x61"
    "\xF0\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\x7A\x5E\x4C\x7E\x6E\x6F"
    "\x7C\xC1\xC2\xC3\xC4\xC5\xC6\xC7\xC8\xC9\xD1\xD2\xD3\xD4\xD5\xD6"
    "\xD7\xD8\xD9\xE2\xE3\xE4\xE5\xE6\xE7\xE8\xE9\xAD\xE0\xBD\x5F\x6D"
    "\x79\x81\x82\x83\x84\x85\x86\x87\x88\x89\x91\x92\x93\x94\x95\x96"
    "\x97\x98\x99\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xC0\x4F\xD0\xA1\x07"
    "\x20\x21\x22\x23\x24\x25\x06\x17\x28\x29\x2A\x2B\x2C\x09\x0A\x1B"
    "\x30\x31\x1A\x33\x34\x35\x36\x08\x38\x39\x3A\x3B\x04\x14\x3E\xFF"
    "\x41\xAA\x4A\xB1\x9F\xB2\x6A\xB5\xBB\xB4\x9A\x8A\xB0\xCA\xAF\xBC"
    "\x90\x8F\xEA\xFA\xBE\xA0\xB6\xB3\x9D\xDA\x9B\x8B\xB7\xB8\xB9\xAB"
    "\x64\x65\x62\x66\x63\x67\x9E\x68\x74\x71\x72\x73\x78\x75\x76\x77"
    "\xAC\x69\xED\xEE\xEB\xEF\xEC\xBF\x80\xFD\xFE\xFB\xFC\xBA\xAE\x59"
    "\x44\x45\x42\x46\x43\x47\x9C\x48\x54\x51\x52\x53\x58\x55\x56\x57"
    "\x8C\x49\xCD\xCE\xCB\xCF\xCC\xE1\x70\xDD\xDE\xDB\xDC\x8D\x8E\xDF"
};
#endif


/*
  R0  = 0 (Initially, but turns to > 0 after the native call.
  R1  = Byte Counter
  R2  = Source/Destination of PC buffer.  32bits.
  R3  = Direction (0 = to Host PC, 1 = from Host PC)
  R4  = Returned Bytes

  R7 \
  R8 |= Used by the lar_tcpip function (but not here.)
  R9 /

  R14 = Identifier (returned & passed back for conversations.)
  R15 = Work Variable / Return Code
*/

DLL_EXPORT DEF_INST(dyninst_opcode_75) {
    int     r1;              /* Value of R field       */
    int     b2;              /* Base of effective addr */
    VADR    effective_addr2; /* Effective address      */
    long    i;
    unsigned char * s;

    /*  vv---vv---------------- input variables to TCPIP */
    RX(inst, regs, r1, b2, effective_addr2);
    /*                     ^^-- becomes yyy+gr[b]+gr[c] */
    /*                 ^^------ becomes access register c */
    /*             ^^---------- becomes to-store register a */

   int m,k,j;
  // BYTE *p;            /* global storage */
   char *p;            /* global storage */
   char keywd[50];
   char ipaddr[50];
   p = malloc(1+strlen(ipaddr));
   printf("==>  dyn75.c  \n");
  // p = (BYTE *)MADDR (regs->GR_L(4), 0, regs, ACCTYPE_READ, regs->psw.pkey);
   p = MADDR (regs->GR_L(4), 0, regs, ACCTYPE_READ, regs->psw.pkey);

 /* now get parameter 1 to EZASOKET, which is the function required */
 /* There's bound to be a macro that would do this, but I
 didn't notice it in hmacros */

 strncpy(keywd, p, sizeof keywd);

 /* finally we're pointing to the EBCDIC string */
 /* time to convert to ASCII. Although we could do the */
 /* comparison in EBCDIC */

 /* EBCDIC2ASCII */

        m = sizeof keywd;
        j = 0;
        k = 0;
        while (m) {
            keywd [k++] = DCCebcdic_to_ascii [(unsigned char)(keywd [j++])];
              m--;
              }
    keywd[sizeof keywd - 1] = '\0';

#include <errno.h>
#include <netdb.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

    struct hostent *he;
    struct in_addr **addr_list;
    he = gethostbyname(keywd);
    // print information about this host:
    printf("Official name is: %s\n", he->h_name);
     strncpy(keywd, he->h_name, sizeof keywd);
    printf("    IP addresses: ");
    addr_list = (struct in_addr **)he->h_addr_list;
    for(i = 0; addr_list[i] != NULL; i++) {
        printf("%s ", inet_ntoa(*addr_list[i]));
        if (i==0)
        strncpy(ipaddr, inet_ntoa(*addr_list[i]),sizeof ipaddr);
        else
        {
        strcat(ipaddr, " , ");
        strncat(ipaddr, inet_ntoa(*addr_list[i]),sizeof ipaddr);
        }
    }
    printf("\n");

    printf ("ip address  in DYN75.c  %s  ******  \n", &ipaddr);
//    return 0;

 /* ASCII2EBCDIC */


        m = sizeof ipaddr;
        j = 0;
        k = 0;
        while (m) {
             ipaddr [k++] = DCCascii_to_ebcdic [(unsigned char)(ipaddr [j++])];
              m--;
              }

    printf ("ip address  in DYN75.c  %s  ******  \n", &ipaddr);

    strcpy(p,ipaddr);   
  printf (" p ==> %p \n",&p);  
  printf (" p str ==> %s \n",p);  
  printf (" ipaddr ==> %p \n",&ipaddr);  
  printf (" ipaddr str ==> %s \n",&ipaddr);  
  printf (" p string ==> %s \n",p);  
  p = (BYTE *)MADDR(regs->GR_L(4), 0, regs, ACCTYPE_WRITE, regs->psw.pkey);
    // free(p);
return 0;
}

#if !defined(_GEN_ARCH)

  #if defined(_ARCHMODE2)
  #define _GEN_ARCH _ARCHMODE2
  #include "dyn75.c"
  #endif 

  #if defined(_ARCHMODE3)
  #undef _GEN_ARCH
  #define _GEN_ARCH _ARCHMODE3
  #include "dyn75.c"
  #endif 

/* Libtool static name colision resolution */
/* note : lt_dlopen will look for symbol & modulename_LTX_symbol */
#if !defined(HDL_BUILD_SHARED) && defined(HDL_USE_LIBTOOL)
#define hdl_ddev dyn75_LTX_hdl_ddev
#define hdl_depc dyn75_LTX_hdl_depc
#define hdl_reso dyn75_LTX_hdl_reso
#define hdl_init dyn75_LTX_hdl_init
#define hdl_fini dyn75_LTX_hdl_fini
#endif

HDL_DEPENDENCY_SECTION;

HDL_DEPENDENCY (HERCULES);
HDL_DEPENDENCY (REGS);

END_DEPENDENCY_SECTION;

HDL_REGISTER_SECTION;

HDL_REGISTER (s370_dyninst_opcode_75, s370_dyninst_opcode_75);
 HDL_REGISTER (s390_dyninst_opcode_75, s390_dyninst_opcode_75);
 HDL_REGISTER (z900_dyninst_opcode_75, z900_dyninst_opcode_75);

END_REGISTER_SECTION;

#endif /*!defined(_GEN_ARCH)*/
