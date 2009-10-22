

#ifndef __MYSQLDELAYTHREAD_H
#define __MYSQLDELAYTHREAD_H

#include "Database/SqlDelayThread.h"

class MySQLDelayThread : public SqlDelayThread
{
    public:
        MySQLDelayThread(Database* db) : SqlDelayThread(db) {}
        void Stop() { SqlDelayThread::Stop(); }
};
#endif                                                      //__MYSQLDELAYTHREAD_H

