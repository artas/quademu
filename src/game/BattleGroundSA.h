

#ifndef __BATTLEGROUNDSA_H
#define __BATTLEGROUNDSA_H

class BattleGround;

class BattleGroundSAScore : public BattleGroundScore
{
    public:
        BattleGroundSAScore() {};
        virtual ~BattleGroundSAScore() {};
};

class BattleGroundSA : public BattleGround
{
    friend class BattleGroundMgr;

    public:
        BattleGroundSA();
        ~BattleGroundSA();
        void Update(uint32 diff);

        /* inherited from BattlegroundClass */
        virtual void AddPlayer(Player *plr);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        void RemovePlayer(Player *plr,uint64 guid);
        void HandleAreaTrigger(Player *Source, uint32 Trigger);
        //bool SetupBattleGround();

        /* Scorekeeping */
        void UpdatePlayerScore(Player *Source, uint32 type, uint32 value);

    private:
};
#endif
