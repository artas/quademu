

#ifndef QUAD_TIMER_H
#define QUAD_TIMER_H

#include "Platform/CompilerDefs.h"

#if PLATFORM == PLATFORM_WINDOWS
#   include <ace/config-all.h>
#   include <mmsystem.h>
#   include <time.h>
#else
# if defined(__APPLE_CC__)
#   include <time.h>
# endif
#   include <sys/time.h>
#   include <sys/timeb.h>
#endif

#if PLATFORM == PLATFORM_WINDOWS
inline uint32 getMSTime() { return GetTickCount(); }
#else
inline uint32 getMSTime()
{
    struct timeval tv;
    struct timezone tz;
    gettimeofday( &tv, &tz );
    return (tv.tv_sec * 1000) + (tv.tv_usec / 1000);
}
#endif

inline uint32 getMSTimeDiff(uint32 oldMSTime, uint32 newMSTime)
{
    // getMSTime() have limited data range and this is case when it overflow in this tick
    if (oldMSTime > newMSTime)
        return (0xFFFFFFFF - oldMSTime) + newMSTime;
    else
        return newMSTime - oldMSTime;
}

class IntervalTimer
{
    public:
        IntervalTimer() : _interval(0), _current(0) {}

        void Update(time_t diff) { _current += diff; if(_current<0) _current=0;}
        bool Passed() { return _current >= _interval; }
        void Reset() { if(_current >= _interval) _current -= _interval;  }

        void SetCurrent(time_t current) { _current = current; }
        void SetInterval(time_t interval) { _interval = interval; }
        time_t GetInterval() const { return _interval; }
        time_t GetCurrent() const { return _current; }

    private:
        time_t _interval;
        time_t _current;
};

struct TimeTracker
{
    TimeTracker(time_t expiry) : i_expiryTime(expiry) {}
    void Update(time_t diff) { i_expiryTime -= diff; }
    bool Passed(void) const { return (i_expiryTime <= 0); }
    void Reset(time_t interval) { i_expiryTime = interval; }
    time_t GetExpiry(void) const { return i_expiryTime; }
    time_t i_expiryTime;
};

struct TimeTrackerSmall
{
    TimeTrackerSmall(int32 expiry) : i_expiryTime(expiry) {}
    void Update(int32 diff) { i_expiryTime -= diff; }
    bool Passed(void) const { return (i_expiryTime <= 0); }
    void Reset(int32 interval) { i_expiryTime = interval; }
    int32 GetExpiry(void) const { return i_expiryTime; }
    int32 i_expiryTime;
};

#endif

