

#ifndef CONFIG_H
#define CONFIG_H

#include <Policies/Singleton.h>
#include "Platform/Define.h"

class DOTCONFDocument;

class QUAD_DLL_SPEC Config
{
    public:
        Config();
        ~Config();

        bool SetSource(const char *file, bool ignorecase = true);
        bool Reload();

        std::string GetStringDefault(const char * name, std::string def);
        bool GetBoolDefault(const char * name, const bool def);
        int32 GetIntDefault(const char * name, const int32 def);
        float GetFloatDefault(const char * name, const float def);

        std::string GetFilename() const { return mFilename; }
    private:
        std::string mFilename;
        bool mIgnoreCase;
        DOTCONFDocument *mConf;
};

#define sConfig Quad::Singleton<Config>::Instance()

#endif

