

#include "ConfigEnv.h"
#include "Policies/SingletonImp.h"

INSTANTIATE_SINGLETON_1(Config);

Config::Config() : mIgnoreCase(true), mConf(NULL)
{
}

Config::~Config()
{
    delete mConf;
}

bool Config::SetSource(const char *file, bool ignorecase)
{
    mIgnoreCase = ignorecase;
    mFilename = file;

    return Reload();
}

bool Config::Reload()
{
    delete mConf;

    mConf = new DOTCONFDocument(mIgnoreCase ?
        DOTCONFDocument::CASEINSENSETIVE :
    DOTCONFDocument::CASESENSETIVE);

    if (mConf->setContent(mFilename.c_str()) == -1)
    {
        delete mConf;
        mConf = NULL;
        return false;
    }

    return true;
}

std::string Config::GetStringDefault(const char * name, std::string def)
{
    if(!mConf)
        return std::string(def);
    const DOTCONFDocumentNode * node = mConf->findNode(name);
    if(!node || !node->getValue())
        return std::string(def);
    return std::string(node->getValue());
};

bool Config::GetBoolDefault(const char * name, const bool def)
{
    if(!mConf)
        return false;
    const DOTCONFDocumentNode * node = mConf->findNode(name);
    if(!node || !node->getValue())
        return def;
    const char * str = node->getValue();
    if(strcmp(str, "true") == 0 || strcmp(str, "TRUE") == 0 ||
        strcmp(str, "yes") == 0 || strcmp(str, "YES") == 0 ||
        strcmp(str, "1") == 0)
        return true;
    else
        return false;
};

int32 Config::GetIntDefault(const char * name, const int32 def)
{
    if(!mConf)
        return def;
    const DOTCONFDocumentNode * node = mConf->findNode(name);
    if(!node || !node->getValue())
        return def;
    return atoi(node->getValue());
};

float Config::GetFloatDefault(const char * name, const float def)
{
    if(!mConf)
        return def;
    const DOTCONFDocumentNode * node = mConf->findNode(name);
    if(!node || !node->getValue())
        return def;
    return atof(node->getValue());
};
