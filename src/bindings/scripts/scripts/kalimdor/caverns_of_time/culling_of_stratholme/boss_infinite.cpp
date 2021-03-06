/*
* 
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
*/

#include "precompiled.h"
#include "culling_of_stratholme.h"

enum Spells
{
    SPELL_CORRUPTING_BLIGHT           = 60588,
    SPELL_VOID_STRIKE                 = 60590
};

struct QUAD_DLL_DECL boss_infiniteAI : public ScriptedAI
{
    boss_infiniteAI(Creature *c) : ScriptedAI(c)
    {
        pInstance = c->GetInstanceData();
    }
    
    ScriptedInstance* pInstance;

    void Reset()
    {
        if (pInstance)
            pInstance->SetData(DATA_INFINITE_EVENT, NOT_STARTED);
    }
    
    void EnterCombat(Unit* who)
    {
        if (pInstance)
            pInstance->SetData(DATA_INFINITE_EVENT, IN_PROGRESS);
    }

    void AttackStart(Unit* who) {}
    void MoveInLineOfSight(Unit* who) {}
    void UpdateAI(const uint32 diff)
    {
        //Return since we have no target
        if (!UpdateVictim())
            return;

        DoMeleeAttackIfReady();
    }
    
    void JustDied(Unit* killer)
    {
        if (pInstance)
            pInstance->SetData(DATA_INFINITE_EVENT, DONE);
    }
};

CreatureAI* GetAI_boss_infinite(Creature* pCreature)
{
    return new boss_infiniteAI (pCreature);
}

void AddSC_infinite_epoch()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "boss_infinite";
    newscript->GetAI = &GetAI_boss_infinite;
    newscript->RegisterSelf();
}