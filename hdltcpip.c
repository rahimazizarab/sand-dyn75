#include "hstdinc.h"
#include "hercules.h"
#include "opcode.h"
#include "inline.h"


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

DEF_INST(dyninst_opcode_75) {
int     r1;                             /* Value of R field          */
int     b2;                             /* Base of effective addr    */
VADR    effective_addr2;                /* Effective address         */

    long            i;
    unsigned char * s;

    /*  vv---vv--------vv---------------- input variables to TCPIP */
    //RX(inst, execflag, regs, r1, b2, effective_addr2);
    RX(inst, regs, r1, b2, effective_addr2); /*JFM*/
    /*                               ^^-- becomes yyy+gr[b]+gr[c] */
    /*                           ^^------ becomes access register c */
    /*                       ^^---------- becomes to-store register a */

    if (regs->GR_L(0) == 0) { /* Only run when R0 = 0, (restart) */

        if (lar_tcpip (&(regs->gr [0])) == 0) { /* Get PC buffer */
            regs->GR_L(15) = -1; /* Error */
            return;
        };

        regs->GR_L(0) = 1;    /* Do not call native routine again */
    };

    while (regs->GR_L(1) != 0) { /* Finished > */

        if (regs->GR_L(3) == 0) { /* Going to host */
            /* Load byte from operand address */
            i = ARCH_DEP(vfetchb) ( effective_addr2, b2, regs );
            s = (unsigned char *)(regs->GR_L(2));
            s [0] = (unsigned char)i;
        } else {                  /* Going from host */
            s = (unsigned char *)(regs->GR_L(2));
            i = s [0];
            /* Store byte at operand address */
            ARCH_DEP(vstoreb) ( i, effective_addr2, b2, regs );
          };

        effective_addr2++;  /* No exception, quick copy without calc's */
        (regs->GR_L(b2))++; /* Exception, can recalculate if/when restart */
        (regs->GR_L(2))++;  /* Next PC byte */
        (regs->GR_L(1))--;  /* One less to copy next time */
    };

    if (lar_tcpip (&(regs->gr [0])) == 0) { /* Run! */
        regs->GR_L(15) = -1; /* Error */
        return;
    };

    regs->GR_L(15) = 0; /* No error */
};

#if !defined(_GEN_ARCH)

#if defined(_ARCHMODE2)
 #define  _GEN_ARCH _ARCHMODE2
 #include "hdltcpip.c"
#endif 

#if defined(_ARCHMODE3)
 #undef   _GEN_ARCH
 #define  _GEN_ARCH _ARCHMODE3
 #include "hdltcpip.c"
#endif 

#undef _GEN_ARCH

#endif

/* We need to do some special tricks for windows here, since windows */
/* does not support backlink and we need to resolve symbols during   */
/* dll initialisation (REGISTER/RESOLVER). Opcode tables are renamed */
/* such that no naming conflicts occur.                              */

#ifndef _GEN_ARCH
#define HDLTCPIP
HDL_DEPENDENCY_SECTION;
{
	HDL_DEPENDENCY(HERCULES);
}
END_DEPENDENCY_SECTION;

HDL_RESOLVER_SECTION;
{
}
END_RESOLVER_SECTION;

HDL_REGISTER_SECTION;
{
#ifdef OPTION_370_MODE
  HDL_REGISTER(s370_dyninst_opcode_75, s370_dyninst_opcode_75);
#endif
#ifdef OPTION_390_MODE
  HDL_REGISTER(s390_dyninst_opcode_75, s390_dyninst_opcode_75);
#endif
#if 1
#ifdef OPTION_900_MODE
  HDL_REGISTER(z900_dyninst_opcode_75, z900_dyninst_opcode_75);
#endif
#endif
}
END_REGISTER_SECTION;
#endif

/*-------------------------------------------------------------------*/
/* 75xx TCP  - TCPIP Ra,yyy(Rb,Rc)  Ra=anything, Rc>4<14, Rb=0/ditto */
/*-------------------------------------------------------------------*/

extern long lar_tcpip (DW * regs);


