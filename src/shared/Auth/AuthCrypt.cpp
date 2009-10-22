

#include "AuthCrypt.h"
#include "Hmac.h"
#include "Log.h"
#include "BigNumber.h"

AuthCrypt::AuthCrypt()
{
    _initialized = false;
}

AuthCrypt::~AuthCrypt()
{

}

void AuthCrypt::Init(BigNumber *K)
{
    uint8 ServerEncryptionKey[SEED_KEY_SIZE] = { 0x22, 0xBE, 0xE5, 0xCF, 0xBB, 0x07, 0x64, 0xD9, 0x00, 0x45, 0x1B, 0xD0, 0x24, 0xB8, 0xD5, 0x45 };
    HmacHash serverEncryptHmac(SEED_KEY_SIZE, (uint8*)ServerEncryptionKey);
    uint8 *encryptHash = serverEncryptHmac.ComputeHash(K);

    uint8 ServerDecryptionKey[SEED_KEY_SIZE] = { 0xF4, 0x66, 0x31, 0x59, 0xFC, 0x83, 0x6E, 0x31, 0x31, 0x02, 0x51, 0xD5, 0x44, 0x31, 0x67, 0x98 };
    HmacHash clientDecryptHmac(SEED_KEY_SIZE, (uint8*)ServerDecryptionKey);
    uint8 *decryptHash = clientDecryptHmac.ComputeHash(K);

    //SARC4 _serverDecrypt(encryptHash);
    _clientDecrypt.Init(decryptHash);
    _serverEncrypt.Init(encryptHash);
    //SARC4 _clientEncrypt(decryptHash);

    uint8 syncBuf[1024];

    memset(syncBuf, 0, 1024);

    _serverEncrypt.UpdateData(1024, syncBuf);
    //_clientEncrypt.UpdateData(1024, syncBuf);

    memset(syncBuf, 0, 1024);

    //_serverDecrypt.UpdateData(1024, syncBuf);
    _clientDecrypt.UpdateData(1024, syncBuf);

    _initialized = true;
}

void AuthCrypt::DecryptRecv(uint8 *data, size_t len)
{
    if (!_initialized)
        return;

    _clientDecrypt.UpdateData(len, data);
}

void AuthCrypt::EncryptSend(uint8 *data, size_t len)
{
    if (!_initialized)
        return;

    _serverEncrypt.UpdateData(len, data);
}

