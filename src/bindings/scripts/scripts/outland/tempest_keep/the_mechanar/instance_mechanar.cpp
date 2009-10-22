/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>

 */

/* ScriptData
SDName: Instance_Mechanar
SD%Complete: 100
SDComment:
SDCategory: Mechanar
EndScriptData */

#include "precompiled.h"
#include "mechanar.h"

#define MAX_ENCOUNTER      1

struct QUAD_DLL_DECL instance_mechanar : public ScriptedInstance
{
    instance_mechanar(Map* pMap) : ScriptedInstance(pMap) {Initialize();};

    uint32 m_auiEncounter[MAX_ENCOUNTER];

    void Initialize()
    {
        memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));
    }

    bool IsEncounterInProgress() const
    {
        for (uint8 i = 0; i < MAX_ENCOUNTER; ++i)
            if (m_auiEncounter[i] == IN_PROGRESS)
                return true;

        return false;
    }

    uint32 GetData(uint32 type)
    {
        switch(type)
        {
        case DATA_NETHERMANCER_EVENT:   return m_auiEncounter[0];
        }

        return false;
    }

    uint64 GetData64 (uint32 identifier)
    {
        return 0;
    }

    void SetData(uint32 type, uint32 data)
    {
        switch(type)
        {
        case DATA_NETHERMANCER_EVENT:   m_auiEncounter[0] = data;   break;
        }
    }
};

InstanceData* GetInstanceData_instance_mechanar(Map* pMap)
{
    return new instance_mechanar(pMap);
}

void AddSC_instance_mechanar()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "instance_mechanar";
    newscript->GetInstanceData = &GetInstanceData_instance_mechanar;
    newscript->RegisterSelf();
}

