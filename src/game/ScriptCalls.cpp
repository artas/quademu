

#ifndef WIN32
#include <dlfcn.h>
#endif

#include "Common.h"
#include "Platform/Define.h"
#include "ScriptCalls.h"
#include "World.h"
#include "Config/ConfigEnv.h"

ScriptsSet Script=NULL;

void UnloadScriptingModule()
{
    if(Script)
    {
        //todo: some check if some func from script library is called right now
        Script->ScriptsFree();
        QUAD_CLOSE_LIBRARY(Script->hScriptsLib);
        delete Script;
        Script = NULL;
    }
}

bool LoadScriptingModule(char const* libName)
{
    ScriptsSet testScript=new _ScriptSet;

    std::string name = strlen(libName) ? libName : QUAD_SCRIPT_NAME;
    name += QUAD_SCRIPT_EXT;

    testScript->hScriptsLib=QUAD_LOAD_LIBRARY(name.c_str());

    if(!testScript->hScriptsLib )
    {
        printf("Error loading Scripts Library %s !\n",name.c_str());
        delete testScript;
        return false;
    }

    if(   !(testScript->ScriptsInit         =(scriptCallScriptsInit         )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsInit"         ))
        ||!(testScript->OnLogin             =(scriptCallOnLogin             )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogin"             ))
        ||!(testScript->OnLogout            =(scriptCallOnLogout            )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogout"            ))
        ||!(testScript->OnPVPKill           =(scriptCallOnPVPKill           )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnPVPKill"           ))
        ||!(testScript->OnLogin             =(scriptCallOnLogin             )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogin"             ))
        ||!(testScript->OnLogout            =(scriptCallOnLogout            )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogout"            ))
        ||!(testScript->OnPVPKill           =(scriptCallOnPVPKill           )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnPVPKill"           ))
        ||!(testScript->OnSpellCast         =(scriptCallOnSpellCast         )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnSpellCast"         ))
        ||!(testScript->OnGetXP             =(scriptCallOnGetXP             )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnGetXP"             ))
        ||!(testScript->OnGetMoney          =(scriptCallOnGetMoney          )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnGetMoney"          ))
        ||!(testScript->OnPlayerChat        =(scriptCallOnPlayerChat        )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnPlayerChat"        ))
        ||!(testScript->OnServerStartup     =(scriptCallOnServerStartup     )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnServerStartup"     ))
        ||!(testScript->OnServerShutdown    =(scriptCallOnServerShutdown    )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnServerShutdown"    ))
        ||!(testScript->OnAreaChange        =(scriptCallOnAreaChange        )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnAreaChange"        ))
        ||!(testScript->OnItemClick         =(scriptCallOnItemClick         )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnItemClick"         ))
        ||!(testScript->OnItemOpen          =(scriptCallOnItemOpen          )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnItemOpen"          ))
        ||!(testScript->OnGoClick           =(scriptCallOnGoClick           )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnGoClick"           ))
        ||!(testScript->OnCreatureKill      =(scriptCallOnCreatureKill      )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"OnCreatureKill"      ))
        ||!(testScript->ScriptsFree         =(scriptCallScriptsFree         )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsFree"         ))
        ||!(testScript->ScriptsVersion      =(scriptCallScriptsVersion      )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsVersion"      ))
        ||!(testScript->GossipHello         =(scriptCallGossipHello         )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GossipHello"         ))
        ||!(testScript->GOChooseReward      =(scriptCallGOChooseReward      )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GOChooseReward"      ))
        ||!(testScript->QuestAccept         =(scriptCallQuestAccept         )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"QuestAccept"         ))
        ||!(testScript->GossipSelect        =(scriptCallGossipSelect        )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GossipSelect"        ))
        ||!(testScript->GossipSelectWithCode=(scriptCallGossipSelectWithCode)QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GossipSelectWithCode"))
        ||!(testScript->GOSelect            =(scriptCallGOSelect            )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GOSelect"            ))
        ||!(testScript->GOSelectWithCode    =(scriptCallGOSelectWithCode    )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GOSelectWithCode"    ))
        ||!(testScript->QuestSelect         =(scriptCallQuestSelect         )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"QuestSelect"         ))
        ||!(testScript->QuestComplete       =(scriptCallQuestComplete       )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"QuestComplete"       ))
        ||!(testScript->NPCDialogStatus     =(scriptCallNPCDialogStatus     )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"NPCDialogStatus"     ))
        ||!(testScript->GODialogStatus      =(scriptCallGODialogStatus      )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GODialogStatus"     ))
        ||!(testScript->ChooseReward        =(scriptCallChooseReward        )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"ChooseReward"        ))
        ||!(testScript->ItemHello           =(scriptCallItemHello           )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"ItemHello"           ))
        ||!(testScript->GOHello             =(scriptCallGOHello             )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GOHello"             ))
        ||!(testScript->scriptAreaTrigger   =(scriptCallAreaTrigger         )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"AreaTrigger"         ))
        ||!(testScript->ItemQuestAccept     =(scriptCallItemQuestAccept     )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"ItemQuestAccept"     ))
        ||!(testScript->GOQuestAccept       =(scriptCallGOQuestAccept       )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GOQuestAccept"       ))
        ||!(testScript->ItemUse             =(scriptCallItemUse             )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"ItemUse"             ))
        ||!(testScript->ItemExpire          =(scriptCallItemExpire          )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"ItemExpire"          ))
        ||!(testScript->EffectDummyGameObj  =(scriptCallEffectDummyGameObj  )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyGameObj"  ))
        ||!(testScript->EffectDummyCreature =(scriptCallEffectDummyCreature )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyCreature" ))
        ||!(testScript->EffectDummyItem     =(scriptCallEffectDummyItem     )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyItem"     ))
        ||!(testScript->GetAI               =(scriptCallGetAI               )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"GetAI"               ))
        ||!(testScript->CreateInstanceData  =(scriptCallCreateInstanceData  )QUAD_GET_PROC_ADDR(testScript->hScriptsLib,"CreateInstanceData"  ))
        )
    {
        printf("Error loading Scripts Library %s !\n Library missing required functions.",name.c_str());
        QUAD_CLOSE_LIBRARY(testScript->hScriptsLib);
        delete testScript;
        return false;
    }

    sLog.outString();
    sLog.outString( ">>> Scripts Library %s was successfully loaded.\n", name.c_str() );

    //heh we are still there :P we have a valid library
    //we reload script
    UnloadScriptingModule();

    Script=testScript;
    Script->ScriptsInit(sConfig.GetFilename().c_str());

    sWorld.SetScriptsVersion(Script->ScriptsVersion());

    return true;
}

