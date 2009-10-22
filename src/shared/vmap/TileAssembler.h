

#ifndef _TILEASSEMBLER_H_
#define _TILEASSEMBLER_H_

// load our modified version first !!
#include "AABSPTree.h"

#include <G3D/Vector3.h>

#include "CoordModelMapping.h"
#include "SubModel.h"
#include "ModelContainer.h"

namespace VMAP
{
    /**
    This Class is used to convert raw vector data into balanced BSP-Trees.
    To start the conversion call convertWorld().
    */
    //===============================================

    class ModelPosition
    {
        private:
            G3D::Matrix3 ixMatrix;
            G3D::Matrix3 iyMatrix;
            G3D::Matrix3 izMatrix;
        public:
            G3D::Vector3 iPos;
            G3D::Vector3 iDir;
            float iScale;
            void init()
            {

                // Swap x and y the raw data uses the axis differently
                ixMatrix = G3D::Matrix3::fromAxisAngle(G3D::Vector3::unitY(),-(G3D::pi()*iDir.x/180.0));
                iyMatrix = G3D::Matrix3::fromAxisAngle(G3D::Vector3::unitX(),-(G3D::pi()*iDir.y/180.0));
                izMatrix = G3D::Matrix3::fromAxisAngle(G3D::Vector3::unitZ(),-(G3D::pi()*iDir.z/180.0));

            }
            G3D::Vector3 transform(const G3D::Vector3& pIn) const;
            void moveToBasePos(const G3D::Vector3& pBasePos) { iPos -= pBasePos; }
    };
    //===============================================

    class TileAssembler
    {
        private:
            CoordModelMapping *iCoordModelMapping;
            std::string iDestDir;
            std::string iSrcDir;
            bool (*iFilterMethod)(char *pName);
            G3D::Table<std::string, unsigned int > iUniqueNameIds;
            unsigned int iCurrentUniqueNameId;

        public:
            TileAssembler(const std::string& pSrcDirName, const std::string& pDestDirName);
            virtual ~TileAssembler();

            bool fillModelContainerArray(const std::string& pDirFileName, unsigned int pMapId, int pXPos, int pYPos, G3D::Array<ModelContainer*>& pMC);
            ModelContainer* processNames(const G3D::Array<std::string>& pPosFileNames, const char* pDestFileName);

            void init();
            bool convertWorld();

            bool fillModelIntoTree(G3D::AABSPTree<SubModel *> *pMainTree, const G3D::Vector3& pBasePos, std::string& pPosFilename, std::string& pModelFilename);
            void getModelPosition(std::string& pPosString, ModelPosition& pModelPosition);
            bool readRawFile(std::string& pModelFilename,  ModelPosition& pModelPosition, G3D::AABSPTree<SubModel *> *pMainTree);
            void addWorldAreaMapId(unsigned int pMapId) { iCoordModelMapping->addWorldAreaMap(pMapId); }
            void setModelNameFilterMethod(bool (*pFilterMethod)(char *pName)) { iFilterMethod = pFilterMethod; }
            std::string getDirEntryNameFromModName(unsigned int pMapId, const std::string& pModPosName);
            unsigned int getUniqueNameId(const std::string pName);
    };
    //===============================================
}                                                           // VMAP
#endif                                                      /*_TILEASSEMBLER_H_*/

