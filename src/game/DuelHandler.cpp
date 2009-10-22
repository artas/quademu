

#include "Common.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Log.h"
#include "Opcodes.h"
#include "UpdateData.h"
#include "Player.h"

void WorldSession::HandleDuelAcceptedOpcode(WorldPacket& recvPacket)
{
    uint64 guid;
    Player *pl;
    Player *plTarget;

    if(!GetPlayer()->duel)                                  // ignore accept from duel-sender
        return;

    recvPacket >> guid;

    pl       = GetPlayer();
    plTarget = pl->duel->opponent;

    if(pl == pl->duel->initiator || !plTarget || pl == plTarget || pl->duel->startTime != 0 || plTarget->duel->startTime != 0)
        return;

    //sLog.outDebug( "WORLD: received CMSG_DUEL_ACCEPTED" );
    DEBUG_LOG("Player 1 is: %u (%s)", pl->GetGUIDLow(),pl->GetName());
    DEBUG_LOG("Player 2 is: %u (%s)", plTarget->GetGUIDLow(),plTarget->GetName());

    time_t now = time(NULL);
    pl->duel->startTimer = now;
    plTarget->duel->startTimer = now;

    WorldPacket data(SMSG_DUEL_COUNTDOWN, 4);
    data << (uint32)3000;                                   // 3 seconds
    pl->GetSession()->SendPacket(&data);
    plTarget->GetSession()->SendPacket(&data);
}

void WorldSession::HandleDuelCancelledOpcode(WorldPacket& recvPacket)
{
    //sLog.outDebug( "WORLD: received CMSG_DUEL_CANCELLED" );

    // no duel requested
    if(!GetPlayer()->duel)
        return;

    // player surrendered in a duel using /forfeit
    if(GetPlayer()->duel->startTime != 0)
    {
        GetPlayer()->CombatStopWithPets(true);
        if(GetPlayer()->duel->opponent)
            GetPlayer()->duel->opponent->CombatStopWithPets(true);

        GetPlayer()->CastSpell(GetPlayer(), SPELL_ID_DUEL_BEG, true);    // beg
        GetPlayer()->DuelComplete(DUEL_WON);
        return;
    }

    // player either discarded the duel using the "discard button"
    // or used "/forfeit" before countdown reached 0
    uint64 guid;
    recvPacket >> guid;

    GetPlayer()->DuelComplete(DUEL_INTERUPTED);
}

