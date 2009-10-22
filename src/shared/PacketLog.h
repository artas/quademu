

#ifndef QUADCORE_PACKETLOG_H
#define QUADCORE_PACKETLOG_H

#include "Common.h"
#include "Policies/Singleton.h"
#include "RealmPacket.h"
#include "WorldPacket.h"

class PacketLog
{
    public:
        PacketLog();
        ~PacketLog();

        int hextoint(char c);
        char makehexchar(int i);

        void HexDump(const unsigned char* data, size_t length, const char* file);
        void HexDump(const char *data, size_t length, const char* file);
        void HexDumpStr(const char *msg, const char *data, size_t len, const char* file);

        void RealmHexDump(RealmPacket * data, uint32 socket, bool direction);

        void WorldHexDump(WorldPacket * data, uint32 socket, bool direction);
};

#define sPacketLog Quad::Singleton<PacketLog>::Instance()
#endif

