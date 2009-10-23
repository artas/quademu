#include "precompiled.h"
int paymn = 5000;

void addRidingMounts(Player *player, Creature *_Creature)
	{
		player->ADD_GOSSIP_ITEM( 5, "Hire Big Battle Bear", GOSSIP_SENDER_MAIN, 8842);
		player->ADD_GOSSIP_ITEM( 5, "Hire White Polar Bear", GOSSIP_SENDER_MAIN, 8843);
		player->ADD_GOSSIP_ITEM( 5, "Hire White War Talbuk", GOSSIP_SENDER_MAIN, 8844);
		player->ADD_GOSSIP_ITEM( 5, "Hire Dark Riding Talbuk", GOSSIP_SENDER_MAIN, 8845);
		player->ADD_GOSSIP_ITEM( 5, "Hire Deathcharger", GOSSIP_SENDER_MAIN, 8846);
		player->ADD_GOSSIP_ITEM( 5, "Hire Zhevra", GOSSIP_SENDER_MAIN, 8847);
		player->ADD_GOSSIP_ITEM( 5, "Hire Raven Lord", GOSSIP_SENDER_MAIN, 8848);
		player->ADD_GOSSIP_ITEM( 5, "Hire Fiery Warhorse", GOSSIP_SENDER_MAIN, 8849);
		player->ADD_GOSSIP_ITEM( 5, "Hire Mekgineer Chopper", GOSSIP_SENDER_MAIN, 8850);
		player->ADD_GOSSIP_ITEM( 5, "Hire Mechano-hog", GOSSIP_SENDER_MAIN, 8851);
		if( player->getLevel() > 60 && ( _Creature->GetMapId() == 530 || (_Creature->GetMapId() == 571 && player->HasSpell(54197) ) ) )
			{
				player->ADD_GOSSIP_ITEM( 6, "[Flying Mounts] ->", GOSSIP_SENDER_MAIN, 8801);
			}
	}

void addFlyingMounts(Player *player)
	{
		player->ADD_GOSSIP_ITEM( 5, "Hire Onyx Netherwing Drake", GOSSIP_SENDER_MAIN, 8852);
		player->ADD_GOSSIP_ITEM( 5, "Hire X-51 Nether-Rocket", GOSSIP_SENDER_MAIN, 8853);
		player->ADD_GOSSIP_ITEM( 5, "Hire Purple Nether Ray", GOSSIP_SENDER_MAIN, 8854);
		player->ADD_GOSSIP_ITEM( 5, "Hire Swift Green Wind Rider", GOSSIP_SENDER_MAIN, 8855);
		player->ADD_GOSSIP_ITEM( 5, "Hire Armored Snowy Gryphon", GOSSIP_SENDER_MAIN, 8856);
		player->ADD_GOSSIP_ITEM( 5, "Hire War Hippogryph", GOSSIP_SENDER_MAIN, 8857);
		player->ADD_GOSSIP_ITEM( 5, "Hire Phoenix", GOSSIP_SENDER_MAIN, 8858);
		player->ADD_GOSSIP_ITEM( 5, "Hire Black Drake", GOSSIP_SENDER_MAIN, 8859);
		player->ADD_GOSSIP_ITEM( 5, "Hire Red Proto-Drake", GOSSIP_SENDER_MAIN, 8860);
		player->ADD_GOSSIP_ITEM( 5, "Hire Flying Machine", GOSSIP_SENDER_MAIN, 8861);
		player->ADD_GOSSIP_ITEM( 6, "<- [Riding Mounts]", GOSSIP_SENDER_MAIN, 8800);
	}

void trade(Player *player, int spellId, int price)
	{
		player->CLOSE_GOSSIP_MENU();
		player->CastSpell(player, spellId, true);
		player->ModifyMoney(price * paymn);
	}

