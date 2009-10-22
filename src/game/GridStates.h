

#ifndef QUAD_GRIDSTATES_H
#define QUAD_GRIDSTATES_H

#include "Map.h"
#include "Object.h"

class QUAD_DLL_DECL GridState
{
    public:
#ifdef QUAD_DEBUG
#define MAGIC_TESTVAL 0xFBE823BA
        GridState() { i_Magic = MAGIC_TESTVAL; }
        bool checkMagic()
        {
            if(i_Magic != MAGIC_TESTVAL)
            {
                sLog.outError("!!! GridState: Magic value gone !!!");
                return false;
            }
            return true;
        }
        void setMagic() { i_Magic = MAGIC_TESTVAL; }
        unsigned int i_Magic;
#endif
        virtual void Update(Map &, NGridType&, GridInfo &, const uint32 &x, const uint32 &y, const uint32 &t_diff) const = 0;
};

class QUAD_DLL_DECL InvalidState : public GridState
{
    public:

        void Update(Map &, NGridType &, GridInfo &, const uint32 &x, const uint32 &y, const uint32 &t_diff) const;
};

class QUAD_DLL_DECL ActiveState : public GridState
{
    public:

        void Update(Map &, NGridType &, GridInfo &, const uint32 &x, const uint32 &y, const uint32 &t_diff) const;
};

class QUAD_DLL_DECL IdleState : public GridState
{
    public:

        void Update(Map &, NGridType &, GridInfo &, const uint32 &x, const uint32 &y, const uint32 &t_diff) const;
};

class QUAD_DLL_DECL RemovalState : public GridState
{
    public:

        void Update(Map &, NGridType &, GridInfo &, const uint32 &x, const uint32 &y, const uint32 &t_diff) const;
};
#endif

