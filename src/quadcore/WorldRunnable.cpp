

/** \file
    \ingroup Quad
*/

#include "Common.h"
#include "ObjectAccessor.h"
#include "World.h"
#include "WorldSocketMgr.h"
#include "Database/DatabaseEnv.h"

#include "BattleGroundMgr.h"
#include "MapManager.h"
#include "Timer.h"
#include "WorldRunnable.h"

#if (defined(WIN32) || defined(SHORT_SLEEP))
#define WORLD_SLEEP_CONST 50
#else
#define WORLD_SLEEP_CONST 100                               //Is this still needed?? [On linux some time ago not working 50ms]
#endif

#ifdef WIN32
#include "ServiceWin32.h"
extern int m_ServiceStatus;
#endif

/// Heartbeat for the World
void WorldRunnable::run()
{
    ///- Init new SQL thread for the world database
    WorldDatabase.ThreadStart();                                // let thread do safe mySQL requests (one connection call enough)
    CharacterDatabase.ThreadStart();
    loginDatabase.ThreadStart();
    sWorld.InitResultQueue();

    uint32 realCurrTime = 0;
    uint32 realPrevTime = getMSTime();

    uint32 prevSleepTime = 0;                               // used for balanced full tick time length near WORLD_SLEEP_CONST

    ///- While we have not World::m_stopEvent, update the world
    while (!World::IsStopped())
    {
        ++World::m_worldLoopCounter;
        realCurrTime = getMSTime();

        uint32 diff = getMSTimeDiff(realPrevTime,realCurrTime);

        sWorld.Update( diff );
        realPrevTime = realCurrTime;

        // diff (D0) include time of previous sleep (d0) + tick time (t0)
        // we want that next d1 + t1 == WORLD_SLEEP_CONST
        // we can't know next t1 and then can use (t0 + d1) == WORLD_SLEEP_CONST requirement
        // d1 = WORLD_SLEEP_CONST - t0 = WORLD_SLEEP_CONST - (D0 - d0) = WORLD_SLEEP_CONST + d0 - D0
        if (diff <= WORLD_SLEEP_CONST+prevSleepTime)
        {
            prevSleepTime = WORLD_SLEEP_CONST+prevSleepTime-diff;
            ACE_Based::Thread::Sleep(prevSleepTime);
        }
        else
            prevSleepTime = 0;

        #ifdef WIN32
            if (m_ServiceStatus == 0) World::StopNow(SHUTDOWN_EXIT_CODE);
            while (m_ServiceStatus == 2) Sleep(1000);
        #endif
    }

    sWorld.KickAll();                                       // save and kick all players
    sWorld.UpdateSessions( 1 );                             // real players unload required UpdateSessions call

    // unload battleground templates before different singletons destroyed
    sBattleGroundMgr.DeleteAllBattleGrounds();

    sWorldSocketMgr->StopNetwork();

    MapManager::Instance().UnloadAll();                     // unload all grids (including locked in memory)

    ///- End the database thread
    WorldDatabase.ThreadEnd();                                  // free mySQL thread resources
    CharacterDatabase.ThreadStart();
    loginDatabase.ThreadEnd();
}
