

#include "MemoryLeaks.h"
#include "Policies/SingletonImp.h"

INSTANTIATE_SINGLETON_1( MemoryManager ) ;

MemoryManager::MemoryManager( )
{
    #if COMPILER == MICROSOFT
    // standard leak check initialization
    //_CrtSetDbgFlag( _CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
    // uncomment to disable Visual Leak Detector from code
    //VLDDisable();
    #endif
}
