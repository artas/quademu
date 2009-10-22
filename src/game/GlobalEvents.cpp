

/** \file
    \ingroup world
*/

#include "Log.h"
#include "Database/DatabaseEnv.h"
#include "Database/DatabaseImpl.h"
#include "Platform/Define.h"
#include "MapManager.h"
#include "ObjectAccessor.h"
#include "GlobalEvents.h"
#include "ObjectDefines.h"
#include "Corpse.h"

static void CorpsesEraseCallBack(QueryResult *result, bool bones)
{
    if(!result)
        return;

    do
    {
        Field *fields = result->Fetch();
        uint32 guidlow = fields[0].GetUInt32();
        float positionX = fields[1].GetFloat();
        float positionY = fields[2].GetFloat();
        uint32 mapid    = fields[3].GetUInt32();
        uint64 player_guid = MAKE_NEW_GUID(fields[4].GetUInt32(), 0, HIGHGUID_PLAYER);

        uint64 guid = MAKE_NEW_GUID(guidlow, 0, HIGHGUID_CORPSE);

        sLog.outDebug("[Global event] Removing %s %u (X:%f Y:%f Map:%u).",(bones?"bones":"corpse"),guidlow,positionX,positionY,mapid);

        /// Resurrectable - convert corpses to bones
        if(!bones)
        {
            if(!ObjectAccessor::Instance().ConvertCorpseForPlayer(player_guid))
            {
                sLog.outDebug("Corpse %u not found in world or bones creating forbidden. Delete from DB.",guidlow);
                CharacterDatabase.PExecute("DELETE FROM corpse WHERE guid = '%u'",guidlow);
            }
        }
        else
            ///- or delete bones
        {
            MapManager::Instance().RemoveBonesFromMap(mapid, guid, positionX, positionY);

            ///- remove bones from the database
            CharacterDatabase.PExecute("DELETE FROM corpse WHERE guid = '%u'",guidlow);
        }
    } while (result->NextRow());

    delete result;
}

/// Handle periodic erase of corpses and bones
static void CorpsesErase(bool bones,uint32 delay)
{
    ///- Get the list of eligible corpses/bones to be removed
    //No SQL injection (uint32 and enum)
    CharacterDatabase.AsyncPQuery(&CorpsesEraseCallBack, bones, "SELECT guid,position_x,position_y,map,player FROM corpse WHERE UNIX_TIMESTAMP()-time > '%u' AND corpse_type %s '0'", delay, (bones ? "=" : "<>"));
}

/// not thread guarded variant for call from other thread
void CorpsesErase()
{
    CorpsesErase(true, 20*MINUTE);
    CorpsesErase(false,3*DAY);
}

