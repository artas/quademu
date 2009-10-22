

#ifndef MANGOSSERVER_VEHICLE_H
#define MANGOSSERVER_VEHICLE_H

#include "ObjectDefines.h"

struct VehicleEntry;
struct VehicleSeatEntry;
class Unit;

enum PowerType
{
    POWER_STEAM     = 61,
    POWER_PYRITE    = 41,
};

struct VehicleSeat
{
    explicit VehicleSeat(VehicleSeatEntry const *_seatInfo) : seatInfo(_seatInfo), passenger(NULL) {}
    VehicleSeatEntry const *seatInfo;
    Unit* passenger;
};

typedef std::map<int8, VehicleSeat> SeatMap;

class QUAD_DLL_SPEC Vehicle
{
    public:
        explicit Vehicle(Unit *unit, VehicleEntry const *vehInfo);
        virtual ~Vehicle();

        void Install();
        void Uninstall();
        void Reset();
        void Die();
        void InstallAllAccessories();

        Unit *GetBase() const { return me; }
        VehicleEntry const *GetVehicleInfo() { return m_vehicleInfo; }

        bool HasEmptySeat(int8 seatId) const;
        Unit *GetPassenger(int8 seatId) const;
        int8 GetNextEmptySeat(int8 seatId, bool next) const;
        bool AddPassenger(Unit *passenger, int8 seatId = -1);
        void RemovePassenger(Unit *passenger);
        void RemoveAllPassengers();
        void Dismiss();

        SeatMap m_Seats;

    protected:
        Unit *me;
        VehicleEntry const *m_vehicleInfo;
        uint32 m_usableSeatNum;

        void InstallAccessory(uint32 entry, int8 seatId, bool minion = true);
};
#endif
