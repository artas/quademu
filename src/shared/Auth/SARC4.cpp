

#include "Auth/SARC4.h"
#include <openssl/sha.h>

SARC4::SARC4()
{
    EVP_CIPHER_CTX_init(&m_ctx);
    EVP_EncryptInit_ex(&m_ctx, EVP_rc4(), NULL, NULL, NULL);
    EVP_CIPHER_CTX_set_key_length(&m_ctx, SHA_DIGEST_LENGTH);
}

SARC4::SARC4(uint8 *seed)
{
    EVP_CIPHER_CTX_init(&m_ctx);
    EVP_EncryptInit_ex(&m_ctx, EVP_rc4(), NULL, NULL, NULL);
    EVP_CIPHER_CTX_set_key_length(&m_ctx, SHA_DIGEST_LENGTH);
    EVP_EncryptInit_ex(&m_ctx, NULL, NULL, seed, NULL);
}

SARC4::~SARC4()
{
    EVP_CIPHER_CTX_cleanup(&m_ctx);
}

void SARC4::Init(uint8 *seed)
{
    EVP_EncryptInit_ex(&m_ctx, NULL, NULL, seed, NULL);
}

void SARC4::UpdateData(int len, uint8 *data)
{
    int outlen = 0;
    EVP_EncryptUpdate(&m_ctx, data, &outlen, data, len);
    EVP_EncryptFinal_ex(&m_ctx, data, &outlen);
}
