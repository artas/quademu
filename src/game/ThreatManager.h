

#ifndef _THREATMANAGER
#define _THREATMANAGER

#include "Common.h"
#include "SharedDefines.h"
#include "Utilities/LinkedReference/Reference.h"
#include "UnitEvents.h"

#include <list>

//==============================================================

class Unit;
class Creature;
class ThreatManager;
struct SpellEntry;

#define THREAT_UPDATE_INTERVAL 1 * IN_MILISECONDS    // Server should send threat update to client periodically each second

//==============================================================
// Class to calculate the real threat based

class ThreatCalcHelper
{
    public:
        static float calcThreat(Unit* pHatedUnit, Unit* pHatingUnit, float fThreat, SpellSchoolMask schoolMask = SPELL_SCHOOL_MASK_NORMAL, SpellEntry const *threatSpell = NULL);
};

//==============================================================
class QUAD_DLL_SPEC HostilReference : public Reference<Unit, ThreatManager>
{
    public:
        HostilReference(Unit* pUnit, ThreatManager *pThreatManager, float fThreat);

        //=================================================
        void addThreat(float fModThreat);

        void setThreat(float fThreat) { addThreat(fThreat - getThreat()); }

        void addThreatPercent(int32 pPercent)
        {
            float tmpThreat = iThreat;
            tmpThreat = tmpThreat * (pPercent+100.0f) / 100.0f;
            addThreat(tmpThreat-iThreat);
        }

        float getThreat() const { return iThreat; }

        bool isOnline() const { return iOnline; }

        // The Unit might be in water and the creature can not enter the water, but has range attack
        // in this case online = true, but accessible = false
        bool isAccessible() const { return iAccessible; }

        // used for temporary setting a threat and reducting it later again.
        // the threat modification is stored
        void setTempThreat(float fThreat)
        {
            iTempThreatModifier = fThreat - getThreat();
            if (iTempThreatModifier != 0.0f)
                addThreat(iTempThreatModifier);
        }

        void resetTempThreat()
        {
            if (iTempThreatModifier != 0.0f)
            {
                addThreat(-iTempThreatModifier);
                iTempThreatModifier = 0.0f;
            }
        }

        float getTempThreatModifier() { return iTempThreatModifier; }

        //=================================================
        // check, if source can reach target and set the status
        void updateOnlineStatus();

        void setOnlineOfflineState(bool pIsOnline);

        void setAccessibleState(bool pIsAccessible);
        //=================================================

        bool operator ==(const HostilReference& pHostilReference) const { return pHostilReference.getUnitGuid() == getUnitGuid(); }

        //=================================================

        uint64 getUnitGuid() const { return iUnitGuid; }

        //=================================================
        // reference is not needed anymore. realy delete it !

        void removeReference();

        //=================================================

        HostilReference* next() { return ((HostilReference* ) Reference<Unit, ThreatManager>::next()); }

        //=================================================

        // Tell our refTo (target) object that we have a link
        void targetObjectBuildLink();

        // Tell our refTo (taget) object, that the link is cut
        void targetObjectDestroyLink();

        // Tell our refFrom (source) object, that the link is cut (Target destroyed)
        void sourceObjectDestroyLink();
    private:
        // Inform the source, that the status of that reference was changed
        void fireStatusChanged(ThreatRefStatusChangeEvent& pThreatRefStatusChangeEvent);

        Unit* getSourceUnit();
    private:
        float iThreat;
        float iTempThreatModifier;                          // used for taunt
        uint64 iUnitGuid;
        bool iOnline;
        bool iAccessible;
};

//==============================================================
class ThreatManager;

class QUAD_DLL_SPEC ThreatContainer
{
    private:
        std::list<HostilReference*> iThreatList;
        bool iDirty;
    protected:
        friend class ThreatManager;

        void remove(HostilReference* pRef) { iThreatList.remove(pRef); }
        void addReference(HostilReference* pHostilReference) { iThreatList.push_back(pHostilReference); }
        void clearReferences();
        // Sort the list if necessary
        void update();
    public:
        ThreatContainer() { iDirty = false; }
        ~ThreatContainer() { clearReferences(); }

        HostilReference* addThreat(Unit* pVictim, float fThreat);

        void modifyThreatPercent(Unit *pVictim, int32 iPercent);

        HostilReference* selectNextVictim(Creature* pAttacker, HostilReference* pCurrentVictim);

        void setDirty(bool pDirty) { iDirty = pDirty; }

        bool isDirty() { return iDirty; }

        bool empty() { return(iThreatList.empty()); }

        HostilReference* getMostHated() { return iThreatList.empty() ? NULL : iThreatList.front(); }

        HostilReference* getReferenceByTarget(Unit* pVictim);

        std::list<HostilReference*>& getThreatList() { return iThreatList; }
};

//=================================================

class QUAD_DLL_SPEC ThreatManager
{
    public:
        friend class HostilReference;

        explicit ThreatManager(Unit *pOwner);

        ~ThreatManager() { clearReferences(); }

        void clearReferences();

        void addThreat(Unit* pVictim, float fThreat, SpellSchoolMask schoolMask = SPELL_SCHOOL_MASK_NORMAL, SpellEntry const *threatSpell = NULL);
        void modifyThreatPercent(Unit *pVictim, int32 iPercent);

        float getThreat(Unit *pVictim, bool pAlsoSearchOfflineList = false);

        bool isThreatListEmpty() { return iThreatContainer.empty(); }

        void processThreatEvent(ThreatRefStatusChangeEvent* threatRefStatusChangeEvent);

        bool isNeedUpdateToClient(uint32 time);

        HostilReference* getCurrentVictim() { return iCurrentVictim; }

        Unit* getOwner() { return iOwner; }

        Unit* getHostilTarget();

        void tauntApply(Unit* pTaunter);
        void tauntFadeOut(Unit *pTaunter);

        void setCurrentVictim(HostilReference* pHostilReference);

        void setDirty(bool bDirty) { iThreatContainer.setDirty(bDirty); }

        // methods to access the lists from the outside to do some dirty manipulation (scriping and such)
        // I hope they are used as little as possible.
        std::list<HostilReference*>& getThreatList() { return iThreatContainer.getThreatList(); }
        std::list<HostilReference*>& getOfflieThreatList() { return iThreatOfflineContainer.getThreatList(); }
        ThreatContainer& getOnlineContainer() { return iThreatContainer; }
        ThreatContainer& getOfflineContainer() { return iThreatOfflineContainer; }
    private:
        void _addThreat(Unit *pVictim, float fThreat);

        HostilReference* iCurrentVictim;
        Unit* iOwner;
        uint32 iUpdateTimer;
        ThreatContainer iThreatContainer;
        ThreatContainer iThreatOfflineContainer;
};

//=================================================
#endif

