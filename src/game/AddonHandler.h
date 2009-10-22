

#ifndef __ADDONHANDLER_H
#define __ADDONHANDLER_H

#include "Common.h"
#include "Config/ConfigEnv.h"
#include "Policies/Singleton.h"

#include "WorldPacket.h"

class AddonHandler
{
    public:
        /* Construction */
        AddonHandler();
        ~AddonHandler();
                                                            //built addon packet
        bool BuildAddonPacket(WorldPacket* Source, WorldPacket* Target);
};
#define sAddOnHandler Quad::Singleton<AddonHandler>::Instance()
#endif

