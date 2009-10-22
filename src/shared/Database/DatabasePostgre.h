

#ifndef _DatabasePostgre_H
#define _DatabasePostgre_H

#include "Policies/Singleton.h"
#include <stdarg.h>

#ifdef WIN32
#define FD_SETSIZE 1024
#include <winsock2.h>
#include <postgre/libpq-fe.h>
#else
#include <libpq-fe.h>
#endif

class DatabasePostgre : public Database
{
    friend class Quad::OperatorNew<DatabasePostgre>;

    public:
        DatabasePostgre();
        ~DatabasePostgre();

        //! Initializes Postgres and connects to a server.
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

        operator bool () const { return mPGconn != NULL; }

        unsigned long escape_string(char *to, const char *from, unsigned long length);
        using Database::escape_string;

        // must be call before first query in thread
        void ThreadStart();
        // must be call before finish thread run
        void ThreadEnd();
    private:
        ACE_Thread_Mutex mMutex;
        ACE_Based::Thread * tranThread;

        PGconn *mPGconn;

        static size_t db_count;

        bool _TransactionCmd(const char *sql);
        bool _Query(const char *sql, PGresult **pResult, uint64* pRowCount, uint32* pFieldCount);
};
#endif

