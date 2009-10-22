

#ifndef __SCRIPT_CALLS_H
#define __SCRIPT_CALLS_H

#include "Common.h"
#include "ObjectMgr.h"

class Creature;
class CreatureAI;
class GameObject;
class Item;
class Player;
class Quest;
class SpellCastTargets;
class Map;
class InstanceData;

bool LoadScriptingModule(char const* libName = "");
void UnloadScriptingModule();

//On Event Handlers
typedef void(QUAD_IMPORT * scriptCallOnLogin) (Player *pPlayer);
typedef void(QUAD_IMPORT * scriptCallOnLogout) (Player *pPlayer);
typedef void(QUAD_IMPORT * scriptCallOnPVPKill) (Player *killer, Player *killed);
typedef bool(QUAD_IMPORT * scriptCallOnSpellCast)(Unit *pUnitTarget, Item *pItemTarget, GameObject *pGoTarget, uint32 i, SpellEntry const *spell);
typedef uint32(QUAD_IMPORT * scriptCallOnGetXP) (Player *pPlayer, uint32 amount);
typedef int32(QUAD_IMPORT * scriptCallOnGetMoney) (Player *pPlayer, int32 amount);
typedef bool(QUAD_IMPORT * scriptCallOnPlayerChat) (Player *pPlayer, const char *text);
typedef void(QUAD_IMPORT * scriptCallOnServerStartup) ();
typedef void(QUAD_IMPORT * scriptCallOnServerShutdown) ();
typedef void(QUAD_IMPORT * scriptCallOnAreaChange) (Player *pPlayer, AreaTableEntry const *pArea);
typedef bool(QUAD_IMPORT * scriptCallOnItemClick) (Player *pPlayer, Item *pItem);
typedef bool(QUAD_IMPORT * scriptCallOnItemOpen) (Player *pPlayer, Item *pItem);
typedef bool(QUAD_IMPORT * scriptCallOnGoClick) (Player *pPlayer, GameObject *pGameObject);
typedef void(QUAD_IMPORT * scriptCallOnCreatureKill) (Player *pPlayer, Creature *pCreature);

typedef void(QUAD_IMPORT * scriptCallScriptsInit) (char const*);
typedef void(QUAD_IMPORT * scriptCallScriptsFree) ();
typedef char const* (QUAD_IMPORT * scriptCallScriptsVersion) ();

typedef bool(QUAD_IMPORT * scriptCallGossipHello) (Player *player, Creature *_Creature );
typedef bool(QUAD_IMPORT * scriptCallQuestAccept) (Player *player, Creature *_Creature, Quest const *);
typedef bool(QUAD_IMPORT * scriptCallGossipSelect)(Player *player, Creature *_Creature, uint32 sender, uint32 action);
typedef bool(QUAD_IMPORT * scriptCallGossipSelectWithCode)( Player *player, Creature *_Creature, uint32 sender, uint32 action, const char* sCode );
typedef bool(QUAD_IMPORT * scriptCallGOSelect)(Player *player, GameObject *_GO, uint32 sender, uint32 action);
typedef bool(QUAD_IMPORT * scriptCallGOSelectWithCode)( Player *player, GameObject *_GO, uint32 sender, uint32 action, const char* sCode );
typedef bool(QUAD_IMPORT * scriptCallQuestSelect)( Player *player, Creature *_Creature, Quest const* );
typedef bool(QUAD_IMPORT * scriptCallQuestComplete)(Player *player, Creature *_Creature, Quest const*);
typedef uint32(QUAD_IMPORT * scriptCallNPCDialogStatus)( Player *player, Creature *_Creature);
typedef uint32(QUAD_IMPORT * scriptCallGODialogStatus)( Player *player, GameObject * _GO);
typedef bool(QUAD_IMPORT * scriptCallChooseReward)( Player *player, Creature *_Creature, Quest const*, uint32 opt );
typedef bool(QUAD_IMPORT * scriptCallItemHello)( Player *player, Item *, Quest const*);
typedef bool(QUAD_IMPORT * scriptCallGOHello)( Player *player, GameObject * );
typedef bool(QUAD_IMPORT * scriptCallAreaTrigger)( Player *player, AreaTriggerEntry const* );
typedef bool(QUAD_IMPORT * scriptCallItemQuestAccept)(Player *player, Item *, Quest const*);
typedef bool(QUAD_IMPORT * scriptCallGOQuestAccept)(Player *player, GameObject *, Quest const*);
typedef bool(QUAD_IMPORT * scriptCallGOChooseReward)(Player *player, GameObject *, Quest const*, uint32 opt );
typedef bool(QUAD_IMPORT * scriptCallItemUse) (Player *player, Item *_Item, SpellCastTargets const& targets);
typedef bool(QUAD_IMPORT * scriptCallItemExpire) (Player *player, ItemPrototype const *_ItemProto);
typedef bool(QUAD_IMPORT * scriptCallEffectDummyGameObj) (Unit *caster, uint32 spellId, uint32 effIndex, GameObject *gameObjTarget);
typedef bool(QUAD_IMPORT * scriptCallEffectDummyCreature) (Unit *caster, uint32 spellId, uint32 effIndex, Creature *crTarget);
typedef bool(QUAD_IMPORT * scriptCallEffectDummyItem) (Unit *caster, uint32 spellId, uint32 effIndex, Item *itemTarget);
typedef CreatureAI* (QUAD_IMPORT * scriptCallGetAI) ( Creature *_Creature );
typedef InstanceData* (QUAD_IMPORT * scriptCallCreateInstanceData) (Map *map);

