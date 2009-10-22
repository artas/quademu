

#if !defined(QUERYRESULTPOSTGRE_H)
#define QUERYRESULTPOSTGRE_H

#ifdef WIN32
#define FD_SETSIZE 1024
#include <winsock2.h>
#include <postgre/libpq-fe.h>
#include <postgre/pg_type.h>
#else
#include <libpq-fe.h>
#include <postgres.h>
#include <catalog/pg_type.h>
#endif

class QueryResultPostgre : public QueryResult
{
    public:
        QueryResultPostgre(PGresult *result, uint64 rowCount, uint32 fieldCount);

        ~QueryResultPostgre();

        bool NextRow();

    private:
        enum Field::DataTypes ConvertNativeType(Oid pOid) const;
        void EndQuery();

        PGresult *mResult;
        uint32 mTableIndex;
};
#endif

