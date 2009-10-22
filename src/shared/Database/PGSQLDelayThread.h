

#ifndef __PGSQLDELAYTHREAD_H
#define __PGSQLDELAYTHREAD_H

#include "Database/SqlDelayThread.h"

class PGSQLDelayThread : public SqlDelayThread
{
    public:
        PGSQLDelayThread(Database* db) : SqlDelayThread(db) {}
        void Stop() { SqlDelayThread::Stop(); }
};
#endif                                                      //__PGSQLDELAYTHREAD_H

