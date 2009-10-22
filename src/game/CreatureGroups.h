

#ifndef _FORMATIONS_H
#define _FORMATIONS_H

#include "Common.h"

class CreatureGroup;

struct FormationInfo
{
    uint32 leaderGUID;
    float follow_dist;
    float follow_angle;
    uint8 groupAI;
};

class CreatureGroupManager
{
    public:
        void AddCreatureToGroup(uint32 group_id, Creature *creature);
        void RemoveCreatureFromGroup(CreatureGroup *group, Creature *creature);
        void LoadCreatureFormations();
};

typedef UNORDERED_MAP<uint32/*memberDBGUID*/, FormationInfo*>   CreatureGroupInfoType;

extern CreatureGroupInfoType    CreatureGroupMap;

class CreatureGroup
{
    private:
        Creature *m_leader; //Important do not forget sometimes to work with pointers instead synonims :D:D
        typedef std::map<Creature*, FormationInfo*>  CreatureGroupMemberType;
        CreatureGroupMemberType m_members;

        uint32 m_groupID;
        bool m_Formed;

    public:
        //Group cannot be created empty
        explicit CreatureGroup(uint32 id) : m_groupID(id), m_leader(NULL), m_Formed(false) {}
        ~CreatureGroup() { sLog.outDebug("Destroying group"); }

        Creature* getLeader() const { return m_leader; }
        uint32 GetId() const { return m_groupID; }
        bool isEmpty() const { return m_members.empty(); }
        bool isFormed() const { return m_Formed; }

        void AddMember(Creature *member);
        void RemoveMember(Creature *member);
        void FormationReset(bool dismiss);

        void LeaderMoveTo(float x, float y, float z);
        void MemberAttackStart(Creature* member, Unit *target);
};

#define formation_mgr Quad::Singleton<CreatureGroupManager>::Instance()

#endif
