

#ifndef _FOLLOWERREFERENCE_H
#define _FOLLOWERREFERENCE_H

#include "Utilities/LinkedReference/Reference.h"

class TargetedMovementGeneratorBase;
class Unit;

class QUAD_DLL_SPEC FollowerReference : public Reference<Unit, TargetedMovementGeneratorBase>
{
    protected:
        void targetObjectBuildLink();
        void targetObjectDestroyLink();
        void sourceObjectDestroyLink();
};
#endif

