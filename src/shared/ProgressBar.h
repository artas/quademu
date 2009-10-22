
#ifndef QUADCORE_PROGRESSBAR_H
#define QUADCORE_PROGRESSBAR_H

#include "Platform/Define.h"

class QUAD_DLL_SPEC barGoLink
{
    static char const * const empty;
    static char const * const full;

    int rec_no;
    int rec_pos;
    int num_rec;
    int indic_len;

    public:

        void step( void );
        barGoLink( int );
        ~barGoLink();
};
#endif

