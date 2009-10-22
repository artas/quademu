

#include <cstdlib>
#include "ObjectLifeTime.h"

namespace Quad
{
    extern "C" void external_wrapper(void *p)
    {
        std::atexit( (void (*)())p );
    }

    void QUAD_DLL_SPEC at_exit( void (*func)() )
    {
        external_wrapper((void*)func);
    }
}

