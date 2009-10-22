

#include "TreeNode.h"

using namespace G3D;

namespace VMAP
{

    TreeNode const* TreeNode::getChild(TreeNode const* pValueArray,int pNo) const
    {
        if(iChilds[pNo] != -1)
            return(&pValueArray[iChilds[pNo]]);
        else
            return(NULL);
    }

    //=================================================================
    //=================================================================
    //=================================================================
}

