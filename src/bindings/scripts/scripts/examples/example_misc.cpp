/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>

 */

/* ScriptData
SDName: Example_Misc
SD%Complete: 100
SDComment: Item, Areatrigger and other small code examples
SDCategory: Script Examples
EndScriptData */

#include "precompiled.h"

enum eSay
{
    SAY_HI  = -1999925
};

bool AT_example_areatrigger(Player* pPlayer, AreaTriggerEntry *pAt)
{
    DoScriptText(SAY_HI, pPlayer);
    return true;
}

extern void LoadDatabase();
bool ItemUse_example_item(Player* pPlayer, Item* pItem, SpellCastTargets const& scTargets)
{
    LoadDatabase();
    return true;
}

bool GOHello_example_go_teleporter(Player* pPlayer, GameObject* pGo)
{
    pPlayer->TeleportTo(0, 1807.07f, 336.105f, 70.3975f, 0.0f);
    return false;
}

void AddSC_example_misc()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "example_areatrigger";
    newscript->pAreaTrigger = &AT_example_areatrigger;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "example_item";
    newscript->pItemUse = &ItemUse_example_item;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "example_go_teleporter";
    newscript->pGOHello = &GOHello_example_go_teleporter;
    newscript->RegisterSelf();
}
