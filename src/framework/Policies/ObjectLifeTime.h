

#ifndef QUAD_OBJECTLIFETIME_H
#define QUAD_OBJECTLIFETIME_H

#include <stdexcept>
#include "Platform/Define.h"

typedef void (* Destroyer)(void);

namespace Quad
{
    void QUAD_DLL_SPEC at_exit( void (*func)() );

    template <class T>
        class QUAD_DLL_DECL ObjectLifeTime
    {
        public:
            static void ScheduleCall(void (*destroyer)() )
            {
                at_exit( destroyer );
            }

            DECLSPEC_NORETURN static void OnDeadReference(void) ATTR_NORETURN;

    };

    template <class T>
        void ObjectLifeTime<T>::OnDeadReference(void)       // We don't handle Dead Reference for now
    {
        throw std::runtime_error("Dead Reference");
    }
}
#endif

