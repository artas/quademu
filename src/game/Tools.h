
#ifndef QUAD_TOOLS_H
#define QUAD_TOOLS_H

#include "Common.h"
#include "WorldPacket.h"

bool readGUID(WorldPacket & data, uint64& guid);
void    writeGUID(WorldPacket & data, uint64 & guid);
#endif

