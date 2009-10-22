

#ifndef QUAD_REACTORAI_H
#define QUAD_REACTORAI_H

#include "CreatureAI.h"

class Unit;

class QUAD_DLL_DECL ReactorAI : public CreatureAI
{
    public:

        explicit ReactorAI(Creature *c) : CreatureAI(c) {}

        void MoveInLineOfSight(Unit *);

        void UpdateAI(const uint32);
        static int Permissible(const Creature *);
};
#endif

