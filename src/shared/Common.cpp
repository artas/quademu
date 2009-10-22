

#include "Common.h"

char const* localeNames[MAX_LOCALE] = {
  "enUS",
  "koKR",
  "frFR",
  "deDE",
  "zhCN",
  "zhTW",
  "esES",
  "esMX",
  "ruRU"
};

LocaleConstant GetLocaleByName(const std::string& name)
{
    for (uint32 i = 0; i < MAX_LOCALE; ++i)
        if(name==localeNames[i])
            return LocaleConstant(i);

    return LOCALE_enUS;                                     // including enGB case
}

