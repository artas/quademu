

#include "CombatAI.h"
#include "SpellMgr.h"

int AggressorAI::Permissible(const Creature *creature)
{
    // have some hostile factions, it will be selected by IsHostileTo check at MoveInLineOfSight
    if( !creature->isCivilian() && !creature->IsNeutralToAll() )
        return PERMIT_BASE_PROACTIVE;

    return PERMIT_BASE_NO;
}

void AggressorAI::UpdateAI(const uint32 /*diff*/)
{
    if(!UpdateVictim())
        return;

    DoMeleeAttackIfReady();
}

// some day we will delete these useless things
int CombatAI::Permissible(const Creature *creature)
{
    return PERMIT_BASE_NO;
}

int ArchorAI::Permissible(const Creature *creature)
{
    return PERMIT_BASE_NO;
}

int TurretAI::Permissible(const Creature *creature)
{
    return PERMIT_BASE_NO;
}

void CombatAI::InitializeAI()
{
    for (uint32 i = 0; i < CREATURE_MAX_SPELLS; ++i)
        if(me->m_spells[i] && GetSpellStore()->LookupEntry(me->m_spells[i]))
            spells.push_back(me->m_spells[i]);

    CreatureAI::InitializeAI();
}

void CombatAI::Reset()
{
    events.Reset();
}

void CombatAI::JustDied(Unit *killer)
{
    for (SpellVct::iterator i = spells.begin(); i != spells.end(); ++i)
        if(AISpellInfo[*i].condition == AICOND_DIE)
            me->CastSpell(killer, *i, true);
}

void CombatAI::EnterCombat(Unit *who)
{
    for (SpellVct::iterator i = spells.begin(); i != spells.end(); ++i)
    {
        if(AISpellInfo[*i].condition == AICOND_AGGRO)
            me->CastSpell(who, *i, false);
        else if(AISpellInfo[*i].condition == AICOND_COMBAT)
            events.ScheduleEvent(*i, AISpellInfo[*i].cooldown + rand()%AISpellInfo[*i].cooldown);
    }
}

void CombatAI::UpdateAI(const uint32 diff)
{
    if(!UpdateVictim())
        return;

    events.Update(diff);

    if(me->hasUnitState(UNIT_STAT_CASTING))
        return;

    if(uint32 spellId = events.ExecuteEvent())
    {
        DoCast(spellId);
        events.ScheduleEvent(spellId, AISpellInfo[spellId].cooldown + rand()%AISpellInfo[spellId].cooldown);
    }
    else
        DoMeleeAttackIfReady();
}

/////////////////
//CasterAI
/////////////////

void CasterAI::InitializeAI()
{
    CombatAI::InitializeAI();

    float m_attackDist = 30.0f;
    for (SpellVct::iterator itr = spells.begin(); itr != spells.end(); ++itr)
        if (AISpellInfo[*itr].condition == AICOND_COMBAT && m_attackDist > GetAISpellInfo(*itr)->maxRange)
            m_attackDist = GetAISpellInfo(*itr)->maxRange;
    if (m_attackDist == 30.0f)
        m_attackDist = MELEE_RANGE;
}

void CasterAI::EnterCombat(Unit *who)
{
    if (spells.empty())
        return;

    uint32 spell = rand()%spells.size();
    uint32 count = 0;
    for (SpellVct::iterator itr = spells.begin(); itr != spells.end(); ++itr, ++count)
    {
        if(AISpellInfo[*itr].condition == AICOND_AGGRO)
            me->CastSpell(who, *itr, false);
        else if (AISpellInfo[*itr].condition == AICOND_COMBAT)
        {
            uint32 cooldown = GetAISpellInfo(*itr)->realCooldown;
            if (count == spell)
            {
                DoCast(spells[spell]);
                cooldown += me->GetCurrentSpellCastTime(*itr);
            }
            events.ScheduleEvent(*itr, cooldown);
        }
    }
}

void CasterAI::UpdateAI(const uint32 diff)
{
    if(!UpdateVictim())
        return;

    events.Update(diff);

    if(me->hasUnitState(UNIT_STAT_CASTING))
        return;

    if(uint32 spellId = events.ExecuteEvent())
    {
        DoCast(spellId);
        uint32 casttime = me->GetCurrentSpellCastTime(spellId);
        events.ScheduleEvent(spellId, (casttime ? casttime : 500) + GetAISpellInfo(spellId)->realCooldown);
    }
}

//////////////
//ArchorAI
//////////////

ArchorAI::ArchorAI(Creature *c) : CreatureAI(c)
{
    ASSERT(me->m_spells[0]);
    m_minRange = GetSpellMinRange(me->m_spells[0], false);
    if(!m_minRange)
        m_minRange = MELEE_RANGE;
    me->m_CombatDistance = GetSpellMaxRange(me->m_spells[0], false);
    me->m_SightDistance = me->m_CombatDistance;
}

void ArchorAI::AttackStart(Unit *who)
{
    if(!who)
        return;

    if(me->IsWithinCombatRange(who, m_minRange))
    {
        if(me->Attack(who, true) && !who->IsFlying())
            me->GetMotionMaster()->MoveChase(who);
    }
    else
    {
        if(me->Attack(who, false) && !who->IsFlying())
            me->GetMotionMaster()->MoveChase(who, me->m_CombatDistance);
    }

    if(who->IsFlying())
        me->GetMotionMaster()->MoveIdle();
}

void ArchorAI::UpdateAI(const uint32 diff)
{
    if(!UpdateVictim())
        return;

    if(!me->IsWithinCombatRange(me->getVictim(), m_minRange))
        DoSpellAttackIfReady(me->m_spells[0]);
    else
        DoMeleeAttackIfReady();
}

//////////////
//TurretAI
//////////////

TurretAI::TurretAI(Creature *c) : CreatureAI(c)
{
    ASSERT(me->m_spells[0]);
    m_minRange = GetSpellMinRange(me->m_spells[0], false);
    me->m_CombatDistance = GetSpellMaxRange(me->m_spells[0], false);
    me->m_SightDistance = me->m_CombatDistance;
}

bool TurretAI::CanAIAttack(const Unit *who) const
{
    // TODO: use one function to replace it
    if(!me->IsWithinCombatRange(me->getVictim(), me->m_CombatDistance)
        || m_minRange && me->IsWithinCombatRange(me->getVictim(), m_minRange))
        return false;
    return true;
}

void TurretAI::AttackStart(Unit *who)
{
    if(who)
        me->Attack(who, false);
}

void TurretAI::UpdateAI(const uint32 diff)
{
    if(!UpdateVictim())
        return;

    DoSpellAttackIfReady(me->m_spells[0]);

    //if(!DoSpellAttackIfReady(me->m_spells[0]))
        //if(HostilReference *ref = me->getThreatManager().getCurrentVictim())
            //ref->removeReference();
}
