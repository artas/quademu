

/// \addtogroup realmd
/// @{
/// \file

#ifndef _AUTHSOCKET_H
#define _AUTHSOCKET_H

#include "Common.h"
#include "Auth/BigNumber.h"
#include "sockets/TcpSocket.h"
#include "sockets/SocketHandler.h"
#include "sockets/ListenSocket.h"
#include "sockets/Utility.h"
#include "sockets/Parse.h"
#include "sockets/Socket.h"

/// Handle login commands
class AuthSocket: public TcpSocket
{
    public:
        const static int s_BYTE_SIZE = 32;

        AuthSocket(ISocketHandler& h);
        ~AuthSocket();

        void OnAccept();
        void OnRead();

        bool _HandleLogonChallenge();
        bool _HandleLogonProof();
        bool _HandleReconnectChallenge();
        bool _HandleReconnectProof();
        bool _HandleRealmList();
        //data transfer handle for patch

        bool _HandleXferResume();
        bool _HandleXferCancel();
        bool _HandleXferAccept();

        void _SetVSFields(const std::string& rI);

        FILE *pPatch;
        ACE_Thread_Mutex patcherLock;
        bool IsLag();

    private:

        BigNumber N, s, g, v;
        BigNumber b, B;
        BigNumber K;
        BigNumber _reconnectProof;

        bool _authed;

        std::string _login;
        std::string _safelogin;

        // Since GetLocaleByName() is _NOT_ bijective, we have to store the locale as a string. Otherwise we can't differ
        // between enUS and enGB, which is important for the patch system
        std::string _localizationName;
        uint16 _build;
        AccountTypes _accountSecurityLevel;
};
#endif
/// @}
