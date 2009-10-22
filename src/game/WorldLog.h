

/// \addtogroup u2w
/// @{
/// \file

#ifndef QUAD_WORLDLOG_H
#define QUAD_WORLDLOG_H

#include "Common.h"
#include "Policies/Singleton.h"
#include "Errors.h"

#include <stdarg.h>

/// %Log packets to a file
class MANGOS_DLL_DECL WorldLog : public MaNGOS::Singleton<WorldLog, MaNGOS::ClassLevelLockable<WorldLog, ACE_Thread_Mutex> >
{
    friend class Quad::OperatorNew<WorldLog>;
    WorldLog();
    WorldLog(const WorldLog &);
    WorldLog& operator=(const WorldLog &);
    typedef MaNGOS::ClassLevelLockable<WorldLog, ACE_Thread_Mutex>::Lock Guard;

    /// Close the file in destructor
    ~WorldLog();

    public:
        void Initialize();
        /// Is the world logger active?
        bool LogWorld(void) const { return (i_file != NULL); }
        /// %Log to the file
        void outLog(char const *fmt, ...);
        void outTimestampLog(char const *fmt, ...);

    private:
        FILE *i_file;

        bool m_dbWorld;
};

#define sWorldLog WorldLog::Instance()
#endif
/// @}

