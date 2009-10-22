

#ifndef DO_POSTGRESQL

#ifndef _DATABASEMYSQL_H
#define _DATABASEMYSQL_H

#include "Database.h"
#include "Policies/Singleton.h"
#include "ace/Thread_Mutex.h"
#include "ace/Guard_T.h"

#ifdef WIN32
#define FD_SETSIZE 1024
#include <winsock2.h>
#include <mysql/mysql.h>
#else
#include <mysql.h>
#endif

class QUAD_DLL_SPEC DatabaseMysql : public Database
{
    friend class Quad::OperatorNew<DatabaseMysql>;

    public:
        DatabaseMysql();
        ~DatabaseMysql();

        //! Initializes Mysql and connects to a server.
        /*! infoString should be formated like hostname;username;password;database. */
        bool Initialize(const char *infoString);
        void InitDelayThread();
        void HaltDelayThread();
        QueryResult* Query(const char *sql);
        QueryNamedResult* QueryNamed(const char *sql);
        bool Execute(const char *sql);
        bool DirectExecute(const char* sql);
        bool BeginTransaction();
        bool CommitTransaction();
        bool RollbackTransaction();

        operator bool () const { return mMysql != NULL; }

        unsigned long escape_string(char *to, const char *from, unsigned long length);
        using Database::escape_string;

        // must be call before first query in thread
        void ThreadStart();
        // must be call before finish thread run
        void ThreadEnd();
    private:
        ACE_Thread_Mutex mMutex;

        ACE_Based::Thread * tranThread;

        MYSQL *mMysql;

        static size_t db_count;

        bool _TransactionCmd(const char *sql);
        bool _Query(const char *sql, MYSQL_RES **pResult, MYSQL_FIELD **pFields, uint64* pRowCount, uint32* pFieldCount);
};
#endif
#endif

