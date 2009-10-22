

#if !defined(FIELD_H)
#define FIELD_H

class Field
{
    public:

        enum DataTypes
        {
            DB_TYPE_UNKNOWN = 0x00,
            DB_TYPE_STRING  = 0x01,
            DB_TYPE_INTEGER = 0x02,
            DB_TYPE_FLOAT   = 0x03,
            DB_TYPE_BOOL    = 0x04
        };

        Field();
        Field(Field &f);
        Field(const char *value, enum DataTypes type);

        ~Field();

        enum DataTypes GetType() const { return mType; }

        const char *GetString() const { return mValue; }
        std::string GetCppString() const
        {
            return mValue ? mValue : "";                    // std::string s = 0 have undefine result in C++
        }
        float GetFloat() const { return mValue ? static_cast<float>(atof(mValue)) : 0.0f; }
        bool GetBool() const { return mValue ? atoi(mValue) > 0 : false; }
        int32 GetInt32() const { return mValue ? static_cast<int32>(atol(mValue)) : int32(0); }
        uint8 GetUInt8() const { return mValue ? static_cast<uint8>(atol(mValue)) : uint8(0); }
        uint16 GetUInt16() const { return mValue ? static_cast<uint16>(atol(mValue)) : uint16(0); }
        int16 GetInt16() const { return mValue ? static_cast<int16>(atol(mValue)) : int16(0); }
        uint32 GetUInt32() const { return mValue ? static_cast<uint32>(atol(mValue)) : uint32(0); }
        uint64 GetUInt64() const
        {
            if(mValue)
            {
                uint64 value;
                sscanf(mValue,UI64FMTD,&value);
                return value;
            }
            else
                return 0;
        }
        uint64 GetInt64() const
        {
            if(mValue)
            {
                int64 value;
                sscanf(mValue,SI64FMTD,&value);
                return value;
            }
            else
                return 0;
        }

        void SetType(enum DataTypes type) { mType = type; }

        void SetValue(const char *value);

    private:
        char *mValue;
        enum DataTypes mType;
};
#endif