bool GossipHello_paymounts(Player *player, Creature *_Creature)
	{
	if( player->getLevel() < 40  ) 
		{
			if ( player->getRace() == RACE_HUMAN )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Black Stallion", GOSSIP_SENDER_MAIN, 8802);
					player->ADD_GOSSIP_ITEM( 5, "Hire Brown Horse", GOSSIP_SENDER_MAIN, 8803);
					player->ADD_GOSSIP_ITEM( 5, "Hire Chestnut Mare", GOSSIP_SENDER_MAIN, 8804);
					player->ADD_GOSSIP_ITEM( 5, "Hire Pinto Horse", GOSSIP_SENDER_MAIN, 8805);
					player->ADD_GOSSIP_ITEM( 5, "Hire White Horse", GOSSIP_SENDER_MAIN, 8806);
					player->ADD_GOSSIP_ITEM( 5, "Hire Palomino Horse", GOSSIP_SENDER_MAIN, 8807);
				}
			if ( player->getRace() == RACE_NIGHTELF )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Spotted Frostsaber", GOSSIP_SENDER_MAIN, 8808);
					player->ADD_GOSSIP_ITEM( 5, "Hire Striped Frostsaber", GOSSIP_SENDER_MAIN, 8809);
					player->ADD_GOSSIP_ITEM( 5, "Hire Striped Nightsaber", GOSSIP_SENDER_MAIN, 8810);
					player->ADD_GOSSIP_ITEM( 5, "Hire Leopard", GOSSIP_SENDER_MAIN, 8811);
					player->ADD_GOSSIP_ITEM( 5, "Hire Tiger", GOSSIP_SENDER_MAIN, 8812);
					player->ADD_GOSSIP_ITEM( 5, "Hire Tawny Sabercat", GOSSIP_SENDER_MAIN, 8813);
					player->ADD_GOSSIP_ITEM( 5, "Hire Golden Sabercat", GOSSIP_SENDER_MAIN, 8814);
				}
			if ( player->getRace() == RACE_DWARF )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Brown Ram", GOSSIP_SENDER_MAIN, 8815);
					player->ADD_GOSSIP_ITEM( 5, "Hire Gray Ram", GOSSIP_SENDER_MAIN, 8816);
					player->ADD_GOSSIP_ITEM( 5, "Hire White Ram", GOSSIP_SENDER_MAIN, 8817);
					player->ADD_GOSSIP_ITEM( 5, "Hire Black Ram", GOSSIP_SENDER_MAIN, 8818);
				}
			if ( player->getRace() == RACE_GNOME )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Green Mechanostrider", GOSSIP_SENDER_MAIN, 8819);
					player->ADD_GOSSIP_ITEM( 5, "Hire Red Mechanostrider", GOSSIP_SENDER_MAIN, 8820);
					player->ADD_GOSSIP_ITEM( 5, "Hire Unpainted Mechanostrider", GOSSIP_SENDER_MAIN, 8821);
					player->ADD_GOSSIP_ITEM( 5, "Hire Blue Mechanostrider", GOSSIP_SENDER_MAIN, 8822);
				}
			if ( player->getRace() == RACE_DRAENEI )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Brown Elekk", GOSSIP_SENDER_MAIN, 8823);
					player->ADD_GOSSIP_ITEM( 5, "Hire Purple Elekk", GOSSIP_SENDER_MAIN, 8824);
					player->ADD_GOSSIP_ITEM( 5, "Hire Gray Elekk", GOSSIP_SENDER_MAIN, 8825);
				}
			if ( player->getRace() == RACE_ORC )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Timber Wolf", GOSSIP_SENDER_MAIN, 8826);
					player->ADD_GOSSIP_ITEM( 5, "Hire Brown Wolf", GOSSIP_SENDER_MAIN, 8827);
					player->ADD_GOSSIP_ITEM( 5, "Hire Dire Wolf", GOSSIP_SENDER_MAIN, 8828);
					player->ADD_GOSSIP_ITEM( 5, "Hire Red Wolf", GOSSIP_SENDER_MAIN, 8829);
				}
			if ( player->getRace() == RACE_TAUREN )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Brown Kodo", GOSSIP_SENDER_MAIN, 8830);
					player->ADD_GOSSIP_ITEM( 5, "Hire Gray Kodo", GOSSIP_SENDER_MAIN, 8831);
				}
			if ( player->getRace() == RACE_TROLL )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Turquoise Raptor", GOSSIP_SENDER_MAIN, 8832);
					player->ADD_GOSSIP_ITEM( 5, "Hire Emerald Raptor", GOSSIP_SENDER_MAIN, 8833);
					player->ADD_GOSSIP_ITEM( 5, "Hire Violet Raptor", GOSSIP_SENDER_MAIN, 8834);
				}
			if ( player->getRace() == RACE_UNDEAD_PLAYER )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Blue Skeletal Horse", GOSSIP_SENDER_MAIN, 8835);
					player->ADD_GOSSIP_ITEM( 5, "Hire Brown Skeletal Horse", GOSSIP_SENDER_MAIN, 8836);
					player->ADD_GOSSIP_ITEM( 5, "Hire Red Skeletal Horse", GOSSIP_SENDER_MAIN, 8837);
				}
			if ( player->getRace() == RACE_BLOODELF )
				{
					player->ADD_GOSSIP_ITEM( 5, "Hire Black Hawkstrider", GOSSIP_SENDER_MAIN, 8838);
					player->ADD_GOSSIP_ITEM( 5, "Hire Blue Hawkstrider", GOSSIP_SENDER_MAIN, 8839);
					player->ADD_GOSSIP_ITEM( 5, "Hire Purple Hawkstrider", GOSSIP_SENDER_MAIN, 8840);
					player->ADD_GOSSIP_ITEM( 5, "Hire Red Hawkstrider", GOSSIP_SENDER_MAIN, 8841);
				}
			}
		else 
			{
				addRidingMounts(player, _Creature);
			}
		player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());
		return true;
	}

