

#ifndef _COORDMODELMAPPING_H_
#define _COORDMODELMAPPING_H_

#include <cstdio>
#include <G3D/Table.h>
#include <G3D/Array.h>

/**
This Class is a helper Class to convert the raw vector data into BSP-Trees.
We read the directory file of the raw data output and build logical groups.
Models with a lot of vectors are not merged into a resulting model, but separated into an additional file.
*/

namespace VMAP
{

    #define MIN_VERTICES_FOR_OWN_CONTAINER_FILE 65000

    // if we are in an instance
    #define MIN_INST_VERTICES_FOR_OWN_CONTAINER_FILE 40000

    //=====================================================
    class NameCollection
    {
        public:
            G3D::Array<std::string> iMainFiles;
            G3D::Array<std::string> iSingeFiles;

            void appendToMain(const std::string& pStr) { iMainFiles.append(pStr); }
            void appendToSingle(const std::string& pStr) { iSingeFiles.append(pStr); }

            size_t size() { return (iMainFiles.size() + iSingeFiles.size()); }
    };

    //=====================================================

    class CMappingEntry
    {
        private:
            int xPos;
            int yPos;
            unsigned int iMapId;
            G3D::Array<std::string> iFilenames;

        public:
            CMappingEntry() { };
            CMappingEntry(unsigned int pMapId, const int pXPos, const int pYPos)
            {
                iMapId = pMapId;
                xPos = pXPos; yPos = pYPos;
            };
            ~CMappingEntry() {};

            void addFilename(char *pName);
            const std::string getKeyString() const;
            inline const G3D::Array<std::string>& getFilenames() const { return(iFilenames); }

            static const std::string getKeyString(unsigned int pMapId, int pXPos, int pYPos);

    };

    //=====================================================

    class CoordModelMapping
    {
        private:
            G3D::Table<std::string, CMappingEntry *> iMapObjectFiles;
            G3D::Table<std::string, std::string> iProcesseSingleFiles;
            G3D::Array<unsigned int> iMapIds;
            G3D::Array<unsigned int> iWorldAreaGroups;
            bool (*iFilterMethod)(char *pName);

            inline void addCMappingEntry(CMappingEntry* pCMappingEntry)
            {
                iMapObjectFiles.set(pCMappingEntry->getKeyString(), pCMappingEntry);
            }

            inline CMappingEntry* getCMappingEntry(const std::string& pKey)
            {
                if(iMapObjectFiles.containsKey(pKey))
                    return(iMapObjectFiles.get(pKey));
                else
                    return 0;
            }

        public:
            CoordModelMapping() { iFilterMethod = NULL; }
            virtual ~CoordModelMapping();

            bool readCoordinateMapping(const std::string& pDirectoryFileName);

            const NameCollection getFilenamesForCoordinate(unsigned int pMapId, int xPos, int yPos);

            static unsigned int getMapIdFromFilename(const std::string& pName)
            {
                size_t spos;

                spos = pName.find_last_of('/');
                std::string basename = pName.substr(0, spos);
                spos = basename.find_last_of('/');
                std::string groupname = basename.substr(spos+1, basename.length());
                unsigned int mapId = atoi(groupname.c_str());
                return(mapId);
            }

            const G3D::Array<unsigned int>& getMaps() const { return iMapIds; }
            bool isAlreadyProcessedSingleFile(const std::string& pName) const { return iProcesseSingleFiles.containsKey(pName); }
            void addAlreadyProcessedSingleFile(const std::string& pName) { iProcesseSingleFiles.set(pName,pName); }

            inline void addWorldAreaMap(unsigned int pMapId)
            {
                if(!iWorldAreaGroups.contains(pMapId))
                {
                    iWorldAreaGroups.append(pMapId);
                }
            }
            inline bool isWorldAreaMap(unsigned int pMapId) { return(iWorldAreaGroups.contains(pMapId)); }
            void setModelNameFilterMethod(bool (*pFilterMethod)(char *pName)) { iFilterMethod = pFilterMethod; }

    };
}
#endif                                                      /*_COORDMODELMAPPING_H_*/

