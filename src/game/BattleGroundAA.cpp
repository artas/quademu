

#include "BattleGround.h"
#include "BattleGroundAA.h"
#include "Language.h"
#include "Player.h"

BattleGroundAA::BattleGroundAA()
{

    m_StartDelayTimes[BG_STARTING_EVENT_FIRST]  = BG_START_DELAY_1M;
    m_StartDelayTimes[BG_STARTING_EVENT_SECOND] = BG_START_DELAY_30S;
    m_StartDelayTimes[BG_STARTING_EVENT_THIRD]  = BG_START_DELAY_15S;
    m_StartDelayTimes[BG_STARTING_EVENT_FOURTH] = BG_START_DELAY_NONE;
    //we must set messageIds
    m_StartMessageIds[BG_STARTING_EVENT_FIRST]  = LANG_ARENA_ONE_MINUTE;
    m_StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_ARENA_THIRTY_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_THIRD]  = LANG_ARENA_FIFTEEN_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_ARENA_HAS_BEGUN;
}

BattleGroundAA::~BattleGroundAA()
{

}

void BattleGroundAA::Update(uint32 diff)
{
    BattleGround::Update(diff);
}

void BattleGroundAA::StartingEventCloseDoors()
{
}

void BattleGroundAA::StartingEventOpenDoors()
{
}

void BattleGroundAA::AddPlayer(Player *plr)
{
    BattleGround::AddPlayer(plr);
    //create score and add it to map, default values are set in constructor
    BattleGroundAAScore* sc = new BattleGroundAAScore;

    m_PlayerScores[plr->GetGUID()] = sc;
}

void BattleGroundAA::RemovePlayer(Player * /*plr*/, uint64 /*guid*/)
{
}

void BattleGroundAA::HandleKillPlayer(Player* player, Player* killer)
{
    BattleGround::HandleKillPlayer(player, killer);
}

void BattleGroundAA::HandleAreaTrigger(Player * /*Source*/, uint32 /*Trigger*/)
{
}

bool BattleGroundAA::SetupBattleGround()
{
    return true;
}

