

#ifndef QUADCORE_DYNAMICOBJECT_H
#define QUADCORE_DYNAMICOBJECT_H

#include "Object.h"

class Unit;
struct SpellEntry;

class DynamicObject : public WorldObject
{
    public:
        typedef std::set<Unit*> AffectedSet;
        explicit DynamicObject();

        void AddToWorld();
        void RemoveFromWorld();

        bool Create(uint32 guidlow, Unit *caster, uint32 spellId, uint32 effMask, const Position &pos, int32 duration, float radius, bool active);
        void Update(uint32 p_time);
        void Delete();
        uint32 GetSpellId() const { return m_spellId; }
        uint32 GetEffectMask() const { return m_effMask; }
        void AddEffect(uint32 effIndex) { m_effMask |= (1<<effIndex); }
        bool HasEffect(uint32 effIndex) const { return m_effMask & (1<<effIndex); }
        uint32 GetDuration() const { return m_aliveDuration; }
        uint64 GetCasterGUID() const { return GetUInt64Value(DYNAMICOBJECT_CASTER); }
        Unit* GetCaster() const;
        float GetRadius() const { return m_radius; }
        bool IsAffecting(Unit *unit) const { return m_affected.find(unit) != m_affected.end(); }
        void AddAffected(Unit *unit) { m_affected.insert(unit); }
        void RemoveAffected(Unit *unit) { m_affected.erase(unit); }
        void Delay(int32 delaytime);
        bool isVisibleForInState(Player const* u, bool inVisibleList) const;

        void Say(int32 textId, uint32 language, uint64 TargetGuid) { MonsterSay(textId,language,TargetGuid); }
        void Yell(int32 textId, uint32 language, uint64 TargetGuid) { MonsterYell(textId,language,TargetGuid); }
        void TextEmote(int32 textId, uint64 TargetGuid) { MonsterTextEmote(textId,TargetGuid); }
        void Whisper(int32 textId,uint64 receiver) { MonsterWhisper(textId,receiver); }
        void YellToZone(int32 textId, uint32 language, uint64 TargetGuid) { MonsterYellToZone(textId,language,TargetGuid); }

        GridReference<DynamicObject> &GetGridRef() { return m_gridRef; }
    protected:
        uint32 m_spellId;
        uint32 m_effMask;
        int32 m_aliveDuration;
        uint32 m_updateTimer;
        time_t m_nextThinkTime;
        float m_radius;
        AffectedSet m_affected;
    private:
        GridReference<DynamicObject> m_gridRef;
};
#endif