typedef struct
{
    scriptCallScriptsInit ScriptsInit;
    scriptCallScriptsFree ScriptsFree;
    scriptCallScriptsVersion ScriptsVersion;

    scriptCallOnLogin OnLogin;
    scriptCallOnLogout OnLogout;
    scriptCallOnPVPKill OnPVPKill;
    scriptCallOnSpellCast OnSpellCast;
    scriptCallOnGetXP OnGetXP;
    scriptCallOnGetMoney OnGetMoney;
    scriptCallOnPlayerChat OnPlayerChat;
    scriptCallOnServerStartup OnServerStartup;
    scriptCallOnServerShutdown OnServerShutdown;
    scriptCallOnAreaChange OnAreaChange;
    scriptCallOnItemClick OnItemClick;
    scriptCallOnItemOpen OnItemOpen;
    scriptCallOnGoClick OnGoClick;
    scriptCallOnCreatureKill OnCreatureKill;
    scriptCallGossipHello GossipHello;
    scriptCallGOChooseReward GOChooseReward;
    scriptCallQuestAccept QuestAccept;
    scriptCallGossipSelect GossipSelect;
    scriptCallGossipSelectWithCode GossipSelectWithCode;
    scriptCallGOSelect GOSelect;
    scriptCallGOSelectWithCode GOSelectWithCode;
    scriptCallQuestSelect QuestSelect;
    scriptCallQuestComplete QuestComplete;
    scriptCallNPCDialogStatus NPCDialogStatus;
    scriptCallGODialogStatus GODialogStatus;
    scriptCallChooseReward ChooseReward;
    scriptCallItemHello ItemHello;
    scriptCallGOHello GOHello;
    scriptCallAreaTrigger scriptAreaTrigger;
    scriptCallItemQuestAccept ItemQuestAccept;
    scriptCallGOQuestAccept GOQuestAccept;
    scriptCallItemUse ItemUse;
    scriptCallItemExpire ItemExpire;
    scriptCallEffectDummyGameObj  EffectDummyGameObj;
    scriptCallEffectDummyCreature EffectDummyCreature;
    scriptCallEffectDummyItem     EffectDummyItem;
    scriptCallGetAI GetAI;
    scriptCallCreateInstanceData CreateInstanceData;

    QUAD_LIBRARY_HANDLE hScriptsLib;
}_ScriptSet,*ScriptsSet;

extern ScriptsSet Script;
#endif

