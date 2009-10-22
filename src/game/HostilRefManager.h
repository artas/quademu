

#ifndef _HOSTILEREFMANAGER
#define _HOSTILEREFMANAGER

#include "Common.h"
#include "Utilities/LinkedReference/RefManager.h"

class Unit;
class ThreatManager;
class HostilReference;
struct SpellEntry;

//=================================================

class HostilRefManager : public RefManager<Unit, ThreatManager>
{
    private:
        Unit *iOwner;
    public:
        explicit HostilRefManager(Unit *pOwner) { iOwner = pOwner; }
        ~HostilRefManager();

        Unit* getOwner() { return iOwner; }

        // send threat to all my hateres for the pVictim
        // The pVictim is hated than by them as well
        // use for buffs and healing threat functionality
        void threatAssist(Unit *pVictim, float fThreat, SpellEntry const *threatSpell = 0, bool pSingleTarget = false);

        void addThreatPercent(int32 iPercent);

        // The references are not needed anymore
        // tell the source to remove them from the list and free the mem
        void deleteReferences();

        HostilReference* getFirst() { return ((HostilReference* ) RefManager<Unit, ThreatManager>::getFirst()); }

        void updateThreatTables();

        void setOnlineOfflineState(bool bIsOnline);

        // set state for one reference, defined by Unit
        void setOnlineOfflineState(Unit *pCreature, bool bIsOnline);

        // delete one reference, defined by Unit
        void deleteReference(Unit *pCreature);
};
//=================================================
#endif

