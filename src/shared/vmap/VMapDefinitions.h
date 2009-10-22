

#ifndef _VMAPDEFINITIONS_H
#define _VMAPDEFINITIONS_H
#include <cstring>

namespace VMAP
{
    //=====================================
    #define MAX_CAN_FALL_DISTANCE 10.0
    const char VMAP_MAGIC[] = "VMAP_2.0";

    class VMapDefinitions
    {
        public:
            static const double getMaxCanFallDistance() { return(MAX_CAN_FALL_DISTANCE); }
    };

    //======================================
}
#endif

