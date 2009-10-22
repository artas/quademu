

/// \addtogroup Quad
/// @{
/// \file

#ifndef _RASOCKET_H
#define _RASOCKET_H

#include "sockets/TcpSocket.h"

#include "Common.h"

#define RA_BUFF_SIZE 1024

class ISocketHandler;

/// Remote Administration socket
class RASocket: public TcpSocket
{
    public:

        RASocket(ISocketHandler& h);
        ~RASocket();

        void OnAccept();
        void OnRead();

    private:

        char * buff;
        std::string szLogin;
        uint32 iSess;
        unsigned int iInputLength;
        bool bLog;
        bool bSecure;                                       //kick on wrong pass, non exist. user, user with no priv
        //will protect from DOS, bruteforce attacks
        //some 'smart' protection must be added for more security
        uint8 iMinLevel;
        enum
        {
            NONE,                                           //initial value
            LG,                                             //only login was entered
            OK,                                             //both login and pass were given, and they are correct and user have enough priv.
        }stage;

        static void zprint( const char * szText );
};
#endif
/// @}
