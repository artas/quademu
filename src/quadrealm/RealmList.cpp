

/** \file
    \ingroup realmd
*/

#include "Common.h"
#include "RealmList.h"
#include "Policies/SingletonImp.h"
#include "Database/DatabaseEnv.h"

INSTANTIATE_SINGLETON_1(RealmList);

extern DatabaseType loginDatabase;

RealmList::RealmList() : m_UpdateInterval(0), m_NextUpdateTime(time(NULL))
{
}

/// Load the realm list from the database
void RealmList::Initialize(uint32 updateInterval)
{
    m_UpdateInterval = updateInterval;

    ///- Get the content of the realmlist table in the database
    UpdateRealms(true);
}

void RealmList::UpdateRealm(uint32 ID, const std::string& name, const std::string& address, uint32 port, uint8 icon, uint8 color, uint8 timezone, AccountTypes allowedSecurityLevel, float popu, uint32 build)
{
    ///- Create new if not exist or update existed
    Realm& realm = m_realms[name];

    realm.m_ID      = ID;
    realm.name      = name;
    realm.icon      = icon;
    realm.color     = color;
    realm.timezone  = timezone;
    realm.allowedSecurityLevel = allowedSecurityLevel;
    realm.populationLevel        = popu;

    ///- Append port to IP address.
    std::ostringstream ss;
    ss << address << ":" << port;
    realm.address   = ss.str();
    realm.gamebuild = build;
}

void RealmList::UpdateIfNeed()
{
    // maybe disabled or updated recently
    if (!m_UpdateInterval || m_NextUpdateTime > time(NULL))
        return;

    m_NextUpdateTime = time(NULL) + m_UpdateInterval;

    // Clears Realm list
    m_realms.clear();

    // Get the content of the realmlist table in the database
    UpdateRealms(false);
}

void RealmList::UpdateRealms(bool init)
{
    sLog.outDetail("Updating Realm List...");

    QueryResult *result = loginDatabase.Query("SELECT id, name, address, port, icon, color, timezone, allowedSecurityLevel, population, gamebuild FROM realmlist WHERE color <> 3 ORDER BY name");

    ///- Circle through results and add them to the realm map
    if (result)
    {
        do
        {
            Field *fields = result->Fetch();

            uint8 allowedSecurityLevel = fields[7].GetUInt8();

            UpdateRealm(fields[0].GetUInt32(), fields[1].GetCppString(),fields[2].GetCppString(),fields[3].GetUInt32(),fields[4].GetUInt8(), fields[5].GetUInt8(), fields[6].GetUInt8(), (allowedSecurityLevel <= SEC_ADMINISTRATOR ? AccountTypes(allowedSecurityLevel) : SEC_ADMINISTRATOR), fields[8].GetFloat(), fields[9].GetUInt32());
            if (init)
                sLog.outString("Added realm \"%s\".", fields[1].GetString());
        } while(result->NextRow());
        delete result;
    }
}
