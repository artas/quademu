

#include "ManagedModelContainer.h"

using namespace G3D;

namespace VMAP
{

    ManagedModelContainer::ManagedModelContainer(void) : ModelContainer()
    {
        refCount = 0;
    }

    ManagedModelContainer::~ManagedModelContainer(void)
    {
    }

}

