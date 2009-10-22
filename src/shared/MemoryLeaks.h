

#ifndef QUADSERVER_MEMORY_H
#define QUADSERVER_MEMORY_H

#include "Platform/CompilerDefs.h"

#if COMPILER == COMPILER_MICROSOFT

#ifndef _WIN64
// Visual Leak Detector support enabled
//#include <vld/vld.h>
// standard Visual Studio leak check disabled,
//#  define _CRTDBG_MAP_ALLOC
//#  include <stdlib.h>
//#  include <crtdbg.h>
#else
//#  define _CRTDBG_MAP_ALLOC
//#  include <stdlib.h>
//#  include <crtdbg.h>
#endif

#endif


#include "Policies/Singleton.h"

struct MemoryManager : public Quad::Singleton < MemoryManager >
{
    MemoryManager();
};
#endif
