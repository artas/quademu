

#ifndef _AUTH_SARC4_H
#define _AUTH_SARC4_H

#include "Common.h"
#include <openssl/evp.h>

class SARC4
{
    public:
        SARC4();
        SARC4(uint8 *seed);
        ~SARC4();
        void Init(uint8 *seed);
        void UpdateData(int len, uint8 *data);
    private:
        EVP_CIPHER_CTX m_ctx;
};
#endif
