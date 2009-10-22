
#ifndef __BATTLEGROUNDRV_H
#define __BATTLEGROUNDRV_H

class BattleGround;

class BattleGroundRVScore : public BattleGroundScore
{
    public:
        BattleGroundRVScore() {};
        virtual ~BattleGroundRVScore() {};
        //TODO fix me
};

class BattleGroundRV : public BattleGround
{
    friend class BattleGroundMgr;

    public:
        BattleGroundRV();
        ~BattleGroundRV();
        void Update(uint32 diff);

        /* inherited from BattlegroundClass */
        virtual void AddPlayer(Player *plr);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        void RemovePlayer(Player *plr, uint64 guid);
        void HandleAreaTrigger(Player *Source, uint32 Trigger);
        bool SetupBattleGround();
        void HandleKillPlayer(Player* player, Player *killer);
};
#endif
