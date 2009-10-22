

#ifndef QUAD_SKILLDISCOVERY_H
#define QUAD_SKILLDISCOVERY_H

#include "Common.h"

class Player;

void LoadSkillDiscoveryTable();
uint32 GetSkillDiscoverySpell(uint32 skillId, uint32 spellId, Player* player);
uint32 GetExplicitDiscoverySpell(uint32 spellId, Player* player);
#endif

