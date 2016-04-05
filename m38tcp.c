/* M38TCP.C     (c) Copyright Jan Jaeger, 1999-2004                  */
/*              Modular support for Jason Winter's TCPIP instruction */

// $Id: m38tcp.c,v 1.4 2006-12-25 12:14:09 jj Exp $

// $Log: m38tcp.c,v $
// Revision 1.4  2006-12-25 12:14:09  jj
// Include psysblk for cygwin
//
// Revision 1.3  2006-12-08 07:52:09  jj
// Add id and log comments
//

#include "hstdinc.h"
#include "hercules.h"
#include "opcode.h"
#include "inline.h"
#include "m38tcp.h" 

#if defined(WIN32)
 SYSBLK *psysblk;
#endif

#if !defined(_GEN_ARCH)

#if defined(_ARCHMODE2)
 #define  _GEN_ARCH _ARCHMODE2
 #include "m38tcp.c"
#endif 

#if defined(_ARCHMODE3)
 #undef   _GEN_ARCH
 #define  _GEN_ARCH _ARCHMODE3
 #include "m38tcp.c"
#endif 


HDL_DEPENDENCY_SECTION;
{
//   HDL_DEPENDENCY(HERCULES);
     HDL_DEPENDENCY(REGS);
     HDL_DEPENDENCY(SYSBLK);

} END_DEPENDENCY_SECTION;


HDL_REGISTER_SECTION;
{
#if defined(_370)
    HDL_REGISTER(s370_dyninst_opcode_75,s370_jpw_tcpip);
#endif /*defined(_390)*/
} END_REGISTER_SECTION;


HDL_RESOLVER_SECTION;
{
#if defined(WIN32)
    HDL_RESOLVE_PTRVAR(psysblk,sysblk);
#endif
} END_RESOLVER_SECTION;


#endif /*!defined(_GEN_ARCH)*/
