

#ifndef QUAD_WAYPOINTMANAGER_H
#define QUAD_WAYPOINTMANAGER_H

#include <vector>

struct WaypointData
{
    uint32 id;
    float x,y,z;
    bool run;
    uint32 delay;
    uint32 event_id;
    uint8 event_chance;
};

typedef std::vector<WaypointData*> WaypointPath;
extern UNORDERED_MAP<uint32, WaypointPath*> waypoint_map;

class WaypointStore
{
    private :
        uint32  records;

    public:
        void UpdatePath(uint32 id);
        void Load();
        void Free();

        WaypointPath* GetPath(uint32 id)
        {
            if(waypoint_map.find(id) != waypoint_map.end())
                return waypoint_map[id];
            else return 0;
        }

        inline uint32 GetRecordsCount() { return records; }
};

extern WaypointStore WaypointMgr;

#endif

