

#ifndef _AUTHCRYPT_H
#define _AUTHCRYPT_H

#include <Common.h>
#include "SARC4.h"

class BigNumber;

class AuthCrypt
{
    public:
        AuthCrypt();
        ~AuthCrypt();

        void Init(BigNumber *K);
        void DecryptRecv(uint8 *, size_t);
        void EncryptSend(uint8 *, size_t);

        bool IsInitialized() { return _initialized; }

    private:
        SARC4 _clientDecrypt;
        SARC4 _serverEncrypt;
        bool _initialized;
};
#endif

