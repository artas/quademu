

#ifndef QUAD_TOTEMAI_H
#define QUAD_TOTEMAI_H

#include "CreatureAI.h"
#include "Timer.h"

class Creature;
class Totem;

class QUAD_DLL_DECL TotemAI : public CreatureAI
{
    public:

        explicit TotemAI(Creature *c);

        void MoveInLineOfSight(Unit *);
        void AttackStart(Unit *);
        void EnterEvadeMode();

        void UpdateAI(const uint32);
        static int Permissible(const Creature *);

    private:
        uint64 i_victimGuid;
};
#endif

