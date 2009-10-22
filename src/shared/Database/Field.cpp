

#include "DatabaseEnv.h"

Field::Field() :
mValue(NULL), mType(DB_TYPE_UNKNOWN)
{
}

Field::Field(Field &f)
{
    const char *value;

    value = f.GetString();

    if (value && (mValue = new char[strlen(value) + 1]))
        strcpy(mValue, value);
    else
        mValue = NULL;

    mType = f.GetType();
}

Field::Field(const char *value, enum Field::DataTypes type) :
mType(type)
{
    if (value && (mValue = new char[strlen(value) + 1]))
        strcpy(mValue, value);
    else
        mValue = NULL;
}

Field::~Field()
{
    if(mValue) delete [] mValue;
}

void Field::SetValue(const char *value)
{
    if(mValue) delete [] mValue;

    if (value)
    {
        mValue = new char[strlen(value) + 1];
        strcpy(mValue, value);
    }
    else
        mValue = NULL;
}

