

#ifndef QUAD_MOVEMENTGENERATOR_IMPL_H
#define QUAD_MOVEMENTGENERATOR_IMPL_H

#include "MovementGenerator.h"

template<class MOVEMENT_GEN>
inline MovementGenerator*
MovementGeneratorFactory<MOVEMENT_GEN>::Create(void *data) const
{
    return (new MOVEMENT_GEN());
}
#endif

