

#include "Auth/Hmac.h"
#include "BigNumber.h"

HmacHash::HmacHash(uint32 len, uint8 *seed)
{
    ASSERT(len == SEED_KEY_SIZE);

    HMAC_CTX_init(&m_ctx);
    HMAC_Init_ex(&m_ctx, seed, SEED_KEY_SIZE, EVP_sha1(), NULL);
}

HmacHash::~HmacHash()
{
    HMAC_CTX_cleanup(&m_ctx);
}

void HmacHash::UpdateBigNumber(BigNumber *bn)
{
    UpdateData(bn->AsByteArray(), bn->GetNumBytes());
}

void HmacHash::UpdateData(const uint8 *data, int length)
{
    HMAC_Update(&m_ctx, data, length);
}

void HmacHash::Finalize()
{
    uint32 length = 0;
    HMAC_Final(&m_ctx, (uint8*)m_digest, &length);
    ASSERT(length == SHA_DIGEST_LENGTH)
}

uint8 *HmacHash::ComputeHash(BigNumber *bn)
{
    HMAC_Update(&m_ctx, bn->AsByteArray(), bn->GetNumBytes());
    Finalize();
    return (uint8*)m_digest;
}