void SendDefaultMenu_paymounts(Player *player, Creature *_Creature, uint32 action )
	{
		if(!player->getAttackers().empty())
			{
				player->CLOSE_GOSSIP_MENU();
				_Creature->MonsterSay("You are in combat!", LANG_UNIVERSAL, NULL);
				return;
			}
		if (player->IsMounted())
			{
				player->CLOSE_GOSSIP_MENU();
				_Creature->MonsterSay("You are mounted!", LANG_UNIVERSAL, NULL);
				return;
			}
		if( player->getLevel() < 10 ) 
			{
				player->CLOSE_GOSSIP_MENU();
				_Creature->MonsterSay("You must be lvl 10+", LANG_UNIVERSAL, NULL);
				return;
			}
		if (player->GetMoney() < paymn ) 
			{
				player->CLOSE_GOSSIP_MENU();
				_Creature->MonsterSay("You don't have enough money", LANG_UNIVERSAL, NULL);
				return;
			}
				switch(action)
			{

				case 8800:
					addRidingMounts(player, _Creature);
					player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());
				break;

				case 8801:
					addFlyingMounts(player);
					player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());
				break;

				case 8802:
					trade(player, 470, -1);
				break;

				case 8803:
					  trade(player,458,-1);
				break;

				case 8804:
					  trade(player,6648,-1);
				break;

				case 8805:
					  trade(player,472,-1);
				break;

				case 8806:
					  trade(player,468,-1);
				break;

				case 8807:
					  trade(player,471,-1);
				break;

				case 8808:
					  trade(player,10789,-1);
				break;

				case 8809:
					  trade(player,8394,-1);
				break;

				case 8810:
					  trade(player,10793,-1);
				break;

				case 8811:
					  trade(player,10788,-1);
				break;

				case 8812:
					  trade(player,10790,-1);
				break;

				case 8813:
					  trade(player,16059,-1);
				break;

				case 8814:
					  trade(player,16060,-1);
				break;

				case 8815:
					  trade(player,6899,-1);
				break;

				case 8816:
					  trade(player,6777,-1);
				break;

				case 8817:
					  trade(player,6898,-1);
				break;

				case 8818:
					  trade(player,6896,-1);
				break;

				case 8819:
					  trade(player,17453,-1);
				break;

				case 8820:
					  trade(player,10873,-1);
				break;

				case 8821:
					  trade(player,17454,-1);
				break;

				case 8822:
					  trade(player,10969,-1);
				break;

				case 8823:
					  trade(player,34406,-1);
				break;

				case 8824:
					  trade(player,35711,-1);
				break;

				case 8825:
					  trade(player,35710,-1);
				break;

				case 8826:
					  trade(player,580,-1);
				break;

				case 8827:
					  trade(player,6654,-1);
				break;

				case 8828:
					  trade(player,6653,-1);
				break;

				case 8829:
					  trade(player,579,-1);
				break;

				case 8830:
					  trade(player,18990,-1);
				break;

				case 8831:
					  trade(player,18989,-1);
				break;

				case 8832:
					  trade(player,10796,-1);
				break;

				case 8833:
					  trade(player,8395,-1);
				break;

				case 8834:
					  trade(player,10799,-1);
				break;

				case 8835:
					  trade(player,17463,-1);
				break;

				case 8836:
					  trade(player,17464,-1);
				break;

				case 8837:
					  trade(player,17462,-1);
				break;

				case 8838:
					  trade(player,35022,-1);
				break;

				case 8839:
					  trade(player,35020,-1);
				break;

				case 88340:
					  trade(player,35018,-1);
				break;

				case 8841:
					  trade(player,34795,-1);
				break;

				case 8842:
					  trade(player,51412,-4);
				break;

				case 8843:
					  trade(player,54753,-4);
				break;

				case 8844:
					  trade(player,34897,-4);
				break;

				case 8845:
					  trade(player,39316,-4);
				break;

				case 8846:
					  trade(player,17481,-4);
				break;

				case 8847:
					  trade(player,49322,-4);
				break;

				case 8848:
					  trade(player,41252,-4);
				break;

				case 8849:
					  trade(player,36702,-4);
				break;

				case 8850:
					  trade(player,60424,-4);
				break;

				case 8851:
					  trade(player,55531,-4);
				break;

				case 8852:
					  trade(player,41513,-20);
				break;

				case 8853:
					  trade(player,46199,-20);
				break;

				case 8854:
					  trade(player,39801,-20);
				break;

				case 8855:
					  trade(player,32295,-20);
				break;

				case 8856:
					  trade(player,61229,-20);
				break;

				case 8857:
					  trade(player,43927,-20);
				break;

				case 8858:
					  trade(player,40192,-20);
				break;

				case 8859:
					  trade(player,59650,-20);
				break;

				case 8860:
					  trade(player,59961,-20);
				break;

				case 8861:
					  trade(player,44153,-20);
				break;
			}
	}

bool GossipSelect_paymounts(Player *player, Creature *_Creature, uint32 sender, uint32 action )
	{
		if (sender == GOSSIP_SENDER_MAIN)
		SendDefaultMenu_paymounts(player, _Creature, action   );
		return true;
	}
void AddSC_paymounts()
	{
		Script *newscript;
		newscript = new Script;
		newscript->Name = "paymounts";
		newscript->pGossipHello = &GossipHello_paymounts;
		newscript->pGossipSelect = &GossipSelect_paymounts;
		newscript->pItemHello = NULL;
		newscript->pGOHello = NULL;
		newscript->pAreaTrigger = NULL;
		newscript->pItemQuestAccept = NULL;
		newscript->pGOQuestAccept = NULL;
		newscript->pGOChooseReward = NULL;
		newscript->RegisterSelf();
	}
