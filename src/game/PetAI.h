

#ifndef QUAD_PETAI_H
#define QUAD_PETAI_H

#include "CreatureAI.h"
#include "Timer.h"

class Creature;
class Spell;

class QUAD_DLL_DECL PetAI : public CreatureAI
{
    public:

        explicit PetAI(Creature *c);

        void EnterEvadeMode();
        void JustDied(Unit *who) { _stopAttack(); }

        void UpdateAI(const uint32);
        static int Permissible(const Creature *);

        void KilledUnit(Unit *victim);
        void AttackStart(Unit *target);
        void MovementInform(uint32 moveType, uint32 data);

    private:
        bool _isVisible(Unit *) const;
        bool _needToStop(void) const;
        void _stopAttack(void);

        void UpdateAllies();

        TimeTracker i_tracker;
        bool inCombat;
        std::set<uint64> m_AllySet;
        uint32 m_updateAlliesTimer;

        Unit *SelectNextTarget();
        void HandleReturnMovement();
        void DoAttack(Unit *target, bool chase);
        bool _CanAttack(Unit *target);
};
#endif

