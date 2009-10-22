

#ifndef __SQLDELAYTHREAD_H
#define __SQLDELAYTHREAD_H

#include "ace/Thread_Mutex.h"
#include "LockedQueue.h"
#include "Threading.h"

class Database;
class SqlOperation;

class SqlDelayThread : public ACE_Based::Runnable
{
    typedef ACE_Based::LockedQueue<SqlOperation*, ACE_Thread_Mutex> SqlQueue;

    private:
        SqlQueue m_sqlQueue;                                ///< Queue of SQL statements
        Database* m_dbEngine;                               ///< Pointer to used Database engine
        volatile bool m_running;

        SqlDelayThread();
    public:
        SqlDelayThread(Database* db);

        ///< Put sql statement to delay queue
        bool Delay(SqlOperation* sql) { m_sqlQueue.add(sql); return true; }

        virtual void Stop();                                ///< Stop event
        virtual void run();                                 ///< Main Thread loop
};
#endif                                                      //__SQLDELAYTHREAD_H

