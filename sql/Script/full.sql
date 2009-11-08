
-- 
-- quadscript_script_texts.sql Contains data for table `script_texts` mainly used in C++ parts.
-- valid entries for table are between -1000000 and -1999999
-- 

-- ALTER TABLE `script_texts` ADD COLUMN `npc_entry` mediumint(8)  NOT NULL DEFAULT 0 COMMENT 'creature_template entry' FIRST;
/*
DROP TABLE IF EXISTS `script_texts`;
CREATE TABLE `script_texts` (
  `npc_entry` mediumint(8) NOT NULL default '0' COMMENT 'creature_template entry',
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `language` tinyint(3) unsigned NOT NULL default '0',
  `emote` smallint(5) unsigned NOT NULL default '0',
  `comment` text,
  PRIMARY KEY  (`npc_entry`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';
*/
-- 
-- -1 000 000 First 100 entries are reserved for special use, do not add regular text here.
-- 
DELETE FROM `script_texts` WHERE entry BETWEEN -1999925 AND -1000000;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (0,-1000000,'<QuadScript Text Entry Missing!>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DEFAULT_TEXT'),
   (0,-1000001,'%s goes into a killing frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'EMOTE_GENERIC_FRENZY_KILL'),
   (0,-1000004,'goes into a berserker rage!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'EMOTE_GENERIC_BERSERK'),
   (0,-1000005,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REUSE ME'),

-- 
-- Normal text entries. Say/Yell/Whisper/Emote for any regular world object.
-- 

-- -1 000 100 GENERAL MAPS (not typical instance maps)
   (6109,-1000100,'Come, little ones. Face me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'azuregos SAY_TELEPORT'),
   (467,-1000101,'Follow me, $N. I''ll take you to the Defias hideout. But you better protect me or I am as good as dead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'defias traitor SAY_START'),
   (467,-1000102,'The entrance is hidden here in Moonbrook. Keep your eyes peeled for thieves. They want me dead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'defias traitor SAY_PROGRESS'),
   (467,-1000103,'You can go tell Stoutmantle this is where the Defias Gang is holed up, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'defias traitor SAY_END'),
   (467,-1000104,'%s coming in fast! Prepare to fight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'defias traitor SAY_AGGRO_1'),
   (467,-1000105,'Help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'defias traitor SAY_AGGRO_2'),
   (12858,-1000106,'Everyone ready?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'torek SAY_READY'),
   (12858,-1000107,'Ok, Lets move out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'torek SAY_MOVE'),
   (12858,-1000108,'Prepare yourselves. Silverwing is just around the bend.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'torek SAY_PREPARE'),
   (12858,-1000109,'Silverwing is ours!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'torek SAY_WIN'),
   (12858,-1000110,'Go report that the outpost is taken. We will remain here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'torek SAY_END'),
   (17312,-1000111,'Our house is this way, through the thicket.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'magwin SAY_START'),
   (17312,-1000112,'Help me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'magwin SAY_AGGRO'),
   (17312,-1000113,'My poor family. Everything has been destroyed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'magwin SAY_PROGRESS'),
   (17312,-1000114,'Father! Father! You''re alive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'magwin SAY_END1'),
   (17312,-1000115,'You can thank $N for getting me back here safely, father.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'magwin SAY_END2'),
   (17312,-1000116,'hugs her father.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,7,0,'magwin EMOTE_HUG'),
   (16993,-1000117,'Thank you for agreeing to help. Now, let''s get out of here $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_START'),
   (16993,-1000118,'Over there! They''re following us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_SUMMON1'),
   (16993,-1000119,'Allow me a moment to rest. The journey taxes what little strength I have.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,16,'wounded elf SAY_ELF_RESTING'),
   (16993,-1000120,'Did you hear something?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_SUMMON2'),
   (16993,-1000121,'Falcon Watch, at last! Now, where''s my... Oh no! My pack, it''s missing! Where has -',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_COMPLETE'),
   (16993,-1000122,'You won''t keep me from getting to Falcon Watch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'wounded elf SAY_ELF_AGGRO'),
   (0,-1000123,'Ready when you are, $c.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,15,'big will SAY_BIG_WILL_READY'),
   (0,-1000124,'The Affray has begun. $n, get ready to fight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'twiggy SAY_TWIGGY_BEGIN'),
   (0,-1000125,'You! Enter the fray!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'twiggy SAY_TWIGGY_FRAY'),
   (0,-1000126,'Challenger is down!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'twiggy SAY_TWIGGY_DOWN'),
   (0,-1000127,'The Affray is over.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'twiggy SAY_TWIGGY_OVER'),
   (19831,-1000128,'We need you to send reinforcements to Manaforge Duro, Ardonis. This is not a request, it''s an order.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_1'),
   (19831,-1000129,'You cannot be serious! We are severely understaffed and can barely keep this manaforge functional!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge SAY_ARCANIST_ARDONIS_1'),
   (19831,-1000130,'You will do as ordered. Manaforge Duro has come under heavy attack by mana creatures and the situation is out of control. Failure to comply will not be tolerated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_2'),
   (19831,-1000131,'Indeed, it is not a request.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge SAY_PATHALEON_CULATOR_IMAGE_1'),
   (19831,-1000132,'My lord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_3'),
   (19831,-1000133,'Duro will be reinforced! Ultris was a complete disaster. I will NOT have that mistake repeated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2'),
   (19831,-1000134,'We''ve had too many setbacks along the way: Hellfire Citadel, Fallen Sky Ridge, Firewing Point... Prince Kael''thas will tolerate no further delays. I will tolerate nothing other than complete success!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2_1'),
   (19831,-1000135,'I am returning to Tempest Keep. See to it that I do not have reason to return!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2_2'),
   (19831,-1000136,'Yes, my lord.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge COMMANDER_DAWNFORGE_4 SAY_ARCANIST_ARDONIS_2'),
   (19831,-1000137,'See to it, Ardonis!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dawnforge COMMANDER_DAWNFORGE_5'),
   (17085,-1000138,'Avruu''s magic... it still controls me. You must fight me, mortal. It''s the only way to break the spell!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'aeranas SAY_SUMMON'),
   (17085,-1000139,'Avruu''s magic is broken! I''m free once again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'aeranas SAY_FREE'),
   (16295,-1000140,'Let''s go.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lilatha SAY_START'),
   (16295,-1000141,'$N, let''s use the antechamber to the right.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lilatha SAY_PROGRESS1'),
   (16295,-1000142,'I can see the light at the end of the tunnel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lilatha SAY_PROGRESS2'),
   (16295,-1000143,'There''s Farstrider Enclave now, $C. Not far to go... Look out! Troll ambush!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lilatha SAY_PROGRESS3'),
   (16295,-1000144,'Thank you for saving my life and bringing me back to safety, $N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lilatha SAY_END1'),
   (16295,-1000145,'Captain Helios, I''ve been rescued from the Amani Catacombs. Reporting for duty, sir!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lilatha SAY_END2'),
   (16295,-1000146,'Liatha, get someone to look at those injuries. Thank you for bringing her back safely.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lilatha CAPTAIN_ANSWER'),
   (10427,-1000147,'I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11332,1,0,0,'kazzak SAY_INTRO'),
   (10427,-1000148,'The Legion will conquer all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11333,1,0,0,'kazzak SAY_AGGRO1'),
   (10427,-1000149,'All mortals will perish!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11334,1,0,0,'kazzak SAY_AGGRO2'),
   (20129,-1000150,'All life must be eradicated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11335,1,0,0,'kazzak SAY_SURPREME1'),
   (20129,-1000151,'I''ll rip the flesh from your bones!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11336,1,0,0,'kazzak SAY_SURPREME2'),
   (20129,-1000152,'Kirel Narak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11337,1,0,0,'kazzak SAY_KILL1'),
   (20129,-1000153,'Contemptible wretch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11338,1,0,0,'kazzak SAY_KILL2'),
   (20129,-1000154,'The universe will be remade.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11339,1,0,0,'kazzak SAY_KILL3'),
   (20129,-1000155,'The Legion... will never... fall.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11340,1,0,0,'kazzak SAY_DEATH'),
   (20129,-1000156,'%s goes into a frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'kazzak EMOTE_FRENZY'),
   (20129,-1000157,'Invaders, you dangle upon the precipice of oblivion! The Burning Legion comes and with it comes your end.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_RAND1'),
   (20129,-1000158,'Impudent whelps, you only delay the inevitable. Where one has fallen, ten shall rise. Such is the will of Kazzak...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_RAND2'),
   (20129,-1000159,'Do not proceed. You will be eliminated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11344,1,0,0,'doomwalker SAY_AGGRO'),
   (20129,-1000160,'Tectonic disruption commencing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11345,1,0,0,'doomwalker SAY_EARTHQUAKE_1'),
   (20129,-1000161,'Magnitude set. Release.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11346,1,0,0,'doomwalker SAY_EARTHQUAKE_2'),
   (20129,-1000162,'Trajectory locked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11347,1,0,0,'doomwalker SAY_OVERRUN_1'),
   (20129,-1000163,'Engage maximum speed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11348,1,0,0,'doomwalker SAY_OVERRUN_2'),
   (12429,-1000164,'Threat level zero.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11349,1,0,0,'doomwalker SAY_SLAY_1'),
   (12429,-1000165,'Directive accomplished.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11350,1,0,0,'doomwalker SAY_SLAY_2'),
   (12429,-1000166,'Target exterminated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11351,1,0,0,'doomwalker SAY_SLAY_3'),
   (12429,-1000167,'System failure in five, f-o-u-r...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11352,1,0,0,'doomwalker SAY_DEATH'),
   (12429,-1000168,'Who dares awaken Aquementas?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'aquementas AGGRO_YELL_AQUE'),
   (12429,-1000169,'Muahahahaha! You fool! You''ve released me from my banishment in the interstices between space and time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nether_drake SAY_NIHIL_1'),
   (12429,-1000170,'All of Draenor shall quick beneath my feet! I will destroy this world and reshape it in my image!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nether_drake SAY_NIHIL_2'),
   (12429,-1000171,'Where shall I begin? I cannot bother myself with a worm such as yourself. There is a world to be conquered!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nether_drake SAY_NIHIL_3'),
   (12429,-1000172,'No doubt the fools that banished me are long dead. I shall take wing survey my demense. Pray to whatever gods you hold dear that we do not meet again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nether_drake SAY_NIHIL_4'),
   (12429,-1000173,'NOOOOooooooo!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nether_drake SAY_NIHIL_INTERRUPT'),
   (21469,-1000174,'Good $N, you are under the spell''s influence. I must analyze it quickly, then we can talk.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'daranelle SAY_SPELL_INFLUENCE'),
   (0,-1000175,'Thank you, mortal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,0,' SAY_JUST_EATEN'),
   (0,-1000176,'The last thing I remember is the ship falling and us getting into the pods. I''ll go see how I can help. Thank you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'draenei_survivor SAY_HEAL1'),
   (0,-1000177,'$C, Where am I? Who are you? Oh no! What happened to the ship?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'draenei_survivor SAY_HEAL2'),
   (0,-1000178,'$C You saved me! I owe you a debt that I can never repay. I''ll go see if I can help the others.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'draenei_survivor SAY_HEAL3'),
   (0,-1000179,'Ugh... what is this place? Is that all that''s left of the ship over there?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'draenei_survivor SAY_HEAL4'),
   (0,-1000180,'Oh, the pain...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'draenei_survivor SAY_HELP1'),
   (0,-1000181,'Everything hurts, Please make it stop...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'draenei_survivor SAY_HELP2'),
   (0,-1000182,'Ughhh... I hurt. Can you help me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'draenei_survivor SAY_HELP3'),
   (0,-1000183,'I don''t know if I can make it, please help me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'draenei_survivor SAY_HELP4'),
   (0,-1000184,'Yes Master, all goes along as planned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'engineer_spark SAY_TEXT'),
   (0,-1000185,'%s puts the shell to his ear.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,7,0,'engineer_spark EMOTE_SHELL'),
   (0,-1000186,'Now I cut you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,7,0,'engineer_spark SAY_ATTACK'),
   (0,-1000187,'Thank you, dear $C, you just saved my life.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'faulk SAY_HEAL'),
   (0,-1000188,'Deployment sucessful. Trespassers will be neutralized.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'converted_sentry SAY_CONVERTED_1'),
   (0,-1000189,'Objective acquired. Initiating security routines.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'converted_sentry SAY_CONVERTED_2'),
   (0,-1000190,'In Nagrand, food hunt ogre!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,' SAY_LUMP_0'),
   (0,-1000191,'You taste good with maybe a little salt and pepper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,' SAY_LUMP_1'),
   (0,-1000192,'OK, OK! Lump give up!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,' SAY_LUMP_DEFEAT'),
   (0,-1000193,'Thank you, dear $C, you just saved my life.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'stillblade SAY_HEAL'),
   (0,-1000194,'I give up! Please don''t kill me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unkor SAY_SUBMIT'),
   (0,-1000195,'I choose the third option: KILLING YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'floon SAY_FLOON_ATTACK'),
   (0,-1000196,'Belore...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lady_sylvanas SAY_LAMENT_END'),
   (0,-1000197,'%s kneels down and pick up the amulet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,1,0,'lady_sylvanas EMOTE_LAMENT_END'),
   (0,-1000198,'Taste blade, mongrel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_GUARD_SIL_AGGRO1'),
   (0,-1000199,'Please tell me that you didn''t just do what I think you just did. Please tell me that I''m not going to have to hurt you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_GUARD_SIL_AGGRO2'),
   (9623,-1000200,'As if we don''t have enough problems, you go and create more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_GUARD_SIL_AGGRO3'),
   (9623,-1000201,'I''m saved! Thank you, doctor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'injured_patient SAY_DOC1'),
   (9623,-1000202,'HOORAY! I AM SAVED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'injured_patient SAY_DOC2'),
   (9623,-1000203,'Sweet, sweet embrace... take me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'injured_patient SAY_DOC3'),
   (9623,-1000204,'%s looks up at you quizzically. Maybe you should inspect it?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'cluck EMOTE_A_HELLO'),
   (9623,-1000205,'%s looks at you unexpectadly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'cluck EMOTE_H_HELLO'),
   (23139,-1000206,'%s starts pecking at the feed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'cluck EMOTE_CLUCK_TEXT2'),
   (23139,-1000207,'You have my blessing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ashyen_and_keleth SAY_REWARD_BLESS'),
   (28315,-1000208,'Frenzyheart kill you if you come back. You no welcome here no more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'vekjik SAY_TEXTID_VEKJIK1'),
   (23139,-1000209,'Very well. Let''s see what you have to show me, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'anvilward SAY_ANVIL1'),
   (23139,-1000210,'What manner of trick is this, $R? If you seek to ambush me, I warn you I will not go down quietly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'anvilward SAY_ANVIL2'),
   (23139,-1000211,'Warning! %s emergency shutdown process initiated by $N. Shutdown will complete in two minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'manaforge_control EMOTE_START'),
   (23139,-1000212,'Emergency shutdown will complete in one minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'manaforge_control EMOTE_60'),
   (23139,-1000213,'Emergency shutdown will complete in thirty seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'manaforge_control EMOTE_30'),
   (22083,-1000214,'Emergency shutdown will complete in ten seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'manaforge_control EMOTE_10'),
   (22083,-1000215,'Emergency shutdown complete.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'manaforge_control EMOTE_COMPLETE'),
   (22083,-1000216,'Emergency shutdown aborted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'manaforge_control EMOTE_ABORT'),
   (22083,-1000217,'Greetings, $N. I will guide you through the cavern. Please try and keep up.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_1'),
   (22083,-1000218,'We do not know if the Caverns of Time have always been accessible to mortals. Truly, it is impossible to tell as the Timeless One is in perpetual motion, changing our timeways as he sees fit. What you see now may very well not exist tomorrow. You may wake up and have no memory of this place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_2'),
   (22083,-1000219,'It is strange, I know... Most mortals cannot actually comprehend what they see here, as often, what they see is not anchored within their own perception of reality.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_3'),
   (22083,-1000220,'Follow me, please.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_4'),
   (23141,-1000221,'There are only two truths to be found here: First, that time is chaotic, always in flux, and completely malleable and second, perception does not dictate reality.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_5'),
   (21648,-1000222,'As custodians of time, we watch over and care for Nozdormu''s realm. The master is away at the moment, which means that attempts are being made to dramatically alter time. The master never meddles in the affairs of mortals but instead corrects the alterations made to time by others. He is reactionary in this regard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_6'),
   (0,-1000223,'For normal maintenance of time, the Keepers of Time are sufficient caretakers. We are able to deal with most ordinary disturbances. I speak of little things, such as rogue mages changing something in the past to elevate their status or wealth in the present.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_7'),
   (0,-1000224,'These tunnels that you see are called timeways. They are infinite in number. The ones that currently exist in your reality are what the master has deemed as ''trouble spots.'' These trouble spots may differ completely in theme but they always share a cause. That is, their existence is a result of the same temporal disturbance. Remember that should you venture inside one...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_8'),
   (0,-1000225,'This timeway is in great disarray! We have agents inside right now attempting to restore order. What information I have indicates that Thrall''s freedom is in jeopardy. A malevolent organization known as the Infinite Dragonflight is trying to prevent his escape. I fear without outside assistance, all will be lost.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_9'),
   (0,-1000226,'We have very little information on this timeway. Sa''at has been dispatched and is currently inside. The data we have gathered from his correspondence is that the Infinite Dragonflight are once again attempting to alter time. Could it be that the opening of the Dark Portal is being targeted for sabotage? Let us hope not...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_10'),
   (0,-1000227,'This timeway is currently collapsing. What that may hold for the past, present and future is currently unknown...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_11'),
   (0,-1000228,'The timeways are currently ranked in order from least catastrophic to most catastrophic. Note that they are all classified as catastrophic, meaning that any single one of these timeways collapsing would mean that your world would end. We only classify them in such a way so that the heroes and adventurers that are sent here know which timeway best suits their abilities.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_12'),
   (0,-1000229,'All we know of this timeway is that it leads to Mount Hyjal. The Infinite Dragonflight have gone to great lengths to prevent our involvement. We know next to nothing, mortal. Soridormi is currently attempting to break through the timeway''s defenses but has thus far been unsuccessful. You might be our only hope of breaking through and resolving the conflict.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_13'),
   (0,-1000230,'Our time is at an end $N. I would wish you luck, if such a thing existed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'WHISPER_CUSTODIAN_14'),
   (0,-1000231,'Ah, $GPriest:Priestess; you came along just in time. I appreciate it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'garments SAY_COMMON_HEALED'),
   (0,-1000232,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those gnolls with your power to back me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,4,'garments SAY_DG_KEL_THANKS'),
   (0,-1000233,'Farewell to you, and may shadow always protect you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,3,'garments SAY_DG_KEL_GOODBYE'),
   (0,-1000234,'Follow me, stranger. This won''t take long.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_KHAD_SERV_0'),
   (2768,-1000235,'Shattrath was once the draenei capital of this world. Its name means "dwelling of light."',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_1'),
   (2768,-1000236,'When the Burning Legion turned the orcs against the draenei, the fiercest battle was fought here. The draenei fought tooth and nail, but in the end the city fell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_2'),
   (2768,-1000237,'The city was left in ruins and darkness... until the Sha''tar arrived.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_3'),
   (2768,-1000238,'Let us go into the Lower City. I will warn you that as one of the only safe havens in Outland, Shattrath has attracted droves of refugees from all wars, current and past.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_4'),
   (2768,-1000239,'The Sha''tar, or "born from light" are the naaru that came to Outland to fight the demons of the Burning Legion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_5'),
   (2768,-1000240,'They were drawn to the ruins of Shattrath City where a small remnant of the draenei priesthood conducted its rites inside a ruined temple on this very spot.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_6'),
   (2768,-1000241,'The priesthood, known as the Aldor, quickly regained its strength as word spread that the naaru had returned and reconstruction soon began. The ruined temple is now used as an infirmary for injured refugees.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_7'),
   (2768,-1000242,'It wouldn''t be long, however, before the city came under attack once again. This time, the attack came from Illidan''s armies. A large regiment of blood elves had been sent by Illidan''s ally, Kael''thas Sunstrider, to lay waste to the city.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_8'),
   (2768,-1000243,'As the regiment of blood elves crossed this very bridge, the Aldor''s exarchs and vindicators lined up to defend the Terrace of Light. But then the unexpected happened.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_9'),
   (2768,-1000244,'The blood elves laid down their weapons in front of the city''s defenders; their leader, a blood elf elder known as Voren''thal, stormed into the Terrace of Light and demanded to speak to A''dal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_10'),
   (23002,-1000245,'As the naaru approached him, Voren''thal kneeled before him and uttered the following words: "I''ve seen you in a vision, naaru. My race''s only hope for survival lies with you. My followers and I are here to serve you."',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_11'),
   (23002,-1000246,'The defection of Voren''thal and his followers was the largest loss ever incurred by Kael''s forces. And these weren''t just any blood elves. Many of the best and brightest amongst Kael''s scholars and magisters had been swayed by Voren''thal''s influence.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_12'),
   (23002,-1000247,'The naaru accepted the defectors, who would become known as the Scryers; their dwelling lies in the platform above. Only those initiated with the Scryers are allowed there.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_13'),
   (16483,-1000248,'The Aldor are followers of the Light and forgiveness and redemption are values they understand. However, they found hard to forget the deeds of the blood elves while under Kael''s command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_14'),
   (16483,-1000249,'Many of the priesthood had been slain by the same magisters who now vowed to serve the naaru. They were not happy to share the city with their former enemies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_15'),
   (16483,-1000250,'The Aldor''s most holy temple and its surrounding dwellings lie on the terrace above. As a holy site, only the initiated are welcome inside.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_16'),
   (16483,-1000251,'The attacks against Shattrath continued, but the city did not fall, as you can see. On the contrary, the naaru known as Xi''ri led a successful incursion into Shadowmoon Valley - Illidan''s doorstep.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_17'),
   (16483,-1000252,'There he continues to wage war on Illidan with the assistance of the Aldor and the Scryers. The two factions have not given up on their old feuds, though.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_18'),
   (16483,-1000253,'Such is their animosity that they vie for the honor of being sent to assist the naaru there. Each day, that decision is made here by A''dal. The armies gather here to receive A''dal''s blessing before heading to Shadowmoon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_19'),
   (16483,-1000254,'Khadgar should be ready to see you again. Just remember that to serve the Sha''tar you will most likely have to ally with the Aldor or the Scryers. And seeking the favor of one group will cause the others'' dislike.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_20'),
   (16483,-1000255,'Good luck stranger, and welcome to Shattrath City.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'SAY_KHAD_SERV_21'),
   (17243,-1000256,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those murlocs with the Light on my side!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,4,'garments SAY_ROBERTS_THANKS'),
   (17243,-1000257,'Farewell to you, and may the Light be with you always.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,3,'garments SAY_ROBERTS_GOODBYE'),
   (17243,-1000258,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those humans with your power to back me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,4,'garments SAY_KORJA_THANKS'),
   (17318,-1000259,'Farewell to you, and may our ancestors be with you always!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,3,'garments SAY_KORJA_GOODBYE'),
   (17318,-1000260,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those wendigo with the Light on my side!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,4,'garments SAY_DOLF_THANKS'),
   (17318,-1000261,'Farewell to you, and may the Light be with you always.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,3,'garments SAY_DOLF_GOODBYE'),
   (17318,-1000262,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those corrupt timberlings with Elune''s power behind me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,4,'garments SAY_SHAYA_THANKS'),
   (17318,-1000263,'Farewell to you, and may Elune be with you always.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,3,'garments SAY_SHAYA_GOODBYE'),
   (17318,-1000264,'Ok, $N. Follow me to the cave where I''ll attempt to harness the power of the rune stone into these goggles.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'phizzlethorpe SAY_PROGRESS_1'),
   (17318,-1000265,'I discovered this cave on our first day here. I believe the energy in the stone can be used to our advantage.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'phizzlethorpe SAY_PROGRESS_2'),
   (17318,-1000266,'I''ll begin drawing energy from the stone. Your job, $N, is to defend me. This place is cursed... trust me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'phizzlethorpe SAY_PROGRESS_3'),
   (6248,-1000267,'%s begins tinkering with the goggles before the stone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'phizzlethorpe EMOTE_PROGRESS_4'),
   (6248,-1000268,'Help!!! Get these things off me so I can get my work done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'phizzlethorpe SAY_AGGRO'),
   (6248,-1000269,'Almost done! Just a little longer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'phizzlethorpe SAY_PROGRESS_5'),
   (6248,-1000270,'I''ve done it! I have harnessed the power of the stone into the goggles! Let''s get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'phizzlethorpe SAY_PROGRESS_6'),
   (6248,-1000271,'Phew! Glad to be back from that creepy cave.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'phizzlethorpe SAY_PROGRESS_7'),
   (3439,-1000272,'%s hands one glowing goggles over to Doctor Draxlegauge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'phizzlethorpe EMOTE_PROGRESS_8'),
   (3439,-1000273,'Doctor Draxlegauge will give you further instructions, $N. Many thanks for your help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'phizzlethorpe SAY_PROGRESS_9'),
   (3439,-1000274,'Time to teach you a lesson in manners, little $Gboy:girl;!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'larry SAY_START'),
   (3439,-1000275,'Now I''m gonna give you to the count of ''3'' to get out of here before I sick the dogs on you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'larry SAY_COUNT'),
   (3439,-1000276,'1...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'larry SAY_COUNT_1'),
   (3439,-1000277,'2...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'larry SAY_COUNT_2'),
   (3439,-1000278,'Time to meet your maker!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'larry SAY_ATTACK_5'),
   (3439,-1000279,'Alright, we give up! Don''t hurt us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'larry SAY_GIVEUP'),
   (6172,-1000280,'A shadowy, sinister presence has invaded the Emerald Dream. Its power is poised to spill over into our world, $N. We must oppose it! That''s why I cannot accompany you in person.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'clintar SAY_START'),
   (15420,-1000281,'The Emerald Dream will never be yours!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'clintar SAY_AGGRO_1'),
   (15420,-1000282,'Begone from this place!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'clintar SAY_AGGRO_2'),
   (0,-1000283,'That''s the first relic, but there are still two more. Follow me, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'clintar SAY_RELIC1'),
   (24981,-1000284,'I''ve recovered the second relic. Take a moment to rest, and then we''ll continue to the last reliquary.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'clintar SAY_RELIC2'),
   (0,-1000285,'We have all three of the relics, but my energy is rapidly fading. We must make our way back to Dreamwarden Lurosa! He will let you know what to do next.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'clintar SAY_RELIC3'),
   (22916,-1000286,'Lurosa, I am entrusting the Relics of Aviana to $N, who will take them to Morthis Whisperwing. I must return completely to the Emerald Dream now. Do not let $N fail!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'clintar SAY_END'),
   (7806,-1000287,'Emergency power activated! Initializing ambulanory motor! CLUCK!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'oox SAY_OOX_START'),
   (7806,-1000288,'Physical threat detected! Evasive action! CLUCK!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'oox SAY_OOX_AGGRO1'),
   (7806,-1000289,'Thread analyzed! Activating combat plan beta! CLUCK!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'oox SAY_OOX_AGGRO2'),
   (7806,-1000290,'CLUCK! Sensors detect spatial anomaly - danger imminent! CLUCK!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'oox SAY_OOX_AMBUSH'),
   (7806,-1000291,'No one challanges the Wastewander nomads - not even robotic chickens! ATTACK!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'oox SAY_OOX17_AMBUSH_REPLY'),
   (0,-1000292,'Cloaking systems online! CLUCK! Engaging cloak for transport to Booty Bay!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'oox SAY_OOX_END'),
   (18351,-1000293,'To the house! Stay close to me, no matter what! I have my gun and ammo there!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'stilwell SAY_DS_START'),
   (18351,-1000294,'We showed that one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'stilwell SAY_DS_DOWN_1'),
   (18351,-1000295,'One more down!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'stilwell SAY_DS_DOWN_2'),
   (20209,-1000296,'We''ve done it! We won!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'stilwell SAY_DS_DOWN_3'),
   (20209,-1000297,'Meet me down by the orchard-- I just need to put my gun away.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'stilwell SAY_DS_PROLOGUE'),
   (20209,-1000298,'Alright, alright I think I can figure out how to operate this thing...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,393,'wizzlecrank SAY_START'),
   (20209,-1000299,'Arrrgh! This isn''t right!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wizzlecrank SAY_STARTUP1'),
   (20209,-1000300,'Okay, I think I''ve got it, now. Follow me, $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'wizzlecrank SAY_STARTUP2'),
   (20209,-1000301,'There''s the stolen shredder! Stop it or Lugwizzle will have our hides!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'wizzlecrank SAY_MERCENARY'),
   (20907,-1000302,'Looks like we''re out of woods, eh? Wonder what this does...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wizzlecrank SAY_PROGRESS_1'),
   (18879,-1000303,'Come on, don''t break down on me now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,393,'wizzlecrank SAY_PROGRESS_2'),
   (20415,-1000304,'That was a close one! Well, let''s get going, it''s still a ways to Ratchet!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wizzlecrank SAY_PROGRESS_3'),
   (20415,-1000305,'Hmm... I don''t think this blinking red light is a good thing...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wizzlecrank SAY_END'),
   (19685,-1000306,'Let''s get to the others, and keep an eye open for those wolves cutside...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'erland SAY_START_1'),
   (19685,-1000307,'Be careful, $N. Those wolves like to hide among the trees.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'erland SAY_START_2'),
   (19685,-1000308,'A $C attacks!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'erland SAY_AGGRO_1'),
   (19685,-1000309,'Beware! I am under attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'erland SAY_AGGRO_2'),
   (19685,-1000310,'Oh no! A $C is upon us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'erland SAY_AGGRO_3'),
   (19685,-1000311,'We''re almost there!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'erland SAY_PROGRESS'),
   (19685,-1000312,'We made it! Thanks, $N. I couldn''t have gotten without you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'erland SAY_END'),
   (19685,-1000313,'It''s good to see you again, Erland. What is your report?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,33,1,'erland SAY_RANE'),
   (19685,-1000314,'Masses of wolves are to the east, and whoever lived at Malden''s Orchard is gone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'erland SAY_RANE_REPLY'),
   (19685,-1000315,'If I am excused, then I''d like to check on Quinn...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'erland SAY_CHECK_NEXT'),
   (19685,-1000316,'Hello, Quinn. How are you faring?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'erland SAY_QUINN'),
   (19685,-1000317,'I''ve been better. Ivar the Foul got the better of me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,33,1,'erland SAY_QUINN_REPLY'),
   (19685,-1000318,'Try to take better care of yourself, Quinn. You were lucky this time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'erland SAY_BYE'),
   (19685,-1000319,'Let the trial begin, Bloodwrath, attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0,'kelerun SayId1'),
   (19685,-1000320,'Champion Lightrend, make me proud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0,'kelerun SayId2'),
   (19685,-1000321,'Show this upstart how a real Blood Knight fights, Swiftblade!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0,'kelerun SayId3'),
   (19685,-1000322,'Show $n the meaning of pain, Sunstriker!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0,'kelerun SayId4'),
   (19685,-1000323,'Mist! I feared I would never see you again! Yes, I am well, do not worry for me. You must rest and recover your health.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'mist SAY_AT_HOME'),
   (19685,-1000324,'%s growls in acknowledgement before straightening and making her way off into the forest.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'mist EMOTE_AT_HOME'),
   (19685,-1000325,'"Threshwackonator First Mate unit prepared to follow"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'threshwackonator EMOTE_START'),
   (19685,-1000326,'YARRR! Swabie, what have ye done?! He''s gone mad! Baton him down the hatches! Hoist the mast! ARRRR! Every man for hi''self!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'threshwackonator SAY_AT_CLOSE'),
   (19685,-1000327,'Ok, $n, let''s go find where I left that mysterious fossil. Follow me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_START'),
   (19720,-1000328,'Now where did I put that mysterious fossil? Ah, maybe up there...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_RAMP1_1'),
   (19720,-1000329,'Hrm, nothing up here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_RAMP1_2'),
   (19720,-1000330,'No mysterious fossil here... Ah, but my copy of Green Hills of Stranglethorn. What a good book!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_BOOK'),
   (19720,-1000331,'I bet you I left it in the tent!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_TENT1_1'),
   (19720,-1000332,'Oh wait, that''s Hollee''s tent... and it''s empty.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_TENT1_2'),
   (19720,-1000333,'Interesting... I hadn''t noticed this earlier...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_MOSS'),
   (17768,-1000334,'%s inspects the ancient, mossy stone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,7,0,'remtravel EMOTE_REM_MOSS'),
   (1978,-1000335,'Oh wait! I''m supposed to be looking for that mysterious fossil!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_MOSS_PROGRESS'),
   (1978,-1000336,'Nope. didn''t leave the fossil back here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_PROGRESS'),
   (1978,-1000337,'Ah. I remember now! I gave the mysterious fossil to Hollee! Check with her.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_REMEMBER'),
   (1978,-1000338,'%s goes back to work, oblivious to everything around him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,7,0,'remtravel EMOTE_REM_END'),
   (1978,-1000339,'Something tells me this $r wants the mysterious fossil too. Help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'remtravel SAY_REM_AGGRO'),
   (1978,-1000340,'%s howls in delight at the sight of his lunch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'kyle EMOTE_SEE_LUNCH'),
   (1978,-1000341,'%s eats his lunch.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'kyle EMOTE_EAT_LUNCH'),
   (1978,-1000342,'%s thanks you with a special dance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'kyle EMOTE_DANCE'),
   (1978,-1000343,'Is the way clear? Let''s get out while we can, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_START'),
   (1978,-1000344,'Looks like we won''t get away so easy. Get ready!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_AMBUSH1'),
   (1978,-1000345,'Let''s keep moving. We''re not safe here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_PROGRESS'),
   (1978,-1000346,'Look out, $N! Enemies ahead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_AMBUSH2'),
   (11856,-1000347,'We''re almost to the refuge! Let''s go.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kayra SAY_END'),
   (11856,-1000348,'Ah...the wondrous sound of kodos. I love the way they make the ground shake... inspect the beast for me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kodo round SAY_SMEED_HOME_1'),
   (11856,-1000349,'Hey, look out with that kodo! You had better inspect that beast before I give you credit!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kodo round SAY_SMEED_HOME_2'),
   (9453,-1000350,'That kodo sure is a beauty. Wait a minute, where are my bifocals? Perhaps you should inspect the beast for me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kodo round SAY_SMEED_HOME_3'),
   (18262,-1000351,'You, there! Hand over that moonstone and nobody gets hurt!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'sprysprocket SAY_START'),
   (18588,-1000352,'%s takes the Southfury moonstone and escapes into the river. Follow her!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'sprysprocket EMOTE_START'),
   (18760,-1000353,'Just chill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'sprysprocket SAY_WHISPER_CHILL'),
   (18760,-1000354,'Stupid grenade picked a fine time to backfire! So much for high quality goblin engineering!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'sprysprocket SAY_GRENADE_FAIL'),
   (18760,-1000355,'All right, you win! I surrender! Just don''t hurt me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'sprysprocket SAY_END'),
   (18760,-1000356,'Okay, okay... gimme a minute to rest now. You gone and beat me up good.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,14,'calvin SAY_COMPLETE'),
   (10181,-1000357,'Let''s go before they find out I''m free!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'KAYA_SAY_START'),
   (10181,-1000358,'Look out! We''re under attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'KAYA_AMBUSH'),
   (17900,-1000359,'Thank you for helping me. I know my way back from here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'KAYA_END'),
   (17969,-1000360,'The strands of LIFE have been severed! The Dreamers must be avenged!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,' ysondre SAY_AGGRO'),
   (17969,-1000361,'Come forth, ye Dreamers � and claim your vengeance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,' ysondre SAY_SUMMONDRUIDS'),
   (17969,-1000362,'Let''s go $N. I am ready to reach Whitereach Post.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'paoka SAY_START'),
   (17969,-1000363,'Now this looks familiar. If we keep heading east, I think we can... Ahh, Wyvern on the attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'paoka SAY_WYVERN'),
   (17969,-1000364,'Thanks a bunch... I can find my way back to Whitereach Post from here. Be sure to talk with Motega Firemane; perhaps you can keep him from sending me home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'paoka SAY_COMPLETE'),
   (10646,-1000365,'Be on guard... Arnak has some strange power over the Grimtotem... they will not be happy to see me escape.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lakota SAY_LAKO_START'),
   (10646,-1000366,'Look out, the Grimtotem are upon us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lakota SAY_LAKO_LOOK_OUT'),
   (10646,-1000367,'Here they come.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lakota SAY_LAKO_HERE_COME'),
   (10646,-1000368,'More Grimtotems are coming this way!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lakota SAY_LAKO_MORE'),
   (10646,-1000369,'Finally, free at last... I must be going now, thanks for helping me escape. I can get back to Freewind Post by myself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'lakota SAY_LAKO_END'),
   (3465,-1000370,'Stay close, $n. I''ll need all the help I can get to break out of here. Let''s go!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'gilthares SAY_GIL_START'),
   (3465,-1000371,'At last! Free from Northwatch Hold! I need a moment to catch my breath...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,5,'gilthares SAY_GIL_AT_LAST'),
   (3465,-1000372,'Now I feel better. Let''s get back to Ratchet. Come on, $n.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,23,'gilthares SAY_GIL_PROCEED'),
   (3465,-1000373,'Looks like the Southsea Freeboters are heavily entrenched on the coast. This could get rough.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,25,'gilthares SAY_GIL_FREEBOOTERS'),
   (3465,-1000374,'Help! $C attacking!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'gilthares SAY_GIL_AGGRO_1'),
   (3465,-1000375,'$C heading this way fast! Time for revenge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'gilthares SAY_GIL_AGGRO_2'),
   (3465,-1000376,'$C coming right at us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'gilthares SAY_GIL_AGGRO_3'),
   (3465,-1000377,'Get this $C off of me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'gilthares SAY_GIL_AGGRO_4'),
   (3465,-1000378,'Almost back to Ratchet! Let''s keep up the pace...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'gilthares SAY_GIL_ALMOST'),
   (3465,-1000379,'Ah, the sweet salt air of Ratchet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'gilthares SAY_GIL_SWEET'),
   (3465,-1000380,'Captain Brightsun, $N here has freed me! $N, I am certain the Captain will reward your bravery.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,66,'gilthares SAY_GIL_FREED'),
   (21027,-1000381,'I sense the tortured spirits, $n. They are this way, come quickly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'wilda SAY_WIL_START'),
   (21027,-1000382,'Watch out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_AGGRO1'),
   (21027,-1000383,'Naga attackers! Defend yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_AGGRO2'),
   (21027,-1000384,'Grant me protection $n, I must break trough their foul magic!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_PROGRESS1'),
   (21027,-1000385,'The naga of Coilskar are exceptionally cruel to their prisoners. It is a miracle that I survived inside that watery prison for as long as I did. Earthmother be praised.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_PROGRESS2'),
   (21027,-1000386,'Now we must find the exit.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_FIND_EXIT'),
   (21027,-1000387,'Lady Vashj must answer for these atrocities. She must be brought to justice!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_PROGRESS4'),
   (21027,-1000388,'The tumultuous nature of the great waterways of Azeroth and Draenor are a direct result of tormented water spirits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_PROGRESS5'),
   (21027,-1000389,'It shouldn''t be much further, $n. The exit is just up ahead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_JUST_AHEAD'),
   (21027,-1000390,'Thank you, $n. Please return to my brethren at the Altar of Damnation, near the Hand of Gul''dan, and tell them that Wilda is safe. May the Earthmother watch over you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'wilda SAY_WIL_END'),
   (5955,-1000391,'I''m Thirsty.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'tooga SAY_TOOG_THIRST'),
   (5955,-1000392,'Torta must be so worried.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'tooga SAY_TOOG_WORRIED'),
   (5955,-1000393,'Torta, my love! I have returned at long last.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'tooga SAY_TOOG_POST_1'),
   (5955,-1000394,'You have any idea how long I''ve been waiting here? And where''s dinner? All that time gone and nothing to show for it?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'tooga SAY_TORT_POST_2'),
   (5955,-1000395,'My dearest Torta. I have been gone for so long. Finally we are reunited. At long last our love can blossom again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'tooga SAY_TOOG_POST_3'),
   (5955,-1000396,'Enough with the rambling. I am starving! Now, get your dusty shell into that ocean and bring momma some grub.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'tooga SAY_TORT_POST_4'),
   (5955,-1000397,'Yes Torta. Whatever your heart desires...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'tooga SAY_TOOG_POST_5'),
   (5955,-1000398,'And try not to get lost this time...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'tooga SAY_TORT_POST_6'),
   (20021,-1000399,'Peace is but a fleeting dream! Let the NIGHTMARE reign!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'taerar SAY_AGGRO'),
   (20021,-1000400,'Children of Madness - I release you upon this world!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'taerar SAY_SUMMONSHADE'),
   (14889,-1000401,'Hope is a DISEASE of the soul! This land shall wither and die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'emeriss SAY_AGGRO'),
   (6182,-1000402,'Taste your world''s corruption!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'emeriss SAY_CASTCORRUPTION'),
   (6182,-1000403,'Rin''ji is free!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_RIN_FREE'),
   (6182,-1000404,'Attack my sisters! The troll must not escape!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_RIN_BY_OUTRUNNER'),
   (6182,-1000405,'Rin''ji needs help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'SAY_RIN_HELP_1'),
   (6182,-1000406,'Rin''ji is being attacked!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'SAY_RIN_HELP_2'),
   (7780,-1000407,'Rin''ji can see road now, $n. Rin''ji knows the way home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'SAY_RIN_COMPLETE'),
   (7780,-1000408,'Rin''ji will tell you secret now... $n, should go to the Overlook Cliffs. Rin''ji hid something on island  there',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'SAY_RIN_PROGRESS_1'),
   (7780,-1000409,'You find it, you keep it! Don''t tell no one that Rin''ji talked to you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'SAY_RIN_PROGRESS_2'),
   (10638,-1000410,'Here they come! Defend yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,5,'kanati SAY_KAN_START'),
   (3568,-1000411,'Why don''t we deal with you now, Hendel? Lady Proudmoore will speak for you back in the tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'hendel SAY_PROGRESS_1_TER'),
   (3568,-1000412,'Please... please... Miss Proudmore. I didn''t mean to...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'hendel SAY_PROGRESS_2_HEN'),
   (4966,-1000413,'I apologize for taking so long to get here. I wanted Lady Proudmoore to be present also.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'hendel SAY_PROGRESS_3_TER'),
   (4966,-1000414,'We can only stay a few moments before returning to the tower. If you wish to speak to us more you may find us there.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,0,'hendel SAY_PROGRESS_4_TER'),
   (4966,-1000415,'%s, too injured, gives up the chase.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'hendel EMOTE_SURRENDER'),
   (9999,-1000416,'Well, I''m not sure how far I''ll make it in this state... I''m feeling kind of faint...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_RIN_START_1'),
   (9999,-1000417,'Remember, if I faint again, the water that Spraggle gave you will revive me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_RIN_START_2'),
   (9999,-1000418,'The heat... I can''t take it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_FAINT_1'),
   (9999,-1000419,'Maybe... you could carry me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_FAINT_2'),
   (9999,-1000420,'Uuuuuuggggghhhhh....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_FAINT_3'),
   (9999,-1000421,'I''m not feeling so well...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_FAINT_4'),
   (9999,-1000422,'Where... Where am I?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_WAKE_1'),
   (9999,-1000423,'I am feeling a little better now, thank you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_WAKE_2'),
   (9999,-1000424,'Yes, I must go on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_WAKE_3'),
   (9999,-1000425,'How am I feeling? Quite soaked, thank you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_WAKE_4'),
   (9999,-1000426,'Spraggle! I didn''t think I''d make it back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_RIN_END_1'),
   (9999,-1000427,'Ringo! You''re okay!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_SPR_END_2'),
   (9999,-1000428,'Oh... I''m feeling faint...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_RIN_END_3'),
   (9999,-1000429,'%s collapses onto the ground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ringo EMOTE_RIN_END_4'),
   (9999,-1000430,'%s stands up after a short pause.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ringo EMOTE_RIN_END_5'),
   (6784,-1000431,'Ugh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_RIN_END_6'),
   (9999,-1000432,'Ringo? Wake up! Don''t worry, I''ll take care of you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ringo SAY_SPR_END_7'),
   (9999,-1000433,'%s fades away after a long pause.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ringo EMOTE_RIN_END_8'),
   (11218,-1000434,'Liladris has been waiting for me at Maestra''s Post, so we should make haste, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kerlonian SAY_KER_START'),
   (11218,-1000435,'%s looks very sleepy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'kerlonian EMOTE_KER_SLEEP_1'),
   (11218,-1000436,'%s suddenly falls asleep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'kerlonian EMOTE_KER_SLEEP_2'),
   (11218,-1000437,'%s begins to drift off...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'kerlonian EMOTE_KER_SLEEP_3'),
   (11218,-1000438,'This looks like the perfect place for a nap...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kerlonian SAY_KER_SLEEP_1'),
   (11218,-1000439,'Yaaaaawwwwwnnnn...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kerlonian SAY_KER_SLEEP_2'),
   (11218,-1000440,'Oh, I am so tired...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kerlonian SAY_KER_SLEEP_3'),
   (11218,-1000441,'You don''t mind if I stop here for a moment, do you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kerlonian SAY_KER_SLEEP_4'),
   (11218,-1000442,'Be on the alert! The Blackwood furbolgs are numerous in the area...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kerlonian SAY_KER_ALERT_1'),
   (11218,-1000443,'It''s quiet... Too quiet...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kerlonian SAY_KER_ALERT_2'),
   (11218,-1000444,'Oh, I can see Liladris from here... Tell her I''m here, won''t you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'kerlonian SAY_KER_END'),
   (11218,-1000445,'%s wakes up!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'kerlonian EMOTE_KER_AWAKEN'),
   (18210,-1000482,'Look out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'maghar captive SAY_MAG_START'),
   (18210,-1000483,'Don''t let them escape! Kill the strong one first!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'maghar captive SAY_MAG_NO_ESCAPE'),
   (18210,-1000484,'More of them coming! Watch out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'maghar captive SAY_MAG_MORE'),
   (18210,-1000485,'Where do you think you''re going? Kill them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'maghar captive SAY_MAG_MORE_REPLY'),
   (18210,-1000486,'Ride the lightning, filth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'maghar captive SAY_MAG_LIGHTNING'),
   (18210,-1000487,'FROST SHOCK!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'maghar captive SAY_MAG_SHOCK'),
   (18210,-1000488,'It is best that we split up now, in case they send more after us. Hopefully one of us will make it back to Garrosh. Farewell stranger.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'maghar captive SAY_MAG_COMPLETE'),
   (17077,-1000496,'%s lifts its head into the air, as if listening for something.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ancestral wolf EMOTE_WOLF_LIFT_HEAD'),
   (17077,-1000497,'%s lets out a howl that rings across the mountains to the north and motions for you to follow.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ancestral wolf EMOTE_WOLF_HOWL'),
   (17077,-1000498,'Welcome, kind spirit. What has brought you to us?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ancestral wolf SAY_WOLF_WELCOME'),

-- -1 033 000 SHADOWFANG KEEP
   (0,-1033000,'Follow me and I''ll open the courtyard door for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,1,'prisoner ashcrombe SAY_FREE_AS'),
   (0,-1033001,'I have just the spell to get this door open. Too bad the cell doors weren''t locked so haphazardly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,1,'prisoner ashcrombe SAY_OPEN_DOOR_AS'),
   (0,-1033002,'There it is! Wide open. Good luck to you conquering what lies beyond. I must report back to the Kirin Tor at once!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,1,'prisoner ashcrombe SAY_POST_DOOR_AS'),
   (0,-1033003,'Free from this wretched cell at last! Let me show you to the courtyard....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'prisoner adamant SAY_FREE_AD'),
   (0,-1033004,'You are indeed courageous for wanting to brave the horrors that lie beyond this door.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'prisoner adamant SAY_OPEN_DOOR_AD'),
   (0,-1033005,'There we go!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'prisoner adamant SAY_POST1_DOOR_AD'),
   (0,-1033006,'Good luck with Arugal. I must hurry back to Hadrec now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'prisoner adamant SAY_POST2_DOOR_AD'),
   (3849,-1033007,'About time someone killed the wretch.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,1,'prisoner adamant SAY_BOSS_DIE_AD'),
   (3850,-1033008,'For once I agree with you... scum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,7,1,'prisoner ashcrombe SAY_BOSS_DIE_AS'),

-- -1 034 000 STOCKADES
-- -1 036 000 DEADMINES
   (0,-1036000,'You there, check out that noise!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5775,1,7,0,'smite INST_SAY_ALARM1'),
   (0,-1036001,'We''re under attack! A vast, ye swabs! Repel the invaders!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5777,1,7,0,'smite INST_SAY_ALARM2'),

-- -1 043 000 WAILING CAVERNS
   (3678,-1043000,'At last! Naralex can be awakened! Come aid me, brave adventurers!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Disciple SAY_AT_LAST'),
   (3678,-1043001,'I must make the necessary preparations before the awakening ritual can begin. You must protect me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_MAKE_PREPARATIONS'),
   (3678,-1043002,'These caverns were once a temple of promise for regrowth in the Barrens. Now, they are the halls of nightmares.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_TEMPLE_OF_PROMISE'),
   (3678,-1043003,'Come. We must continue. There is much to be done before we can pull Naralex from his nightmare.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_MUST_CONTINUE'),
   (3678,-1043004,'Within this circle of fire I must cast the spell to banish the spirits of the slain Fanglords.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_BANISH_THE_SPIRITS'),
   (3678,-1043005,'The caverns have been purified. To Naralex''s chamber we go!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_CAVERNS_PURIFIED'),
   (3678,-1043006,'Beyond this corridor, Naralex lies in fitful sleep. Let us go awaken him before it is too late.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_BEYOND_THIS_CORRIDOR'),
   (3678,-1043007,'Protect me brave souls as I delve into this Emerald Dream to rescue Naralex and put an end to this corruption!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_EMERALD_DREAM'),
   (3678,-1043008,'%s begins to perform the awakening ritual on Naralex.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Disciple EMOTE_AWAKENING_RITUAL'),
   (3678,-1043009,'%s tosses fitfully in troubled sleep.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Naralex EMOTE_TROUBLED_SLEEP'),
   (3678,-1043010,'%s writhes in agony. The Disciple seems to be breaking through.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Naralex EMOTE_WRITHE_IN_AGONY'),
   (3678,-1043011,'%s dreams up a horrendous vision. Something stirs beneath the murky waters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Naralex EMOTE_HORRENDOUS_VISION'),
   (3678,-1043012,'This Mutanus the Devourer is a minion from Naralex''s nightmare no doubt!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_MUTANUS_THE_DEVOURER'),
   (3678,-1043013,'I AM AWAKE, AT LAST!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Naralex SAY_I_AM_AWAKE'),
   (3678,-1043014,'At last! Naralex awakes from the nightmare.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_NARALEX_AWAKES'),
   (3678,-1043015,'Ah, to be pulled from the dreaded nightmare! I thank you, my loyal Disciple, along with your brave companions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Naralex SAY_THANK_YOU'),
   (3678,-1043016,'We must go and gather with the other Disciples. There is much work to be done before I can make another attempt to restore the Barrens. Farewell, brave souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Naralex SAY_FAREWELL'),
   (3678,-1043017,'Attacked! Help get this $N off of me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Disciple SAY_ATTACKED'),

-- -1 047 000 RAZORFEN KRAUL
   (4508,-1047000,'Phew! Finally, out here. However, it will not become easy. Detain your eyes after annoyance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047001,'There on top resides Charlga Razorflank. The damned old Crone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047002,'Help! Get this Raging Agam''ar from me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047003,'In this ditch there are Blueleaf Tuber! As if the gold waited only to be dug out, I say it you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047004,'Danger is behind every corner.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047005,'I do not understand how these disgusting animals can live at such a place.... puh as this stinks!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047006,'I think, I see a way how we come out of this damned thorn tangle.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047007,'I am glad that we are out again from this damned ditch. However, up here it is not much better!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047008,'Finally! I am glad that I come, finally out here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047009,'I will rather rest a moment and come again to breath, before I return to Ratchet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),
   (4508,-1047010,'Many thanks for your help.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Willix'),

-- -1 048 000 BLACKFATHOM DEEPS

-- -1 060 000 863_world_scripts.sql
   (0,-1060005,'REUSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REUSE'),
   (0,-1060004,'REUSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REUSE'),
   (0,-1060003,'REUSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REUSE'),
   (0,-1060002,'REUSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REUSE'),
   (0,-1060001,'REUSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REUSE'),
   (0,-1060000,'REUSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REUSE'),

-- -1 070 000 ULDAMAN
   (7228,-1070000,'None may steal the secrets of the makers!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5851,1,0,0,'ironaya SAY_AGGRO'),
   (0,-1070001,'Taste blade, mongrel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_GUARD_SIL_AGGRO1'),
   (0,-1070002,'Please tell me that you didn''t just do what I think you just did. Please tell me that I''m not going to have to hurt you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_GUARD_SIL_AGGRO2'),
   (0,-1070003,'As if we don''t have enough problems, you go and create more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_GUARD_SIL_AGGRO3'),
   (620,-1070004,'looks up at you quizzically. Maybe you should inspect it?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'cluck EMOTE_A_HELLO'),
   (0,-1070005,'looks at you unexpectadly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'cluck EMOTE_H_HELLO'),
   (620,-1070006,'starts pecking at the feed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'cluck EMOTE_CLUCK_TEXT2'),

-- -1 090 000 GNOMEREGAN

-- -1 109 000 SUNKEN TEMPLE

-- -1 129 000 RAZORFEN DOWNS
   (7358,-1129000,'You''ll never leave this place... alive.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5825,1,0,0,'amnennar SAY_AGGRO'),
   (7358,-1129001,'To me, my servants!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5828,1,0,0,'amnennar SAY_SUMMON60'),
   (7358,-1129002,'Come, spirits, attend your master!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5829,1,0,0,'amnennar SAY_SUMMON30'),
   (7358,-1129003,'I am the hand of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5827,1,0,0,'amnennar SAY_HP'),
   (7358,-1129004,'Too...easy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5826,1,0,0,'amnennar SAY_KILL'),

-- -1 189 000 SCARLET MONASTERY
   (3975,-1189000,'Ah, I have been waiting for a real challenge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5830,1,0,0,'herod SAY_AGGRO'),
   (3975,-1189001,'Blades of Light!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5832,1,0,0,'herod SAY_WHIRLWIND'),
   (3975,-1189002,'Light, give me strength!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5833,1,0,0,'herod SAY_ENRAGE'),
   (3975,-1189003,'Hah, is that all?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5831,1,0,0,'herod SAY_KILL'),
   (3975,-1189004,'%s becomes enraged!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'herod EMOTE_ENRAGE'),
   (3976,-1189005,'Infidels! They must be purified!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5835,1,0,0,'mograine SAY_MO_AGGRO'),
   (3976,-1189006,'Unworthy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5836,1,0,0,'mograine SAY_MO_KILL'),
   (3976,-1189007,'At your side, milady!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5837,1,0,0,'mograine SAY_MO_RESSURECTED'),
   (3977,-1189008,'What, Mograine has fallen? You shall pay for this treachery!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5838,1,0,0,'whitemane SAY_WH_INTRO'),
   (3977,-1189009,'The Light has spoken!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5839,1,0,0,'whitemane SAY_WH_KILL'),
   (3977,-1189010,'Arise, my champion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5840,1,0,0,'whitemane SAY_WH_RESSURECT'),
   (3983,-1189011,'Tell me... tell me everything!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5847,1,0,0,'vishas SAY_AGGRO'),
   (3983,-1189012,'Naughty secrets!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5849,1,0,0,'vishas SAY_HEALTH1'),
   (3983,-1189013,'I''ll rip the secrets from your flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5850,1,0,0,'vishas SAY_HEALTH2'),
   (3983,-1189014,'Purged by pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5848,1,0,0,'vishas SAY_KILL'),
   (3983,-1189015,'The monster got what he deserved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,'vishas SAY_TRIGGER_VORREL'),
   (4543,-1189016,'We hunger for vengeance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5844,1,0,0,'thalnos SAY_AGGRO'),
   (4543,-1189017,'No rest, for the angry dead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5846,1,0,0,'thalnos SAY_HEALTH'),
   (4543,-1189018,'More... More souls.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5845,1,0,0,'thalnos SAY_KILL'),
   (6487,-1189019,'You will not defile these mysteries!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5842,1,0,0,'doan SAY_AGGRO'),
   (6487,-1189020,'Burn in righteous fire!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5843,1,0,0,'doan SAY_SPECIALAE'),
   (3974,-1189021,'Release the hounds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5841,1,0,0,'loksey SAY_AGGRO'),

-- -1 209 000 ZUL'FARRAK

-- -1 229 000 BLACKROCK SPIRE

-- -1 230 000 BLACKROCK DEPTHS
   (9503,-1230000,'Ah, hits the spot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'rocknot SAY_GOT_BEER'),
   (9019,-1230001,'Come to aid the Throne!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'dagran SAY_AGGRO'),
   (9019,-1230002,'Hail to the king, baby!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'dagran SAY_SLAY'),

-- -1 249 000 ONYXIA'S LAIR
   (10184,-1249000,'How fortuitous. Usually, I must leave my lair to feed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'onyxia SAY_AGGRO'),
   (10184,-1249001,'Learn your place mortal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'onyxia SAY_KILL'),
   (10184,-1249002,'This meaningless exertion bores me. I''ll incinerate you all from above!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,254,'onyxia SAY_PHASE_2_TRANS'),
   (10184,-1249003,'It seems you''ll need another lesson, mortals!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,293,'onyxia SAY_PHASE_3_TRANS'),
   (10184,-1249004,'takes in a deep breath...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'onyxia EMOTE_BREATH'),

-- -1 269 000 OPENING OF THE DARK PORTAL (BLACK MORASS)
   (17880,-1269000,'Why do you persist? Surely you can see the futility of it all. It is not too late! You may still leave with your lives ...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10442,1,0,0,'temporus SAY_ENTER'),
   (17880,-1269001,'So be it ... you have been warned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10444,1,0,0,'temporus SAY_AGGRO'),
   (17880,-1269002,'Time... sands of time is run out for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10443,1,0,0,'temporus SAY_BANISH'),
   (17880,-1269003,'You should have left when you had the chance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10445,1,0,0,'temporus SAY_SLAY1'),
   (17880,-1269004,'Your days are done.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10446,1,0,0,'temporus SAY_SLAY2'),
   (17880,-1269005,'My death means ... little.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10447,1,0,0,'temporus SAY_DEATH'),
   (17879,-1269006,'Why do you aid the Magus? Just think of how many lives could be saved if the portal is never opened, if the resulting wars could be erased ...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10412,1,0,0,'chrono_lord_deja SAY_ENTER'),
   (17879,-1269007,'If you will not cease this foolish quest, then you will die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10414,1,0,0,'chrono_lord_deja SAY_AGGRO'),
   (17879,-1269008,'You have outstayed your welcome, Timekeeper. Begone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10413,1,0,0,'chrono_lord_deja SAY_BANISH'),
   (17879,-1269009,'I told you it was a fool''s quest!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10415,1,0,0,'chrono_lord_deja SAY_SLAY1'),
   (17879,-1269010,'Leaving so soon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10416,1,0,0,'chrono_lord_deja SAY_SLAY2'),
   (17879,-1269011,'Time ... is on our side.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10417,1,0,0,'chrono_lord_deja SAY_DEATH'),
   (17881,-1269012,'The time has come to shatter this clockwork universe forever! Let us no longer be slaves of the hourglass! I warn you: those who do not embrace the greater path shall become victims of its passing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10400,1,0,0,'aeonus SAY_ENTER'),
   (17881,-1269013,'Let us see what fate lays in store...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10402,1,0,0,'aeonus SAY_AGGRO'),
   (17881,-1269014,'Your time is up, slave of the past!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10401,1,0,0,'aeonus SAY_BANISH'),
   (17881,-1269015,'One less obstacle in our way!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10403,1,0,0,'aeonus SAY_SLAY1'),
   (17881,-1269016,'No one can stop us! No one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10404,1,0,0,'aeonus SAY_SLAY2'),
   (17881,-1269017,'It is only a matter...of time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10405,1,0,0,'aeonus SAY_DEATH'),
   (17881,-1269018,'goes into a frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'aeonus EMOTE_FRENZY'),
   (20201,-1269019,'Stop! Do not go further, mortals. You are ill-prepared to face the forces of the Infinite Dragonflight. Come, let me help you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'saat SAY_SAAT_WELCOME'),
   (15608,-1269020,'The time has come! Gul''dan, order your warlocks to double their efforts! Moments from now the gateway will open, and your Horde will be released upon this ripe, unsuspecting world!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10435,1,0,0,'medivh SAY_ENTER'),
   (15608,-1269021,'What is this? Champions, coming to my aid? I sense the hand of the dark one in this. Truly this sacred event bears his blessing?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10436,1,0,0,'medivh SAY_INTRO'),
   (15608,-1269022,'Champions, my shield grows weak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10437,1,0,0,'medivh SAY_WEAK75'),
   (15608,-1269023,'My powers must be concentrated on the portal! I do not have time to hold the shield!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10438,1,0,0,'medivh SAY_WEAK50'),
   (15608,-1269024,'The shield is nearly gone! All that I have worked for is in danger!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10439,1,0,0,'medivh SAY_WEAK25'),
   (15608,-1269025,'No... damn this feeble mortal coil...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10441,1,0,0,'medivh SAY_DEATH'),
   (15608,-1269026,'I am grateful for your aid, champions. Now, Gul''dan''s Horde will sweep across this world, like a locust swarm, and all my designs, all my carefully laid plans will at last fall into place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10440,1,0,0,'medivh SAY_WIN'),
   (15608,-1269027,'Orcs of the Horde! This portalis the gateway to your new destiny! Azeroth lies before you, ripe for the taking!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'medivh SAY_ORCS_ENTER'),
   (15608,-1269028,'Gul''dan speaks the truth! We should return at once to tell our brothers of the news! Retreat back trought the portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'medivh SAY_ORCS_ANSWER'),

-- -1 289 000 SCHOLOMANCE

-- -1 309 000 ZUL'GURUB
   (14507,-1309000,'Let the coils of hate unfurl!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8421,1,0,0,'venoxis SAY_TRANSFORM'),
   (14507,-1309001,'Ssserenity..at lassst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'venoxis SAY_DEATH'),
   (14517,-1309002,'Lord Hir''eek, grant me wings of vengance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8417,1,0,0,'jeklik SAY_AGGRO'),
   (14517,-1309003,'I command you to rain fire down upon these invaders!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'jeklik SAY_RAIN_FIRE'),
   (14517,-1309004,'Finally ...death. Curse you Hakkar! Curse you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8422,1,0,0,'jeklik SAY_DEATH'),
   (14510,-1309005,'Draw me to your web mistress Shadra. Unleash your venom!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8418,1,0,0,'marli SAY_AGGRO'),
   (14510,-1309006,'Shadra, make of me your avatar!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'marli SAY_TRANSFORM'),
   (14510,-1309007,'Aid me my brood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'marli SAY_SPIDER_SPAWN'),
   (14510,-1309008,'Bless you mortal for this release. Hakkar controls me no longer...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8423,1,0,0,'marli SAY_DEATH'),
   (14509,-1309009,'Shirvallah, fill me with your RAGE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8419,1,0,0,'thekal SAY_AGGRO'),
   (14509,-1309010,'Hakkar binds me no more! Peace at last!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8424,1,0,0,'thekal SAY_DEATH'),
   (14515,-1309011,'Bethekk, your priestess calls upon your might!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8416,1,0,0,'arlokk SAY_AGGRO'),
   (14515,-1309012,'Feast on $n, my pretties!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'arlokk SAY_FEAST_PANTHER'),
   (14515,-1309013,'At last, I am free of the Soulflayer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8412,1,0,0,'arlokk SAY_DEATH'),
   (11380,-1309014,'Welcome to da great show friends! Step right up to die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8425,1,0,0,'jindo SAY_AGGRO'),
   (11382,-1309015,'I''ll feed your souls to Hakkar himself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8413,1,0,0,'mandokir SAY_AGGRO'),
   (11382,-1309016,'DING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'mandokir SAY_DING_KILL'),
   (11382,-1309017,'GRATS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'mandokir SAY_GRATS_JINDO'),
   (11382,-1309018,'I''m keeping my eye on you, $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'mandokir SAY_WATCH'),
   (11382,-1309019,'Don''t make me angry. You won''t like it when I''m angry.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'mandokir SAY_WATCH_WHISPER'),
   (14834,-1309020,'PRIDE HERALDS THE END OF YOUR WORLD. COME, MORTALS! FACE THE WRATH OF THE SOULFLAYER!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8414,1,0,0,'hakkar SAY_AGGRO'),
   (14834,-1309021,'Fleeing will do you no good, mortals!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'hakkar SAY_FLEEING'),
   (14834,-1309022,'You dare set foot upon Hakkari holy ground? Minions of Hakkar, destroy the infidels!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'hakkar SAY_MINION_DESTROY'),
   (14834,-1309023,'Minions of Hakkar, hear your God. The sanctity of this temple has been compromised. Invaders encroach upon holy ground! The Altar of Blood must be protected. Kill them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'hakkar SAY_PROTECT_ALTAR'),

-- -1 329 000 STRATHOLME
   (11136,-1329000,'Thanks to Egan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'freed_soul SAY_ZAPPED0'),
   (11136,-1329001,'Rivendare must die',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'freed_soul SAY_ZAPPED1'),
   (11136,-1329002,'Who you gonna call?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'freed_soul SAY_ZAPPED2'),
   (11136,-1329003,'Don''t cross those beams!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'freed_soul SAY_ZAPPED3'),

-- -1 349 000 MARAUDON

-- -1 350 000 Gates of Ahn'Qiraj Opening
   (15381,-1350000,'We must act quickly or all shall be lost!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_1'),
   (15381,-1350001,'NOW, STAGHELM! WE GO NOW! Prepare your magic!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,81,'ANACHRONOS_SAY_2'),
   (15381,-1350002,'Stay close...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_3'),
   (15381,-1350003,'The sands of time will halt, but only for a moment! I will now conjure the barrier.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_4'),
   (15381,-1350004,'FINISH THE SPELL STAGHELM! I CANNOT HOLD THE GLYPHS OF WARDING IN PLACE MUCH LONGER! CALL FORTH THE ROOTS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,53,'ANACHRONOS_SAY_5'),
   (15381,-1350005,'It... It is over, Lord Staghelm. We are victorious. Albeit the cost for this victory was great.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_6'),
   (15381,-1350006,'There is but one duty that remains...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_7'),
   (15381,-1350007,'Before I leave this place, I make one final offreing to you, Lord Staghelm. Should a time arise in which you must gain entry to this accursed fortress, use the Scepter of the Shifting Sands on the sacred gong. The magic holding the barrier together will dissipate and the horrors of Ahn''Qiraj will be unleashed upon the world once more.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_8'),
   (15381,-1350008,'Lord Staghelm, where are you going? You would shatter our bond for the sake of pride?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_9'),
   (15381,-1350009,'And now you know all that there is to know, mortal...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_10'),
   (15381,-1350010,'hands the Scepter of the Shifting Sands to Fandral Staghelm.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,1,'ANACHRONOS_EMOTE_1'),
   (15381,-1350011,'shakes his head in dissapointment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,274,'ANACHRONOS_EMOTE_2'),
   (15381,-1350012,'kneels down to pick up the fragments of the shattered scepter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,87,'ANACHRONOS_EMOTE_3'),
   (15382,-1350013,'My forces cannot overcome the Qiraji defenses. We will not be able to get close enough to place your precious barrier, dragon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'FANDRAL_SAY_1'),
   (15382,-1350014,'It is done dragon. Lead the way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'FANDRAL_SAY_2'),
   (15382,-1350015,'Ancient ones guide my hand... Wake from your slumber! WAKE AND SEAL THIS CURSED PLACE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'FANDRAL_SAY_3'),
   (15382,-1350016,'After the savagery that my people have witnessed and felt, you expect me to accept another burden, dragon? Surely you are mad.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'FANDRAL_SAY_4'),
   (15382,-1350017,'I want nothing to do with Silithus, the Qiraji and least of all, any damned dragons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'FANDRAL_SAY_5'),
   (15382,-1350018,'My son''s soul will find no comfort in this hollow victory, dragon. I will have him back.Thought it takes a millennia, I WILL have my son back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,254,'FANDRAL_SAY_6'),
   (15382,-1350019,'falls to one knee - exhausted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,16,'FANDRAL_EMOTE_1'),
   (15382,-1350020,'hurls the Scepter of the Shifting Sands into the barrier, shattering it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'FANDRAL_EMOTE_2'),
   (15379,-1350021,'Aye, Fandral, remember these words: Let not your grief guide your faith. These thoughts you hold... dark places you go, night elf. Absolution cannot be had through misguided vengeance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'CAELESTRASZ_SAY_1'),
   (15379,-1350022,'Do not forget the sacrifices made on this day, night elf. We have all suffered immensely at the hands of these beasts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'CAELESTRASZ_SAY_2'),
   (15379,-1350023,'Alexstrasza grant me the resolve to drive our enemies back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'CAELESTRASZ_YELL_1'),
   (15380,-1350024,'This distraction will give you and the young druid time enough to seal the gate. Do not falter. Now, let us see how they deal with chaotic magic.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ARYGOS_SAY_1'),
   (15380,-1350025,'Let them feel the wrath of the Blue Flight! May Malygos protect me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'ARYGOS_YELL_1'),
   (15380,-1350026,'nods knowingly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,273,'ARYGOS_EMOTE_1'),
   (15378,-1350027,'There is a way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'MERITHRA_SAY_1'),
   (15378,-1350028,'We will push them back, Anachronos. This I vow. Uphold the end of this task. Let not your hands falter as you seal our fates behind the barrier.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'MERITHRA_SAY_2'),
   (15378,-1350029,'Succumb to the endless dream, little ones. Let it consume you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'MERITHRA_YELL_1'),
   (15378,-1350030,'glances at her compatriots.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,2,'MERITHRA_EMOTE_1'),

-- -1 389 000 RAGEFIRE CHASM

-- -1 409 000 MOLTEN CORE
   (12056,-1409000,'%s performs one last service for Ragnaros.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'geddon EMOTE_SERVICE'),
   (11982,-1409001,'%s goes into a killing frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'magmadar EMOTE_FRENZY'),
   (11988,-1409002,'%s refuses to die while its master is in trouble.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'core rager EMOTE_LOWHP'),
   (12018,-1409003,'Reckless mortals, none may challenge the sons of the living flame!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8035,1,0,0,'majordomo SAY_AGGRO'),
   (12018,-1409004,'The runes of warding have been destroyed! Hunt down the infedels my bretheren.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8039,1,0,0,'majordomo SAY_SPAWN'),
   (12018,-1409005,'Ashes to Ashes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8037,1,0,0,'majordomo SAY_SLAY'),
   (12018,-1409006,'Burn mortals! Burn for this transgression!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8036,1,0,0,'majordomo SAY_SPECIAL'),
   (12018,-1409007,'Impossible! Stay your attack mortals! I submitt! I submitt! Brashly you have come to rest the secrets of the living flame. You will soon regret the recklessness of your quest. I go now to summon the lord whos house this is. Should you seek an audiance with him your paltry lives will surly be forfit. Nevertheless seek out his lair if you dare!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8038,1,0,0,'majordomo SAY_DEFEAT'),
   (12018,-1409008,'Behold Ragnaros, the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8040,1,0,0,'ragnaros SAY_SUMMON_MAJ'),
   (12018,-1409009,'TOO SOON! YOU HAVE AWAKENED ME TOO SOON, EXECUTUS! WHAT IS THE MEANING OF THIS INTRUSION?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8043,1,0,0,'ragnaros SAY_ARRIVAL1_RAG'),
   (12018,-1409010,'These mortal infidels, my lord! They have invaded your sanctum, and seek to steal your secrets!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8041,1,0,0,'ragnaros SAY_ARRIVAL2_MAJ'),
   (12018,-1409011,'FOOL! YOU ALLOWED THESE INSECTS TO RUN RAMPANT THROUGH THE HALLOWED CORE, AND NOW YOU LEAD THEM TO MY VERY LAIR? YOU HAVE FAILED ME, EXECUTUS! JUSTICE SHALL BE MET, INDEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8044,1,0,0,'ragnaros SAY_ARRIVAL3_RAG'),
   (12018,-1409012,'NOW FOR YOU, INSECTS. BOLDLY YOU SAUGHT THE POWER OF RAGNAROS NOW YOU SHALL SEE IT FIRST HAND.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8045,1,0,0,'ragnaros SAY_ARRIVAL5_RAG'),
   (11502,-1409013,'COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8049,1,0,0,'ragnaros SAY_REINFORCEMENTS1'),
   (11502,-1409014,'YOU CANNOT DEFEAT THE LIVING FLAME! COME YOU MINIONS OF FIRE! COME FORTH YOU CREATURES OF HATE! YOUR MASTER CALLS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8050,1,0,0,'ragnaros SAY_REINFORCEMENTS2'),
   (11502,-1409015,'BY FIRE BE PURGED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8046,1,0,0,'ragnaros SAY_HAND'),
   (11502,-1409016,'TASTE THE FLAMES OF SULFURON!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8047,1,0,0,'ragnaros SAY_WRATH'),
   (11502,-1409017,'DIE INSECT!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8051,1,0,0,'ragnaros SAY_KILL'),
   (11502,-1409018,'MY PATIENCE IS DWINDLING! COME NATS TO YOUR DEATH!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8048,1,0,0,'ragnaros SAY_MAGMABURST'),

-- -1 429 000 DIRE MAUL

-- -1 469 000 BLACKWING LAIR
   (12017,-1469000,'None of your kind should be here! You''ve doomed only yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8286,1,0,0,'broodlord SAY_AGGRO'),
   (12017,-1469001,'Clever Mortals but I am not so easily lured away from my sanctum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8287,1,0,0,'broodlord SAY_LEASH'),
   (14020,-1469002,'goes into a killing frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'chromaggus EMOTE_FRENZY'),
   (14020,-1469003,'flinches as its skin shimmers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'chromaggus EMOTE_SHIMMER'),
   (10162,-1469004,'In this world where time is your enemy, it is my greatest ally. This grand game of life that you think you play in fact plays you. To that I say...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'victor_nefarius SAY_GAMESBEGIN_1'),
   (10162,-1469005,'Let the games begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8280,1,0,0,'victor_nefarius SAY_GAMESBEGIN_2'),
   (10162,-1469006,'Ah, the heroes. You are persistent, aren''t you. Your allied attempted to match his power against mine, and had to pay the price. Now he shall serve me, by slaughtering you. Get up little red wyrm and destroy them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8279,1,0,0,'victor_nefarius SAY_VAEL_INTRO'),
   (11583,-1469007,'Well done, my minions. The mortals'' courage begins to wane! Now, let''s see how they contend with the true Lord of Blackrock Spire!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8288,1,0,0,'nefarian SAY_AGGRO'),
   (11583,-1469008,'Enough! Now you vermin shall feel the force of my birthright, the fury of the earth itself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8289,1,0,0,'nefarian SAY_XHEALTH'),
   (11583,-1469009,'Burn, you wretches! Burn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8290,1,0,0,'nefarian SAY_SHADOWFLAME'),
   (11583,-1469010,'Impossible! Rise my minions! Serve your master once more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8291,1,0,0,'nefarian SAY_RAISE_SKELETONS'),
   (11583,-1469011,'Worthless $N! Your friends will join you soon enough!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8293,1,0,0,'nefarian SAY_SLAY'),
   (11583,-1469012,'This cannot be! I am the Master here! You mortals are nothing to my kind! DO YOU HEAR? NOTHING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8292,1,0,0,'nefarian SAY_DEATH'),
   (11583,-1469013,'Mages too? You should be more careful when you play with magic...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_MAGE'),
   (11583,-1469014,'Warriors, I know you can hit harder than that! Let''s see it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_WARRIOR'),
   (11583,-1469015,'Druids and your silly shapeshifting. Let''s see it in action!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_DRUID'),
   (11583,-1469016,'Priests! If you''re going to keep healing like that, we might as well make it a little more interesting!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_PRIEST'),
   (11583,-1469017,'Paladins, I''ve heard you have many lives. Show me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_PALADIN'),
   (11583,-1469018,'Shamans, show me what your totems can do!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_SHAMAN'),
   (11583,-1469019,'Warlocks, you shouldn''t be playing with magic you don''t understand. See what happens?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_WARLOCK'),
   (11583,-1469020,'Hunters and your annoying pea-shooters!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_HUNTER'),
   (11583,-1469021,'Rogues? Stop hiding and face me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'nefarian SAY_ROGUE'),
   (12435,-1469022,'You''ll pay for forcing me to do this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8275,1,0,0,'razorgore SAY_EGGS_BROKEN1'),
   (12435,-1469023,'Fools! These eggs are more precious than you know.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8276,1,0,0,'razorgore SAY_EGGS_BROKEN2'),
   (12435,-1469024,'No! Not another one! I''ll have your heads for this atrocity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8277,1,0,0,'razorgore SAY_EGGS_BROKEN3'),
   (12435,-1469025,'If I fall into the abyss I''ll take all of you mortals with me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8278,1,0,0,'razorgore SAY_DEATH'),
   (13020,-1469026,'Too late...friends. Nefarius'' corruption has taken hold. I cannot...control myself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8281,1,0,0,'vaelastrasz SAY_LINE1'),
   (13020,-1469027,'I beg you Mortals, flee! Flee before I lose all control. The Black Fire rages within my heart. I must release it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8282,1,0,0,'vaelastrasz SAY_LINE2'),
   (13020,-1469028,'FLAME! DEATH! DESTRUCTION! COWER MORTALS BEFORE THE WRATH OF LORD....NO! I MUST FIGHT THIS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8283,1,0,0,'vaelastrasz SAY_LINE3'),
   (13020,-1469029,'Nefarius'' hate has made me stronger than ever before. You should have fled, while you could, mortals! The fury of Blackrock courses through my veins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8285,1,0,0,'vaelastrasz SAY_HALFLIFE'),
   (13020,-1469030,'Forgive me $N, your death only adds to my failure.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8284,1,0,0,'vaelastrasz SAY_KILLTARGET'),
   (11981,-1469031,'goes into a frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'flamegor EMOTE_FRENZY'),

/*  Ruins of Ahn'qiraj have not assigned scripts or missing scripts */
-- -1 509 000 RUINS OF AHN'QIRAJ
   (0,-1509000,'senses your fear.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'moam EMOTE_AGGRO'),
   (0,-1509001,'bristles with energy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'moan EMOTE_MANA_FULL'),
   (0,-1509002,'sets eyes on $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'buru EMOTE_TARGET'),
   (0,-1509003,'They come now. Try not to get yourself killed, young blood.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'andorov SAY_ANDOROV_INTRO'),
   (0,-1509004,'Remember, Rajaxx, when I said I''d kill you last? I lied...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'andorov SAY_ANDOROV_ATTACK'),
   (0,-1509005,'The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8612,1,0,0,'rajaxx SAY_WAVE3'),
   (0,-1509006,'No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8610,1,0,0,'rajaxx SAY_WAVE4'),
   (0,-1509007,'Fear is for the enemy! Fear and death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8608,1,0,0,'rajaxx SAY_WAVE5'),
   (0,-1509008,'Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8611,1,0,0,'rajaxx SAY_WAVE6'),
   (0,-1509009,'Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8607,1,0,0,'rajaxx SAY_WAVE7'),
   (0,-1509010,'Impudent fool! I will kill you myself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8609,1,0,0,'rajaxx SAY_INTRO'),
   (0,-1509011,'Attack and make them pay dearly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8603,1,0,0,'rajaxx SAY_UNK1'),
   (0,-1509012,'Crush them! Drive them out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8605,1,0,0,'rajaxx SAY_UNK2'),
   (0,-1509013,'Do not hesitate! Destroy them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8606,1,0,0,'rajaxx SAY_UNK3'),
   (0,-1509014,'Warriors! Captains! Continue the fight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8613,1,0,0,'rajaxx SAY_UNK4'),
   (0,-1509015,'You are not worth my time $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8614,1,0,0,'rajaxx SAY_DEAGGRO'),
   (0,-1509016,'Breath your last!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8604,1,0,0,'rajaxx SAY_KILLS_ANDOROV'),
   (0,-1509017,'Soon you will know the price of your meddling, mortals... The master is nearly whole... And when he rises, your world will be cease!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'rajaxx SAY_COMPLETE_QUEST'),
   (0,-1509018,'I am rejuvinated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8593,1,0,0,'ossirian SAY_SURPREME1'),
   (0,-1509019,'My powers are renewed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8595,1,0,0,'ossirian SAY_SURPREME2'),
   (0,-1509020,'My powers return!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8596,1,0,0,'ossirian SAY_SURPREME3'),
   (0,-1509021,'Protect the city at all costs!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8597,1,0,0,'ossirian SAY_RAND_INTRO1'),
   (0,-1509022,'The walls have been breached!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8599,1,0,0,'ossirian SAY_RAND_INTRO2'),
   (0,-1509023,'To your posts. Defend the city.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8600,1,0,0,'ossirian SAY_RAND_INTRO3'),
   (0,-1509024,'Tresspassers will be terminated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8601,1,0,0,'ossirian SAY_RAND_INTRO4'),
   (0,-1509025,'Sands of the desert rise and block out the sun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8598,1,0,0,'ossirian SAY_AGGRO'),
   (0,-1509026,'You are terminated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8602,1,0,0,'ossirian SAY_SLAY'),
   (0,-1509027,'I...have...failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8594,1,0,0,'ossirian SAY_DEATH'),

-- -1 531 000 TEMPLE OF AHN'QIRAJ
   (15263,-1531000,'Are you so eager to die? I would be happy to accomodate you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8615,1,0,0,'skeram SAY_AGGRO1'),
   (15263,-1531001,'Cower mortals! The age of darkness is at hand.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8616,1,0,0,'skeram SAY_AGGRO2'),
   (15263,-1531002,'Tremble! The end is upon you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8621,1,0,0,'skeram SAY_AGGRO3'),
   (15263,-1531003,'Let your death serve as an example!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8617,1,0,0,'skeram SAY_SLAY1'),
   (15263,-1531004,'Spineless wretches! You will drown in rivers of blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8619,1,0,0,'skeram SAY_SLAY2'),
   (15263,-1531005,'The screams of the dying will fill the air. A symphony of terror is about to begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8620,1,0,0,'skeram SAY_SLAY3'),
   (15263,-1531006,'Prepare for the return of the ancient ones!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8618,1,0,0,'skeram SAY_SPLIT'),
   (15263,-1531007,'You only delay... the inevetable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8622,1,0,0,'skeram SAY_DEATH'),
   (15516,-1531008,'You will be judged for defiling these sacred grounds! The laws of the Ancients will not be challenged! Trespassers will be annihilated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8646,1,0,0,'sartura SAY_AGGRO'),
   (15516,-1531009,'I sentence you to death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8647,1,0,0,'sartura SAY_SLAY'),
   (15516,-1531010,'I serve to the last!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8648,1,0,0,'sartura SAY_DEATH'),
   (15727,-1531011,'is weakened!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'cthun EMOTE_WEAKENED'),

-- -1 532 000 KARAZHAN
   (16151,-1532000,'Well done Midnight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9173,1,0,0,'attumen SAY_MIDNIGHT_KILL'),
   (16151,-1532001,'Cowards! Wretches!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9167,1,0,0,'attumen SAY_APPEAR1'),
   (16151,-1532002,'Who dares attack the steed of the Huntsman?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9298,1,0,0,'attumen SAY_APPEAR2'),
   (16151,-1532003,'Perhaps you would rather test yourselves against a more formidable opponent?!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9299,1,0,0,'attumen SAY_APPEAR3'),
   (16151,-1532004,'Come, Midnight, let''s disperse this petty rabble!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9168,1,0,0,'attumen SAY_MOUNT'),
   (15550,-1532005,'It was... inevitable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9169,1,0,0,'attumen SAY_KILL1'),
   (15550,-1532006,'Another trophy to add to my collection!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9300,1,0,0,'attumen SAY_KILL2'),
   (15550,-1532007,'Weapons are merely a convenience for a warrior of my skill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9166,1,0,0,'attumen SAY_DISARMED'),
   (15550,-1532008,'I always knew... someday I would become... the hunted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9165,1,0,0,'attumen SAY_DEATH'),
   (15550,-1532009,'Such easy sport.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9170,1,0,0,'attumen SAY_RANDOM1'),
   (15550,-1532010,'Amateurs! Do not think you can best me! I kill for a living.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9304,1,0,0,'attumen SAY_RANDOM2'),
   (15687,-1532011,'Hmm, unannounced visitors? Preparations must be made.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9211,1,0,0,'moroes SAY_AGGRO'),
   (15687,-1532012,'Now, where was I? Oh yes...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9215,1,0,0,'moroes SAY_SPECIAL_1'),
   (15687,-1532013,'You rang?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9316,1,0,0,'moroes SAY_SPECIAL_2'),
   (15687,-1532014,'One more for dinner this evening.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9214,1,0,0,'moroes SAY_KILL_1'),
   (15687,-1532015,'Time... Never enough time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9314,1,0,0,'moroes SAY_KILL_2'),
   (15687,-1532016,'I''ve gone and made a mess.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9315,1,0,0,'moroes SAY_KILL_3'),
   (15687,-1532017,'How terribly clumsy of me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9213,1,0,0,'moroes SAY_DEATH'),
   (16457,-1532018,'Your behavior will not be tolerated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9204,1,0,0,'maiden SAY_AGGRO'),
   (16457,-1532019,'Ah ah ah...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9207,1,0,0,'maiden SAY_SLAY1'),
   (16457,-1532020,'This is for the best.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9312,1,0,0,'maiden SAY_SLAY2'),
   (16457,-1532021,'Impure thoughts lead to profane actions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9311,1,0,0,'maiden SAY_SLAY3'),
   (16457,-1532022,'Cast out your corrupt thoughts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9313,1,0,0,'maiden SAY_REPENTANCE1'),
   (16457,-1532023,'Your impurity must be cleansed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9208,1,0,0,'maiden SAY_REPENTANCE2'),
   (16457,-1532024,'Death comes. Will your conscience be clear?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9206,1,0,0,'maiden SAY_DEATH'),
   (17535,-1532025,'Oh at last, at last. I can go home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9190,1,0,0,'dorothee SAY_DOROTHEE_DEATH'),
   (17535,-1532026,'Don''t let them hurt us, Tito! Oh, you won''t, will you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9191,1,0,0,'dorothee SAY_DOROTHEE_SUMMON'),
   (17535,-1532027,'Tito, oh Tito, no!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9192,1,0,0,'dorothee SAY_DOROTHEE_TITO_DEATH'),
   (17535,-1532028,'Oh dear, we simply must find a way home! The old wizard could be our only hope! Strawman, Roar, Tinhead, will you... wait! Oh golly, look! We have visitors!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9195,1,0,0,'dorothee SAY_DOROTHEE_AGGRO'),
   (17546,-1532029,'Wanna fight? Huh? Do ya? C''mon, I''ll fight you with both claws behind my back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9227,1,0,0,'roar SAY_ROAR_AGGRO'),
   (17546,-1532030,'You didn''t have to go and do that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9229,1,0,0,'roar SAY_ROAR_DEATH'),
   (17546,-1532031,'I think I''m going to go take fourty winks.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9230,1,0,0,'roar SAY_ROAR_SLAY'),
   (17543,-1532032,'Now what should I do with you? I simply can''t make up my mind.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9254,1,0,0,'strawman SAY_STRAWMAN_AGGRO'),
   (17543,-1532033,'Don''t let them make a mattress... out of me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9256,1,0,0,'strawman SAY_STRAWMAN_DEATH'),
   (17543,-1532034,'I guess I''m not a failure after all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9257,1,0,0,'strawman SAY_STRAWMAN_SLAY'),
   (17547,-1532035,'I could really use a heart. Say, can I have yours?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9268,1,0,0,'tinhead SAY_TINHEAD_AGGRO'),
   (17547,-1532036,'Back to being an old rustbucket.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9270,1,0,0,'tinhead SAY_TINHEAD_DEATH'),
   (17547,-1532037,'Guess I''m not so rusty, after all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9271,1,0,0,'tinhead SAY_TINHEAD_SLAY'),
   (17547,-1532038,'begins to rust.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'tinhead EMOTE_RUST'),
   (18168,-1532039,'Woe to each and every one of you my pretties! <cackles>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9179,1,0,0,'crone SAY_CRONE_AGGRO'),
   (18168,-1532040,'It will all be over soon! <cackles>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9307,1,0,0,'crone SAY_CRONE_AGGRO2'),
   (18168,-1532041,'How could you? What a cruel, cruel world!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9178,1,0,0,'crone SAY_CRONE_DEATH'),
   (18168,-1532042,'Fixed you, didn''t I? <cackles>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9180,1,0,0,'crone SAY_CRONE_SLAY'),
   (17521,-1532043,'All the better to own you with!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9276,1,0,0,'wolf SAY_WOLF_AGGRO'),
   (17521,-1532044,'Mmmm... delicious.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9277,1,0,0,'wolf SAY_WOLF_SLAY'),
   (17521,-1532045,'Run away little girl, run away!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9278,1,0,0,'wolf SAY_WOLF_HOOD'),
   (17534,-1532046,'What devil art thou, that dost torment me thus?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9196,1,0,0,'julianne SAY_JULIANNE_AGGRO'),
   (17534,-1532047,'Where is my lord? Where is my Romulo?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9199,1,0,0,'julianne SAY_JULIANNE_ENTER'),
   (17534,-1532048,'Romulo, I come! Oh... this do I drink to thee!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9198,1,0,0,'julianne SAY_JULIANNE_DEATH01'),
   (17534,-1532049,'Where is my Lord? Where is my Romulo? Ohh, happy dagger! This is thy sheath! There rust, and let me die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9310,1,0,0,'julianne SAY_JULIANNE_DEATH02'),
   (17534,-1532050,'Come, gentle night; and give me back my Romulo!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9200,1,0,0,'julianne SAY_JULIANNE_RESURRECT'),
   (17534,-1532051,'Parting is such sweet sorrow.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9201,1,0,0,'julianne SAY_JULIANNE_SLAY'),
   (17533,-1532052,'Wilt thou provoke me? Then have at thee, boy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9233,1,0,0,'romulo SAY_ROMULO_AGGRO'),
   (17533,-1532053,'Thou smilest... upon the stroke that... murders me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9235,1,0,0,'romulo SAY_ROMULO_DEATH'),
   (17533,-1532054,'This day''s black fate on more days doth depend. This but begins the woe. Others must end.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9236,1,0,0,'romulo SAY_ROMULO_ENTER'),
   (17533,-1532055,'Thou detestable maw, thou womb of death; I enforce thy rotten jaws to open!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9237,1,0,0,'romulo SAY_ROMULO_RESURRECT'),
   (17533,-1532056,'How well my comfort is revived by this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9238,1,0,0,'romulo SAY_ROMULO_SLAY'),
   (15691,-1532057,'The Menagerie is for guests only.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9183,1,0,0,'curator SAY_AGGRO'),
   (15691,-1532058,'Gallery rules will be strictly enforced.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9188,1,0,0,'curator SAY_SUMMON1'),
   (15691,-1532059,'This curator is equipped for gallery protection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9309,1,0,0,'curator SAY_SUMMON2'),
   (15691,-1532060,'Your request cannot be processed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9186,1,0,0,'curator SAY_EVOCATE'),
   (15691,-1532061,'Failure to comply will result in offensive action.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9185,1,0,0,'curator SAY_ENRAGE'),
   (15691,-1532062,'Do not touch the displays.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9187,1,0,0,'curator SAY_KILL1'),
   (15691,-1532063,'You are not a guest.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9308,1,0,0,'curator SAY_KILL2'),
   (15691,-1532064,'This Curator is no longer op... er... ation... al.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9184,1,0,0,'curator SAY_DEATH'),
   (15688,-1532065,'Your blood will anoint my circle.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9264,1,0,0,'terestian SAY_SLAY1'),
   (15688,-1532066,'The great one will be pleased.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9329,1,0,0,'terestian SAY_SLAY2'),
   (15688,-1532067,'My life, is yours. Oh great one.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9262,1,0,0,'terestian SAY_DEATH'),
   (15688,-1532068,'Ah, you''re just in time. The rituals are about to begin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9260,1,0,0,'terestian SAY_AGGRO'),
   (15688,-1532069,'Please, accept this humble offering, oh great one.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9263,1,0,0,'terestian SAY_SACRIFICE1'),
   (15688,-1532070,'Let the sacrifice serve his testament to my fealty.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9330,1,0,0,'terestian SAY_SACRIFICE2'),
   (15688,-1532071,'Come, you dwellers in the dark. Rally to my call!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9265,1,0,0,'terestian SAY_SUMMON1'),
   (15688,-1532072,'Gather, my pets. There is plenty for all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9331,1,0,0,'terestian SAY_SUMMON2'),
   (16524,-1532073,'Please, no more. My son... he''s gone mad!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9241,1,0,0,'aran SAY_AGGRO1'),
   (16524,-1532074,'I''ll not be tortured again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9323,1,0,0,'aran SAY_AGGRO2'),
   (16524,-1532075,'Who are you? What do you want? Stay away from me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9324,1,0,0,'aran SAY_AGGRO3'),
   (16524,-1532076,'I''ll show you this beaten dog still has some teeth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9245,1,0,0,'aran SAY_FLAMEWREATH1'),
   (16524,-1532077,'Burn you hellish fiends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9326,1,0,0,'aran SAY_FLAMEWREATH2'),
   (16524,-1532078,'I''ll freeze you all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9246,1,0,0,'aran SAY_BLIZZARD1'),
   (16524,-1532079,'Back to the cold dark with you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9327,1,0,0,'aran SAY_BLIZZARD2'),
   (16524,-1532080,'Yes, yes, my son is quite powerful... but I have powers of my own!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9242,1,0,0,'aran SAY_EXPLOSION1'),
   (16524,-1532081,'I am not some simple jester! I am Nielas Aran!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9325,1,0,0,'aran SAY_EXPLOSION2'),
   (16524,-1532082,'Surely you would not deny an old man a replenishing drink? No, no I thought not.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9248,1,0,0,'aran SAY_DRINK'),
   (16524,-1532083,'I''m not finished yet! No, I have a few more tricks up me sleeve.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9251,1,0,0,'aran SAY_ELEMENTALS'),
   (16524,-1532084,'I want this nightmare to be over!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9250,1,0,0,'aran SAY_KILL1'),
   (16524,-1532085,'Torment me no more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9328,1,0,0,'aran SAY_KILL2'),
   (16524,-1532086,'You''ve wasted enough of my time. Let these games be finished!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9247,1,0,0,'aran SAY_TIMEOVER'),
   (16524,-1532087,'At last... The nightmare is.. over...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9244,1,0,0,'aran SAY_DEATH'),
   (16524,-1532088,'Where did you get that?! Did HE send you?!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9249,1,0,0,'aran SAY_ATIESH'),
   (15689,-1532089,'cries out in withdrawal, opening gates to the warp.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'netherspite EMOTE_PHASE_PORTAL'),
   (15689,-1532090,'goes into a nether-fed rage!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'netherspite EMOTE_PHASE_BANISH'),
   (15690,-1532091,'Madness has brought you here to me. I shall be your undoing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9218,1,0,0,'malchezaar SAY_AGGRO'),
   (15690,-1532092,'Simple fools! Time is the fire in which you''ll burn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9220,1,0,0,'malchezaar SAY_AXE_TOSS1'),
   (15690,-1532093,'I see the subtlety of conception is beyond primitives such as you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9317,1,0,0,'malchezaar SAY_AXE_TOSS2'),
   (15690,-1532094,'Who knows what secrets hide in the dark.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9223,1,0,0,'malchezaar SAY_SPECIAL1'),
   (15690,-1532095,'The cerestial forces are mine to manipulate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9320,1,0,0,'malchezaar SAY_SPECIAL2'),
   (15690,-1532096,'How can you hope to withstand against such overwhelming power?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9321,1,0,0,'malchezaar SAY_SPECIAL3'),
   (15690,-1532097,'Surely you did not think you could win.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9222,1,0,0,'malchezaar SAY_SLAY1'),
   (15690,-1532098,'Your greed, your foolishness has brought you to this end.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9318,1,0,0,'malchezaar SAY_SLAY2'),
   (15690,-1532099,'You are, but a plaything, unfit even to amuse.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9319,1,0,0,'malchezaar SAY_SLAY3'),
   (15690,-1532100,'All realities, all dimensions are open to me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9224,1,0,0,'malchezaar SAY_SUMMON1'),
   (15690,-1532101,'You face not Malchezaar alone, but the legions I command!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9322,1,0,0,'malchezaar SAY_SUMMON2'),
   (15690,-1532102,'I refuse to concede defeat. I am a prince of the Eredar! I am...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9221,1,0,0,'malchezaar SAY_DEATH'),
   (16812,-1532103,'Welcome Ladies and Gentlemen, to this evening''s presentation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9174,1,0,0,'barnes OZ1'),
   (16812,-1532104,'Tonight we plumb the depths of the human soul as we join a lost, lonely girl trying desperately -- with the help of her loyal companions -- to find her way home!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9338,1,0,0,'barnes OZ2'),
   (16812,-1532105,'But she is pursued... by a wicked malevolent crone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9339,1,0,0,'barnes OZ3'),
   (16812,-1532106,'Will she survive? Will she prevail? Only time will tell. And now ... on with the show!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9340,1,0,0,'barnes OZ4'),
   (16812,-1532107,'Good evening, Ladies and Gentlemen! Welcome to this evening''s presentation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9175,1,0,0,'barnes HOOD1'),
   (16812,-1532108,'Tonight, things are not what they seem. For tonight, your eyes may not be trusted',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9335,1,0,0,'barnes HOOD2'),
   (16812,-1532109,'Take for instance, this quiet, elderly woman, waiting for a visit from her granddaughter. Surely there is nothing to fear from this sweet, grey-haired, old lady.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9336,1,0,0,'barnes HOOD3'),
   (16812,-1532110,'But don''t let me pull the wool over your eyes. See for yourself what lies beneath those covers! And now... on with the show!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9337,1,0,0,'barnes HOOD4'),
   (16812,-1532111,'Welcome, Ladies and Gentlemen, to this evening''s presentation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9176,1,0,0,'barnes RAJ1'),
   (16812,-1532112,'Tonight, we explore a tale of forbidden love!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9341,1,0,0,'barnes RAJ2'),
   (16812,-1532113,'But beware, for not all love stories end happily, as you may find out. Sometimes, love pricks like a thorn.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9342,1,0,0,'barnes RAJ3'),
   (16812,-1532114,'But don''t take it from me, see for yourself what tragedy lies ahead when the paths of star-crossed lovers meet. And now...on with the show!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9343,1,0,0,'barnes RAJ4'),

-- -1 533 000 NAXXRAMAS
   (15956,-1533000,'Ahh... welcome to my parlor.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8788,1,0,0,'anubrekhan SAY_GREET'),
   (15956,-1533001,'Just a little taste...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8785,1,0,0,'anubrekhan SAY_AGGRO1'),
   (15956,-1533002,'There is no way out.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8786,1,0,0,'anubrekhan SAY_AGGRO2'),
   (15956,-1533003,'Yes, Run! It makes the blood pump faster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8787,1,0,0,'anubrekhan SAY_AGGRO3'),
   (15956,-1533004,'I hear little hearts beating. Yesss... beating faster now. Soon the beating will stop.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8790,1,0,0,'anubrekhan SAY_TAUNT1'),
   (15956,-1533005,'Where to go? What to do? So many choices that all end in pain, end in death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8791,1,0,0,'anubrekhan SAY_TAUNT2'),
   (15956,-1533006,'Which one shall I eat first? So difficult to choose... the all smell so delicious.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8792,1,0,0,'anubrekhan SAY_TAUNT3'),
   (15956,-1533007,'Closer now... tasty morsels. I''ve been too long without food. Without blood to drink.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8793,1,0,0,'anubrekhan SAY_TAUNT4'),
   (15956,-1533008,'Shh... it will all be over soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8789,1,0,0,'anubrekhan SAY_SLAY'),
   (15953,-1533009,'Your old lives, your mortal desires, mean nothing. You are acolytes of the master now, and you will serve the cause without question! The greatest glory is to die in the master''s service!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8799,1,0,0,'faerlina SAY_GREET'),
   (15953,-1533010,'Slay them in the master''s name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8794,1,0,0,'faerlina SAY_AGGRO1'),
   (15953,-1533011,'You cannot hide from me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8795,1,0,0,'faerlina SAY_AGGRO2'),
   (15953,-1533012,'Kneel before me, worm!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8796,1,0,0,'faerlina SAY_AGGRO3'),
   (15953,-1533013,'Run while you still can!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8797,1,0,0,'faerlina SAY_AGGRO4'),
   (15953,-1533014,'You have failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8800,1,0,0,'faerlina SAY_SLAY1'),
   (15953,-1533015,'Pathetic wretch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8801,1,0,0,'faerlina SAY_SLAY2'),
   (15953,-1533016,'The master... will avenge me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8798,1,0,0,'faerlina SAY_DEATH'),
   (16028,-1533017,'Patchwerk want to play!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8909,1,0,0,'patchwerk SAY_AGGRO1'),
   (16028,-1533018,'Kel''Thuzad make Patchwerk his Avatar of War!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8910,1,0,0,'patchwerk SAY_AGGRO2'),
   (16028,-1533019,'No more play?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8912,1,0,0,'patchwerk SAY_SLAY'),
   (16028,-1533020,'What happened to... Patch...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8911,1,0,0,'patchwerk SAY_DEATH'),
   (16028,-1533021,'goes into a berserker rage!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'patchwerk EMOTE_BERSERK'),
   (16028,-1533022,'%s becomes enraged!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'patchwerk EMOTE_ENRAGE'),
   (0,-1533023,'Stalagg crush you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8864,1,0,0,'stalagg SAY_STAL_AGGRO'),
   (0,-1533024,'Stalagg kill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8866,1,0,0,'stalagg SAY_STAL_SLAY'),
   (0,-1533025,'Master save me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8865,1,0,0,'stalagg SAY_STAL_DEATH'),
   (0,-1533026,'Feed you to master!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8802,1,0,0,'feugen SAY_FEUG_AGGRO'),
   (0,-1533027,'Feugen make master happy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8804,1,0,0,'feugen SAY_FEUG_SLAY'),
   (0,-1533028,'No... more... Feugen...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8803,1,0,0,'feugen SAY_FEUG_DEATH'),
   (0,-1533029,'You are too late... I... must... OBEY!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8872,1,0,0,'thaddius SAY_GREET'),
   (15928,-1533030,'KILL!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8867,1,0,0,'thaddius SAY_AGGRO1'),
   (15928,-1533031,'EAT YOUR BONES!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8868,1,0,0,'thaddius SAY_AGGRO2'),
   (15928,-1533032,'BREAK YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8869,1,0,0,'thaddius SAY_AGGRO3'),
   (15928,-1533033,'You die now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8877,1,0,0,'thaddius SAY_SLAY'),
   (0,-1533034,'Now YOU feel pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8871,1,0,0,'thaddius SAY_ELECT'),
   (15928,-1533035,'Thank... you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8870,1,0,0,'thaddius SAY_DEATH'),
   (0,-1533036,'Pleeease!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8873,1,0,0,'thaddius SAY_SCREAM1'),
   (0,-1533037,'Stop, make it stop!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8874,1,0,0,'thaddius SAY_SCREAM2'),
   (0,-1533038,'Help me! Save me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8875,1,0,0,'thaddius SAY_SCREAM3'),
   (0,-1533039,'Please, nooo!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8876,1,0,0,'thaddius SAY_SCREAM4'),
   (16060,-1533040,'Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the harvester. Now there is only one way out - to walk the lonely path of the damned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8807,1,0,0,'gothik SAY_SPEECH'),
   (16060,-1533041,'Death is the only escape.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8806,1,0,0,'gothik SAY_KILL'),
   (16060,-1533042,'I... am... undone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8805,1,0,0,'gothik SAY_DEATH'),
   (16060,-1533043,'I have waited long enough! Now, you face the harvester of souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8808,1,0,0,'gothik SAY_TELEPORT'),
   (16063,-1533044,'Defend youself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8892,1,0,0,'blaumeux SAY_BLAU_AGGRO'),
   (16063,-1533045,'Come, Zeliek, do not drive them out. Not before we''ve had our fun.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8896,1,0,0,'blaumeux SAY_BLAU_TAUNT1'),
   (16063,-1533046,'I do hope they stay alive long enough for me to... introduce myself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8897,1,0,0,'blaumeux SAY_BLAU_TAUNT2'),
   (16063,-1533047,'The first kill goes to me! Anyone care to wager?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8898,1,0,0,'blaumeux SAY_BLAU_TAUNT3'),
   (16063,-1533048,'Your life is mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8895,1,0,0,'blaumeux SAY_BLAU_SPECIAL'),
   (16063,-1533049,'Who''s next?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8894,1,0,0,'blaumeux SAY_BLAU_SLAY'),
   (16063,-1533050,'Tou... che!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8893,1,0,0,'blaumeux SAY_BLAU_DEATH'),
   (16063,-1533051,'Come out and fight, ye wee ninny!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8899,1,0,0,'korthazz SAY_KORT_AGGRO'),
   (16063,-1533052,'To arms, ye roustabouts! We''ve got company!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8903,1,0,0,'korthazz SAY_KORT_TAUNT1'),
   (16063,-1533053,'I heard about enough of yer sniveling. Shut yer fly trap ''afore I shut it for ye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8904,1,0,0,'korthazz SAY_KORT_TAUNT2'),
   (16063,-1533054,'I''m gonna enjoy killin'' these slack-jawed daffodils!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8905,1,0,0,'korthazz SAY_KORT_TAUNT3'),
   (16063,-1533055,'I like my meat extra crispy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8902,1,0,0,'korthazz SAY_KORT_SPECIAl'),
   (16063,-1533056,'Next time, bring more friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8901,1,0,0,'korthazz SAY_KORT_SLAY'),
   (16063,-1533057,'What a bloody waste this is!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8900,1,0,0,'korthazz SAY_KORT_DEATH'),
   (16063,-1533058,'Flee, before it''s too late!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8913,1,0,0,'zeliek SAY_ZELI_AGGRO'),
   (16063,-1533059,'Invaders, cease this foolish venture at once! Turn away while you still can!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8917,1,0,0,'zeliek SAY_ZELI_TAUNT1'),
   (16063,-1533060,'Perhaps they will come to their senses, and run away as fast as they can!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8918,1,0,0,'zeliek SAY_ZELI_TAUNT2'),
   (16063,-1533061,'Do not continue! Turn back while there''s still time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8919,1,0,0,'zeliek SAY_ZELI_TAUNT3'),
   (16063,-1533062,'I- I have no choice but to obey!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8916,1,0,0,'zeliek SAY_ZELI_SPECIAL'),
   (16063,-1533063,'Forgive me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8915,1,0,0,'zeliek SAY_ZELI_SLAY'),
   (16063,-1533064,'It is... as it should be.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8914,1,0,0,'zeliek SAY_ZELI_DEATH'),
   (16063,-1533065,'You seek death?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14571,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO1'),
   (16063,-1533066,'None shall pass!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14572,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO2'),
   (16063,-1533067,'Be still!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14573,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO3'),
   (16063,-1533068,'You will find no peace in death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14574,1,0,0,'rivendare_naxx SAY_RIVE_SLAY1'),
   (16063,-1533069,'The master''s will is done.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14575,1,0,0,'rivendare_naxx SAY_RIVE_SLAY2'),
   (16063,-1533070,'Bow to the might of the scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14576,1,0,0,'rivendare_naxx SAY_RIVE_SPECIAL'),
   (16063,-1533071,'Enough prattling. Let them come! We shall grind their bones to dust.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14577,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT1'),
   (16063,-1533072,'Conserve your anger! Harness your rage! You will all have outlets for your frustration soon enough.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14578,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT2'),
   (16063,-1533073,'Life is meaningless. It is in death that we are truly tested.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14579,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT3'),
   (16063,-1533074,'Death... will not stop me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14580,1,0,0,'rivendare_naxx SAY_RIVE_DEATH'),
   (15954,-1533075,'Glory to the master!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8845,1,0,0,'noth SAY_AGGRO1'),
   (15954,-1533076,'Your life is forfeit!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8846,1,0,0,'noth SAY_AGGRO2'),
   (15954,-1533077,'Die, trespasser!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8847,1,0,0,'noth SAY_AGGRO3'),
   (15954,-1533078,'Rise, my soldiers! Rise and fight once more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8851,1,0,0,'noth SAY_SUMMON'),
   (15954,-1533079,'My task is done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8849,1,0,0,'noth SAY_SLAY1'),
   (15954,-1533080,'Breathe no more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8850,1,0,0,'noth SAY_SLAY2'),
   (15954,-1533081,'I will serve the master... in... death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8848,1,0,0,'noth SAY_DEATH'),
   (15989,-1533082,'takes in a deep breath...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'sapphiron EMOTE_BREATH'),
   (15989,-1533083,'%s enrages!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'sapphiron EMOTE_ENRAGE'),
   (0,-1533084,'Our preparations continue as planned, master.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14467,1,0,0,'kelthuzad SAY_SAPP_DIALOG1'),
   (0,-1533085,'It is good that you serve me so faithfully. Soon, all will serve the Lich King and in the end, you shall be rewarded...so long as you do not falter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8881,1,0,0,'kelthuzad SAY_SAPP_DIALOG2_LICH'),
   (0,-1533086,'I see no complications... Wait... What is this?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14468,1,0,0,'kelthuzad SAY_SAPP_DIALOG3'),
   (0,-1533087,'Your security measures have failed! See to this interruption immediately!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8882,1,0,0,'kelthuzad SAY_SAPP_DIALOG4_LICH'),
   (0,-1533088,'Yes, master!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14469,1,0,0,'kelthuzad SAY_SAPP_DIALOG5'),
   (0,-1533089,'No!!! A curse upon you, interlopers! The armies of the Lich King will hunt you down. You will not escape your fate...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14484,1,0,0,'kelthuzad SAY_CAT_DIED'),
   (0,-1533090,'Who dares violate the sanctity of my domain? Be warned, all who trespass here are doomed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14463,1,0,0,'kelthuzad SAY_TAUNT1'),
   (0,-1533091,'Fools, you think yourselves triumphant? You have only taken one step closer to the abyss! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14464,1,0,0,'kelthuzad SAY_TAUNT2'),
   (0,-1533092,'I grow tired of these games. Proceed, and I will banish your souls to oblivion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14465,1,0,0,'kelthuzad SAY_TAUNT3'),
   (0,-1533093,'You have no idea what horrors lie ahead. You have seen nothing! The frozen heart of Naxxramas awaits you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14466,1,0,0,'kelthuzad SAY_TAUNT4'),
   (15990,-1533094,'Pray for mercy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14475,1,0,0,'kelthuzad SAY_AGGRO1'),
   (15990,-1533095,'Scream your dying breath!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14476,1,0,0,'kelthuzad SAY_AGGRO2'),
   (15990,-1533096,'The end is upon you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14477,1,0,0,'kelthuzad SAY_AGGRO3'),
   (15990,-1533097,'The dark void awaits you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14478,1,0,0,'kelthuzad SAY_SLAY1'),
   (15990,-1533098,'<Kel''Thuzad cackles maniacally!>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14479,1,0,0,'kelthuzad SAY_SLAY2'),
   (15990,-1533099,'AAAAGHHH!... Do not rejoice... your victory is a hollow one... for I shall return with powers beyond your imagining!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14480,1,0,0,'kelthuzad SAY_DEATH'),
   (15990,-1533100,'Your soul, is bound to me now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14472,1,0,0,'kelthuzad SAY_CHAIN1'),
   (15990,-1533101,'There will be no escape!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14473,1,0,0,'kelthuzad SAY_CHAIN2'),
   (15990,-1533102,'I will freeze the blood in your veins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14474,1,0,0,'kelthuzad SAY_FROST_BLAST'),
   (15990,-1533103,'Master! I require aid! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14470,1,0,0,'kelthuzad SAY_REQUEST_AID'),
   (15990,-1533104,'Very well... warriors of the frozen wastes, rise up! I command you to fight, kill, and die for your master. Let none survive...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kelthuzad SAY_ANSWER_REQUEST'),
   (0,-1533105,'Minions, servants, soldiers of the cold dark, obey the call of Kel''Thuzad!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14471,1,0,0,'kelthuzad SAY_SUMMON_MINIONS'),
   (15990,-1533106,'Your petty magics are no challenge to the might of the Scourge! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14481,1,0,0,'kelthuzad SAY_SPECIAL1_MANA_DET'),
   (15990,-1533107,'Enough! I grow tired of these distractions! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14483,1,0,0,'kelthuzad SAY_SPECIAL3_MANA_DET'),
   (15990,-1533108,'Fools, you have spread your powers too thin. Be free, my minions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14482,1,0,0,'kelthuzad SAY_SPECIAL2_DISPELL'),
   (15936,-1533109,'You are mine now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8825,1,0,0,'heigan SAY_AGGRO1'),
   (15936,-1533110,'I see you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8826,1,0,0,'heigan SAY_AGGRO2'),
   (15936,-1533111,'You...are next!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8827,1,0,0,'heigan SAY_AGGRO3'),
   (15936,-1533112,'Close your eyes... sleep!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8829,1,0,0,'heigan SAY_SLAY'),
   (15936,-1533113,'The races of the world will perish. It is only a matter of time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8830,1,0,0,'heigan SAY_TAUNT1'),
   (15936,-1533114,'I see endless suffering, I see torment, I see rage. I see... everything!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8831,1,0,0,'heigan SAY_TAUNT2'),
   (15936,-1533115,'Soon... the world will tremble!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8832,1,0,0,'heigan SAY_TAUNT3'),
   (15936,-1533116,'The end is upon you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8833,1,0,0,'heigan SAY_TAUNT4'),
   (15936,-1533117,'Hungry worms will feast on your rotten flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8834,1,0,0,'heigan SAY_TAUNT5'),
   (15936,-1533118,'Noo... o...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8828,1,0,0,'heigan SAY_DEATH'),
    
-- -1 534 000 THE BATTLE OF MT. HYJAL
   (17772,-1534000,'I''m in jeopardy, help me if you can!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11007,1,0,0,'jaina hyjal ATTACKED 1'),
   (17772,-1534001,'They''ve broken through!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11049,1,0,0,'jaina hyjal ATTACKED 2'),
   (17772,-1534002,'Stay alert! Another wave approaches.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11008,1,0,0,'jaina hyjal INCOMING'),
   (17772,-1534003,'Don''t give up! We must prevail!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11006,1,0,0,'jaina hyjal BEGIN'),
   (17772,-1534004,'Hold them back as long as possible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11050,1,0,0,'jaina hyjal RALLY 1'),
   (17772,-1534005,'We must hold strong!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11051,1,0,0,'jaina hyjal RALLY 2'),
   (17772,-1534006,'We are lost. Fall back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11009,1,0,0,'jaina hyjal FAILURE'),
   (17772,-1534007,'We have won valuable time. Now we must pull back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11011,1,0,0,'jaina hyjal SUCCESS'),
   (17772,-1534008,'I did... my best.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11010,1,0,0,'jaina hyjal DEATH'),
   (17852,-1534009,'I will lie down for no one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11031,1,0,0,'thrall hyjal ATTACKED 1'),
   (17852,-1534010,'Bring the fight to me and pay with your lives!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11061,1,0,0,'thrall hyjal ATTACKED 2'),
   (17852,-1534011,'Make ready for another wave! LOK-TAR OGAR!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11032,1,0,0,'thrall hyjal INCOMING'),
   (17852,-1534012,'Hold them back! Do not falter!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11030,1,0,0,'thrall hyjal BEGIN'),
   (17852,-1534013,'Victory or death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11059,1,0,0,'thrall hyjal RALLY 1'),
   (17852,-1534014,'Do not give an inch of ground!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11060,1,0,0,'thrall hyjal RALLY 2'),
   (17852,-1534015,'It is over. Withdraw! We have failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11033,1,0,0,'thrall hyjal FAILURE'),
   (17852,-1534016,'We have played our part and done well. It is up to the others now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11035,1,0,0,'thrall hyjal SUCCESS'),
   (17852,-1534017,'Uraaa...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11034,1,0,0,'thrall hyjal DEATH'),
   (0,-1534018,'All of your efforts have been in vain, for the draining of the World Tree has already begun. Soon the heart of your world will beat no more.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10986,1,0,0,'archimonde SAY_PRE_EVENTS_COMPLETE'),
   (17968,-1534019,'Your resistance is insignificant.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10987,1,0,0,'archimonde SAY_AGGRO'),
   (17968,-1534020,'This world will burn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10990,1,0,0,'archimonde SAY_DOOMFIRE1'),
   (17968,-1534021,'Manach sheek-thrish!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11041,1,0,0,'archimonde SAY_DOOMFIRE2'),
   (17968,-1534022,'A-kreesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10989,1,0,0,'archimonde SAY_AIR_BURST1'),
   (17968,-1534023,'Away vermin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11043,1,0,0,'archimonde SAY_AIR_BURST2'),
   (17968,-1534024,'All creation will be devoured!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11044,1,0,0,'archimonde SAY_SLAY1'),
   (17968,-1534025,'Your soul will languish for eternity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10991,1,0,0,'archimonde SAY_SLAY2'),
   (17968,-1534026,'I am the coming of the end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11045,1,0,0,'archimonde SAY_SLAY3'),
   (17968,-1534027,'At last it is here. Mourn and lament the passing of all you have ever known and all that would have been! Akmin-kurai!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10993,1,0,0,'archimonde SAY_ENRAGE'),
   (17968,-1534028,'No, it cannot be! Nooo!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10992,1,0,0,'archimonde SAY_DEATH'),
   (17968,-1534029,'You are mine now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10988,1,0,0,'archimonde SAY_SOUL_CHARGE1'),
   (17968,-1534030,'Bow to my will.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11042,1,0,0,'archimonde SAY_SOUL_CHARGE2'),

-- -1 540 000 SHATTERED HALLS
   (16807,-1540000,'You wish to fight us all at once? This should be amusing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10262,1,0,0,'nethekurse SAY_INTRO'),
   (16807,-1540001,'You can have that one. I no longer need him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10263,1,0,0,'nethekurse PEON_ATTACK_1'),
   (16807,-1540002,'Yes, beat him mercilessly. His skull is a thick as an ogres.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10264,1,0,0,'nethekurse PEON_ATTACK_2'),
   (16807,-1540003,'Don''t waste your time on that one. He''s weak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10265,1,0,0,'nethekurse PEON_ATTACK_3'),
   (16807,-1540004,'You want him? Very well, take him!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10266,1,0,0,'nethekurse PEON_ATTACK_4'),
   (16807,-1540005,'One pitiful wretch down. Go on, take another one.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10267,1,0,0,'nethekurse PEON_DIE_1'),
   (16807,-1540006,'Ahh, what a waste... Next!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10268,1,0,0,'nethekurse PEON_DIE_2'),
   (16807,-1540007,'I was going to kill him anyway!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10269,1,0,0,'nethekurse PEON_DIE_3'),
   (16807,-1540008,'Thank you for saving me the trouble! Now it''s my turn to have some fun...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10270,1,0,0,'nethekurse PEON_DIE_4'),
   (16807,-1540009,'Beg for your pittyfull life!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10259,1,0,0,'nethekurse SAY_TAUNT_1'),
   (16807,-1540010,'Run covad, ruun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10260,1,0,0,'nethekurse SAY_TAUNT_2'),
   (16807,-1540011,'Your pain amuses me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10261,1,0,0,'nethekurse SAY_TAUNT_3'),
   (16807,-1540012,'I''m already bored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10271,1,0,0,'nethekurse SAY_AGGRO_1'),
   (16807,-1540013,'Come on! ... Show me a real fight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10272,1,0,0,'nethekurse SAY_AGGRO_2'),
   (16807,-1540014,'I had more fun torturing the peons.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10273,1,0,0,'nethekurse SAY_AGGRO_3'),
   (16807,-1540015,'You Loose.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10274,1,0,0,'nethekurse SAY_SLAY_1'),
   (16807,-1540016,'Ohh! Just die.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10275,1,0,0,'nethekurse SAY_SLAY_2'),
   (16807,-1540017,'What a ... a shame.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10276,1,0,0,'nethekurse SAY_DIE'),
   (16809,-1540018,'Smash!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10306,1,0,0,'omrogg GoCombat_1'),
   (16809,-1540019,'If you nice me let you live.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10308,1,0,0,'omrogg GoCombat_2'),
   (16809,-1540020,'Me hungry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10309,1,0,0,'omrogg GoCombat_3'),
   (16809,-1540021,'Why don''t you let me do the talking?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10317,1,0,0,'omrogg GoCombatDelay_1'),
   (16809,-1540022,'No, we will NOT let you live!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10318,1,0,0,'omrogg GoCombatDelay_2'),
   (16809,-1540023,'You always hungry. That why we so fat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10319,1,0,0,'omrogg GoCombatDelay_3'),
   (16809,-1540024,'You stay here. Me go kill someone else!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10303,1,0,0,'omrogg Threat_1'),
   (16809,-1540025,'What are you doing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10315,1,0,0,'omrogg Threat_2'),
   (16809,-1540026,'Me kill someone else...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10302,1,0,0,'omrogg Threat_3'),
   (16809,-1540027,'Me not like this one...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10300,1,0,0,'omrogg Threat_4'),
   (16809,-1540028,'That''s not funny!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10314,1,0,0,'omrogg ThreatDelay1_1'),
   (16809,-1540029,'Me get bored...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10305,1,0,0,'omrogg ThreatDelay1_2'),
   (16809,-1540030,'I''m not done yet, idiot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10313,1,0,0,'omrogg ThreatDelay1_3'),
   (16809,-1540031,'Hey you numbskull!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10312,1,0,0,'omrogg ThreatDelay1_4'),
   (16809,-1540032,'Ha ha ha.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10304,1,0,0,'omrogg ThreatDelay2_1'),
   (16809,-1540033,'Whhy! He almost dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10316,1,0,0,'omrogg ThreatDelay2_2'),
   (16809,-1540034,'H''ey...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10307,1,0,0,'omrogg ThreatDelay2_3'),
   (16809,-1540035,'We kill his friend!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10301,1,0,0,'omrogg ThreatDelay2_4'),
   (16809,-1540036,'This one die easy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10310,1,0,0,'omrogg Killing_1'),
   (16809,-1540037,'I''m tired. You kill next one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10320,1,0,0,'omrogg Killing_2'),
   (16809,-1540038,'That''s because I do all the hard work!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10321,1,0,0,'omrogg KillingDelay_1'),
   (16809,-1540039,'This all...your fault!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10311,1,0,0,'omrogg YELL_DIE_L'),
   (16809,-1540040,'I...hate...you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10322,1,0,0,'omrogg YELL_DIE_R'),
   (16809,-1540041,'%s enrages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'omrogg EMOTE_ENRAGE'),
   (16808,-1540042,'Ours is the true Horde! The only Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10323,1,0,0,'kargath SAY_AGGRO1'),
   (16808,-1540043,'I''ll carve the meat from your bones!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10324,1,0,0,'kargath SAY_AGGRO2'),
   (16808,-1540044,'I am called Bladefist for a reason, as you will see!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10325,1,0,0,'kargath SAY_AGGRO3'),
   (16808,-1540045,'For the real Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10326,1,0,0,'kargath SAY_SLAY1'),
   (16808,-1540046,'I am the only Warchief!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10327,1,0,0,'kargath SAY_SLAY2'),
   (16808,-1540047,'The true Horde... will.. prevail...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10328,1,0,0,'kargath SAY_DEATH'),

-- -1 542 000 BLOOD FURNACE
   (17377,-1542000,'Who dares interrupt... What is this? What have you done? You ruin everything!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10164,1,0,0,'kelidan SAY_WAKE'),
   (17377,-1542001,'You mustn''t let him loose!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10166,1,0,0,'kelidan SAY_ADD_AGGRO_1'),
   (17377,-1542002,'Ignorant whelps!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10167,1,0,0,'kelidan SAY_ADD_AGGRO_2'),
   (17377,-1542003,'You fools! He''ll kill us all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10168,1,0,0,'kelidan SAY_ADD_AGGRO_3'),
   (17377,-1542004,'Just as you deserve!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10169,1,0,0,'kelidan SAY_KILL_1'),
   (17377,-1542005,'Your friends will soon be joining you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10170,1,0,0,'kelidan SAY_KILL_2'),
   (17377,-1542006,'Closer... Come closer.. and burn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10165,1,0,0,'kelidan SAY_NOVA'),
   (17377,-1542007,'Good luck... you''ll need it..',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10171,1,0,0,'kelidan SAY_DIE'),
   (17380,-1542008,'Come intruders....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'broggok SAY_AGGRO'),
   (17381,-1542009,'My work must not be interrupted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10286,1,0,0,'the_maker SAY_AGGRO_1'),
   (17381,-1542010,'Perhaps I can find a use for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10287,1,0,0,'the_maker SAY_AGGRO_2'),
   (17381,-1542011,'Anger... Hate... These are tools I can use.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10288,1,0,0,'the_maker SAY_AGGRO_3'),
   (17381,-1542012,'Let''s see what I can make of you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10289,1,0,0,'the_maker SAY_KILL_1'),
   (17381,-1542013,'It is pointless to resist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10290,1,0,0,'the_maker SAY_KILL_2'),
   (17381,-1542014,'Stay away from... me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10291,1,0,0,'the_maker SAY_DIE'),

-- -1 543 000 HELLFIRE RAMPARTS
   (17306,-1543000,'Do you smell that? Fresh meat has somehow breached our citadel. Be wary of any intruders.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'gargolmar SAY_TAUNT'),
   (17306,-1543001,'Heal me! QUICKLY!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10329,1,0,0,'gargolmar SAY_HEAL'),
   (17306,-1543002,'Back off, pup!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10330,1,0,0,'gargolmar SAY_SURGE'),
   (17306,-1543003,'What have we here...?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10331,1,0,0,'gargolmar SAY_AGGRO_1'),
   (17306,-1543004,'Heh... this may hurt a little.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10332,1,0,0,'gargolmar SAY_AGGRO_2'),
   (17306,-1543005,'I''m gonna enjoy this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10333,1,0,0,'gargolmar SAY_AGGRO_3'),
   (17306,-1543006,'Say farewell!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10334,1,0,0,'gargolmar SAY_KILL_1'),
   (17306,-1543007,'Much too easy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10335,1,0,0,'gargolmar SAY_KILL_2'),
   (17306,-1543008,'Hahah.. <cough> ..argh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10336,1,0,0,'gargolmar SAY_DIE'),
   (17308,-1543009,'You dare stand against me?!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10280,1,0,0,'omor SAY_AGGRO_1'),
   (17308,-1543010,'I will not be defeated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10279,1,0,0,'omor SAY_AGGRO_2'),
   (17308,-1543011,'Your insolence will be your death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10281,1,0,0,'omor SAY_AGGRO_3'),
   (17308,-1543012,'Achor-she-ki! Feast my pet! Eat your fill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10277,1,0,0,'omor SAY_SUMMON'),
   (17308,-1543013,'A-Kreesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10278,1,0,0,'omor SAY_CURSE'),
   (17308,-1543014,'Die, weakling!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10282,1,0,0,'omor SAY_KILL_1'),
   (17308,-1543015,'It is... not over.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10284,1,0,0,'omor SAY_DIE'),
   (17308,-1543016,'I am victorious!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10283,1,0,0,'omor SAY_WIPE'),

   (17307,-1543017,'You have faced many challenges, pity they were all in vain. Soon your people will kneel to my lord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10292,1,0,0,'vazruden SAY_INTRO'),
   (17537,-1543018,'Is there no one left to test me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10293,1,0,0,'vazruden SAY_WIPE'),
   (17537,-1543019,'Your time is running out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10294,1,0,0,'vazruden SAY_AGGRO_1'),
   (17537,-1543020,'You are nothing, I answer a higher call!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10295,1,0,0,'vazruden SAY_AGGRO_2'),
   (17537,-1543021,'The Dark Lord laughs at you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10296,1,0,0,'vazruden SAY_AGGRO_3'),
   (17537,-1543022,'It is over. Finished!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10297,1,0,0,'vazruden SAY_KILL_1'),
   (17537,-1543023,'Your days are done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10298,1,0,0,'vazruden SAY_KILL_2'),
   (17537,-1543024,'My lord will be the end you all...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10299,1,0,0,'vazruden SAY_DIE'),
   (17537,-1543025,'descends from the sky',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'vazruden EMOTE'),

-- -1 544 000 MAGTHERIDON'S LAIR
   (17257,-1544000,'Wretched, meddling insects. Release me and perhaps I will grant you a merciful death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10247,1,0,0,'magtheridon SAY_TAUNT1'),
   (17257,-1544001,'Vermin! Leeches! Take my blood and choke on it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10248,1,0,0,'magtheridon SAY_TAUNT2'),
   (17257,-1544002,'Illidan is an arrogant fool. I will crush him and reclaim Outland as my own.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10249,1,0,0,'magtheridon SAY_TAUNT3'),
   (17257,-1544003,'Away, you mindless parasites. My blood is my own!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10250,1,0,0,'magtheridon SAY_TAUNT4'),
   (17257,-1544004,'How long do you believe your pathetic sorcery can hold me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10251,1,0,0,'magtheridon SAY_TAUNT5'),
   (17257,-1544005,'My blood will be the end of you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10252,1,0,0,'magtheridon SAY_TAUNT6'),
   (17257,-1544006,'I...am...UNLEASHED!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10253,1,0,0,'magtheridon SAY_FREED'),
   (17257,-1544007,'Thank you for releasing me. Now...die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10254,1,0,0,'magtheridon SAY_AGGRO'),
   (17257,-1544008,'Not again...NOT AGAIN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10256,1,0,0,'magtheridon SAY_BANISH'),
   (17257,-1544009,'I will not be taken so easily. Let the walls of this prison tremble...and FALL!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10257,1,0,0,'magtheridon SAY_CHAMBER_DESTROY'),
   (17257,-1544010,'Did you think me weak? Soft? Who is the weak one now?!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10255,1,0,0,'magtheridon SAY_PLAYER_KILLED'),
   (17257,-1544011,'The Legion...will consume you...all...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10258,1,0,0,'magtheridon SAY_DEATH'),
   (17257,-1544012,'%s becomes enraged!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'magtheridon EMOTE_BERSERK'),
   (17257,-1544013,'begins to cast Blast Nova!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'magtheridon EMOTE_BLASTNOVA'),
   (17257,-1544014,'bonds begin to weaken!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'magtheridon EMOTE_BEGIN'),
   (0,-1544015,'breaks free!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'magtheridon EMOTE_FREED'),

-- -1 545 000 THE STEAMVAULT
   (17797,-1545000,'Surge forth my pets!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10360,1,0,0,'thespia SAY_SUMMON'),
   (17797,-1545001,'The depths will consume you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10361,1,0,0,'thespia SAY_AGGRO_1'),
   (17797,-1545002,'Meet your doom, surface dwellers!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10362,1,0,0,'thespia SAY_AGGRO_2'),
   (17797,-1545003,'You will drown in blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10363,1,0,0,'thespia SAY_AGGRO_3'),
   (17797,-1545004,'To the depths of oblivion with you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10364,1,0,0,'thespia SAY_SLAY_1'),
   (17797,-1545005,'For my lady and master!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10365,1,0,0,'thespia SAY_SLAY_2'),
   (17797,-1545006,'Our matron will be.. the end of.. you..',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10366,1,0,0,'thespia SAY_DEAD'),
   (17796,-1545007,'I''m bringin'' the pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10367,1,0,0,'mekgineer SAY_MECHANICS'),
   (17796,-1545008,'You''re in for a world of hurt!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10368,1,0,0,'mekgineer SAY_AGGRO_1'),
   (17796,-1545009,'Eat hot metal, scumbag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10369,1,0,0,'mekgineer SAY_AGGRO_2'),
   (17796,-1545010,'I''ll come over there!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10370,1,0,0,'mekgineer SAY_AGGRO_3'),
   (17796,-1545011,'I''m bringin'' the pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10371,1,0,0,'mekgineer SAY_AGGRO_4'),
   (17796,-1545012,'You just got served, punk!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10372,1,0,0,'mekgineer SOUND_SLAY_1'),
   (17796,-1545013,'I own you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10373,1,0,0,'mekgineer SOUND_SLAY_2'),
   (17796,-1545014,'Have fun dyin'', cupcake!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10374,1,0,0,'mekgineer SOUND_SLAY_3'),
   (17796,-1545015,'Mommy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10375,1,0,0,'mekgineer SAY_DEATH'),
   (17798,-1545016,'You deem yourselves worthy simply because you bested my guards? Our work here will not be compromised!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10390,1,0,0,'kalithresh SAY_INTRO'),
   (17798,-1545017,'This is not nearly over...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10391,1,0,0,'kalithresh SAY_REGEN'),
   (17798,-1545018,'Your head will roll!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10392,1,0,0,'kalithresh SAY_AGGRO1'),
   (17798,-1545019,'I despise all of your kind!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10393,1,0,0,'kalithresh SAY_AGGRO2'),
   (17798,-1545020,'Ba''ahntha sol''dorei!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10394,1,0,0,'kalithresh SAY_AGGRO3'),
   (17798,-1545021,'Scram, surface filth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10395,1,0,0,'kalithresh SAY_SLAY1'),
   (17798,-1545022,'Ah ha ha ha ha ha ha!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10396,1,0,0,'kalithresh SAY_SLAY2'),
   (17798,-1545023,'For her Excellency... for... Vashj!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10397,1,0,0,'kalithresh SAY_DEATH'),

-- -1 546 000 THE UNDERBOG

-- -1 547 000 THE SLAVE PENS

-- -1 548 000 SERPENTSHRINE CAVERN
   (21216,-1548000,'I cannot allow you to interfere!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11289,1,0,0,'hydross SAY_AGGRO'),
   (21216,-1548001,'Better, much better.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11290,1,0,0,'hydross SAY_SWITCH_TO_CLEAN'),
   (21216,-1548002,'They have forced me to this...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11291,1,0,0,'hydross SAY_CLEAN_SLAY1'),
   (21216,-1548003,'I have no choice.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11292,1,0,0,'hydross SAY_CLEAN_SLAY2'),
   (21216,-1548004,'I am... released...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11293,1,0,0,'hydross SAY_CLEAN_DEATH'),
   (21216,-1548005,'Aaghh, the poison...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11297,1,0,0,'hydross SAY_SWITCH_TO_CORRUPT'),
   (21216,-1548006,'I will purge you from this place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11298,1,0,0,'hydross SAY_CORRUPT_SLAY1'),
   (21216,-1548007,'You are no better than they!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11299,1,0,0,'hydross SAY_CORRUPT_SLAY2'),
   (21216,-1548008,'You are the disease, not I',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11300,1,0,0,'hydross SAY_CORRUPT_DEATH'),
   (21215,-1548009,'Finally, my banishment ends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11312,1,0,0,'leotheras SAY_AGGRO'),
   (21215,-1548010,'Be gone, trifling elf.  I am in control now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11304,1,0,0,'leotheras SAY_SWITCH_TO_DEMON'),
   (21215,-1548011,'We all have our demons...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11305,1,0,0,'leotheras SAY_INNER_DEMONS'),
   (21215,-1548012,'I have no equal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11306,1,0,0,'leotheras SAY_DEMON_SLAY1'),
   (21215,-1548013,'Perish, mortal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11307,1,0,0,'leotheras SAY_DEMON_SLAY2'),
   (21215,-1548014,'Yes, YES! Ahahah!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11308,1,0,0,'leotheras SAY_DEMON_SLAY3'),
   (21215,-1548015,'Kill! KILL!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11314,1,0,0,'leotheras SAY_NIGHTELF_SLAY1'),
   (21215,-1548016,'That''s right! Yes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11315,1,0,0,'leotheras SAY_NIGHTELF_SLAY2'),
   (21215,-1548017,'Who''s the master now?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11316,1,0,0,'leotheras SAY_NIGHTELF_SLAY3'),
   (21215,-1548018,'No... no! What have you done? I am the master! Do you hear me? I am... aaggh! Can''t... contain him...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11313,1,0,0,'leotheras SAY_FINAL_FORM'),
   (21215,-1548019,'At last I am liberated. It has been too long since I have tasted true freedom!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11309,1,0,0,'leotheras SAY_FREE'),
   (21215,-1548020,'You cannot kill me! Fools, I''ll be back! I''ll... aarghh...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11317,1,0,0,'leotheras SAY_DEATH'),
   (21214,-1548021,'Guards, attention! We have visitors...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11277,1,0,0,'karathress SAY_AGGRO'),
   (21214,-1548022,'Your overconfidence will be your undoing! Guards, lend me your strength!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11278,1,0,0,'karathress SAY_GAIN_BLESSING'),
   (21214,-1548023,'Go on, kill them! I''ll be the better for it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11279,1,0,0,'karathress SAY_GAIN_ABILITY1'),
   (21214,-1548024,'I am more powerful than ever!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11280,1,0,0,'karathress SAY_GAIN_ABILITY2'),
   (21214,-1548025,'More knowledge, more power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11281,1,0,0,'karathress SAY_GAIN_ABILITY3'),
   (21214,-1548026,'Land-dwelling scum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11282,1,0,0,'karathress SAY_SLAY1'),
   (21214,-1548027,'Alana be''lendor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11283,1,0,0,'karathress SAY_SLAY2'),
   (21214,-1548028,'I am rid of you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11284,1,0,0,'karathress SAY_SLAY3'),
   (21214,-1548029,'Her ... excellency ... awaits!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11285,1,0,0,'karathress SAY_DEATH'),
   (21213,-1548030,'Flood of the deep, take you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11321,1,0,0,'morogrim SAY_AGGRO'),
   (21213,-1548031,'By the Tides, kill them at once!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11322,1,0,0,'morogrim SAY_SUMMON1'),
   (21213,-1548032,'Destroy them my subjects!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11323,1,0,0,'morogrim SAY_SUMMON2'),
   (21213,-1548033,'There is nowhere to hide!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11324,1,0,0,'morogrim SAY_SUMMON_BUBL1'),
   (21213,-1548034,'Soon it will be finished!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11325,1,0,0,'morogrim SAY_SUMMON_BUBL2'),
   (21213,-1548035,'It is done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11326,1,0,0,'morogrim SAY_SLAY1'),
   (21213,-1548036,'Strugging only makes it worse.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11327,1,0,0,'morogrim SAY_SLAY2'),
   (21213,-1548037,'Only the strong survive.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11328,1,0,0,'morogrim SAY_SLAY3'),
   (21213,-1548038,'Great... currents of... Ageon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11329,1,0,0,'morogrim SAY_DEATH'),
   (21213,-1548039,'sends his enemies to their watery graves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'morogrim EMOTE_WATERY_GRAVE'),
   (21213,-1548040,'The violent earthquake has alerted nearby murlocs!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'morogrim EMOTE_EARTHQUAKE'),
   (21213,-1548041,'summons Watery Globules!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'morogrim EMOTE_WATERY_GLOBULES'),
   (21212,-1548042,'Water is life. It has become a rare commodity here in Outland. A commodity that we alone shall control. We are the Highborne, and the time has come at last for us to retake our rightful place in the world!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11531,1,0,0,'vashj SAY_INTRO'),
   (21212,-1548043,'I''ll split you from stem to stern!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11532,1,0,0,'vashj SAY_AGGRO1'),
   (21212,-1548044,'Victory to Lord Illidan!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11533,1,0,0,'vashj SAY_AGGRO2'),
   (21212,-1548045,'I spit on you, surface filth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11534,1,0,0,'vashj SAY_AGGRO3'),
   (21212,-1548046,'Death to the outsiders!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11535,1,0,0,'vashj SAY_AGGRO4'),
   (21212,-1548047,'I did not wish to lower myself by engaging your kind, but you leave me little choice!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11538,1,0,0,'vashj SAY_PHASE1'),
   (21212,-1548048,'The time is now! Leave none standing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11539,1,0,0,'vashj SAY_PHASE2'),
   (21212,-1548049,'You may want to take cover.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11540,1,0,0,'vashj SAY_PHASE3'),
   (21212,-1548050,'Straight to the heart!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11536,1,0,0,'vashj SAY_BOWSHOT1'),
   (21212,-1548051,'Seek your mark!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11537,1,0,0,'vashj SAY_BOWSHOT2'),
   (21212,-1548052,'Your time ends now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11541,1,0,0,'vashj SAY_SLAY1'),
   (21212,-1548053,'You have failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11542,1,0,0,'vashj SAY_SLAY2'),
   (21212,-1548054,'Be''lamere an''delay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11543,1,0,0,'vashj SAY_SLAY3'),
   (21212,-1548055,'Lord Illidan, I... I am... sorry.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11544,1,0,0,'vashj SAY_DEATH'),

-- -1 550 000 THE EYE
   (19516,-1550000,'Alert, you are marked for extermination!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11213,1,0,0,'voidreaver SAY_AGGRO'),
   (19516,-1550001,'Extermination, successful.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11215,1,0,0,'voidreaver SAY_SLAY1'),
   (19516,-1550002,'Imbecile life form, no longer functional.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11216,1,0,0,'voidreaver SAY_SLAY2'),
   (19516,-1550003,'Threat neutralized.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11217,1,0,0,'voidreaver SAY_SLAY3'),
   (19516,-1550004,'Systems... shutting... down...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11214,1,0,0,'voidreaver SAY_DEATH'),
   (19516,-1550005,'Alternative measure commencing...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11218,1,0,0,'voidreaver SAY_POUNDING1'),
   (19516,-1550006,'Calculating force parameters...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11219,1,0,0,'voidreaver SAY_POUNDING2'),
   (18805,-1550007,'Tal anu''men no Sin''dorei!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11134,1,0,0,'solarian SAY_AGGRO'),
   (18805,-1550008,'Ha ha ha! You are hopelessly outmatched!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11139,1,0,0,'solarian SAY_SUMMON1'),
   (18805,-1550009,'I will crush your delusions of grandeur!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11140,1,0,0,'solarian SAY_SUMMON2'),
   (18805,-1550010,'Your soul belongs to the Abyss!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11136,1,0,0,'solarian SAY_KILL1'),
   (18805,-1550011,'By the blood of the Highborne!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11137,1,0,0,'solarian SAY_KILL2'),
   (18805,-1550012,'For the Sunwell!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11138,1,0,0,'solarian SAY_KILL3'),
   (18805,-1550013,'The warmth of the sun... awaits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11135,1,0,0,'solarian SAY_DEATH'),
   (18805,-1550014,'Enough of this! Now I call upon the fury of the cosmos itself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'solarian SAY_VOIDA'),
   (18805,-1550015,'I become ONE... with the VOID!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'solarian SAY_VOIDB'),
   (19622,-1550016,'Energy. Power. My people are addicted to it... a dependence made manifest after the Sunwell was destroyed. Welcome... to the future. A pity you are too late to stop it. No one can stop me now! Selama ashal''anore!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11256,1,0,0,'kaelthas SAY_INTRO'),
   (19622,-1550017,'Capernian will see to it that your stay here is a short one.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11257,1,0,0,'kaelthas SAY_INTRO_CAPERNIAN'),
   (19622,-1550018,'Well done, you have proven worthy to test your skills against my master engineer, Telonicus.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11258,1,0,0,'kaelthas SAY_INTRO_TELONICUS'),
   (19622,-1550019,'Let us see how your nerves hold up against the Darkener, Thaladred.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11259,1,0,0,'kaelthas SAY_INTRO_THALADRED'),
   (19622,-1550020,'You have persevered against some of my best advisors... but none can withstand the might of the Blood Hammer. Behold, Lord Sanguinar!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11260,1,0,0,'kaelthas SAY_INTRO_SANGUINAR'),
   (19622,-1550021,'As you see, I have many weapons in my arsenal...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11261,1,0,0,'kaelthas SAY_PHASE2_WEAPON'),
   (19622,-1550022,'Perhaps I underestimated you. It would be unfair to make you fight all four advisors at once, but... fair treatment was never shown to my people. I''m just returning the favor.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11262,1,0,0,'kaelthas SAY_PHASE3_ADVANCE'),
   (19622,-1550023,'Alas, sometimes one must take matters into one''s own hands. Balamore shanal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11263,1,0,0,'kaelthas SAY_PHASE4_INTRO2'),
   (19622,-1550024,'I have not come this far to be stopped! The future I have planned will not be jeopardized! Now you will taste true power!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11273,1,0,0,'kaelthas SAY_PHASE5_NUTS'),
   (19622,-1550025,'You will not prevail.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11270,1,0,0,'kaelthas SAY_SLAY1'),
   (19622,-1550026,'You gambled...and lost.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11271,1,0,0,'kaelthas SAY_SLAY2'),
   (19622,-1550027,'This was Child''s play.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11272,1,0,0,'kaelthas SAY_SLAY3'),
   (19622,-1550028,'Obey me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11268,1,0,0,'kaelthas SAY_MINDCONTROL1'),
   (19622,-1550029,'Bow to my will.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11269,1,0,0,'kaelthas SAY_MINDCONTROL2'),
   (19622,-1550030,'Let us see how you fare when your world is turned upside down.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11264,1,0,0,'kaelthas SAY_GRAVITYLAPSE1'),
   (19622,-1550031,'Having trouble staying grounded?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11265,1,0,0,'kaelthas SAY_GRAVITYLAPSE2'),
   (19622,-1550032,'Anara''nel belore!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11267,1,0,0,'kaelthas SAY_SUMMON_PHOENIX1'),
   (19622,-1550033,'By the power of the sun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11266,1,0,0,'kaelthas SAY_SUMMON_PHOENIX2'),
   (19622,-1550034,'For...Quel...thalas!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11274,1,0,0,'kaelthas SAY_DEATH'),
   (20064,-1550035,'Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11203,1,0,0,'thaladred SAY_THALADRED_AGGRO'),
   (20064,-1550036,'Forgive me, my prince! I have... failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11204,1,0,0,'thaladred SAY_THALADRED_DEATH'),
   (20064,-1550037,'sets his gaze on $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'thaladred EMOTE_THALADRED_GAZE'),
   (20060,-1550038,'Blood for blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11152,1,0,0,'sanguinar SAY_SANGUINAR_AGGRO'),
   (20060,-1550039,'NO! I ...will... not...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11153,1,0,0,'sanguinar SAY_SANGUINAR_DEATH'),
   (20062,-1550040,'The sin''dore reign supreme!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11117,1,0,0,'capernian SAY_CAPERNIAN_AGGRO'),
   (20062,-1550041,'This is not over!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11118,1,0,0,'capernian SAY_CAPERNIAN_DEATH'),
   (20063,-1550042,'Anar''alah belore!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11157,1,0,0,'telonicus SAY_TELONICUS_AGGRO'),
   (20063,-1550043,'More perils... await',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11158,1,0,0,'telonicus SAY_TELONICUS_DEATH'),

-- -1 552 000 THE ARCATRAZ
   (20912,-1552000,'It is a small matter to control the mind of the weak... for I bear allegiance to powers untouched by time, unmoved by fate. No force on this world or beyond harbors the strength to bend our knee... not even the mighty Legion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11122,1,0,0,'skyriss SAY_INTRO'),
   (20912,-1552001,'Bear witness to the agent of your demise!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11123,1,0,0,'skyriss SAY_AGGRO'),
   (20912,-1552002,'Your fate is written!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11124,1,0,0,'skyriss SAY_KILL_1'),
   (20912,-1552003,'The chaos I have sown here is but a taste...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11125,1,0,0,'skyriss SAY_KILL_2'),
   (20912,-1552004,'You will do my bidding, weakling.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11127,1,0,0,'skyriss SAY_MIND_1'),
   (20912,-1552005,'Your will is no longer your own.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11128,1,0,0,'skyriss SAY_MIND_2'),
   (20912,-1552006,'Flee in terror!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11129,1,0,0,'skyriss SAY_FEAR_1'),
   (20912,-1552007,'I will show you horrors undreamed of!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11130,1,0,0,'skyriss SAY_FEAR_2'),
   (20912,-1552008,'We span the universe, as countless as the stars!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11131,1,0,0,'skyriss SAY_IMAGE'),
   (20912,-1552009,'I am merely one of... infinite multitudes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11126,1,0,0,'skyriss SAY_DEATH'),
   (20977,-1552010,'Where in Bonzo''s brass buttons am I? And who are-- yaaghh, that''s one mother of a headache!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11171,1,0,0,'millhouse SAY_INTRO_1'),
   (20977,-1552011,'"Lowly"? I don''t care who you are friend, no one refers to the mighty Millhouse Manastorm as "Lowly"! I have no idea what goes on here, but I will gladly join your fight against this impudent imbecile! Prepare to defend yourself, cretin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11172,1,0,0,'millhouse SAY_INTRO_2'),
   (20977,-1552012,'I just need to get some things ready first. You guys go ahead and get started. I need to summon up some water...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11173,1,0,0,'millhouse SAY_WATER'),
   (20977,-1552013,'Fantastic! Next, some protective spells. Yes! Now we''re cookin''',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11174,1,0,0,'millhouse SAY_BUFFS'),
   (20977,-1552014,'And of course i''ll need some mana. You guys are gonna love this, just wait.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11175,1,0,0,'millhouse SAY_DRINK'),
   (20977,-1552015,'Aaalllriiiight!! Who ordered up an extra large can of whoop-ass?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11176,1,0,0,'millhouse SAY_READY'),
   (20977,-1552016,'I didn''t even break a sweat on that one.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11177,1,0,0,'millhouse SAY_KILL_1'),
   (20977,-1552017,'You guys, feel free to jump in anytime.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11178,1,0,0,'millhouse SAY_KILL_2'),
   (20977,-1552018,'I''m gonna light you up, sweet cheeks!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11179,1,0,0,'millhouse SAY_PYRO'),
   (20977,-1552019,'Ice, ice, baby!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11180,1,0,0,'millhouse SAY_ICEBLOCK'),
   (20977,-1552020,'Heal me! Oh, for the love of all that is holy, HEAL me! I''m dying!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11181,1,0,0,'millhouse SAY_LOWHP'),
   (20977,-1552021,'You''ll be hearing from my lawyer...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11182,1,0,0,'millhouse SAY_DEATH'),
   (20977,-1552022,'Who''s bad? Who''s bad? That''s right: we bad!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11183,1,0,0,'millhouse SAY_COMPLETE'),
   (20904,-1552023,'I knew the prince would be angry but, I... I have not been myself. I had to let them out! The great one speaks to me, you see. Wait--outsiders. Kael''thas did not send you! Good... I''ll just tell the prince you released the prisoners!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11222,1,0,0,'mellichar YELL_INTRO1'),
   (20904,-1552024,'The naaru kept some of the most dangerous beings in existence here in these cells. Let me introduce you to another...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11223,1,0,0,'mellichar YELL_INTRO2'),
   (20904,-1552025,'Yes, yes... another! Your will is mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11224,1,0,0,'mellichar YELL_RELEASE1'),
   (20904,-1552026,'Behold another terrifying creature of incomprehensible power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11225,1,0,0,'mellichar YELL_RELEASE2A'),
   (20904,-1552027,'What is this? A lowly gnome? I will do better, O''great one.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11226,1,0,0,'mellichar YELL_RELEASE2B'),
   (20904,-1552028,'Anarchy! Bedlam! Oh, you are so wise! Yes, I see it now, of course!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11227,1,0,0,'mellichar YELL_RELEASE3'),
   (20904,-1552029,'One final cell remains. Yes, O''great one, right away!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11228,1,0,0,'mellichar YELL_RELEASE4'),
   (20904,-1552030,'Welcome, O''great one. I am your humble servant.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11229,1,0,0,'mellichar YELL_WELCOME'),

-- -1 553 000 THE BOTANICA
   (17975,-1553000,'What are you doing? These specimens are very delicate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11144,1,0,0,'freywinn SAY_AGGRO'),
   (17975,-1553001,'Your life cycle is now concluded!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11145,1,0,0,'freywinn SAY_KILL_1'),
   (17975,-1553002,'You will feed the worms.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11146,1,0,0,'freywinn SAY_KILL_2'),
   (17975,-1553003,'Endorel aluminor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11147,1,0,0,'freywinn SAY_TREE_1'),
   (17975,-1553004,'Nature bends to my will!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11148,1,0,0,'freywinn SAY_TREE_2'),
   (17975,-1553005,'The specimens...must be preserved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11149,1,0,0,'freywinn SAY_DEATH'),
   (17980,-1553006,'emits a strange noise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'laj EMOTE_SUMMON'),
   (17977,-1553007,'Who disturbs this sanctuary?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11230,1,0,0,'warp SAY_AGGRO'),
   (17977,-1553008,'You must die! But wait: this does not-- No, no... you must die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11231,1,0,0,'warp SAY_SLAY_1'),
   (17977,-1553009,'What am I doing? Why do I...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11232,1,0,0,'warp SAY_SLAY_2'),
   (17977,-1553010,'Children, come to me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11233,1,0,0,'warp SAY_SUMMON_1'),
   (17977,-1553011,'Maybe this is not-- No, we fight! Come to my aid.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11234,1,0,0,'warp SAY_SUMMON_2'),
   (17977,-1553012,'So... confused. Do not... belong here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11235,1,0,0,'warp SAY_DEATH'),

-- -1 554 000 THE MECHANAR
   (0,-1554000,'I predict a painful death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11101,1,0,0,'gyro SAY_AGGRO'),
   (0,-1554001,'Measure twice; cut once!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11104,1,0,0,'gyro SAY_SAW_ATTACK1'),
   (0,-1554002,'If my division is correct, you should be quite dead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11105,1,0,0,'gyro SAY_SAW_ATTACK2'),
   (0,-1554003,'Your strategy was flawed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11102,1,0,0,'gyro SAY_SLAY1'),
   (0,-1554004,'Yes, the only logical outcome.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11103,1,0,0,'gyro SAY_SLAY2'),
   (0,-1554005,'An unforseen... contingency',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11106,1,0,0,'gyro SAY_DEATH'),
   (19710,-1554006,'You have approximately five seconds to live.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11109,1,0,0,'ironhand SAY_AGGRO_1'),
   (19710,-1554007,'With the precise angle and velocity...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11112,1,0,0,'ironhand SAY_HAMMER_1'),
   (19710,-1554008,'Low tech yet quiet effective!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11113,1,0,0,'ironhand SAY_HAMMER_2'),
   (19710,-1554009,'A foregone conclusion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11110,1,0,0,'ironhand SAY_SLAY_1'),
   (19710,-1554010,'The processing will continue a schedule!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11111,1,0,0,'ironhand SAY_SLAY_2'),
   (19710,-1554011,'My calculations did not...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11114,1,0,0,'ironhand SAY_DEATH_1'),
   (19710,-1554012,'raises his hammer menacingly...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'ironhand EMOTE_HAMMER'),
   (19221,-1554013,'Don''t value your life very much, do you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11186,1,0,0,'sepethrea SAY_AGGRO'),
   (19221,-1554014,'I am not alone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11191,1,0,0,'sepethrea SAY_SUMMON'),
   (19221,-1554015,'Think you can take the heat?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11189,1,0,0,'sepethrea SAY_DRAGONS_BREATH_1'),
   (19221,-1554016,'Anar''endal dracon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11190,1,0,0,'sepethrea SAY_DRAGONS_BREATH_2'),
   (19221,-1554017,'And don''t come back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11187,1,0,0,'sepethrea SAY_SLAY1'),
   (19221,-1554018,'En''dala finel el''dal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11188,1,0,0,'sepethrea SAY_SLAY2'),
   (19221,-1554019,'Anu... bala belore...alon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11192,1,0,0,'sepethrea SAY_DEATH'),
   (19220,-1554020,'We are on a strict timetable. You will not interfere!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11193,1,0,0,'pathaleon SAY_AGGRO'),
   (19220,-1554021,'I''m looking for a team player...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11197,1,0,0,'pathaleon SAY_DOMINATION_1'),
   (19220,-1554022,'You work for me now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11198,1,0,0,'pathaleon SAY_DOMINATION_2'),
   (19220,-1554023,'Time to supplement my work force.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11196,1,0,0,'pathaleon SAY_SUMMON'),
   (19220,-1554024,'I prefeer to be hands-on...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11199,1,0,0,'pathaleon SAY_ENRAGE'),
   (19220,-1554025,'A minor inconvenience.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11194,1,0,0,'pathaleon SAY_SLAY_1'),
   (19220,-1554026,'Looks like you lose.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11195,1,0,0,'pathaleon SAY_SLAY_2'),
   (19220,-1554027,'The project will... continue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11200,1,0,0,'pathaleon SAY_DEATH'),

-- -1 555 000 SHADOW LABYRINTH
   (18731,-1555000,'Infidels have invaded the sanctuary! Sniveling pests...You have yet to learn the true meaning of agony!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10473,1,0,0,'hellmaw SAY_INTRO'),
   (18731,-1555001,'Pathetic mortals! You will pay dearly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10475,1,0,0,'hellmaw SAY_AGGRO1'),
   (18731,-1555002,'I will break you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10476,1,0,0,'hellmaw SAY_AGGRO2'),
   (18731,-1555003,'Finally! Something to relieve the tedium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10477,1,0,0,'hellmaw SAY_AGGRO3'),
   (18731,-1555004,'Aid me, you fools, before it''s too late!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10474,1,0,0,'hellmaw SAY_HELP'),
   (18731,-1555005,'Do you fear death?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10478,1,0,0,'hellmaw SAY_SLAY1'),
   (18731,-1555006,'This is the part I enjoy most.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10479,1,0,0,'hellmaw SAY_SLAY2'),
   (18731,-1555007,'Do not...grow...overconfident, mortal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10480,1,0,0,'hellmaw SAY_DEATH'),
   (0,-1555008,'All flesh must burn.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10482,1,0,0,'blackhearth SAY_INTRO1'),
   (0,-1555009,'All creation must be unmade!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10483,1,0,0,'blackhearth SAY_INTRO2'),
   (0,-1555010,'Power will be yours!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10484,1,0,0,'blackhearth SAY_INTRO3'),
   (18667,-1555011,'You''ll be sorry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10486,1,0,0,'blackhearth SAY_AGGRO1'),
   (18667,-1555012,'Time for fun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10487,1,0,0,'blackhearth SAY_AGGRO2'),
   (18667,-1555013,'I see dead people!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10488,1,0,0,'blackhearth SAY_AGGRO3'),
   (18667,-1555014,'No comin'' back for you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10489,1,0,0,'blackhearth SAY_SLAY1'),
   (18667,-1555015,'Nice try!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10490,1,0,0,'blackhearth SAY_SLAY2'),
   (0,-1555016,'Help us, hurry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10485,1,0,0,'blackhearth SAY_HELP'),
   (18667,-1555017,'This... no... good...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10491,1,0,0,'blackhearth SAY_DEATH'),
   (0,-1555018,'Be ready for Dark One''s return.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10492,1,0,0,'blackhearth SAY2_INTRO1'),
   (0,-1555019,'So we have place in new universe.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10493,1,0,0,'blackhearth SAY2_INTRO2'),
   (0,-1555020,'Dark one promise!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10494,1,0,0,'blackhearth SAY2_INTRO3'),
   (0,-1555021,'You''ll be sorry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10496,1,0,0,'blackhearth SAY2_AGGRO1'),
   (0,-1555022,'Time to kill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10497,1,0,0,'blackhearth SAY2_AGGRO2'),
   (0,-1555023,'You be dead people!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10498,1,0,0,'blackhearth SAY2_AGGRO3'),
   (0,-1555024,'Now you gone for good.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10499,1,0,0,'blackhearth SAY2_SLAY1'),
   (0,-1555025,'You failed, haha haha',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10500,1,0,0,'blackhearth SAY2_SLAY2'),
   (0,-1555026,'Help us, hurry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10495,1,0,0,'blackhearth SAY2_HELP'),
   (0,-1555027,'Arrgh, aah...ahhh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10501,1,0,0,'blackhearth SAY2_DEATH'),
   (18732,-1555028,'Keep your minds focused for the days of reckoning are close at hand. Soon, the destroyer of worlds will return to make good on his promise. Soon the destruction of all that is will begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10522,1,0,0,'vorpil SAY_INTRO'),
   (18732,-1555029,'I''ll make an offering of your blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10524,1,0,0,'vorpil SAY_AGGRO1'),
   (18732,-1555030,'You''ll be a fine example, for the others.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10525,1,0,0,'vorpil SAY_AGGRO2'),
   (18732,-1555031,'Good, a worthy sacrifice.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10526,1,0,0,'vorpil SAY_AGGRO3'),
   (18732,-1555032,'Come to my aid, heed your master now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10523,1,0,0,'vorpil SAY_HELP'),
   (18732,-1555033,'I serve with pride.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10527,1,0,0,'vorpil SAY_SLAY1'),
   (18732,-1555034,'Your death is for the greater cause!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10528,1,0,0,'vorpil SAY_SLAY2'),
   (18732,-1555035,'I give my life... Gladly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10529,1,0,0,'vorpil SAY_DEATH'),
   (18708,-1555036,'draws energy from the air.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'murmur EMOTE_SONIC_BOOM'),

-- -1 556 000 SETHEKK HALLS
   (18472,-1556000,'I have pets..<squawk>..of my own!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10502,1,0,0,'syth SAY_SUMMON'),
   (18472,-1556001,'Hrrmm.. Time to.. hrrm.. make my move.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10503,1,0,0,'syth SAY_AGGRO_1'),
   (18472,-1556002,'Nice pets..hrm.. Yes! <squawking>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10504,1,0,0,'syth SAY_AGGRO_2'),
   (18472,-1556003,'Nice pets have.. weapons. Not so..<squawk>..nice.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10505,1,0,0,'syth SAY_AGGRO_3'),
   (18472,-1556004,'Death.. meeting life is.. <squawking>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10506,1,0,0,'syth SAY_SLAY_1'),
   (18472,-1556005,'Uhn.. Be free..<squawk>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10507,1,0,0,'syth SAY_SLAY_2'),
   (18472,-1556006,'No more life..hrm. No more pain. <squawks weakly>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10508,1,0,0,'syth SAY_DEATH'),
   (18473,-1556007,'<squawk>..Trinkets yes pretty Trinkets..<squawk>..power, great power. <squawk>..power in Trinkets..<squawk>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10557,1,0,0,'ikiss SAY_INTRO'),
   (18473,-1556008,'You make war on Ikiss?..<squawk>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10554,1,0,0,'ikiss SAY_AGGRO_1'),
   (18473,-1556009,'Ikiss cut you pretty..<squawk>..slice you. Yes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10555,1,0,0,'ikiss SAY_AGGRO_2'),
   (18473,-1556010,'No escape for..<squawk>..for you',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10556,1,0,0,'ikiss SAY_AGGRO_3'),
   (18473,-1556011,'You die..<squawk>..stay away from Trinkets',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10558,1,0,0,'ikiss SAY_SLAY_1'),
   (18473,-1556012,'<squawk>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10559,1,0,0,'ikiss SAY_SLAY_2'),
   (18473,-1556013,'Ikiss will not..<squawk>..die',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10560,1,0,0,'ikiss SAY_DEATH'),
   (18473,-1556015,'begins to channel arcane energy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'ikiss EMOTE_ARCANE_EXP'),

-- -1 557 000 MANA TOMBS
   (18344,-1557000,'What is this? You must forgive me, but I was not expecting company. As you can see, we are somewhat preoccupied right now. But no matter. As I am a gracious host, I will tend to you... personally.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10539,1,0,0,'shaffar SAY_INTRO'),
   (18344,-1557001,'We have not yet been properly introduced.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10541,1,0,0,'shaffar SAY_AGGRO_1'),
   (18344,-1557002,'An epic battle. How exciting!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10542,1,0,0,'shaffar SAY_AGGRO_2'),
   (18344,-1557003,'I have longed for a good adventure.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10543,1,0,0,'shaffar SAY_AGGRO_3'),
   (18344,-1557004,'It has been... entertaining.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10544,1,0,0,'shaffar SAY_SLAY_1'),
   (18344,-1557005,'And now we part company.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10545,1,0,0,'shaffar SAY_SLAY_2'),
   (18344,-1557006,'I have such fascinating things to show you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10540,1,0,0,'shaffar SAY_SUMMON'),
   (18344,-1557007,'I must bid you... farewell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10546,1,0,0,'shaffar SAY_DEAD'),
   (18341,-1557008,'I will feed on your soul.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10561,1,0,0,'pandemonius SAY_AGGRO_1'),
   (18341,-1557009,'So... full of life!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10562,1,0,0,'pandemonius SAY_AGGRO_2'),
   (18341,-1557010,'Do not... resist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10563,1,0,0,'pandemonius SAY_AGGRO_3'),
   (18341,-1557011,'Yes! I am... empowered!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10564,1,0,0,'pandemonius SAY_KILL_1'),
   (18341,-1557012,'More... I must have more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10565,1,0,0,'pandemonius SAY_KILL_2'),
   (18341,-1557013,'To the void... once... more..',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10566,1,0,0,'pandemonius SAY_DEATH'),
   (18341,-1557014,'shifts into the void...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'pandemonius EMOTE_DARK_SHELL'),

-- -1 558 000 AUCHENAI CRYPTS
   (18373,-1558000,'You have defiled the resting place of our ancestors. For this offense, there can be but one punishment. It is fitting that you have come to a place of the dead... for you will soon be joining them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10509,1,0,0,'maladaar SAY_INTRO'),
   (18373,-1558001,'Rise my fallen brothers. Take form and fight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10512,1,0,0,'maladaar SAY_SUMMON'),
   (18373,-1558002,'You will pay with your life!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10513,1,0,0,'maladaar SAY_AGGRO_1'),
   (18373,-1558003,'There''s no turning back now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10514,1,0,0,'maladaar SAY_AGGRO_2'),
   (18373,-1558004,'Serve your penitence!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10515,1,0,0,'maladaar SAY_AGGRO_3'),
   (18373,-1558005,'Let your mind be clouded.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10510,1,0,0,'maladaar SAY_ROAR'),
   (18373,-1558006,'Stare into the darkness of your soul.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10511,1,0,0,'maladaar SAY_SOUL_CLEAVE'),
   (18373,-1558007,'These walls will be your doom.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10516,1,0,0,'maladaar SAY_SLAY_1'),
   (18373,-1558008,'<laugh> Now, you''ll stay for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10517,1,0,0,'maladaar SAY_SLAY_2'),
   (18373,-1558009,'This is... where.. I belong...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10518,1,0,0,'maladaar SAY_DEATH'),

-- -1 560 000 ESCAPE FROM DURNHOLDE (OLD HILLSBRAD)
   (17862,-1560000,'Thrall! You didn''t really think you would escape did you? You and your allies shall answer to Blackmoore - after I''ve had my fun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10406,1,0,0,'skarloc SAY_ENTER'),
   (17862,-1560001,'You''re a slave. That''s all you''ll ever be.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10407,1,0,0,'skarloc SAY_TAUNT1'),
   (17862,-1560002,'I don''t know what Blackmoore sees in you. For my money, you''re just another ignorant savage!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10408,1,0,0,'skarloc SAY_TAUNT2'),
   (17862,-1560003,'Thrall will never be free!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10409,1,0,0,'skarloc SAY_SLAY1'),
   (17862,-1560004,'Did you really think you would leave here alive?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10410,1,0,0,'skarloc SAY_SLAY2'),
   (17862,-1560005,'Guards! Urgh..Guards..!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10411,1,0,0,'skarloc SAY_DEATH'),
   (17848,-1560006,'You there, fetch water quickly! Get these flames out before they spread to the rest of the keep! Hurry, damn you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10428,1,0,0,'lieutenant_drake SAY_ENTER'),
   (17848,-1560007,'I know what you''re up to, and I mean to put an end to it, permanently!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10429,1,0,0,'lieutenant_drake SAY_AGGRO'),
   (17848,-1560008,'No more middling for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10432,1,0,0,'lieutenant_drake SAY_SLAY1'),
   (17848,-1560009,'You will not interfere!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10433,1,0,0,'lieutenant_drake SAY_SLAY2'),
   (17848,-1560010,'Time to bleed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10430,1,0,0,'lieutenant_drake SAY_MORTAL'),
   (17848,-1560011,'Run, you blasted cowards!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10431,1,0,0,'lieutenant_drake SAY_SHOUT'),
   (17848,-1560012,'Thrall... must not... go free.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10434,1,0,0,'lieutenant_drake SAY_DEATH'),
   (18096,-1560013,'Thrall! Come outside and face your fate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10418,1,0,0,'epoch SAY_ENTER1'),
   (18096,-1560014,'Taretha''s life hangs in the balance. Surely you care for her. Surely you wish to save her...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10419,1,0,0,'epoch SAY_ENTER2'),
   (18096,-1560015,'Ah, there you are. I had hoped to accomplish this with a bit of subtlety, but I suppose direct confrontation was inevitable. Your future, Thrall, must not come to pass and so...you and your troublesome friends must die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10420,1,0,0,'epoch SAY_ENTER3'),
   (18096,-1560016,'Enough! I will erase your very existence!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10421,1,0,0,'epoch SAY_AGGRO1'),
   (18096,-1560017,'You cannot fight fate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10422,1,0,0,'epoch SAY_AGGRO2'),
   (18096,-1560018,'You are...irrelevant.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10425,1,0,0,'epoch SAY_SLAY1'),
   (18096,-1560019,'Thrall will remain a slave. Taretha will die. You have failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10426,1,0,0,'epoch SAY_SLAY2'),
   (18096,-1560020,'Not so fast!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10423,1,0,0,'epoch SAY_BREATH1'),
   (18096,-1560021,'Struggle as much as you like!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10424,1,0,0,'epoch SAY_BREATH2'),
   (18096,-1560022,'No!...The master... will not... be pleased.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10427,1,0,0,'epoch SAY_DEATH'),
   (17876,-1560023,'Very well then. Let''s go!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10465,1,0,0,'thrall hillsbrad SAY_TH_START_EVENT_PART1'),
   (17876,-1560024,'As long as we''re going with a new plan, I may aswell pick up a weapon and some armor.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'thrall hillsbrad SAY_TH_ARMORY'),
   (17876,-1560025,'A rider approaches!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10466,0,0,0,'thrall hillsbrad SAY_TH_SKARLOC_MEET'),
   (17876,-1560026,'I''ll never be chained again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10467,1,0,0,'thrall hillsbrad SAY_TH_SKARLOC_TAUNT'),
   (17876,-1560027,'Very well. Tarren Mill lies just west of here. Since time is of the essence...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10468,1,0,0,'thrall hillsbrad SAY_TH_START_EVENT_PART2'),
   (17876,-1560028,'Let''s ride!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10469,0,0,1,'thrall hillsbrad SAY_TH_MOUNTS_UP'),
   (17876,-1560029,'Taretha must be in the inn. Let''s go.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'thrall hillsbrad SAY_TH_CHURCH_END'),
   (17876,-1560030,'Taretha! What foul magic is this?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'thrall hillsbrad SAY_TH_MEET_TARETHA'),
   (17876,-1560031,'Who or what was that?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10470,1,0,1,'thrall hillsbrad SAY_TH_EPOCH_WONDER'),
   (17876,-1560032,'No!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10471,1,0,5,'thrall hillsbrad SAY_TH_EPOCH_KILL_TARETHA'),
   (17876,-1560033,'Goodbye, Taretha. I will never forget your kindness.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10472,1,0,0,'thrall hillsbrad SAY_TH_EVENT_COMPLETE'),
   (17876,-1560034,'Things are looking grim...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10458,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_LOW_HP1'),
   (17876,-1560035,'I will fight to the last!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10459,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_LOW_HP2'),
   (17876,-1560036,'Taretha...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10460,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_DIE1'),
   (17876,-1560037,'A good day...to die...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10461,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_DIE2'),
   (17876,-1560038,'I have earned my freedom!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10448,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO1'),
   (17876,-1560039,'This day is long overdue. Out of my way!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10449,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO2'),
   (17876,-1560040,'I am a slave no longer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10450,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO3'),
   (17876,-1560041,'Blackmoore has much to answer for!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10451,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO4'),
   (17876,-1560042,'You have forced my hand!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10452,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL1'),
   (17876,-1560043,'It should not have come to this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10453,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL2'),
   (17876,-1560044,'I did not ask for this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10454,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL3'),
   (17876,-1560045,'I am truly in your debt, strangers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10455,1,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT1'),
   (17876,-1560046,'Thank you, strangers. You have given me hope.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10456,1,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT2'),
   (17876,-1560047,'I will not waste this chance. I will seek out my destiny.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10457,1,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT3'),
   (18887,-1560048,'I''m free! Thank you all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'taretha SAY_TA_FREE'),
   (18887,-1560049,'Thrall, you escaped!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'taretha SAY_TA_ESCAPED'),

-- -1 564 000 BLACK TEMPLE
   (22887,-1564000,'You will die in the name of Lady Vashj!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11450,1,0,0,'SAY_AGGRO'),
   (22887,-1564001,'Stick around!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11451,1,0,0,'SAY_NEEDLE1'),
   (22887,-1564002,'I''ll deal with you later!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11452,1,0,0,'SAY_NEEDLE2'),
   (22887,-1564003,'Your success was short lived!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11455,1,0,0,'SAY_SLAY1'),
   (22887,-1564004,'Time for you to go!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11456,1,0,0,'SAY_SLAY2'),
   (22887,-1564005,'Bel''anen dal''lorei!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11453,1,0,0,'SAY_SPECIAL1'),
   (22887,-1564006,'Blood will flow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11454,1,0,0,'SAY_SPECIAL2'),
   (22887,-1564007,'Bal''amer ch''itah!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11457,1,0,0,'SAY_ENRAGE1'),
   (22887,-1564008,'My patience has ran out! Die, DIE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11458,1,0,0,'SAY_ENRAGE2'),
   (22887,-1564009,'Lord Illidan will... crush you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11459,1,0,0,'SAY_DEATH'),
   (22898,-1564010,'%s acquires a new target!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'supremus EMOTE_NEW_TARGET'),
   (22898,-1564011,'%s punches the ground in anger!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'supremus EMOTE_PUNCH_GROUND'),
   (22898,-1564012,'The ground begins to crack open!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'supremus EMOTE_GROUND_CRACK'),
   (22990,-1564013,'No! Not yet...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11385,1,0,0,'akama shade SAY_LOW_HEALTH'),
   (22990,-1564014,'I will not last much longer...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11386,1,0,0,'akama shade SAY_DEATH'),
   (22990,-1564015,'Come out from the shadows! I''ve returned to lead you against our true enemy! Shed your chains and raise your weapons against your Illidari masters!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'akama shade SAY_FREE'),
   (22990,-1564016,'Hail our leader! Hail Akama!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'akama shade broken SAY_BROKEN_FREE_01'),
   (22990,-1564017,'Hail Akama!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'akama shade broken SAY_BROKEN_FREE_02'),
   (22947,-1564018,'You play, you pay.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11501,1,0,0,'shahraz SAY_TAUNT1'),
   (22947,-1564019,'I''m not impressed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11502,1,0,0,'shahraz SAY_TAUNT2'),
   (22947,-1564020,'Enjoying yourselves?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11503,1,0,0,'shahraz SAY_TAUNT3'),
   (22947,-1564021,'So... business or pleasure?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11504,1,0,0,'shahraz SAY_AGGRO'),
   (22947,-1564022,'You seem a little tense.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11505,1,0,0,'shahraz SAY_SPELL1'),
   (22947,-1564023,'Don''t be shy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11506,1,0,0,'shahraz SAY_SPELL2'),
   (22947,-1564024,'I''m all... yours.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11507,1,0,0,'shahraz SAY_SPELL3'),
   (22947,-1564025,'Easy come, easy go.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11508,1,0,0,'shahraz SAY_SLAY1'),
   (22947,-1564026,'So much for a happy ending.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11509,1,0,0,'shahraz SAY_SLAY2'),
   (22947,-1564027,'Stop toying with my emotions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11510,1,0,0,'shahraz SAY_ENRAGE'),
   (22947,-1564028,'I wasn''t... finished.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11511,1,0,0,'shahraz SAY_DEATH'),
   (22948,-1564029,'Horde will... crush you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11432,1,0,0,'bloodboil SOUND_AGGRO'),
   (22948,-1564030,'Time to feast!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11433,1,0,0,'bloodboil SAY_SLAY1'),
   (22948,-1564031,'More! I want more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11434,1,0,0,'bloodboil SAY_SLAY2'),
   (22948,-1564032,'Drink your blood! Eat your flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11435,1,0,0,'bloodboil SAY_SPECIAL1'),
   (22948,-1564033,'I hunger!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11436,1,0,0,'bloodboil SAY_SPECIAL2'),
   (22948,-1564034,'<babbling>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11437,1,0,0,'bloodboil SAY_ENRAGE1'),
   (22948,-1564035,'I''ll rip the meat from your bones!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11438,1,0,0,'bloodboil SAY_ENRAGE2'),
   (22948,-1564036,'Aaaahrg...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11439,1,0,0,'bloodboil SAY_DEATH'),
   (22871,-1564037,'I was the first, you know. For me, the wheel of death has spun many times. <laughs> So much time has passed. I have a lot of catching up to do...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11512,1,0,0,'teron SAY_INTRO'),
   (22871,-1564038,'Vengeance is mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11513,1,0,0,'teron SAY_AGGRO'),
   (22871,-1564039,'I have use for you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11514,1,0,0,'teron SAY_SLAY1'),
   (22871,-1564040,'It gets worse...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11515,1,0,0,'teron SAY_SLAY2'),
   (22871,-1564041,'What are you afraid of?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11517,1,0,0,'teron SAY_SPELL1'),
   (22871,-1564042,'Death... really isn''t so bad.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11516,1,0,0,'teron SAY_SPELL2'),
   (22871,-1564043,'Give in!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11518,1,0,0,'teron SAY_SPECIAL1'),
   (22871,-1564044,'I have something for you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11519,1,0,0,'teron SAY_SPECIAL2'),
   (22871,-1564045,'YOU WILL SHOW THE PROPER RESPECT!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11520,1,0,0,'teron SAY_ENRAGE'),
   (22871,-1564046,'The wheel...spins...again....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11521,1,0,0,'teron SAY_DEATH'),
   (23418,-1564047,'Pain and suffering are all that await you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11415,1,0,0,'essence SUFF_SAY_FREED'),
   (23418,-1564048,'Don''t leave me alone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11416,1,0,0,'essence SUFF_SAY_AGGRO'),
   (23418,-1564049,'Look at what you make me do!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11417,1,0,0,'essence SUFF_SAY_SLAY1'),
   (23418,-1564050,'I didn''t ask for this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11418,1,0,0,'essence SUFF_SAY_SLAY2'),
   (23418,-1564051,'The pain is only beginning!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11419,1,0,0,'essence SUFF_SAY_SLAY3'),
   (23418,-1564052,'I don''t want to go back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11420,1,0,0,'essence SUFF_SAY_RECAP'),
   (23418,-1564053,'Now what do I do?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11421,1,0,0,'essence SUFF_SAY_AFTER'),
   (23418,-1564054,'%s becomes enraged!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'essence SUFF_EMOTE_ENRAGE'),
   (23419,-1564055,'You can have anything you desire... for a price.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11408,1,0,0,'essence DESI_SAY_FREED'),
   (23419,-1564056,'Fulfilment is at hand!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11409,1,0,0,'essence DESI_SAY_SLAY1'),
   (23419,-1564057,'Yes... you''ll stay with us now...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11410,1,0,0,'essence DESI_SAY_SLAY2'),
   (23419,-1564058,'Your reach exceeds your grasp.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11412,1,0,0,'essence DESI_SAY_SLAY3'),
   (23419,-1564059,'Be careful what you wish for...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11411,1,0,0,'essence DESI_SAY_SPEC'),
   (23419,-1564060,'I''ll be waiting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11413,1,0,0,'essence DESI_SAY_RECAP'),
   (23419,-1564061,'I won''t be far...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11414,1,0,0,'essence DESI_SAY_AFTER'),
   (23420,-1564062,'Beware: I live!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11399,1,0,0,'essence ANGER_SAY_FREED'),
   (23420,-1564063,'So... foolish.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11400,1,0,0,'essence ANGER_SAY_FREED2'),
   (23420,-1564064,'<maniacal cackle>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11401,1,0,0,'essence ANGER_SAY_SLAY1'),
   (23420,-1564065,'Enough. No more.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11402,1,0,0,'essence ANGER_SAY_SLAY2'),
   (23420,-1564066,'On your knees!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11403,1,0,0,'essence ANGER_SAY_SPEC'),
   (23420,-1564067,'Beware, coward.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11405,1,0,0,'essence ANGER_SAY_BEFORE'),
   (23420,-1564068,'I won''t... be... ignored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11404,1,0,0,'essence ANGER_SAY_DEATH'),
   (0,-1564069,'You wish to test me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11524,1,0,0,'council vera AGGRO'),
   (0,-1564070,'I have better things to do...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11422,1,0,0,'council gath AGGRO'),
   (0,-1564071,'Flee or die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11482,1,0,0,'council mala AGGRO'),
   (0,-1564072,'Common... such a crude language. Bandal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11440,1,0,0,'council zere AGGRO'),
   (0,-1564073,'Enough games!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11428,1,0,0,'council gath ENRAGE'),
   (0,-1564074,'You wish to kill me? Hahaha, you first!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11530,1,0,0,'council vera ENRAGE'),
   (0,-1564075,'For Quel''Thalas! For the Sunwell!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11488,1,0,0,'council mala ENRAGE'),
   (0,-1564076,'Sha''amoor sine menoor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11446,1,0,0,'council zere ENRAGE'),
   (22949,-1564077,'Enjoy your final moments!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11426,1,0,0,'council gath SPECIAL1'),
   (22952,-1564078,'You''re not caught up for this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11528,1,0,0,'council vera SPECIAL1'),
   (22951,-1564079,'No second chances!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11486,1,0,0,'council mala SPECIAL1'),
   (22950,-1564080,'Diel fin''al',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11444,1,0,0,'council zere SPECIAL1'),
   (22949,-1564081,'You are mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11427,1,0,0,'council gath SPECIAL2'),
   (22952,-1564082,'Anar''alah belore!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11529,1,0,0,'council vera SPECIAL2'),
   (22951,-1564083,'I''m full of surprises!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11487,1,0,0,'council mala SPECIAL2'),
   (22950,-1564084,'Sha''amoor ara mashal?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11445,1,0,0,'council zere SPECIAL2'),
   (22949,-1564085,'Selama am''oronor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11423,1,0,0,'council gath SLAY'),
   (22952,-1564086,'Valiant effort!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11525,1,0,0,'council vera SLAY'),
   (22951,-1564087,'My work is done.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11483,1,0,0,'council mala SLAY'),
   (22950,-1564088,'Shorel''aran.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11441,1,0,0,'council zere SLAY'),
   (22949,-1564089,'Well done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11424,1,0,0,'council gath SLAY_COMT'),
   (22951,-1564090,'A glorious kill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11526,1,0,0,'council vera SLAY_COMT'),
   (22950,-1564091,'As it should be!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11484,1,0,0,'council mala SLAY_COMT'),
   (0,-1564092,'Belesa menoor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11442,1,0,0,'council zere SLAY_COMT'),
   (22949,-1564093,'Lord Illidan... I...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11425,1,0,0,'council gath DEATH'),
   (22952,-1564094,'You got lucky!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11527,1,0,0,'council vera DEATH'),
   (22951,-1564095,'Destiny... awaits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11485,1,0,0,'council mala DEATH'),
   (22950,-1564096,'Diel ma''ahn... oreindel''o',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11443,1,0,0,'council zere DEATH'),

-- -1 565 000 GRUUL'S LAIR
   (18831,-1565000,'Gronn are the real power in outland.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11367,1,0,0,'maulgar SAY_AGGRO'),
   (18831,-1565001,'You will not defeat the hand of Gruul!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11368,1,0,0,'maulgar SAY_ENRAGE'),
   (18831,-1565002,'You won''t kill next one so easy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11369,1,0,0,'maulgar SAY_OGRE_DEATH1'),
   (18831,-1565003,'Pah! Does not prove anything!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11370,1,0,0,'maulgar SAY_OGRE_DEATH2'),
   (18831,-1565004,'I''m not afraid of you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11371,1,0,0,'maulgar SAY_OGRE_DEATH3'),
   (18831,-1565005,'Good, now you fight me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11372,1,0,0,'maulgar SAY_OGRE_DEATH4'),
   (18831,-1565006,'You not so tough afterall!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11373,1,0,0,'maulgar SAY_SLAY1'),
   (18831,-1565007,'Aha-ha ha ha!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11374,1,0,0,'maulgar SAY_SLAY2'),
   (18831,-1565008,'Mulgar is king!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11375,1,0,0,'maulgar SAY_SLAY3'),
   (18831,-1565009,'Gruul... will crush you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11376,1,0,0,'maulgar SAY_DEATH'),
   (19044,-1565010,'Come... and die.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11355,1,0,0,'gruul SAY_AGGRO'),
   (19044,-1565011,'Scurry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11356,1,0,0,'gruul SAY_SLAM1'),
   (19044,-1565012,'No escape',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11357,1,0,0,'gruul SAY_SLAM2'),
   (19044,-1565013,'Stay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11358,1,0,0,'gruul SAY_SHATTER1'),
   (19044,-1565014,'Beg... for life',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11359,1,0,0,'gruul SAY_SHATTER2'),
   (19044,-1565015,'No more',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11360,1,0,0,'gruul SAY_SLAY1'),
   (19044,-1565016,'Unworthy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11361,1,0,0,'gruul SAY_SLAY2'),
   (19044,-1565017,'Die',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11362,1,0,0,'gruul SAY_SLAY3'),
   (19044,-1565018,'Aaargh...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11363,1,0,0,'gruul SAY_DEATH'),
   (19044,-1565019,'%s grows in size!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'gruul EMOTE_GROW'),

-- -1 568 000 ZUL'AMAN
   (23578,-1568000,'Spirits of da wind be your doom!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12031,1,0,0,'janalai SAY_AGGRO'),
   (23578,-1568001,'I burn ya now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12032,1,0,0,'janalai SAY_FIRE_BOMBS'),
   (23578,-1568002,'Where ma hatcha? Get to work on dem eggs!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12033,1,0,0,'janalai SAY_SUMMON_HATCHER'),
   (23578,-1568003,'I show you strength... in numbers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12034,1,0,0,'janalai SAY_ALL_EGGS'),
   (23578,-1568004,'You done run outta time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12035,1,0,0,'janalai SAY_BERSERK'),
   (23578,-1568005,'It all be over now, mon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12036,1,0,0,'janalai SAY_SLAY_1'),
   (23578,-1568006,'Tazaga-choo!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12037,1,0,0,'janalai SAY_SLAY_2'),
   (23578,-1568007,'Zul''jin... got a surprise for you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12038,1,0,0,'janalai SAY_DEATH'),
   (23578,-1568008,'Come, strangers. The spirit of the dragonhawk hot be hungry for worthy souls.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12039,1,0,0,'janalai SAY_EVENT_STRANGERS'),
   (23578,-1568009,'Come, friends. Your bodies gonna feed ma hatchlings, and your souls are going to feed me with power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12040,1,0,0,'janalai SAY_EVENT_FRIENDS'),
   (0,-1568010,'Get da move on, guards! It be killin'' time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12066,1,0,0,'nalorakk SAY_WAVE1_AGGRO'),
   (0,-1568011,'Guards, go already! Who you more afraid of, dem... or me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12067,1,0,0,'nalorakk SAY_WAVE2_STAIR1'),
   (0,-1568012,'Ride now! Ride out dere and bring me back some heads!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12068,1,0,0,'nalorakk SAY_WAVE3_STAIR2'),
   (0,-1568013,'I be losin'' me patience! Go on: make dem wish dey was never born!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12069,1,0,0,'nalorakk SAY_WAVE4_PLATFORM'),
   (0,-1568014,'What could be better than servin'' da bear spirit for eternity? Come closer now. Bring your souls to me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12078,1,0,0,'nalorakk SAY_EVENT1_SACRIFICE'),
   (0,-1568015,'Don''t be delayin'' your fate. Come to me now. I make your sacrifice quick.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12079,1,0,0,'nalorakk SAY_EVENT2_SACRIFICE'),
   (0,-1568016,'You be dead soon enough!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12070,1,0,0,'nalorakk SAY_AGGRO'),
   (0,-1568017,'I bring da pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12071,1,0,0,'nalorakk SAY_SURGE'),
   (0,-1568018,'You call on da beast, you gonna get more dan you bargain for!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12072,1,0,0,'nalorakk SAY_TOBEAR'),
   (0,-1568019,'Make way for Nalorakk!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12073,1,0,0,'nalorakk SAY_TOTROLL'),
   (0,-1568020,'You had your chance, now it be too late!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12074,1,0,0,'nalorakk SAY_BERSERK'),
   (0,-1568021,'Mua-ha-ha! Now whatchoo got to say?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12075,1,0,0,'nalorakk SAY_SLAY1'),
   (0,-1568022,'Da Amani gonna rule again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12076,1,0,0,'nalorakk SAY_SLAY2'),
   (0,-1568023,'I... be waitin'' on da udda side....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12077,1,0,0,'nalorakk SAY_DEATH'),

-- -1 571 000 SHOLAZAR BASIN
   (28217,-1571000,'You save me! We thank you. We going to go back to village now. You come too... you can stay with us! Puppy-men kind of mean anyway. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_injured_rainspeaker_oracle SAY_END_IRO'),
   (28217,-1571001,'Let me know when you ready to go, okay?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_injured_rainspeaker_oracle SAY_QUEST_ACCEPT_IRO '),
   (28217,-1571002,'Home time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_injured_rainspeaker_oracle SAY_START_IRO'),
   (30154,-1571003,'I''m not afraid of anything -- bring it on!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'aggro_Agnetta'),

-- -1 574 000 UTGARDE KEEP
   (23953,-1574000,'Your blood is mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13221,1,0,0,'keleseth SAY_AGGRO'),
   (23953,-1574001,'Not so fast.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13222,1,0,0,'keleseth SAY_FROST_TOMB'),
   (23953,-1574002,'Aranal, lidel! Their fate shall be yours!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13224,1,0,0,'keleseth SAY_SKELETONS'),
   (23953,-1574003,'Darkness waits',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13223,1,0,0,'keleseth SAY_KILL'),
   (23953,-1574004,'I join... the night.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13225,1,0,0,'keleseth SAY_DEATH'),
   (23954,-1574005,'I''ll paint my face with your blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13207,1,0,0,'ingvar SAY_AGGRO_FIRST'),
   (23954,-1574006,'I return! A second chance to carve out your skull!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13209,1,0,0,'ingvar SAY_AGGRO_SECOND'),
   (23954,-1574007,'My life for the... death god!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13213,1,0,0,'ingvar SAY_DEATH_FIRST'),
   (23954,-1574008,'No! I can do... better! I can...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13211,1,0,0,'ingvar SAY_DEATH_SECOND'),
   (23954,-1574009,'Mjul orm agn gjor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13212,1,0,0,'ingvar SAY_KILL_FIRST'),
   (23954,-1574010,'I am a warrior born!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13214,1,0,0,'ingvar SAY_KILL_SECOND'),
   (24200,-1574011,'Dalronn! See if you can muster the nerve to join my attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13229,1,0,0,'skarvald YELL_SKARVALD_AGGRO'),
   (24200,-1574012,'Not... over... yet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13230,1,0,0,'skarvald YELL_SKARVALD_DAL_DIED'),
   (24200,-1574013,'A warrior''s death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13231,1,0,0,'skarvald YELL_SKARVALD_SKA_DIEDFIRST'),
   (24200,-1574014,'???',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13232,1,0,0,'skarvald YELL_SKARVALD_KILL'),
   (24200,-1574015,'Pagh! What sort of necromancer lets death stop him? I knew you were worthless!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13233,1,0,0,'skarvald YELL_SKARVALD_DAL_DIEDFIRST'),
   (24201,-1574016,'By all means, don''t assess the situation, you halfwit! Just jump into the fray!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13199,1,0,0,'dalronn YELL_DALRONN_AGGRO'),
   (24201,-1574017,'See... you... soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13200,1,0,0,'dalronn YELL_DALRONN_SKA_DIED'),
   (24201,-1574018,'There''s no... greater... glory.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13201,1,0,0,'dalronn YELL_DALRONN_DAL_DIEDFIRST'),
   (24201,-1574019,'You may serve me yet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13202,1,0,0,'dalronn YELL_DALRONN_KILL'),
   (24201,-1574020,'Skarvald, you incompetent slug! Return and make yourself useful!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13203,1,0,0,'dalronn YELL_DALRONN_SKA_DIEDFIRST'),

-- -1 576 000 THE NEXUS: THE NEXUS
   (26731,-1576000,'You know what they say about curiosity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13319,1,0,0,'grand magus telestra SAY_AGGRO'),
   (26731,-1576001,'Death becomes you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13324,1,0,0,'grand magus telestra SAY_KILL'),
   (26731,-1576002,'Damn the... luck.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13320,1,0,0,'grand magus telestra SAY_DEATH'),
   (26731,-1576003,'Now to finish the job!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13323,1,0,0,'grand magus telestra SAY_MERGE'),
   (26731,-1576004,'There''s plenty of me to go around.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13321,1,0,0,'grand magus telestra SAY_SPLIT_1'),
   (26731,-1576005,'I''ll give you more than you can handle.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13322,1,0,0,'grand magus telestra SAY_SPLIT_2'),
   (26763,-1576010,'Chaos beckons.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13186,1,0,0,'anomalus SAY_AGGRO'),
   (26763,-1576011,'Of course.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13187,1,0,0,'anomalus SAY_DEATH'),
   (26763,-1576012,'Reality... unwoven.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13188,1,0,0,'anomalus SAY_RIFT'),
   (26763,-1576013,'Indestructible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13189,1,0,0,'anomalus SAY_SHIELD'),
   (26794,-1576020,'Noo!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13328,1,0,0,'ormorok SAY_AGGRO'),
   (26794,-1576021,'Aaggh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13330,1,0,0,'ormorok SAY_DEATH'),
   (26794,-1576022,'Back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13331,1,0,0,'ormorok SAY_REFLECT'),
   (26794,-1576023,'Bleed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13332,1,0,0,'ormorok SAY_CRYSTAL_SPIKES'),
   (26794,-1576024,'Aaggh! Kill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13329,1,0,0,'ormorok SAY_KILL'),
   (26723,-1576040,'Preserve? Why? There''s no truth in it. No no no... only in the taking! I see that now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13450,1,0,0,'keristrasza SAY_AGGRO'),
   (26723,-1576041,'Now we''ve come to the truth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13453,1,0,0,'keristrasza SAY_SLAY'),
   (26723,-1576042,'Finish it! FINISH IT! Kill me, or I swear by the Dragonqueen you''ll never see daylight again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13452,1,0,0,'keristrasza SAY_ENRAGE'),
   (26723,-1576043,'Dragonqueen... Life-Binder... preserve... me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13454,1,0,0,'keristrasza SAY_DEATH'),
   (26723,-1576044,'Stay. Enjoy your final moments.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13451,1,0,0,'keristrasza SAY_CRYSTAL_NOVA'),

-- -1 580 000 SUNWELL PLATEAU
   (24850,-1580000,'Aggh! No longer will I be a slave to Malygos! Challenge me and you will be destroyed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12422,1,0,0,'kalecgos SAY_EVIL_AGGRO'),
   (24850,-1580001,'I will purge you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12423,1,0,0,'kalecgos SAY_EVIL_SPELL1'),
   (24850,-1580002,'Your pain has only begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12424,1,0,0,'kalecgos SAY_EVIL_SPELL2'),
   (24850,-1580003,'In the name of Kil''jaeden!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12425,1,0,0,'kalecgos SAY_EVIL_SLAY1'),
   (24850,-1580004,'You were warned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12426,1,0,0,'kalecgos SAY_EVIL_SLAY2'),
   (24850,-1580005,'My awakening is complete! You shall all perish!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12427,1,0,0,'kalecgos SAY_EVIL_ENRAGE'),
   (24891,-1580006,'I need... your help... Cannot... resist him... much longer...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12428,1,0,0,'kalecgos humanoid SAY_GOOD_AGGRO'),
   (24891,-1580007,'Aaahhh! Help me, before I lose my mind!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12429,1,0,0,'kalecgos humanoid SAY_GOOD_NEAR_DEATH'),
   (24891,-1580008,'Hurry! There is not much of me left!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12430,1,0,0,'kalecgos humanoid SAY_GOOD_NEAR_DEATH2'),
   (24891,-1580009,'I am forever in your debt. Once we have triumphed over Kil''jaeden, this entire world will be in your debt as well.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12431,1,0,0,'kalecgos humanoid SAY_GOOD_PLRWIN'),
   (24892,-1580010,'There will be no reprieve. My work here is nearly finished.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12451,1,0,0,'sathrovarr SAY_SATH_AGGRO'),
   (24892,-1580011,'I''m... never on... the losing... side...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12452,1,0,0,'sathrovarr SAY_SATH_DEATH'),
   (24892,-1580012,'Your misery is my delight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12453,1,0,0,'sathrovarr SAY_SATH_SPELL1'),
   (24892,-1580013,'I will watch you bleed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12454,1,0,0,'sathrovarr SAY_SATH_SPELL2'),
   (24892,-1580014,'Pitious mortal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12455,1,0,0,'sathrovarr SAY_SATH_SLAY1'),
   (24892,-1580015,'Haven''t you heard? I always win!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12456,1,0,0,'sathrovarr SAY_SATH_SLAY2'),
   (24892,-1580016,'I have toyed with you long enough!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12457,1,0,0,'sathrovarr SAY_SATH_ENRAGE'),
   (24882,-1580017,'Puny lizard! Death is the only answer you''ll find here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12458,1,0,0,'brutallus YELL_INTRO'),
   (24882,-1580018,'Grah! Your magic is weak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12459,1,0,0,'brutallus YELL_INTRO_BREAK_ICE'),
   (24882,-1580019,'I will crush you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12460,1,0,0,'brutallus YELL_INTRO_CHARGE'),
   (24882,-1580020,'That was fun.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12461,1,0,0,'brutallus YELL_INTRO_KILL_MADRIGOSA'),
   (24882,-1580021,'Come, try your luck!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12462,1,0,0,'brutallus YELL_INTRO_TAUNT'),
   (24882,-1580022,'Ahh! More lambs to the slaughter!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12463,1,0,0,'brutallus YELL_AGGRO'),
   (24882,-1580023,'Perish, insect!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12464,1,0,0,'brutallus YELL_KILL1'),
   (24882,-1580024,'You are meat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12465,1,0,0,'brutallus YELL_KILL2'),
   (24882,-1580025,'Too easy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12466,1,0,0,'brutallus YELL_KILL3'),
   (24882,-1580026,'Bring the fight to me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12467,1,0,0,'brutallus YELL_LOVE1'),
   (24882,-1580027,'Another day, another glorious battle!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12468,1,0,0,'brutallus YELL_LOVE2'),
   (24882,-1580028,'I live for this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12469,1,0,0,'brutallus YELL_LOVE3'),
   (24882,-1580029,'So much for a real challenge... Die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12470,1,0,0,'brutallus YELL_BERSERK'),
   (24882,-1580030,'Gah! Well done... Now... this gets... interesting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12471,1,0,0,'brutallus YELL_DEATH'),
   (24882,-1580031,'Hold, friends! There is information to be had before this devil meets his fate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12472,1,0,0,'madrigosa YELL_MADR_ICE_BARRIER'),
   (24882,-1580032,'Where is Anveena, demon? What has become of Kalec?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12473,1,0,0,'madrigosa YELL_MADR_INTRO'),
   (24882,-1580033,'You will tell me where they are!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12474,1,0,0,'madrigosa YELL_MADR_ICE_BLOCK'),
   (24882,-1580034,'Speak, I grow weary of asking!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12475,1,0,0,'madrigosa YELL_MADR_TRAP'),
   (24882,-1580035,'Malygos, my lord! I did my best!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12476,1,0,0,'madrigosa YELL_MADR_DEATH'),
   (25038,-1580036,'Glory to Kil''jaeden! Death to all who oppose!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12477,1,0,0,'felmyst - YELL_BIRTH'),
   (25038,-1580037,'I kill for the master!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12480,1,0,0,'felmyst - YELL_KILL1'),
   (25038,-1580038,'The end has come!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12481,1,0,0,'felmyst - YELL_KILL2'),
   (25038,-1580039,'Choke on your final breath!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12478,1,0,0,'felmyst - YELL_BREATH'),
   (25038,-1580040,'I am stronger than ever before!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12479,1,0,0,'felmyst- YELL_TAKEOFF'),
   (25038,-1580041,'No more hesitation! Your fates are written!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12482,1,0,0,'felmyst - YELL_BERSERK'),
   (25038,-1580042,'Kil''jaeden... will... prevail...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12483,1,0,0,'felmyst - YELL_DEATH'),
   (25038,-1580043,'Madrigosa deserved a far better fate. You did what had to be done, but this battle is far from over.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12439,1,0,0,'felmyst - YELL_KALECGOS'),
   (25166,-1580044,'Fire to the aid of shadow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12489,1,0,0,'eredar - YELL_CANFLAGRATION'),
   (25166,-1580045,'Sacrolash!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12492,1,0,0,'eredar - YELL_SISTER_SACROLASH_DEAD'),
   (25166,-1580046,'Fire consume.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12490,1,0,0,'eredar - YELL_ALY_KILL_1'),
   (25166,-1580047,'Ed-ir Halach!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12491,1,0,0,'eredar - YELL_ALY_KILL_2'),
   (25166,-1580048,'De-ek Anur!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12494,1,0,0,'eredar - YELL_ALY_DEAD'),
   (25166,-1580049,'Your luck has run its curse!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12493,1,0,0,'eredar - YELL_BERSERK'),
   (25165,-1580050,'Shadow to the aid of fire!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12485,1,0,0,'eredar - YELL_SHADOW_NOVA'),
   (25165,-1580051,'Alythess! Your fire burns within me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12488,1,0,0,'eredar - YELL_SISTER_ALYTHESS_DEAD'),
   (25165,-1580052,'Shadow engulf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12486,1,0,0,'eredar - YELL_SAC_KILL_1'),
   (25165,-1580053,'Ee-nok Kryul!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12487,1,0,0,'eredar - YELL_SAC_KILL_2'),
   (25165,-1580054,'I... fade.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_SAC_DEAD'),
   (25165,-1580055,'Time is a luxury you no longer possess!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_ENRAGE'),
   (25166,-1580056,'Misery...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12484,1,0,0,'eredar - YELL_INTRO_SAC_1'),
   (25166,-1580057,'Depravity...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_INTRO_ALY_2'),
   (25166,-1580058,'Confusion...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_INTRO_SAC_3'),
   (25166,-1580059,'Hatred...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_INTRO_ALY_4'),
   (25166,-1580060,'Mistrust...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_INTRO_SAC_5'),
   (25166,-1580061,'Chaos...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_INTRO_ALY_6'),
   (25166,-1580062,'These are the hallmarks...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_INTRO_SAC_7'),
   (25166,-1580063,'These are the pillars...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'eredar - YELL_INTRO_ALY_8'),
   (25165,-1580064,'%s directs Shadow Nova at $N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'eredar - emote shadow nova'),
   (25166,-1580065,'%s directs Conflagration at $N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'eredar - emote conflagration'),
   (25608,-1580066,'All my plans have led to this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12495,1,0,0,'KJ - SAY_KJ_OFFCOMBAT1'),
   (25608,-1580067,'Stay on task! Do not waste tim!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12496,1,0,0,'KJ - SAY_KJ_OFFCOMBAT2'),
   (25608,-1580068,'I have waited long enough!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12497,1,0,0,'KJ - SAY_KJ_OFFCOMBAT3'),
   (25608,-1580069,'Fail me and suffer for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12498,1,0,0,'KJ - SAY_KJ_OFFCOMBAT4'),
   (25608,-1580070,'Drain the girl! Drain her power until there is nothing but a vacant shell!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12499,1,0,0,'KJ - SAY_KJ_OFFCOMBAT5'),
   (25315,-1580071,'The expendible have perished... So be it! Now I shall succeed where Sargeras could not! I will bleed this wretched world and secure my place as the true master of the Burning Legion. The end has come! Let the unraveling of this world commence!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12500,1,0,0,'KJ - SAY_KJ_EMERGE'),
   (25315,-1580072,'Another step towards destruction!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12501,1,0,0,'KJ - SAY_KJ_SLAY1'),
   (25315,-1580073,'Anak-ky''ri!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12502,1,0,0,'KJ - SAY_KJ_SLAY2'),
   (25315,-1580074,'Who can you trust?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12503,1,0,0,'KJ - SAY_KJ_REFLECTION1'),
   (25315,-1580075,'The enemy is among you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12504,1,0,0,'KJ - SAY_KJ_REFLECTION2'),
   (25315,-1580076,'Chaos!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12505,1,0,0,'KJ - SAY_KJ_DARKNESS1'),
   (25315,-1580077,'Destruction!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12506,1,0,0,'KJ - SAY_KJ_DARKNESS2'),
   (25315,-1580078,'Oblivion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12507,1,0,0,'KJ - SAY_KJ_DARKNESS3'),
   (25315,-1580079,'I will not be denied! This world shall fall!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12508,1,0,0,'KJ - SAY_KJ_PHASE3'),
   (25315,-1580080,'Do not harbor false hope. You cannot win!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12509,1,0,0,'KJ - SAY_KJ_PHASE4'),
   (25315,-1580081,'Aggghh! The powers of the Sunwell... turned... against me! What have you done? WHAT HAVE YOU DONE?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12510,1,0,0,'KJ - SAY_KJ_PHASE5'),
   (25315,-1580082,'Anveena, you must awaken, this world needs you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12445,1,0,0,'KJ - SAY_KALECGOS_AWAKEN'),
   (25315,-1580083,'I serve only the Master now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12511,1,0,0,'KJ - SAY_ANVEENA_IMPRISONED'),
   (25315,-1580084,'You must let go! You must become what you were always meant to be! The time is now, Anveena!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12446,1,0,0,'KJ - SAY_KALECGOS_LETGO'),
   (25315,-1580085,'But I''m... lost... I cannot find my way back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12512,1,0,0,'KJ - SAY_ANVEENA_LOST'),
   (25315,-1580086,'Anveena, I love you! Focus on my voice, come back for me now! Only you can cleanse the Sunwell!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12447,1,0,0,'KJ - SAY_KALECGOS_FOCUS'),
   (25315,-1580087,'Kalec... Kalec?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12513,1,0,0,'KJ - SAY_ANVEENA_KALEC'),
   (25315,-1580088,'Yes, Anveena! Let fate embrace you now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12448,1,0,0,'KJ - SAY_KALECGOS_FATE'),
   (25315,-1580089,'The nightmare is over, the spell is broken! Goodbye, Kalec, my love!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12514,1,0,0,'KJ - SAY_ANVEENA_GOODBYE'),
   (25315,-1580090,'Goodbye, Anveena, my love. Few will remember your name, yet this day you change the course of destiny. What was once corrupt is now pure. Heroes, do not let her sacrifice be in vain.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12450,1,0,0,'KJ - SAY_KALECGOS_GOODBYE'),
   (25315,-1580091,'Strike now, heroes, while he is weakened! Vanquish the Deceiver!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12449,1,0,0,'KJ - SAY_KALECGOS_ENCOURAGE'),
   (25319,-1580092,'You are not alone. The Blue Dragonflight shall help you vanquish the Deceiver.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12438,1,0,0,'KJ - SAY_KALECGOS_JOIN'),
   (25315,-1580093,'Nooooooooooooo!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12527,1,0,0,'KJ - SAY_KJ_DEATH'),
   (25315,-1580094,'%s begins to channel dark energy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'KJ - EMOTE_KJ_DARKNESS'),
   (25319,-1580095,'I will channel my power into the orbs, be ready!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12440,1,0,0,'KJ - SAY_KALEC_ORB_READY1'),
   (25319,-1580096,'I have empowered another orb! Use it quickly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12441,1,0,0,'KJ - SAY_KALEC_ORB_READY2'),
   (25319,-1580097,'Another orb is ready! Make haste!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12442,1,0,0,'KJ - SAY_KALEC_ORB_READY3'),
   (25319,-1580098,'I have channeled all I can! The power is in your hands!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12443,1,0,0,'KJ - SAY_KALEC_ORB_READY4'),
   (0,-1580099,'Mortal heroes, your victory here today was foretold long ago. My brother''s anguished cry of defeat will echo across the universe, bringing renewed hope to all those who still stand against the Burning Crusade.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12515,0,0,0,'prophet velen - SAY1'),
   (0,-1580100,'As the Legion''s final defeat draws ever-nearer, stand proud in the knowledge that you have saved worlds without number from the flame. Just as this day marks an ending, so too does it herald a new beginning...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12516,0,0,0,'prophet velen - SAY2'),
   (0,-1580101,'The creature Entropius, whom you were forced to destroy, was once the noble naaru, M''uru. In life, M''uru channeled vast energies of LIGHT and HOPE. For a time, a misguided few sought to steal those energies...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12518,0,0,0,'prophet velen - SAY3'),
   (0,-1580102,'Then fortunate it is, that I have reclaimed the noble naaru''s spark from where it fell! Where faith dwells, hope is never lost, young blood elf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12519,0,0,0,'prophet velen - SAY4'),
   (0,-1580103,'Gaze now, mortals - upon the HEART OF M''URU! Unblemished. Bathed by the light of Creation - just as it was at the Dawn.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12520,0,0,0,'prophet velen - SAY5'),
   (0,-1580104,'In time, the light and hope held within - will rebirth more than this mere fount of power... Mayhap, they will rebirth the soul of a nation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12521,0,0,0,'prophet velen - SAY6'),
   (0,-1580105,'Salvation, young one. It waits for us all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12522,0,0,0,'prophet velen - SAY7'),
   (0,-1580106,'Farewell...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12523,0,0,0,'prophet velen - SAY8'),
   (0,-1580107,'Our arrogance was unpardonable. We damned one of the most noble beings of all. We may never atone for this sin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12524,0,0,0,'lady liadrinn - SAY1'),
   (0,-1580108,'Can it be?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12525,0,0,0,'lady liadrinn - SAY2'),
   (0,-1580109,'Blessed ancestors! I feel it... so much love... so much grace... there are... no words... impossible to describe...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12525,0,0,0,'lady liadrinn - SAY3'),

-- -1 585 000 MAGISTER'S TERRACE
   (24723,-1585000,'You only waste my time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12378,1,0,0,'selin SAY_AGGRO'),
   (24723,-1585001,'My hunger knows no bounds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12381,1,0,0,'selin SAY_ENERGY'),
   (24723,-1585002,'Yes! I am a god!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12382,1,0,0,'selin SAY_EMPOWERED'),
   (24723,-1585003,'Enough distractions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12388,1,0,0,'selin SAY_KILL_1'),
   (24723,-1585004,'I am invincible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12385,1,0,0,'selin SAY_KILL_2'),
   (24723,-1585005,'No! More... I must have more!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12383,1,0,0,'selin SAY_DEATH'),
   (24723,-1585006,'%s begins to channel from the nearby Fel Crystal...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'selin EMOTE_CRYSTAL'),
   (24744,-1585007,'Drain...life!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12389,1,0,0,'vexallus SAY_AGGRO'),
   (24744,-1585008,'Un...con...tainable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12392,1,0,0,'vexallus SAY_ENERGY'),
   (24744,-1585009,'Un...leash...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12390,1,0,0,'vexallus SAY_OVERLOAD'),
   (24744,-1585010,'Con...sume.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12393,1,0,0,'vexallus SAY_KILL'),
   (24744,-1585011,'discharges pure energy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'vexallus EMOTE_DISCHARGE_ENERGY'),
   (24560,-1585012,'Annihilate them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12395,1,0,0,'delrissa SAY_AGGRO'),
   (24560,-1585013,'Oh, the horror.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12398,1,0,0,'delrissa LackeyDeath1'),
   (24560,-1585014,'Well, aren''t you lucky?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12400,1,0,0,'delrissa LackeyDeath2'),
   (24560,-1585015,'Now I''m getting annoyed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12401,1,0,0,'delrissa LackeyDeath3'),
   (24560,-1585016,'Lackies be damned! I''ll finish you myself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12403,1,0,0,'delrissa LackeyDeath4'),
   (24560,-1585017,'I call that a good start.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12405,1,0,0,'delrissa PlayerDeath1'),
   (24560,-1585018,'I could have sworn there were more of you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12407,1,0,0,'delrissa PlayerDeath2'),
   (24560,-1585019,'Not really much of a group, anymore, is it?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12409,1,0,0,'delrissa PlayerDeath3'),
   (24560,-1585020,'One is such a lonely number.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12410,1,0,0,'delrissa PlayerDeath4'),
   (24560,-1585021,'It''s been a kick, really.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12411,1,0,0,'delrissa PlayerDeath5'),
   (24560,-1585022,'Not what I had... planned...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12397,1,0,0,'delrissa SAY_DEATH'),
   (24664,-1585023,'Don''t look so smug! I know what you''re thinking, but Tempest Keep was merely a set back. Did you honestly believe I would trust the future to some blind, half-night elf mongrel? Oh no, he was merely an instrument, a stepping stone to a much larger plan! It has all led to this, and this time, you will not interfere!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12413,1,0,0,'kaelthas MT SAY_AGGRO'),
   (24664,-1585024,'Vengeance burns!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12415,1,0,0,'kaelthas MT SAY_PHOENIX'),
   (24664,-1585025,'Felomin ashal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12417,1,0,0,'kaelthas MT SAY_FLAMESTRIKE'),
   (24664,-1585026,'I''ll turn your world... upside... down...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12418,1,0,0,'kaelthas MT SAY_GRAVITY_LAPSE'),
   (24664,-1585027,'Master... grant me strength.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12419,1,0,0,'kaelthas MT SAY_TIRED'),
   (24664,-1585028,'Do not... get too comfortable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12420,1,0,0,'kaelthas MT SAY_RECAST_GRAVITY'),
   (24664,-1585029,'My demise accomplishes nothing! The Master will have you! You will drown in your own blood! This world shall burn! Aaaghh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12421,1,0,0,'kaelthas MT SAY_DEATH'),

-- -1 590 000 VAULT OF ARCHAVON
   (33993,-1590000,'Emalon the Storm Watcher overcharges a Tempest Minion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'emalon EMOTE_OVERCHARGE_TEMPEST_MINION'),
   (33993,-1590001,'A Tempest Minion appears to defend Emalon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'emalon EMOTE_MINION_RESPAWN'),
   (33993,-1590002,'Archavon the Stone Watcher goes into a berserker rage!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'archavon EMOTE_BERSERK'),

-- -1 601 000 AZJOL-NERUB
   (28684,-1601000, 'This kingdom belongs to the Scourge! Only the dead may enter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_AGGRO boss_krik_thir'),
   (28684,-1601001, 'You were foolish to come.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_SLAY_1 boss_krik_thir'),
   (28684,-1601002, 'As Anub''Arak commands!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_SLAY_2 boss_krik_thir'),
   (28684,-1601003, 'I should be grateful. But I long ago lost the capacity.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_DEATH boss_krik_thir'),
   
-- -1 602 000 HALLS OF LIGHTNING
/* Bjarngrim */
   (28586,-1602000,'I am the greatest of my father''s sons! Your end has come!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14149,1,0,0,'bjarngrim SAY_AGGRO'),
   (28586,-1602001,'So ends your curse!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14153,1,0,0,'bjarngrim SAY_SLAY_1'),
   (28586,-1602002,'Flesh... is... weak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14154,1,0,0,'bjarngrim SAY_SLAY_2'),
   (28586,-1602003,'...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14155,1,0,0,'bjarngrim SAY_SLAY_3'),
   (28586,-1602004,'How can it be...? Flesh is not... stronger!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14156,1,0,0,'bjarngrim SAY_DEATH'),
   (28586,-1602005,'Defend yourself, for all the good it will do!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14151,1,0,0,'bjarngrim SAY_BATTLE_STANCE'),
   (28586,-1602006,'%s switches to Battle Stance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'bjarngrim EMOTE_BATTLE_STANCE'),
   (28586,-1602007,'GRAAAAAH! Behold the fury of iron and steel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14152,1,0,0,'bjarngrim SAY_BERSEKER_STANCE'),
   (28586,-1602008,'%s switches to Berserker Stance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'bjarngrim EMOTE_BERSEKER_STANCE'),
   (28586,-1602009,'Give me your worst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14150,1,0,0,'bjarngrim SAY_DEFENSIVE_STANCE'),
   (28586,-1602010,'%s switches to Defensive Stance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'bjarngrim EMOTE_DEFENSIVE_STANCE'),
   (28546,-1602011,'You wish to confront the master? You must weather the storm!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14453,1,0,0,'ionar SAY_AGGRO'),
   (28546,-1602012,'Shocking ... I know!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14456,1,0,0,'ionar SAY_SLAY_1'),
   (28546,-1602013,'You atempt the unpossible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14457,1,0,0,'ionar SAY_SLAY_2'),
   (28546,-1602014,'Your spark of light is ... extinguish.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14458,1,0,0,'ionar SAY_SLAY_3'),
   (28546,-1602015,'Master... you have guests.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14459,1,0,0,'ionar SAY_DEATH'),
   (28546,-1602016,'The slightest spark shall be your undoing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14454,1,0,0,'ionar SAY_SPLIT_1'),
   (28546,-1602017,'No one is safe!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14455,1,0,0,'ionar SAY_SPLIT_2'),
   (28923,-1602018,'What hope is there for you? None!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14162,1,0,0,'loken SAY_AGGRO0'),
   (28923,-1602019,'I have witnessed the rise and fall of empires. The birth and extinction of entire species. Over countless millennia the foolishness of mortals has remained beyond a constant. Your presence here confirms this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14160,1,0,0,'loken SAY_INTRO_1'),
   (28923,-1602020,'My master has shown me the future, and you have no place in it. Azeroth will be reborn in darkness. Yogg-Saron shall be released! The Pantheon shall fall!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14162,1,0,0,'loken SAY_INTRO_2'),
   (28923,-1602021,'Only mortal...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14166,1,0,0,'loken SAY_SLAY_1'),
   (28923,-1602022,'I... am... FOREVER!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14167,1,0,0,'loken SAY_SLAY_2'),
   (28923,-1602023,'What little time you had, you wasted!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14168,1,0,0,'loken SAY_SLAY_3'),
   (28923,-1602024,'My death... heralds the end of this world.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14172,1,0,0,'loken SAY_DEATH'),
   (28923,-1602025,'You cannot hide from fate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14163,1,0,0,'loken SAY_NOVA_1'),
   (28923,-1602026,'Come closer. I will make it quick.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14164,1,0,0,'loken SAY_NOVA_2'),
   (28923,-1602027,'Your flesh cannot hold out for long.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14165,1,0,0,'loken SAY_NOVA_3'),
   (28923,-1602028,'You stare blindly into the abyss!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14169,1,0,0,'loken SAY_75HEALTH'),
   (28923,-1602029,'Your ignorance is profound. Can you not see where this path leads?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14170,1,0,0,'loken SAY_50HEALTH'),
   (28923,-1602030,'You cross the precipice of oblivion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14171,1,0,0,'loken SAY_25HEALTH'),
   (28923,-1602031,'%s begins to cast Lightning Nova!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'loken EMOTE_NOVA'),
   (28587,-1602032,'It is you who have destroyed my children? You... shall... pay!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13960,1,0,0,'volkhan SAY_AGGRO'),
   (28587,-1602033,'The armies of iron will conquer all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13965,1,0,0,'volkhan SAY_SLAY_1'),
   (28587,-1602034,'Ha, pathetic!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13966,1,0,0,'volkhan SAY_SLAY_2'),
   (28587,-1602035,'You have cost me too much work!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13967,1,0,0,'volkhan SAY_SLAY_3'),
   (28587,-1602036,'The master was right... to be concerned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13968,1,0,0,'volkhan SAY_DEATH'),
   (28587,-1602037,'I will crush you beneath my boots!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13963,1,0,0,'volkhan SAY_STOMP_1'),
   (28587,-1602038,'All my work... undone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13964,1,0,0,'volkhan SAY_STOMP_2'),
   (28587,-1602039,'Life from the lifelessness... death for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13961,1,0,0,'volkhan SAY_FORGE_1'),
   (28587,-1602040,'Nothing is wasted in the process. You will see....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13962,1,0,0,'volkhan SAY_FORGE_2'),
   (28587,-1602041,'%s runs to his anvil!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'volkhan EMOTE_TO_ANVIL'),
   (28587,-1602042,'%s prepares to shatter his Brittle Golems!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'volkhan EMOTE_SHATTER'),

-- -1 603 000 HALLS OF STONE
/* Maiden of Grief */
   (27975,-1603000,'You shouldn''t have come...now you will die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13487,1,0,0,'maiden of grief SAY_AGGRO'),
   (27975,-1603001,'Why must it be this way?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13488,1,0,0,'maiden of grief SAY_SLAY_1'),
   (27975,-1603002,'You had it coming!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13489,1,0,0,'maiden of grief SAY_SLAY_2'),
   (27975,-1603003,'My burden grows heavier.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13490,1,0,0,'maiden of grief SAY_SLAY_3'),
   (27975,-1603004,'This is your own fault!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13491,1,0,0,'maiden of grief SAY_SLAY_4'),
   (27975,-1603005,'I hope you all rot! I never...wanted...this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13493,1,0,0,'maiden of grief SAY_DEATH'),
   (27975,-1603006,'So much lost time... that you''ll never get back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13492,1,0,0,'maiden of grief SAY_STUN'),
/* Krystallus */
   (27977,-1603007,'Crush....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14176,1,0,0,'krystallus SAY_AGGRO'),
   (27977,-1603008,'Ha...ha...ha...ha...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14177,1,0,0,'krystallus SAY_KILL'),
   (27977,-1603009,'Uuuuhhhhhhhhhh......',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14179,1,0,0,'krystallus SAY_DEATH'),
   (27977,-1603010,'Break.... you....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14178,1,0,0,'krystallus SAY_SHATTER'),
/* Sjonnir */
   (27978,-1603011,'Soft, vulnerable shells. Brief, fragile lives. You can not escape the curse of flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Sjonnir SAY_AGGRO'),
   (27978,-1603012,'Flesh is no match for iron!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Sjonnir SAY_SLAY_1'),
   (27978,-1603013,'Armies of iron will smother the world!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Sjonnir SAY_SLAY_2'),
   (27978,-1603015,'Loken will not rest, until the forge is retaken. You changed nothing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Sjonnir SAY_DEATH'),
   (28070,-1603016,'Now that''s owning your supper!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14244,1,0,0,'brann SAY_KILL_1'),
   (28070,-1603017,'Press on, that''s the way!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14245,1,0,0,'brann SAY_KILL_2'),
   (28070,-1603018,'Keep it up now. Plenty of death-dealing for everyone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14246,1,0,0,'brann SAY_KILL_3'),
   (28070,-1603019,'I''m all kinds of busted up. Might not... make it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14257,1,0,0,'brann SAY_LOW_HEALTH'),
   (28070,-1603020,'Not yet, not... yet-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14258,1,0,0,'brann SAY_DEATH'),
   (28070,-1603021,'I''m doing everything I can!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14260,1,0,0,'brann SAY_PLAYER_DEATH_1'),
   (28070,-1603022,'Light preserve you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14261,1,0,0,'brann SAY_PLAYER_DEATH_2'),
   (28070,-1603023,'I hope this is all worth it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14262,1,0,0,'brann SAY_PLAYER_DEATH_3'),
   (28070,-1603024,'Time to get some answers! Let''s get this show on the road!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14259,1,0,0,'brann SAY_ESCORT_START'),
   (28070,-1603025,'Don''t worry. Old Brann has got your back. Keep that metal monstrosity busy and I''ll see if I can sweet talk this machine into helping you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14274,1,0,0,'brann SAY_SPAWN_DWARF'),
   (28070,-1603026,'This is a wee bit trickier that before... Oh, bloody--incomin''!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14275,1,0,0,'brann SAY_SPAWN_TROGG'),
   (28070,-1603027,'What in the name o'' Madoran did THAT do? Oh! Wait: I just about got it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14276,1,0,0,'brann SAY_SPAWN_OOZE'),
   (28070,-1603028,'Ha, that did it. Help''s a-coming. Take this you glow-eying brute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14277,1,0,0,'brann SAY_SPAWN_EARTHEN'),
   (28070,-1603029,'Take a moment and relish this with me! Soon all will be revealed! Okay then, let''s do this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14247,1,0,0,'brann SAY_EVENT_INTRO_1'),
   (28070,-1603030,'Now keep an eye out! I''ll have this licked in two shakes of a--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14248,1,0,0,'brann SAY_EVENT_INTRO_2'),
   (28070,-1603031,'Warning! Life form pattern not recognized. Archival processing terminated. Continued interference will result in targeted response.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13765,1,0,0,'brann SAY_EVENT_INTRO_3_ABED'),
   (28070,-1603032,'Oh, that doesn''t sound good. We might have a complication or two...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14249,1,0,0,'brann SAY_EVENT_A_1'),
   (28070,-1603033,'Security breach in progress. Analysis of historical archives transferred to lower priority queue. Countermeasures engaged.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13756,1,0,0,'brann SAY_EVENT_A_2_KADD'),
   (28070,-1603034,'Ah, you want to play hardball, eh? That''s just my game!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14250,1,0,0,'brann SAY_EVENT_A_3'),
   (28070,-1603035,'Couple more minutes and I''ll--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14251,1,0,0,'brann SAY_EVENT_B_1'),
   (28070,-1603036,'Threat index threshold exceeded. Celestial archive aborted. Security level heightened.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13761,1,0,0,'brann SAY_EVENT_B_2_MARN'),
   (28070,-1603037,'Heightened? What''s the good news?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14252,1,0,0,'brann SAY_EVENT_B_3'),
   (28070,-1603038,'So that was the problem? Now I''m makin'' progress...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14253,1,0,0,'brann SAY_EVENT_C_1'),
   (28070,-1603039,'Critical threat index. Void analysis diverted. Initiating sanitization protocol.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13767,1,0,0,'brann SAY_EVENT_C_2_ABED'),
   (28070,-1603040,'Hang on! Nobody''s gonna'' be sanitized as long as I have a say in it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14254,1,0,0,'brann SAY_EVENT_C_3'),
   (28070,-1603041,'Ha! The old magic fingers finally won through! Now let''s get down to-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14255,1,0,0,'brann SAY_EVENT_D_1'),
   (28070,-1603042,'Alert! Security fail safes deactivated. Beginning memory purge...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13768,1,0,0,'brann SAY_EVENT_D_2_ABED'),
   (28070,-1603043,'Purge? No no no no no! Where did I-- Aha, this should do the trick...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14256,1,0,0,'brann SAY_EVENT_D_3'),
   (28070,-1603044,'System online. Life form pattern recognized. Welcome Branbronzan. Query?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13769,1,0,0,'brann SAY_EVENT_D_4_ABED'),
   (28070,-1603045,'Query? What do you think I&#65533;m here for? Tea and biscuits? Spill the beans already!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14263,1,0,0,'brann SAY_EVENT_END_01'),
   (28070,-1603046,'Tell me how that dwarfs came to be! And start at the beginning!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14264,1,0,0,'brann SAY_EVENT_END_02'),
   (28070,-1603047,'Accessing prehistoric data. Retrieved. In the beginning Earthen were created to-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13770,1,0,0,'brann SAY_EVENT_END_03_ABED'),
   (28070,-1603048,'Right, right! I know that the Earthen were made of stone to shape the deep reaches of the world but what about the anomalies? Matrix non-stabilizing and whatnot.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14265,1,0,0,'brann SAY_EVENT_END_04'),
   (28070,-1603049,'Accessing. In the early stages of its development cycle Azeroth suffered infection by parasitic, necrophotic symbiotes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13771,1,0,0,'brann SAY_EVENT_END_05_ABED'),
   (28070,-1603050,'Necro-what? Speak bloody common will ya?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14266,1,0,0,'brann SAY_EVENT_END_06'),
   (28070,-1603051,'Designation: Old Gods. Old Gods rendered all systems, including Earthen defenseless in order to facilitate assimilation. This matrix destabilization has been termed the Curse of Flesh. Effects of destabilization increased over time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13772,1,0,0,'brann SAY_EVENT_END_07_ABED'),
   (28070,-1603052,'Old Gods eh? So they zapped the Earthen with this Curse of Flesh. And then what?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14267,1,0,0,'brann SAY_EVENT_END_08'),
   (28070,-1603053,'Accessing. Creators arrived to extirpate symbiotic infection. Assessment revealed that Old God infestation had grown malignant. Excising parasites would result in loss of host.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13757,1,0,0,'brann SAY_EVENT_END_09_KADD'),
   (28070,-1603054,'If they killed the Old Gods Azeroth would have been destroyed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14268,1,0,0,'brann SAY_EVENT_END_10'),
   (28070,-1603055,'Correct. Creators neutralized parasitic threat and contained it within the host. Forge of Wills and other systems were instituted to create new Earthen. Safeguards were implemented and protectors were appointed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13758,1,0,0,'brann SAY_EVENT_END_11_KADD'),
   (28070,-1603056,'What protectors?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14269,1,0,0,'brann SAY_EVENT_END_12'),
   (28070,-1603057,'Designations: Aesir and Vanir or in common nomenclator Storm and Earth Giants. Sentinel Loken designated supreme. Dragon Aspects appointed to monitor evolution of Azeroth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13759,1,0,0,'brann SAY_EVENT_END_13_KADD'),
   (28070,-1603058,'Aesir and Vanir. Okay. So the Forge of Wills started to make new Earthen. But what happened to the old ones?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14270,1,0,0,'brann SAY_EVENT_END_14'),
   (28070,-1603059,'Additional background is relevant to your query. Following global combat between-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13762,1,0,0,'brann SAY_EVENT_END_15_MARN'),
   (28070,-1603060,'Hold everything! The Aesir and Vanir went to war? Why?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14271,1,0,0,'brann SAY_EVENT_END_16'),
   (28070,-1603061,'Unknown. Data suggests that impetus for global combat originated with prime designate Loken who neutralized all remaining Aesir and Vanir affecting termination of conflict. Prime designate Loken then initiated stasis of several seed races including Earthen, Giant and Vrykul at designated holding facilities.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13763,1,0,0,'brann SAY_EVENT_END_17_MARN'),
   (28070,-1603062,'This Loken sounds like a nasty character. Glad we don&#65533;t have to worry about the likes of him anymore. So if I&#65533;m understanding you lads the original Earthen eventually woke up from this statis. And by that time this destabily-whatever had turned them into our brother dwarfs. Or at least dwarf ancestors. Hm?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14272,1,0,0,'brann SAY_EVENT_END_18'),
   (28070,-1603063,'Essentially that is correct.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13764,1,0,0,'brann SAY_EVENT_END_19_MARN'),
   (28070,-1603064,'Well now. That&#65533;s a lot to digest. I&#65533;m gonna need some time to take all of this in. Thank you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14273,1,0,0,'brann SAY_EVENT_END_20'),
   (28070,-1603065,'Acknowledged Branbronzan. Session terminated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13773,1,0,0,'brann SAY_EVENT_END_21_ABED'),
   (28070,-1603066,'Loken?! That''s downright bothersome... We might''ve neutralized the iron dwarves, but I''d lay odds there''s another machine somewhere else churnin'' out a whole mess o'' these iron vrykul!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14278,1,0,0,'brann SAY_VICTORY_SJONNIR_1'),
   (28070,-1603067,'I''ll use the forge to make badtches o'' earthen to stand guard... But our greatest challenge still remains: find and stop Loken!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14279,1,0,0,'brann SAY_VICTORY_SJONNIR_2'),
   (28070,-1603068,'I think it''s time to see what''s behind the door near the entrance. I''m going to sneak over there, nice and quiet. Meet me at the door and I''ll get us in.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'brann SAY_ENTRANCE_MEET'),

-- -1 604 000 GUNDRAK
/* Moorabi */
   (29305,-1604010,'We fought back da Scourge. What chance joo be thinkin'' JOO got?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'SAY_AGGRO boss_moorabi'),
   (29305,-1604012,'Who gonna stop me; you? ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'SAY_SLAY_2 boss_moorabi'),
   (29305,-1604013,'Not so tough now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'SAY_SLAY_3 boss_moorabi'),
   (29305,-1604014,'If our gods can die... den so can we... ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'SAY_DEATH boss_moorabi'),
   (29305,-1604015,'Get ready for somethin''... much... BIGGAH! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'SAY_TRANSFORM boss_moorabi'),
   (29305,-1604016,'Da ground gonna swallow you up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'SAY_QUAKE boss_moorabi'),
   (29305,-1604017,'%s begins to transform!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_TRANSFORM boss_moorabi'),
   
-- -1 615 000 OBSIDIAN SANCTUM
   (30451,-1615000,'I fear nothing! Least of all you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14111,1,0,0,'shadron SAY_SHADRON_AGGRO'),
   (30451,-1615001,'You are insignificant!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14112,1,0,0,'shadron SAY_SHADRON_SLAY_1'),
   (30451,-1615002,'Such mediocre resistance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14113,1,0,0,'shadron SAY_SHADRON_SLAY_2'),
   (30451,-1615003,'We...are superior! How could this...be...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14118,1,0,0,'shadron SAY_SHADRON_DEATH'),
   (30451,-1615004,'You are easily bested! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14114,1,0,0,'shadron SAY_SHADRON_BREATH'),
   (30451,-1615005,'I will take pity on you Sartharion, just this once.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14117,1,0,0,'shadron SAY_SHADRON_RESPOND'),
   (30451,-1615006,'Father tought me well!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14115,1,0,0,'shadron SAY_SHADRON_SPECIAL_1'),
   (30451,-1615007,'On your knees!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14116,1,0,0,'shadron SAY_SHADRON_SPECIAL_2'),
   (28860,-1615008,'A Shadron Disciple appears in the Twilight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,5,0,0,'shadron WHISPER_SHADRON_DICIPLE'),
   (30452,-1615009,'You have no place here. Your place is among the departed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14122,1,0,0,'tenebron SAY_TENEBRON_AGGRO'),
   (30452,-1615010,'No contest.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14123,1,0,0,'tenebron SAY_TENEBRON_SLAY_1'),
   (30452,-1615011,'Typical... Just as I was having fun.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14124,1,0,0,'tenebron SAY_TENEBRON_SLAY_2'),
   (30452,-1615012,'I should not... have held back...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14129,1,0,0,'tenebron SAY_TENEBRON_DEATH'),
   (30452,-1615013,'To darkness I condemn you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14125,1,0,0,'tenebron SAY_TENEBRON_BREATH'),
   (30452,-1615014,'It is amusing to watch you struggle. Very well, witness how it is done.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14128,1,0,0,'tenebron SAY_TENEBRON_RESPOND'),
   (30452,-1615015,'Arrogant little creatures! To challenge powers you do not yet understand...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14126,1,0,0,'tenebron SAY_TENEBRON_SPECIAL_1'),
   (30452,-1615016,'I am no mere dragon! You will find I am much, much, more...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14127,1,0,0,'tenebron SAY_TENEBRON_SPECIAL_2'),
   (28860,-1615017,'%s begins to hatch eggs in the twilight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,5,0,0,'tenebron WHISPER_HATCH_EGGS'),
   (28860,-1615018,'It is my charge to watch over these eggs. I will see you burn before any harm comes to them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14093,1,0,0,'sartharion SAY_SARTHARION_AGGRO'),
   (28860,-1615019,'This pathetic siege ends NOW!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14103,1,0,0,'sartharion SAY_SARTHARION_BERSERK'),
   (28860,-1615020,'Burn, you miserable wretches!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14098,1,0,0,'sartharion SAY_SARTHARION_BREATH'),
   (28860,-1615021,'Shadron! Come to me, all is at risk!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14105,1,0,0,'sartharion SARTHARION_CALL_SHADRON'),
   (28860,-1615022,'Tenebron! The eggs are yours to protect as well!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14106,1,0,0,'sartharion SAY_SARTHARION_CALL_TENEBRON'),
   (28860,-1615023,'Vesperon! The clutch is in danger! Assist me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14104,1,0,0,'sartharion SAY_SARTHARION_CALL_VESPERON'),
   (28860,-1615024,'Such is the price... of failure...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14107,1,0,0,'sartharion SAY_SARTHARION_DEATH'),
   (28860,-1615025,'Such flammable little insects....',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14099,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_1'),
   (28860,-1615026,'Your charred bones will litter the floor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14100,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_2'),
   (28860,-1615027,'How much heat can you take?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14101,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_3'),
   (28860,-1615028,'All will be reduced to ash!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14102,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_4'),
   (28860,-1615029,'You will make a fine meal for the hatchlings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14094,1,0,0,'sartharion SAY_SARTHARION_SLAY_1'),
   (28860,-1615030,'You are the grave disadvantage.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14096,1,0,0,'sartharion SAY_SARTHARION_SLAY_2'),
   (28860,-1615031,'This is why we call you lesser beeings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14097,1,0,0,'sartharion SAY_SARTHARION_SLAY_3'),
   (28860,-1615032,'The lava surrounding %s churns!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,5,0,0,'sartharion WHISPER_LAVA_CHURN'),
   (30449,-1615033,'You pose no threat, lesser beings...give me your worst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14133,1,0,0,'vesperon SAY_VESPERON_AGGRO'),
   (30449,-1615034,'The least you could do is put up a fight...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14134,1,0,0,'vesperon SAY_VESPERON_SLAY_1'),
   (30449,-1615035,'Was that the best you can do?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14135,1,0,0,'vesperon SAY_VESPERON_SLAY_2'),
   (30449,-1615036,'I still have some...fight..in...me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14140,1,0,0,'vesperon SAY_VESPERON_DEATH'),
   (30449,-1615037,'I will pick my teeth with your bones!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14136,1,0,0,'vesperon SAY_VESPERON_BREATH'),
   (30449,-1615038,'Father was right about you, Sartharion...You are a weakling!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14139,1,0,0,'vesperon SAY_VESPERON_RESPOND'),
   (30449,-1615039,'Aren''t you tricky...I have a few tricks of my own...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14137,1,0,0,'vesperon SAY_VESPERON_SPECIAL_1'),
   (30449,-1615040,'Unlike, I have many talents.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14138,1,0,0,'vesperon SAY_VESPERON_SPECIAL_2'),
   (28860,-1615041,'A Vesperon Disciple appears in the Twilight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,5,0,0,'shadron WHISPER_VESPERON_DICIPLE'),
   (28860,-1615042,'%s begins to open a Twilight Portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,5,0,0,'sartharion drake WHISPER_OPEN_PORTAL'),

-- -1 619 000 AHN'KAHET: THE OLD KINGDOM
   (29308,-1619021,'I will feast on your remains.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'prince taldaram SAY_AGGRO'),
   (29308,-1619022,'I will drink no blood before it''s time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'prince taldaram SAY_SLAY_1'),
   (29308,-1619023,'One final embrace.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'prince taldaram SAY_SLAY_2'),
   (29308,-1619024,'Still I hunger, still I thirst.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'prince taldaram SAY_DEATH'),
   (29308,-1619025,'So appetizing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'prince taldaram SAY_FEED1'),
   (29308,-1619026,'Fresh, warm blood. It has been too long.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'prince taldaram SAY_FEED2'),
   (29308,-1619027,'Your heartbeat is music to my ears.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'prince taldaram SAY_VANISH1'),
   (29308,-1619028,'I am nowhere. I am everywhere. I am the watcher, unseen.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'prince taldaram SAY_VANISH2'),
   
-- -1 999 900+ - RANDOM
   (0,-1999900,'Let the games begin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8280,1,0,0,'example_creature SAY_AGGRO'),
   (0,-1999901,'I see endless suffering. I see torment. I see rage. I see everything.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8831,1,0,0,'example_creature SAY_RANDOM_0'),
   (0,-1999902,'Muahahahaha',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8818,1,0,0,'example_creature SAY_RANDOM_1'),
   (0,-1999903,'These mortal infedels my lord, they have invaded your sanctum and seek to steal your secrets.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8041,1,0,0,'example_creature SAY_RANDOM_2'),
   (0,-1999904,'You are already dead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8581,1,0,0,'example_creature SAY_RANDOM_3'),
   (0,-1999905,'Where to go? What to do? So many choices that all end in pain, end in death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8791,1,0,0,'example_creature SAY_RANDOM_4'),
   (0,-1999906,'$N, I sentance you to death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8588,1,0,0,'example_creature SAY_BESERK'),
   (0,-1999907,'The suffering has just begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'example_creature SAY_PHASE'),
   (0,-1999908,'I always thought I was a good dancer.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_creature SAY_DANCE'),
   (0,-1999909,'Move out Soldier!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_creature SAY_SALUTE'),
   (0,-1999910,'Help $N! I''m under attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_AGGRO1'),
   (0,-1999911,'Die scum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_AGGRO2'),
   (0,-1999912,'Hmm a nice day for a walk alright',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_WP_1'),
   (0,-1999913,'Wild Felboar attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_WP_2'),
   (0,-1999914,'Time for me to go! See ya around $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,'example_escort SAY_WP_3'),
   (0,-1999915,'Bye Bye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,'example_escort SAY_WP_4'),
   (0,-1999916,'How dare you leave me like that! I hate you! =*(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'example_escort SAY_DEATH_1'),
   (0,-1999917,'...no...how could you let me die $N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_DEATH_2'),
   (0,-1999918,'ugh...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_DEATH_3'),
   (0,-1999919,'Taste death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_SPELL'),
   (0,-1999920,'Fireworks!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_RAND_1'),
   (0,-1999921,'Hmm, I think I could use a buff.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_escort SAY_RAND_2'),
   (0,-1999922,'Normal select, guess you''re not interested.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_gossip_codebox SAY_NOT_INTERESTED'),
   (0,-1999923,'Wrong!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_gossip_codebox SAY_WRONG'),
   (0,-1999924,'You''re right, you are allowed to see my inner secrets.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_gossip_codebox SAY_CORRECT'),
   (0,-1999925,'Hi!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'example_areatrigger SAY_HI'),

-- -1 609 000 - THE SCARLET ENCLAVE
   (29519,-1609000,'You have made a grave error, fiend!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_1'),
   (29519,-1609001,'I was a soldier of the Light once... Look at what I have become... ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_2'),
   (29519,-1609002,'You are hopelessly outmatched\, $R.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_3'),
   (29519,-1609003,'They brand me unworthy? I will show them unmorthy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_4'),
   (29519,-1609004,'You will allow me a weapon and armor, yes?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_5'),
   (29519,-1609005,'I will win my freedom and leave this cursed place!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_6'),
   (29519,-1609006,'I will dismantle this festering hellhole!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_7'),
   (29519,-1609007,'There can be only one survivor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_START_8'),
   (29519,-1609008,'To battle!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_1'),
   (29519,-1609009,'Let your fears consume you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_2'),
   (29519,-1609010,'HAH! You can barely hold a blade! Yours will be a quick death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_3'),
   (29519,-1609011,'And now you die',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_4'),
   (29519,-1609012,'To battle!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_5'),
   (29519,-1609013,'There is no hope for our future...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_6'),
   (29519,-1609014,'Sate your hunger on cold steel\, $R',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_7'),
   (29519,-1609015,'It ends here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_8'),
   (29519,-1609016,'Death is the only cure!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'unworthy_initiate SAY_EVENT_ATTACK_9'),
   (29032,-1609025,'Come to finish the job, have you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_START_1'),
   (29032,-1609026,'Come to finish the job, have ye?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_START_2'),
   (29032,-1609027,'Come ta finish da job, mon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_START_3'),
   (29032,-1609028,'You''ll look me in the eyes when...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_1'),
   (29032,-1609029,'Well this son o'' Ironforge would like...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_2'),
   (29032,-1609030,'Ironic, isn''t it? To be killed...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_3'),
   (29032,-1609031,'If you''d allow me just one...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_4'),
   (29032,-1609032,'I''d like to stand for...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_5'),
   (29032,-1609033,'I want to die like an orc...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_6'),
   (29032,-1609034,'Dis troll gonna stand for da...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'special_surprise SAY_EXEC_PROG_7'),
   (29032,-1609035,'$N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NAME_1'),
   (29032,-1609036,'$N? Mon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NAME_2'),
   (29032,-1609037,'$N, I''d recognize that face anywhere... What... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_1'),
   (29032,-1609038,'$N, I''d recognize those face tentacles anywhere... What... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_2'),
   (29032,-1609039,'$N, I''d recognize that face anywhere... What... What have they done to ye, $Glad:lass;?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_3'),
   (29032,-1609040,'$N, I''d recognize that decay anywhere... What... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_4'),
   (29032,-1609041,'$N, I''d recognize those horns anywhere... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_5'),
   (29032,-1609042,'$N, I''d recognize dem tusks anywhere... What... What have dey done ta you, mon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_RECOG_6'),
   (29032,-1609043,'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_1'),
   (29032,-1609044,'Ye don''t remember me, do ye? Blasted Scourge... They''ve tried to drain ye o'' everything that made ye a righteous force o'' reckoning. Every last ounce o'' good... Everything that made you a $Gson:daughter; of Ironforge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_2'),
   (29032,-1609045,'You don''t remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_3'),
   (29032,-1609046,'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_4'),
   (29032,-1609047,'You don''t remember me, do you? Blasted Scourge...They''ve tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_5'),
   (29032,-1609048,'You don''t remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep''s milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_6'),
   (29032,-1609049,'You don''t recognize me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_7'),
   (29032,-1609050,'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_8'),
   (29032,-1609051,'You don''t remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin'' dat made ya a troll hero, mon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_NOREM_9'),
   (29032,-1609052,'A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_THINK_1'),
   (29032,-1609053,'You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn''t you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_THINK_2'),
   (29032,-1609054,'Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin''dorei once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_3'),
   (29032,-1609055,'Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_4'),
   (29032,-1609056,'Think, $N. Think back. Try and remember the snow capped mountains o'' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o'' life, $N! Ye were a champion o'' the dwarves once! This isn''t ye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_5'),
   (29032,-1609057,'Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_6'),
   (29032,-1609058,'Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_7'),
   (29032,-1609059,'Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn''t you. You were a champion of the Horde once!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_8'),
   (29032,-1609060,'Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn''t you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_9'),
   (29032,-1609061,'TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'special_surprise SAY_EXEC_THINK_10'),
   (29032,-1609062,'Listen to me, $N. You must fight against the Lich King''s control. He is a monster that wants to see this world - our world - in ruin. Don''t let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'special_surprise SAY_EXEC_LISTEN_1'),
   (29032,-1609063,'Listen to me, $N Ye must fight against the Lich King''s control. He''s a monster that wants to see this world - our world - in ruin. Don''t let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'special_surprise SAY_EXEC_LISTEN_2'),
   (29032,-1609064,'Listen to me, $N. You must fight against the Lich King''s control. He is a monster that wants to see this world - our world - in ruin. Don''t let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'special_surprise SAY_EXEC_LISTEN_3'),
   (29032,-1609065,'Listen ta me, $Gbrudda:sista;. You must fight against da Lich King''s control. He be a monstar dat want ta see dis world - our world - be ruined. Don''t let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'special_surprise SAY_EXEC_LISTEN_4'),
   (29032,-1609066,'What''s going on in there? What''s taking so long, $N?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'special_surprise SAY_PLAGUEFIST'),
   (29032,-1609067,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Silvermoon. This world is worth saving!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_1'),
   (29032,-1609068,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Argus. Don''t let that happen to this world.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_2'),
   (29032,-1609069,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_3'),
   (29032,-1609070,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Tirisfal! This world is worth saving!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_4'),
   (29032,-1609071,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Gnomeregan! This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_5'),
   (29032,-1609072,'There... There''s no more time for me. I''m done for. FInish me off, $N. Do it or they''ll kill us both. $N...Remember Elwynn. This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_6'),
   (29032,-1609073,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_7'),
   (29032,-1609074,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... For the Horde! This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_8'),
   (29032,-1609075,'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Mulgore. This world is worth saving.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_9'),
   (29032,-1609076,'Der... Der''s no more time for me. I be done for. Finish me off $N. Do it or they''ll kill us both. $N... Remember Sen''jin Village, mon! Dis world be worth saving!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,18,'special_surprise SAY_EXEC_TIME_10'),
   (29032,-1609077,'Do it, $N! Put me out of my misery!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'special_surprise SAY_EXEC_WAITING'),
   (29032,-1609078,'%s dies from his wounds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'special_surprise EMOTE_DIES'),
   (28406,-1609080,'No potions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_A'),
   (28406,-1609081,'Remember this day, $n, for it is the day that you will be thoroughly owned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_B'),
   (28406,-1609082,'I''m going to tear your heart out, cupcake!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_C'),
   (28406,-1609083,'Don''t make me laugh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_D'),
   (28406,-1609084,'Here come the tears...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_E'),
   (28406,-1609085,'You have challenged death itself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_F'),
   (28406,-1609086,'The Lich King will see his true champion on this day!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_G'),
   (28406,-1609087,'You''re going down!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_H'),
   (28406,-1609088,'You don''t stand a chance, $n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'dk_initiate SAY_DUEL_I'),
   (0,-1609089,'I''ll need to get my runeblade and armor... Just need a little more time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,399,'koltira SAY_BREAKOUT1'),
   (0,-1609090,'I''m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you''ll be destroyed by their spells.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'koltira SAY_BREAKOUT2'),
   (0,-1609091,'Maintaining this barrier will require all of my concentration. Kill them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,16,'koltira SAY_BREAKOUT3'),
   (0,-1609092,'There are more coming. Defend yourself! Don''t fall out of the anti-magic field! They''ll tear you apart without its protection!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'koltira SAY_BREAKOUT4'),
   (0,-1609093,'I can''t keep barrier up much longer... Where is that coward?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'koltira SAY_BREAKOUT5'),
   (0,-1609094,'The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'koltira SAY_BREAKOUT6'),
   (0,-1609095,'Stay in the anti-magic field! Make them come to you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'koltira SAY_BREAKOUT7'),
   (0,-1609096,'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I''ll be fine on my own.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'koltira SAY_BREAKOUT8'),
   (0,-1609097,'I''ll draw their fire, you make your escape behind me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'koltira SAY_BREAKOUT9'),
   (0,-1609098,'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'koltira SAY_BREAKOUT10'),


-- How To Win Friends And Influence Enemies
   (28939,-1609501,'I''ll tear the secrets from your soul! Tell me about the "Crimson Dawn" and your life may be spared!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE1'),
   (28939,-1609502,'Tell me what you know about "Crimson Dawn" or the beatings will continue!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE2'),
   (28939,-1609503,'I''m through being courteous with your kind, human! What is the "Crimson Dawn?"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE3'),
   (28939,-1609504,'Is your life worth so little? Just tell me what I need to know about "Crimson Dawn" and I''ll end your suffering quickly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE4'),
   (28939,-1609505,'I can keep this up for a very long time, Scarlet dog! Tell me about the "Crimson Dawn!"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE5'),
   (28939,-1609506,'What is the "Crimson Dawn?"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE6'),
   (28939,-1609507,'"Crimson Dawn!" What is it! Speak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'player SAY_PERSUADE7'),
   (28939,-1609508,'You''ll be hanging in the gallows shortly, Scourge fiend!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER1'),
   (28939,-1609509,'You''ll have to kill me, monster! I will tell you NOTHING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER2'),
   (28939,-1609510,'You hit like a girl. Honestly. Is that the best you can do?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER3'),
   (28939,-1609511,'ARGH! You burned my last good tabard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER4'),
   (28939,-1609512,'Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER5'),
   (28939,-1609513,'I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'crusader SAY_CRUSADER6'),
   (28939,-1609514,'I''ll tell you everything! STOP! PLEASE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED1'),
   (28939,-1609515,'We... We have only been told that the "Crimson Dawn" is an awakening. You see, the Light speaks to the High General. It is the Light...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED2'),
   (28939,-1609516,'The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED3'),
   (28939,-1609517,'I know very little else... The High General chooses who may go and who must stay behind. There''s nothing else... You must believe me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED4'),
   (28939,-1609518,'LIES! The pain you are about to endure will be talked about for years to come!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'break crusader SAY_PERSUADED5'),
   (28939,-1609519,'NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,20,'break crusader SAY_PERSUADED6'),
-- Ambush At The Overlook
   (29076,-1609531,'Hrm, what a strange tree. I must investigate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Scarlet Courier SAY_TREE1'),
   (29076,-1609532,'What''s this!? This isn''t a tree at all! Guards! Guards!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Scarlet Courier SAY_TREE2'),
-- Bloody Breakout
   (28912,-1609561,'I''ll need to get my runeblade and armor... Just need a little more time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,399,'Koltira Deathweaver SAY_BREAKOUT1'),
   (28912,-1609562,'I''m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you''ll be destroyed by their spells.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT2'),
   (28912,-1609563,'Maintaining this barrier will require all of my concentration. Kill them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,16,'Koltira Deathweaver SAY_BREAKOUT3'),
   (28912,-1609564,'There are more coming. Defend yourself! Don''t fall out of the anti-magic field! They''ll tear you apart without its protection!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT4'),
   (28912,-1609565,'I can''t keep barrier up much longer... Where is that coward?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT5'),
   (28912,-1609566,'The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT6'),
   (28912,-1609567,'Stay in the anti-magic field! Make them come to you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT7'),
   (28912,-1609568,'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I''ll be fine on my own.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT8'),
   (28912,-1609569,'I''ll draw their fire, you make your escape behind me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT9'),
   (28912,-1609570,'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Koltira Deathweaver SAY_BREAKOUT10'),
   (29001,-1609581,'The Crusade will purge your kind from this world!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'High Inquisitor Valroth start'),
   (29001,-1609582,'It seems that I''ll need to deal with you myself. The High Inquisitor comes for you, Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'High Inquisitor Valroth aggro'),
   (29001,-1609583,'You have come seeking deliverance? I have come to deliver!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'High Inquisitor Valroth yell'),
   (29001,-1609584,'LIGHT PURGE YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'High Inquisitor Valroth yell'),
   (29001,-1609585,'Coward!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'High Inquisitor Valroth yell'),
   (29001,-1609586,'High Inquisitor Valroth''s remains fall to the ground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'High Inquisitor Valroth death'),


-- The Light of Dawn
-- pre text
   (29173,-1609201,'Soldiers of the Scourge, stand ready! You will soon be able to unleash your fury upon the Argent Dawn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14677,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609202,'The sky weeps at the devastation of sister earth! Soon, tears of blood will rain down upon us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14678,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609203,'Death knights of Acherus, the death march begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14681,1,0,0,'Highlord Darion Mograine'),
-- intro
   (29173,-1609204,'Soldiers of the Scourge, death knights of Acherus, minions of the darkness: hear the call of the Highlord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14679,1,0,22,'Highlord Darion Mograine'),
   (29173,-1609205,'RISE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14680,1,0,15,'Highlord Darion Mograine'),
   (29173,-1609206,'The skies turn red with the blood of the fallen! The Lich King watches over us, minions! Onward! Leave only ashes and misery in your destructive wake!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14682,1,0,25,'Highlord Darion Mograine'),
-- During the fight
   (29173,-1609207,'Scourge armies approach!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Korfax, Champion of the Light'),
   (29173,-1609208,'Stand fast, brothers and sisters! The Light will prevail!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14487,1,0,0,'Lord Maxwell Tyrosus'),
   (29173,-1609209,'Kneel before the Highlord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14683,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609210,'You stand no chance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14684,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609211,'The Scourge will destroy this place!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14685,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609212,'Your life is forfeit.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14686,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609213,'Life is meaningless without suffering.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14687,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609214,'How much longer will your forces hold out?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14688,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609215,'The Argent Dawn is finished!"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14689,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609216,'Spare no one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14690,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609217,'What is this?! My... I cannot strike...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14691,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609218,'Obey me, blade!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14692,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609219,'You will do as I command! I am in control here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14693,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609220,'I can not... the blade fights me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14694,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609221,'What is happening to me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14695,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609222,'Power...wanes...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14696,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609223,'Ashbringer defies me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14697,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609224,'Minions, come to my aid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14698,0,0,0,'Highlord Darion Mograine'),
-- After the fight
   (29173,-1609225,'You cannot win, Darion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14584,1,0,0,'Highlord Tirion Fordring'),
   (29173,-1609226,'Bring them before the chapel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14585,1,0,0,'Highlord Tirion Fordring'),
   (29173,-1609227,'Stand down, death knights. We have lost... The Light... This place... No hope...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14699,0,0,68,'Highlord Darion Mograine'),
   (29173,-1609228,'Have you learned nothing, boy? You have become all that your father fought against! Like that coward, Arthas, you allowed yourself to be consumed by the darkness...the hate... Feeding upon the misery of those you tortured and killed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14586,0,0,378,'Highlord Tirion Fordring'),
   (29173,-1609229,'Your master knows what lies beneath the chapel. It is why he dares not show his face! He''s sent you and your death knights to meet their doom, Darion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14587,0,0,25,'Highlord Tirion Fordring'),
   (29173,-1609230,'What you are feeling right now is the anguish of a thousand lost souls! Souls that you and your master brought here! The Light will tear you apart, Darion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14588,0,0,1,'Highlord Tirion Fordring'),
   (29173,-1609231,'Save your breath, old man. It might be the last you ever draw.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14700,0,0,25,'Highlord Darion Mograine'),
   (29173,-1609232,'My son! My dear, beautiful boy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14493,0,0,0,'Highlord Alexandros Mograine'),
   (29173,-1609233,'Father!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14701,0,0,5,'Highlord Darion Mograine'),
   (29173,-1609234,'Argh...what...is...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14702,0,0,68,'Highlord Darion Mograine'),
   (29173,-1609235,'Father, you have returned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14703,0,0,0,'Darion Mograine'),
   (29173,-1609236,'You have been gone a long time, father. I thought...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14704,0,0,0,'Darion Mograine'),
   (29173,-1609237,'Nothing could have kept me away from here, Darion. Not from my home and family.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14494,0,0,1,'Highlord Alexandros Mograine'),
   (29173,-1609238,'Father, I wish to join you in the war against the undead. I want to fight! I can sit idle no longer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14705,0,0,6,'Darion Mograine'),
   (29173,-1609239,'Darion Mograine, you are barely of age to hold a sword, let alone battle the undead hordes of Lordaeron! I couldn''t bear losing you. Even the thought...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14495,0,0,1,'Highlord Alexandros Mograine'),
   (29173,-1609240,'If I die, father, I would rather it be on my feet, standing in defiance against the undead legions! If I die, father, I die with you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14706,0,0,6,'Darion Mograine'),
   (29173,-1609241,'My son, there will come a day when you will command the Ashbringer and, with it, mete justice across this land. I have no doubt that when that day finally comes, you will bring pride to our people and that Lordaeron will be a better place because of you. But, my son, that day is not today.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14496,0,0,1,'Highlord Alexandros Mograine'),
   (29173,-1609242,'Do not forget...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14497,0,0,6,'Highlord Alexandros Mograine'),
   (29173,-1609243,'Touching...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14803,1,0,0,'The Lich King'),
   (29173,-1609244,'You have''ve betrayed me! You betrayed us all you monster! Face the might of Mograine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14707,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609245,'He''s mine now...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14805,0,0,0,'The Lich King'),
   (29173,-1609246,'Pathetic...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14804,0,0,0,'The Lich King'),
   (29173,-1609247,'You''re a damned monster, Arthas!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14589,0,0,25,'Highlord Tirion Fordring'),
   (29173,-1609248,'You were right, Fordring. I did send them in to die. Their lives are meaningless, but yours...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14806,0,0,1,'The Lich King'),
   (29173,-1609249,'How simple it was to draw the great Tirion Fordring out of hiding. You''ve left yourself exposed, paladin. Nothing will save you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14807,0,0,1,'The Lich King'),
   (29173,-1609250,'ATTACK!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14488,1,0,0,'Lord Maxwell Tyrosus'),
   (29173,-1609251,'APOCALYPSE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14808,1,0,0,'The Lich King'),
   (29173,-1609252,'That day is not today...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14708,0,0,0,'Highlord Darion Mograine'),
   (29173,-1609253,'Tirion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14709,1,0,0,'Highlord Darion Mograine'),
   (29173,-1609254,'ARTHAS!!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14591,1,0,0,'Highlord Tirion Fordring'),
   (29173,-1609255,'What is this?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14809,1,0,0,'The Lich King'),
   (29173,-1609256,'Your end.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14592,1,0,0,'Highlord Tirion Fordring'),
   (29173,-1609257,'Impossible...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14810,1,0,0,'The Lich King'),
   (29173,-1609258,'This... isn''t... over...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14811,1,0,25,'The Lich King'),
   (29173,-1609259,'When next we meet it won''t be on holy ground, paladin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14812,1,0,1,'The Lich King'),
   (29173,-1609260,'Rise, Darion, and listen...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14593,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609261,'We have all been witness to a terrible tragedy. The blood of good men has been shed upon this soil! Honorable knights, slain defending their lives - our lives!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14594,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609262,'And while such things can never be forgotten, we must remain vigilant in our cause!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14595,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609263,'The Lich King must answer for what he has done and must not be allowed to cause further destruction to our world.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14596,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609264,'I make a promise to you now, brothers and sisters: The Lich King will be defeated! On this day, I call for a union.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14597,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609265,'The Argent Dawn and the Order of the Silver Hand will come together as one! We will succeed where so many before us have failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14598,0,0,0,'Highlord Tirion Fordring'),
   (29173,-1609266,'We will take the fight to Arthas and tear down the walls of Icecrown!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14599,0,0,15,'Highlord Tirion Fordring'),
   (29173,-1609267,'The Argent Crusade comes for you, Arthas!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14600,1,0,15,'Highlord Tirion Fordring'),
   (29173,-1609268,'So too do the Knights of the Ebon Blade... While our kind has no place in your world, we will fight to bring an end to the Lich King. This I vow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14710,0,0,1,'Highlord Darion Mograine'),
-- Emotes
   (29173,-1609269,'Thousands of Scourge rise up at the Highlord''s command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
   (29173,-1609270,'The army marches towards Light''s Hope Chapel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
   (29173,-1609271,'After over a hundred Defenders of the Light fall, Highlord Tirion Fordring arrives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
   (29173,-1609272,'flee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Orbaz'),
   (29173,-1609273,'kneels in defeat before Tirion Fordring.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609274,'arrives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Alexandros Mograine'),
   (29173,-1609275,'becomes a shade of his past, and walks up to his father.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609276,'hugs his father.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Darion Mograine'),
   (29173,-1609277,'disappears, and the Lich King appears.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Alexandros'),
   (29173,-1609278,'becomes himself again...and is now angry.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609279,'casts a spell on Tirion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'The Lich King'),
   (29173,-1609280,'gasps for air.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Tirion Fordring'),
   (29173,-1609281,'casts a powerful spell, killing the Defenders and knocking back the others.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'The Lich King'),
   (29173,-1609282,'throws the Corrupted Ashbringer to Tirion, who catches it. Tirion becomes awash with Light, and the Ashbringer is cleansed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609283,'collapses.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Darion Mograine'),
   (29173,-1609284,'charges towards the Lich King, Ashbringer in hand and strikes the Lich King.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Highlord Tirion Fordring'),
   (29173,-1609285,'disappears. Tirion walks over to where Darion lay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'The Lich King'),
   (29173,-1609286,'Light washes over the chapel  the Light of Dawn is uncovered.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` in (26796,26798,26929,26928,26930);
INSERT INTO `creature_ai_scripts` VALUES 
-- Commander Stoutbeard
   (2679600,26796,4,0,100,4,0,0,0,0,28,0,47543,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - crystal prison remove'),
   (2679601,26796,4,0,100,4,0,0,0,0,11,31403,0,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - cast battle shout'),
   (2679602,26796,0,0,100,5,3000,3000,11000,15000,11,60067,4,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - cast charge'),
   (2679603,26796,0,0,100,5,6000,8000,19500,25000,11,38618,0,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - cast whirlwind'),
   (2679604,26796,0,0,100,5,13000,13000,45000,55000,11,19134,1,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - cast Frightening Shout'),
-- Commander Kolurg
   (2679800,26798,4,0,100,4,0,0,0,0,28,0,47543,0,0,0,0,0,0,0,0,0,'Commander Kolurg - crystal prison remove'),
   (2679801,26798,4,0,100,4,0,0,0,0,11,31403,0,0,0,0,0,0,0,0,0,0,'Commander Kolurg - cast battle shout'),
   (2679802,26798,0,0,100,5,3000,3000,11000,15000,11,60067,4,0,0,0,0,0,0,0,0,0,'Commander Kolurg - cast charge'),
   (2679803,26798,0,0,100,5,6000,8000,19500,25000,11,38618,0,0,0,0,0,0,0,0,0,0,'Commander Kolurg - cast whirlwind'),
   (2679804,26798,0,0,100,5,13000,13000,45000,55000,11,19134,1,0,0,0,0,0,0,0,0,0,'Commander Kolurg - cast Frightening Shout'),
-- Grand Magus Telestra Clone (Arcane)
   (2692901,26929,0,0,100,7,6000,8000,10000,12000,11,47731,4,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra arcane - cast pollymorph critter'),
   (2692902,26929,0,0,100,7,15000,16000,15000,16000,11,47736,0,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra arcane - cast time stop'),
-- Grand Magus Telestra Clone (Fire)
   (2692801,26928,0,0,100,3,3000,3000,8000,9000,11,47721,1,0,0,0,0,0,0,0,0,0,'Grand magus Telestra fire - cast fire blast N'),
   (2692802,26928,0,0,100,5,3000,3000,8000,9000,11,56939,1,0,0,0,0,0,0,0,0,0,'Grand magus Telestra fire - cast fire blast H'),
   (2692803,26928,0,0,100,3,9000,9000,9500,11500,11,47723,1,0,0,0,0,0,0,0,0,0,'Grand magus Telestra fire - cast scorge N'),
   (2692804,26928,0,0,100,5,9000,9000,9500,11500,11,56938,1,0,0,0,0,0,0,0,0,0,'Grand magus Telestra fire - cast scorge H'),
-- Grand Magus Telestra Clone (Frost)
   (2693001,26930,0,0,100,3,3000,3000,8000,9000,11,47729,1,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra frost - cast ice bard N'),
   (2693002,26930,0,0,100,5,3000,3000,8000,9000,11,56937,1,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra frost - cast ice bard H'),
   (2693003,26930,0,0,100,3,9000,9000,15000,16000,11,47727,1,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra frost - cast blizzard N'),
   (2693004,26930,0,0,100,5,9000,9000,15000,16000,11,56936,1,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra frost - cast blizzard H');

-- Used in guards.cpp, see GOSSIP_TEXT_INSCRIPTION
DELETE FROM `npc_text` WHERE `ID` IN (30000,30001);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`lang0`,`prob0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`lang1`,`prob1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`lang2`,`prob2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`lang3`,`prob3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`lang4`,`prob4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`lang5`,`prob5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`lang6`,`prob6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`lang7`,`prob7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`) VALUES
   ('30000','Here you will find the Inscription Trainer.','Here you will find the Inscription Trainer.','0','1','0','0','0','0','0','0','So you want to be a Inscriber? Well here you will find the trainer.','So you want to be a Inscriber? Well here you will find the trainer.','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0'),
   ('30001','So you are looking for a Inscription Trainer? Well you can''t find the trainer out here, better head to the nearest city.\r\n','So you are looking for a Inscription Trainer? Well you can''t find the trainer out here, better head to the nearest city.\r\n','0','0','0','0','0','0','0','0','So you want to be a Inscriber? Well you can''t find the trainer out here, better head to the nearest city.','So you want to be a Inscriber? Well you can''t find the trainer out here, better head to the nearest city.','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0');
   
-- Dual Spec `npc_option` change
UPDATE `npc_option` SET `id`=52,`action`=19 WHERE `id`=51 AND `action`=18 AND `option_text`='UNIT_NPC_FLAG_OUTDOORPVP';
DELETE FROM `npc_option` WHERE `id`=51;
INSERT INTO `npc_option` (`id`,`gossip_id`,`npcflag`,`icon`,`action`,`box_money`,`coded`,`option_text`,`box_text`) VALUES
   ('51','0','16','0','18','10000000','0','Purchase a Dual Talent Specialization.','Are you sure you wish to purchase a Dual Talent Specialization?');

-- This file contains all waypoints used by escortAI scripts
/*
DROP TABLE IF EXISTS script_waypoint;
CREATE TABLE `script_waypoint` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'creature_template `entry`',
  pointid mediumint(8) unsigned NOT NULL DEFAULT '0',
  location_x float NOT NULL DEFAULT '0',
  location_y float NOT NULL DEFAULT '0',
  location_z float NOT NULL DEFAULT '0',
  waittime int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'waittime in millisecs',
  point_comment text,
  PRIMARY KEY (entry, pointid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Creature waypoints';
*/

-- 
-- Not sure why we don't just run
-- DELETE FROM `script_waypoint`;
-- I mean seriously, who has custom waypoint creatures?
-- 

DELETE FROM `script_waypoint` WHERE `entry`=24156;
INSERT INTO `script_waypoint` VALUES
   (24156,1,1859.74, -6178.15, 24.3033, 0, ''),
   (24156,2,1866.06, -6172.81, 23.9216, 0, ''),
   (24156,3,1876.43, -6167.42, 23.7332, 0, ''),
   (24156,4,1903.37, -6167.9, 23.312, 0, ''),
   (24156,5,1934.43, -6168.46, 23.7148, 0, ''),
   (24156,6,1942.38, -6168.21, 23.7133, 0, ''),
   (24156,7,1953.48, -6172.4, 24.2785, 0, ''),
   (24156,8,1969.21, -6179.69, 23.8501, 0, ''),
   (24156,9,1992.18, -6177.24, 21.3992, 0, ''),
   (24156,10,2015.73, -6174.73, 15.3766, 0, ''),
   (24156,11,2016.99, -6156.39, 12.5927, 0, ''),
   (24156,12,2018.14, -6130.62, 6.31995, 0, ''),
   (24156,13,2043.73, -6119.18, 5.17474, 0, ''),
   (24156,14,2080.99, -6100.03, 7.72235, 0, ''),
   (24156,15,2115.47, -6096.21, 5.36958, 0, ''),
   (24156,16,2130.36, -6151.59, 1.24893, 0, ''),
   (24156,17,2160.5, -6098.78, 3.14191, 0, ''),
   (24156,18,2161.26, -6101.38, 2.81571, 0, ''),
   (24156,19,2172.54, -6108.54, 2.26422, 0, ''),
   (24156,20,2206.69, -6110.46, 0.787735, 0, ''),
   (24156,21,2228.23, -6090.02, 1.17018, 0, ''),
   (24156,22,2262.76, -6056.79, 1.82852, 0, ''),
   (24156,23,2285.54, -6046.96, 1.6305, 0, ''),
   (24156,24,2298.05, -6041.56, 2.01465, 0, ''),
   (24156,25,2307.53, -6031.23, 2.93796, 0, ''),
   (24156,26,2309.46, -6024.45, 3.65369, 5000, '');

DELETE FROM `script_waypoint` WHERE `entry`=20415;
INSERT INTO `script_waypoint` VALUES
   (20415 ,0, 2488.77, 2184.89, 104.64, 0, ''),
   (20415 ,1, 2478.72, 2184.77, 98.58, 0, ''),
   (20415 ,2, 2473.52, 2184.71, 99.00, 0, ''),
   (20415 ,3, 2453.15, 2184.96, 97.09,4000, ''),
   (20415 ,4, 2424.18, 2184.15, 94.11, 0, ''),
   (20415 ,5, 2413.18, 2184.15, 93.42, 0, ''),
   (20415 ,6, 2402.02, 2183.90, 87.59, 0, ''),
   (20415 ,7, 2333.31, 2181.63, 90.03,4000, ''),
   (20415 ,8, 2308.73, 2184.34, 92.04, 0, ''),
   (20415 ,9, 2303.10, 2196.89, 94.94, 0, ''),
   (20415 ,10, 2304.58, 2272.23, 96.67, 0, ''),
   (20415 ,11, 2297.09, 2271.40, 95.16, 0, ''),
   (20415 ,12, 2297.68, 2266.79, 95.07,4000, ''),
   (20415 ,13, 2297.67, 2266.76, 95.07,4000, '');

DELETE FROM `script_waypoint` WHERE `entry`=18760;
INSERT INTO `script_waypoint` VALUES
   (18760 ,0, -2265.21, 3091.14, 13.91, 0, ''),
   (18760 ,1, -2266.80, 3091.33, 13.82, 1000, ''),
   (18760 ,2, -2268.20, 3091.14, 13.82, 7000, 'progress1'),
   (18760 ,3, -2278.32, 3098.98, 13.82, 0, ''),
   (18760 ,4, -2294.82, 3110.59, 13.82, 0, ''),
   (18760 ,5, -2300.71, 3114.60, 13.82, 20000, 'progress2'),
   (18760 ,6, -2300.71, 3114.60, 13.82, 3000, 'progress3'),
   (18760 ,7, -2307.36, 3122.76, 13.79, 0, ''),
   (18760 ,8, -2312.83, 3130.55, 12.04, 0, ''),
   (18760 ,9, -2345.02, 3151.00, 8.38, 0, ''),
   (18760 ,10, -2351.97, 3157.61, 6.27, 0, ''),
   (18760 ,11, -2360.35, 3171.48, 3.31, 0, ''),
   (18760 ,12, -2371.44, 3185.41, 0.89, 0, ''),
   (18760 ,13, -2371.21, 3197.92, -0.96, 0, ''),
   (18760 ,14, -2380.35, 3210.45, -1.08, 0, ''),
   (18760 ,15, -2384.74, 3221.25, -1.17, 0, ''),
   (18760 ,16, -2386.15, 3233.39, -1.29, 0, ''),
   (18760 ,17, -2383.45, 3247.79, -1.32, 0, ''),
   (18760 ,18, -2367.50, 3265.64, -1.33, 0, ''),
   (18760 ,19, -2354.90, 3273.30, -1.50, 0, ''),
   (18760 ,20, -2348.88, 3280.58, -0.09, 0, ''),
   (18760 ,21, -2349.06, 3295.86, -0.95, 0, ''),
   (18760 ,22, -2350.43, 3328.27, -2.10, 0, ''),
   (18760 ,23, -2346.76, 3356.27, -2.82, 0, ''),
   (18760 ,24, -2340.56, 3370.68, -4.02, 0, ''),
   (18760 ,25, -2318.84, 3384.60, -7.61, 0, ''),
   (18760 ,26, -2313.99, 3398.61, -10.40, 0, ''),
   (18760 ,27, -2320.85, 3414.49, -11.49, 0, ''),
   (18760 ,28, -2338.26, 3426.06, -11.46, 0, ''),
   (18760 ,29, -2342.67, 3439.44, -11.32, 12000, 'progress4'),
   (18760 ,30, -2342.67, 3439.44, -11.32, 7000, 'emote bye'),
   (18760 ,31, -2342.67, 3439.44, -11.32, 5000, 'cat form'),
   (18760 ,32, -2344.60, 3461.27, -10.44, 0, ''),
   (18760 ,33, -2396.81, 3517.17, -3.55, 0, ''),
   (18760 ,34, -2439.23, 3523.00, -1.05, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=9623;
INSERT INTO `script_waypoint` VALUES
   (9623 ,1, -6380.38, -1965.14, -258.292, 5000, ''),
   (9623 ,2, -6383.06, -1962.9, -258.936, 0, ''),
   (9623 ,3, -6391.09, -1956.13, -260.291, 0, ''),
   (9623 ,4, -6395.29, -1933.58, -262.949, 0, ''),
   (9623 ,5, -6396.58, -1919.93, -263.838, 0, ''),
   (9623 ,6, -6389.01, -1912.64, -260.689, 0, ''),
   (9623 ,7, -6369.19, -1892.87, -255.924, 0, ''),
   (9623 ,8, -6373.77, -1879.36, -259.268, 0, ''),
   (9623 ,9, -6377.55, -1869.56, -260.503, 0, ''),
   (9623 ,10, -6376.58, -1860.79, -260.026, 0, ''),
   (9623 ,11, -6373.13, -1847.22, -259.249, 0, ''),
   (9623 ,12, -6370.54, -1837.04, -260.007, 0, ''),
   (9623 ,13, -6372.52, -1829.16, -260.071, 0, ''),
   (9623 ,14, -6377.13, -1815.94, -262.632, 0, ''),
   (9623 ,15, -6380.27, -1806.95, -265.53, 0, ''),
   (9623 ,16, -6386.04, -1790.43, -268.546, 0, ''),
   (9623 ,17, -6386.72, -1776.29, -269.851, 0, ''),
   (9623 ,18, -6385.92, -1762.31, -271.494, 0, ''),
   (9623 ,19, -6384.69, -1744.86, -272.196, 0, ''),
   (9623 ,20, -6383.8, -1732.66, -272.222, 0, ''),
   (9623 ,21, -6382.66, -1716.96, -272.235, 0, ''),
   (9623 ,22, -6381.5, -1703.01, -272.964, 0, ''),
   (9623 ,23, -6379.96, -1685.58, -272.842, 0, ''),
   (9623 ,24, -6379.34, -1678.61, -272.34, 0, ''),
   (9623 ,25, -6364.45, -1636.27, -271.065, 0, ''),
   (9623 ,26, -6371.85, -1626.36, -272.188, 0, ''),
   (9623 ,27, -6383.5, -1629.01, -272.206, 0, ''),
   (9623 ,28, -6388.09, -1635.37, -272.105, 5000, ''),
   (9623 ,29, -6375.42, -1637.33, -272.193, 0, ''),
   (9623 ,30, -6365.46, -1617.25, -272.141, 0, ''),
   (9623 ,31, -6353.79, -1603.48, -271.932, 0, ''),
   (9623 ,32, -6340.24, -1592.41, -269.435, 0, ''),
   (9623 ,33, -6329.45, -1566.89, -269.895, 0, ''),
   (9623 ,34, -6312.2, -1499.06, -269.507, 0, ''),
   (9623 ,35, -6304.55, -1468.5, -269.431, 0, ''),
   (9623 ,36, -6310.36, -1440.94, -268.427, 0, ''),
   (9623 ,37, -6321, -1418.91, -266.525, 0, ''),
   (9623 ,38, -6358.76, -1389.97, -267.522, 0, ''),
   (9623 ,39, -6378.65, -1375.67, -271.749, 0, ''),
   (9623 ,40, -6387.22, -1360.95, -272.109, 0, ''),
   (9623 ,41, -6406.95, -1323.87, -271.586, 0, ''),
   (9623 ,42, -6405, -1311.92, -271.906, 0, ''),
   (9623 ,43, -6395.56, -1303.62, -271.902, 0, ''),
   (9623 ,44, -6375.97, -1296.08, -271.865, 0, ''),
   (9623 ,45, -6364.39, -1281.23, -269.012, 0, ''),
   (9623 ,46, -6353.71, -1263.19, -267.95, 0, ''),
   (9623 ,47, -6340.09, -1248.65, -267.441, 0, ''),
   (9623 ,48, -6338.21, -1237.11, -267.844, 0, ''),
   (9623 ,49, -6336.6, -1219.69, -269.196, 0, ''),
   (9623 ,50, -6334.44, -1202.33, -271.527, 0, ''),
   (9623 ,51, -6329.56, -1189.82, -270.947, 0, ''),
   (9623 ,52, -6324.66, -1179.46, -270.103, 0, ''),
   (9623 ,53, -6315.08, -1176.74, -269.735, 0, ''),
   (9623 ,54, -6308.49, -1179.12, -269.57, 0, ''),
   (9623 ,55, -6302.43, -1181.32, -269.328, 5000, ''),
   (9623 ,56, -6298.87, -1185.79, -269.278, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=4508;
INSERT INTO `script_waypoint` VALUES
   (4508 ,0, 2194.38, 1791.65, 65.48, 5000, ''),
   (4508 ,1, 2188.56, 1805.87, 64.45, 0, ''),
   (4508 ,2, 2187, 1843.49, 59.33, 0, ''),
   (4508 ,3, 2163.27, 1851.67, 56.73, 5000, ''),
   (4508 ,4, 2137.66, 1843.98, 48.08, 5000, ''),
   (4508 ,5, 2140.22, 1845.02, 48.32, 0, ''),
   (4508 ,6, 2131.5, 1804.29, 46.85, 0, ''),
   (4508 ,7, 2096.18, 1789.03, 51.13, 0, ''),
   (4508 ,8, 2074.46, 1780.09, 55.64, 3000, ''),
   (4508 ,9, 2055.12, 1768.67, 58.46, 5000, ''),
   (4508 ,10, 2037.83, 1748.62, 60.27, 0, ''),
   (4508 ,11, 2037.51, 1728.94, 60.85, 0, ''),
   (4508 ,12, 2044.7, 1711.71, 59.71, 0, ''),
   (4508 ,13, 2067.66, 1701.84, 57.77, 3000, ''),
   (4508 ,14, 2078.91, 1704.54, 56.77, 3000, ''),
   (4508 ,15, 2097.65, 1715.24, 54.74, 0, ''),
   (4508 ,16, 2106.44, 1720.98, 54.41, 0, ''),
   (4508 ,17, 2123.96, 1732.56, 52.27, 0, ''),
   (4508 ,18, 2153.82, 1728.73, 51.92, 0, ''),
   (4508 ,19, 2163.49, 1706.33, 54.42, 0, ''),
   (4508 ,20, 2158.75, 1695.98, 55.70, 0, ''),
   (4508 ,21, 2142.6, 1680.72, 58.24, 0, ''),
   (4508 ,22, 2118.31, 1671.54, 59.21, 0, ''),
   (4508 ,23, 2086.02, 1672.04, 61.24, 0, ''),
   (4508 ,24, 2068.81, 1658.93, 61.24, 0, ''),
   (4508 ,25, 2062.82, 1633.31, 64.35, 3000, ''),
   (4508 ,26, 2063.05, 1589.16, 63.26, 0, ''),
   (4508 ,27, 2063.67, 1577.22, 65.89, 0, ''),
   (4508 ,28, 2057.94, 1560.68, 68.40, 0, ''),
   (4508 ,29, 2052.56, 1548.05, 73.35, 0, ''),
   (4508 ,30, 2045.22, 1543.4, 76.65, 0, ''),
   (4508 ,31, 2034.35, 1543.01, 79.70, 0, ''),
   (4508 ,32, 2029.95, 1542.94, 80.79, 0, ''),
   (4508 ,33, 2021.34, 1538.67, 80.8, 0, ''),
   (4508 ,34, 2012.45, 1549.48, 79.93, 0, ''),
   (4508 ,35, 2008.05, 1554.92, 80.44, 0, ''),
   (4508 ,36, 2006.54, 1562.72, 81.11, 0, ''),
   (4508 ,37, 2003.8, 1576.43, 81.57, 0, ''),
   (4508 ,38, 2000.57, 1590.06, 80.62, 0, ''),
   (4508 ,39, 1998.96, 1596.87, 80.22, 0, ''),
   (4508 ,40, 1991.19, 1600.82, 79.39, 0, ''),
   (4508 ,41, 1980.71, 1601.44, 79.77, 3000, ''),
   (4508 ,42, 1967.22, 1600.18, 80.62, 3000, ''),
   (4508 ,43, 1956.43, 1596.97, 81.75, 3000, ''),
   (4508 ,44, 1954.87, 1592.02, 82.18, 0, ''),
   (4508 ,45, 1948.35, 1571.35, 80.96, 30000, ''),
   (4508 ,46, 1947.02, 1566.42, 81.80, 30000, '');

DELETE FROM `script_waypoint` WHERE `entry`=7784;
INSERT INTO `script_waypoint` VALUES
   (7784 ,0, -8843.73, -4374.44, 43.71, 0, ''),
   (7784 ,1, -8834.68, -4373.88, 45.71, 0, ''),
   (7784 ,2, -8832.93, -4373.85, 45.67, 0, ''),
   (7784 ,3, -8829.21, -4373.72, 44.14, 0, ''),
   (7784 ,4, -8825.10, -4373.56, 41.44, 0, ''),
   (7784 ,5, -8818.88, -4372.75, 36.43, 0, ''),
   (7784 ,6, -8803.37, -4369.68, 30.06, 0, ''),
   (7784 ,7, -8786.68, -4366.18, 23.91, 0, ''),
   (7784 ,8, -8764.97, -4366.94, 25.23, 0, ''),
   (7784 ,9, -8745.49, -4363.16, 22.80, 0, ''),
   (7784 ,10, -8724.13, -4353.55, 20.72, 0, ''),
   (7784 ,11, -8706.77, -4346.14, 16.12, 0, ''),
   (7784 ,12, -8688.27, -4372.85, 13.64, 0, ''),
   (7784 ,13, -8668.76, -4380.38, 11.69, 0, ''),
   (7784 ,14, -8645.19, -4388.62, 12.56, 0, ''),
   (7784 ,15, -8614.73, -4398.60, 9.86, 0, ''),
   (7784 ,16, -8560.33, -4411.27, 13.17, 0, ''),
   (7784 ,17, -8536.45, -4416.49, 11.84, 0, ''),
   (7784 ,18, -8503.48, -4423.70, 13.59, 0, ''),
   (7784 ,19, -8471.91, -4430.60, 9.56, 0, ''),
   (7784 ,20, -8441.36, -4435.31, 9.40, 0, ''),
   (7784 ,21, -8403.41, -4441.16, 11.83, 0, ''),
   (7784 ,22, -8371.24, -4446.13, 9.47, 0, ''),
   (7784 ,23, -8353.96, -4448.79, 10.10, 0, 'Scorpid'),
   (7784 ,24, -8336.40, -4446.39, 8.98, 0, ''),
   (7784 ,25, -8303.78, -4441.96, 11.89, 0, ''),
   (7784 ,26, -8272.20, -4433.31, 9.60, 0, ''),
   (7784 ,27, -8224.76, -4419.39, 13.03, 0, ''),
   (7784 ,28, -8193.31, -4406.04, 10.17, 0, ''),
   (7784 ,29, -8155.65, -4397.74, 8.99, 0, ''),
   (7784 ,30, -8129.25, -4394.57, 10.92, 0, ''),
   (7784 ,31, -8104.86, -4399.03, 8.93, 0, ''),
   (7784 ,32, -8063.15, -4423.40, 10.07, 0, ''),
   (7784 ,33, -8032.15, -4443.47, 9.97, 0, ''),
   (7784 ,34, -8015.39, -4454.33, 9.39, 0, ''),
   (7784 ,35, -7981.64, -4482.44, 10.32, 0, ''),
   (7784 ,36, -7958.83, -4503.98, 9.69, 0, ''),
   (7784 ,37, -7932.45, -4528.91, 10.08, 0, ''),
   (7784 ,38, -7904.09, -4566.67, 12.59, 0, ''),
   (7784 ,39, -7883.33, -4593.91, 12.15, 0, ''),
   (7784 ,40, -7862.83, -4624.53, 10.21, 0, ''),
   (7784 ,41, -7840.79, -4654.26, 9.45, 0, ''),
   (7784 ,42, -7826.17, -4673.99, 10.61, 0, ''),
   (7784 ,43, -7807.86, -4698.69, 11.24, 0, ''),
   (7784 ,44, -7793.88, -4717.55, 10.48, 0, ''),
   (7784 ,45, -7778.68, -4738.05, 8.89, 0, ''),
   (7784 ,46, -7746.42, -4780.39, 9.84, 0, ''),
   (7784 ,47, -7724.11, -4772.75, 10.28, 0, ''),
   (7784 ,48, -7697.98, -4763.80, 9.52, 0, ''),
   (7784 ,49, -7665.33, -4752.62, 10.56, 0, ''),
   (7784 ,50, -7641.47, -4750.33, 8.94, 0, ''),
   (7784 ,51, -7620.08, -4753.96, 8.93, 0, ''),
   (7784 ,52, -7603.15, -4757.53, 9.06, 0, ''),
   (7784 ,53, -7579.43, -4767.07, 8.93, 0, ''),
   (7784 ,54, -7558.51, -4779.01, 9.64, 0, ''),
   (7784 ,55, -7536.40, -4789.32, 8.92, 0, ''),
   (7784 ,56, -7512.07, -4793.50, 9.35, 0, 'Wastewander'),
   (7784 ,57, -7490.79, -4788.80, 10.53, 0, ''),
   (7784 ,58, -7469.10, -4785.11, 10.42, 0, ''),
   (7784 ,59, -7453.18, -4782.41, 9.15, 0, ''),
   (7784 ,60, -7426.27, -4777.83, 9.54, 0, ''),
   (7784 ,61, -7393.84, -4770.19, 12.57, 0, ''),
   (7784 ,62, -7367.25, -4764.17, 11.92, 0, ''),
   (7784 ,63, -7341.00, -4752.11, 10.17, 0, ''),
   (7784 ,64, -7321.62, -4744.97, 11.58, 0, ''),
   (7784 ,65, -7302.35, -4744.35, 11.97, 0, ''),
   (7784 ,66, -7281.00, -4743.66, 11.21, 0, ''),
   (7784 ,67, -7258.33, -4742.93, 9.64, 0, ''),
   (7784 ,68, -7236.70, -4742.24, 10.16, 0, ''),
   (7784 ,69, -7217.52, -4743.87, 10.79, 0, ''),
   (7784 ,70, -7201.86, -4746.32, 9.58, 0, ''),
   (7784 ,71, -7182.01, -4749.41, 9.09, 0, ''),
   (7784 ,72, -7159.61, -4752.90, 9.52, 0, ''),
   (7784 ,73, -7139.58, -4756.02, 9.53, 0, ''),
   (7784 ,74, -7122.60, -4754.91, 9.66, 0, ''),
   (7784 ,75, -7101.06, -4753.87, 8.92, 0, ''),
   (7784 ,76, -7082.79, -4752.99, 9.97, 0, ''),
   (7784 ,77, -7061.81, -4751.98, 9.26, 0, ''),
   (7784 ,78, -7035.12, -4754.39, 9.19, 0, ''),
   (7784 ,79, -7013.90, -4758.64, 10.28, 0, ''),
   (7784 ,80, -7001.71, -4769.73, 10.59, 0, ''),
   (7784 ,81, -6984.95, -4788.61, 9.30, 0, ''),
   (7784 ,82, -6970.41, -4788.77, 9.42, 0, ''),
   (7784 ,83, -6957.16, -4788.92, 6.26, 0, ''),
   (7784 ,84, -6951.29, -4802.73, 4.45, 0, ''),
   (7784 ,85, -6944.81, -4816.58, 1.60, 0, ''),
   (7784 ,86, -6942.06, -4839.40, 0.66, 5000, '');

DELETE FROM `script_waypoint` WHERE `entry`=1978;
INSERT INTO `script_waypoint` VALUES
   (1978, 0, 1406.32, 1083.10, 52.55, 0, ''),
   (1978, 1, 1400.49, 1080.42, 52.50, 0, 'first say'),
   (1978, 2, 1388.48, 1083.10, 52.52, 0, ''),
   (1978, 3, 1370.16, 1084.02, 52.30, 0, ''),
   (1978, 4, 1359.02, 1080.85, 52.46, 0, ''),
   (1978, 5, 1341.43, 1087.39, 52.69, 0, ''),
   (1978, 6, 1321.93, 1090.51, 50.66, 0, ''),
   (1978, 7, 1312.98, 1095.91, 47.49, 0, ''),
   (1978, 8, 1301.09, 1102.94, 47.76, 0, ''),
   (1978, 9, 1297.73, 1106.35, 50.18, 0, ''),
   (1978, 10, 1295.49, 1124.32, 50.49, 0, ''),
   (1978, 11, 1294.84, 1137.25, 51.75, 0, ''),
   (1978, 12, 1292.89, 1158.99, 52.65, 0, ''),
   (1978, 13, 1290.75, 1168.67, 52.56, 1000, 'complete quest and say last'),
   (1978, 14, 1287.12, 1203.49, 52.66, 5000, ''),
   (1978, 15, 1287.12, 1203.49, 52.66, 4000, ''),
   (1978, 16, 1287.12, 1203.49, 52.66, 5000, ''),
   (1978, 17, 1287.12, 1203.49, 52.66, 4000, ''),
   (1978, 18, 1290.72, 1207.44, 52.69, 0, ''),
   (1978, 19, 1297.50, 1207.18, 53.74, 0, ''),
   (1978, 20, 1301.32, 1220.90, 53.74, 0, ''),
   (1978, 21, 1298.55, 1220.43, 53.74, 0, ''),
   (1978, 22, 1297.59, 1211.23, 58.47, 0, ''),
   (1978, 23, 1305.01, 1206.10, 58.51, 0, ''),
   (1978, 24, 1310.51, 1207.36, 58.51, 5000, ''),
   (1978, 25, 1310.51, 1207.36, 58.51, 5000, ''),
   (1978, 26, 1310.51, 1207.36, 58.51, 2000, '');

DELETE FROM `script_waypoint` WHERE `entry`=3439;
INSERT INTO `script_waypoint` VALUES
   (3439, 0, 1105.090332, -3101.254150, 82.706, 1000, 'SAY_STARTUP1'),
   (3439, 1, 1103.204468, -3104.345215, 83.113, 1000, ''),
   (3439, 2, 1107.815186, -3106.495361, 82.739, 1000, ''),
   (3439, 3, 1104.733276, -3100.830811, 82.747, 1000, ''),
   (3439, 4, 1103.242554, -3106.270020, 83.133, 1000, ''),
   (3439, 5, 1112.807373, -3106.285400, 82.320, 1000, ''),
   (3439, 6, 1112.826782, -3108.908691, 82.377, 1000, ''),
   (3439, 7, 1108.053955, -3115.156738, 82.894, 0, ''),
   (3439, 8, 1108.355591, -3104.365234, 82.377, 5000, ''),
   (3439, 9, 1100.306763, -3097.539063, 83.150, 0, 'SAY_STARTUP2'),
   (3439, 10, 1100.562378, -3082.721924, 82.768, 0, ''),
   (3439, 11, 1097.512939, -3069.226563, 82.206, 0, ''),
   (3439, 12, 1092.964966, -3053.114746, 82.351, 0, ''),
   (3439, 13, 1094.010986, -3036.958496, 82.888, 0, ''),
   (3439, 14, 1095.623901, -3025.760254, 83.392, 0, ''),
   (3439, 15, 1107.656494, -3013.530518, 85.653, 0, ''),
   (3439, 16, 1119.647705, -3006.928223, 87.019, 0, ''),
   (3439, 17, 1129.991211, -3002.410645, 91.232, 7000, 'SAY_MERCENARY'),
   (3439, 18, 1133.328735, -2997.710693, 91.675, 1000, 'SAY_PROGRESS_1'),
   (3439, 19, 1131.799316, -2987.948242, 91.976, 1000, ''),
   (3439, 20, 1122.028687, -2993.397461, 91.536, 0, ''),
   (3439, 21, 1116.614868, -2981.916748, 92.103, 0, ''),
   (3439, 22, 1102.239136, -2994.245117, 92.074, 0, ''),
   (3439, 23, 1096.366211, -2978.306885, 91.873, 0, ''),
   (3439, 24, 1091.971558, -2985.919189, 91.730, 40000, 'SAY_PROGRESS_2');

DELETE FROM `script_waypoint` WHERE `entry`=7806;
INSERT INTO `script_waypoint` VALUES
   (7806, 0, 495.404358, -3478.350830, 114.837, 0, ''),
   (7806, 1, 492.704742, -3486.112549, 108.627, 0, ''),
   (7806, 2, 487.249756, -3485.764404, 107.890, 0, ''),
   (7806, 3, 476.851959, -3489.875977, 99.985, 0, ''),
   (7806, 4, 467.212402, -3493.355469, 99.819, 0, ''),
   (7806, 5, 460.017029, -3496.984375, 104.481, 0, ''),
   (7806, 6, 439.619446, -3500.730225, 110.534, 0, ''),
   (7806, 7, 428.326385, -3495.874756, 118.662, 0, ''),
   (7806, 8, 424.664032, -3489.381592, 121.999, 0, ''),
   (7806, 9, 424.137299, -3470.952637, 124.333, 0, ''),
   (7806, 10, 421.791107, -3449.242676, 119.126, 0, ''),
   (7806, 11, 404.247070, -3429.376953, 117.644, 0, ''),
   (7806, 12, 335.465271, -3430.717773, 116.456, 0, ''),
   (7806, 13, 317.160126, -3426.708984, 116.226, 0, ''),
   (7806, 14, 331.180115, -3464.002197, 117.143, 0, ''),
   (7806, 15, 336.393616, -3501.877441, 118.201, 0, ''),
   (7806, 16, 337.251312, -3544.764648, 117.284, 0, ''),
   (7806, 17, 337.748932, -3565.415527, 116.797, 0, ''),
   (7806, 18, 336.010925, -3597.363037, 118.225, 0, ''),
   (7806, 19, 324.619141, -3622.884033, 119.811, 0, ''),
   (7806, 20, 308.027466, -3648.600098, 123.047, 0, ''),
   (7806, 21, 276.325409, -3685.738525, 128.356, 0, ''),
   (7806, 22, 239.981064, -3717.330811, 131.874, 0, ''),
   (7806, 23, 224.950974, -3730.169678, 132.125, 0, ''),
   (7806, 24, 198.707870, -3768.292725, 129.420, 0, ''),
   (7806, 25, 183.758316, -3791.068848, 128.045, 0, ''),
   (7806, 26, 178.110657, -3801.575439, 128.370, 3000, 'SAY_OOX_DANGER'),
   (7806, 27, 162.215225, -3827.014160, 129.424, 0, ''),
   (7806, 28, 141.664734, -3864.519287, 131.419, 0, ''),
   (7806, 29, 135.301697, -3880.089111, 132.120, 0, ''),
   (7806, 30, 122.461151, -3910.071533, 135.605, 0, ''),
   (7806, 31, 103.376175, -3937.725098, 137.342, 0, ''),
   (7806, 32, 81.414474, -3958.614258, 138.469, 0, ''),
   (7806, 33, 55.378139, -3982.004639, 136.520, 0, ''),
   (7806, 34, 13.983131, -4013.952881, 126.903, 0, ''),
   (7806, 35, -21.658007, -4048.713623, 118.068, 0, ''),
   (7806, 36, -52.443058, -4081.209717, 117.477, 0, ''),
   (7806, 37, -102.710854, -4116.760742, 118.666, 0, ''),
   (7806, 38, -92.996193, -4135.847168, 119.310, 0, ''),
   (7806, 39, -86.391273, -4153.331055, 122.502, 0, ''),
   (7806, 40, -85.746086, -4163.600586, 121.892, 0, ''),
   (7806, 41, -90.544006, -4183.577637, 117.587, 0, ''),
   (7806, 42, -110.223564, -4205.861328, 121.878, 0, ''),
   (7806, 43, -115.257607, -4211.962402, 121.878, 3000, 'SAY_OOX_DANGER'),
   (7806, 44, -128.594650, -4233.343750, 117.766, 0, ''),
   (7806, 45, -135.358917, -4258.120117, 117.562, 0, ''),
   (7806, 46, -156.832428, -4258.961914, 120.059, 0, ''),
   (7806, 47, -167.119873, -4274.102539, 117.062, 0, ''),
   (7806, 48, -176.291016, -4287.594727, 118.721, 0, ''),
   (7806, 49, -196.992981, -4315.815430, 117.588, 0, ''),
   (7806, 50, -209.329300, -4331.671387, 115.142, 0, ''),
   (7806, 51, -232.292236, -4356.015625, 108.543, 0, ''),
   (7806, 52, -232.159683, -4370.904297, 102.815, 0, ''),
   (7806, 53, -210.271133, -4389.896973, 84.167, 0, ''),
   (7806, 54, -187.940186, -4407.532715, 70.987, 0, ''),
   (7806, 55, -181.353577, -4418.771973, 64.778, 0, ''),
   (7806, 56, -170.529861, -4440.438965, 58.943, 0, ''),
   (7806, 57, -141.428543, -4465.323242, 45.963, 0, ''),
   (7806, 58, -120.993629, -4487.088379, 32.075, 0, ''),
   (7806, 59, -104.134621, -4501.837402, 25.051, 0, ''),
   (7806, 60, -84.154663, -4529.436523, 11.952, 0, ''),
   (7806, 61, -88.698898, -4544.626465, 9.055, 0, ''),
   (7806, 62, -100.603447, -4575.034180, 11.388, 0, ''),
   (7806, 63, -106.908669, -4600.407715, 11.046, 0, ''),
   (7806, 64, -106.831703, -4620.503418, 11.057, 3000, 'SAY_OOX_COMPLETE');

DELETE FROM `script_waypoint` WHERE `entry`=4962;
INSERT INTO `script_waypoint` VALUES
   (4962, 0, -3804.438965, -828.048035, 10.093068, 0, ''),
   (4962, 1, -3803.934326, -835.772400, 10.077722, 0, ''),
   (4962, 2, -3792.629150, -835.670898,  9.655657, 0, ''),
   (4962, 3, -3772.433838, -835.345947, 10.868981, 0, ''),
   (4962, 4, -3765.937256, -840.128601, 10.885593, 0, ''),
   (4962, 5, -3738.633789, -830.997498, 11.057384, 0, ''),
   (4962, 6, -3690.224121, -862.261597,  9.960449, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=10638;
INSERT INTO `script_waypoint` VALUES
   (10638, 0, -4903.521973, -1368.339844, -52.611, 5000, 'SAY_KAN_START'),
   (10638, 1, -4906.004395, -1367.048096, -52.611, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=7780;
INSERT INTO `script_waypoint` VALUES
   (7780, 0, 261.058868, -2757.876221, 122.553, 0, ''),
   (7780, 1, 259.812195, -2758.249023, 122.555, 0, 'SAY_RIN_FREE'),
   (7780, 2, 253.823441, -2758.619141, 122.562, 0, ''),
   (7780, 3, 241.394791, -2769.754883, 123.309, 0, ''),
   (7780, 4, 218.915588, -2783.397461, 123.355, 0, ''),
   (7780, 5, 209.088196, -2789.676270, 122.001, 0, ''),
   (7780, 6, 204.453568, -2792.205811, 120.620, 0, ''),
   (7780, 7, 182.012604, -2809.995361, 113.887, 0, 'summon'),
   (7780, 8, 164.411591, -2825.162842, 107.779, 0, ''),
   (7780, 9, 149.727600, -2833.704346, 106.224, 0, ''),
   (7780, 10, 142.448074, -2838.807373, 109.665, 0, ''),
   (7780, 11, 133.274963, -2845.135254, 112.606, 0, ''),
   (7780, 12, 111.247459, -2861.065674, 116.305, 0, ''),
   (7780, 13, 96.104073, -2874.886230, 114.397, 0, 'summon'),
   (7780, 14, 73.369942, -2881.184570, 117.666, 0, ''),
   (7780, 15, 58.579178, -2889.151611, 116.253, 0, ''),
   (7780, 16, 33.214249, -2906.343994, 115.083, 0, ''),
   (7780, 17, 19.586519, -2908.712402, 117.276, 7500, 'SAY_RIN_COMPLETE'),
   (7780, 18, 10.282522, -2911.607422, 118.394, 0, ''),
   (7780, 19, -37.580383, -2942.730225, 117.145, 0, ''),
   (7780, 20, -68.599411, -2953.694824, 116.685, 0, ''),
   (7780, 21, -102.054253, -2956.965576, 116.677, 0, ''),
   (7780, 22, -135.993637, -2955.743652, 115.788, 0, ''),
   (7780, 23, -171.561600, -2951.417480, 115.451, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=18731;
INSERT INTO `script_waypoint` VALUES
   (18731, 0, -157.366, 2.177, 8.073, 0, ''),
   (18731, 1, -172.266, -18.280, 8.073, 0, ''),
   (18731, 2, -171.051, -38.748, 8.073, 0, ''),
   (18731, 3, -170.718, -59.436, 8.073, 0, ''),
   (18731, 4, -156.659, -72.118, 8.073, 0, ''),
   (18731, 5, -142.292, -59.423, 8.073, 0, ''),
   (18731, 6, -141.779, -38.972, 8.073, 0, ''),
   (18731, 7, -142.922, -18.950, 8.073, 0, ''),
   (18731, 8, -157.366, 2.177, 8.073, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=21027;
INSERT INTO `script_waypoint` VALUES
   (21027, 0, -2714.697266, 1326.879395, 34.306953, 0, ''),
   (21027, 1, -2666.364990, 1348.222656, 34.445557, 0, ''),
   (21027, 2, -2693.789307, 1336.964966, 34.445557, 0, ''),
   (21027, 3, -2715.495361, 1328.054443, 34.106014, 0, ''),
   (21027, 4, -2742.530762, 1314.138550, 33.606144, 0, ''),
   (21027, 5, -2745.077148, 1311.108765, 33.630898, 0, ''),
   (21027, 6, -2749.855225, 1302.737915, 33.475632, 0, ''),
   (21027, 7, -2753.639648, 1294.059448, 33.314930, 0, ''),
   (21027, 8, -2756.796387, 1285.122192, 33.391262, 0, ''),
   (21027, 9, -2750.042969, 1273.661987, 33.188259, 0, ''),
   (21027, 10, -2740.378418, 1258.846680, 33.212521, 0, ''),
   (21027, 11, -2733.629395, 1248.259766, 33.640598, 0, ''),
   (21027, 12, -2727.212646, 1238.606445, 33.520847, 0, ''),
   (21027, 13, -2726.377197, 1237.264526, 33.461823, 3000, 'SAY_WIL_PROGRESS1'),
   (21027, 14, -2746.383301, 1266.390625, 33.191952, 2000, ''),
   (21027, 15, -2746.383301, 1266.390625, 33.191952, 4000, 'SAY_WIL_FIND_EXIT'),
   (21027, 16, -2758.927734, 1285.134155, 33.341728, 0, ''),
   (21027, 17, -2761.845703, 1292.313599, 33.209042, 0, ''),
   (21027, 18, -2758.871826, 1300.677612, 33.285332, 0, ''),
   (21027, 19, -2753.928955, 1307.755859, 33.452457, 0, ''),
   (21027, 20, -2738.612061, 1316.191284, 33.482975, 0, ''),
   (21027, 21, -2727.897461, 1320.013916, 33.381111, 0, ''),
   (21027, 22, -2709.458740, 1315.739990, 33.301838, 0, ''),
   (21027, 23, -2704.658936, 1301.620361, 32.463303, 0, ''),
   (21027, 24, -2704.120117, 1298.922607, 32.768162, 0, ''),
   (21027, 25, -2691.798340, 1292.846436, 33.852642, 0, ''),
   (21027, 26, -2682.879639, 1288.853882, 32.995399, 0, ''),
   (21027, 27, -2661.869141, 1279.682495, 26.686783, 0, ''),
   (21027, 28, -2648.943604, 1270.272827, 24.147522, 0, ''),
   (21027, 29, -2642.506836, 1262.938721, 23.512444, 0, ''),
   (21027, 30, -2636.984863, 1252.429077, 20.418257, 0, ''),
   (21027, 31, -2648.113037, 1224.984863, 8.691818, 0, ''),
   (21027, 32, -2658.393311, 1200.136719, 5.492243, 0, ''),
   (21027, 33, -2668.504395, 1190.450562, 3.127407, 0, ''),
   (21027, 34, -2685.930420, 1174.360840, 5.163924, 0, ''),
   (21027, 35, -2701.613770, 1160.026367, 5.611311, 0, ''),
   (21027, 36, -2714.659668, 1149.980347, 4.342373, 0, ''),
   (21027, 37, -2721.443359, 1145.002808, 1.913474, 0, ''),
   (21027, 38, -2733.962158, 1143.436279, 2.620415, 0, ''),
   (21027, 39, -2757.876709, 1146.937500, 6.184002, 2000, 'SAY_WIL_JUST_AHEAD'),
   (21027, 40, -2772.300537, 1166.052734, 6.331811, 0, ''),
   (21027, 41, -2790.265381, 1189.941650, 5.207958, 0, ''),
   (21027, 42, -2805.448975, 1208.663940, 5.557623, 0, ''),
   (21027, 43, -2820.617676, 1225.870239, 6.266103, 0, ''),
   (21027, 44, -2831.926758, 1237.725830, 5.808506, 0, ''),
   (21027, 45, -2842.578369, 1252.869629, 6.807481, 0, ''),
   (21027, 46, -2846.344971, 1258.727295, 7.386168, 0, ''),
   (21027, 47, -2847.556396, 1266.771729, 8.208790, 0, ''),
   (21027, 48, -2841.654541, 1285.809204, 7.933223, 0, ''),
   (21027, 49, -2841.754883, 1289.832520, 6.990304, 0, ''),
   (21027, 50, -2871.398438, 1302.348145, 6.807335, 7500, 'SAY_WIL_END');

DELETE FROM `script_waypoint` WHERE `entry`=3465;
INSERT INTO `script_waypoint` VALUES
   (3465, 0, -2095.840820, -3650.001221, 61.716, 0, ''),
   (3465, 1, -2100.193604, -3613.949219, 61.604, 0, ''),
   (3465, 2, -2098.549561, -3601.557129, 59.154, 0, ''),
   (3465, 3, -2093.796387, -3595.234375, 56.658, 0, ''),
   (3465, 4, -2072.575928, -3578.827637, 48.844, 0, ''),
   (3465, 5, -2023.858398, -3568.146240, 24.636, 0, ''),
   (3465, 6, -2013.576416, -3571.499756, 22.203, 0, ''),
   (3465, 7, -2009.813721, -3580.547852, 21.791, 0, ''),
   (3465, 8, -2015.296021, -3597.387695, 21.760, 0, ''),
   (3465, 9, -2020.677368, -3610.296143, 21.759, 0, ''),
   (3465, 10, -2019.990845, -3640.155273, 21.759, 0, ''),
   (3465, 11, -2016.110596, -3664.133301, 21.758, 0, ''),
   (3465, 12, -1999.397095, -3679.435059, 21.316, 0, ''),
   (3465, 13, -1987.455811, -3688.309326, 18.495, 0, ''),
   (3465, 14, -1973.966553, -3687.666748, 14.996, 0, ''),
   (3465, 15, -1949.163940, -3678.054932, 11.293, 0, ''),
   (3465, 16, -1934.091187, -3682.859619, 9.897, 30000, 'SAY_GIL_AT_LAST'),
   (3465, 17, -1935.383911, -3682.322021, 10.029, 1500, 'SAY_GIL_PROCEED'),
   (3465, 18, -1879.039185, -3699.498047, 6.582, 7500, 'SAY_GIL_FREEBOOTERS'),
   (3465, 19, -1852.728149, -3703.778809, 6.875, 0, ''),
   (3465, 20, -1812.989990, -3718.500732, 10.572, 0, ''),
   (3465, 21, -1788.171265, -3722.867188, 9.663, 0, ''),
   (3465, 22, -1767.206665, -3739.923096, 10.082, 0, ''),
   (3465, 23, -1750.194580, -3747.392090, 10.390, 0, ''),
   (3465, 24, -1729.335571, -3776.665527, 11.779, 0, ''),
   (3465, 25, -1715.997925, -3802.404541, 12.618, 0, ''),
   (3465, 26, -1690.711548, -3829.262451, 13.905, 0, ''),
   (3465, 27, -1674.700684, -3842.398682, 13.872, 0, ''),
   (3465, 28, -1632.726318, -3846.109619, 14.401, 0, ''),
   (3465, 29, -1592.734497, -3842.225342, 14.981, 0, ''),
   (3465, 30, -1561.614746, -3839.320801, 19.118, 0, ''),
   (3465, 31, -1544.567627, -3834.393311, 18.761, 0, ''),
   (3465, 32, -1512.514404, -3831.715820, 22.914, 0, ''),
   (3465, 33, -1486.889771, -3836.639893, 23.964, 0, ''),
   (3465, 34, -1434.193604, -3852.702881, 18.843, 0, ''),
   (3465, 35, -1405.794678, -3854.488037, 17.276, 0, ''),
   (3465, 36, -1366.592041, -3852.383789, 19.273, 0, ''),
   (3465, 37, -1337.360962, -3837.827148, 17.352, 2000, 'SAY_GIL_ALMOST'),
   (3465, 38, -1299.744507, -3810.691406, 20.801, 0, ''),
   (3465, 39, -1277.144409, -3782.785156, 25.918, 0, ''),
   (3465, 40, -1263.686768, -3781.251953, 26.447, 0, ''),
   (3465, 41, -1243.674438, -3786.328125, 25.281, 0, ''),
   (3465, 42, -1221.875488, -3784.124512, 24.051, 0, ''),
   (3465, 43, -1204.011230, -3775.943848, 24.437, 0, ''),
   (3465, 44, -1181.706787, -3768.934082, 23.368, 0, ''),
   (3465, 45, -1156.913818, -3751.559326, 21.074, 0, ''),
   (3465, 46, -1138.830688, -3741.809326, 17.843, 0, ''),
   (3465, 47, -1080.101196, -3738.780029, 19.805, 0, 'SAY_GIL_SWEET'),
   (3465, 48, -1069.065186, -3735.006348, 19.302, 0, ''),
   (3465, 49, -1061.941040, -3724.062256, 21.086, 0, ''),
   (3465, 50, -1053.593262, -3697.608643, 27.320, 0, ''),
   (3465, 51, -1044.110474, -3690.133301, 24.856, 0, ''),
   (3465, 52, -1040.260986, -3690.739014, 25.342, 0, ''),
   (3465, 53, -1028.146606, -3688.718750, 23.843, 7500, 'SAY_GIL_FREED');

DELETE FROM `script_waypoint` WHERE `entry`=10646;
INSERT INTO `script_waypoint` VALUES
   (10646, 0, -4792.401855, -2137.775146, 82.423, 0, ''),
   (10646, 1, -4813.508301, -2141.543457, 80.774, 0, ''),
   (10646, 2, -4828.630859, -2154.309814, 82.074, 0, ''),
   (10646, 3, -4833.772949, -2149.182617, 81.676, 0, ''),
   (10646, 4, -4846.418945, -2136.045410, 77.871, 0, ''),
   (10646, 5, -4865.076660, -2116.549561, 76.483, 0, ''),
   (10646, 6, -4888.434570, -2090.729248, 80.907, 0, ''),
   (10646, 7, -4893.068359, -2085.468994, 82.094, 0, ''),
   (10646, 8, -4907.256836, -2074.929932, 84.437, 5000, 'SAY_LAKO_LOOK_OUT'),
   (10646, 9, -4899.899902, -2062.143555, 83.780, 0, ''),
   (10646, 10, -4897.762207, -2056.520020, 84.184, 0, ''),
   (10646, 11, -4888.331543, -2033.182495, 83.654, 0, ''),
   (10646, 12, -4876.343750, -2003.916138, 90.887, 0, ''),
   (10646, 13, -4872.227051, -1994.173340, 91.513, 0, ''),
   (10646, 14, -4879.569336, -1976.985229, 92.185, 5000, 'SAY_LAKO_HERE_COME'),
   (10646, 15, -4879.049316, -1964.349609, 92.001, 0, ''),
   (10646, 16, -4874.720215, -1956.939819, 90.737, 0, ''),
   (10646, 17, -4869.474609, -1952.612671, 89.206, 0, ''),
   (10646, 18, -4842.466797, -1929.000732, 84.147, 0, ''),
   (10646, 19, -4804.444824, -1897.302734, 89.362, 0, ''),
   (10646, 20, -4798.072754, -1892.383545, 89.368, 0, ''),
   (10646, 21, -4779.447754, -1882.759155, 90.169, 5000, 'SAY_LAKO_MORE'),
   (10646, 22, -4762.081055, -1866.530640, 89.481, 0, ''),
   (10646, 23, -4766.267090, -1861.867798, 87.847, 0, ''),
   (10646, 24, -4782.929688, -1852.174683, 78.354, 0, ''),
   (10646, 25, -4793.605469, -1850.961182, 77.658, 0, ''),
   (10646, 26, -4803.323730, -1855.102661, 78.958, 0, ''),
   (10646, 27, -4807.971680, -1854.501221, 77.743, 0, ''),
   (10646, 28, -4837.212891, -1848.493408, 64.488, 0, ''),
   (10646, 29, -4884.619629, -1840.401123, 56.219, 0, ''),
   (10646, 30, -4889.705566, -1839.623291, 54.417, 0, ''),
   (10646, 31, -4893.904297, -1843.685791, 53.012, 0, ''),
   (10646, 32, -4903.142090, -1872.383545, 32.266, 0, ''),
   (10646, 33, -4910.940918, -1879.864868, 29.940, 0, ''),
   (10646, 34, -4920.047363, -1880.940796, 30.597, 0, ''),
   (10646, 35, -4924.457031, -1881.447144, 29.292, 0, ''),
   (10646, 36, -4966.120117, -1886.033081, 10.977, 0, ''),
   (10646, 37, -4999.369629, -1890.847290, 4.430, 0, ''),
   (10646, 38, -5007.271484, -1891.669678, 2.771, 0, ''),
   (10646, 39, -5013.334473, -1879.588257, -1.947, 0, ''),
   (10646, 40, -5023.328613, -1855.959961, -17.103, 0, ''),
   (10646, 41, -5038.513184, -1825.986694, -35.821, 0, ''),
   (10646, 42, -5048.733887, -1809.798218, -46.457, 0, ''),
   (10646, 43, -5053.188965, -1791.682983, -57.186, 0, ''),
   (10646, 44, -5062.093750, -1794.399780, -56.515, 0, ''),
   (10646, 45, -5052.657227, -1797.044800, -54.734, 5000, 'SAY_LAKO_END');

DELETE FROM `script_waypoint` WHERE `entry`=10427;
INSERT INTO `script_waypoint` VALUES
   (10427, 0, -5185.463, -1185.927, 45.951, 0, ''),
   (10427, 1, -5184.880, -1154.210, 45.035, 0, ''),
   (10427, 2, -5175.880, -1126.526, 43.701, 0, ''),
   (10427, 3, -5138.651, -1111.874, 44.024, 0, ''),
   (10427, 4, -5134.728, -1104.796, 47.365, 0, ''),
   (10427, 5, -5129.681, -1097.878, 49.449, 2500, ''),
   (10427, 6, -5125.303, -1080.572, 47.033, 0, ''),
   (10427, 7, -5146.668, -1053.694, 28.415, 0, ''),
   (10427, 8, -5147.463, -1027.539, 13.818, 0, ''),
   (10427, 9, -5139.238, -1018.889, 8.220, 0, ''),
   (10427, 10, -5121.168, -1013.126, -0.619, 0, ''),
   (10427, 11, -5091.919, -1014.205, -4.902, 0, ''),
   (10427, 12, -5069.240, -994.299, -4.631, 0, ''),
   (10427, 13, -5059.975, -944.112, -5.377, 0, ''),
   (10427, 14, -5013.546, -906.184, -5.490, 0, ''),
   (10427, 15, -4992.461, -920.983, -4.980, 5000, 'SAY_WYVERN'),
   (10427, 16, -4976.355, -1002.997, -5.380, 0, ''),
   (10427, 17, -4958.478, -1033.185, -5.433, 0, ''),
   (10427, 18, -4953.353, -1052.211, -10.836, 0, ''),
   (10427, 19, -4937.447, -1056.351, -22.139, 0, ''),
   (10427, 20, -4908.455, -1050.433, -33.458, 0, ''),
   (10427, 21, -4905.530, -1056.885, -33.722, 0, ''),
   (10427, 22, -4920.830, -1073.284, -45.515, 0, ''),
   (10427, 23, -4933.368, -1082.700, -50.186, 0, ''),
   (10427, 24, -4935.313, -1092.353, -52.785, 0, ''),
   (10427, 25, -4929.553, -1101.268, -50.637, 0, ''),
   (10427, 26, -4920.679, -1100.028, -51.944, 10000, 'SAY_COMPLETE'),
   (10427, 27, -4920.679, -1100.028, -51.944, 0, 'quest complete');

DELETE FROM `script_waypoint` WHERE `entry`=16812;
INSERT INTO `script_waypoint` VALUES
   (16812, 0, -10868.260, -1779.836, 90.476, 2500, 'Open door, begin walking'),
   (16812, 1, -10875.585, -1779.581, 90.478, 0, ''),
   (16812, 2, -10887.447, -1779.258, 90.476, 0, ''),
   (16812, 3, -10894.592, -1780.668, 90.476, 0, ''),
   (16812, 4, -10895.015, -1782.036, 90.476, 2500, 'Begin Speech after this'),
   (16812, 5, -10894.592, -1780.668, 90.476, 0, 'Resume walking (back to spawn point now) after speech'),
   (16812, 6, -10887.447, -1779.258, 90.476, 0, ''),
   (16812, 7, -10875.585, -1779.581, 90.478, 0, ''),
   (16812, 8, -10868.260, -1779.836, 90.476, 5000, 'close door'),
   (16812, 9, -10866.799, -1780.958, 90.470, 2000, 'Summon mobs, open curtains');

DELETE FROM `script_waypoint` WHERE `entry`=28912;
INSERT INTO `script_waypoint` VALUES
   (28912, 0, 1653.518, -6038.374, 127.585, 0, 'Jump off'),
   (28912, 1, 1653.978, -6034.614, 127.585, 5000, 'To Box'),
   (28912, 2, 1653.854, -6034.726, 127.585, 500, 'Equip'),
   (28912, 3, 1652.297, -6035.671, 127.585, 3000, 'Recover'),
   (28912, 4, 1639.762, -6046.343, 127.948, 0, 'Escape'),
   (28912, 5, 1640.963, -6028.119, 134.740, 0, ''),
   (28912, 6, 1625.805, -6029.197, 134.740, 0, ''),
   (28912, 7, 1626.845, -6015.085, 134.740, 0, ''),
   (28912, 8, 1649.150, -6016.975, 133.240, 0, ''),
   (28912, 9, 1653.063, -5974.844, 132.652, 5000, 'Mount'),
   (28912, 10, 1654.747, -5926.424, 121.191, 0, 'Disappear');

DELETE FROM `script_waypoint` WHERE `entry`=11856;
INSERT INTO `script_waypoint` VALUES
   (11856, 0, 113.91, -350.13, 4.55, 0, ''),
   (11856, 1, 109.54, -350.08, 3.74, 0, ''),
   (11856, 2, 106.95, -353.40, 3.60, 0, ''),
   (11856, 3, 100.28, -338.89, 2.97, 0, ''),
   (11856, 4, 110.11, -320.26, 3.47, 0, ''),
   (11856, 5, 109.78, -287.80, 5.30, 0, ''),
   (11856, 6, 105.02, -269.71, 4.71, 0, ''),
   (11856, 7, 86.71, -251.81, 5.34, 0, ''),
   (11856, 8, 64.10, -246.38, 5.91, 0, ''),
   (11856, 9, -2.55, -243.58, 6.3, 0, ''),
   (11856, 10, -27.78, -267.53, -1.08, 0, ''),
   (11856, 11, -31.27, -283.54, -4.36, 0, ''),
   (11856, 12, -28.96, -322.44, -9.19, 0, ''),
   (11856, 13, -35.63, -360.03, -16.59, 0, ''),
   (11856, 14, -58.30, -412.26, -30.60, 0, ''),
   (11856, 15, -58.88, -474.17, -44.54, 0, ''),
   (11856, 16, -45.92, -496.57, -46.26, 5000, 'AMBUSH'),
   (11856, 17, -40.25, -510.07, -46.05, 0, ''),
   (11856, 18, -38.88, -520.72, -46.06, 5000, 'END');

DELETE FROM `script_waypoint` WHERE `entry`=24358;
INSERT INTO `script_waypoint` VALUES
   (24358, 0, 121.193970, 1645.619385, 42.021, 0, ''),
   (24358, 1, 132.051468, 1642.176025, 42.021, 5000, 'SAY_AT_GONG'),
   (24358, 2, 120.670631, 1636.346802, 42.415, 0, ''),
   (24358, 3, 120.536003, 1611.654663, 43.473, 10000, 'SAY_OPEN_ENTRANCE'),
   (24358, 4, 120.536003, 1611.654663, 43.473, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=16295;
INSERT INTO `script_waypoint` VALUES
   (16295, 0, 7545.070000, -7359.870000, 162.354000, 4000, 'SAY_START'),
   (16295, 1, 7550.048340, -7362.237793, 162.235657, 0, ''),
   (16295, 2, 7566.976074, -7364.315430, 161.738770, 0, ''),
   (16295, 3, 7578.830566, -7361.677734, 161.738770, 0, ''),
   (16295, 4, 7590.969238, -7359.053711, 162.257660, 0, ''),
   (16295, 5, 7598.354004, -7362.815430, 162.256683, 4000, 'SAY_PROGRESS_1'),
   (16295, 6, 7605.861328, -7380.424316, 161.937073, 0, ''),
   (16295, 7, 7605.295410, -7387.382813, 157.253998, 0, ''),
   (16295, 8, 7606.131836, -7393.893555, 156.941925, 0, ''),
   (16295, 9, 7615.207520, -7400.187012, 157.142639, 0, ''),
   (16295, 10, 7618.956543, -7402.652832, 158.202042, 0, ''),
   (16295, 11, 7636.850586, -7401.756836, 162.144791, 0, 'SAY_PROGRESS_2'),
   (16295, 12, 7637.058105, -7404.944824, 162.206970, 4000, ''),
   (16295, 13, 7636.910645, -7412.585449, 162.366425, 0, ''),
   (16295, 14, 7637.607910, -7425.591797, 162.630661, 0, ''),
   (16295, 15, 7637.816895, -7459.057129, 163.302704, 0, ''),
   (16295, 16, 7638.859863, -7470.902344, 162.517059, 0, ''),
   (16295, 17, 7641.395996, -7488.217285, 157.381287, 0, ''),
   (16295, 18, 7634.455566, -7505.451660, 154.682159, 0, 'SAY_PROGRESS_3'),
   (16295, 19, 7631.906738, -7516.948730, 153.597382, 0, ''),
   (16295, 20, 7622.231445, -7537.037598, 151.587112, 0, ''),
   (16295, 21, 7610.921875, -7550.670410, 149.639374, 0, ''),
   (16295, 22, 7598.229004, -7562.551758, 145.953888, 0, ''),
   (16295, 23, 7588.509277, -7577.755371, 148.294479, 0, ''),
   (16295, 24, 7567.339355, -7608.456055, 146.006485, 0, ''),
   (16295, 25, 7562.547852, -7617.417969, 148.097504, 0, ''),
   (16295, 26, 7561.508789, -7645.064453, 151.245163, 0, ''),
   (16295, 27, 7563.337402, -7654.652344, 151.227158, 0, ''),
   (16295, 28, 7565.533691, -7658.296387, 151.248886, 0, ''),
   (16295, 39, 7571.155762, -7659.118652, 151.244568, 0, ''),
   (16295, 30, 7579.119629, -7662.213867, 151.651505, 0, 'quest complete'),
   (16295, 31, 7603.768066, -7667.000488, 153.997726, 0, ''),
   (16295, 32, 7603.768066, -7667.000488, 153.997726, 4000, 'SAY_END_1'),
   (16295, 33, 7603.768066, -7667.000488, 153.997726, 8000, 'SAY_END_2'),
   (16295, 34, 7603.768066, -7667.000488, 153.997726, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=17969;
INSERT INTO `script_waypoint` VALUES
   (17969, 0, -930.048950, 5288.080078, 23.848402, 0, ''),
   (17969, 1, -925.677917, 5296.482910, 18.183748, 0, ''),
   (17969, 2, -924.297180, 5299.016113, 17.710915, 0, ''),
   (17969, 3, -928.390076, 5317.022949, 18.208593, 0, ''),
   (17969, 4, -930.620972, 5329.915039, 18.773422, 0, 'SAY_AMBUSH1'),
   (17969, 5, -931.490295, 5357.654785, 18.027155, 0, 'SAY_PROGRESS'),
   (17969, 6, -934.777771, 5369.341797, 22.278048, 0, ''),
   (17969, 7, -934.521851, 5373.407227, 22.834690, 0, ''),
   (17969, 8, -937.008545, 5382.980469, 22.699078, 0, ''),
   (17969, 9, -941.948059, 5404.141602, 22.669743, 0, ''),
   (17969, 10, -931.244263, 5415.846680, 23.063961, 0, 'at crossroad'),
   (17969, 11, -901.497925, 5420.315430, 24.213270, 0, ''),
   (17969, 12, -860.311707, 5415.617676, 23.671139, 0, ''),
   (17969, 13, -777.988953, 5391.982422, 23.001669, 0, ''),
   (17969, 14, -750.362000, 5385.786621, 22.765791, 0, ''),
   (17969, 15, -731.339417, 5382.449707, 22.517065, 0, ''),
   (17969, 16, -681.235901, 5381.377930, 22.050159, 2500, 'end bridge SAY_AMBUSH2'),
   (17969, 17, -637.944458, 5384.338379, 22.205647, 0, 'SAY_END'),
   (17969, 18, -608.954407, 5408.715332, 21.630386, 0, ''),
   (17969, 19, -598.134277, 5413.608398, 21.412275, 0, ''),
   (17969, 20, -571.268982, 5420.771973, 21.184925, 0, ''),
   (17969, 21, -553.099915, 5424.616211, 21.193716, 0, ''),
   (17969, 22, -524.745483, 5443.945313, 20.977013, 0, ''),
   (17969, 23, -502.984985, 5446.283691, 22.149435, 0, ''),
   (17969, 24, -472.463959, 5449.546875, 22.561453, 0, ''),
   (17969, 25, -454.533264, 5461.302246, 22.602837, 30000, 'quest complete');

DELETE FROM `script_waypoint` WHERE `entry`=467;
INSERT INTO `script_waypoint` VALUES
   (467, 0, -10508.40, 1068.00, 55.21, 0, ''),
   (467, 1, -10518.30, 1074.84, 53.96, 0, ''),
   (467, 2, -10534.82, 1081.92, 49.88, 0, ''),
   (467, 3, -10546.51, 1084.88, 50.13, 0, ''),
   (467, 4, -10555.29, 1084.45, 45.75, 0, ''),
   (467, 5, -10566.57, 1083.53, 42.10, 0, ''),
   (467, 6, -10575.83, 1082.34, 39.46, 0, ''),
   (467, 7, -10585.67, 1081.08, 37.77, 0, ''),
   (467, 8, -10600.08, 1078.19, 36.23, 0, ''),
   (467, 9, -10608.69, 1076.08, 35.88, 0, ''),
   (467, 10, -10621.26, 1073.00, 35.40, 0, ''),
   (467, 11, -10638.12, 1060.18, 33.61, 0, ''),
   (467, 12, -10655.87, 1038.99, 33.48, 0, ''),
   (467, 13, -10664.68, 1030.54, 32.70, 0, ''),
   (467, 14, -10708.68, 1033.86, 33.32, 0, ''),
   (467, 15, -10754.43, 1017.93, 32.79, 0, ''),
   (467, 16, -10802.26, 1018.01, 32.16, 0, ''),
   (467, 17, -10832.60, 1009.04, 32.71, 0, ''),
   (467, 18, -10866.56, 1006.51, 31.71, 0, ''),
   (467, 19, -10879.98, 1005.10, 32.84, 0, ''),
   (467, 20, -10892.45, 1001.32, 34.46, 0, ''),
   (467, 21, -10906.14, 997.11, 36.15, 0, ''),
   (467, 22, -10922.26, 1002.23, 35.74, 0, ''),
   (467, 23, -10936.32, 1023.38, 36.52, 0, ''),
   (467, 24, -10933.35, 1052.61, 35.85, 0, ''),
   (467, 25, -10940.25, 1077.66, 36.49, 0, ''),
   (467, 26, -10957.09, 1099.33, 36.83, 0, ''),
   (467, 27, -10956.53, 1119.90, 36.73, 0, ''),
   (467, 28, -10939.30, 1150.75, 37.42, 0, ''),
   (467, 29, -10915.14, 1202.09, 36.55, 0, ''),
   (467, 30, -10892.59, 1257.03, 33.37, 0, ''),
   (467, 31, -10891.93, 1306.66, 35.45, 0, ''),
   (467, 32, -10896.17, 1327.86, 37.77, 0, ''),
   (467, 33, -10906.03, 1368.05, 40.91, 0, ''),
   (467, 34, -10910.18, 1389.33, 42.62, 0, ''),
   (467, 35, -10915.42, 1417.72, 42.93, 0, ''),
   (467, 36, -10926.37, 1421.18, 43.04, 0, 'walk here and say'),
   (467, 37, -10952.31, 1421.74, 43.40, 0, ''),
   (467, 38, -10980.04, 1411.38, 42.79, 0, ''),
   (467, 39, -11006.06, 1420.47, 43.26, 0, ''),
   (467, 40, -11021.98, 1450.59, 43.09, 0, ''),
   (467, 41, -11025.36, 1491.59, 43.15, 0, ''),
   (467, 42, -11036.09, 1508.32, 43.28, 0, ''),
   (467, 43, -11060.68, 1526.72, 43.19, 0, ''),
   (467, 44, -11072.75, 1527.77, 43.20, 5000, 'say and quest credit');

DELETE FROM `script_waypoint` WHERE `entry`=2768;
INSERT INTO `script_waypoint` VALUES
   (2768, 0, -2077.73, -2091.17, 9.49, 0, ''),
   (2768, 1, -2077.99, -2105.33, 13.24, 0, ''),
   (2768, 2, -2074.60, -2109.67, 14.24, 0, ''),
   (2768, 3, -2076.60, -2117.46, 16.67, 0, ''),
   (2768, 4, -2073.51, -2123.46, 18.42, 2000, ''),
   (2768, 5, -2073.51, -2123.46, 18.42, 4000, ''),
   (2768, 6, -2066.60, -2131.85, 21.56, 0, ''),
   (2768, 7, -2053.85, -2143.19, 20.31, 0, ''),
   (2768, 8, -2043.49, -2153.73, 20.20, 10000, ''),
   (2768, 9, -2043.49, -2153.73, 20.20, 20000, ''),
   (2768, 10, -2043.49, -2153.73, 20.20, 10000, ''),
   (2768, 11, -2043.49, -2153.73, 20.20, 2000, ''),
   (2768, 12, -2053.85, -2143.19, 20.31, 0, ''),
   (2768, 13, -2066.60, -2131.85, 21.56, 0, ''),
   (2768, 14, -2073.51, -2123.46, 18.42, 0, ''),
   (2768, 15, -2076.60, -2117.46, 16.67, 0, ''),
   (2768, 16, -2074.60, -2109.67, 14.24, 0, ''),
   (2768, 17, -2077.99, -2105.33, 13.24, 0, ''),
   (2768, 18, -2077.73, -2091.17, 9.49, 0, ''),
   (2768, 19, -2066.41, -2086.21, 8.97, 6000, ''),
   (2768, 20, -2066.41, -2086.21, 8.97, 2000, '');

DELETE FROM `script_waypoint` WHERE `entry`=12818;
INSERT INTO `script_waypoint` VALUES
   (12818, 0, 3347.250089, -694.700989, 159.925995, 0, ''),
   (12818, 1, 3341.527039, -694.725891, 161.124542, 4000, ''),
   (12818, 2, 3338.351074, -686.088138, 163.444000, 0, ''),
   (12818, 3, 3352.744873, -677.721741, 162.316269, 0, ''),
   (12818, 4, 3370.291016, -669.366943, 160.751358, 0, ''),
   (12818, 5, 3381.479492, -659.449097, 162.545303, 0, ''),
   (12818, 6, 3389.554199, -648.500000, 163.651825, 0, ''),
   (12818, 7, 3396.645020, -641.508911, 164.216019, 0, ''),
   (12818, 8, 3410.498535, -634.299622, 165.773453, 0, ''),
   (12818, 9, 3418.461426, -631.791992, 166.477615, 0, ''),
   (12818, 10, 3429.500000, -631.588745, 166.921265, 0, ''),
   (12818, 11,3434.950195, -629.245483, 168.333969, 0, ''),
   (12818, 12,3438.927979, -618.503235, 171.503143, 0, ''),
   (12818, 13,3444.217529, -609.293640, 173.077972, 1000, 'Ambush 1'),
   (12818, 14,3460.505127, -593.794189, 174.342255, 0, ''),
   (12818, 15,3480.283203, -578.210327, 176.652313, 0, ''),
   (12818, 16,3492.912842, -562.335449, 181.396301, 0, ''),
   (12818, 17,3495.230957, -550.977600, 184.652267, 0, ''),
   (12818, 18,3496.247070, -529.194214, 188.172028, 0, ''),
   (12818, 19,3497.619385, -510.411499, 188.345322, 1000, 'Ambush 2'),
   (12818, 20,3498.498047, -497.787506, 185.806274, 0, ''),
   (12818, 21,3484.218750, -489.717529, 182.389862, 4000, '');

DELETE FROM `script_waypoint` WHERE `entry`=12858;
INSERT INTO `script_waypoint` VALUES
   (12858, 0, 1782.63, -2241.11, 109.73, 5000, ''),
   (12858, 1, 1788.88, -2240.17, 111.71, 0, ''),
   (12858, 2, 1797.49, -2238.11, 112.31, 0, ''),
   (12858, 3, 1803.83, -2232.77, 111.22, 0, ''),
   (12858, 4, 1806.65, -2217.83, 107.36, 0, ''),
   (12858, 5, 1811.81, -2208.01, 107.45, 0, ''),
   (12858, 6, 1820.85, -2190.82, 100.49, 0, ''),
   (12858, 7, 1829.60, -2177.49, 96.44, 0, ''),
   (12858, 8, 1837.98, -2164.19, 96.71, 0, 'prepare'),
   (12858, 9, 1839.99, -2149.29, 96.78, 0, ''),
   (12858, 10, 1835.14, -2134.98, 96.80, 0, ''),
   (12858, 11, 1823.57, -2118.27, 97.43, 0, ''),
   (12858, 12, 1814.99, -2110.35, 98.38, 0, ''),
   (12858, 13, 1806.60, -2103.09, 99.19, 0, ''),
   (12858, 14, 1798.27, -2095.77, 100.04, 0, ''),
   (12858, 15, 1783.59, -2079.92, 100.81, 0, ''),
   (12858, 16, 1776.79, -2069.48, 101.77, 0, ''),
   (12858, 17, 1776.82, -2054.59, 109.82, 0, ''),
   (12858, 18, 1776.88, -2047.56, 109.83, 0, ''),
   (12858, 19, 1776.86, -2036.55, 109.83, 0, ''),
   (12858, 20, 1776.90, -2024.56, 109.83, 0, 'win'),
   (12858, 21, 1776.87, -2028.31, 109.83,60000, 'stay'),
   (12858, 22, 1776.90, -2028.30, 109.83, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=15420;
INSERT INTO `script_waypoint` VALUES
   (15420, 0, 9294.78, -6682.51, 22.42, 0, ''),
   (15420, 1, 9298.27, -6667.99, 22.42, 0, ''),
   (15420, 2, 9309.63, -6658.84, 22.43, 0, ''),
   (15420, 3, 9304.43, -6649.31, 26.46, 0, ''),
   (15420, 4, 9298.83, -6648.00, 28.61, 0, ''),
   (15420, 5, 9291.06, -6653.46, 31.83,2500, ''),
   (15420, 6, 9289.08, -6660.17, 31.85,5000, ''),
   (15420, 7, 9291.06, -6653.46, 31.83, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=16993;
INSERT INTO `script_waypoint` VALUES
   (16993, 0, -1137.72, 4272.10, 14.04, 5000, ''),
   (16993, 1, -1141.34, 4232.42, 14.63, 0, ''),
   (16993, 2, -1133.47, 4220.88, 11.78, 0, ''),
   (16993, 3, -1126.18, 4213.26, 13.51, 0, ''),
   (16993, 4, -1100.12, 4204.32, 16.41, 0, ''),
   (16993, 5, -1063.68, 4197.92, 15.51, 0, ''),
   (16993, 6, -1027.28, 4194.36, 15.52, 0, ''),
   (16993, 7, -995.68, 4189.59, 19.84, 0, ''),
   (16993, 8, -970.90, 4188.60, 24.61, 0, ''),
   (16993, 9, -961.93, 4193.34, 26.11, 15000, 'Summon 1'),
   (16993, 10, -935.52, 4210.99, 31.98, 0, ''),
   (16993, 11, -913.42, 4218.27, 37.29, 0, ''),
   (16993, 12, -896.53, 4207.73, 43.23, 0, ''),
   (16993, 13, -868.49, 4194.77, 46.75, 30000, 'Kneel and Rest Here'),
   (16993, 14, -852.83, 4198.29, 47.28, 15000, 'Summon 2'),
   (16993, 15, -819.85, 4200.50, 46.37, 0, ''),
   (16993, 16, -791.92, 4201.96, 44.19, 0, ''),
   (16993, 17, -774.42, 4202.46, 47.41, 0, ''),
   (16993, 18, -762.90, 4202.17, 48.81, 0, ''),
   (16993, 19, -728.25, 4195.35, 50.68, 0, ''),
   (16993, 20, -713.58, 4192.07, 53.98, 0, ''),
   (16993, 21, -703.09, 4189.74, 56.96, 0, ''),
   (16993, 22, -693.70, 4185.43, 57.06, 0, ''),
   (16993, 23, -686.38, 4159.81, 60.26, 0, ''),
   (16993, 24, -679.88, 4147.04, 64.20, 0, ''),
   (16993, 25, -656.74, 4147.72, 64.11, 0, ''),
   (16993, 26, -652.22, 4137.50, 64.58, 0, ''),
   (16993, 27, -649.99, 4136.38, 64.63, 30000, 'Quest Credit');

DELETE FROM `script_waypoint` WHERE `entry`=17312;
INSERT INTO `script_waypoint` VALUES
   (17312, 0, -4784.532227, -11051.060547, 3.484263, 0, ''),
   (17312, 1, -4805.509277, -11037.293945, 3.043942, 0, ''),
   (17312, 2, -4827.826172, -11034.398438, 1.741959, 0, ''),
   (17312, 3, -4852.630859, -11033.695313, 2.208656, 0, ''),
   (17312, 4, -4876.791992, -11034.517578, 3.175228, 0, ''),
   (17312, 5, -4895.486816, -11038.306641, 9.390890, 0, ''),
   (17312, 6, -4915.464844, -11048.402344, 12.369793, 0, ''),
   (17312, 7, -4937.288086, -11067.041992, 13.857983, 0, ''),
   (17312, 8, -4966.577637, -11067.507813, 15.754786, 0, ''),
   (17312, 9, -4993.799805, -11056.544922, 19.175295, 0, ''),
   (17312, 10, -5017.836426, -11052.569336, 22.476587, 0, ''),
   (17312, 11, -5039.706543, -11058.459961, 25.831593, 0, ''),
   (17312, 12, -5057.289063, -11045.474609, 26.972496, 0, ''),
   (17312, 13, -5078.828125, -11037.601563, 29.053417, 0, ''),
   (17312, 14, -5104.158691, -11039.195313, 29.440195, 0, ''),
   (17312, 15, -5120.780273, -11039.518555, 30.142139, 0, ''),
   (17312, 16, -5140.833008, -11039.810547, 28.788074, 0, ''),
   (17312, 17, -5161.201660, -11040.050781, 27.879545, 4000, ''),
   (17312, 18, -5171.842285, -11046.803711, 27.183821, 0, ''),
   (17312, 19, -5185.995117, -11056.359375, 20.234867, 0, ''),
   (17312, 20, -5198.485840, -11065.065430, 18.872593, 0, ''),
   (17312, 21, -5214.062500, -11074.653320, 19.215731, 0, ''),
   (17312, 22, -5220.157227, -11088.377930, 19.818476, 0, ''),
   (17312, 23, -5233.652832, -11098.846680, 18.349432, 0, ''),
   (17312, 24, -5250.163086, -11111.653320, 16.438959, 0, ''),
   (17312, 25, -5268.194336, -11125.639648, 12.668313, 0, ''),
   (17312, 26, -5286.270508, -11130.669922, 6.912246, 0, ''),
   (17312, 27, -5317.449707, -11137.392578, 4.963446, 0, ''),
   (17312, 28, -5334.854492, -11154.384766, 6.742664, 0, ''),
   (17312, 29, -5353.874512, -11171.595703, 6.903912, 20000, ''),
   (17312, 30, -5354.240000, -11171.940000, 6.890000, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=19685;
INSERT INTO `script_waypoint` VALUES
   (19685, 0, -1863.369019, 5419.517090, -10.463668, 5000, ''),
   (19685, 1, -1861.749023, 5416.465332, -10.508068, 0, ''),
   (19685, 2, -1857.036133, 5410.966309, -12.428039, 0, ''),
   (19685, 3, -1831.539185, 5365.472168, -12.428039, 0, ''),
   (19685, 4, -1813.416504, 5333.776855, -12.428039, 0, ''),
   (19685, 5, -1800.354370, 5313.290039, -12.428039, 0, ''),
   (19685, 6, -1775.624878, 5268.786133, -38.809181, 0, ''),
   (19685, 7, -1770.147339, 5259.268066, -38.829231, 0, ''),
   (19685, 8, -1762.814209, 5261.098145, -38.848995, 0, ''),
   (19685, 9, -1740.110474, 5268.858398, -40.208965, 0, ''),
   (19685, 10, -1725.837402, 5270.936035, -40.208965, 0, ''),
   (19685, 11, -1701.580322, 5290.323242, -40.209187, 0, ''),
   (19685, 12, -1682.877808, 5291.406738, -34.429646, 0, ''),
   (19685, 13, -1670.101685, 5291.201172, -32.786007, 0, ''),
   (19685, 14, -1656.666870, 5294.333496, -37.862648, 0, ''),
   (19685, 15, -1652.035767, 5295.413086, -40.245499, 0, ''),
   (19685, 16, -1620.860596, 5300.133301, -40.208992, 0, ''),
   (19685, 17, -1607.630981, 5293.983398, -38.577045, 5000, ''),
   (19685, 18, -1607.630981, 5293.983398, -38.577045, 5000, ''),
   (19685, 19, -1607.630981, 5293.983398, -38.577045, 5000, ''),
   (19685, 20, -1622.140869, 5301.955566, -40.208897, 0, ''),
   (19685, 21, -1621.131836, 5333.112793, -40.208897, 0, ''),
   (19685, 22, -1637.598999, 5342.134277, -40.208790, 0, ''),
   (19685, 23, -1648.521606, 5352.309570, -47.496170, 0, ''),
   (19685, 24, -1654.606934, 5357.419434, -45.870892, 0, ''),
   (19685, 25, -1633.670044, 5422.067871, -42.835541, 0, ''),
   (19685, 26, -1656.567505, 5426.236328, -40.405815, 0, ''),
   (19685, 27, -1664.932373, 5425.686523, -38.846405, 0, ''),
   (19685, 28, -1681.406006, 5425.871094, -38.810928, 0, ''),
   (19685, 29, -1730.875977, 5427.413574, -12.427910, 0, ''),
   (19685, 30, -1743.509521, 5369.599121, -12.427910, 0, ''),
   (19685, 31, -1877.217041, 5303.710449, -12.427989, 0, ''),
   (19685, 32, -1890.371216, 5289.273438, -12.428268, 0, ''),
   (19685, 33, -1905.505737, 5266.534668, 2.630672, 0, ''),
   (19685, 34, -1909.381348, 5273.008301, 1.663714, 10000, ''),
   (19685, 35, -1909.381348, 5273.008301, 1.663714, 12000, ''),
   (19685, 36, -1909.381348, 5273.008301, 1.663714, 8000, ''),
   (19685, 37, -1909.381348, 5273.008301, 1.663714, 15000, ''),
   (19685, 38, -1927.561401, 5275.324707, 1.984987, 0, ''),
   (19685, 39, -1927.385498, 5300.879883, -12.427236, 0, ''),
   (19685, 40, -1921.063965, 5314.318359, -12.427236, 0, ''),
   (19685, 41, -1965.425415, 5379.298828, -12.427236, 0, ''),
   (19685, 42, -1981.233154, 5450.743652, -12.427236, 0, ''),
   (19685, 43, -1958.022461, 5455.904297, 0.487659, 0, ''),
   (19685, 44, -1951.991455, 5463.580566, 0.874490, 10000, ''),
   (19685, 45, -1951.991455, 5463.580566, 0.874490, 12000, ''),
   (19685, 46, -1968.730225, 5481.752930, -12.427846, 0, ''),
   (19685, 47, -1881.839844, 5554.040039, -12.427846, 0, ''),
   (19685, 48, -1841.566650, 5545.965332, -12.427846, 0, ''),
   (19685, 49, -1837.658325, 5523.780273, 0.558756, 0, ''),
   (19685, 50, -1831.321777, 5534.821777, 1.221819, 6000, ''),
   (19685, 51, -1831.321777, 5534.821777, 1.221819, 8000, ''),
   (19685, 52, -1831.321777, 5534.821777, 1.221819, 5000, ''),
   (19685, 53, -1850.060669, 5472.610840, 0.857320, 6000, ''),
   (19685, 54, -1850.060669, 5472.610840, 0.857320, 8000, ''),
   (19685, 55, -1850.060669, 5472.610840, 0.857320, 9000, ''),
   (19685, 56, -1850.060669, 5472.610840, 0.857320, 9000, ''),
   (19685, 57, -1850.060669, 5472.610840, 0.857320, 4000, '');

DELETE FROM `script_waypoint` WHERE `entry`=20129;
INSERT INTO `script_waypoint` VALUES
   (20129, 0, -8374.93,-4250.21, -204.38,5000, ''),
   (20129, 1, -8374.93,-4250.21, -204.38,16000, ''),
   (20129, 2, -8374.93,-4250.21, -204.38,10000, ''),
   (20129, 3, -8374.93,-4250.21, -204.38,2000, ''),
   (20129, 4, -8439.40,-4180.05, -209.25, 0, ''),
   (20129, 5, -8437.82,-4120.84, -208.59,10000, ''),
   (20129, 6, -8437.82,-4120.84, -208.59,16000, ''),
   (20129, 7, -8437.82,-4120.84, -208.59,13000, ''),
   (20129, 8, -8437.82,-4120.84, -208.59,18000, ''),
   (20129, 9, -8437.82,-4120.84, -208.59,15000, ''),
   (20129, 10, -8437.82,-4120.84, -208.59,2000, ''),
   (20129, 11, -8467.26,-4198.63, -214.21, 0, ''),
   (20129, 12, -8667.76,-4252.13, -209.56, 0, ''),
   (20129, 13, -8703.71,-4234.58, -209.5,14000, ''),
   (20129, 14, -8703.71,-4234.58, -209.5,2000, ''),
   (20129, 15, -8642.81,-4304.37, -209.57, 0, ''),
   (20129, 16, -8649.06,-4394.36, -208.46,6000, ''),
   (20129, 17, -8649.06,-4394.36, -208.46,18000, ''),
   (20129, 18, -8649.06,-4394.36, -208.46,2000, ''),
   (20129, 19, -8468.72,-4437.67, -215.45, 0, ''),
   (20129, 20, -8427.54,-4426, -211.13, 0, ''),
   (20129, 21, -8364.83,-4393.32, -205.91, 0, ''),
   (20129, 22, -8304.54,-4357.2, -208.2,18000, ''),
   (20129, 23, -8304.54,-4357.2, -208.2,2000, ''),
   (20129, 24, -8375.42,-4250.41, -205.14,5000, ''),
   (20129, 25, -8375.42,-4250.41, -205.14,5000, '');

DELETE FROM `script_waypoint` WHERE `entry`=6575;
INSERT INTO `script_waypoint` VALUES
   (6575, 0, 1945.81, -431.54, 16.36, 0, ''),
   (6575, 1, 1946.21, -436.41, 16.36, 0, ''),
   (6575, 2, 1950.01, -444.11, 14.63, 0, ''),
   (6575, 3, 1956.08, -449.34, 13.12, 0, ''),
   (6575, 4, 1966.59, -450.55, 11.27, 0, ''),
   (6575, 5, 1976.09, -447.51, 11.27, 0, ''),
   (6575, 6, 1983.42, -435.85, 11.27, 0, ''),
   (6575, 7, 1978.17, -428.81, 11.27, 0, ''),
   (6575, 8, 1973.97, -422.08, 9.04, 0, ''),
   (6575, 9, 1963.84, -418.90, 6.17, 0, ''),
   (6575, 10, 1961.22, -422.74, 6.17, 0, ''),
   (6575, 11, 1964.80, -431.26, 6.17, 300000, '');

DELETE FROM `script_waypoint` WHERE `entry`=3849;
INSERT INTO `script_waypoint` VALUES
   (3849, 0, -252.92, 2126.82, 81.17, 0, ''),
   (3849, 1, -253.88, 2131.11, 81.21, 0, ''),
   (3849, 2, -249.66, 2142.45, 87.01, 0, ''),
   (3849, 3, -248.08, 2143.68, 87.01, 0, ''),
   (3849, 4, -238.87, 2139.93, 87.01, 0, ''),
   (3849, 5, -235.47, 2149.18, 90.59, 0, ''),
   (3849, 6, -239.89, 2156.06, 90.62, 20000, 'SAY_FREE');

DELETE FROM `script_waypoint` WHERE `entry`=3850;
INSERT INTO `script_waypoint` VALUES
   (3850, 0, -255.33, 2117.99, 81.17, 0, ''),
   (3850, 1, -253.88, 2131.11, 81.21, 0, ''),
   (3850, 2, -249.66, 2142.45, 87.01, 0, ''),
   (3850, 3, -248.08, 2143.68, 87.01, 0, ''),
   (3850, 4, -238.87, 2139.93, 87.01, 0, ''),
   (3850, 5, -235.47, 2149.18, 90.59, 0, ''),
   (3850, 6, -239.89, 2156.06, 90.62, 20000, 'SAY_FREE');

DELETE FROM `script_waypoint` WHERE `entry`=3849;
INSERT INTO `script_waypoint` VALUES
   (3849, 0, -250.923431, 2116.264160, 81.179, 0, 'SAY_FREE_AD'),
   (3849, 1, -255.048538, 2119.392578, 81.179, 0, ''),
   (3849, 2, -254.129105, 2123.454346, 81.179, 0, ''),
   (3849, 3, -253.897552, 2130.873535, 81.179, 0, ''),
   (3849, 4, -249.889435, 2142.307861, 86.972, 0, ''),
   (3849, 5, -248.204926, 2144.017090, 87.013, 0, ''),
   (3849, 6, -240.552826, 2140.552734, 87.012, 0, ''),
   (3849, 7, -237.513916, 2142.066650, 87.012, 0, ''),
   (3849, 8, -235.638138, 2149.231689, 90.587, 0, ''),
   (3849, 9, -237.188019, 2151.946045, 90.624, 0, ''),
   (3849, 10, -241.162064, 2153.649658, 90.624, 0, 'SAY_OPEN_DOOR_AD'),
   (3849, 11, -241.129700, 2154.562988, 90.624, 5000, ''),
   (3849, 12, -241.129700, 2154.562988, 90.624, 5000, 'SAY_POST1_DOOR_AD'),
   (3849, 13, -241.129700, 2154.562988, 90.624, 25000, 'SAY_POST2_DOOR_AD');

DELETE FROM `script_waypoint` WHERE `entry`=3850;
INSERT INTO `script_waypoint` VALUES
   (3850, 0, -241.816895, 2122.904053, 81.179, 0, 'SAY_FREE_AS'),
   (3850, 1, -247.139297, 2124.886475, 81.179, 0, ''),
   (3850, 2, -253.179184, 2127.406738, 81.179, 0, ''),
   (3850, 3, -253.897552, 2130.873535, 81.179, 0, ''),
   (3850, 4, -249.889435, 2142.307861, 86.972, 0, ''),
   (3850, 5, -248.204926, 2144.017090, 87.013, 0, ''),
   (3850, 6, -240.552826, 2140.552734, 87.012, 0, ''),
   (3850, 7, -237.513916, 2142.066650, 87.012, 0, ''),
   (3850, 8, -235.638138, 2149.231689, 90.587, 0, ''),
   (3850, 9, -237.188019, 2151.946045, 90.624, 0, ''),
   (3850, 10, -241.162064, 2153.649658, 90.624, 0, 'SAY_OPEN_DOOR_AS'),
   (3850, 11, -241.129700, 2154.562988, 90.624, 5000, 'cast'),
   (3850, 12, -241.129700, 2154.562988, 90.624, 5000, 'SAY_POST_DOOR_AS'),
   (3850, 13, -241.129700, 2154.562988, 90.624, 25000, '');

DELETE FROM `script_waypoint` WHERE `entry`=17876;
INSERT INTO `script_waypoint` VALUES
   (17876, 0, 2230.91, 118.765, 82.2947,5000, ''),
   (17876, 1, 2230.33, 114.980, 82.2946, 0, ''),
   (17876, 2, 2233.36, 111.057, 82.2996, 0, ''),
   (17876, 3, 2231.17, 108.486, 82.6624, 0, ''),
   (17876, 4, 2220.22, 114.605, 89.4264, 0, ''),
   (17876, 5, 2215.23, 115.990, 89.4549, 0, ''),
   (17876, 6, 2210.00, 106.849, 89.4549, 0, ''),
   (17876, 7, 2205.66, 105.234, 89.4549, 0, ''),
   (17876, 8, 2192.26, 112.618, 89.4549, 0, 'spawn armorer'),
   (17876, 9, 2181.28, 118.612, 89.4549,8000, 'get weapon'),
   (17876, 10, 2181.62, 120.385, 89.4549,5000, 'get armor'),
   (17876, 11, 2189.44, 113.922, 89.4549, 0, ''),
   (17876, 12, 2195.63, 110.584, 89.4549, 0, ''),
   (17876, 13, 2201.09, 115.115, 89.4549, 0, ''),
   (17876, 14, 2204.34, 121.036, 89.4355, 0, ''),
   (17876, 15, 2208.66, 129.127, 87.9560, 0, 'first ambush'),
   (17876, 16, 2193.09, 137.940, 88.2164, 0, ''),
   (17876, 17, 2173.39, 149.064, 87.9227, 0, ''),
   (17876, 18, 2164.25, 137.965, 85.0595, 0, ''),
   (17876, 19, 2149.31, 125.645, 77.0858, 0, ''),
   (17876, 20, 2142.78, 127.173, 75.5954, 0, ''),
   (17876, 21, 2139.28, 133.952, 73.6386, 0, 'second ambush'),
   (17876, 22, 2139.54, 155.235, 67.1269, 0, ''),
   (17876, 23, 2145.38, 167.551, 64.8974, 0, ''),
   (17876, 24, 2134.28, 175.304, 67.9446, 0, ''),
   (17876, 25, 2118.08, 187.387, 68.8141, 0, ''),
   (17876, 26, 2105.88, 195.461, 65.1854, 0, 'third ambush'),
   (17876, 27, 2096.77, 196.939, 65.2117, 0, ''),
   (17876, 28, 2083.90, 209.395, 64.8736, 0, ''),
   (17876, 29, 2067.84, 224.376, 64.8022,30000, 'meeting scarloc'),
   (17876, 30, 2055.40, 242.90, 63.3418, 0, 'after skarloc'),
   (17876, 31, 2039.20, 266.460, 63.0182,10000, 'mount up'),
   (17876, 32, 2011.77, 278.478, 65.3388, 0, ''),
   (17876, 33, 2005.08, 289.676, 66.1179, 0, ''),
   (17876, 34, 2033.11, 337.450, 66.0948, 0, ''),
   (17876, 35, 2070.30, 416.208, 66.0893, 0, ''),
   (17876, 36, 2086.76, 469.768, 65.9182, 0, ''),
   (17876, 37, 2101.70, 497.955, 61.7881, 0, 'road ambush'),
   (17876, 38, 2133.39, 530.933, 55.3700,5000, ''),
   (17876, 39, 2157.91, 559.635, 48.5157, 0, ''),
   (17876, 40, 2167.34, 586.191, 42.4394, 0, ''),
   (17876, 41, 2174.17, 637.643, 33.9002, 0, ''),
   (17876, 42, 2179.31, 656.053, 34.723, 0, ''),
   (17876, 43, 2183.65, 670.941, 34.0318, 0, ''),
   (17876, 44, 2201.50, 668.616, 36.1236, 0, ''),
   (17876, 45, 2221.56, 652.747, 36.6153, 0, ''),
   (17876, 46, 2238.97, 640.125, 37.2214, 0, ''),
   (17876, 47, 2251.17, 620.574, 40.1473, 0, ''),
   (17876, 48, 2261.98, 595.303, 41.4117, 0, ''),
   (17876, 49, 2278.67, 560.172, 38.9090, 0, ''),
   (17876, 50, 2336.72, 528.327, 40.9369, 0, ''),
   (17876, 51, 2381.04, 519.612, 37.7312, 0, ''),
   (17876, 52, 2412.20, 515.425, 39.2068, 0, ''),
   (17876, 53, 2452.39, 516.174, 42.9387, 0, ''),
   (17876, 54, 2467.38, 539.389, 47.4992, 0, ''),
   (17876, 55, 2470.70, 554.333, 46.6668, 0, ''),
   (17876, 56, 2478.07, 575.321, 55.4549, 0, ''),
   (17876, 57, 2480.00, 585.408, 56.6921, 0, ''),
   (17876, 58, 2482.67, 608.817, 55.6643, 0, ''),
   (17876, 59, 2485.62, 626.061, 58.0132, 2000, 'dismount'),
   (17876, 60, 2486.91, 626.356, 58.0761, 0, 'scare horse'),
   (17876, 61, 2488.58, 660.940, 57.3913, 0, ''),
   (17876, 62, 2502.56, 686.059, 55.6252, 0, ''),
   (17876, 63, 2502.08, 694.360, 55.5083, 0, ''),
   (17876, 64, 2491.46, 694.321, 55.7163, 0, ''),
   (17876, 65, 2491.10, 703.300, 55.7630, 0, ''),
   (17876, 66, 2485.64, 702.992, 55.7917, 0, ''),
   (17876, 67, 2479.10, 695.291, 55.7901, 10000, ''),
   (17876, 68, 2476.75, 693.689, 55.7960, 0, 'spawn mobs'),
   (17876, 69, 2475.39, 695.983, 55.8146, 0, ''),
   (17876, 70, 2477.75, 694.473, 55.7945, 0, ''),
   (17876, 71, 2481.27, 697.747, 55.7910, 0, 'mobs in doorway'),
   (17876, 72, 2486.31, 703.131, 55.7861, 5000, ''),
   (17876, 73, 2490.76, 703.511, 55.7662, 0, ''),
   (17876, 74, 2491.30, 694.792, 55.7195, 0, ''),
   (17876, 75, 2518.69, 693.876, 55.1383, 0, ''),
   (17876, 76, 2531.33, 681.914, 55.1383, 0, ''),
   (17876, 77, 2568.25, 682.654, 55.1778, 0, ''),
   (17876, 78, 2589.61, 689.981, 55.1421, 0, ''),
   (17876, 79, 2634.74, 679.833, 54.6613, 0, ''),
   (17876, 80, 2630.41, 661.464, 54.2761, 0, ''),
   (17876, 81, 2629.00, 656.982, 56.0651, 0, ''),
   (17876, 82, 2620.84, 633.007, 56.0300, 3000, 'stop in church'),
   (17876, 83, 2622.99, 639.178, 56.0300, 0, 'summon'),
   (17876, 84, 2628.73, 656.693, 56.0610, 5000, ''),
   (17876, 85, 2630.34, 661.135, 54.2738, 0, ''),
   (17876, 86, 2635.38, 672.243, 54.4508, 0, ''),
   (17876, 87, 2644.13, 668.158, 55.3797, 0, ''),
   (17876, 88, 2646.82, 666.740, 56.9898, 0, ''),
   (17876, 89, 2658.22, 665.432, 57.1725, 0, ''),
   (17876, 90, 2661.88, 674.849, 57.1725, 0, ''),
   (17876, 91, 2656.23, 677.208, 57.1725, 0, ''),
   (17876, 92, 2652.28, 670.270, 61.9353, 0, ''),
   (17876, 93, 2650.79, 664.290, 61.9302, 0, 'summon inn'),
   (17876, 94, 2658.19, 660.454, 61.9320, 5000, ''),
   (17876, 95, 2660.57, 659.173, 61.9370, 0, 'speak with Taretha'),
   (17876, 96, 2658.19, 660.454, 61.9320, 5000, 'epoch calls'),
   (17876, 97, 2659.84, 659.482, 61.9361, 5000, 'taretha "dies"'),
   (17876, 98, 2654.28, 662.722, 61.9313, 0, ''),
   (17876, 99, 2652.37, 670.561, 61.9368, 0, ''),
   (17876, 100, 2656.05, 676.761, 57.1727, 0, ''),
   (17876, 101, 2658.49, 677.166, 57.1727, 0, ''),
   (17876, 102, 2659.28, 667.117, 57.1727, 0, ''),
   (17876, 103, 2649.71, 665.387, 57.1727, 0, ''),
   (17876, 104, 2634.79, 672.964, 54.4577, 0, 'outside inn'),
   (17876, 105, 2635.06, 673.892, 54.4713, 30000, 'getting ready'),
   (17876, 106, 2634.79, 672.964, 54.4577, 60000, 'when all dead and meet Taretha'),
   (17876, 107, 2631.72, 665.629, 54.2923, 0, 'run off'),
   (17876, 108, 2647.40, 640.530, 55.7634, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=18887;
INSERT INTO `script_waypoint` VALUES
   (18887, 0, 2650.06, 665.473, 61.9305, 0, ''),
   (18887, 1, 2652.44, 670.761, 61.9370, 0, ''),
   (18887, 2, 2655.96, 676.913, 57.1725, 0, ''),
   (18887, 3, 2659.40, 677.317, 57.1725, 0, ''),
   (18887, 4, 2651.75, 664.482, 57.1725, 0, ''),
   (18887, 5, 2647.49, 666.595, 57.0824, 0, ''),
   (18887, 6, 2644.37, 668.167, 55.4182, 0, ''),
   (18887, 7, 2640.96, 669.890, 54.7567, 60000, '');

DELETE FROM `script_waypoint` WHERE `entry`=10096;
INSERT INTO `script_waypoint` VALUES
   (10096, 0, 604.802673, -191.081985, -54.058590, 0,'ring'),
   (10096, 1, 604.072998, -222.106918, -52.743759, 0,'first gate'),
   (10096, 2, 621.400391, -214.499054, -52.814453, 0,'hiding in corner'),
   (10096, 3, 601.300781, -198.556992, -53.950256, 0,'ring'),
   (10096, 4, 631.818359, -180.548126, -52.654770, 0,'second gate'),
   (10096, 5, 627.390381, -201.075974, -52.692917, 0,'hiding in corner');

DELETE FROM `script_waypoint` WHERE `entry`=9503;
INSERT INTO `script_waypoint` VALUES
   (9503, 0, 883.294861, -188.926300, -43.703655, 0,''),
   (9503, 1, 872.763550, -185.605621, -43.703655, 5000,'b1'),
   (9503, 2, 867.923401, -188.006393, -43.703655, 5000,'b2'),
   (9503, 3, 863.295898, -190.795212, -43.703655, 5000,'b3'),
   (9503, 4, 856.139587, -194.652756, -43.703655, 5000,'b4'),
   (9503, 5, 851.878906, -196.928131, -43.703655, 15000,'b5'),
   (9503, 6, 877.035217, -187.048080, -43.703655, 0,''),
   (9503, 7, 891.198000, -197.924000, -43.620400, 0,'home');

DELETE FROM `script_waypoint` WHERE `entry`=12423;
INSERT INTO `script_waypoint` VALUES
   (12423, 0, -9509.72, -147.03, 58.74, 0, ''),
   (12423, 1, -9517.07, -172.82, 58.66, 0, '');
DELETE FROM `script_waypoint` WHERE `entry`=12427;
INSERT INTO `script_waypoint` VALUES
   (12427, 0, -5689.20, -456.44, 391.08, 0, ''),
   (12427, 1, -5700.37, -450.77, 393.19, 0, '');
DELETE FROM `script_waypoint` WHERE `entry`=12428;
INSERT INTO `script_waypoint` VALUES
   (12428, 0, 2454.09, 361.26, 31.51, 0, ''),
   (12428, 1, 2472.03, 378.08, 30.98, 0, '');
DELETE FROM `script_waypoint` WHERE `entry`=12429;
INSERT INTO `script_waypoint` VALUES
   (12429, 0, 9654.19, 909.58, 1272.11, 0, ''),
   (12429, 1, 9642.53, 908.11, 1269.10, 0, '');
DELETE FROM `script_waypoint` WHERE `entry`=12430;
INSERT INTO `script_waypoint` VALUES
   (12430, 0, 161.65, -4779.34, 14.64, 0, ''),
   (12430, 1, 140.71, -4813.56, 17.04, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=6182;
INSERT INTO `script_waypoint` VALUES
   (6182, 0, -11480.684570, 1545.091187, 49.898571, 0, ''),
   (6182, 1, -11466.825195, 1530.151733, 50.263611, 0, ''),
   (6182, 2, -11465.213867, 1528.343750, 50.954369, 0, 'entrance hut'),
   (6182, 3, -11462.990234, 1525.235596, 50.937702, 0, ''),
   (6182, 4, -11461.000000, 1526.614014, 50.937702, 5000, 'pick up rifle'),
   (6182, 5, -11462.990234, 1525.235596, 50.937702, 0, ''),
   (6182, 6, -11465.213867, 1528.343750, 50.954369, 0, ''),
   (6182, 7, -11468.353516, 1535.075562, 50.400948, 15000, 'hold, prepare for wave1'),
   (6182, 8, -11468.353516, 1535.075562, 50.400948, 15000, 'hold, prepare for wave2'),
   (6182, 9, -11468.353516, 1535.075562, 50.400948, 10000, 'hold, prepare for wave3'),
   (6182, 10, -11467.898438, 1532.459595, 50.348885, 0, 'we are done'),
   (6182, 11, -11466.064453, 1529.855225, 50.209351, 0, ''),
   (6182, 12, -11462.990234, 1525.235596, 50.937702, 0, ''),
   (6182, 13, -11461.000000, 1526.614014, 50.937702, 5000, 'deliver rifle'),
   (6182, 14, -11462.990234, 1525.235596, 50.937702, 0, ''),
   (6182, 15, -11465.213867, 1528.343750, 50.954369, 0, ''),
   (6182, 16, -11470.260742, 1537.276733, 50.378487, 0, ''),
   (6182, 17, -11475.581055, 1548.678833, 50.184380, 0, 'complete quest'),
   (6182, 18, -11482.299805, 1557.410034, 48.624519, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=7807;
INSERT INTO `script_waypoint` VALUES
   (7807, 0, -4943.74, 1715.74, 62.74, 0, 'SAY_START'),
   (7807, 1, -4944.93, 1706.66, 63.16, 0, ''),
   (7807, 2, -4942.82, 1690.22, 64.25, 0, ''),
   (7807, 3, -4946.47, 1669.62, 63.84, 0, ''),
   (7807, 4, -4955.93, 1651.88, 63.00, 0, ''),
   (7807, 5, -4967.58, 1643.86, 64.31, 0, ''),
   (7807, 6, -4978.12, 1607.90, 64.30, 0, ''),
   (7807, 7, -4975.38, 1596.16, 64.70, 0, ''),
   (7807, 8, -4972.82, 1581.89, 61.75, 0, ''),
   (7807, 9, -4958.65, 1581.05, 61.81, 0, ''),
   (7807, 10, -4936.72, 1594.89, 65.96, 0, ''),
   (7807, 11, -4885.69, 1598.10, 67.45, 4000, 'first ambush SAY_AMBUSH'),
   (7807, 12, -4874.20, 1601.73, 68.54, 0, ''),
   (7807, 13, -4816.64, 1594.47, 78.20, 0, ''),
   (7807, 14, -4802.20, 1571.92, 87.01, 0, ''),
   (7807, 15, -4746.40, 1576.11, 84.59, 0, ''),
   (7807, 16, -4739.72, 1707.16, 94.04, 0, ''),
   (7807, 17, -4674.03, 1840.44, 89.17, 0, ''),
   (7807, 18, -4667.94, 1864.11, 85.18, 0, ''),
   (7807, 19, -4668.08, 1886.39, 81.14, 0, ''),
   (7807, 20, -4679.43, 1932.32, 73.76, 0, ''),
   (7807, 21, -4674.17, 1946.66, 70.83, 5000, 'second ambush SAY_AMBUSH'),
   (7807, 22, -4643.94, 1967.45, 65.27, 0, ''),
   (7807, 23, -4595.60, 2010.75, 52.10, 0, ''),
   (7807, 24, -4562.65, 2029.28, 45.41, 0, ''),
   (7807, 25, -4538.56, 2032.65, 45.28, 0, ''),
   (7807, 26, -4531.96, 2034.15, 48.34, 0, ''),
   (7807, 27, -4507.75, 2039.32, 51.57, 0, ''),
   (7807, 28, -4482.74, 2045.67, 48.15, 0, ''),
   (7807, 29, -4460.87, 2051.54, 45.55, 0, ''),
   (7807, 30, -4449.97, 2060.03, 45.51, 10000, 'third ambush SAY_AMBUSH'),
   (7807, 31, -4448.99, 2079.05, 44.64, 0, ''),
   (7807, 32, -4436.64, 2134.48, 28.83, 0, ''),
   (7807, 33, -4429.25, 2170.20, 15.44, 0, ''),
   (7807, 34, -4424.83, 2186.11, 11.48, 0, ''),
   (7807, 35, -4416.71, 2209.76, 7.36, 0, ''),
   (7807, 36, -4405.25, 2231.77, 5.94, 0, ''),
   (7807, 37, -4377.61, 2265.45, 06.71, 15000, 'complete quest SAY_END');

DELETE FROM `script_waypoint` WHERE `entry`=2917;
INSERT INTO `script_waypoint` VALUES
   (2917, 0, 4675.812500, 598.614563, 17.645658, 0, 'SAY_REM_START'),
   (2917, 1, 4672.844238, 599.325378, 16.417622, 0, ''),
   (2917, 2, 4663.449707, 607.430176, 10.494752, 0, ''),
   (2917, 3, 4655.969238, 613.761353, 8.523270, 0, ''),
   (2917, 4, 4640.804688, 623.999329, 8.377054, 0, ''),
   (2917, 5, 4631.678711, 630.801086, 6.414999, 5000, 'SAY_REM_RAMP1_1'),
   (2917, 6, 4633.533203, 632.476440, 6.509831, 0, 'ambush'),
   (2917, 7, 4639.413574, 637.120789, 13.338119, 0, ''),
   (2917, 8, 4642.352051, 637.668152, 13.437444, 0, ''),
   (2917, 9, 4645.082031, 634.463989, 13.437208, 5000, 'SAY_REM_RAMP1_2'),
   (2917, 10, 4642.345215, 637.584839, 13.435211, 0, ''),
   (2917, 11, 4639.630859, 637.233765, 13.339752, 0, ''),
   (2917, 12, 4633.363281, 632.462280, 6.488438, 0, ''),
   (2917, 13, 4624.714844, 631.723511, 6.264030, 0, ''),
   (2917, 14, 4623.525879, 629.718506, 6.201339, 5000, 'SAY_REM_BOOK'),
   (2917, 15, 4623.452148, 630.369629, 6.218942, 0, 'SAY_REM_TENT1_1'),
   (2917, 16, 4622.622070, 637.221558, 6.312845, 0, 'ambush'),
   (2917, 17, 4619.755371, 637.386230, 6.312050, 5000, 'SAY_REM_TENT1_2'),
   (2917, 18, 4620.027832, 637.367676, 6.312050, 0, ''),
   (2917, 19, 4624.154785, 637.560303, 6.313898, 0, ''),
   (2917, 20, 4622.967773, 634.016479, 6.294979, 0, ''),
   (2917, 21, 4616.926758, 630.303284, 6.239193, 0, ''),
   (2917, 22, 4614.546387, 616.983337, 5.687642, 0, ''),
   (2917, 23, 4610.279297, 610.029419, 5.442539, 0, ''),
   (2917, 24, 4601.149902, 604.111694, 2.054856, 0, ''),
   (2917, 25, 4589.618164, 597.685730, 1.057147, 0, ''),
   (2917, 26, 4577.588379, 592.145813, 1.120190, 0, 'SAY_REM_MOSS (?)'),
   (2917, 27, 4569.848145, 592.177490, 1.260874, 5000, 'EMOTE_REM_MOSS (?)'),
   (2917, 28, 4568.791992, 590.870911, 1.211338, 3000, 'SAY_REM_MOSS_PROGRESS (?)'),
   (2917, 29, 4566.722656, 564.077881, 1.343084, 0, 'ambush'),
   (2917, 30, 4568.269531, 551.958435, 5.004200, 0, ''),
   (2917, 31, 4566.731934, 551.557861, 5.426314, 5000, 'SAY_REM_PROGRESS'),
   (2917, 32, 4566.741699, 560.767639, 1.703257, 0, ''),
   (2917, 33, 4573.916016, 582.566101, 0.749801, 0, ''),
   (2917, 34, 4594.206055, 598.533020, 1.034056, 0, ''),
   (2917, 35, 4601.194824, 604.283081, 2.060146, 0, ''),
   (2917, 36, 4609.539551, 610.844727, 5.402220, 0, ''),
   (2917, 37, 4624.800293, 618.076477, 5.851541, 0, ''),
   (2917, 38, 4632.414063, 623.778442, 7.286243, 0, ''),
   (2917, 39, 4645.915039, 621.983765, 8.579967, 0, ''),
   (2917, 40, 4658.669922, 611.092651, 8.891747, 0, ''),
   (2917, 41, 4671.924316, 599.752197, 16.01242, 5000, 'SAY_REM_REMEMBER'),
   (2917, 42, 4676.976074, 600.649780, 17.82566, 5000, 'EMOTE_REM_END');

DELETE FROM `script_waypoint` WHERE `entry`=28217;
INSERT INTO `script_waypoint` VALUES
   (28217, 0, 5399.96,4509.07,-131.053, 0, ''),
   (28217, 1, 5396.95,4514.84,-131.791,  0, ''),
   (28217, 2, 5395.16,4524.06,-132.335,  0, ''),
   (28217, 3, 5400.15,4526.84,-136.058, 0, ''),
   (28217, 4, 5403.53,4527.2,-138.907, 0, ''),
   (28217, 5, 5406.51,4527.47,-141.983, 0, ''),
   (28217, 6, 5409.16,4526.37,-143.902,  0, ''),
   (28217, 7, 5412.04,4523.05,-143.998,  0, ''),
   (28217, 8, 5415.23,4521.19,-143.961,  0, ''),
   (28217, 9, 5417.74,4519.74,-144.292,  0, ''),
   (28217, 10, 5421.77,4519.79,-145.36, 0, ''),
   (28217, 11, 5426.75,4520.53,-147.931, 0, ''),
   (28217, 12, 5429.06,4521.82,-148.919,  0, ''),
   (28217, 13, 5436.52,4534.63,-149.618,  0, ''),
   (28217, 14, 5441.52,4542.23,-149.367,  0, ''),
   (28217, 15, 5449.06,4553.47,-149.187, 0, ''),
   (28217, 16, 5453.5,4565.61,-147.526,  0, ''),
   (28217, 17, 5455.04,4578.6,-147.147,  0, ''),
   (28217, 18, 5462.32,4591.69,-147.738,0, ''),
   (28217, 19, 5470.04,4603.04,-146.044,0, ''),
   (28217, 20, 5475.93,4608.86,-143.152, 0, ''),
   (28217, 21, 5484.48,4613.78,-139.19, 0, ''),
   (28217, 22, 5489.03,4616.56,-137.796, 0, ''),
   (28217, 23, 5497.92,4629.89,-135.556, 0, ''),
   (28217, 24, 5514.48,4638.82,-136.19, 0, ''),
   (28217, 25, 5570,4654.5,-134.947, 0,  ''),
   (28217, 26, 5578.32,4653.29,-136.896, 0, ''),
   (28217, 27, 5596.56,4642.26,-136.593, 0, ''),
   (28217, 28, 5634.02,4600.35,-137.291,2000,'');

DELETE FROM `script_waypoint` WHERE `entry`=3678;
INSERT INTO `script_waypoint` VALUES
   (3678, 0, -120.864, 132.825, -79.2972, 5000, 'TYPE_NARALEX_EVENT'),
   (3678, 1, -109.944, 155.417, -80.4659, 0, ''),
   (3678, 2, -106.104, 198.456, -80.5970, 0, ''),
   (3678, 3, -110.246, 214.763, -85.6669, 0, ''),
   (3678, 4, -105.609, 236.184, -92.1732, 0, 'TYPE_NARALEX_PART1'),
   (3678, 5, -93.5297, 227.956, -90.7522, 0, ''),
   (3678, 6, -85.3155, 226.976, -93.1286, 0, ''),
   (3678, 7, -62.1510, 206.673, -93.5510, 0, ''),
   (3678, 8, -45.0534, 205.580, -96.2435, 0, ''),
   (3678, 9, -31.1235, 234.225, -94.0841, 0, ''),
   (3678, 10, -49.2158, 269.141, -92.8442, 0, ''),
   (3678, 11, -54.1220, 274.717, -92.8442, 31000, 'TYPE_NARALEX_PART2'),
   (3678, 12, -58.9650, 282.274, -92.5380, 0, ''),
   (3678, 13, -38.3566, 306.239, -90.0192, 0, ''),
   (3678, 14, -28.8928, 312.842, -89.2155, 0, ''),
   (3678, 15, -1.58198, 296.127, -85.5984, 0, ''),
   (3678, 16, 9.89992, 272.008, -85.7759, 0, ''),
   (3678, 17, 26.8162, 259.218, -87.3938, 0, ''),
   (3678, 18, 49.1166, 227.259, -88.3379, 0, ''),
   (3678, 19, 54.4171, 209.316, -90.0000, 1500, 'SAY_BEYOND_THIS_CORRIDOR'),
   (3678, 20, 71.0380, 205.404, -93.0422, 0, ''),
   (3678, 21, 81.5941, 212.832, -93.0154, 0, ''),
   (3678, 22, 94.3376, 236.933, -95.8261, 0, ''),
   (3678, 23, 114.619, 235.908, -96.0495, 0, ''),
   (3678, 24, 114.777, 237.155, -96.0304, 2500, 'NARALEX_EVENT_FINISHED');

DELETE FROM `script_waypoint` WHERE `entry`=22424;
INSERT INTO `script_waypoint` VALUES
   (22424,0,-3605.719971,4175.580078,-0.031817,0,'START_SKYWING'),
   (22424,1,-3602.311279,4253.213867,0.562436,0,''),
   (22424,2,-3529.151367,4263.524414,-7.871151,0,''),
   (22424,3,-3448.130371,4257.990723,-11.626289,0,''),
   (22424,4,-3377.783936,4209.064941,-9.476727,0,''),
   (22424,5,-3378.211426,4154.628418,0.366330,0,''),
   (22424,6,-3376.920166,4085.501709,14.178538,0,''),
   (22424,7,-3399.274658,4055.948975,18.603474,0,''),
   (22424,8,-3432.678223,4054.069824,29.588032,10000,'');

DELETE FROM `script_waypoint` WHERE `entry`=22377;
INSERT INTO `script_waypoint` VALUES
   (22377, 0, -2766.31, 5429.65, -34.53, 0, ''),
   (22377, 1, -2769.35, 5416.25, -34.53, 0, ''),
   (22377, 2, -2780.07, 5416.06, -34.53, 1000, ''),
   (22377, 3, -2812.56, 5415.20, -34.53, 1000, ''),
   (22377, 4, -2816.95, 5415.02, -34.52, 0, ''),
   (22377, 5, -2827.86, 5414.56, -28.29, 0, ''),
   (22377, 6, -2878.32, 5414.11, -28.26, 0, ''),
   (22377, 7, -2893.17, 5413.15, -18.59, 0, ''),
   (22377, 8, -2896.36, 5409.65, -18.59, 0, ''),
   (22377, 9, -2896.50, 5396.76, -8.77, 0, ''),
   (22377, 10, -2896.67, 5366.20, -9.59, 0, ''),
   (22377, 11, -2888.23, 5330.39, -11.19, 2000, '');
   
DELETE FROM `script_waypoint` WHERE `entry`=18210;
INSERT INTO `script_waypoint` VALUES
   (18210, 0, -1581.410034, 8557.933594, 2.726, 0, ''),
   (18210, 1, -1579.908447, 8553.716797, 2.559, 0, ''),
   (18210, 2, -1577.829102, 8549.880859, 2.001, 0, ''),
   (18210, 3, -1571.161987, 8543.494141, 2.001, 0, ''),
   (18210, 4, -1563.944824, 8530.334961, 1.605, 0, ''),
   (18210, 5, -1554.565552, 8518.413086, 0.364, 0, ''),
   (18210, 6, -1549.239136, 8515.518555, 0.293, 0, ''),
   (18210, 7, -1518.490112, 8516.771484, 0.683, 2000, 'SAY_MAG_MORE'),
   (18210, 8, -1505.038940, 8513.247070, 0.672, 0, ''),
   (18210, 9, -1476.161133, 8496.066406, 2.157, 0, ''),
   (18210, 10, -1464.450684, 8492.601563, 3.529, 0, ''),
   (18210, 11, -1457.568359, 8492.183594, 4.449, 0, ''),
   (18210, 12, -1444.100342, 8499.031250, 6.177, 0, ''),
   (18210, 13, -1426.472168, 8510.116211, 7.686, 0, ''),
   (18210, 14, -1403.685303, 8524.146484, 9.680, 0, ''),
   (18210, 15, -1384.890503, 8542.014648, 11.180, 0, ''),
   (18210, 16, -1382.286133, 8539.869141, 11.139, 7500, 'SAY_MAG_COMPLETE'),
   (18210, 17, -1361.224609, 8521.440430, 11.144, 0, ''),
   (18210, 18, -1324.803589, 8510.688477, 13.050, 0, ''),
   (18210, 19, -1312.075439, 8492.709961, 14.235, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=17077;
INSERT INTO `script_waypoint` VALUES
   (17077, 0, -16.950142, 3801.409424, 95.064, 5000, 'EMOTE_WOLF_LIFT_HEAD'),
   (17077, 1, -15.577404, 3805.170898, 94.833, 2500, ''),
   (17077, 2, -20.011766, 3806.609863, 92.476, 5000, 'EMOTE_WOLF_HOWL'),
   (17077, 3, -18.594666, 3816.207764, 91.482, 0, ''),
   (17077, 4, -19.293468, 3838.218750, 85.012, 0, ''),
   (17077, 5, -16.504408, 3871.034668, 82.327, 0, ''),
   (17077, 6, 2.064510, 3898.678711, 85.623, 0, ''),
   (17077, 7, 16.403864, 3921.174072, 86.024, 0, ''),
   (17077, 8, 47.307926, 3932.001465, 83.302, 0, ''),
   (17077, 9, 90.067230, 3942.906250, 77.000, 0, ''),
   (17077, 10, 106.886024, 3944.388428, 76.502, 0, ''),
   (17077, 11, 139.085480, 3941.897217, 80.617, 0, ''),
   (17077, 12, 150.092346, 3942.782959, 80.399, 0, ''),
   (17077, 13, 193.511475, 3950.396484, 74.366, 0, ''),
   (17077, 14, 226.274948, 3958.003418, 73.257, 0, ''),
   (17077, 15, 246.686981, 3963.309326, 76.376, 0, ''),
   (17077, 16, 264.206177, 3977.726563, 83.704, 0, ''),
   (17077, 17, 279.857422, 3986.417236, 88.245, 0, ''),
   (17077, 18, 304.039642, 3998.354004, 95.649, 0, ''),
   (17077, 19, 328.071503, 3995.832764, 104.434, 0, ''),
   (17077, 20, 347.485229, 3990.817627, 113.608, 0, ''),
   (17077, 21, 351.257202, 3954.260254, 125.747, 0, ''),
   (17077, 22, 345.625977, 3932.016113, 132.358, 0, ''),
   (17077, 23, 347.971893, 3908.549561, 135.520, 0, ''),
   (17077, 24, 351.887878, 3891.062744, 139.957, 0, ''),
   (17077, 25, 346.116852, 3864.634277, 146.647, 0, ''),
   (17077, 26, 330.012360, 3839.859375, 154.148, 0, ''),
   (17077, 27, 297.250610, 3811.855225, 166.893, 0, ''),
   (17077, 28, 290.783112, 3800.188477, 172.130, 0, ''),
   (17077, 29, 288.125427, 3782.474365, 180.825, 0, ''),
   (17077, 30, 296.817841, 3771.629639, 184.961, 0, ''),
   (17077, 31, 305.256256, 3765.380615, 185.360, 0, ''),
   (17077, 32, 311.447906, 3757.902100, 184.312, 0, ''),
   (17077, 33, 325.258026, 3730.282227, 184.076, 0, ''),
   (17077, 34, 341.158630, 3717.757080, 183.904, 0, ''),
   (17077, 35, 365.589020, 3717.200684, 183.902, 0, ''),
   (17077, 36, 387.395081, 3731.750732, 183.645, 0, ''),
   (17077, 37, 396.574127, 3732.604248, 179.831, 0, ''),
   (17077, 38, 404.303192, 3737.313232, 180.151, 0, ''),
   (17077, 39, 410.995972, 3742.286865, 183.364, 0, ''),
   (17077, 40, 434.904541, 3761.058838, 186.219, 0, ''),
   (17077, 41, 460.128815, 3774.436768, 186.348, 0, ''),
   (17077, 42, 467.643951, 3788.506104, 186.446, 0, ''),
   (17077, 43, 491.551666, 3815.446777, 189.848, 0, ''),
   (17077, 44, 496.957855, 3836.875244, 193.078, 0, ''),
   (17077, 45, 502.889191, 3855.458740, 194.834, 0, ''),
   (17077, 46, 508.208466, 3863.689453, 194.024, 0, ''),
   (17077, 47, 528.907593, 3887.348633, 189.762, 0, ''),
   (17077, 48, 527.722229, 3890.686523, 189.240, 0, ''),
   (17077, 49, 524.637329, 3891.768066, 189.149, 0, ''),
   (17077, 50, 519.146057, 3886.701660, 190.128, 60000, 'SAY_WOLF_WELCOME');

/* EOF */

DELETE FROM `script_waypoint` WHERE `entry`=28912;
INSERT INTO `script_waypoint` VALUES
   (28912, 0, 1653.518, -6038.374, 127.585, 1000, 'Jump off'),
   (28912, 1, 1653.978, -6034.614, 127.585, 5000, 'To Box'),
   (28912, 2, 1653.854, -6034.726, 127.585, 0, 'Equip'),
   (28912, 3, 1652.297, -6035.671, 127.585, 1000, 'Recover'),
   (28912, 4, 1639.762, -6046.343, 127.948, 0, 'Escape'),
   (28912, 5, 1640.963, -6028.119, 134.740, 0, ''),
   (28912, 6, 1625.805, -6029.197, 134.740, 0, ''),
   (28912, 7, 1626.845, -6015.085, 134.740, 0, ''),
   (28912, 8, 1649.150, -6016.975, 133.240, 0, ''),
   (28912, 9, 1653.063, -5974.844, 132.652, 5000, 'Mount'),
   (28912, 10, 1654.747, -5926.424, 121.191, 0, 'Disappear');


DELETE FROM `script_waypoint` WHERE `entry`=29173;
INSERT INTO `script_waypoint` VALUES
   (29173, 0, 2431.639, -5137.05, 83.843, 0, 'intro'),
   (29173, 1, 2319.242, -5266.486, 82.825, 0, 'summon & on hold'),
   (29173, 2, 2318.775, -5266.832, 82.783, 0, 'cast light of dawn'),
   (29173, 3, 2280.812, -5284.091, 82.608, 0, 'move to here and start'),
   (29173, 4, 2280.727, -5286.839, 82.930, 0, 'move forward to talk'),
   (29173, 5, 2280.812, -5284.091, 82.608, 0, 'when baba pop'),
   (29173, 6, 2281.461, -5263.014, 81.164, 0, 'charge to lich king'),
   (29173, 7, 2257.479, -5296.702, 82.165, 0, 'being kicked by Lich King'),
   (29173, 8, 2261.237, -5294.983, 82.167, 0, 'throw'),
   (29173, 9, 2259.34, -5294.379, 82.167, 0, 'event end');
   
   
DELETE FROM script_waypoint WHERE `entry`=28070;
INSERT INTO script_waypoint VALUES
   (28070, 0, 1053.789795, 476.639343, 207.744, 0, ''),
   (28070, 1, 1032.293945, 467.623444, 207.736, 0, ''),
   (28070, 2, 1017.908752, 454.765656, 207.719, 0, ''),
   (28070, 3, 1004.810120, 441.305115, 207.373, 0, ''),
   (28070, 4, 988.694214, 424.422485, 207.425, 0, ''),
   (28070, 5, 984.816345, 422.177917, 205.994, 0, ''),
   (28070, 6, 977.204468, 420.026917, 205.994, 0, ''),
   (28070, 7, 962.388123, 421.983307, 205.994, 0, ''),
   (28070, 8, 950.419556, 416.515198, 205.994, 0, ''),
   (28070, 9, 943.972290, 403.071228, 205.994, 0, ''),
   (28070, 10, 947.921936, 387.683563, 205.994, 0, ''),
   (28070, 11, 946.554749, 383.270782, 205.994, 0, ''),
   (28070, 12, 944.654724, 380.630859, 207.286, 0, ''),
   (28070, 13, 941.101563, 377.373413, 207.421, 0, 'reach tribunal, set pause'),
   (28070, 14, 935.217896, 370.557343, 207.421, 0, ''),
   (28070, 15, 928.035950, 363.026733, 204.018, 0, ''),
   (28070, 16, 909.287292, 344.392792, 203.706, 0, ''),
   (28070, 17, 897.946838, 333.634735, 203.706, 0, 'reach panel'),
   (28070, 18, 918.914429, 351.312866, 203.706, 0, 'reach floor disc (end event begin)'),
   (28070, 19, 928.070068, 363.296326, 204.091, 0, 'stealth'),
   (28070, 20, 934.817627, 370.136261, 207.421, 0, ''),
   (28070, 21, 941.501465, 377.254456, 207.421, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=23784;
INSERT INTO `script_waypoint` VALUES
   (23784, 1, 1383.52, -6411.72, 1.2181, 5, 'Apothecary Hanes'),
   (23784, 2, 1392.57, -6403.5, 1.9699, 2000, 'Apothecary Hanes'),
   (23784, 3, 1397.42, -6378.76, 4.996, 5, 'Apothecary Hanes'),
   (23784, 4, 1427.36, -6359.47, 6.385, 5, 'Apothecary Hanes'),
   (23784, 5, 1406.46, -6334.45, 6.149, 2000, 'Apothecary Hanes'),
   (23784, 6, 1400.77, -6339.71, 6.367, 5000, 'Apothecary Hanes'),
   (23784, 7, 1424.09, -6326.67, 5.716, 5, 'Apothecary Hanes'),
   (23784, 8, 1470, -6347.45, 7.596, 5000, 'Apothecary Hanes'),
   (23784, 9, 1465.18, -6343.53, 7.58766, 2000, 'Apothecary Hanes'),
   (23784, 10, 1463.9, -6339.28, 7.56152, 5, 'Apothecary Hanes'),
   (23784, 11, 1474.6, -6327.65, 7.02011, 5, 'Apothecary Hanes'),
   (23784, 12, 1486.59, -6319.08, 8.13591, 5, 'Apothecary Hanes'),
   (23784, 13, 1499.87, -6312.24, 7.11185, 5, 'Apothecary Hanes'),
   (23784, 14, 1507.95, -6315.27, 7.05227, 5000, 'Apothecary Hanes'),
   (23784, 15, 1511.92, -6300.64, 6.43812, 5, 'Apothecary Hanes'),
   (23784, 16, 1520.02, -6279.71, 5.31363, 5, 'Apothecary Hanes'),
   (23784, 17, 1534.01, -6245, 6.31535, 5, 'Apothecary Hanes'),
   (23784, 18, 1537.98, -6224.37, 6.36504, 5, 'Apothecary Hanes'),
   (23784, 19, 1551.58, -6206.27, 6.9545, 2000, 'Apothecary Hanes'),
   (23784, 20, 1572.99, -6197.74, 6.70809, 5, 'Apothecary Hanes'),
   (23784, 21, 1608.51, -6175.83, 8.80075, 5, 'Apothecary Hanes'),
   (23784, 22, 1619.15, -6167.6, 9.39125, 5, 'Apothecary Hanes'),
   (23784, 23, 1634.05, -6153.81, 8.08527, 5, 'Apothecary Hanes');

DELETE FROM `script_waypoint` WHERE `entry`=25208;
INSERT INTO `script_waypoint` VALUES
   (25208, 0, 4014.01, 6391.91, 29.9735, 17000, ''),
   (25208, 1, 4029.05, 6374.1, 28.8288, 0, ''),
   (25208, 2, 4039.11, 6370.05, 27.8701, 0, ''),
   (25208, 3, 4052.24, 6364.92, 27.2941, 0, ''),
   (25208, 4, 4058.31, 6357.79, 26.3543, 0, ''),
   (25208, 5, 4062.46, 6346.26, 24.3838, 0, ''),
   (25208, 6, 4063.82, 6334.14, 25.3818, 0, ''),
   (25208, 7, 4062.66, 6319.39, 24.9775, 0, ''),
   (25208, 8, 4061.14, 6307.67, 24.4034, 0, ''),
   (25208, 9, 4059.64, 6301.33, 24.5615, 0, ''),
   (25208, 10, 4066.46, 6292.12, 24.3167, 0, ''),
   (25208, 11, 4078.37, 6280.88, 26.6926, 0, ''),
   (25208, 12, 4087.03, 6281.33, 27.4604, 0, ''),
   (25208, 13, 4097.8, 6282.47, 25.4414, 0, ''),
   (25208, 14, 4107.07, 6279.26, 25.2578, 0, ''),
   (25208, 15, 4114.68, 6279.78, 24.7762, 0, ''),
   (25208, 16, 4122.9, 6280.34, 26.1671, 0, ''),
   (25208, 17, 4127.69, 6280.67, 28.1951, 0, ''),
   (25208, 18, 4134.75, 6282.09, 28.9761, 0, ''),
   (25208, 19, 4141.62, 6281.92, 29.3518, 0, ''),
   (25208, 20, 4152.14, 6281.43, 30.6951, 0, ''),
   (25208, 21, 4159.63, 6282.6, 30.2401, 0, ''),
   (25208, 22, 4169.82, 6289.25, 24.182, 0, ''),
   (25208, 23, 4181.02, 6293.88, 18.035, 0, ''),
   (25208, 24, 4189.27, 6295.87, 14.4513, 0, ''),
   (25208, 25, 4200.09, 6298.4, 12.7249, 0, ''),
   (25208, 26, 4206.46, 6291.56, 10.9628, 0, ''),
   (25208, 27, 4211.45, 6282.82, 9.05693, 0, ''),
   (25208, 28, 4215.22, 6277.25, 8.54002, 0, ''),
   (25208, 29, 4215.28, 6268.57, 8.30674, 0, ''),
   (25208, 30, 4224.23, 6269.53, 6.97205, 0, ''),
   (25208, 31, 4235.98, 6270.9, 3.27214, 0, ''),
   (25208, 32, 4242.67, 6269.45, 1.45579, 0, ''),
   (25208, 33, 4250.43, 6262.49, 0.611961, 0, ''),
   (25208, 34, 4259.07, 6253.33, -0.0686721, 0, ''),
   (25208, 35, 4261.11, 6248.81, -0.112029, 0, ''),
   (25208, 36, 4257.58, 6234.09, -0.094803, 0, ''),
   (25208, 37, 4252.62, 6224.3, -0.154816, 0, ''),
   (25208, 38, 4247.92, 6214.75, -0.221144, 0, ''),
   (25208, 39, 4254.04, 6205.58, -0.186623, 0, ''),
   (25208, 40, 4262.6, 6194.47, -0.145114, 0, ''),
   (25208, 41, 4268.96, 6189.47, 0.0303093, 21000, '');

-- Cleanup first
UPDATE `creature_template` SET `ScriptName`='';

/* WORLD BOSS */
UPDATE `creature_template` SET `ScriptName`='boss_ysondre' WHERE `entry`=14887;
UPDATE `creature_template` SET `ScriptName`='boss_emeriss' WHERE `entry`=14889;
UPDATE `creature_template` SET `ScriptName`='boss_taerar' WHERE `entry`=14890;
UPDATE `creature_template` SET `ScriptName`='boss_shade_of_taerar' WHERE `entry`=15302;
UPDATE `creature_template` SET `ScriptName`='boss_kruul' WHERE `entry`=18338;
UPDATE `creature_template` SET `ScriptName`='boss_azuregos' WHERE `entry`=6109;
UPDATE `creature_template` SET `ScriptName`='mob_dementeddruids' WHERE `entry`=15260;

/* GO */
UPDATE `gameobject_template` SET `ScriptName`='go_cat_figurine' WHERE `entry`=13873;
UPDATE `gameobject_template` SET `ScriptName`='go_northern_crystal_pylon' WHERE `entry`=164955;
UPDATE `gameobject_template` SET `ScriptName`='go_western_crystal_pylon' WHERE `entry`=164956;
UPDATE `gameobject_template` SET `ScriptName`='go_eastern_crystal_pylon' WHERE `entry`=164957;
UPDATE `gameobject_template` SET `ScriptName`='go_barov_journal' WHERE `entry`=180794;
UPDATE `gameobject_template` SET `ScriptName`='go_field_repair_bot_74A' WHERE `entry`=179552;
UPDATE `gameobject_template` SET `ScriptName`='go_orb_of_command' WHERE `entry`=179879;
UPDATE `gameobject_template` SET `ScriptName`='go_resonite_cask' WHERE entry=178145;
UPDATE `gameobject_template` SET `ScriptName`='go_tablet_of_madness' WHERE `entry`=180368;
UPDATE `gameobject_template` SET `ScriptName`='go_tablet_of_the_seven' WHERE `entry`=169294;
UPDATE `gameobject_template` SET `ScriptName`='go_manticron_cube' WHERE `entry`=181713;
UPDATE `gameobject_template` SET `ScriptName`='go_mausoleum_trigger' WHERE `entry`=104593;
UPDATE `gameobject_template` SET `ScriptName`='go_mausoleum_door' WHERE `entry`=176594;
UPDATE `gameobject_template` SET `ScriptName`='go_crystal_prison' WHERE `entry`=185126;
UPDATE `gameobject_template` SET `ScriptName`='go_legion_obelisk' WHERE `entry` IN (185193,185195,185196,185197,185198);
UPDATE `gameobject_template` SET `ScriptName`='go_jump_a_tron' WHERE `entry`=183146;
UPDATE `gameobject_template` SET `ScriptName`='go_ethereum_prison' WHERE `entry` BETWEEN 184418 AND 184431;
UPDATE `gameobject_template` SET `ScriptName`='go_ethereum_stasis' WHERE `entry` BETWEEN 185465 AND 185467;
UPDATE `gameobject_template` SET `ScriptName`='go_ethereum_stasis' WHERE `entry`=184595;
UPDATE `gameobject_template` SET `ScriptName`='go_ethereum_stasis' WHERE `entry` BETWEEN 185461 AND 185464;
UPDATE `gameobject_template` SET `ScriptName`='go_sacred_fire_of_life' WHERE `entry`=175944;
UPDATE `gameobject_template` SET `ScriptName`='go_skull_pile' WHERE `entry`=185913;
UPDATE `gameobject_template` SET `ScriptName`='go_tele_to_dalaran_crystal' WHERE `entry`=191230;
UPDATE `gameobject_template` SET `ScriptName`='go_tele_to_violet_stand' WHERE `entry`=191229;
UPDATE `gameobject_template` SET `ScriptName`='go_orb_of_the_blue_flight' WHERE `entry`=188415;
UPDATE `gameobject_template` SET `ScriptName`='go_acherus_soul_prison' WHERE `entry` IN (191577,191580,191581,191582,191583,191584,191585,191586,191587,191588,191589,191590);
UPDATE `gameobject_template` SET `ScriptName`='go_shrine_of_the_birds' WHERE `entry` IN (185547,185553,185551);

/* GUARD */
UPDATE `creature_template` SET `ScriptName`='guard_azuremyst' WHERE `entry`=18038;
UPDATE `creature_template` SET `ScriptName`='guard_orgrimmar' WHERE `entry`=3296;
UPDATE `creature_template` SET `ScriptName`='guard_stormwind' WHERE `entry` IN (68,1976);
UPDATE `creature_template` SET `ScriptName`='guard_contested' WHERE `entry` IN (9460,4624,3502,11190,15184);
UPDATE `creature_template` SET `ScriptName`='guard_elwynnforest' WHERE `entry`=1423;
UPDATE `creature_template` SET `ScriptName`='guard_eversong' WHERE `entry`=16221;
UPDATE `creature_template` SET `ScriptName`='guard_darnassus' WHERE `entry`=4262;
UPDATE `creature_template` SET `ScriptName`='guard_teldrassil' WHERE `entry`=3571;
UPDATE `creature_template` SET `ScriptName`='guard_ironforge' WHERE `entry`=5595;
UPDATE `creature_template` SET `ScriptName`='guard_dunmorogh' WHERE `entry` IN (727,13076);
UPDATE `creature_template` SET `ScriptName`='guard_undercity' WHERE `entry`=5624;
UPDATE `creature_template` SET `ScriptName`='guard_bluffwatcher' WHERE `entry`=3084;
UPDATE `creature_template` SET `ScriptName`='guard_durotar' WHERE `entry`=5953;
UPDATE `creature_template` SET `ScriptName`='guard_mulgore' WHERE `entry` IN (3212,3215,3217,3218,3219,3220,3221,3222,3223,3224);
UPDATE `creature_template` SET `ScriptName`='guard_dunmorogh' WHERE `entry` IN (727,13076);
UPDATE `creature_template` SET `ScriptName`='guard_tirisfal' WHERE `entry` IN (1735,1738,2210,1744,1745,5725,1743,2209,1746,1742);
UPDATE `creature_template` SET `ScriptName`='guard_silvermoon' WHERE `entry`=16222;
UPDATE `creature_template` SET `ScriptName`='guard_exodar' WHERE `entry`=16733;
UPDATE `creature_template` SET `ScriptName`='guard_shattrath' WHERE `entry`=19687;
UPDATE `creature_template` SET `ScriptName`='guard_shattrath_aldor' WHERE `entry`=18549;
UPDATE `creature_template` SET `ScriptName`='guard_shattrath_scryer' WHERE `entry`=18568;

/* INNKEEPER */
UPDATE `creature_template` SET `ScriptName`='npc_innkeeper' WHERE `entry` IN
(32418,32411,29926,30308,31433,32413,30005,29963,31115,31557,29971,18649,15397,6806,6778,16542,17553,19046,16739,16553,11116,9501,
6740,2352,6739,1247,3934,6727,7714,15433,16458,295,5111,7733,7737,6928,6929,6734,8931,1464,6272,7731,17630,6930,6747,12196,6736,
6738,11103,6741,6746,5688,6735,6737,2388,9356,7736,11106,5814,7744,6790,16618,11118,6791,23995,24208,6807,14731,16256,15174,16826,
19531,16602,19470,19232,21088,18245,18906,18905,18251,18907,18908,27148,18914,27187,21746,19352,19319,18957,19571,19495,18913,21744,
23731,21110,23143,23937,25278,25245,26596,24149,24033,25036,24057,27950,27042,22922,27066,27027,27052,26709,24342,26985,27125,26680,
29532,28687,28686,27174,28791,29583,26375,28038,29904);

/* ITEM */
UPDATE `item_template` SET `ScriptName`='item_draenei_fishing_net' WHERE `entry`=23654;
UPDATE `item_template` SET `ScriptName`='item_flying_machine' WHERE `entry` IN (34060,34061);
UPDATE `item_template` SET `ScriptName`='item_gor_dreks_ointment' WHERE `entry`=30175;
UPDATE `item_template` SET `ScriptName`='item_nether_wraith_beacon' WHERE `entry`=31742;
UPDATE `item_template` SET `ScriptName`='item_tainted_core' WHERE `entry`=31088;
UPDATE `item_template` SET `ScriptName`='item_only_for_flight' WHERE `entry` IN (34475,34489,24538);
UPDATE `item_template` SET `ScriptName`='item_incendiary_explosives' WHERE (`entry`=35704);
UPDATE `item_template` SET `ScriptName`='item_mysterious_egg' WHERE `entry` IN(39878);
UPDATE `item_template` SET `ScriptName`='item_disgusting_jar' WHERE `entry` IN(44717);

/* NPC (usually creatures to be found in more than one specific zone) */
UPDATE `creature_template` SET `ScriptName`='npc_air_force_bots' WHERE `entry` IN (2614,2615,21974,21993,21996,21997,21999,22001,22002,22003,22063,22065,22066,22068,22069,22070,22071,22078,22079,22080,22086,22087,22088,22090,22124,22125,22126);
UPDATE `creature_template` SET `ScriptName`='npc_chicken_cluck' WHERE `entry`=620;
UPDATE `creature_template` SET `ScriptName`='npc_dancing_flames' WHERE `entry`=25305;
UPDATE `creature_template` SET `ScriptName`='npc_garments_of_quests' WHERE `entry` IN (12429,12423,12427,12430,12428);
UPDATE `creature_template` SET `ScriptName`='npc_guardian' WHERE `entry`=5764;
UPDATE `creature_template` SET `ScriptName`='npc_mount_vendor' WHERE `entry` IN (384,1261,1460,2357,3362,3685,4730,4731,4885,7952,7955,16264,17584);
UPDATE `creature_template` SET `ScriptName`='npc_doctor' WHERE `entry` IN (12939,12920);
UPDATE `creature_template` SET `ScriptName`='npc_injured_patient' WHERE `entry` IN (12936,12937,12938,12923,12924,12925);
UPDATE `creature_template` SET `ScriptName`='npc_prof_alchemy' WHERE `entry` IN (17909,19052,22427);
UPDATE `creature_template` SET `ScriptName`='npc_prof_blacksmith' WHERE `entry` IN (5164,11145,11146,11176,11177,11178,11191,11192,11193);
UPDATE `creature_template` SET `ScriptName`='npc_engineering_tele_trinket' WHERE `entry` IN (14742,14743,21493,21494);
UPDATE `creature_template` SET `ScriptName`='npc_prof_leather' WHERE `entry` IN (7866,7867,7868,7869,7870,7871);
UPDATE `creature_template` SET `ScriptName`='npc_prof_tailor' WHERE `entry` IN (22208,22212,22213);
UPDATE `creature_template` SET `ScriptName`='npc_rogue_trainer' WHERE `entry` IN (918,4163,3328,4583,5165,5167,13283,16684);
UPDATE `creature_template` SET `ScriptName`='npc_sayge' WHERE `entry`=14822;
UPDATE `creature_template` SET `ScriptName`='npc_steam_tonk' WHERE `entry`=19405;
UPDATE `creature_template` SET `ScriptName`='npc_tonk_mine' WHERE `entry`=15368;
UPDATE `creature_template` SET `ScriptName`='npc_winter_reveler' WHERE `entry`=15760;
UPDATE `creature_template` SET `ScriptName`='npc_brewfest_reveler' WHERE `entry`=24484;
UPDATE `creature_template` SET `ScriptName`='npc_snake_trap_serpents' WHERE `entry` IN (19921,19833);
UPDATE `creature_template` SET `ScriptName`='npc_unworthy_initiate' WHERE `entry` IN (29519,29520,29565,29566,29567);
UPDATE `creature_template` SET `ScriptName`='npc_unworthy_initiate_anchor' WHERE `entry`=29521;
UPDATE `creature_template` SET `ScriptName`='npc_kingdom_of_dalaran_quests' WHERE `entry` IN (29169,23729,26673,27158,29158,29161,26471,29155,29159,29160,29162);
UPDATE `creature_template` SET `ScriptName`='npc_taxi' WHERE `entry` IN (17435,23413,18725,19401,19409,20235,25059,25236,20903,20162,29154,23415,27575,26443,26949,23816,23704,26602);
UPDATE `creature_template` SET `ScriptName`='npc_death_knight_initiate' WHERE `entry`=28406;
UPDATE `creature_template` SET `ScriptName`='npc_salanar_the_horseman' WHERE `entry` IN (28653,28788);
UPDATE `creature_template` SET `ScriptName`='npc_dark_rider_of_acherus' WHERE `entry` =28654;
UPDATE `creature_template` SET `ScriptName`='npc_ros_dark_rider' WHERE `entry`=28768;
UPDATE `creature_template` SET `ScriptName`='npc_dkc1_gothik' WHERE `entry`=28658;
UPDATE `creature_template` SET `ScriptName`='npc_scarlet_ghoul' WHERE `entry`=28845;
UPDATE `creature_template` SET `ScriptName`='npc_a_special_surprise' WHERE `entry` IN (29032,29061,29065,29067,29068,29070,29074,29072,29073,29071);
UPDATE `creature_template` SET `ScriptName`='npc_koltira_deathweaver' WHERE `entry`=28912;
UPDATE `creature_template` SET `ScriptName`='mob_high_inquisitor_valroth' WHERE `entry`=29001;
UPDATE `creature_template` SET `ScriptName`='npc_demolisher_engineerer' WHERE `entry` IN (30400,30499);
UPDATE `creature_template` SET `ScriptName`='npc_valkyr_battle_maiden' WHERE `entry`=28534;
UPDATE `creature_template` SET `ScriptName`='npc_mirror_image' WHERE `entry`=31216;
UPDATE `creature_template` SET `ScriptName`='npc_training_dummy' WHERE `entry` IN (17578,24792,32543,32546,32542,32545,30527,31143,31144,31146,32541,32666,32667,16111,2674,2673);
UPDATE `creature_template` SET `ScriptName`='npc_lightwell' WHERE `entry` IN (31883,31893,31894,31895,31896,31897);
UPDATE `creature_template` SET `ScriptName`='npc_ebon_gargoyle' WHERE `entry`=27829;
UPDATE `gameobject_template` SET `ScriptName`='go_inconspicuous_mine_car' WHERE `entry`=190767;
UPDATE `creature_template` SET `ScriptName`='npc_scarlet_miner_cart' WHERE `entry`=28817;
UPDATE `creature_template` SET `ScriptName`='npc_scarlet_miner' WHERE `entry`=28841;
UPDATE `creature_template` SET `ScriptName`='npc_crusade_persuaded' WHERE `entry` IN (28939,28940,28610);
UPDATE `creature_template` SET `ScriptName`='mob_scarlet_courier' WHERE `entry`=29076;
UPDATE `creature_template` SET `AIName`='ArchorAI', `ScriptName`='' WHERE `entry` IN (29102,29103);
UPDATE `creature_template` SET `AIName`='TurretAI', `ScriptName`='' WHERE `entry`=29104;
UPDATE `creature_template` SET `ScriptName`='npc_highlord_darion_mograine' WHERE `entry`=29173;
UPDATE `creature_template` SET `ScriptName`='npc_the_lich_king_tirion_dawn' WHERE `entry` IN (29183,29175);


/*  */
/* ZONE */
/* */

/* ALTERAC MOUNTAINS */

/* ALTERAC VALLEY */

/* ARATHI HIGHLANDS */
UPDATE `creature_template` SET `ScriptName`='npc_professor_phizzlethorpe' WHERE `entry`=2768;

/* ASHENVALE */
UPDATE `creature_template` SET `ScriptName`='npc_torek' WHERE `entry`=12858;
UPDATE `creature_template` SET `ScriptName`='npc_ruul_snowhoof' WHERE `entry`=12818;

/* AUCHINDOUN */

/* MANA TOMBS */
UPDATE `creature_template` SET `ScriptName`='boss_pandemonius' WHERE `entry`=18341;
UPDATE `creature_template` SET `ScriptName`='boss_nexusprince_shaffar' WHERE `entry`=18344;
UPDATE `creature_template` SET `ScriptName`='mob_ethereal_beacon' WHERE `entry`=18431;
UPDATE `creature_template` SET `ScriptName`='mob_ethereal_apprentice' WHERE `entry`=18430;

/* AUCHENAI CRYPTS */
UPDATE `creature_template` SET `ScriptName`='boss_exarch_maladaar' WHERE `entry`=18373;
UPDATE `creature_template` SET `ScriptName`='mob_avatar_of_martyred' WHERE `entry`=18478;
UPDATE `creature_template` SET `ScriptName`='mob_stolen_soul' WHERE `entry`=18441;
UPDATE `creature_template` SET `ScriptName`='boss_shirrak_the_dead_watcher' WHERE `entry`=18371;
UPDATE `creature_template` SET `ScriptName`='mob_focus_fire' WHERE `entry`=18374;

/* SETHEKK HALLS */
UPDATE `instance_template` SET `script`='instance_sethekk_halls' WHERE `map`=556;
UPDATE `creature_template` SET `ScriptName`='mob_syth_fire' WHERE `entry`=19203;
UPDATE `creature_template` SET `ScriptName`='mob_syth_arcane' WHERE `entry`=19205;
UPDATE `creature_template` SET `ScriptName`='mob_syth_frost' WHERE `entry`=19204;
UPDATE `creature_template` SET `ScriptName`='mob_syth_shadow' WHERE `entry`=19206;
UPDATE `creature_template` SET `ScriptName`='boss_talon_king_ikiss' WHERE `entry`=18473;
UPDATE `creature_template` SET `ScriptName`='boss_darkweaver_syth' WHERE `entry`=18472;

/* SHADOW LABYRINTH */
UPDATE `instance_template` SET `script`='instance_shadow_labyrinth' WHERE `map`=555;
UPDATE `creature_template` SET `ScriptName`='boss_murmur' WHERE `entry`=18708;
UPDATE `creature_template` SET `ScriptName`='boss_grandmaster_vorpil' WHERE `entry`=18732;
UPDATE `creature_template` SET `ScriptName`='boss_blackheart_the_inciter' WHERE `entry`=18667;
UPDATE `creature_template` SET `ScriptName`='boss_ambassador_hellmaw' WHERE `entry`=18731;
UPDATE `creature_template` SET `ScriptName`='mob_voidtraveler' WHERE `entry`=19226;

/* AZJOL-NERUB */
UPDATE `instance_template` SET `script`='instance_azjol_nerub' WHERE `map`=601;
UPDATE `creature_template` SET `ScriptName`='npc_watcher_narjil' WHERE `entry`=28729;
UPDATE `creature_template` SET `ScriptName`='npc_watcher_silthik' WHERE `entry`=28731;
UPDATE `creature_template` SET `ScriptName`='npc_anub_ar_warrior' WHERE `entry`=28732;
UPDATE `creature_template` SET `ScriptName`='npc_watcher_gashra' WHERE `entry`=28730;
UPDATE `creature_template` SET `ScriptName`='boss_krik_thir' WHERE `entry`=28684;
UPDATE `creature_template` SET `ScriptName`='npc_skittering_infector' WHERE `entry`=28736;
UPDATE `creature_template` SET `ScriptName`='npc_anub_ar_skirmisher' WHERE `entry`=28734;
UPDATE `creature_template` SET `ScriptName`='npc_anub_ar_shadowcaster' WHERE `entry`=28733;
UPDATE `creature_template` SET `ScriptName`='boss_hadronox' WHERE `entry`=28921;
UPDATE `creature_template` SET `ScriptName`='boss_anub_arak' WHERE `entry`=29120;

/* AHN'KAHET: THE OLD KINGDOM */
UPDATE `instance_template` SET `script`='instance_ahnkahet' WHERE `map`=619;
UPDATE `creature_template` SET `ScriptName`='boss_elder_nadox' WHERE `entry`=29309;
UPDATE `creature_template` SET `ScriptName`='mob_ahnkahar_nerubian' WHERE `entry` IN (30176,30178);
UPDATE `creature_template` SET `ScriptName`='boss_taldaram' WHERE `entry`=29308;
UPDATE `creature_template` SET `ScriptName`='mob_taldaram_flamesphere' WHERE `entry` IN (30106,31686,31687);
UPDATE `gameobject_template` SET `ScriptName`='prince_taldaram_sphere' WHERE `entry` IN (193093,193094);
UPDATE `creature_template` SET `ScriptName`='boss_volazj' WHERE `entry`=29311;
UPDATE `creature_template` SET `ScriptName`='boss_amanitar' WHERE `entry`=30258;
UPDATE `creature_template` SET `ScriptName`='mob_amanitar_mushrooms' WHERE `entry` IN (30435,30391);
UPDATE `creature_template` SET `ScriptName`='mob_nadox_eggs' WHERE `entry` IN (30172,30173);
UPDATE `creature_template` SET `ScriptName`='boss_jedoga_shadowseeker' WHERE `entry`=29310;
UPDATE `creature_template` SET `ScriptName`='mob_jedoga_initiand' WHERE `entry`=30114;
UPDATE `creature_template` SET `ScriptName`='npc_jedogas_aufseher_trigger' WHERE `entry`=30181;

/* AZSHARA */
UPDATE `creature_template` SET `ScriptName`='mobs_spitelashes' WHERE `entry` IN (6190,6193,6194,6195,6196,7885,7886,12204,12205);
UPDATE `creature_template` SET `ScriptName`='npc_loramus_thalipedes' WHERE `entry`=7783;
UPDATE `creature_template` SET `ScriptName`='mob_rizzle_sprysprocket' WHERE `entry`=23002;
UPDATE `creature_template` SET `ScriptName`='mob_depth_charge' WHERE `entry`=23025;

/* AZUREMYST ISLE */
UPDATE `creature_template` SET `ScriptName`='npc_engineer_spark_overgrind' WHERE `entry`=17243;
UPDATE `creature_template` SET `ScriptName`='npc_injured_draenei' WHERE `entry`=16971;
UPDATE `creature_template` SET `ScriptName`='npc_magwin' WHERE `entry`=17312;
UPDATE `creature_template` SET `ScriptName`='npc_geezle' WHERE `entry`=17318;
UPDATE `creature_template` SET `ScriptName`='npc_nestlewood_owlkin' WHERE `entry`=16518;
UPDATE `creature_template` SET `ScriptName`='npc_draenei_survivor' WHERE `entry`=16483;

/* BADLANDS */

/* BARRENS */
UPDATE `creature_template` SET `ScriptName`='npc_beaten_corpse' WHERE `entry`=10668;
UPDATE `creature_template` SET `ScriptName`='npc_gilthares' WHERE `entry`=3465;
UPDATE `creature_template` SET `ScriptName`='npc_sputtervalve' WHERE `entry`=3442;
UPDATE `creature_template` SET `ScriptName`='npc_taskmaster_fizzule' WHERE `entry`=7233;
UPDATE `creature_template` SET `ScriptName`='npc_twiggy_flathead' WHERE `entry`=6248;
UPDATE `creature_template` SET `ScriptName`='npc_wizzlecrank_shredder' WHERE `entry`=3439;

/* BLACK TEMPLE */
UPDATE `gameobject_template` SET `ScriptName`='go_najentus_spine' WHERE `entry`=185584;
UPDATE `gameobject_template` SET `ScriptName`='gameobject_cage_trap' WHERE `entry`=185916; -- Cage Trap GO in Illidan Encounter
UPDATE `instance_template` SET `script`='instance_black_temple' WHERE `map`=564;
UPDATE `creature_template` SET `ScriptName`='npc_akama_shade' WHERE `entry`=22990; -- Akama at Shade of Akama
UPDATE `creature_template` SET `ScriptName`='npc_akama_illidan' WHERE `entry`=23089; -- Akama at Illidan
UPDATE `creature_template` SET `ScriptName`='mob_illidari_council' WHERE `entry`=23426; -- Illidari Council controller mob
UPDATE `creature_template` SET `ScriptName`='mob_blood_elf_council_voice_trigger' WHERE `entry` =23499; -- Voice Trigger Mob (Controls Aggro + Enrage yells)
UPDATE `creature_template` SET `ScriptName`='boss_veras_darkshadow' WHERE `entry`=22952; -- Rogue of Illidari Council
UPDATE `creature_template` SET `ScriptName`='boss_teron_gorefiend' WHERE `entry`=22871; -- Teron Gorefiend
UPDATE `creature_template` SET `ScriptName`='boss_supremus' WHERE `entry`=22898; -- Supremus
UPDATE `creature_template` SET `ScriptName`='boss_shade_of_akama' WHERE `entry`=22841; -- Shade of Akama
UPDATE `creature_template` SET `ScriptName`='boss_reliquary_of_souls' WHERE `entry`=22856; -- Reliquary Controller Mob
UPDATE `creature_template` SET `ScriptName`='boss_essence_of_suffering' WHERE `entry`=23418; -- Essence Of Suffering
UPDATE `creature_template` SET `ScriptName`='boss_essence_of_desire' WHERE `entry`=23419; -- Essence of Desire
UPDATE `creature_template` SET `ScriptName`='boss_essence_of_anger' WHERE `entry`=23420; -- Essence of Anger
UPDATE `creature_template` SET `ScriptName`='boss_najentus' WHERE `entry`=22887; -- High Warlord Naj'entus
UPDATE `creature_template` SET `ScriptName`='boss_gurtogg_bloodboil' WHERE `entry`=22948; -- Gurtogg Bloodboil
UPDATE `creature_template` SET `ScriptName`='boss_mother_shahraz' WHERE `entry`=22947; -- Mother Shahraz
UPDATE `creature_template` SET `ScriptName`='boss_lady_malande' WHERE `entry`=22951; -- Priest <3 at Illidari Council
UPDATE `creature_template` SET `ScriptName`='boss_illidan_stormrage' WHERE `entry`=22917; -- Illidan The Betrayer!
UPDATE `creature_template` SET `ScriptName`='boss_high_nethermancer_zerevor' WHERE `entry`=22950; -- Mage at Illidari Council
UPDATE `creature_template` SET `ScriptName`='boss_gathios_the_shatterer' WHERE `entry`=22949; -- Paladin at Illidari Council
UPDATE `creature_template` SET `ScriptName`='boss_maiev_shadowsong' WHERE `entry`=23197; -- Maiev Shadowsong
UPDATE `creature_template` SET `ScriptName`='mob_blaze' WHERE `entry`=23259; -- Blaze mob in Illidan Phase 2
UPDATE `creature_template` SET `ScriptName`='mob_flame_of_azzinoth' WHERE `entry`=22997; -- Flame of Azzinoth (Illidan Phase 2)
UPDATE `creature_template` SET `ScriptName`='mob_blade_of_azzinoth' WHERE `entry`=22996; -- Blade of Azzinoth (Illidan Phase 2)
UPDATE `creature_template` SET `ScriptName`='mob_demon_fire' WHERE `entry`=23069; -- Demon Fire in Illidan Phase 2
UPDATE `creature_template` SET `ScriptName`='mob_flame_crash' WHERE `entry`=23336; -- Flame Crash in Illidan Normal Form
UPDATE `creature_template` SET `ScriptName`='mob_cage_trap_trigger' WHERE `entry`=23304; -- Cage Trap mob in Illidan Phase 3/4 Normal
UPDATE `creature_template` SET `ScriptName`='mob_shadow_demon' WHERE `entry`=23375; -- Shadow Demon in Illidan Demon Form
UPDATE `creature_template` SET `ScriptName`='npc_volcano' WHERE `entry`=23085; -- Supremus Volcano
UPDATE `creature_template` SET `ScriptName`='molten_flame' WHERE `entry`=23095; -- Molten Flame in SUpremus
UPDATE `creature_template` SET `ScriptName`='mob_ashtongue_channeler' WHERE `entry`=23421; -- Ashtongue CHanneler in Shade of AKama
UPDATE `creature_template` SET `ScriptName`='mob_ashtongue_sorcerer' WHERE `entry`=23215; -- Ashtongue Sorcerer in Shade of Akama
UPDATE `creature_template` SET `ScriptName`='npc_enslaved_soul' WHERE `entry`=23469; -- Enslaved Soul in Reliquary Event
UPDATE `creature_template` SET `ScriptName`='mob_doom_blossom' WHERE `entry`=23123; -- Doom Blossoms in Teron Gorefiend's encounter
UPDATE `creature_template` SET `ScriptName`='npc_spirit_of_olum' WHERE `entry`=23411;
UPDATE `creature_template` SET `ScriptName`='mob_shadowy_construct' WHERE `entry`=23111;
UPDATE `creature_template` SET `ScriptName`='mob_parasitic_shadowfiend' WHERE `entry`=23498;

/* BLACKFATHOM DEPTHS */
UPDATE `instance_template` SET `script`='instance_blackfathom_deeps' WHERE `map`=48;
UPDATE `gameobject_template` SET `ScriptName`='go_blackfathom_fire' WHERE `entry` IN (21118,21119,21120,21121);


/* BLACKROCK DEPTHS */
UPDATE `instance_template` SET `script`='instance_blackrock_depths' WHERE `map`=230;
UPDATE `creature_template` SET `ScriptName`='boss_emperor_dagran_thaurissan' WHERE `entry`=9019;
UPDATE `creature_template` SET `ScriptName`='boss_moira_bronzebeard' WHERE `entry`=8929;
UPDATE `creature_template` SET `ScriptName`='boss_ambassador_flamelash' WHERE `entry`=9156;
UPDATE `creature_template` SET `ScriptName`='boss_anubshiah' WHERE `entry`=9031;
UPDATE `creature_template` SET `ScriptName`='boss_doomrel' WHERE `entry`=9039;
UPDATE `creature_template` SET `ScriptName`='boss_gloomrel' WHERE `entry`=9037;
UPDATE `creature_template` SET `ScriptName`='boss_general_angerforge' WHERE `entry`=9033;
UPDATE `creature_template` SET `ScriptName`='boss_gorosh_the_dervish' WHERE `entry`=9027;
UPDATE `creature_template` SET `ScriptName`='boss_grizzle' WHERE `entry`=9028;
UPDATE `creature_template` SET `ScriptName`='boss_high_interrogator_gerstahn' WHERE `entry`=9018;
UPDATE `creature_template` SET `ScriptName`='boss_magmus' WHERE `entry`=9938;
UPDATE `creature_template` SET `ScriptName`='npc_lokhtos_darkbargainer' WHERE `entry`=12944;
UPDATE `creature_template` SET `ScriptName`='npc_kharan_mighthammer' WHERE `entry`=9021;
UPDATE `creature_template` SET `ScriptName`='npc_grimstone' WHERE `entry`=10096;
UPDATE `creature_template` SET `ScriptName`='npc_rocknot' WHERE `entry`=9503;
UPDATE `creature_template` SET `ScriptName`='mob_phalanx' WHERE `entry`=9502;
UPDATE `gameobject_template` SET `ScriptName`='go_shadowforge_brazier' WHERE `entry` IN (174744,174745);

/* BLACKROCK SPIRE */

/* BLACKROCK SPIRE Lower bosses */
UPDATE `creature_template` SET `ScriptName`='boss_highlord_omokk' WHERE `entry`=9196;
UPDATE `creature_template` SET `ScriptName`='boss_shadow_hunter_voshgajin' WHERE `entry`=9236;
UPDATE `creature_template` SET `ScriptName`='boss_warmaster_voone' WHERE `entry`=9237;
UPDATE `creature_template` SET `ScriptName`='boss_mother_smolderweb' WHERE `entry`=10596;
UPDATE `creature_template` SET `ScriptName`='quartermaster_zigris' WHERE `entry`=9736;
UPDATE `creature_template` SET `ScriptName`='boss_halycon' WHERE `entry`=10220;
UPDATE `creature_template` SET `ScriptName`='boss_overlord_wyrmthalak' WHERE `entry`=9568;
/* BLACKROCK SPIRE Upper bosses */
UPDATE `creature_template` SET `ScriptName`='boss_the_beast' WHERE `entry`=10430;
UPDATE `creature_template` SET `ScriptName`='boss_drakkisath' WHERE `entry`=10363;
UPDATE `creature_template` SET `ScriptName`='boss_gyth' WHERE `entry`=10339;
UPDATE `creature_template` SET `ScriptName`='boss_rend_blackhand' WHERE `entry`=10429;
UPDATE `creature_template` SET `ScriptName`='boss_pyroguard_emberseer' WHERE `entry`=9816;

/* BLACKWING LAIR */
UPDATE `instance_template` SET `script`='instance_blackwing_lair' WHERE `map`=469;
UPDATE `creature_template` SET `ScriptName`='boss_razorgore' WHERE `entry`=12435;
UPDATE `creature_template` SET `ScriptName`='boss_vaelastrasz' WHERE `entry`=13020;
UPDATE `creature_template` SET `ScriptName`='boss_broodlord' WHERE `entry`=12017;
UPDATE `creature_template` SET `ScriptName`='boss_firemaw' WHERE `entry`=11983;
UPDATE `creature_template` SET `ScriptName`='boss_ebonroc' WHERE `entry`=14601;
UPDATE `creature_template` SET `ScriptName`='boss_flamegor' WHERE `entry`=11981;
UPDATE `creature_template` SET `ScriptName`='boss_chromaggus' WHERE `entry`=14020;
UPDATE `creature_template` SET `ScriptName`='boss_victor_nefarius' WHERE `entry`=10162;
UPDATE `creature_template` SET `ScriptName`='boss_nefarian' WHERE `entry`=11583;

/* BLADE'S EDGE MOUNTAINS */
UPDATE `creature_template` SET `ScriptName`='mobs_bladespire_ogre' WHERE `entry` IN (19998,20334,21296,21975);
UPDATE `creature_template` SET `ScriptName`='mobs_nether_drake' WHERE `entry` IN (20021,21817,21820,21821,21823);
UPDATE `creature_template` SET `ScriptName`='npc_daranelle' WHERE `entry`=21469;
UPDATE `creature_template` SET `ScriptName`='npc_overseer_nuaar' WHERE `entry`=21981;
UPDATE `creature_template` SET `ScriptName`='npc_saikkal_the_elder' WHERE `entry`=22932;
UPDATE `gameobject_template` SET `ScriptName`='go_fel_crystalforge' WHERE `entry`=185919;
UPDATE `gameobject_template` SET `ScriptName`='go_bashir_crystalforge' WHERE `entry`=185921;

/* BLASTED LANDS */
UPDATE `creature_template` SET `ScriptName`='npc_deathly_usher' WHERE `entry`=8816;
UPDATE `creature_template` SET `ScriptName`='npc_fallen_hero_of_horde' WHERE `entry`=7572;

/* BLOODMYST ISLE */
UPDATE `creature_template` SET `ScriptName`='mob_webbed_creature' WHERE `entry`=17680;
UPDATE `creature_template` SET `ScriptName`='npc_captured_sunhawk_agent' WHERE `entry`=17824;

/* BOREAN TUNDRA */
UPDATE `creature_template` SET `ScriptName`='npc_fizzcrank_fullthrottle' WHERE `entry`=25590;
UPDATE `creature_template` SET `ScriptName`='npc_surristrasz' WHERE `entry`=24795;
UPDATE `creature_template` SET `ScriptName`='npc_tiare' WHERE `entry`=30051;
UPDATE `creature_template` SET `ScriptName`='npc_sinkhole_kill_credit' WHERE `entry` IN (26248,26249);
UPDATE `creature_template` SET `ScriptName`='npc_khunok_the_behemoth' WHERE `entry`=25862;
UPDATE `creature_template` SET `ScriptName`='npc_keristrasza' WHERE `entry`=26206;
UPDATE `creature_template` SET `ScriptName`='npc_iruk' WHERE `entry`=26219;
UPDATE `creature_template` SET `ScriptName`='npc_corastrasza' WHERE `entry`=32548;
UPDATE `creature_template` SET `ScriptName`='mob_nerubar_victim' WHERE `entry`=25284;
UPDATE `creature_template` SET `ScriptName`='npc_scourge_prisoner' WHERE `entry`=25610;
UPDATE `gameobject_template` SET `ScriptName`='go_scourge_cage' WHERE `entry`=187867;
UPDATE `creature_template` SET `ScriptName`='npc_loklira_crone' WHERE `entry`=29975;
UPDATE `creature_template` SET `ScriptName`='npc_victorious_challenger' WHERE `entry`=30012;
UPDATE `creature_template` SET `ScriptName`='npc_mcgoyver' WHERE `entry`=24040;
UPDATE `creature_template` SET `ScriptName`='npc_jenny' WHERE `entry`=25969;
UPDATE `creature_template` SET `ScriptName`='npc_lurgglbr' WHERE `entry`=25208;
UPDATE `creature_template` SET `ScriptName`='npc_nexus_drake_hatchling' WHERE `entry`=26127;
UPDATE `creature_template` SET `ScriptName`='npc_nesingwary_trapper' WHERE `entry`=25835;
UPDATE `item_template` SET `ScriptName`='item_pile_fake_furs' WHERE `entry`=35127;

/* BURNING STEPPES */
UPDATE `creature_template` SET `ScriptName`='npc_ragged_john' WHERE `entry`=9563;

/*  */
/* CAVERNS OF TIME */
/*  */

/* MT. HYJAL */
UPDATE `instance_template` SET `script`='instance_hyjal' WHERE `map`=534;
UPDATE `creature_template` SET `ScriptName`='npc_tyrande_whisperwind' WHERE `entry`=17948;
UPDATE `creature_template` SET `ScriptName`='npc_thrall' WHERE `entry` =17852;
UPDATE `creature_template` SET `ScriptName`='npc_jaina_proudmoore' WHERE `entry`=17772;
UPDATE `creature_template` SET `ScriptName`='boss_archimonde' WHERE `entry`=17968;
UPDATE `creature_template` SET `ScriptName`='mob_doomfire' WHERE `entry`=18095;
UPDATE `creature_template` SET `ScriptName`='mob_doomfire_targetting' WHERE `entry`=18104;
UPDATE `creature_template` SET `ScriptName`='mob_ancient_wisp' WHERE `entry`=17946;
UPDATE `creature_template` SET `ScriptName`='mob_giant_infernal' WHERE `entry`=17908;
UPDATE `creature_template` SET `ScriptName`='mob_abomination' WHERE `entry`=17898;
UPDATE `creature_template` SET `ScriptName`='mob_ghoul' WHERE `entry`=17895;
UPDATE `creature_template` SET `ScriptName`='mob_necromancer' WHERE `entry`=17899;
UPDATE `creature_template` SET `ScriptName`='mob_banshee' WHERE `entry`=17905;
UPDATE `creature_template` SET `ScriptName`='mob_crypt_fiend' WHERE `entry`=17897;
UPDATE `creature_template` SET `ScriptName`='mob_fel_stalker' WHERE `entry`=17916;
UPDATE `creature_template` SET `ScriptName`='mob_frost_wyrm' WHERE `entry`=17907;
UPDATE `creature_template` SET `ScriptName`='mob_gargoyle' WHERE `entry`=17906;
UPDATE `creature_template` SET `ScriptName`='alliance_rifleman' WHERE `entry`=17921;
UPDATE `creature_template` SET `ScriptName`='mob_towering_infernal' WHERE `entry`=17818;
UPDATE `creature_template` SET `ScriptName`='boss_anetheron' WHERE `entry`=17808;
UPDATE `creature_template` SET `ScriptName`='boss_azgalor' WHERE `entry`=17842;
UPDATE `creature_template` SET `ScriptName`='mob_lesser_doomguard' WHERE `entry`=17864;
UPDATE `creature_template` SET `ScriptName`='boss_kazrogal' WHERE `entry`=17888;
UPDATE `creature_template` SET `ScriptName`='boss_rage_winterchill' WHERE `entry`=17767;

/* OLD HILLSBRAD */
UPDATE `instance_template` SET `script`='instance_old_hillsbrad' WHERE `map`=560;
UPDATE `creature_template` SET `ScriptName`='boss_lieutenant_drake' WHERE `entry`=17848;
UPDATE `creature_template` SET `ScriptName`='boss_epoch_hunter' WHERE `entry`=18096;
UPDATE `creature_template` SET `ScriptName`='boss_captain_skarloc' WHERE `entry`=17862;
UPDATE `creature_template` SET `ScriptName`='npc_erozion' WHERE `entry`=18723;
UPDATE `creature_template` SET `ScriptName`='npc_taretha' WHERE `entry`=18887;
UPDATE `creature_template` SET `ScriptName`='npc_thrall_old_hillsbrad' WHERE `entry`=17876;
UPDATE `gameobject_template` SET `ScriptName`='go_barrel_old_hillsbrad' WHERE `entry`=182589;

/* THE DARK PORTAL */
UPDATE `instance_template` SET `script`='instance_dark_portal' WHERE `map`=269;
UPDATE `creature_template` SET `ScriptName`='boss_chrono_lord_deja' WHERE `entry`=17879;
UPDATE `creature_template` SET `ScriptName`='boss_aeonus' WHERE `entry`=17881;
UPDATE `creature_template` SET `ScriptName`='boss_temporus' WHERE `entry`=17880;
UPDATE `creature_template` SET `ScriptName`='npc_medivh_bm' WHERE `entry`=15608;
UPDATE `creature_template` SET `ScriptName`='npc_time_rift' WHERE `entry`=17838;
UPDATE `creature_template` SET `ScriptName`='npc_saat' WHERE `entry`=20201;

/* COILFANG RESERVOIR */

/* THE SLAVE PENS */

/* THE UNDERBOG */
UPDATE `creature_template` SET `ScriptName`='mob_underbog_mushroom' WHERE `entry`=17990;
UPDATE `creature_template` SET `ScriptName`='boss_hungarfen' WHERE `entry`=17770;
UPDATE `creature_template` SET `ScriptName`='boss_the_black_stalker' WHERE `entry`=17882;

/* THE STEAMVAULT */
UPDATE `instance_template` SET `script`='instance_steam_vault' WHERE `map`=545;
UPDATE `creature_template` SET `ScriptName`='boss_hydromancer_thespia' WHERE `entry`=17797;
UPDATE `creature_template` SET `ScriptName`='boss_mekgineer_steamrigger' WHERE `entry`=17796;
UPDATE `creature_template` SET `ScriptName`='boss_warlord_kalithresh' WHERE `entry`=17798;
UPDATE `creature_template` SET `ScriptName`='mob_coilfang_waterelemental' WHERE `entry`=17917;
UPDATE `creature_template` SET `ScriptName`='mob_naga_distiller' WHERE `entry`=17954;
UPDATE `creature_template` SET `ScriptName`='mob_steamrigger_mechanic' WHERE `entry`=17951;

/* SERPENTSHRINE CAVERN */
UPDATE `instance_template` SET `script`='instance_serpent_shrine' WHERE `map`=548;
UPDATE `creature_template` SET `ScriptName`='boss_hydross_the_unstable' WHERE `entry`=21216;
UPDATE `gameobject_template` SET `ScriptName`='go_bridge_console' WHERE `entry`=184568;

/* Leotheras the Blind event */
UPDATE `creature_template` SET `ScriptName`='boss_leotheras_the_blind' WHERE `entry`=21215;
UPDATE `creature_template` SET `ScriptName`='boss_leotheras_the_blind_demonform' WHERE `entry`=21875;
UPDATE `creature_template` SET `ScriptName`='mob_greyheart_spellbinder' WHERE `entry`=21806;
UPDATE `creature_template` SET `ScriptName`='mob_inner_demon' WHERE `entry`=21857;
/* Fathom-lord Karathress event */
UPDATE `creature_template` SET `ScriptName`='boss_fathomlord_karathress' WHERE `entry`=21214;
UPDATE `creature_template` SET `ScriptName`='boss_fathomguard_sharkkis' WHERE `entry`=21966;
UPDATE `creature_template` SET `ScriptName`='boss_fathomguard_tidalvess' WHERE `entry`=21965;
UPDATE `creature_template` SET `ScriptName`='boss_fathomguard_caribdis' WHERE `entry`=21964;
/* Morogrim Tidewalker event */
UPDATE `creature_template` SET `ScriptName`='boss_morogrim_tidewalker' WHERE `entry`=21213;
UPDATE `creature_template` SET `ScriptName`='mob_water_globule' WHERE `entry`=21913;
/* The Lurker Below */
UPDATE `creature_template` SET `ScriptName`='boss_the_lurker_below' WHERE `entry`=21217;
UPDATE `creature_template` SET `ScriptName`='mob_coilfang_ambusher' WHERE `entry`=21865;
UPDATE `creature_template` SET `ScriptName`='mob_coilfang_guardian' WHERE `entry`=21873;
/* Lady Vashj event */
UPDATE `creature_template` SET `ScriptName`='boss_lady_vashj' WHERE `entry`=21212;
UPDATE `creature_template` SET `ScriptName`='mob_enchanted_elemental' WHERE `entry`=21958;
UPDATE `creature_template` SET `ScriptName`='mob_tainted_elemental' WHERE `entry`=22009;
UPDATE `creature_template` SET `ScriptName`='mob_coilfang_elite' WHERE `entry`=22055;
UPDATE `creature_template` SET `ScriptName`='mob_coilfang_strider' WHERE `entry`=22056;
UPDATE `creature_template` SET `ScriptName`='mob_toxic_sporebat' WHERE `entry`=22140;
UPDATE `creature_template` SET `ScriptName`='mob_shield_generator_channel' WHERE `entry`=19870;

/* DARKSHORE */
UPDATE `creature_template` SET `ScriptName`='npc_kerlonian' WHERE `entry`=11218;
UPDATE `creature_template` SET `ScriptName`='npc_threshwackonator' WHERE `entry`=6669;
UPDATE `creature_template` SET `ScriptName`='npc_prospector_remtravel' WHERE `entry`=2917;

/* DEADMINES */
UPDATE `instance_template` SET `script`='instance_deadmines' WHERE `map`=36;
UPDATE `item_template` SET `ScriptName`='item_defias_gunpowder' WHERE `entry`=5397;
UPDATE `gameobject_template` SET `ScriptName`='go_defias_cannon' WHERE `entry`=16398;
UPDATE `gameobject_template` SET `ScriptName`='go_door_lever_dm' WHERE `entry`=101833;
UPDATE `gameobject_template` SET `ScriptName`='go_main_chambers_access_panel' WHERE `entry` IN (184125,184126);

/* DRAGONBLIGHT */
UPDATE `creature_template` SET `ScriptName`='npc_alexstrasza_wr_gate' WHERE `entry`=31333;

/* DEADWIND PASS */

/* DESOLACE */
UPDATE `creature_template` SET `ScriptName`='npc_aged_dying_ancient_kodo' WHERE `entry` IN (4700,4701,4702,11627);
UPDATE `gameobject_template` SET `ScriptName` = 'go_iruxos' WHERE `entry` = 176581;


/* DIRE MAUL */

/* DUN MOROGH */
UPDATE `creature_template` SET `ScriptName`='npc_narm_faulk' WHERE `entry`=6177;

/* DUROTAR */

/* DUSKWOOD */
DELETE FROM `areatrigger_scripts` WHERE `entry`=4017;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES (4017,'at_twilight_grove');
UPDATE `creature_template` SET `ScriptName`='boss_twilight_corrupter' WHERE `entry`=15625;

/* DUSTWALLOW MARSH */
UPDATE `creature_template` SET `ScriptName`='mobs_risen_husk_spirit' WHERE `entry` IN (23554,23555);
UPDATE `creature_template` SET `ScriptName`='npc_deserter_agitator' WHERE `entry`=23602;
UPDATE `creature_template` SET `ScriptName`='npc_lady_jaina_proudmoore' WHERE `entry`=4968;
UPDATE `creature_template` SET `ScriptName`='npc_nat_pagle' WHERE `entry`=12919;
UPDATE `creature_template` SET `ScriptName`='npc_restless_apparition' WHERE `entry`=23861;
UPDATE `creature_template` SET `ScriptName`='npc_private_hendel' WHERE `entry`=4966;

/* EASTERN PLAGUELANDS */
UPDATE `creature_template` SET `ScriptName`='mobs_ghoul_flayer' WHERE `entry` IN (8530,8531,8532);
UPDATE `creature_template` SET `ScriptName`='npc_augustus_the_touched' WHERE `entry`=12384;
UPDATE `creature_template` SET `ScriptName`='npc_darrowshire_spirit' WHERE `entry`=11064;
UPDATE `creature_template` SET `ScriptName`='npc_tirion_fordring' WHERE `entry`=1855;

/* ELWYNN FOREST */
UPDATE `creature_template` SET `ScriptName`='npc_henze_faulk' WHERE `entry`=6172;

/* EVERSONG WOODS */
UPDATE `creature_template` SET `ScriptName`='npc_prospector_anvilward' WHERE `entry`=15420;
UPDATE `creature_template` SET `ScriptName`='npc_second_trial_paladin' WHERE `entry` IN (17809,17810,17811,17812);
UPDATE `creature_template` SET `ScriptName`='npc_second_trial_controller' WHERE `entry` IN (17807);
UPDATE `creature_template` SET `ScriptName`='npc_apprentice_mirveda' WHERE `entry`=15402;
UPDATE `creature_template` SET `ScriptName`='npc_infused_crystal' WHERE `entry`=16364;
UPDATE `gameobject_template` SET `ScriptName`='go_second_trial' WHERE `entry` IN (182052);

/* FELWOOD */
UPDATE `creature_template` SET `ScriptName`='npcs_riverbreeze_and_silversky' WHERE `entry` IN (9528,9529);

/* FERALAS */
UPDATE `creature_template` SET `ScriptName`='npc_gregan_brewspewer' WHERE `entry`=7775;
UPDATE `creature_template` SET `ScriptName`='npc_screecher_spirit' WHERE `entry`=8612;
UPDATE `creature_template` SET `ScriptName`='npc_oox22fe' WHERE `entry`=7807;

/* GHOSTLANDS */
UPDATE `creature_template` SET `ScriptName`='npc_blood_knight_dawnstar' WHERE `entry`=17832;
UPDATE `creature_template` SET `ScriptName`='npc_budd_nedreck' WHERE `entry`=23559;
UPDATE `creature_template` SET `ScriptName`='npc_rathis_tomber' WHERE `entry`=16224;
UPDATE `creature_template` SET `Scriptname`='npc_ranger_lilatha' WHERE `entry`=16295;
UPDATE `gameobject_template` SET `ScriptName`='go_gilded_brazier' WHERE `entry`=181956;

/* GNOMEREGAN */

/* GRIZZLY HILLS */
UPDATE `creature_template` SET `ScriptName`='npc_orsonn_and_kodian' WHERE `entry` IN (27274,27275);

/* DRAK'THARON KEEP */
UPDATE `instance_template` SET `script`='instance_drak_tharon' WHERE `map`=600;
UPDATE `creature_template` SET `ScriptName`='boss_trollgore' WHERE `entry`=26630;
UPDATE `creature_template` SET `ScriptName`='boss_novos' WHERE `entry`=26631;
UPDATE `creature_template` SET `ScriptName`='mob_crystal_handler' WHERE `entry`=26627;
UPDATE `creature_template` SET `ScriptName`='mob_novos_minion' WHERE `entry` IN (27600,27597,27598);
UPDATE `creature_template` SET `ScriptName`='npc_drakkari_gutripper' WHERE `entry`=26641;
UPDATE `creature_template` SET `ScriptName`='npc_drakkari_scytheclaw' WHERE `entry`=26628;
UPDATE `creature_template` SET `ScriptName`='boss_dred' WHERE `entry`=27483;
UPDATE `creature_template` SET `ScriptName`='boss_tharon_ja' WHERE `entry`=26632;

/* GRUUL'S LAIR */
UPDATE `instance_template` SET `script`='instance_gruuls_lair' WHERE `map`=565;
UPDATE `creature_template` SET `ScriptName`='boss_gruul' WHERE `entry`=19044;
/* Maulgar and Event */
UPDATE `creature_template` SET `ScriptName`='boss_high_king_maulgar' WHERE `entry`=18831;
UPDATE `creature_template` SET `ScriptName`='boss_kiggler_the_crazed' WHERE `entry`=18835;
UPDATE `creature_template` SET `ScriptName`='boss_blindeye_the_seer' WHERE `entry`=18836;
UPDATE `creature_template` SET `ScriptName`='boss_olm_the_summoner' WHERE `entry`=18834;
UPDATE `creature_template` SET `ScriptName`='boss_krosh_firehand' WHERE `entry`=18832;

/* GUNDRAK */
UPDATE `instance_template` SET `script`='instance_gundrak' WHERE `map`=604;
/* Moorabi */
UPDATE `creature_template` SET `ScriptName`='boss_moorabi' WHERE `entry`=29305;
/* Slad'ran */
UPDATE `creature_template` SET `ScriptName`='boss_slad_ran' WHERE `entry`=29304;
UPDATE `creature_template` SET `ScriptName`='mob_slad_ran_viper' WHERE `entry`=29680;
UPDATE `creature_template` SET `ScriptName`='mob_slad_ran_constrictor' WHERE `entry`=29713;
/* Gal'darah */
UPDATE `creature_template` SET `ScriptName`='boss_gal_darah' WHERE `entry`=29306;
/* Drakkari Colossus */
UPDATE `creature_template` SET `ScriptName`='boss_drakkari_colossus' WHERE `entry`=29307;
UPDATE `creature_template` SET `ScriptName`='boss_drakkari_elemental' WHERE `entry`=29573;
UPDATE `creature_template` SET `ScriptName`='npc_living_mojo' WHERE `entry`=29830;
/* Eck the Ferocious */
UPDATE `creature_template` SET `ScriptName`='boss_eck' WHERE `entry`=29932;

UPDATE `gameobject_template` SET `ScriptName`='go_gundrak_altar' WHERE `entry`=192518;
UPDATE `gameobject_template` SET `ScriptName`='go_gundrak_altar' WHERE `entry`=192519;
UPDATE `gameobject_template` SET `ScriptName`='go_gundrak_altar' WHERE `entry`=192520;

/* HALLS OF LIGHTNING */
UPDATE `instance_template` SET `script`='instance_halls_of_lightning' WHERE `map`=602;
/* Bjarngrim */
UPDATE `creature_template` SET `ScriptName`='boss_bjarngrim' WHERE `entry`=28586;
UPDATE `creature_template` SET `ScriptName`='mob_stormforged_lieutenant' WHERE `entry`=29240;
/* Loken */
UPDATE `creature_template` SET `ScriptName`='boss_loken' WHERE `entry`=28923;
/* Volkhan */
UPDATE `creature_template` SET `ScriptName`='boss_volkhan' WHERE `entry`=28587;
UPDATE `creature_template` SET `ScriptName`='mob_molten_golem' WHERE `entry`=28695;
UPDATE `creature_template` SET `ScriptName`='npc_volkhan_anvil' WHERE `entry`=28823;
/* Ionar */
UPDATE `creature_template` SET `ScriptName`='boss_ionar' WHERE `entry`=28546;
UPDATE `creature_template` SET `ScriptName`='mob_spark_of_ionar' WHERE `entry`=28926;

/* HALLS OF STONE */
UPDATE `instance_template` SET `script`='instance_halls_of_stone' WHERE `map`=599;
/* Krystallus */
UPDATE `creature_template` SET `ScriptName`='boss_krystallus' WHERE `entry`=27977;
/* Sjonnir */
UPDATE `creature_template` SET `ScriptName`='boss_sjonnir' WHERE `entry`=27978;
UPDATE `creature_template` SET `ScriptName`='mob_tribuna_controller' WHERE `entry`=28234;
UPDATE `creature_template` SET `ScriptName`='npc_brann_hos' WHERE `entry`=28070;
UPDATE `creature_template` SET `ScriptName`='mob_malformed_ooze' WHERE `entry`=27981;
UPDATE `creature_template` SET `ScriptName`='mob_iron_sludge' WHERE `entry`=28165;
/* Maiden of Grief */
UPDATE `creature_template` SET `ScriptName`='boss_maiden_of_grief' WHERE `entry`=27975;

/* HELLFIRE CITADEL */

/* BLOOD FURNACE */
UPDATE `instance_template` SET `script`='instance_blood_furnace' WHERE `map`=542;
UPDATE `creature_template` SET `ScriptName`='boss_the_maker' WHERE `entry`=17381;
UPDATE `creature_template` SET `ScriptName`='boss_broggok' WHERE `entry`=17380;
UPDATE `creature_template` SET `ScriptName`='boss_kelidan_the_breaker' WHERE `entry`=17377;
UPDATE `creature_template` SET `ScriptName`='mob_broggok_poisoncloud' WHERE `entry`=17662;
UPDATE `creature_template` SET `ScriptName`='mob_shadowmoon_channeler' WHERE `entry`=17653;

/* HELLFIRE RAMPARTS */
UPDATE `instance_template` SET `script`='instance_ramparts' WHERE `map`=543;

/* Vazruden, Omor the Unscarred, Watchkeeper Gargolmar */
UPDATE `creature_template` SET `ScriptName`='boss_omor_the_unscarred' WHERE `entry`=17308;
UPDATE `creature_template` SET `ScriptName`='boss_watchkeeper_gargolmar' WHERE `entry`=17306;
UPDATE `creature_template` SET `ScriptName`='boss_vazruden_the_herald' WHERE `entry`=17307;
UPDATE `creature_template` SET `ScriptName`='boss_vazruden' WHERE `entry`=17537;
UPDATE `creature_template` SET `ScriptName`='boss_nazan' WHERE `entry`=17536;
UPDATE `creature_template` SET `ScriptName`='mob_hellfire_sentry' WHERE `entry`=17517;
	
/* SHATTERED HALLS */
/* Nethekurse and his spawned shadow fissure */
UPDATE `creature_template` SET `ScriptName`='boss_grand_warlock_nethekurse' WHERE `entry`=16807;
UPDATE `creature_template` SET `ScriptName`='boss_warchief_kargath_bladefist' WHERE `entry`=16808;
UPDATE `creature_template` SET `ScriptName`='boss_warbringer_omrogg' WHERE `entry`=16809;
UPDATE `creature_template` SET `ScriptName`='mob_fel_orc_convert' WHERE `entry`=17083;
UPDATE `creature_template` SET `ScriptName`='mob_lesser_shadow_fissure' WHERE `entry`=17471;
UPDATE `creature_template` SET `ScriptName`='mob_omrogg_heads' WHERE `entry` IN (19523,19524);
UPDATE `instance_template` SET `script`='instance_shattered_halls' WHERE `map`=540;

/* MAGTHERIDON'S LAIR */
UPDATE `instance_template` SET `script`='instance_magtheridons_lair' WHERE `map`=544;
UPDATE `gameobject_template` SET `ScriptName`='go_manticron_cube' WHERE `entry`=181713;
UPDATE `creature_template` SET `ScriptName`='boss_magtheridon' WHERE `entry`=17257;
UPDATE `creature_template` SET `ScriptName`='mob_hellfire_channeler' WHERE `entry`=17256;
UPDATE `creature_template` SET `ScriptName`='mob_abyssal' WHERE `entry`=17454;

/* HELLFIRE PENINSULA */
UPDATE `creature_template` SET `ScriptName`='boss_doomlord_kazzak' WHERE `entry`=18728;
UPDATE `creature_template` SET `ScriptName`='npc_wounded_blood_elf' WHERE `entry`=16993;
UPDATE `creature_template` SET `ScriptName`='npc_aeranas' WHERE `entry`=17085;
UPDATE `gameobject_template` SET `ScriptName`='go_haaleshi_altar' WHERE `entry`=181606;
UPDATE `creature_template` SET `ScriptName`='npc_naladu' WHERE `entry`=19361;
UPDATE `creature_template` SET `ScriptName`='npc_tracy_proudwell' WHERE `entry`=18266;
UPDATE `creature_template` SET `ScriptName`='npc_trollbane' WHERE `entry`=16819;
UPDATE `creature_template` SET `ScriptName`='npc_ancestral_wolf' WHERE `entry`=17077;

/* HILLSBRAD FOOTHILLS */

/* HINTERLANDS */
UPDATE `creature_template` SET `ScriptName`='npc_00x09hl' WHERE `entry`=7806;
UPDATE `creature_template` SET `ScriptName`='npc_rinji' WHERE `entry`=7780;

/* HOWLING FJORD */
UPDATE `creature_template` SET `ScriptName`='npc_plaguehound_tracker' WHERE `entry`=24156;
UPDATE `creature_template` SET `ScriptName`='npc_razael_and_lyana',`npcflag`=`npcflag`|1 WHERE `entry` IN (23778,23998);
UPDATE `creature_template` SET `ScriptName`='npc_apothecary_hanes' WHERE `entry`=23784;

/* ICECROWN */
UPDATE `creature_template` SET `ScriptName`='npc_arete' WHERE `entry`=29344;

/* IRONFORGE */
UPDATE `creature_template` SET `ScriptName`='npc_royal_historian_archesonus' WHERE `entry`=8879;

/* ISLE OF QUEL'DANAS */
UPDATE `creature_template` SET `ScriptName`='npc_converted_sentry' WHERE `entry`=24981;
UPDATE `creature_template` SET `ScriptName`='npc_greengill_slave' WHERE `entry`=25084;

/* KARAZHAN */
UPDATE `instance_template` SET `script`='instance_karazhan' WHERE `map`=532;
UPDATE `creature_template` SET `ScriptName`='boss_midnight' WHERE `entry`=16151;
UPDATE `creature_template` SET `ScriptName`='boss_attumen' WHERE `entry`=15550;
UPDATE `creature_template` SET `ScriptName`='boss_moroes' WHERE `entry`=15687;
UPDATE `creature_template` SET `ScriptName`='boss_maiden_of_virtue' WHERE `entry`=16457;
UPDATE `creature_template` SET `ScriptName`='boss_curator' WHERE `entry`=15691;
UPDATE `creature_template` SET `ScriptName`='boss_julianne' WHERE `entry`=17534;
UPDATE `creature_template` SET `ScriptName`='boss_romulo' WHERE `entry`=17533;
UPDATE `creature_template` SET `ScriptName`='boss_dorothee' WHERE `entry`=17535;
UPDATE `creature_template` SET `ScriptName`='boss_strawman' WHERE `entry`=17543;
UPDATE `creature_template` SET `ScriptName`='boss_tinhead' WHERE `entry`=17547;
UPDATE `creature_template` SET `ScriptName`='mob_tito' WHERE `entry`=17548;
UPDATE `creature_template` SET `ScriptName`='boss_roar' WHERE `entry`=17546;
UPDATE `creature_template` SET `ScriptName`='boss_crone' WHERE `entry`=18168;
UPDATE `creature_template` SET `ScriptName`='boss_terestian_illhoof' WHERE `entry`=15688;
UPDATE `creature_template` SET `ScriptName`='boss_shade_of_aran' WHERE `entry`=16524;
UPDATE `creature_template` SET `ScriptName`='boss_netherspite' WHERE `entry`=15689;
UPDATE `creature_template` SET `ScriptName`='boss_malchezaar' WHERE `entry`=15690;
UPDATE `creature_template` SET `ScriptName`='boss_nightbane' WHERE `entry`=17225;
UPDATE `creature_template` SET `ScriptName`='boss_baroness_dorothea_millstipe' WHERE `entry`=19875;
UPDATE `creature_template` SET `ScriptName`='boss_baron_rafe_dreuger' WHERE `entry`=19874;
UPDATE `creature_template` SET `ScriptName`='boss_lady_catriona_von_indi' WHERE `entry`=19872;
UPDATE `creature_template` SET `ScriptName`='boss_lady_keira_berrybuck' WHERE `entry`=17007;
UPDATE `creature_template` SET `ScriptName`='boss_lord_robin_daris' WHERE `entry`=19876;
UPDATE `creature_template` SET `ScriptName`='boss_lord_crispin_ference' WHERE `entry`=19873;
UPDATE `creature_template` SET `ScriptName`='boss_bigbadwolf' WHERE `entry`=17521;
UPDATE `creature_template` SET `ScriptName`='mob_shadow_of_aran' WHERE `entry`=18254;
UPDATE `creature_template` SET `ScriptName`='mob_aran_elemental' WHERE `entry`=17167;
UPDATE `creature_template` SET `ScriptName`='mob_aran_blizzard' WHERE `entry`=17161;
UPDATE `creature_template` SET `ScriptName`='mob_homunculus' WHERE `entry`=16539;
UPDATE `creature_template` SET `ScriptName`='mob_fiendish_imp' WHERE `entry`=17267;
UPDATE `creature_template` SET `ScriptName`='mob_kilrek' WHERE `entry`=17229;
UPDATE `creature_template` SET `ScriptName`='mob_demon_chain' WHERE `entry`=17248;
UPDATE `creature_template` SET `ScriptName`='mob_cyclone' WHERE `entry`=18412;
UPDATE `creature_template` SET `ScriptName`='netherspite_infernal' WHERE `entry`=17646;
UPDATE `creature_template` SET `ScriptName`='npc_berthold' WHERE `entry`=16153;
UPDATE `creature_template` SET `ScriptName`='npc_barnes' WHERE `entry`=16812;
UPDATE `creature_template` SET `ScriptName`='npc_grandmother' WHERE `entry`=17603;
UPDATE `creature_template` SET `ScriptName`='npc_image_of_medivh' WHERE `entry`=17651;

/* LOCH MODAN */
UPDATE `creature_template` SET `ScriptName`='npc_mountaineer_pebblebitty' WHERE `entry`=3836;

/* Magister's Terrace */
UPDATE `instance_template` SET `script`='instance_magisters_terrace' WHERE `map`=585;
UPDATE `creature_template` SET `ScriptName`='boss_selin_fireheart' WHERE `entry`=24723;
UPDATE `creature_template` SET `ScriptName`='mob_fel_crystal' WHERE `entry`=24722;
UPDATE `creature_template` SET `ScriptName`='boss_vexallus' WHERE `entry`=24744;
UPDATE `creature_template` SET `ScriptName`='mob_pure_energy' WHERE `entry`=24745;
UPDATE `creature_template` SET `ScriptName`='boss_priestess_delrissa' WHERE `entry`=24560;
UPDATE `creature_template` SET `ScriptName`='boss_kagani_nightstrike' WHERE `entry`=24557;
UPDATE `creature_template` SET `ScriptName`='boss_ellris_duskhallow' WHERE `entry`=24558;
UPDATE `creature_template` SET `ScriptName`='boss_eramas_brightblaze' WHERE `entry`=24554;
UPDATE `creature_template` SET `ScriptName`='boss_yazzai' WHERE `entry`=24561;
UPDATE `creature_template` SET `ScriptName`='boss_warlord_salaris' WHERE `entry`=24559;
UPDATE `creature_template` SET `ScriptName`='boss_garaxxas' WHERE `entry`=24555;
UPDATE `creature_template` SET `ScriptName`='mob_sliver' WHERE `entry`=24552;
UPDATE `creature_template` SET `ScriptName`='boss_apoko' WHERE `entry`=24553;
UPDATE `creature_template` SET `ScriptName`='boss_zelfan' WHERE `entry`=24556;
UPDATE `creature_template` SET `ScriptName`='boss_felblood_kaelthas' WHERE `entry`=24664;
UPDATE `creature_template` SET `ScriptName`='mob_arcane_sphere' WHERE `entry`=24708;
UPDATE `creature_template` SET `ScriptName`='mob_felkael_phoenix' WHERE `entry`=24674;
UPDATE `creature_template` SET `ScriptName`='mob_felkael_phoenix_egg' WHERE `entry`=24675;
UPDATE `creature_template` SET `ScriptName`='mob_felkael_flamestrike' WHERE `entry`=24666;
UPDATE `creature_template` SET `ScriptName`='npc_kalecgos' WHERE `entry` IN (24844,24848);

/* MARAUDON */
UPDATE `creature_template` SET `ScriptName`='boss_princess_theradras' WHERE `entry`=12201;
UPDATE `creature_template` SET `ScriptName`='boss_noxxion' WHERE `entry`=13282;
UPDATE `creature_template` SET `ScriptName`='boss_landslide' WHERE `entry`=12203;
UPDATE `creature_template` SET `ScriptName`='celebras_the_cursed' WHERE `entry`=12225;

/* MOLTEN CORE */
UPDATE `instance_template` SET `script`='instance_molten_core' WHERE `map`=409;
UPDATE `creature_template` SET `ScriptName`='boss_lucifron' WHERE `entry`=12118;
UPDATE `creature_template` SET `ScriptName`='boss_magmadar' WHERE `entry`=11982;
UPDATE `creature_template` SET `ScriptName`='boss_gehennas' WHERE `entry`=12259;
UPDATE `creature_template` SET `ScriptName`='boss_garr' WHERE `entry`=12057;
UPDATE `creature_template` SET `ScriptName`='boss_baron_geddon' WHERE `entry`=12056;
UPDATE `creature_template` SET `ScriptName`='boss_shazzrah' WHERE `entry`=12264;
UPDATE `creature_template` SET `ScriptName`='boss_golemagg' WHERE `entry`=11988;
UPDATE `creature_template` SET `ScriptName`='boss_sulfuron' WHERE `entry`=12098;
UPDATE `creature_template` SET `ScriptName`='boss_majordomo' WHERE `entry`=12018;
UPDATE `creature_template` SET `ScriptName`='boss_ragnaros' WHERE `entry`=11502;
UPDATE `creature_template` SET `ScriptName`='mob_ancient_core_hound' WHERE `entry`=11673;
UPDATE `creature_template` SET `ScriptName`='mob_firesworn' WHERE `entry`=12099;
UPDATE `creature_template` SET `ScriptName`='mob_core_rager' WHERE `entry`=11672;
UPDATE `creature_template` SET `ScriptName`='mob_flamewaker_priest' WHERE `entry`=11662;

/* MOONGLADE */
UPDATE `creature_template` SET `ScriptName`='npc_bunthen_plainswind' WHERE `entry`=11798;
UPDATE `creature_template` SET `ScriptName`='npc_great_bear_spirit' WHERE `entry`=11956;
UPDATE `creature_template` SET `ScriptName`='npc_silva_filnaveth' WHERE `entry`=11800;
UPDATE `creature_template` SET `ScriptName`='npc_clintar_dreamwalker' WHERE `entry`=22834;
UPDATE `creature_template` SET `ScriptName`='npc_clintar_spirit' WHERE `entry`=22916;

/* MULGORE */
UPDATE `creature_template` SET `ScriptName`='npc_skorn_whitecloud' WHERE `entry`=3052;
UPDATE `creature_template` SET `ScriptName`='npc_kyle_frenzied' WHERE `entry`=23616;
UPDATE `creature_template` SET `ScriptName`='npc_plains_vision' WHERE `entry`=2983;

/* NAGRAND */
UPDATE `creature_template` SET `ScriptName`='mob_lump' WHERE `entry`=18351;
UPDATE `creature_template` SET `ScriptName`='mob_shattered_rumbler' WHERE `entry`=17157;
UPDATE `creature_template` SET `ScriptName`='mob_sunspring_villager' WHERE `entry`=18240;
UPDATE `creature_template` SET `ScriptName`='npc_altruis_the_sufferer' WHERE `entry`=18417;
UPDATE `creature_template` SET `ScriptName`='npc_greatmother_geyah' WHERE `entry`=18141;
UPDATE `creature_template` SET `ScriptName`='npc_lantresor_of_the_blade' WHERE `entry`=18261;
UPDATE `creature_template` SET `ScriptName`='npc_creditmarker_visit_with_ancestors' WHERE `entry` IN (18840,18841,18842,18843);
UPDATE `creature_template` SET `ScriptName`='mob_sparrowhawk' WHERE `entry`=22979;
UPDATE `creature_template` SET `ScriptName`='npc_maghar_captive' WHERE `entry`=18210;

/* NAXXRAMAS */
UPDATE `instance_template` SET `script`='instance_naxxramas' WHERE `map`=533;
UPDATE `creature_template` SET `ScriptName`='boss_anubrekhan' WHERE `entry`=15956;
UPDATE `creature_template` SET `ScriptName`='boss_faerlina' WHERE `entry`=15953;
UPDATE `creature_template` SET `ScriptName`='mob_faerlina_add' WHERE `entry`=16506;
UPDATE `creature_template` SET `ScriptName`='boss_maexxna' WHERE `entry`=15952;
UPDATE `creature_template` SET `ScriptName`='mob_webwrap' WHERE `entry`=16486;
UPDATE `creature_template` SET `ScriptName`='boss_noth' WHERE `entry`=15954;
UPDATE `creature_template` SET `ScriptName`='boss_heigan' WHERE `entry`=15936;
UPDATE `creature_template` SET `ScriptName`='boss_loatheb' WHERE `entry`=16011;
UPDATE `creature_template` SET `ScriptName`='mob_loatheb_spore' WHERE `entry`=16286;
UPDATE `creature_template` SET `ScriptName`='boss_razuvious' WHERE `entry`=16061;
UPDATE `creature_template` SET `ScriptName`='boss_gothik' WHERE `entry`=16060;
UPDATE `creature_template` SET `ScriptName`='mob_gothik_minion' where `entry` IN (16124,16125,16126,16127,16148,16149,16150);
UPDATE `creature_template` SET `ScriptName`='boss_four_horsemen' WHERE `entry` IN (16063,16064,16065,30549);
UPDATE `creature_template` SET `ScriptName`='boss_patchwerk' WHERE `entry`=16028;
UPDATE `creature_template` SET `ScriptName`='boss_grobbulus' WHERE `entry`=15931;
UPDATE `creature_template` SET `ScriptName`='npc_grobbulus_poison_cloud' WHERE `entry`=16363;
UPDATE `creature_template` SET `ScriptName`='boss_gluth' WHERE `entry`=15932;
UPDATE `creature_template` SET `ScriptName`='boss_thaddius' WHERE `entry`=15928;
UPDATE `creature_template` SET `ScriptName`='mob_stalagg' WHERE `entry`=15929;
UPDATE `creature_template` SET `ScriptName`='mob_feugen' WHERE `entry`=15930;
UPDATE `creature_template` SET `ScriptName`='boss_sapphiron' WHERE `entry`=15989;
UPDATE `creature_template` SET `ScriptName`='boss_kelthuzad' WHERE `entry`=15990;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry` IN (16062,30000);
UPDATE `creature_template` SET `ScriptName`='trigger_periodic' WHERE `entry` IN (16474,16697,16129);

/* NETHERSTORM */
UPDATE `gameobject_template` SET `ScriptName`='go_manaforge_control_console' WHERE `entry` IN (183770,183956,184311,184312);
UPDATE `creature_template` SET `ScriptName`='npc_manaforge_control_console' WHERE `entry` IN (20209,20417,20418,20440);
UPDATE `creature_template` SET `ScriptName`='mob_phase_hunter' WHERE `entry`=18879;
UPDATE `creature_template` SET `ScriptName`='npc_professor_dabiri' WHERE `entry`=20907;
UPDATE `creature_template` SET `ScriptName`='npc_bessy' WHERE `entry`=20415;
UPDATE `creature_template` SET `ScriptName`='npc_commander_dawnforge' WHERE `entry`=19831;

/* THE NEXUS */
UPDATE `instance_template` SET `script`='instance_nexus' WHERE `map`=576;
UPDATE `creature_template` SET `ScriptName`='boss_magus_telestra' WHERE `entry`=26731;
UPDATE `creature_template` SET `ScriptName`='boss_anomalus' WHERE `entry`=26763;
UPDATE `creature_template` SET `ScriptName`='mob_chaotic_rift' WHERE `entry`=26918;
UPDATE `creature_template` SET `ScriptName`='boss_ormorok' WHERE `entry`=26794;
UPDATE `creature_template` SET `ScriptName`='mob_crystal_spike' WHERE `entry`=27099;
UPDATE `creature_template` SET `ScriptName`='mob_crystalline_tangler' WHERE `entry`=32665;
UPDATE `creature_template` SET `ScriptName`='boss_keristrasza' WHERE `entry`=26723;
UPDATE `gameobject_template` SET `ScriptName`='containment_sphere' WHERE `entry` IN (188527, 188528, 188526);

/* OBSIDIAN SANCTUM */
UPDATE `instance_template` SET `script`='instance_obsidian_sanctum' WHERE map=615;
UPDATE creature_template SET ScriptName='boss_sartharion' WHERE entry=28860;
UPDATE creature_template SET ScriptName='mob_vesperon' WHERE entry=30449;
UPDATE creature_template SET ScriptName='mob_shadron' WHERE entry=30451;
UPDATE creature_template SET ScriptName='mob_tenebron' WHERE entry=30452;
UPDATE creature_template SET ScriptName='mob_twilight_eggs' WHERE entry=30882;
UPDATE creature_template SET ScriptName='mob_twilight_whelp' WHERE entry IN (30890,31214);
UPDATE creature_template SET ScriptName='mob_acolyte_of_shadron' WHERE entry=31218;
UPDATE creature_template SET ScriptName='mob_acolyte_of_vesperon' WHERE entry=31219;

/* ONYXIA'S LAIR */
UPDATE `creature_template` SET `ScriptName`='boss_onyxia' WHERE `entry`=10184;

/* ORGRIMMAR */
UPDATE `creature_template` SET `ScriptName`='npc_neeru_fireblade' WHERE `entry`=3216;
UPDATE `creature_template` SET `ScriptName`='npc_shenthul' WHERE `entry`=3401;
UPDATE `creature_template` SET `ScriptName`='npc_thrall_warchief' WHERE `entry`=4949;

/* RAGEFIRE CHASM */

/* RAZORFEN DOWNS */
UPDATE `creature_template` SET `ScriptName`='boss_amnennar_the_coldbringer' WHERE `entry`=7358;
UPDATE `creature_template` SET `ScriptName`='npc_henry_stern' WHERE `entry`=8696;

/* RAZORFEN KRAUL */
UPDATE `creature_template` SET `Scriptname`='npc_willix' WHERE `entry`=4508;
UPDATE `instance_template` SET `script`='instance_razorfen_kraul' WHERE `map`=47;
UPDATE `creature_template` SET `ScriptName`='npc_deaths_head_ward_keeper' WHERE `entry`=4625;

/* REDRIDGE MOUNTAINS */

/* RUINS OF AHN'QIRAJ */
UPDATE `creature_template` SET `ScriptName`='boss_kurinnaxx' WHERE `entry`=15348;
UPDATE `creature_template` SET `ScriptName`='boss_rajaxx' WHERE `entry`=15341;
UPDATE `creature_template` SET `ScriptName`='boss_moam' WHERE `entry`=15340;
UPDATE `creature_template` SET `ScriptName`='boss_buru' WHERE `entry`=15370;
UPDATE `creature_template` SET `ScriptName`='boss_ayamiss' WHERE `entry`=15369;
UPDATE `creature_template` SET `ScriptName`='boss_ossirian' WHERE `entry`=15339;
UPDATE `instance_template` SET `script`='instance_ruins_of_ahnqiraj' WHERE `map`=509;

/* SCARLET MONASTERY */
UPDATE `instance_template` SET `script`='instance_scarlet_monastery' WHERE `map`=189;
UPDATE `creature_template` SET `ScriptName`='boss_arcanist_doan' WHERE `entry`=6487;
UPDATE `creature_template` SET `ScriptName`='boss_azshir_the_sleepless' WHERE `entry`=6490;
UPDATE `creature_template` SET `ScriptName`='boss_bloodmage_thalnos' WHERE `entry`=4543;
UPDATE `creature_template` SET `ScriptName`='boss_herod' WHERE `entry`=3975;
UPDATE `creature_template` SET `ScriptName`='boss_high_inquisitor_fairbanks' WHERE `entry`=4542;
UPDATE `creature_template` SET `ScriptName`='boss_high_inquisitor_whitemane' WHERE `entry`=3977;
UPDATE `creature_template` SET `ScriptName`='boss_houndmaster_loksey' WHERE `entry`=3974;
UPDATE `creature_template` SET `ScriptName`='boss_interrogator_vishas' WHERE `entry`=3983;
UPDATE `creature_template` SET `ScriptName`='boss_scarlet_commander_mograine' WHERE `entry`=3976;
UPDATE `creature_template` SET `ScriptName`='boss_scorn' WHERE `entry`=14693;
UPDATE `creature_template` SET `ScriptName`='boss_headless_horseman' WHERE `entry`=23682;
UPDATE `creature_template` SET `ScriptName`='mob_head' WHERE `entry`=23775;
UPDATE `creature_template` SET `ScriptName`='mob_pulsing_pumpkin' WHERE `entry`=23694;
UPDATE `creature_template` SET `ScriptName`='mob_wisp_invis' WHERE `entry`=23686;
UPDATE `creature_template` SET `ScriptName`='mob_wisp_invis' WHERE `entry`=24034;
UPDATE `creature_template` SET `ScriptName`='mob_scarlet_trainee' WHERE `entry`=6575;
UPDATE `gameobject_template` SET `ScriptName`='go_loosely_turned_soil' WHERE `entry`=186314;

/* SCHOLOMANCE */
UPDATE `instance_template` SET `script`='instance_scholomance' WHERE `map`=289;
UPDATE `creature_template` SET `ScriptName`='boss_darkmaster_gandling' WHERE `entry`=1853;
UPDATE `creature_template` SET `ScriptName`='boss_death_knight_darkreaver' WHERE `entry`=14516;
UPDATE `creature_template` SET `ScriptName`='boss_lord_alexei_barov' WHERE `entry`=10504;
UPDATE `creature_template` SET `ScriptName`='boss_instructor_malicia' WHERE `entry`=10505;
UPDATE `creature_template` SET `ScriptName`='boss_boss_ras_frostwhisper' WHERE `entry`=10508;
UPDATE `creature_template` SET `ScriptName`='boss_the_ravenian' WHERE `entry`=10507;
UPDATE `creature_template` SET `ScriptName`='boss_vectus' WHERE `entry`=10432;
UPDATE `creature_template` SET `ScriptName`='boss_illucia_barov' WHERE `entry`=10502;
UPDATE `creature_template` SET `ScriptName`='boss_doctor_theolen_krastinov' WHERE `entry`=11261;
UPDATE `creature_template` SET `ScriptName`='boss_jandice_barov' WHERE `entry`=10503;
UPDATE `creature_template` SET `ScriptName`='boss_lorekeeper_polkelt' WHERE `entry`=10901;
UPDATE `creature_template` SET `ScriptName`='boss_kormok' WHERE `entry`=16118;
UPDATE `creature_template` SET `ScriptName`='mob_illusionofjandicebarov' WHERE `entry`=11439;

/* SEARING GORGE */
UPDATE `creature_template` SET `ScriptName`='npc_kalaran_windblade' WHERE `entry`=8479;
UPDATE `creature_template` SET `ScriptName`='npc_lothos_riftwaker' WHERE `entry`=14387;
UPDATE `creature_template` SET `ScriptName`='npc_zamael_lunthistle' WHERE `entry`=8436;

/* SHADOWFANG KEEP */
UPDATE `instance_template` SET `script`='instance_shadowfang_keep' WHERE `map`=33;
UPDATE `creature_template` SET `ScriptName`='npc_shadowfang_prisoner' WHERE `entry` IN (3849,3850);

/* SHADOWMOON VALLEY */
UPDATE `creature_template` SET `ScriptName`='boss_doomwalker' WHERE `entry`=17711;
UPDATE `creature_template` SET `ScriptName`='npc_drake_dealer_hurlunk' WHERE `entry`=23489;
UPDATE `creature_template` SET `ScriptName`='npc_invis_legion_teleporter' WHERE `entry`=21807;
UPDATE `creature_template` SET `ScriptName`='npcs_flanis_swiftwing_and_kagrosh' WHERE `entry` IN (21725,21727);
UPDATE `creature_template` SET `ScriptName`='npc_murkblood_overseer' WHERE `entry`=23309;
UPDATE `creature_template` SET `ScriptName`='npc_neltharaku' WHERE `entry`=21657;
UPDATE `creature_template` SET `ScriptName`='npc_oronok_tornheart' WHERE `entry`=21183;
UPDATE `creature_template` SET `ScriptName`='mob_mature_netherwing_drake' WHERE `entry`=21648;
UPDATE `creature_template` SET `ScriptName`='mob_enslaved_netherwing_drake' WHERE `entry`=21722;
UPDATE `creature_template` SET `ScriptName`='npc_overlord_morghor' WHERE `entry`=23139;
UPDATE `creature_template` SET `ScriptName`='mob_illidari_spawn' WHERE `entry` IN (22075,22074,19797);
UPDATE `creature_template` SET `ScriptName`='mob_torloth_the_magnificent' WHERE `entry`=22076;
UPDATE `creature_template` SET `ScriptName`='npc_lord_illidan_stormrage' WHERE `entry`=22083;
UPDATE `creature_template` SET `ScriptName`='npc_earthmender_wilda' WHERE `entry`=21027;
UPDATE `creature_template` SET `ScriptName`='npc_enraged_spirit' WHERE `entry` IN (21050,21061,21060,21059);
UPDATE `creature_template` SET `ScriptName`='mob_dragonmaw_peon' WHERE `entry`=22252;
UPDATE `creature_template` SET `ScriptName`='npc_karynaku' WHERE `entry`=22112;

/* SHATTRATH */
UPDATE `creature_template` SET `ScriptName`='npc_raliq_the_drunk' WHERE `entry`=18585;
UPDATE `creature_template` SET `ScriptName`='npc_salsalabim' WHERE `entry`=18584;
UPDATE `creature_template` SET `ScriptName`='npc_shattrathflaskvendors' WHERE `entry` IN (23483,23484);
UPDATE `creature_template` SET `ScriptName`='npc_zephyr' WHERE `entry`=25967;
UPDATE `creature_template` SET `ScriptName`='npc_kservant' WHERE `entry`=19685;
UPDATE `creature_template` SET `ScriptName`='npc_dirty_larry' WHERE `entry`=19720;
UPDATE `creature_template` SET `ScriptName`='npc_ishanah' WHERE `entry`=18538;
UPDATE `creature_template` SET `ScriptName`='npc_khadgar' WHERE `entry`=18166;

/* Sholazar Basin */
UPDATE `creature_template` SET `ScriptName`='npc_injured_rainspeaker_oracle' WHERE `entry`=28217;
UPDATE `creature_template` SET `ScriptName`='npc_vekjik' WHERE `entry`=28315;
UPDATE `creature_template` SET `ScriptName`='npc_avatar_of_freya' WHERE `entry`=27801;

/* SILITHUS */
UPDATE `creature_template` SET `ScriptName`='npcs_rutgar_and_frankal' WHERE `entry` IN (15170,15171);
UPDATE `creature_template` SET `ScriptName`='npc_highlord_demitrian' WHERE `entry`=14347;
UPDATE `gameobject_template` SET `ScriptName`='go_gauntlet_gate' WHERE `entry`=175357;
UPDATE `gameobject_template` SET `ScriptName`='go_crystalline_tear' WHERE `entry`=180633;
UPDATE `creature_template` SET `ScriptName`='mob_qiraj_war_spawn' WHERE `entry` IN (15414,15422,15424,15423);
UPDATE `creature_template` SET `ScriptName`='npc_anachronos_the_ancient' WHERE `entry`=15381;
UPDATE `creature_template` SET `ScriptName`='npc_anachronos_quest_trigger' WHERE `entry`=15454;

/* SILVERMOON */
UPDATE `creature_template` SET `ScriptName`='npc_blood_knight_stillblade' WHERE `entry`=17768;

/* SILVERPINE FOREST */
UPDATE `creature_template` SET `ScriptName`='npc_astor_hadren' WHERE `entry`=6497;
UPDATE `creature_template` SET `ScriptName`='npc_deathstalker_erland' WHERE `entry`=1978;
UPDATE `creature_template` SET `ScriptName`='pyrewood_ambush' WHERE `entry`=2058;

/* STOCKADES */

/* STONETALON MOUNTAINS */
UPDATE `creature_template` SET `ScriptName`='npc_braug_dimspirit' WHERE `entry`=4489;
UPDATE `creature_template` SET `ScriptName`='npc_kaya_flathoof' WHERE `entry`=11856;

/* STORM PEAKS */
UPDATE `creature_template` SET `ScriptName`='npc_agnetta_tyrsdottar' WHERE `entry`=30154;
UPDATE `creature_template` SET `ScriptName`='npc_frostborn_scout' WHERE `entry`=29811;
UPDATE `creature_template` SET `ScriptName`='npc_thorim' WHERE `entry`=29445;
UPDATE `creature_template` SET `ScriptName`='npc_goblin_prisoner' WHERE `entry`=29466;
UPDATE `gameobject_template` SET ScriptName = 'go_rusty_cage' WHERE `entry`=191544;

/* STORMWIND CITY */
UPDATE `creature_template` SET `ScriptName`='npc_archmage_malin' WHERE `entry`=2708;
UPDATE `creature_template` SET `ScriptName`='npc_bartleby' WHERE `entry`=6090;
UPDATE `creature_template` SET `ScriptName`='npc_dashel_stonefist' WHERE `entry`=4961;
UPDATE `creature_template` SET `ScriptName`='npc_lady_katrana_prestor' WHERE `entry`=1749;

/* STRANGLETHORN VALE */
UPDATE `creature_template` SET `ScriptName`='mob_yenniku' WHERE `entry`=2530;

/* STRATHOLME */
UPDATE `instance_template` SET `script`='instance_stratholme' WHERE `map`=329;
UPDATE `creature_template` SET `ScriptName`='boss_dathrohan_balnazzar' WHERE `entry`=10812;
UPDATE `creature_template` SET `ScriptName`='boss_magistrate_barthilas' WHERE `entry`=10435;
UPDATE `creature_template` SET `ScriptName`='boss_maleki_the_pallid' WHERE `entry`=10438;
UPDATE `creature_template` SET `ScriptName`='boss_nerubenkan' WHERE `entry`=10437;
UPDATE `creature_template` SET `ScriptName`='boss_cannon_master_willey' WHERE `entry`=10997;
UPDATE `creature_template` SET `ScriptName`='boss_baroness_anastari' WHERE `entry`=10436;
UPDATE `creature_template` SET `ScriptName`='boss_ramstein_the_gorger' WHERE `entry`=10439;
UPDATE `creature_template` SET `ScriptName`='boss_timmy_the_cruel' WHERE `entry`=10808;
UPDATE `creature_template` SET `ScriptName`='boss_silver_hand_bosses' WHERE `entry` IN (17910,17911,17912,17913,17914);
UPDATE `creature_template` SET `ScriptName`='boss_postmaster_malown' WHERE `entry`=11143;
UPDATE `creature_template` SET `ScriptName`='boss_baron_rivendare' WHERE `entry`=10440;
UPDATE `creature_template` SET `ScriptName`='mob_mindless_skeleton' WHERE `entry`=11197;
UPDATE `creature_template` SET `ScriptName`='mob_thuzadin_acolyte' WHERE `entry`=10399;
UPDATE `creature_template` SET `ScriptName`='mobs_spectral_ghostly_citizen' WHERE `entry` IN (10384,10385);
UPDATE `creature_template` SET `ScriptName`='mob_restless_soul' WHERE `entry`=11122;
UPDATE `creature_template` SET `ScriptName`='mob_freed_soul' WHERE `entry`=11136;

/* SUNKEN TEMPLE */
UPDATE `instance_template` SET `script`='instance_sunken_temple' WHERE `map`=109;
UPDATE `gameobject_template` SET `ScriptName`='go_atalai_statue' WHERE `entry` IN (148830,148831,148832,148833,148834,148835);
UPDATE `creature_template` SET `ScriptName`='boss_twilight_corrupter' WHERE `entry`=15625;
DELETE FROM `areatrigger_scripts` WHERE `entry`=4016;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES (4016,'at_malfurion_stormrage');

/* SUNWELL PLATEAU */
UPDATE `instance_template` SET `script`='instance_sunwell_plateau' WHERE `map`=580;
UPDATE `creature_template` SET `ScriptName`='boss_brutallus' WHERE `entry`=24882;
UPDATE `creature_template` SET `ScriptName`='boss_felmyst' WHERE `entry`=25038;
UPDATE `creature_template` SET `ScriptName`='mob_felmyst_vapor' WHERE `entry`=25265;
UPDATE `creature_template` SET `ScriptName`='mob_felmyst_trail' WHERE `entry`=25267;
UPDATE `creature_template` SET `ScriptName`='boss_sacrolash' WHERE `entry`=25165;
UPDATE `creature_template` SET `ScriptName`='boss_alythess' WHERE `entry`=25166;
UPDATE `creature_template` SET `ScriptName`='mob_shadow_image' WHERE `entry`=25214;
UPDATE `creature_template` SET `ScriptName`='boss_kiljaeden' WHERE `entry`=25315;
UPDATE `creature_template` SET `ScriptName`='boss_kalecgos_kj' WHERE `entry`=25319;
UPDATE `creature_template` SET `ScriptName`='mob_kiljaeden_controller' WHERE `entry`=25608;
UPDATE `creature_template` SET `ScriptName`='mob_hand_of_the_deceiver' WHERE `entry`=25588;
UPDATE `creature_template` SET `ScriptName`='mob_felfire_portal' WHERE `entry`=25603;
UPDATE `creature_template` SET `ScriptName`='mob_volatile_felfire_fiend' WHERE `entry`=25598;
UPDATE `creature_template` SET `ScriptName`='mob_armageddon' WHERE `entry`=25735;
UPDATE `creature_template` SET `ScriptName`='mob_shield_orb' WHERE `entry`=25502;
UPDATE `creature_template` SET `ScriptName`='mob_sinster_reflection' WHERE `entry`=25708;
UPDATE `gameobject_template` SET `ScriptName`='go_orb_of_the_blue_flight' WHERE `entry`=188415;
UPDATE `creature_template` SET `ScriptName`='npc_void_sentinel' WHERE `entry`=25772;
UPDATE `creature_template` SET `ScriptName`='npc_dark_fiend' WHERE `entry`=25744;
UPDATE `creature_template` SET `ScriptName`='boss_muru' WHERE `entry`=25741;
UPDATE `creature_template` SET `ScriptName`='boss_entropius' WHERE `entry`=25840;
UPDATE `creature_template` SET `ScriptName`='npc_muru_portal' WHERE `entry`=25770;
UPDATE `creature_template` SET `ScriptName`='boss_kalecgos' WHERE `entry`=24850;
UPDATE `creature_template` SET `ScriptName`='boss_sathrovarr' WHERE `entry`=24892;
UPDATE `creature_template` SET `ScriptName`='boss_kalec' WHERE `entry`=24891;
UPDATE `gameobject_template` SET `ScriptName`='kalecgos_teleporter' WHERE `entry`=187055;
UPDATE `creature_template` SET `ScriptName`='npc_blackhole' WHERE `entry`=25855;

/* SWAMP OF SORROWS */

/* TANARIS */
UPDATE `creature_template` SET `ScriptName`='mob_aquementas' WHERE `entry`=9453;
UPDATE `creature_template` SET `ScriptName`='npc_custodian_of_time' WHERE `entry`=20129;
UPDATE `creature_template` SET `ScriptName`='npc_marin_noggenfogger' WHERE `entry`=7564;
UPDATE `creature_template` SET `ScriptName`='npc_steward_of_time' WHERE `entry`=20142;
UPDATE `creature_template` SET `ScriptName`='npc_stone_watcher_of_norgannon' WHERE `entry`=7918;
UPDATE `creature_template` SET `ScriptName`='npc_OOX17' WHERE `entry`=7784;
UPDATE `creature_template` SET `ScriptName`='npc_tooga' WHERE `entry`=5955;

/* TELDRASSIL */
UPDATE `creature_template` SET `ScriptName`='npc_mist' WHERE `entry`=3568;

/* TEMPEST KEEP */

/* THE MECHANAR */
UPDATE `creature_template` SET `ScriptName`='boss_gatewatcher_iron_hand' WHERE `entry`=19710;
UPDATE `creature_template` SET `ScriptName`='boss_nethermancer_sepethrea' WHERE `entry`=19221;
UPDATE `creature_template` SET `ScriptName`='mob_ragin_flames' WHERE `entry`=20481;
UPDATE `creature_template` SET `ScriptName`='boss_pathaleon_the_calculator' WHERE `entry`=19220;
UPDATE `creature_template` SET `ScriptName`='mob_nether_wraith' WHERE `entry`=21062;
UPDATE `instance_template` SET `script`='instance_mechanar' WHERE `map`=554;

/* THE BOTANICA */
UPDATE `creature_template` SET `ScriptName`='boss_high_botanist_freywinn' WHERE `entry`=17975;
UPDATE `creature_template` SET `ScriptName`='boss_laj' WHERE `entry`=17980;
UPDATE `creature_template` SET `ScriptName`='boss_warp_splinter' WHERE `entry`=17977;
UPDATE `creature_template` SET `ScriptName`='mob_warp_splinter_treant' WHERE `entry`=19949;

/* THE ARCATRAZ */
UPDATE `instance_template` SET `script`='instance_arcatraz' WHERE `map`=552;
UPDATE `creature_template` SET `ScriptName`='mob_zerekethvoidzone' WHERE `entry`=21101;
UPDATE `creature_template` SET `ScriptName`='boss_harbinger_skyriss' WHERE `entry`=20912;
UPDATE `creature_template` SET `ScriptName`='boss_harbinger_skyriss_illusion' WHERE `entry` IN (21466,21467);
UPDATE `creature_template` SET `ScriptName`='npc_warden_mellichar' WHERE `entry`=20904;
UPDATE `creature_template` SET `ScriptName`='npc_millhouse_manastorm' WHERE `entry`=20977;

/* THE EYE */
UPDATE `instance_template` SET `script`='instance_the_eye' WHERE `map`=550;
UPDATE `gameobject_template` SET `ScriptName`='go_kael_orb' WHERE `entry`=188173;
UPDATE `gameobject_template` SET `ScriptName`='go_movie_orb' WHERE `entry`=187578;
/* The Eye Trash Mobs */
UPDATE `creature_template` SET `ScriptName`='mob_crystalcore_devastator' WHERE `entry`=20040;
/* Void Reaver event */
UPDATE `creature_template` SET `ScriptName`='boss_void_reaver' WHERE `entry`=19516;
/* Astromancer event */
UPDATE `creature_template` SET `ScriptName`='boss_high_astromancer_solarian' WHERE `entry`=18805;
UPDATE `creature_template` SET `ScriptName`='mob_solarium_priest' WHERE `entry`=18806;
/* Kael'thas event */
UPDATE `creature_template` SET `ScriptName`='boss_kaelthas' WHERE `entry`=19622;
UPDATE `creature_template` SET `ScriptName`='boss_thaladred_the_darkener' WHERE `entry`=20064;
UPDATE `creature_template` SET `ScriptName`='boss_lord_sanguinar' WHERE `entry`=20060;
UPDATE `creature_template` SET `ScriptName`='boss_grand_astromancer_capernian' WHERE `entry`=20062;
UPDATE `creature_template` SET `ScriptName`='boss_master_engineer_telonicus' WHERE `entry`=20063;
UPDATE `creature_template` SET `ScriptName`='mob_phoenix_tk' WHERE `entry`=21362;
UPDATE `creature_template` SET `ScriptName`='mob_phoenix_egg_tk' WHERE `entry`=21364;
UPDATE `creature_template` SET `ScriptName`='mob_nether_vapor' WHERE `entry`=21002;
UPDATE `creature_template` SET `ScriptName`='mob_kael_flamestrike' WHERE `entry`=21369;
UPDATE `creature_template` SET `ScriptName`='boss_alar' WHERE `entry`=19514;
UPDATE `creature_template` SET `ScriptName`='mob_ember_of_alar' WHERE `entry`=19551;
UPDATE `creature_template` SET `ScriptName`='mob_flame_patch_alar' WHERE `entry`=20602;

/* TEMPLE OF AHN'QIRAJ */
UPDATE `instance_template` SET `script`='instance_temple_of_ahnqiraj' WHERE `map`=531;
UPDATE `creature_template` SET `ScriptName`='boss_cthun' WHERE `entry`=15727;
UPDATE `creature_template` SET `ScriptName`='boss_skeram' WHERE `entry`=15263;
UPDATE `creature_template` SET `ScriptName`='boss_vem' WHERE `entry`=15544;
UPDATE `creature_template` SET `ScriptName`='boss_yauj' WHERE `entry`=15543;
UPDATE `creature_template` SET `ScriptName`='boss_kri' WHERE `entry`=15511;
UPDATE `creature_template` SET `ScriptName`='boss_sartura' WHERE `entry`=15516;
UPDATE `creature_template` SET `ScriptName`='boss_fankriss' WHERE `entry`=15510;
UPDATE `creature_template` SET `ScriptName`='boss_viscidus' WHERE `entry`=15299;
UPDATE `creature_template` SET `ScriptName`='boss_glob_of_viscidus' WHERE `entry`=15667;
UPDATE `creature_template` SET `ScriptName`='boss_huhuran' WHERE `entry`=15509;
UPDATE `creature_template` SET `ScriptName`='boss_veklor' WHERE `entry`=15276;
UPDATE `creature_template` SET `ScriptName`='boss_veknilash' WHERE `entry`=15275;
UPDATE `creature_template` SET `ScriptName`='boss_ouro' WHERE `entry`=15517;
UPDATE `creature_template` SET `ScriptName`='boss_eye_of_cthun' WHERE `entry`=15589;
UPDATE `creature_template` SET `ScriptName`='mob_sartura_royal_guard' WHERE `entry`=15984;
UPDATE `creature_template` SET `ScriptName`='mob_yauj_brood' WHERE `entry`=15621;
UPDATE `creature_template` SET `ScriptName`='mob_claw_tentacle' WHERE `entry`=15725;
UPDATE `creature_template` SET `ScriptName`='mob_eye_tentacle' WHERE `entry`=15726;
UPDATE `creature_template` SET `ScriptName`='mob_giant_claw_tentacle' WHERE `entry`=15728;
UPDATE `creature_template` SET `ScriptName`='mob_giant_eye_tentacle' WHERE `entry`=15334;
UPDATE `creature_template` SET `ScriptName`='mob_giant_flesh_tentacle' WHERE `entry`=15802;
UPDATE `creature_template` SET `ScriptName`='mob_anubisath_sentinel' WHERE `entry`=15264;

/* TEROKKAR FOREST */
UPDATE `creature_template` SET `ScriptName`='mob_infested_root_walker' WHERE `entry`=22095;
UPDATE `creature_template` SET `ScriptName`='mob_netherweb_victim' WHERE `entry`=22355;
UPDATE `creature_template` SET `ScriptName`='mob_rotting_forest_rager' WHERE `entry`=22307;
UPDATE `creature_template` SET `ScriptName`='npc_floon' WHERE `entry`=18588;
UPDATE `creature_template` SET `ScriptName`='npc_isla_starmane' WHERE `entry`=18760;
UPDATE `creature_template` SET `ScriptName`='mob_unkor_the_ruthless' WHERE `entry`=18262;
UPDATE `creature_template` SET `ScriptName`='npc_slim' WHERE `entry`=19679;
UPDATE `creature_template` SET `ScriptName`='npc_akuno' WHERE `entry`=22377;

/* THOUSAND NEEDLES */
UPDATE `creature_template` SET `ScriptName`='npc_kanati' WHERE `entry`=10638;
UPDATE `creature_template` SET `ScriptName`='npc_paoka_swiftmountain' WHERE `entry`=10427;
UPDATE `creature_template` SET `ScriptName`='npc_plucky' WHERE `entry`=6626;
UPDATE `creature_template` SET `ScriptName`='npc_lakota_windsong' WHERE `entry`=10646;

/* THUNDER BLUFF */
UPDATE `creature_template` SET `ScriptName`='npc_cairne_bloodhoof' WHERE `entry`=3057;

/* TIRISFAL GLADES */
UPDATE `creature_template` SET `ScriptName`='npc_calvin_montague' WHERE `entry`=6784;

/* ULDAMAN */
UPDATE `instance_template` SET `script`='instance_uldaman' WHERE `map`=70;
UPDATE `creature_template` SET `ScriptName`='boss_ironaya' WHERE `entry`=7228;
UPDATE `creature_template` SET `ScriptName`='mob_jadespine_basilisk' WHERE `entry`=4863;
UPDATE `creature_template` SET `ScriptName`='npc_lore_keeper_of_norgannon' WHERE `entry`=7172;
UPDATE `creature_template` SET `ScriptName`='boss_archaedas' WHERE `entry`=2748;
UPDATE `creature_template` SET `ScriptName`='mob_archaedas_minions' WHERE `entry` IN (7309,7077,7076,10120);
UPDATE `creature_template` SET `ScriptName`='mob_stonekeepers' WHERE `entry`=4857;
UPDATE `gameobject_template` SET `ScriptName`='go_altar_of_the_keepers' WHERE `entry`=130511;
UPDATE `gameobject_template` SET `ScriptName`='go_altar_of_archaedas' WHERE `entry`=133234;

/* ULDUAR */
UPDATE `instance_template` SET `script`='instance_ulduar' WHERE `map`=603;
UPDATE `creature_template` SET `ScriptName`='boss_auriaya' WHERE `entry`=33515;
UPDATE `creature_template` SET `ScriptName`='boss_flame_leviathan' WHERE `entry`=33113;
UPDATE `creature_template` SET `AIName`='TurretAI',`ScriptName`='' WHERE `entry`=33139;
UPDATE `creature_template` SET `ScriptName`='boss_flame_leviathan_seat' WHERE `entry`=33114;
UPDATE `creature_template` SET `ScriptName`='boss_flame_leviathan_defense_turret' WHERE `entry`=33142;
UPDATE `creature_template` SET `ScriptName`='boss_flame_leviathan_overload_device' WHERE `entry`=33143;
UPDATE `creature_template` SET `ScriptName`='spell_pool_of_tar' WHERE `entry`=33090;
UPDATE `creature_template` SET `ScriptName`='boss_ignis' WHERE `entry`=33118;
UPDATE `creature_template` SET `ScriptName`='boss_razorscale' WHERE `entry`=33186;
UPDATE `creature_template` SET `ScriptName`='boss_xt002' WHERE `entry`=33293;
UPDATE `creature_template` SET `ScriptName`='boss_steelbreaker' WHERE `entry`=32867;
UPDATE `creature_template` SET `ScriptName`='boss_runemaster_molgeim' WHERE `entry`=32927;
UPDATE `creature_template` SET `ScriptName`='boss_stormcaller_brundir' WHERE `entry`=32857;
UPDATE `creature_template` SET `ScriptName`='mob_lightning_elemental' WHERE `entry`=32958;
UPDATE `creature_template` SET `ScriptName`='mob_rune_of_summoning' WHERE `entry`=33051;
UPDATE `creature_template` SET `ScriptName`='boss_kologarn' WHERE `entry`=32930;
UPDATE `gameobject_template` SET `ScriptName`='ulduar_teleporter' WHERE `entry`=194569;

/* UN'GORO CRATER */
UPDATE `creature_template` SET `ScriptName`='npc_ame' WHERE `entry`=9623;
UPDATE `creature_template` SET `ScriptName`='npc_ringo' WHERE `entry`=9999;

/* UNDERCITY */
UPDATE `creature_template` SET `ScriptName`='npc_lady_sylvanas_windrunner' WHERE `entry`=10181;
UPDATE `creature_template` SET `ScriptName`='npc_highborne_lamenter' WHERE `entry`=21628;
UPDATE `creature_template` SET `ScriptName`='npc_parqual_fintallas' WHERE `entry`=4488;

/* UTGARDE KEEP */
UPDATE `creature_template` SET `scriptname`='boss_keleseth' WHERE `entry`=23953;
UPDATE `creature_template` SET `scriptname`='mob_frost_tomb' WHERE `entry`=23965;
UPDATE `instance_template` SET `script`='instance_utgarde_keep' WHERE `map`=574;
UPDATE `creature_template` SET `ScriptName`='mob_vrykul_skeleton' WHERE `entry`=23970;
UPDATE `creature_template` SET `ScriptName`='boss_skarvald_the_constructor' WHERE `entry` IN (24200,27390);
UPDATE `creature_template` SET `ScriptName`='boss_dalronn_the_controller' WHERE `entry` IN (24201,27389);
UPDATE `creature_template` SET `ScriptName`='boss_ingvar_the_plunderer' WHERE `entry`=23954;
UPDATE `creature_template` SET `ScriptName`='mob_annhylde_the_caller' WHERE `entry`=24068;
UPDATE `creature_template` SET `ScriptName`='mob_ingvar_throw_dummy' WHERE `entry`=23997;
UPDATE `creature_template` SET `ScriptName`='npc_dragonflayer_forge_master' WHERE `entry`=24079;

/* UTGARDE PINNACLE */
UPDATE `creature_template` SET `ScriptName`='boss_svala_sorrowgrave' WHERE `entry`=26668;
UPDATE `creature_template` SET `ScriptName`='mob_ritual_channeler' WHERE `entry`=27281;
UPDATE `creature_template` SET `ScriptName`='boss_svala' WHERE `entry`=29281;
UPDATE `creature_template` SET `ScriptName`='boss_palehoof' WHERE `entry`=26687;
UPDATE `creature_template` SET `ScriptName`='boss_skadi' WHERE `entry`=26693;
UPDATE `creature_template` SET `ScriptName`='boss_ymiron' WHERE `entry`=26861;
UPDATE `creature_template` SET `ScriptName`='mob_frenzied_worgen' WHERE `entry`=26683;
UPDATE `creature_template` SET `ScriptName`='mob_ravenous_furbolg' WHERE `entry`=26684;
UPDATE `creature_template` SET `ScriptName`='mob_massive_jormungar' WHERE `entry`=26685;
UPDATE `creature_template` SET `ScriptName`='mob_ferocious_rhino' WHERE `entry`=26686;
UPDATE `creature_template` SET `ScriptName`='mob_palehoof_orb' WHERE `entry`=26688;
UPDATE `instance_template` SET `script`='instance_utgarde_pinnacle' WHERE `map`=575;
UPDATE `gameobject_template` SET `ScriptName`='go_palehoof_sphere'WHERE `entry`=188593;

/* VAULT OF ARCHAVON */
UPDATE `creature_template` SET `ScriptName`='boss_archavon' WHERE `entry`=31125;
UPDATE `creature_template` SET `ScriptName`='mob_archavon_warder' WHERE `entry`=32353;
UPDATE `creature_template` SET `ScriptName`='boss_emalon' WHERE `entry`=33993;
UPDATE `creature_template` SET `ScriptName`='mob_tempest_minion' WHERE `entry`=33998;
UPDATE `instance_template` SET `script`='instance_archavon' WHERE `map`=624;

/* VIOLET HOLD */
UPDATE `creature_template` SET `ScriptName`='npc_sinclari_vh' WHERE `entry`=30658;
UPDATE `creature_template` SET `ScriptName`='npc_teleportation_portal_vh' WHERE `entry`=31011;
UPDATE `creature_template` SET `ScriptName`='boss_lavanthor' WHERE `entry`=29312;
UPDATE `creature_template` SET `ScriptName`='boss_ichoron' WHERE `entry`=29313;
UPDATE `creature_template` SET `ScriptName`='boss_zuramat' WHERE `entry`=29314;
UPDATE `creature_template` SET `ScriptName`='boss_erekem' WHERE `entry`=29315;
UPDATE `creature_template` SET `ScriptName`='mob_erekem_guard' WHERE `entry`=32226;
UPDATE `creature_template` SET `ScriptName`='boss_moragg' WHERE `entry`=29316;
UPDATE `creature_template` SET `ScriptName`='boss_xevozz' WHERE `entry`=29266;
UPDATE `creature_template` SET `ScriptName`='boss_cyanigosa' WHERE `entry`=31134;
UPDATE `instance_template` SET `script`='instance_violet_hold' WHERE `map`=608;

/* WAILING CAVERNS */
UPDATE `creature_template` SET `ScriptName`='npc_disciple_of_naralex' WHERE entry=3678;
UPDATE `instance_template` SET `script`='instance_wailing_caverns' WHERE map=43;

/* WESTERN PLAGUELANDS */
UPDATE `creature_template` SET `ScriptName`='npcs_dithers_and_arbington' WHERE `entry` IN (11056,11057);
UPDATE `creature_template` SET `ScriptName`='npc_the_scourge_cauldron' WHERE `entry`=11152;
UPDATE `creature_template` SET `ScriptName`='npc_myranda_the_hag' WHERE `entry`=11872;

/* WESTFALL */
UPDATE `creature_template` SET `ScriptName`='npc_defias_traitor' WHERE `entry`=467;
UPDATE `creature_template` SET `ScriptName`='npc_daphne_stilwell' WHERE `entry`=6182;

/* WETLANDS */
UPDATE `creature_template` SET `ScriptName`='npc_tapoke_slim_jahn' WHERE `entry`=4962;
UPDATE `creature_template` SET `ScriptName`='npc_mikhail' WHERE `entry`=4963;

/* WINTERSPRING */
UPDATE `creature_template` SET `ScriptName`='npc_lorax' WHERE `entry`=10918;
UPDATE `creature_template` SET `ScriptName`='npc_rivern_frostwind' WHERE `entry`=10618;
UPDATE `creature_template` SET `ScriptName`='npc_witch_doctor_mauari' WHERE `entry`=10307;

/* ZANGARMARSH */
UPDATE `creature_template` SET `ScriptName`='npcs_ashyen_and_keleth' WHERE `entry` IN (17900,17901);
UPDATE `creature_template` SET `ScriptName`='npc_cooshcoosh' WHERE `entry`=18586;
UPDATE `creature_template` SET `ScriptName`='npc_elder_kuruti' WHERE `entry`=18197;
UPDATE `creature_template` SET `ScriptName`='npc_mortog_steamhead' WHERE `entry`=23373;
UPDATE `creature_template` SET `ScriptName`='npc_kayra_longmane' WHERE `entry`=17969;
UPDATE `creature_template` SET `ScriptName`='npc_timothy_daniels' WHERE `entry`=18019;
UPDATE `gameobject_template` SET `ScriptName`='go_southfury_moonstone' WHERE `entry`=185566;

/* ZUL'AMAN */
UPDATE `instance_template` SET `script`='instance_zulaman' WHERE `map`=568;
UPDATE `creature_template` SET `ScriptName`='boss_janalai' WHERE `entry`=23578;
UPDATE `creature_template` SET `ScriptName`='boss_nalorakk' WHERE `entry`=23576;
UPDATE `creature_template` SET `ScriptName`='mob_janalai_firebomb' WHERE `entry`=23920;
UPDATE `creature_template` SET `ScriptName`='mob_janalai_hatcher' WHERE `entry`=23818;
UPDATE `creature_template` SET `ScriptName`='mob_janalai_hatchling' WHERE `entry`=23598;
UPDATE `creature_template` SET `ScriptName`='mob_janalai_egg' WHERE `entry`=23817;
UPDATE `creature_template` SET `ScriptName`='npc_forest_frog' WHERE `entry`=24396;
UPDATE `creature_template` SET `ScriptName`='boss_akilzon' WHERE `entry`=23574;
UPDATE `creature_template` SET `ScriptName`='mob_akilzon_eagle' WHERE `entry`=24858;
UPDATE `creature_template` SET `ScriptName`='boss_halazzi' WHERE `entry`=23577;
UPDATE `creature_template` SET `ScriptName`='mob_halazzi_lynx' WHERE `entry`=24143;
UPDATE `creature_template` SET `ScriptName`='boss_hexlord_malacrass' WHERE `entry` =24239;
UPDATE `creature_template` SET `ScriptName`='boss_alyson_antille' WHERE `entry` =24240;
UPDATE `creature_template` SET `ScriptName`='boss_thurg' WHERE `entry` =24241;
UPDATE `creature_template` SET `ScriptName`='boss_slither' WHERE `entry` =24242;
UPDATE `creature_template` SET `ScriptName`='boss_lord_raadan' WHERE `entry` =24243;
UPDATE `creature_template` SET `ScriptName`='boss_gazakroth' WHERE `entry` =24244;
UPDATE `creature_template` SET `ScriptName`='boss_fenstalker' WHERE `entry` =24245;
UPDATE `creature_template` SET `ScriptName`='boss_darkheart' WHERE `entry` =24246;
UPDATE `creature_template` SET `ScriptName`='boss_koragg' WHERE `entry` =24247;
UPDATE `creature_template` SET `ScriptName`='boss_zuljin' WHERE `entry` =23863;
UPDATE `creature_template` SET `ScriptName`='do_nothing' WHERE `entry`=24187;
UPDATE `creature_template` SET `ScriptName`='mob_zuljin_vortex' WHERE `entry`=24136;
UPDATE `creature_template` SET `ScriptName`='npc_zulaman_hostage' WHERE `entry` IN (23790,23999,24024,24001);
UPDATE `creature_template` SET `ScriptName`='mob_mojo' WHERE `entry`=24480;

/* ZUL'DRAK */
UPDATE `creature_template` SET `ScriptName`='npc_captured_rageclaw' WHERE `entry`=29686;
UPDATE `creature_template` SET `ScriptName`='npc_drakuru_shackles' WHERE `entry`=29700;
UPDATE `creature_template` SET `ScriptName`='npc_gymer' WHERE `entry`=29647;

/* ZUL'FARRAK */
UPDATE `creature_template` SET `ScriptName`='npc_sergeant_bly' WHERE `entry`=7604;
UPDATE `creature_template` SET `ScriptName`='npc_weegli_blastfuse' WHERE `entry`=7607;
UPDATE `gameobject_template` SET `ScriptName`='go_shallow_grave' WHERE `entry` IN (128308,128403);

/* ZUL'GURUB */
UPDATE `instance_template` SET `script`='instance_zulgurub' WHERE `map`=309;
UPDATE `creature_template` SET `ScriptName`='boss_jeklik' WHERE `entry`=14517;
UPDATE `creature_template` SET `ScriptName`='boss_venoxis' WHERE `entry`=14507;
UPDATE `creature_template` SET `ScriptName`='boss_marli' WHERE `entry`=14510;
UPDATE `creature_template` SET `ScriptName`='boss_mandokir' WHERE `entry`=11382;
UPDATE `creature_template` SET `ScriptName`='boss_gahzranka' WHERE `entry`=15114;
UPDATE `creature_template` SET `ScriptName`='boss_jindo' WHERE `entry`=11380;
UPDATE `creature_template` SET `ScriptName`='boss_hakkar' WHERE `entry`=14834;
UPDATE `creature_template` SET `ScriptName`='boss_thekal' WHERE `entry`=14509;
UPDATE `creature_template` SET `ScriptName`='boss_arlokk' WHERE `entry`=14515;
UPDATE `gameobject_template` SET `ScriptName`='go_gong_of_bethekk' WHERE `entry`=180526;
UPDATE `creature_template` SET `ScriptName`='boss_grilek' WHERE `entry`=15082;
UPDATE `creature_template` SET `ScriptName`='boss_hazzarah' WHERE `entry`=15083;
UPDATE `creature_template` SET `ScriptName`='boss_renataki' WHERE `entry`=15084;
UPDATE `creature_template` SET `ScriptName`='boss_wushoolay' WHERE `entry`=15085;
UPDATE `creature_template` SET `ScriptName`='mob_zealot_lorkhan' WHERE `entry`=11347;
UPDATE `creature_template` SET `ScriptName`='mob_zealot_zath' WHERE `entry`=11348;
UPDATE `creature_template` SET `ScriptName`='mob_healing_ward' WHERE `entry`=14987;
UPDATE `creature_template` SET `ScriptName`='mob_spawn_of_marli' WHERE `entry`=15041;
UPDATE `creature_template` SET `ScriptName`='mob_batrider' WHERE `entry`=14965;
UPDATE `creature_template` SET `ScriptName`='mob_shade_of_jindo' WHERE `entry`=14986;
UPDATE `creature_template` SET `ScriptName`='mob_ohgan' WHERE `entry`=14988;

-- --------
-- EVENT AI
-- --------
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry IN (26796,26798,26929,26928,26930);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (26796,26798,26929,26928,26930);
UPDATE `creature_template` SET `ScriptName`='EventAI' WHERE `entry` IN(29998,33753,33752,33751,33750);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (29998,33753,33752,33751,33750);
INSERT INTO `creature_ai_scripts` VALUES 
-- Commander Stoutbeard
   (2679600,26796,4,0,100,4,0,0,0,0,28,0,47543,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - crystal prison remove'),
   (2679601,26796,4,0,100,4,0,0,0,0,11,31403,0,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - cast battle shout'),
   (2679602,26796,0,0,100,5,3000,3000,11000,15000,11,60067,4,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - cast charge'),
   (2679603,26796,0,0,100,5,6000,8000,19500,25000,11,38618,0,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - cast whirlwind'),
   (2679604,26796,0,0,100,5,13000,13000,45000,55000,11,19134,1,0,0,0,0,0,0,0,0,0,'Commander Stoutbeard - cast Frightening Shout'),
-- Commander Kolurg
   (2679800,26798,4,0,100,4,0,0,0,0,28,0,47543,0,0,0,0,0,0,0,0,0,'Commander Kolurg - crystal prison remove'),
   (2679801,26798,4,0,100,4,0,0,0,0,11,31403,0,0,0,0,0,0,0,0,0,0,'Commander Kolurg - cast battle shout'),
   (2679802,26798,0,0,100,5,3000,3000,11000,15000,11,60067,4,0,0,0,0,0,0,0,0,0,'Commander Kolurg - cast charge'),
   (2679803,26798,0,0,100,5,6000,8000,19500,25000,11,38618,0,0,0,0,0,0,0,0,0,0,'Commander Kolurg - cast whirlwind'),
   (2679804,26798,0,0,100,5,13000,13000,45000,55000,11,19134,1,0,0,0,0,0,0,0,0,0,'Commander Kolurg - cast Frightening Shout'),
-- Grand Magus Telestra Clone (Arcane)
   (2692901,26929,0,0,100,7,6000,8000,10000,12000,11,47731,4,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra arcane - cast pollymorph critter'),
   (2692902,26929,0,0,100,7,15000,16000,15000,16000,11,47736,0,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra arcane - cast time stop'),
-- Grand Magus Telestra Clone (Fire)
   (2692801,26928,0,0,100,3,3000,3000,8000,9000,11,47721,1,0,0,0,0,0,0,0,0,0,'Grand magus Telestra fire - cast fire blast N'),
   (2692802,26928,0,0,100,5,3000,3000,8000,9000,11,56939,1,0,0,0,0,0,0,0,0,0,'Grand magus Telestra fire - cast fire blast H'),
   (2692803,26928,0,0,100,3,9000,9000,9500,11500,11,47723,1,0,0,0,0,0,0,0,0,0,'Grand magus Telestra fire - cast scorge N'),
   (2692804,26928,0,0,100,5,9000,9000,9500,11500,11,56938,1,0,0,0,0,0,0,0,0,0,'Grand magus Telestra fire - cast scorge H'),
-- Grand Magus Telestra Clone (Frost)
   (2693001,26930,0,0,100,3,3000,3000,8000,9000,11,47729,1,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra frost - cast ice bard N'),
   (2693002,26930,0,0,100,5,3000,3000,8000,9000,11,56937,1,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra frost - cast ice bard H'),
   (2693003,26930,0,0,100,3,9000,9000,15000,16000,11,47727,1,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra frost - cast blizzard N'),
   (2693004,26930,0,0,100,5,9000,9000,15000,16000,11,56936,1,0,0,0,0,0,0,0,0,0,'Grand Magus Telestra frost - cast blizzard H'),
-- Desecration
   (2999801,29998,11,0,100,0,0,0,0,0,11,55741,0,0,0,0,0,0,0,0,0,0,'Desecration'),
   (2999800,29998,1,0,100,0,1,1,0,0,11,55671,0,2,11,55710,0,2,0,0,0,0,'Desecration'),
-- Desecration
   (3375301,33753,11,0,100,0,0,0,0,0,11,55741,0,0,0,0,0,0,0,0,0,0,'Desecration'),
   (3375300,33753,1,0,100,0,1,1,0,0,11,63584,0,2,11,63580,0,2,0,0,0,0,'Desecration'),
-- Desecration
   (3375201,33752,11,0,100,0,0,0,0,0,11,55741,0,0,0,0,0,0,0,0,0,0,'Desecration'),
   (3375200,33752,1,0,100,0,1,1,0,0,11,63585,0,2,11,63581,0,2,0,0,0,0,'Desecration'),
-- Desecration
   (3375101,33751,11,0,100,0,0,0,0,0,11,55741,0,0,0,0,0,0,0,0,0,0,'Desecration'),
   (3375100,33751,1,0,100,0,1,1,0,0,11,63586,0,2,11,63582,0,2,0,0,0,0,'Desecration'),
-- Desecration
   (3375001,33750,11,0,100,0,0,0,0,0,11,55741,0,0,0,0,0,0,0,0,0,0,'Desecration'),
   (3375000,33750,1,0,100,0,1,1,0,0,11,63587,0,2,11,63583,0,2,0,0,0,0,'Desecration');
/* EOF */

UPDATE `creature_template` SET `ScriptName` = 'npc_skywing' WHERE `entry`=22424;

DELETE FROM areatrigger_scripts WHERE `entry`=4156;
INSERT INTO areatrigger_scripts VALUES
   (4156,'at_naxxramas_frostwyrm_wing');

DELETE FROM areatrigger_scripts WHERE `entry`=3066;
INSERT INTO areatrigger_scripts VALUES
   (3066,'at_ravenholdt');

/* Oculus: "Just for the logic, shouldn't be necessary": */
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=23035 AND `comment` LIKE 'Anzu%Death';
INSERT INTO `creature_ai_scripts` (`creature_id`,`event_type`,`event_chance`,`event_flags`,`action1_type`,`action1_param1`,`action1_param2`,`comment`) VALUES
   (23035,6,100,6,34,2,3,'Anzu - Set Inst Data on Death');

-- dk final quest
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry` IN (29199,29204,29200,29174,29182,29186,29190,29219,29206,29176,29178,29179,29180,29177,29181);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (29199,29204,29200,29174,29182,29186,29190,29219,29206,29176,29178,29179,29180,29177,29181);
INSERT INTO `creature_ai_scripts` VALUES
   (2919901,29199,0,0,100,3,10000,20000,10000,20000,11,52374,1,0,0,0,0,0,0,0,0,0,'Koltira Deathweaver - SPELL_BLOOD_STRIKE1'),
   (2919902,29199,0,0,100,3,10000,20000,10000,20000,11,49576,1,0,0,0,0,0,0,0,0,0,'Koltira Deathweaver - SPELL_DEATH_GRIP'),
   (2919903,29199,0,0,100,3,10000,20000,10000,20000,11,52372,1,0,0,0,0,0,0,0,0,0,'Koltira Deathweaver - SPELL_ICY_TOUCH2'),
   (2919904,29199,0,0,100,3,10000,20000,10000,20000,11,50668,1,0,0,0,0,0,0,0,0,0,'Koltira Deathweaver - SPELL_PLAGUE_STRIKE1'),
   (2920401,29204,0,0,100,3,10000,20000,10000,20000,11,52374,1,0,0,0,0,0,0,0,0,0,'Orbaz Bloodbane - SPELL_BLOOD_STRIKE1'),
   (2920402,29204,0,0,100,3,10000,20000,10000,20000,11,49576,1,0,0,0,0,0,0,0,0,0,'Orbaz Bloodbane - SPELL_DEATH_GRIP'),
   (2920403,29204,0,0,100,3,10000,20000,10000,20000,11,52372,1,0,0,0,0,0,0,0,0,0,'Orbaz Bloodbane - SPELL_ICY_TOUCH2'),
   (2920404,29204,0,0,100,3,10000,20000,10000,20000,11,50668,1,0,0,0,0,0,0,0,0,0,'Orbaz Bloodbane - SPELL_PLAGUE_STRIKE1'),
   (2920001,29200,0,0,100,3,10000,20000,10000,20000,11,52374,1,0,0,0,0,0,0,0,0,0,'Thassarian - SPELL_BLOOD_STRIKE1'),
   (2920002,29200,0,0,100,3,10000,20000,10000,20000,11,49576,1,0,0,0,0,0,0,0,0,0,'Thassarian - SPELL_DEATH_GRIP'),
   (2920003,29200,0,0,100,3,10000,20000,10000,20000,11,52372,1,0,0,0,0,0,0,0,0,0,'Thassarian - SPELL_ICY_TOUCH2'),
   (2920004,29200,0,0,100,3,10000,20000,10000,20000,11,50668,1,0,0,0,0,0,0,0,0,0,'Thassarian - SPELL_PLAGUE_STRIKE1'),
   (2917401,29174,14,0,100,3,10000,20,5000,10000,11,29427,6,1,0,0,0,0,0,0,0,0,'Defender of the Light - SPELL_HOLY_LIGHT1'),
   (2917402,29174,4,0,100,0,0,0,0,0,11,53625,1,5,0,0,0,0,0,0,0,0,'Defender of the Light aggro'),
   (2917403,29174,0,0,100,3,10000,20000,10000,20000,11,53625,5,0,0,0,0,0,0,0,0,0,'Defender of the Light - SPELL_HEROIC_LEAP'),
   (2917404,29174,0,0,100,3,10000,20000,10000,20000,11,53643,1,0,0,0,0,0,0,0,0,0,'Defender of the Light - SPELL_HOLY_STRIKE'),
   (2917405,29174,0,0,100,3,10000,20000,10000,20000,11,53638,1,0,0,0,0,0,0,0,0,0,'Defender of the Light - SPELL_HOLY_WRATH'),
   (2917406,29174,0,0,100,3,10000,20000,10000,20000,11,53629,1,0,0,0,0,0,0,0,0,0,'Defender of the Light - SPELL_UPPERCUT'),
   (2918201,29182,14,0,100,3,10000,20,5000,10000,11,33642,6,1,0,0,0,0,0,0,0,0,'Rimblat Earthshatter - SPELL_CHAIN_HEAL'),
   (2918202,29182,0,0,100,3,10000,20000,10000,10000,11,53630,1,0,0,0,0,0,0,0,0,0,'Rimblat Earthshatter - SPELL_THUNDER'),
   (2918601,29186,0,0,100,3,10000,20000,10000,10000,11,53633,1,0,0,0,0,0,0,0,0,0,'Rampaging Abomination - SPELL_CLEAVE1'),
   (2918602,29186,0,0,100,3,10000,20000,10000,10000,11,50335,5,0,0,0,0,0,0,0,0,0,'Rampaging Abomination - SPELL_SCOURGE_HOOK'),
   (2919001,29190,0,0,100,3,10000,20000,10000,10000,11,53634,1,0,0,0,0,0,0,0,0,0,'Flesh Behemoth - SPELL_SCOURGE_HOOK'),
   (2919002,29190,0,0,100,3,10000,20000,10000,10000,11,36706,1,0,0,0,0,0,0,0,0,0,'Flesh Behemoth - SPELL_THUNDERCLAP'),
   (2919003,29190,0,0,100,3,5000,10000,5000,10000,11,53627,0,0,0,0,0,0,0,0,0,0,'Flesh Behemoth - SPELL_THUNDERCLAP'),
   (2921901,29219,0,0,100,3,10000,20000,10000,10000,11,53632,1,0,0,0,0,0,0,0,0,0,'Volatile Ghoul - SPELL_GHOULPLOSION'),
   (2920601,29206,0,0,100,3,10000,20000,10000,10000,11,53631,1,0,0,0,0,0,0,0,0,0,'Warrior of the Frozen Wastes - SPELL_CLEAVE'),
   (2917601,29176,0,0,100,3,10000,20000,10000,10000,11,53631,1,0,0,0,0,0,0,0,0,0,'Korfax - SPELL_CLEAVE'),
   (2917602,29176,0,0,100,3,10000,20000,10000,10000,11,53625,1,0,0,0,0,0,0,0,0,0,'Korfax - SPELL_CLEAVE'),
   (2917701,29177,14,0,100,3,10000,20,5000,10000,11,37979,6,1,0,0,0,0,0,0,0,0,'Commander Eligor Dawnbringer - SPELL_HOLY_LIGHT2'),
   (2918101,29181,14,0,100,3,10000,20,5000,10000,11,20664,6,1,0,0,0,0,0,0,0,0,'Rayne - SPELL_REJUVENATION'),
   (2918102,29181,14,0,100,3,10000,20,5000,10000,11,25817,6,1,0,0,0,0,0,0,0,0,'Rayne - SPELL_TRANQUILITY'),
   (2918103,29181,0,0,100,3,10000,20000,10000,20000,11,20678,1,0,0,0,0,0,0,0,0,0,'Rayne - SPELL_STARFALL'),
   (2918104,29181,0,0,100,3,10000,20000,10000,20000,11,21807,1,0,0,0,0,0,0,0,0,0,'Rayne - SPELL_WRATH');

-- spell 30298 tries to start event script 10675 but it doesn't exist. create it & make it spawn Geezle
DELETE FROM `event_scripts` WHERE `id`=10675;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
   (10675,0,10,17318,90000,-5139.79,-11248.27,5.23,6.27609);

-- geezle should not spawn by default
UPDATE `creature` SET `spawnMask`=0 WHERE `id`=17318;

-- Quest - The Warsong Farms
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (25669,25671,25672);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
   (2566901,25669,10,0,100,3,1,20,2000,2000,33,25669,6,0,0,0,0,0,0,0,0,0,'Scout Warsong Granary - Killed Moster at LOS'),
   (2567101,25671,10,0,100,3,1,20,2000,2000,33,25671,6,0,0,0,0,0,0,0,0,0,'Scout Torp''s Farm - Killed Moster at LOS'),
   (2567201,25672,10,0,100,3,1,20,2000,2000,33,25672,6,0,0,0,0,0,0,0,0,0,'Scout Warsong Slaughterhouse - Killed Moster at LOS');

-- WOTLK Naxxramas Worshipper update
DELETE FROM `creature_ai_scripts` WHERE `id`=1650612 AND `creature_id`=16506;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
   (1650612,16506,6,0,100,0,0,0,0,0,11,28732,0,0,0,0,0,0,0,0,0,0,'Naxxramas Worshipper - Widow Embrace');

-- Quest - Kroshius' Infernal Core (level 50 warlock specific)
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=14467;
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=14467;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
   (1446701, 14467, 11, 0, 100, 0, 0, 0, 0, 0, 1, -980, 0, 0, 19, 768, 0, 0, 2, 16, 0, 0, 'Kroshius Spawn Say');
DELETE FROM `creature_ai_texts` WHERE `entry`=-980;
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
   (-980,'Kroshius live? Kroshius crush!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,NULL);

-- --------
-- LINKED
-- --------
-- spell1 / spell2 / type
-- + + 0 caster casts 2 when casts 1
-- + - 0 caster removes aura 2 when casts 1
-- + + 1 target casts 2 on self (originalCaster = caster) when 1 casted by caster hits target
-- + - 1 target removes aura 2 when hit by 1
-- + + 2 when aura 1 is applied, aura 2 is also applied; when 1 is removed, 2 is also removed
-- + - 2 when aura 1 is applied, target is immune to spell 2, until 1 is removed
-- - + 0 target casts 2 on self (originalCaster = caster) when aura 1 casted by caster is removed
-- - - 0 aura 2 is removed when aura 1 is removed

TRUNCATE TABLE `spell_linked_spell`;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
-- class
( 31224, -1543, 2, 'Cloak of Shadows - Flare'),
( 15237, 23455, 0, 'Holy Nova (rank1)'),
( 15430, 23458, 0, 'Holy Nova (rank2)'),
( 15431, 23459, 0, 'Holy Nova (rank3)'),
( 27799, 27803, 0, 'Holy Nova (rank4)'),
( 27800, 27804, 0, 'Holy Nova (rank5)'),
( 27801, 27805, 0, 'Holy Nova (rank6)'),
( 25331, 25329, 0, 'Holy Nova (rank7)'),
( 48077, 48075, 0, 'Holy Nova (rank8)'),
( 48078, 48076, 0, 'Holy Nova (rank9)'),
(-19386, 24131, 0, 'Wyvern Sting'),
(-24132, 24134, 0, 'Wyvern Sting'),
(-24133, 24135, 0, 'Wyvern Sting'),
(-27068, 27069, 0, 'Wyvern Sting'),
(-49011, 49009, 0, 'Wyvern Sting'),
(-49012, 49010, 0, 'Wyvern Sting'),
( 47585, 60069, 2, 'Dispersion (transform/regen)'),
( 47585, 63230, 2, 'Dispersion (immunity)'),
( 61847, 61848, 2, 'Aspect of the dragonhawk'),
( 61846, 61848, 2, 'Aspect of the dragonhawk'),
( 47988, 54501, 2, 'Consume Shadows - Rank 9'),
( 47987, 54501, 2, 'Consume Shadows - Rank 8'),
( 27272, 54501, 2, 'Consume Shadows - Rank 7'),
( 17854, 54501, 2, 'Consume Shadows - Rank 6'),
( 17853, 54501, 2, 'Consume Shadows - Rank 5'),
( 17852, 54501, 2, 'Consume Shadows - Rank 4'),
( 17851, 54501, 2, 'Consume Shadows - Rank 3'),
( 17850, 54501, 2, 'Consume Shadows - Rank 2'),
( 17767, 54501, 2, 'Consume Shadows - Rank 1'),
(-5143, -36032, 0, 'Arcane Missiles Rank 1'),
(-5144, -36032, 0, 'Arcane Missiles Rank 2'),
(-5145, -36032, 0, 'Arcane Missiles Rank 3'),
(-8416, -36032, 0, 'Arcane Missiles Rank 4'),
(-8417, -36032, 0, 'Arcane Missiles Rank 5'),
(-10211, -36032, 0, 'Arcane Missiles Rank 6'),
(-10212, -36032, 0, 'Arcane Missiles Rank 7'),
(-25345, -36032, 0, 'Arcane Missiles Rank 8'),
(-27075, -36032, 0, 'Arcane Missiles Rank 9'),
(-38699, -36032, 0, 'Arcane Missiles Rank 10'),
(-38704, -36032, 0, 'Arcane Missiles Rank 11'),
(-42843, -36032, 0, 'Arcane Missiles Rank 12'),
(-42846, -36032, 0, 'Arcane Missiles Rank 13'),
( 53563, 53651, 2, 'Beacon of Light'),
(   781, 56446, 0, 'Disengage'),
( 57635, 57636, 0, 'Disengage'),
( 60932, 60934, 0, 'Disengage'),
( 61507, 61508, 0, 'Disengage'),
( 49576, 49560, 0, 'Death Grip'),
( 47897, 47960, 1, 'Shadowflame Rank 1'),
( 61290, 61291, 1, 'Shadowflame Rank 2'),
( 51723, 52874, 0, 'Fan Of Knives'),
( 32386, 60448, 2, 'Shadow Embrace Rank1'),
( 32388, 60465, 2, 'Shadow Embrace Rank2'),
( 32389, 60466, 2, 'Shadow Embrace Rank3'),
( 32390, 60467, 2, 'Shadow Embrace Rank4'),
( 32391, 60468, 2, 'Shadow Embrace Rank5'),
( 33206, 44416, 2, 'Pain Suppression (threat)'),
( 50720, 59665, 0, 'Vigilance (redirect threat)'),
( 52610, 62071, 0, 'Savage Roar'),
( -52610, -62071, 0, 'Savage Roar'),
(51209, 55095, 1, 'Hungering cold - frost fever'),
(50334, 58923, 2, 'Berserk - modify target number aura'),
( -5229, -51185, 0, 'King of the Jungle - remove with enrage'),
(48384, 50170, 2, 'Improved Moonkin Form'),
(48395, 50171, 2, 'Improved Moonkin Form'),
(48396, 50172, 2, 'Improved Moonkin Form'),
( 20594, 65116, 0, 'Stoneform'),
( 49039, 50397, 2, 'Lichborne - shapeshift'),
( 64382, 64380, 0, 'Shattering Throw'),
( 19574, 24395, 2, 'Bestial Wrath'),
( 19574, 24396, 2, 'Bestial Wrath'),
( 19574, 24397, 2, 'Bestial Wrath'),
( 19574, 26592, 2, 'Bestial Wrath'),
( 34471, 24395, 2, 'The Beast Within'),
( 34471, 24396, 2, 'The Beast Within'),
( 34471, 24397, 2, 'The Beast Within'),
( 34471, 26592, 2, 'The Beast Within'),
(-59907,     7, 0, 'Lightwell Charges - Suicide'),
( 26022, 61417, 2, 'Pursuit of Justice'),
( 26023, 61418, 2, 'Pursuit of Justice'),
-- Quest
( 40214, 40216, 2, 'Dragonmaw Illusion'),
( 40214, 42016, 2, 'Dragonmaw Illusion'),
-- Creature
( 36574, 36650, 0, 'Apply Phase Slip Vulnerability'),
-- instance
(-30410, 44032, 0, 'Manticron Cube Mind Exhaustion'),
(-33711, 33686, 0, 'Murmur''s Shockwave (Normal)'),
(-38794, 33686, 0, 'Murmur''s Shockwave (Heroic)'),
( 33686, 31705, 0, 'Murmur''s Shockwave Jump'),
-- Zul'aman
( 44008, 45265, 1, 'Static Disruption Visual'),
( 43648, 44007, 1, 'Storm Eye Safe Zone'),
( 44007,-43657, 2, 'Storm Eye Safe Zone Immune'),
( 43658, 43653, 0, 'Electrical Arc Visual'),
( 43658, 43654, 0, 'Electrical Arc Visual'),
( 43658, 43655, 0, 'Electrical Arc Visual'),
( 43658, 43656, 0, 'Electrical Arc Visual'),
( 43658, 43659, 0, 'Electrical Arc Visual'),
-- black temple
-- (39992, 39835, 1, 'Needle Spine'),
( 39835, 39968, 1, 'Needle Spine'),
(-41376, 41377, 0, 'Spite'),
( 41126, 41131, 1, 'Flame Crash'),
(-41914, 41915, 0, 'Summon Parasitic Shadowfiend'),
(-41917, 41915, 0, 'Summon Parasitic Shadowfiend'),
( 39908, 40017, 1, 'Eye Blast'),
( 40604, 40616, 1, 'Fel Rage Aura'),
( 40616, 41625, 1, 'Fel Rage Aura'),
( 41292, 42017, 2, 'Aura of Suffering'),
-- sunwell
( 44869, 44866, 1, 'Spectral Blast Portal'),
-- (44869, 46648, 1, 'Spectral Blast Visual'), cause severe lag seems should be casted by go
( 44869, 46019, 1, 'Spectral Blast Teleport'),
( 46019, 46021, 1, 'Spectral Realm Aura'),
-- (46021, 44852, 1, 'Spectral Realm Aura'), 44852 makes boss friendly to you
(-46021, 46020, 0, 'Teleport: Normal Realm'),
( 46020, 44867, 1, 'Spectral Exhaustion'),
( 44867,-46019, 2, 'Spectral Exhaustion - Teleport: Spectral Realm'),
( 45661, 45665, 1, 'Encapsulate'),
( 45347,-45348, 1, 'Remove Flame Touched'),
( 45348,-45347, 1, 'Remove Dark Touched'),
( 45248, 45347, 1, 'Apply Dark Touched'),
( 45329, 45347, 1, 'Apply Dark Touched'),
( 45256, 45347, 1, 'Apply Dark Touched'),
( 45270, 45347, 1, 'Apply Dark Touched'),
( 45342, 45348, 1, 'Apply Flame Touched'),
( 46771, 45348, 1, 'Apply Flame Touched'),
( 45271, 45347, 1, 'Apply Dark Touched'),
( 45246, 45348, 1, 'Apply Flame Touched'),
( 44869,-45018, 1, 'Remove Arcane Buffet'),
( 46019,-45018, 1, 'Remove Arcane Buffet'),
( 46242, 46247, 0, 'Black Hole Visual (Birth)'),
( 46228, 46235, 0, 'Black Hole Visual (Grown)'),
( 46228,-46247, 0, 'Black Hole Visual (Grown)'),
( 46262, 46265, 0, 'Void Zone Visual'),
-- naxx
(-28169, 28206, 0, 'Mutating Injection - Mutagen Explosion'),
( 28732,-28798, 1, 'Widow''s Embrace - Frenzy'),
( 54097,-54100, 1, 'Widow''s Embrace - Frenzy (H)'),
(-28169, 28240, 0, 'Mutating Injection - Poison Cloud'),
-- Archavon
( 58666, 58672, 1, 'Impale (Archavon)'),
( 60882, 58672, 1, 'Impale (Archavon)');


-- --------
-- CLICK
-- --------

-- --------
-- TARGET
-- --------

DELETE FROM `spell_script_target` WHERE `entry` IN (58836, 50524, 50515, 52173, 60243);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(58836, 3, 31216), -- Mirror Image
(50524, 3, 27829), -- Runic Power Feed
(52173, 3, 28267), -- Coyote Spirit Despawn
(60243, 3, 11236), -- Blood Parrot Despawn
(50515, 3, 27829); -- Dismiss Gargoyle

-- zulaman
DELETE FROM `spell_script_target` WHERE `entry` IN
(42577,42471,43734,42631);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(42471, 1, 23817), -- hatch eggs
(43734, 1, 23817), -- hatch eggs
(42631, 1, 23920), -- fire bomb
(42577, 1, 24136); -- zap inform

-- sunwell
DELETE FROM `spell_script_target` WHERE `entry` IN
(44885,45388,45389,46350,45714);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(45388, 1, 25038),
(45389, 1, 25265),
(44885, 1, 25160),
(46350, 1, 25160),
(45714, 1, 25038);

-- Magtheridon
DELETE FROM spell_script_target WHERE `entry` IN
(30531,30657);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(30531, 1, 17256), -- soul transfer
(30657, 1, 24136); -- quake

-- black temple
DELETE FROM `spell_script_target` WHERE `entry` IN
(41455);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(41455, 1, 22949), -- circle of healing
(41455, 1, 22950),
(41455, 1, 22951),
(41455, 1, 22952);

-- Magisters' Terrace
DELETE FROM spell_script_target WHERE `entry` IN
(44320, 44321);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(44320, 1, 24723), -- Mana Rage
(44321, 1, 24723); -- Mana Rage

DELETE FROM `spell_script_target` WHERE `entry` IN
(30659);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(30659, 1, 17281); -- Fel Infusion

DELETE FROM `spell_script_target` WHERE `entry` IN
(34186, 42492, 33831, 5628, 45109, 45149);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(34186, 1, 16938),
(42492, 1, 0),
(33831, 1, 0),
(5628,  1, 2011),
(5628,  1, 2012),
(5628,  1, 2013),
(5628,  1, 2014),
(45109, 1, 25084),
(45149, 0, 300154);

DELETE FROM `spell_script_target` WHERE entry IN
(33655, 44374);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(33655, 0, 183350), -- Dropping The Nether Modulator/Gateway Murketh
(33655, 0, 183351),
(44374, 1, 24722);

REPLACE INTO `spell_script_target` VALUES
(33655,0,183350),
(33655,0,183351),
(44374,1,24722),
(31538,1,17895),
(29967,1,16524),
(39887,1,23002),
(31617,1,17899),
(31624,1,17899),
(31625,1,17899),
(34019,1,19422),
(34946,1,20040),
(34946,1,20041),
(43144,1,23817),
(12613,1,5843),
(9095,1,1200);

DELETE FROM `spell_script_target` WHERE entry IN
(8913,9095,12613,34019,34526,36904,38015,38738,39011,39844,40105,40106,42391);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(8913,  1, 1200),
(9095,  1, 6492),
(12613, 1, 5843),
(34019, 2, 16873), -- raise dead
(34019, 2, 16871),
(34019, 2, 19422),
(34019, 2, 16907),
(34526, 1, 19723),
(34526, 1, 19724),
(36904, 0, 21511),
(38015, 1, 21216),
(38738, 0, 185193), -- Activate Legion Obelisk
(38738, 0, 185195),
(38738, 0, 185196),
(38738, 0, 185197),
(38738, 0, 185198),
(39011, 1, 20885),
(39844, 0, 185549),
(40105, 1, 22883),
(40106, 1, 22883),
(42391, 0, 300152);

-- naxx
DELETE FROM `spell_script_target` WHERE `entry` IN
(28732,54097,55479,
27892,27893,27928,27929,27935,27936);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(28732, 1, 15953), -- Widow's Embrace
(54097, 1, 15953), -- Widow's Embrace
(55479, 1, 16803), -- Force Obedience - Death Knight Understudy
-- (29105, 1, 16803), -- Hopeless - Death Knight Understudy
(27892, 1, 16060), -- To Anchor 1 - Gothik
(27893, 1, 16060), -- To Anchor 2 - Gothik
(27928, 1, 16060), -- To Anchor 1 - Gothik
(27929, 1, 16060), -- To Anchor 2 - Gothik
(27935, 1, 16060), -- To Anchor 1 - Gothik
(27936, 1, 16060); -- To Anchor 2 - Gothik

-- too many...
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(3730,1,15263),
(6955,1,4946),
(7022,1,4945),
(7277,1,5409),
(9457,1,3701),
(11893,1,8156),
(12134,2,5270),
(12134,2,5271),
(12134,2,5273),
(12134,2,5256),
(12134,2,5259),
(13489,1,9178),
(15658,1,8929), -- It's up to script to implement SpellHit() for Moira Bronze beard
(16032,1,6557), -- Dummy effect should be implemented in core i think
(16337,1,10339),
(16337,1,10429), -- per spells description, it buffs two npc's.
(16637,1,10447),
(17748,1,10556),
(18969,1,12126),
(19749,1,12352), -- used by creature script to check if all troopers are presents, NYI
(19773,1,12018), -- used by Ragnaros to kill Majordomo
(21556,1,13378), -- no longer in game, but still could be used for some FUN-so why not fix it ? ;)
(21566,1,13416),
(22710,1,14349),
(23168,1,14020),
(24062,1,15010),
(24217,1,15069),
(24323,1,14834),
(24804,1,14888),
(25896,1,15299),
(28096,1,15929),
(28111,1,15930),
(28353,2,16390),
(28392,1,16420),
(28697,1,3976),
(28861,1,16592),
(29172,0,181605),
(29456,1,17060),
(29457,1,17060),
(29459,1,17060), -- Those are spells Arch Mage Xintor casts at training dummies near him.
(29531,0,181605),
(29831,0,181288),
(30221,1,620),
(30232,1,15691),
(30460,1,17404),
(30951,1,17533),
(31326,1,15608),
(31611,1,17979),
(31727,1,17536),
(32301,1,18371),
(32396,1,18358),
(32890,1,18764),
(33111,1,17400),
(33111,1,18894),
(33644,1,19279),
(33644,1,19328),
(33644,1,19278),
(33644,1,19329),
(33644,1,19326),
(33644,1,19277),
(33644,1,19276), -- All legion antennas.
(33742,1,17400),
(33742,1,18894),
(33742,1,19279),
(33742,1,19328),
(33742,1,19278),
(33742,1,19329),
(33742,1,19326),
(33742,1,19277),
(33742,1,19276), -- All legion antennas, another spell.
(33783,1,18732),
(34254,1,19554),
(34350,1,19554),
(34662,1,17827),
(35596,1,20794),
(36174,1,20885),
(37465,1,17469),
(37465,1,21747),
(37465,1,21750),
(37465,1,21748),
(37469,1,21664),
(37469,1,21682),
(37469,1,21683),
(37469,1,17211),
(37626,1,15689), -- Netherspite's beam
(37853,1,15608),
(37868,1,21909),
(37893,1,21909),
(37895,1,21909),
(38003,1,21949),
(38044,1,21212),
(38121,1,21949),
(38123,1,21949),
(38126,1,21949),
(38128,1,21949),
(38130,1,21949),
(38250,0,185125),
(38508,1,17270),
(38508,1,16873),
(38508,1,17269),
(38508,1,16871),
(38508,1,19422),
(38508,1,16907),
(38508,1,17478),
(38508,1,19424),
(38629,0,185214),
(38722,1,21506),
(38966,1,22293),
(39124,0,184738),
(39126,1,19557),
(39221,1,23116),
(39364,1,19732),
(39601,1,22916),
(39974,0,300127),
(39978,1,21851),
(39993,1,23382),
(40359,1,23382),
(40454,1,22181),
(40547,1,22911),
(40828,1,23327),
(40828,1,23322),
(41128,1,23164),
(41362,1,22956),
(41362,1,22964),
(41975,1,23191),
(42317,1,22844),
(42317,1,23319),
(42317,1,23421),
(42317,1,23216),
(42317,1,23523),
(42317,1,22849),
(42317,1,22845),
(42317,1,22847),
(42317,1,23318),
(42317,1,23215),
(42317,1,23524),
(42317,1,23374),
(42317,1,22846),
(42318,1,22844),
(42318,1,23319),
(42318,1,23421),
(42318,1,23216),
(42318,1,23523),
(42318,1,22849),
(42318,1,22845),
(42318,1,22847),
(42318,1,23318),
(42318,1,23215),
(42318,1,23524),
(42318,1,23374),
(42318,1,22846),
(42405,1,23775),
(42410,1,23775),
(42517,1,23864),
(42734,1,4974),
(44864,1,24955),
(45201,1,24882),
(46809,1,26239), -- Make Ahune's Ghost Burst
(46818,1,25840),
(46852,0,181605), -- Ribbon Pole Music
(46896,0,181605),
(47104,1,26401),
(49058,1,24968); -- Rocket Bot Attack

DELETE FROM `spell_script_target` WHERE entry IN
(42857,44807,32307,32314,42222);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(42857, 1, 23954), -- Scourge Resurrection
(44807, 1, 24850), -- Crazed Rage - Kalecgos
(44807, 1, 24892),
(32307, 2, 17146), -- Plant Warmaul Ogre Banner
(32307, 2, 17147),
(32307, 2, 17148),
(32307, 2, 18658),
(32314, 2, 17138), -- Plant Kil'sorrow Banner
(32314, 2, 18037),
(32314, 2, 18064),
(32314, 2, 18065),
(42222, 1, 23616); -- Lunch for Kyle

DELETE FROM `spell_script_target` WHERE `entry` IN
(46589, 45839, 45976, 46177);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(46589, 1, 30598), -- Shadow Spike - Spike Target
(46589, 1, 30614), -- Shadow Spike - Spike Target 2
(45839, 1, 25653), -- Vengeance of the Blue Flight - Power of the Blue Flight
(45976, 1, 25770), -- Open Portal
(46177, 1, 25770); -- Open All Portals

DELETE FROM `spell_script_target` WHERE entry IN
(58672);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(58672, 1, 31125); -- Impale (Archavon)

-- Teleports in dk starting area
DELETE FROM `spell_script_target` WHERE entry IN
(54699,54725,54744,54746);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(54699,1,0),
(54725,1,0),
(54744,1,0),
(54746,1,0);

-- For quest The Denouncement and The Restless Dead
DELETE FROM `spell_script_target` WHERE `entry` IN (48714,57806);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
('48714', '2', '27237'),
('48714', '2', '27235'),
('48714', '2', '27234'),
('48714', '2', '27236'),
('57806', '2', '31043');

-- Zul'Drak
DELETE FROM `spell_script_target` WHERE `entry` IN (55083,55223,59951,59952);
INSERT INTO `spell_script_target` VALUES
(55083, 1, 29700),(55223, 1, 29686),
(59951, 1, 29686),(59952, 1, 29686);

-- --------
-- POSITION
-- --------
DELETE FROM spell_target_position WHERE `id` IN (46019, 46020, 53360);
INSERT INTO spell_target_position () VALUES
(46019, 580, 1704.34, 928.17, -74.558, 0),
(46020, 580, 1704.34, 928.17, 53.079, 0),
(53360, 571, 5807.829, 587.960, 660.939, 1.663);

-- positions for teleports in acherus
DELETE FROM `spell_target_position` WHERE `id` IN (54744,54746);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(54744, 0, 2418.67, -5621.41, 420.644, 3.89597),
(54746, 0, 2402.15, -5633.74, 377.021, 3.65249);

-- --------
-- MISC
-- --------
DELETE FROM `playercreateinfo_spell` WHERE Spell = 56816;
INSERT INTO `playercreateinfo_spell` (`race`, `class`, `Spell`, `Note`) VALUES
(0, 6, 56816, 'Rune Strike');
DELETE FROM `playercreateinfo_spell` WHERE `spell` = 60091;
INSERT INTO `playercreateinfo_spell` (`race`, `class`, `Spell`, `Note`) VALUES
(1, 2,  60091, 'Judgement Anti-Parry/Dodge Passive'),
(3, 2,  60091, 'Judgement Anti-Parry/Dodge Passive'),
(10, 2,  60091, 'Judgement Anti-Parry/Dodge Passive'),
(11, 2,  60091, 'Judgement Anti-Parry/Dodge Passive');

-- --------
-- PROC
-- --------
/*
This is not a good way, but I do not know if there is better way to do it
select entry,
CONCAT('0x',LPAD(HEX(schoolmask),2,'0')),
spellfamilyname,
CONCAT('0x',LPAD(HEX(spellfamilymask0),8,'0')),
CONCAT('0x',LPAD(HEX(spellfamilymask1),8,'0')),
CONCAT('0x',LPAD(HEX(spellfamilymask2),8,'0')),
CONCAT('0x',LPAD(HEX(procflags),8,'0')),
CONCAT('0x',LPAD(HEX(procex),8,'0')),
ppmrate, customchance, cooldown
from spell_proc_event order by entry;
*/
TRUNCATE TABLE `spell_proc_event`;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(   324, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 1)
(   325, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 2)
(   905, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 3)
(   945, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 4)
(   974, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Earth Shield (Rank 1)
(  1463, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 1)
(  3232, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Gouge Stun Test
(  5952, 0x00,   8, 0x00000001, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Throwing Specialization (Rank 1)
(  6346, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100,   0,   0,   0), -- Fear Ward
(  7383, 0x01,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100,   0,   0,   0), -- Water Bubble
(  7434, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Fate Rune of Unsurpassed Vigor
(  8134, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 5)
(  8178, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Grounding Totem Effect (Rank 1)
(  8494, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 2)
(  8495, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 3)
(  9452, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Vindication (Rank 1)
(  9782, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Mithril Shield Spike
(  9784, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Iron Shield Spike
(  9799, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Eye for an Eye (Rank 1)
( 10191, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 4)
( 10192, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 5)
( 10193, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 6)
( 10431, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 6)
( 10432, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 7)
( 11095, 0x00,   3, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Scorch (Rank 1)
( 11119, 0x04,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ignite (Rank 1)
( 11120, 0x04,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ignite (Rank 2)
( 11129, 0x00,   3, 0x00C00017, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Combustion
( 11180, 0x10,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Winter's Chill (Rank 1)
( 11185, 0x00,   3, 0x00000080, 0x00000000, 0x00000000, 0x00050000, 0x00000000,   0,   0,   0), -- Improved Blizzard (Rank 1)
( 11255, 0x00,   3, 0x00004000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Counterspell (Rank 1)
( 12169, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Block
( 12281, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Sword Specialization (Rank 1)
( 12289, 0x00,   4, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Hamstring (Rank 1)
( 12298, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Specialization (Rank 1)
( 12311, 0x00,   4, 0x00000800, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Gag Order (Rank 1)
( 12319, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 1)
( 12322, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   2,   0,   0), -- Unbridled Wrath (Rank 1)
( 12487, 0x00,   3, 0x00000080, 0x00000000, 0x00000000, 0x00050000, 0x00000000,   0,   0,   0), -- Improved Blizzard (Rank 2)
( 12488, 0x00,   3, 0x00000080, 0x00000000, 0x00000000, 0x00050000, 0x00000000,   0,   0,   0), -- Improved Blizzard (Rank 3)
( 12598, 0x00,   3, 0x00004000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Counterspell (Rank 2)
( 12668, 0x00,   4, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Hamstring (Rank 2)
( 12724, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Specialization (Rank 2)
( 12725, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Specialization (Rank 3)
( 12726, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Specialization (Rank 4)
( 12727, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Specialization (Rank 5)
( 12797, 0x00,   4, 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Revenge (Rank 1)
( 12799, 0x00,   4, 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Revenge (Rank 2)
( 12812, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Sword Specialization (Rank 2)
( 12813, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Sword Specialization (Rank 3)
( 12814, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Sword Specialization (Rank 4)
( 12815, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Sword Specialization (Rank 5)
( 12834, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Deep Wounds (Rank 1)
( 12846, 0x04,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ignite (Rank 3)
( 12847, 0x04,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ignite (Rank 4)
( 12848, 0x04,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ignite (Rank 5)
( 12849, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Deep Wounds (Rank 2)
( 12867, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Deep Wounds (Rank 3)
( 12872, 0x00,   3, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Scorch (Rank 2)
( 12873, 0x00,   3, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Scorch (Rank 3)
( 12958, 0x00,   4, 0x00000800, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Gag Order (Rank 2)
( 12966, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 1)
( 12967, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 2)
( 12968, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 3)
( 12969, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 4)
( 12970, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 5)
( 12971, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 2)
( 12972, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 3)
( 12973, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 4)
( 12974, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 5)
( 12999, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   4,   0,   0), -- Unbridled Wrath (Rank 2)
( 13000, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   6,   0,   0), -- Unbridled Wrath (Rank 3)
( 13001, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   8,   0,   0), -- Unbridled Wrath (Rank 4)
( 13002, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,  10,   0,   0), -- Unbridled Wrath (Rank 5)
( 13163, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010,   0,   0,   0), -- Aspect of the Monkey
( 13754, 0x00,   8, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Kick (Rank 1)
( 13867, 0x00,   8, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Kick (Rank 2)
( 13983, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000018,   0,   0,   0), -- Setup (Rank 1)
( 14070, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000018,   0,   0,   0), -- Setup (Rank 2)
( 14071, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000018,   0,   0,   0), -- Setup (Rank 3)
( 14156, 0x00,   8, 0x003E0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Ruthlessness (Rank 1)
( 14160, 0x00,   8, 0x003E0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Ruthlessness (Rank 2)
( 14161, 0x00,   8, 0x003E0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Ruthlessness (Rank 3)
( 14186, 0x00,   8, 0x40800508, 0x00000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Seal Fate (Rank 1)
( 14190, 0x00,   8, 0x40800508, 0x00000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Seal Fate (Rank 2)
( 14193, 0x00,   8, 0x40800508, 0x00000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Seal Fate (Rank 3)
( 14194, 0x00,   8, 0x40800508, 0x00000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Seal Fate (Rank 4)
( 14195, 0x00,   8, 0x40800508, 0x00000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Seal Fate (Rank 5)
( 14531, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Martyrdom (Rank 1)
( 14774, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Martyrdom (Rank 2)
( 14892, 0x00,   6, 0x10001E00, 0x00010004, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Inspiration (Rank 1)
( 15088, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry
( 15128, 0x04,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Mark of Flames
( 15277, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   6,   0,   0), -- Seal of Reckoning
( 15286, 0x20,   6, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Vampiric Embrace
( 15337, 0x00,   6, 0x00002000, 0x00000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Improved Spirit Tap (Rank 1)
( 15338, 0x00,   6, 0x00002000, 0x00000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Improved Spirit Tap (Rank 2)
( 15318, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x02000000, 0x00002000,   0,   0,   0), -- Shadow Affinity (Rank 1)
( 15272, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x02000000, 0x00002000,   0,   0,   0), -- Shadow Affinity (Rank 2)
( 15320, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x02000000, 0x00002000,   0,   0,   0), -- Shadow Affinity (Rank 3)
( 15346, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   6,   0,   0), -- Seal of Reckoning
( 15362, 0x00,   6, 0x10001E00, 0x00010004, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Inspiration (Rank 2)
( 15363, 0x00,   6, 0x10001E00, 0x00010004, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Inspiration (Rank 3)
( 15600, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   1,   0,   0), -- Hand of Justice
( 16086, 0x04,  11, 0x00000020, 0x00000000, 0x00000000, 0x00011000, 0x00000000,   0,   0,   0), -- Improved Fire Nova Totem (Rank 1)
( 16544, 0x04,  11, 0x00000020, 0x00000000, 0x00000000, 0x00011000, 0x00000000,   0, 100,   0), -- Improved Fire Nova Totem (Rank 2)
( 16176, 0x00,  11, 0x000001C0, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ancestral Healing (Rank 1)
( 16180, 0x00,  11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x00000002,   0,   0,   0), -- Improved Water Shield (Rank 1)
( 16196, 0x00,  11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x00000002,   0,   0,   0), -- Improved Water Shield (Rank 2)
( 16198, 0x00,  11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x00000002,   0,   0,   0), -- Improved Water Shield (Rank 3)
( 16235, 0x00,  11, 0x000001C0, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ancestral Healing (Rank 2)
( 16240, 0x00,  11, 0x000001C0, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ancestral Healing (Rank 3)
( 16256, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 1)
( 16257, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 1)
( 16277, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 2)
( 16278, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 3)
( 16279, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 4)
( 16280, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Flurry (Rank 5)
( 16281, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 2)
( 16282, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 3)
( 16283, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 4)
( 16284, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Flurry (Rank 5)
( 16487, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blood Craze (Rank 1)
( 16489, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blood Craze (Rank 2)
( 16492, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blood Craze (Rank 3)
( 16550, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Bonespike (Rank 1)
( 16620, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Proc Self Invulnerability
( 16624, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Thorium Shield Spike
( 16850, 0x00,   7, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Celestial Focus (Rank 1)
( 16864, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   2,   0,   0), -- Omen of Clarity
( 16880, 0x48,   7, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Nature's Grace
( 16923, 0x00,   7, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Celestial Focus (Rank 2)
( 16924, 0x00,   7, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Celestial Focus (Rank 3)
( 16952, 0x00,   7, 0x00039000, 0x00000400, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blood Frenzy (Rank 1)
( 16954, 0x00,   7, 0x00039000, 0x00000400, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blood Frenzy (Rank 2)
( 16958, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Primal Fury (Rank 1)
( 16961, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Primal Fury (Rank 2)
( 17106, 0x00,   7, 0x00080000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Intensity (Rank 1)
( 17107, 0x00,   7, 0x00080000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Intensity (Rank 2)
( 17108, 0x00,   7, 0x00080000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Intensity (Rank 3)
( 17364, 0x08,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Stormstrike
( 17495, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Crest of Retribution
( 17619, 0x00,  13, 0x00000000, 0x00000000, 0x00000000, 0x00008000, 0x00000000,   0,   0,   0), -- Alchemist's Stone
( 17793, 0x00,   5, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Shadow Bolt (Rank 1)
( 17796, 0x00,   5, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Shadow Bolt (Rank 2)
( 17801, 0x00,   5, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Shadow Bolt (Rank 3)
( 17802, 0x00,   5, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Shadow Bolt (Rank 4)
( 17803, 0x00,   5, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Shadow Bolt (Rank 5)
( 18094, 0x00,   5, 0x0000000A, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Nightfall (Rank 1)
( 18095, 0x00,   5, 0x0000000A, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Nightfall (Rank 2)
( 18820, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Insight
( 19184, 0x00,   9, 0x00000014, 0x00002000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Entrapment (Rank 1)
( 19387, 0x00,   9, 0x00000014, 0x00002000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Entrapment (Rank 2)
( 19388, 0x00,   9, 0x00000014, 0x00002000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Entrapment (Rank 3)
( 19572, 0x00,   9, 0x00800000, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Improved Mend Pet (Rank 1)
( 19573, 0x00,   9, 0x00800000, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Improved Mend Pet (Rank 2)
( 20049, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Vengeance (Rank 1)
( 20056, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Vengeance (Rank 2)
( 20057, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Vengeance (Rank 3)
( 20128, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Redoubt
( 20131, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Redoubt
( 20132, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Redoubt
( 20164, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   5,   0,   0), -- Seal of Justice
( 20165, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,  20,   0,   0), -- Seal of Light
( 20166, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,  12,   0,   0), -- Seal of Wisdom
( 20177, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043,   0,   0,   0), -- Reckoning (Rank 1)
( 20179, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043,   0,   0,   0), -- Reckoning (Rank 2)
( 20180, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043,   0,   0,   0), -- Reckoning (Rank 4)
( 20181, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043,   0,   0,   0), -- Reckoning (Rank 3)
( 20182, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043,   0,   0,   0), -- Reckoning (Rank 5)
( 20185, 0x01,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,  15,   0,   0), -- Judgement of Light
( 20186, 0x01,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,  15,   0,   0), -- Judgement of Wisdom
( 20210, 0x00,  10, 0xC0000000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Illumination (Rank 1)
( 20212, 0x00,  10, 0xC0000000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Illumination (Rank 2)
( 20213, 0x00,  10, 0xC0000000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Illumination (Rank 3)
( 20214, 0x00,  10, 0xC0000000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Illumination (Rank 4)
( 20215, 0x00,  10, 0xC0000000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Illumination (Rank 5)
( 20234, 0x00,  10, 0x00008000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Lay on Hands (Rank 1)
( 20235, 0x00,  10, 0x00008000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Lay on Hands (Rank 2)
( 20375, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   7,   0,   1), -- Seal of Command
( 20500, 0x00,   4, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Berserker Rage (Rank 1)
( 20501, 0x00,   4, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Berserker Rage (Rank 2)
( 20705, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Power Shield 500
( 20911, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070,   0,   0,   0), -- Blessing of Sanctuary
( 20925, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Holy Shield (Rank 1)
( 20927, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Holy Shield (Rank 2)
( 20928, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Holy Shield (Rank 3)
( 21185, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Spinal Reaper
( 21882, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Judgement Smite
( 21890, 0x00,   4, 0x2A764EEF, 0x0000036C, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Warrior's Wrath
( 22007, 0x00,   3, 0x00200021, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Netherwind Focus
( 22618, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Force Reactive Disk
( 22648, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Call of Eskhandar
( 23547, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000020,   0,   0,   0), -- Parry
( 23548, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Parry
( 23551, 0x00,  11, 0x000000C0, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Lightning Shield
( 23552, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield
( 23572, 0x00,  11, 0x000000C0, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Mana Surge
( 23578, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   2,   0,   0), -- Expose Weakness
( 23581, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   2,   0,   0), -- Bloodfang
( 23602, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Specialization (Rank 1)
( 23686, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   2,   0,   0), -- Lightning Strike
( 23688, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Aura of the Blue Dragon
( 23689, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   4,   0,   0), -- Heroism
( 23695, 0x00,   4, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Hamstring (Rank 3)
( 23721, 0x00,   9, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Arcane Infused
( 23920, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000800,   0,   0,   0), -- Spell Reflection
( 24353, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Primal Instinct
( 24389, 0x00,   3, 0x00C00017, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Chaos Fire
( 24398, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 7)
( 24658, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00014110, 0x00000000,   0,   0,   0), -- Unstable Power
( 24905, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,  15,   0,   0), -- Moonkin Form (Passive) (Passive)
( 24932, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   6), -- Leader of the Pack
( 25050, 0x04,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Mark of Flames
( 25469, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 8)
( 25472, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 9)
( 25669, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   1,   0,   0), -- Decapitate
( 25899, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070,   0,   0,   0), -- Greater Blessing of Sanctuary
( 25988, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Eye for an Eye (Rank 2)
( 26016, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   2,   0,   0), -- Vindication (Rank 2)
( 26107, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000064,   0,   0,   0), -- Symbols of Unending Life Finisher Bonus
( 26119, 0x00,  10, 0x90100003, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Stormcaller Spelldamage Bonus
( 26128, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,   0,   0,   0), -- Enigma Resist Bonus
( 26135, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Battlegear of Eternal Justice
( 26480, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Badge of the Swarmguard
( 26605, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Bloodcrown
( 27131, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 7)
( 27179, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Holy Shield (Rank 4)
( 27419, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Warrior's Resolve
( 27498, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Crusader's Wrath
( 27521, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,  15), -- Mana Restore
( 27656, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Flame Lash
( 27774, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- The Furious Storm
( 27787, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Rogue Armor Energize
( 27811, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blessed Recovery (Rank 1)
( 27815, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blessed Recovery (Rank 2)
( 27816, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blessed Recovery (Rank 3)
( 28592, 0x10,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Winter's Chill (Rank 2)
( 28593, 0x10,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Winter's Chill (Rank 3)
( 28716, 0x00,   7, 0x00000010, 0x00000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0), -- Rejuvenation
( 28719, 0x00,   7, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Healing Touch
( 28744, 0x00,   7, 0x00000040, 0x00000000, 0x00000000, 0x00044000, 0x00000000,   0,   0,   0), -- Regrowth
( 28752, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Adrenaline Rush
( 28789, 0x00,  10, 0xC0000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Holy Power
( 28802, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Epiphany
( 28809, 0x00,   6, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Greater Heal
( 28812, 0x00,   8, 0x02000006, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Head Rush
( 28816, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Invigorate
( 28823, 0x00,  11, 0x000000C0, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Totemic Power
( 28847, 0x00,   7, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Healing Touch Refund
( 28849, 0x00,  11, 0x00000080, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Lesser Healing Wave
( 29074, 0x14,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Master of Elements (Rank 1)
( 29075, 0x14,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Master of Elements (Rank 2)
( 29076, 0x14,   3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Master of Elements (Rank 3)
( 29150, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Electric Discharge
( 29179, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Elemental Devastation (Rank 2)
( 29180, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Elemental Devastation (Rank 3)
( 29385, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   7,   0,   0), -- Seal of Command
( 29441, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,   0,   0,   1), -- Magic Absorption (Rank 1)
( 29444, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,   0,   0,   1), -- Magic Absorption (Rank 2)
( 29455, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Felsteel Shield Spike
( 29501, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Frost Arrow
( 29593, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070,   0,   0,   0), -- Improved Defensive Stance (Rank 1)
( 29594, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070,   0,   0,   0), -- Improved Defensive Stance (Rank 2)
( 29624, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Searing Arrow
( 29625, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Flaming Cannonball
( 29626, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Shadow Bolt
( 29632, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Shadow Shot
( 29633, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Fire Blast
( 29634, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Quill Shot
( 29635, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Flaming Shell
( 29636, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Venom Shot
( 29637, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Keeper's Sting
( 29801, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Rampage (Rank 1)
( 29834, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Second Wind (Rank 1)
( 29838, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Second Wind (Rank 2)
( 29977, 0x00,   3, 0x00C00017, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Combustion
( 30003, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000800,   0,   0,   0), -- Sheen of Zanza
( 30160, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Elemental Devastation (Rank 1)
( 30293, 0x00,   5, 0x00000381, 0x000200C0, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Soul Leech (Rank 1)
( 30295, 0x00,   5, 0x00000381, 0x000200C0, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Soul Leech (Rank 2)
( 30296, 0x00,   5, 0x00000381, 0x000200C0, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Soul Leech (Rank 3)
( 30299, 0x7E,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Nether Protection (Rank 1)
( 30301, 0x7E,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Nether Protection (Rank 2)
( 30302, 0x7E,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Nether Protection (Rank 3)
( 30675, 0x00,  11, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Lightning Overload (Rank 1)
( 30678, 0x00,  11, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Lightning Overload (Rank 2)
( 30679, 0x00,  11, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Lightning Overload (Rank 3)
( 30701, 0x1C,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Elemental Absorption (Rank 1)
( 30705, 0x1C,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Elemental Absorption (Rank 5)
( 30802, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Unleashed Rage (Rank 1)
( 30803, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Unleashed Rage (Rank 1)
( 30804, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Unleashed Rage (Rank 2)
( 30805, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Unleashed Rage (Rank 3)
( 30808, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Unleashed Rage (Rank 2)
( 30809, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Unleashed Rage (Rank 3)
( 30823, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 10.,   0,   0), -- Shamanistic Rage
( 30881, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   5), -- Nature's Guardian (Rank 1)
( 30883, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   5), -- Nature's Guardian (Rank 2)
( 30884, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   5), -- Nature's Guardian (Rank 3)
( 30885, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   5), -- Nature's Guardian (Rank 4)
( 30886, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   5), -- Nature's Guardian (Rank 5)
( 30937, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Mark of Shadow
( 31124, 0x00,   8, 0x01000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Blade Twisting (Rank 1)
( 31126, 0x00,   8, 0x01000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Blade Twisting (Rank 2)
( 31221, 0x00,   8, 0x00400000, 0x00000000, 0x00000000, 0x00000400, 0x00006001,   0,   0,   0), -- Master of Subtlety (Rank 1)
( 31222, 0x00,   8, 0x00400000, 0x00000000, 0x00000000, 0x00000400, 0x00006001,   0,   0,   0), -- Master of Subtlety (Rank 2)
( 31223, 0x00,   8, 0x00400000, 0x00000000, 0x00000000, 0x00000400, 0x00006001,   0,   0,   0), -- Master of Subtlety (Rank 3)
( 31244, 0x00,   8, 0x003E0000, 0x00000009, 0x00000000, 0x00000000, 0x00000004,   0,   0,   0), -- Quick Recovery (Rank 1)
( 31245, 0x00,   8, 0x003E0000, 0x00000009, 0x00000000, 0x00000000, 0x00000004,   0,   0,   0), -- Quick Recovery (Rank 2)
( 31394, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Mark of Shadow
( 31569, 0x00,   3, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Blink (Rank 1)
( 31570, 0x00,   3, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Blink (Rank 2)
( 31571, 0x00,   3, 0x00000000, 0x00000022, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Arcane Potency (Rank 1)
( 31572, 0x00,   3, 0x00000000, 0x00000022, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Arcane Potency (Rank 2)
( 31794, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Focused Mind
( 31801, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,  20,   0,   0), -- Seal of Vengeance
( 31833, 0x00,  10, 0x80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Light's Grace (Rank 1)
( 31835, 0x00,  10, 0x80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Light's Grace (Rank 2)
( 31836, 0x00,  10, 0x80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Light's Grace (Rank 3)
( 31871, 0x00,  10, 0x00000010, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Divine Purpose (Rank 1)
( 31872, 0x00,  10, 0x00000010, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Divine Purpose (Rank 2)
( 31876, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgements of the Wise (Rank 1)
( 31877, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgements of the Wise (Rank 2)
( 31878, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgements of the Wise (Rank 3)
( 31904, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Holy Shield
( 32385, 0x00,   5, 0x00000001, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shadow Embrace (Rank 1)
( 32387, 0x00,   5, 0x00000001, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shadow Embrace (Rank 2)
( 32392, 0x00,   5, 0x00000001, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shadow Embrace (Rank 3)
( 32393, 0x00,   5, 0x00000001, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shadow Embrace (Rank 4)
( 32394, 0x00,   5, 0x00000001, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shadow Embrace (Rank 5)
( 32409, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shadow Word: Death
( 32587, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Block
( 32593, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Earth Shield (Rank 2)
( 32594, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Earth Shield (Rank 3)
( 32642, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Spore Cloud
( 32734, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Earth Shield
( 32748, 0x00,   8, 0x00000000, 0x00000001, 0x00000000, 0x00000140, 0x00000000,   0,   0,   0), -- Deadly Throw Interrupt (Rank 5)
( 32776, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Redoubt
( 32777, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Holy Shield
( 32837, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,  45), -- Spell Focus Trigger
( 32844, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   2,   0,   0), -- Lesser Heroism
( 32885, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Infuriate
( 33076, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x000A22A8, 0x00000000,   0,   0,   0), -- Prayer of Mending (Rank 1)
( 33089, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Vigilance of the Colossus
( 33127, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   7,   0,   0), -- Seal of Command
( 33142, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blessed Resilience (Rank 1)
( 33145, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blessed Resilience (Rank 2)
( 33146, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Blessed Resilience (Rank 3)
( 33150, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Surge of Light (Rank 1)
( 33151, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Surge of Light (Rank 1)
( 33154, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Surge of Light (Rank 2)
( 33174, 0x00,   6, 0x00000020, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Improved Divine Spirit (Rank 1)
( 33182, 0x00,   6, 0x00000020, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Improved Divine Spirit (Rank 2)
( 33191, 0x00,   6, 0x00808000, 0x00000400, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Misery (Rank 1)
( 33192, 0x00,   6, 0x00808000, 0x00000400, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Misery (Rank 2)
( 33193, 0x00,   6, 0x00808000, 0x00000400, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Misery (Rank 3)
( 33297, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Spell Haste Trinket
( 33299, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Coilfang Slave Pens Lvl 70 Boss3a Caster Trinket
( 33510, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   5,   0,   0), -- Health Restore
( 33648, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Reflection of Torment
( 33719, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000800,   0,   0,   0), -- Perfect Spell Reflection
( 33736, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 8)
( 33746, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Essence Infused Mushroom
( 33757, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Windfury Weapon (Passive) (Rank 1)
( 33759, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Power Infused Mushroom
( 33881, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Natural Perfection (Rank 1)
( 33882, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Natural Perfection (Rank 2)
( 33883, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Natural Perfection (Rank 3)
( 33953, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00044000, 0x00000000,   0,   0,  45), -- Essence of Life
( 34074, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000003,   0,   0,   0), -- Aspect of the Viper
( 34080, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,   0,   0,   0), -- Riposte Stance
( 34138, 0x00,  11, 0x00000080, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Totem of the Third Wind
( 34139, 0x00,  10, 0x40000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Libram of Justice
( 34258, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Justice
( 34262, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Mercy
( 34320, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Call of the Nexus
( 34355, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Poison Shield
( 34457, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Ferocious Inspiration (Rank 1)
( 34497, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Thrill of the Hunt (Rank 1)
( 34498, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Thrill of the Hunt (Rank 2)
( 34499, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Thrill of the Hunt (Rank 3)
( 34500, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Expose Weakness (Rank 1)
( 34502, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Expose Weakness (Rank 2)
( 34503, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Expose Weakness (Rank 3)
( 34584, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Love Struck
( 34586, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1.5,   0,   0), -- Romulo's Poison
( 34598, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Karazhan Caster Robe
( 34749, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,   0,   0,   0), -- Recurring Power
( 34753, 0x00,   6, 0x00001800, 0x00000004, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Holy Concentration (Rank 1)
( 34774, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1.5,   0,  20), -- Magtheridon Melee Trinket
( 34783, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000800,   0,   0,   0), -- Spell Reflection
( 34827, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield
( 34859, 0x00,   6, 0x00001800, 0x00000004, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Holy Concentration (Rank 2)
( 34860, 0x00,   6, 0x00001800, 0x00000004, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Holy Concentration (Rank 3)
( 34914, 0x00,   6, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Vampiric Touch (Rank 1)
( 34916, 0x00,   6, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Vampiric Touch (Rank 2)
( 34917, 0x00,   6, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Vampiric Touch (Rank 3)
( 34935, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   8), -- Backlash (Rank 1)
( 34938, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   8), -- Backlash (Rank 2)
( 34939, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   8), -- Backlash (Rank 3)
( 34950, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Go for the Throat (Rank 1)
( 34954, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Go for the Throat (Rank 2)
( 35077, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  60), -- Band of the Eternal Defender
( 35080, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   1,   0,  60), -- Band of the Eternal Champion
( 35083, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  60), -- Band of the Eternal Sage
( 35086, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  60), -- Band of the Eternal Restorer
( 35121, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Nether Power
( 35541, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00800000, 0x00000000,   0,   0,   0), -- Combat Potency (Rank 1)
( 35550, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00800000, 0x00000000,   0,   0,   0), -- Combat Potency (Rank 2)
( 35551, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00800000, 0x00000000,   0,   0,   0), -- Combat Potency (Rank 3)
( 35552, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00800000, 0x00000000,   0,   0,   0), -- Combat Potency (Rank 4)
( 35553, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00800000, 0x00000000,   0,   0,   0), -- Combat Potency (Rank 5)
( 36032, 0x00,   3, 0x00001000, 0x00008000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Arcane Blast
( 36096, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000800,   0,   0,   0), -- Spell Reflection
( 36111, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- World Breaker
( 36541, 0x04,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Curse of Burning Shadows
( 37165, 0x00,   8, 0x00200400, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Haste
( 37168, 0x00,   8, 0x003E0000, 0x00000009, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Finisher Combo
( 37170, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   1,   0,   0), -- Free Finisher Chance
( 37173, 0x00,   8, 0x2CBC0598, 0x00000106, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Armor Penetration
( 37189, 0x00,  10, 0xC0000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  60), -- Recuced Holy Light Cast Time
( 37193, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Infused Shield
( 37195, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgement Group Heal
( 37197, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,  45), -- Spell Damage
( 37213, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Mana Cost Reduction
( 37214, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Energized
( 37227, 0x00,  11, 0x000001C0, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  60), -- Improved Healing Wave
( 37237, 0x00,  11, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Lightning Bolt Discount
( 37247, 0x08,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,  45), -- Regain Mana
( 37377, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Shadowflame
( 37379, 0x20,   5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Flameshadow
( 37384, 0x00,   5, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Corruption and Immolate
( 37443, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Crit Bonus Damage
( 37514, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000020,   0,   0,   0), -- Blade Turning
( 37516, 0x00,   4, 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Revenge Bonus
( 37519, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000030,   0,   0,   0), -- Rage Bonus
( 37523, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Reinforced Shield
( 37528, 0x00,   4, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Overpower Bonus
( 37536, 0x00,   4, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Battle Shout
( 37568, 0x00,   6, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Greater Heal Discount
( 37594, 0x00,   6, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Greater Heal Refund
( 37600, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Offensive Discount
( 37601, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Relentlessness
( 37603, 0x00,   6, 0x00008000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shadow Word Pain Damage
( 37655, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  60), -- Bonus Mana Regen
( 37657, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   3), -- Lightning Capacitor
( 38026, 0x01,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100,   0,   0,   0), -- Viscous Shield
( 38031, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Shield Block
( 38290, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1.6,   0,   0), -- Santos' Blessing
( 38299, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  15), -- HoTs on Heals
( 38326, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Crit Threat Reduction Melee
( 38327, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Crit Threat Reduction Spell
( 38334, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  60), -- Proc Mana Regen
( 38347, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Crit Proc Spell Damage
( 38350, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Crit Proc Heal
( 38394, 0x00,   5, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Dot Heals
( 38857, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Spell Ground
( 39027, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Poison Shield
( 39372, 0x30,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Frozen Shadoweave
( 39437, 0x04,   5, 0x00001364, 0x000000C0, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Shadowflame Hellfire and RoF
( 39442, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001,   0,   0,   0), -- Aura of Wrath
( 39443, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Aura of Wrath
( 39530, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Focus
( 39958, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.7,   0,  40), -- Skyfire Swiftness
( 40407, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   6,   0,   0), -- Illidan Tank Shield
( 40438, 0x00,   6, 0x00008040, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Priest Tier 6 Trinket
( 40442, 0x00,   7, 0x00000014, 0x00000440, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Druid Tier 6 Trinket
( 40444, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Black Temple Tank Trinket
( 40458, 0x00,   4, 0x02000000, 0x00000601, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Warrior Tier 6 Trinket
( 40463, 0x00,  11, 0x00000081, 0x00000010, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shaman Tier 6 Trinket
( 40470, 0x00,  10, 0xC0800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Paladin Tier 6 Trinket
( 40475, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   3,   0,   0), -- Black Temple Melee Trinket
( 40478, 0x00,   5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Warlock Tier 6 Trinket
( 40482, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Mage Tier 6 Trinket
( 40485, 0x00,   9, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Hunter Tier 6 Trinket
( 40899, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Felfire Proc
( 41034, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Spell Absorption
( 41260, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Aviana's Purpose
( 41262, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Aviana's Will
( 41381, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100,   0,   0,   0), -- Shell of Life
( 41393, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000020,   0,   0,   0), -- Riposte
( 41434, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   2,   0,  45), -- The Twin Blades of Azzinoth
( 41469, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   7,   0,   0), -- Seal of Command
( 41635, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x000A22A8, 0x00000000,   0,   0,   0), -- Prayer of Mending (Rank 1)
( 41989, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.5,   0,   0), -- Fists of Fury
( 42083, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Fury of the Crashing Waves
( 42135, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  90), -- Lesser Rune of Warding
( 42136, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  90), -- Greater Rune of Warding
( 42368, 0x00,  10, 0x40000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Merciless Libram of Justice
( 42370, 0x00,  11, 0x00000040, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Merciless Totem of the Third WInd
( 42770, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Second Wind (Rank 2)
( 43019, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 8)
( 43020, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Mana Shield (Rank 9)
( 43338, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Shamanistic Focus
( 43443, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000800,   0,   0,   0), -- Spell Reflection
( 43726, 0x00,  10, 0x40000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Vengeful Libram of Justice
( 43728, 0x00,  11, 0x00000080, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Vengeful Totem of Third WInd
( 43737, 0x00,   7, 0x00000000, 0x00000440, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Primal Instinct
( 43739, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Lunar Grace
( 43741, 0x00,  10, 0x80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Light's Grace
( 43745, 0x00,  10, 0x00000000, 0x00000200, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Crusader's Command
( 43748, 0x00,  11, 0x90100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Elemental Strength
( 43750, 0x00,  11, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Energized
( 43819, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Lucidity
( 44394, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Incanter's Absorption (Rank 1)
( 44395, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Incanter's Absorption (Rank 2)
( 44396, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000400,   0,   0,   0), -- Incanter's Absorption (Rank 3)
( 44401, 0x00,   3, 0x00200000, 0x00000000, 0x00000000, 0x00000000, 0x00000FFF,   0,   0,   0), -- Missile Barrage
( 44404, 0x00,   3, 0x20000021, 0x00009000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Missile Barrage (Rank 1)
( 44442, 0x00,   3, 0x00800000, 0x00000040, 0x00000000, 0x00000000, 0x00010000,   0,   0,   1), -- Firestarter (Rank 1)
( 44443, 0x00,   3, 0x00800000, 0x00000040, 0x00000000, 0x00000000, 0x00010000,   0,   0,   1), -- Firestarter (Rank 2)
( 44445, 0x00,   3, 0x00000013, 0x00001000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Hot Streak (Rank 1)
( 44446, 0x00,   3, 0x00000013, 0x00001000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Hot Streak (Rank 2)
( 44448, 0x00,   3, 0x00000013, 0x00001000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Hot Streak (Rank 3)
( 44449, 0x00,   3, 0x20E21277, 0x00019048, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Burnout (Rank 1)
( 44469, 0x00,   3, 0x20E21277, 0x00019048, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Burnout (Rank 2)
( 44470, 0x00,   3, 0x20E21277, 0x00019048, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Burnout (Rank 3)
( 44471, 0x00,   3, 0x20E21277, 0x00019048, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Burnout (Rank 4)
( 44472, 0x00,   3, 0x20E21277, 0x00019048, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Burnout (Rank 5)
( 44543, 0x00,   3, 0x00100220, 0x00001000, 0x00000000, 0x00010000, 0x00000000,   0,   7,   0), -- Fingers of Frost (Rank 1)
( 44545, 0x00,   3, 0x00100220, 0x00001000, 0x00000000, 0x00010000, 0x00000000,   0,  15,   0), -- Fingers of Frost (Rank 2)
( 44546, 0x00,   3, 0x00100220, 0x00001000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Brain Freeze (Rank 1)
( 44548, 0x00,   3, 0x00100220, 0x00001000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Brain Freeze (Rank 2)
( 44549, 0x00,   3, 0x00100220, 0x00001000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Brain Freeze (Rank 3)
( 44557, 0x00,   3, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Enduring Winter (Rank 1)
( 44560, 0x00,   3, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Enduring Winter (Rank 2)
( 44561, 0x00,   3, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Enduring Winter (Rank 3)
( 44745, 0x00,   3, 0x00000000, 0x00000001, 0x00000000, 0x00004000, 0x00002000,   0,   0,   0), -- Shattered Barrier (Rank 1)
( 44835, 0x00,   7, 0x00000000, 0x00000080, 0x00000000, 0x00000010, 0x00000000,   0,   0,   0), -- Maim Interrupt
( 45054, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  15), -- Augment Pain
( 45057, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Evasive Maneuvers
( 45234, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Focused Will (Rank 1)
( 45243, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Focused Will (Rank 2)
( 45244, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Focused Will (Rank 3)
( 45354, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Item - Sunwell Dungeon Melee Trinket
( 45469, 0x00,  15, 0x00000010, 0x00000000, 0x00000000, 0x00000010, 0x00000000,   0,   0,   0), -- Death Strike
( 45481, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Sunwell Exalted Caster Neck
( 45482, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Sunwell Exalted Melee Neck
( 45483, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Sunwell Exalted Tank Neck
( 45484, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,  45), -- Sunwell Exalted Healer Neck
( 46025, 0x20,   6, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Blackout (Rank 5)
( 46092, 0x00,  10, 0x40000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Brutal Libram of Justice
( 46098, 0x00,  11, 0x00000080, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Brutal Totem of Third WInd
( 46569, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Sunwell Exalted Caster Neck
( 46662, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  20), -- Deathfrost
( 46832, 0x00,   7, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Moonkin Starfire Bonus
( 46854, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Trauma (Rank 1)
( 46855, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Trauma (Rank 2)
( 46867, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Wrecking Crew (Rank 1)
( 46910, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 5.5,   0,   0), -- Furious Attacks (Rank 1)
( 46911, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 7.5,   0,   0), -- Furious Attacks (Rank 2)
( 46913, 0x00,   4, 0x00000040, 0x00000404, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Bloodsurge (Rank 1)
( 46914, 0x00,   4, 0x00000040, 0x00000404, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Bloodsurge (Rank 2)
( 46915, 0x00,   4, 0x00000040, 0x00000404, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Bloodsurge (Rank 3)
( 46916, 0x00,   4, 0x00000000, 0x00000400, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Slam!
( 46951, 0x00,   4, 0x00000400, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sword and Board (Rank 1)
( 46952, 0x00,   0, 0x00000400, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sword and Board (Rank 2)
( 46953, 0x00,   0, 0x00000400, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sword and Board (Rank 3)
( 47195, 0x00,   5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Eradication (Rank 1)
( 47196, 0x00,   5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Eradication (Rank 2)
( 47197, 0x00,   5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Eradication (Rank 3)
( 47201, 0x00,   5, 0x00000008, 0x00040000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Everlasting Affliction (1)
( 47202, 0x00,   5, 0x00000008, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Everlasting Affliction (2)
( 47203, 0x00,   5, 0x00000008, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Everlasting Affliction (3)
( 47204, 0x00,   5, 0x00000008, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Everlasting Affliction (4)
( 47205, 0x00,   5, 0x00000008, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Everlasting Affliction (5)
( 47245, 0x20,   5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Molten Core (Rank 1)
( 47246, 0x20,   5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Molten Core (Rank 2)
( 47247, 0x20,   5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Molten Core (Rank 3)
( 47258, 0x00,   5, 0x00000000, 0x00800000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Backdraft (Rank 1)
( 47259, 0x00,   5, 0x00000000, 0x00800000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Backdraft (Rank 2)
( 47260, 0x00,   5, 0x00000000, 0x00800000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Backdraft (Rank 3)
( 47263, 0x20,   5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  20), -- Torture (Rank 1)
( 47264, 0x20,   5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  20), -- Torture (Rank 2)
( 47265, 0x20,   5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  20), -- Torture (Rank 3)
( 47509, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Divine Aegis (Rank 1)
( 47511, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Divine Aegis (Rank 2)
( 47515, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Divine Aegis (Rank 3)
( 47516, 0x00,   6, 0x00001800, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Grace (Rank 1)
( 47517, 0x00,   6, 0x00001800, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Grace (Rank 2)
( 47535, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00004000, 0x00002000,   0,   0,  12), -- Rapture (Rank 1)
( 47536, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00004000, 0x00002000,   0,   0,  12), -- Rapture (Rank 2)
( 47537, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00004000, 0x00002000,   0,   0,  12), -- Rapture (Rank 3)
( 47569, 0x00,   6, 0x00004000, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Improved Shadowform (Rank 1)
( 47570, 0x00,   6, 0x00004000, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Improved Shadowform (Rank 2)
( 47580, 0x00,   6, 0x00000000, 0x00000000, 0x00000040, 0x00000000, 0x00010000,   0,   0,   0), -- Pain and Suffering (Rank 1)
( 47581, 0x00,   6, 0x00000000, 0x00000000, 0x00000040, 0x00000000, 0x00010000,   0,   0,   0), -- Pain and Suffering (Rank 2)
( 47582, 0x00,   6, 0x00000000, 0x00000000, 0x00000040, 0x00000000, 0x00010000,   0,   0,   0), -- Pain and Suffering (Rank 3)
( 48110, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x000A22A8, 0x00000000,   0,   0,   0), -- Prayer of Mending (Rank 2)
( 48111, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x000A22A8, 0x00000000,   0,   0,   0), -- Prayer of Mending (Rank 3)
( 48112, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x000A22A8, 0x00000000,   0,   0,   0), -- Prayer of Mending (Rank 2)
( 48113, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x000A22A8, 0x00000000,   0,   0,   0), -- Prayer of Mending (Rank 3)
( 48159, 0x00,   6, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Vampiric Touch (Rank 4)
( 48160, 0x00,   6, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Vampiric Touch (Rank 5)
( 48483, 0x00,   7, 0x00008800, 0x00000440, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Infected Wounds (Rank 1)
( 48484, 0x00,   7, 0x00008800, 0x00000440, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Infected Wounds (Rank 2)
( 48485, 0x00,   7, 0x00008800, 0x00000440, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Infected Wounds (Rank 3)
( 48492, 0x00,   7, 0x00080000, 0x00000000, 0x00000800, 0x00000400, 0x00000000,   0,   0,   0), -- King of the Jungle (Rank1)
( 48494, 0x00,   7, 0x00080000, 0x00000000, 0x00000800, 0x00000400, 0x00000000,   0,   0,   0), -- King of the Jungle (Rank2)
( 48495, 0x00,   7, 0x00080000, 0x00000000, 0x00000800, 0x00000400, 0x00000000,   0,   0,   0), -- King of the Jungle (Rank3)
( 48496, 0x00,   7, 0x00000060, 0x02000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Living Seed (Rank 1)
( 48499, 0x00,   7, 0x00000060, 0x02000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Living Seed (Rank 2)
( 48500, 0x00,   7, 0x00000060, 0x02000002, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Living Seed (Rank 3)
( 48506, 0x00,   7, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Earth and Moon (Rank 1)
( 48510, 0x00,   7, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Earth and Moon (Rank 2)
( 48511, 0x00,   7, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Earth and Moon (Rank 3)
( 48516, 0x00,   7, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  30), -- Eclipse (Rank 1)
( 48521, 0x00,   7, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  30), -- Eclipse (Rank 2)
( 48525, 0x00,   7, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  30), -- Eclipse (Rank 3)
( 48833, 0x00,   7, 0x00000000, 0x00000440, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Primal Instinct
( 48835, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Justice
( 48837, 0x00,  11, 0x90100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Elemental Tenacity
( 48951, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Holy Shield (Rank 5)
( 48952, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Holy Shield (Rank 6)
( 48988, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Bloody Vengeance (Rank 1)
( 49018, 0x00,  15, 0x01400000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sudden Doom (Rank 1)
( 49208, 0x00,  15, 0x00440000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Reaping (Rank 1)
( 49222, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Bone Shield
( 49280, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 10)
( 49281, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Lightning Shield (Rank 11)
( 49283, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Earth Shield (Rank 4)
( 49284, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Earth Shield (Rank 5)
( 49503, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Bloody Vengeance (Rank 2)
( 49504, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Bloody Vengeance (Rank 3)
( 49529, 0x00,  15, 0x01400000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sudden Doom (Rank 2)
( 49530, 0x00,  15, 0x01400000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sudden Doom (Rank 3)
( 49622, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  60), -- Bonus Mana Regen
( 50781, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   6), -- Fate Rune of Primal Energy
( 50880, 0x00,  15, 0x00000000, 0x04000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Icy Talons
( 50884, 0x00,  15, 0x00000000, 0x04000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Icy Talons
( 50885, 0x00,  15, 0x00000000, 0x04000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Icy Talons
( 50886, 0x00,  15, 0x00000000, 0x04000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Icy Talons
( 50887, 0x00,  15, 0x00000000, 0x04000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Icy Talons
( 51123, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Killing Machine (Rank 1)
( 51127, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Killing Machine (Rank 2)
( 51128, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Killing Machine (Rank 3)
( 51129, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Killing Machine (Rank 4)
( 51130, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Killing Machine (Rank 5)
( 51346, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Venture Company Beatdown!
( 51349, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Venture Company Beatdown
( 51352, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Venture Company Beatdown!
( 51359, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Venture Company Beatdown
( 51414, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Venomous Breath Aura
( 51466, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Elemental Oath (Rank 1)
( 51470, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Elemental Oath (Rank 2)
( 51474, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Astral Shift (Rank 1)
( 51478, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Astral Shift (Rank 2)
( 51479, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Astral Shift (Rank 3)
( 51483, 0x01,  11, 0x20000000, 0x00000000, 0x00000000, 0x00004000, 0x00000001,   0,   0,   0), -- Storm, Earth and Fire
( 51485, 0x01,  11, 0x20000000, 0x00000000, 0x00000000, 0x00004000, 0x00000001,   0,   0,   0), -- Storm, Earth and Fire
( 51486, 0x01,  11, 0x20000000, 0x00000000, 0x00000000, 0x00004000, 0x00000001,   0,   0,   0), -- Storm, Earth and Fire
( 51521, 0x00,  11, 0x00000000, 0x01000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Stormstrike
( 51522, 0x00,  11, 0x00000000, 0x01000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Stormstrike
( 51523, 0x08,  11, 0x00000000, 0x00000001, 0x00000000, 0x00011000, 0x00000000,   0,  50,   0), -- Earthen Power (Rank 1)
( 51524, 0x08,  11, 0x00000000, 0x00000001, 0x00000000, 0x00011000, 0x00000000,   0, 100,   0), -- Earthen Power (Rank 2)
( 51528, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 2.5,   0,   0), -- Maelstrom Weapon (Rank 1)
( 51529, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   5,   0,   0), -- Maelstrom Weapon (Rank 2)
( 51530, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 7.5,   0,   0), -- Maelstrom Weapon (Rank 3)
( 51531, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,  10,   0,   0), -- Maelstrom Weapon (Rank 4)
( 51532, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 12.,   0,   0), -- Maelstrom Weapon (Rank 5)
( 51556, 0x00,  11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x00000002,   0,   0,   0), -- Ancestral Awakening (Rank 1)
( 51557, 0x00,  11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x00000002,   0,   0,   0), -- Ancestral Awakening (Rank 2)
( 51558, 0x00,  11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x00000002,   0,   0,   0), -- Ancestral Awakening (Rank 3)
( 51562, 0x00,  11, 0x00000100, 0x00000000, 0x00000010, 0x00000000, 0x00000000,   0,   0,   0), -- Tidal Waves (Rank 1)
( 51563, 0x00,  11, 0x00000100, 0x00000000, 0x00000010, 0x00000000, 0x00000000,   0,   0,   0), -- Tidal Waves (Rank 2)
( 51564, 0x00,  11, 0x00000100, 0x00000000, 0x00000010, 0x00000000, 0x00000000,   0,   0,   0), -- Tidal Waves (Rank 3)
( 51565, 0x00,  11, 0x00000100, 0x00000000, 0x00000010, 0x00000000, 0x00000000,   0,   0,   0), -- Tidal Waves (Rank 4)
( 51566, 0x00,  11, 0x00000100, 0x00000000, 0x00000010, 0x00000000, 0x00000000,   0,   0,   0), -- Tidal Waves (Rank 5)
( 51625, 0x00,   8, 0x1000A000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Deadly Brew (Rank 1)
( 51626, 0x00,   8, 0x1000A000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Deadly Brew (Rank 2)
( 51627, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070,   0,   0,   0), -- Turn the Tables (Rank 1)
( 51628, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070,   0,   0,   0), -- Turn the Tables (Rank 2)
( 51629, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070,   0,   0,   0), -- Turn the Tables (Rank 3)
( 51634, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Focused Attacks (Rank 1)
( 51635, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Focused Attacks (Rank 2)
( 51636, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Focused Attacks (Rank 3)
( 51664, 0x00,   8, 0x00020000, 0x00000008, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Cut to the Chase (Rank 1)
( 51665, 0x00,   8, 0x00020000, 0x00000008, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Cut to the Chase (Rank 2)
( 51667, 0x00,   8, 0x00020000, 0x00000008, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Cut to the Chase (Rank 3)
( 51668, 0x00,   8, 0x00020000, 0x00000008, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Cut to the Chase (Rank 4)
( 51669, 0x00,   8, 0x00020000, 0x00000008, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Cut to the Chase (Rank 5)
( 51672, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010,   0,   0,   1), -- Unfair Advantage (Rank 1)
( 51674, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010,   0,   0,   1), -- Unfair Advantage (Rank 2)
( 51679, 0x00,   8, 0x00000001, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Throwing Specialization (Rank 2)
( 51692, 0x00,   8, 0x00000200, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Waylay (Rank 1)
( 51696, 0x00,   8, 0x00000200, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Waylay (Rank 2)
( 51698, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   1), -- Honor Among Thieves (Rank 1)
( 51700, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   1), -- Honor Among Thieves (Rank 2)
( 51701, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   1), -- Honor Among Thieves (Rank 3)
( 51915, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x01000000, 0x00000000,   0, 100, 600), -- Undying Resolve
( 51940, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,  20,   0), -- Earthliving Weapon (Passive) (Rank 1)
( 51989, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,  20,   0), -- Earthliving Weapon (Passive) (Rank 2)
( 52004, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,  20,   0), -- Earthliving Weapon (Passive) (Rank 3)
( 52005, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,  20,   0), -- Earthliving Weapon (Passive) (Rank 4)
( 52007, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,  20,   0), -- Earthliving Weapon (Passive) (Rank 5)
( 52008, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,  20,   0), -- Earthliving Weapon (Passive) (Rank 6)
( 52020, 0x00,   7, 0x00008000, 0x00100000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Snap and Snarl
( 52127, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 1)
( 52129, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 2)
( 52131, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 3)
( 52134, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 4)
( 52136, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 5)
( 52138, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 6)
( 52420, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Deflection
( 52423, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000020,   0,   0,   0), -- Retaliation
( 52795, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Borrowed Time (Rank 1)
( 52797, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Borrowed Time (Rank 2)
( 52798, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Borrowed Time (Rank 3)
( 52799, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Borrowed Time (Rank 4)
( 52800, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Borrowed Time (Rank 5)
( 52898, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Spell Damping
( 53137, 0x00,  15, 0x01400000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Abomination's Might (Rank 1)
( 53138, 0x00,  15, 0x01400000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Abomination's Might (Rank 2)
( 53215, 0x00,   9, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Wild Quiver (Rank 1)
( 53216, 0x00,   9, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Wild Quiver (Rank 2)
( 53217, 0x00,   9, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Wild Quiver (Rank 3)
( 53221, 0x00,   9, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Steady Shot (Rank 1)
( 53222, 0x00,   9, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Steady Shot (Rank 2)
( 53224, 0x00,   9, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Improved Steady Shot (Rank 3)
( 53228, 0x00,   9, 0x00000020, 0x01000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Rapid Recuperation (Rank 1)
( 53232, 0x00,   9, 0x00000020, 0x01000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Rapid Recuperation (Rank 2)
( 53256, 0x00,   9, 0x00000800, 0x00800001, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Cobra Strikes (Rank 1)
( 53259, 0x00,   9, 0x00000800, 0x00800001, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Cobra Strikes (Rank 2)
( 53260, 0x00,   9, 0x00000800, 0x00800001, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Cobra Strikes (Rank 3)
( 53290, 0x00,   9, 0x00000800, 0x7FFFFFFF, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Hunting Party (Rank 1)
( 53291, 0x00,   9, 0x00000800, 0x7FFFFFFF, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Hunting Party (Rank 2)
( 53292, 0x00,   9, 0x00000800, 0x7FFFFFFF, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Hunting Party (Rank 3)
( 53375, 0x00,  10, 0x00000000, 0x00002000, 0x00000000, 0x00000400, 0x00000000,   0,   0,   6), -- Sanctified Wrath (Rank 1)
( 53376, 0x00,  10, 0x00000000, 0x00002000, 0x00000000, 0x00000400, 0x00000000,   0,   0,   6), -- Sanctified Wrath (Rank 2)
( 53380, 0x00,  10, 0x00800000, 0x00020000, 0x00000000, 0x00000000, 0x00040002,   0,   0,   0), -- Righteous Vengeance (Rank 1)
( 53381, 0x00,  10, 0x00800000, 0x00020000, 0x00000000, 0x00000000, 0x00040002,   0,   0,   0), -- Righteous Vengeance (Rank 2)
( 53382, 0x00,  10, 0x00800000, 0x00020000, 0x00000000, 0x00000000, 0x00040002,   0,   0,   0), -- Righteous Vengeance (Rank 3)
( 53397, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Invigoration (Rank 1)
( 53486, 0x00,  10, 0x00800000, 0x00028000, 0x00000000, 0x00000000, 0x00040002,   0,   0,   0), -- The Art of War (Rank 1)
( 53488, 0x00,  10, 0x00800000, 0x00028000, 0x00000000, 0x00000000, 0x00040002,   0,   0,   0), -- The Art of War (Rank 2)
( 53501, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Sheath of Light (Rank 1)
( 53502, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Sheath of Light (Rank 2)
( 53503, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Sheath of Light (Rank 3)
( 53551, 0x00,  10, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sacred Cleansing (Rank 1)
( 53552, 0x00,  10, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sacred Cleansing (Rank 2)
( 53553, 0x00,  10, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sacred Cleansing (Rank 3)
( 53569, 0x00,  10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Infusion of Light (Rank 1)
( 53576, 0x00,  10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Infusion of Light (Rank 2)
( 53601, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Sacred Shield (Rank 1)
( 53646, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Demonic Pact (Rank 1)
( 53671, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgements of the Pure (Rank 1)
( 53672, 0x00,  10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Infusion of Light
( 53673, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgements of the Pure (Rank 2)
( 53709, 0x02,  10, 0x00004000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shield of the templar
( 53710, 0x02,  10, 0x00004000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shield of the templar
( 53711, 0x02,  10, 0x00004000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Shield of the templar
( 53754, 0x00,   5, 0x00000000, 0x00000400, 0x00000000, 0x00000000, 0x00006000,   0,   0,   0), -- Improved Fear (Rank 1)
( 53759, 0x00,   5, 0x00000000, 0x00000400, 0x00000000, 0x00000000, 0x00006000,   0,   0,   0), -- Improved Fear (Rank 2)
( 54149, 0x00,  10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Infusion of Light (Rank 2)
( 54151, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgements of the Pure (Rank 3)
( 54154, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgements of the Pure (Rank 4)
( 54155, 0x00,  10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00040000,   0,   0,   0), -- Judgements of the Pure (Rank 5)
( 54278, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Empowered Imp
( 54486, 0x00,   0, 0x20000021, 0x00009000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Missile Barrage (Rank 2)
( 54488, 0x00,   0, 0x20000021, 0x00009000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Missile Barrage (Rank 3)
( 54489, 0x00,   0, 0x20000021, 0x00009000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Missile Barrage (Rank 4)
( 54490, 0x00,   0, 0x20000021, 0x00009000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Missile Barrage (Rank 5)
( 54695, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Item - Death Knight's Anguish Base
( 54707, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  60), -- Sonic Awareness (DND)
( 54738, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Star of Light
( 54747, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Burning Determination (Rank 1)
( 54749, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Burning Determination (Rank 2)
( 54754, 0x00,   7, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Rejuvenation
( 54787, 0x00,   3, 0x00000000, 0x00000001, 0x00000000, 0x00004000, 0x00002000,   0,   0,   0), -- Shattered Barrier (Rank 2)
( 54808, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  60), -- Sonic Shield
( 54838, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Purified Spirit
( 54841, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   3), -- Thunder Capacitor
( 54936, 0x00,  10, 0x40000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Flash of Light
( 54937, 0x00,  10, 0x80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Holy Light
( 54939, 0x00,  10, 0x00008000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Divinity
( 55198, 0x00,  11, 0x000001C0, 0x00000000, 0x00000000, 0x00004000, 0x00000002,   0,   0,   0), -- Tidal Force
( 55380, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Skyflare Swiftness
( 55381, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,  15), -- Mana Restore
( 55440, 0x00,  11, 0x00000040, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Healing Wave
( 55610, 0x00,  15, 0x00000000, 0x04000000, 0x00000000, 0x00001000, 0x00000000,   0,   0,   0), -- Improved Icy Talons
( 55640, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Lightweave Embroidery
( 55677, 0x00,   6, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Dispel Magic
( 55680, 0x00,   6, 0x00000200, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Prayer of Healing
( 55689, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Glyph of Shadow
( 55747, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Argent Fury
( 55768, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Darkglow Embroidery
( 55776, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Swordguard Embroidery
( 56218, 0x00,   5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Corruption
( 56249, 0x00,   5, 0x00000000, 0x00000000, 0x00000400, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Felhunter
( 56355, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040,   0,   0,   0), -- Titanium Shield Spike
( 56364, 0x00,   3, 0x00000000, 0x01000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Remove Curse
( 56372, 0x00,   3, 0x00000000, 0x00000080, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Glyph of Ice Block
( 56374, 0x00,   3, 0x00000000, 0x00004000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Glyph of Icy Veins
( 56451, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Earth Shield
( 56611, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Wrecking Crew (Rank 2)
( 56612, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Wrecking Crew (Rank 3)
( 56613, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Wrecking Crew (Rank 4)
( 56614, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Wrecking Crew (Rank 5)
( 56816, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000030,   0,   0,   0), -- Rune Strike
( 56821, 0x00,   8, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Glyph of Sinister Strike
( 56834, 0x00,  15, 0x00440000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Reaping (Rank 2)
( 56835, 0x00,  15, 0x00440000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Reaping (Rank 3)
( 57345, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Darkmoon Card: Greatness
( 57352, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00051154, 0x00000000,   0,   0,  45), -- Darkmoon Card: Death
( 57878, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010,   0,   0,   0), -- Natural Reaction (Rank 1)
( 57880, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010,   0,   0,   0), -- Natural Reaction (Rank 2)
( 57881, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010,   0,   0,   0), -- Natural Reaction (Rank 3)
( 57907, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Increased Spirit
( 57960, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Water Shield (Rank 9)
( 58357, 0x00,   4, 0x00000040, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Glyph of Heroic Strike
( 58364, 0x00,   4, 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Revenge
( 58372, 0x00,   4, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Hamstring
( 58386, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000020,   0,   0,   0), -- Glyph of Overpower
( 58426, 0x00,   8, 0x00400000, 0x00000000, 0x00000000, 0x00000400, 0x00006001,   0,   0,   0), -- Overkill
( 58442, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  15), -- Airy Pale Ale
( 58444, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   5), -- Worg Tooth Oatmeal Stout
( 58626, 0x00,  15, 0x02000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Death Grip
( 58631, 0x00,  15, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Icy Touch
( 58642, 0x00,  15, 0x00000000, 0x08000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Scourge Strike
( 58644, 0x00,  15, 0x00000000, 0x00000004, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Frost Strike
( 58647, 0x00,  15, 0x00000000, 0x00000004, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Frost Strike
( 58676, 0x00,  15, 0x00000000, 0x00000008, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Vampiric Blood
( 58677, 0x00,  15, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Death's Embrace
( 58872, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043,   0,   0,   0), -- Damage Shield (Rank 1)
( 58874, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043,   0,   0,   0), -- Damage Shield (Rank 2)
( 58901, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Tears of Anguish
( 59088, 0x00,   4, 0x00000000, 0x00000002, 0x00000000, 0x00000400, 0x00000000,   0,   0,   0), -- Improved Spell Reflection (Rank 1)
( 59089, 0x00,   4, 0x00000000, 0x00000002, 0x00000000, 0x00000400, 0x00000000,   0,   0,   0), -- Improved Spell Reflection (Rank 2)
( 59176, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Spell Damping
( 59327, 0x00,  15, 0x08000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Rune Tap
( 59345, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Chagrin
( 59630, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Black Magic
( 59725, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000800,   0,   0,   0), -- Spell Reflection
( 60061, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Flow of Time
( 60063, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Now is the Time!
( 60132, 0x00,  15, 0x00000000, 0x08020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Oblit/Scourge Strike Runic Power Up
( 60170, 0x00,   5, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Corruption Triggers Crit
( 60172, 0x00,   5, 0x00040000, 0x00000000, 0x00000000, 0x00000000, 0x00010000,   0,   0,   0), -- Life Tap Bonus Spirit
( 60176, 0x00,   4, 0x00000020, 0x00000010, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Bleed Cost Reduction
( 60221, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Essence of Gossamer
( 60301, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Meteorite Whetstone
( 60306, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Vestige of Haldor
( 60317, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Signet of Edward the Odd
( 60436, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Grim Toll
( 60442, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Bandit's Insignia
( 60473, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Forge Ember
( 60482, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Pendulum of Telluric Currents
( 60487, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  15), -- Extract of Necromatic Power
( 60490, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Embrace of the Spider
( 60493, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Dying Curse
( 60519, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Spark of Life
( 60529, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Forethought Talisman
( 60537, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Soul of the Dead
( 60564, 0x00,  11, 0x90100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Savage Gladiator's Totem of Survival
( 60571, 0x00,  11, 0x90100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Hateful Gladiator's Totem of Survival
( 60572, 0x00,  11, 0x90100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Deadly Gladiator's Totem of Survival
( 60573, 0x00,  11, 0x90100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- LK Arena 4 Gladiator's Totem of Survival
( 60574, 0x00,  11, 0x90100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- LK Arena 5 Gladiator's Totem of Survival
( 60575, 0x00,  11, 0x90100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- LK Arena 6 Gladiator's Totem of Survival
( 60617, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000020,   0,   0,   0), -- Parry
( 60710, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Savage Gladiator's Idol of Steadfastness
( 60717, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0, 100,   0), -- Hateful Gladiator's Idol of Steadfastness
( 60719, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Deadly Gladiator's Idol of Steadfastness
( 60722, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- LK Arena 4 Gladiator's Idol of Steadfastness
( 60724, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- LK Arena 5 Gladiator's Idol of Steadfastness
( 60726, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- LK Arena 6 Gladiator's Idol of Steadfastness
( 60770, 0x00,  11, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Totem of the Elemental Plane
( 60818, 0x00,  10, 0x00000000, 0x00000200, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Libram of Reciprocation
( 60826, 0x00,  15, 0x01400000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Sigil of Haunted Dreams
( 61188, 0x00,   5, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Chaotic Mind
( 61324, 0x00,  10, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Justice
( 61345, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Nature's Grace
( 61346, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Nature's Grace
( 61356, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  90), -- Invigorating Earthsiege Diamond Passive
( 61618, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Tentacles
( 61848, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010,   0,   0,   0), -- Aspect of the Dragonhawk
( 62147, 0x00,  15, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Icy Touch Defense Increase
( 62459, 0x00,  15, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Chains of Ice Frost Rune Refresh (Rank 3)
( 63108, 0x00,   5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Siphon Life
( 63158, 0x00,   5, 0x00000001, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Decimation
( 63156, 0x00,   5, 0x00000001, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Decimation
( 64343, 0x00,   3, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Impact
( 64976, 0x00,   4, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Juggernaut
( 64914, 0x00,   8, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Rogue T8 2P Bonus
( 64938, 0x00,   4, 0x00200040, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Item - Warrior T8 Melee 2P Bonus
( 64952, 0x00,   7, 0x00000000, 0x00000440, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Druid T8 Feral Relic
( 64964, 0x00,  15, 0x00000000, 0x20000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Death Knight T8 Tank Relic
( 65002, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Bonus Mana Regen
( 65005, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Alacrity of the Elements
( 64999, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   5,   0,   0), -- Meteoric Inspiration
( 65007, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   5,   0,   0), -- Eye of the Broodmother
( 65013, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Pyrite Infusion
( 65020, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Mjolnir Runestone
( 65025, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Dark Matter
( 46949, 0x00,   4, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Safeguard
( 46945, 0x00,   4, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Safeguard
( 64415, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Val'anyr Hammer of Ancient Kings - Equip Effect
( 60066, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Rage of the Unraveller
( 62115, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Strength of the Titans
( 62114, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Flow of Knowledge
( 62600, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Savage Defense
( 63245, 0x00,   5, 0x00000100, 0x00800000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Pyroclasm
( 18096, 0x00,   5, 0x00000100, 0x00800000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Pyroclasm
( 18073, 0x00,   5, 0x00000100, 0x00800000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Pyroclasm
( 63280, 0x00,  11, 0x20000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Totem of Wrath
( 63310, 0x00,   5, 0x00000000, 0x00010000, 0x00000000, 0x00010000, 0x00000000,   0,   0,   0), -- Glyph of Shadowflame
( 63320, 0x00,   5, 0x00040000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Life Tap
( 63335, 0x00,  15, 0x00000000, 0x00000002, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Howling Blast
( 63730, 0x00,   6, 0x00000800, 0x00000004, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Serendipity
( 63733, 0x00,   6, 0x00000800, 0x00000004, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Serendipity
( 63737, 0x00,   6, 0x00000800, 0x00000004, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Serendipity
( 64127, 0x00,   6, 0x00000001, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Body and Soul
( 64129, 0x00,   6, 0x00000001, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Body and Soul
( 64568, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   3), -- Blood Reserve
( 64571, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30), -- Blood Draining
( 64440, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000020,   0,   0,  20), -- Blade Warding
( 64714, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Flame of the Heavens
( 64738, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Show of Faith
( 64742, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45), -- Pandora's Plea
( 64752, 0x00,   7, 0x00800000, 0x10000100, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Druid T8 Feral 2P Bonus
( 64786, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  15), -- Comet's Trail
( 64792, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,  45), -- Blood of the Old God
( 64824, 0x00,   7, 0x00200000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Druid T8 Balance 4P Bonus
( 64928, 0x00,  11, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Item - Shaman T8 Elemental
( 64860, 0x00,   9, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Hunter T8 4P Bonus
( 64867, 0x00,   3, 0x20000021, 0x00001000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Mage T8 2P Bonus
( 64882, 0x00,  10, 0x00000000, 0x00100000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Paladin T8 Protection 4P Bonus
( 64890, 0x00,  10, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Item - Paladin T8 Holy 2P Bonus
( 64908, 0x00,   6, 0x00000000, 0x00000000, 0x00000040, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Priest T8 Shadow 4P Bonus
( 64912, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Priest T8 Healer 4P Bonus
( 57470, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Renewed Hope
( 57472, 0x00,   6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Renewed Hope
( 35100, 0x00,   9, 0x00001000, 0x00000000, 0x00000001, 0x00000000, 0x00000000,   0,   0,   0), -- Concussive Barrage
( 35102, 0x00,   9, 0x00001000, 0x00000000, 0x00000001, 0x00000000, 0x00000000,   0,   0,   0), -- Concussive Barrage
( 18119, 0x00,   5, 0x00000000, 0x00800000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Aftermath
( 18120, 0x00,   5, 0x00000000, 0x00800000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Aftermath
( 13165, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Hawk
( 14318, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Hawk
( 14319, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Hawk
( 14320, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Hawk
( 14321, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Hawk
( 14322, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Hawk
( 25296, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Hawk
( 27044, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Hawk
( 61846, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Dragonhawk
( 61847, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Aspect of the Dragonhawk
( 49223, 0x00,  15, 0x00000011, 0x08020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Dirge
( 49599, 0x00,  15, 0x00000011, 0x08020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Dirge
( 49188, 0x00,  15, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Rime
( 56822, 0x00,  15, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Rime
( 59057, 0x00,  15, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Rime
( 55666, 0x00,  15, 0x00000001, 0x08000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Desecration
( 55667, 0x00,  15, 0x00000001, 0x08000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Desecration
( 55668, 0x00,  15, 0x00000001, 0x08000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Desecration
( 55669, 0x00,  15, 0x00000001, 0x08000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Desecration
( 55670, 0x00,  15, 0x00000001, 0x08000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Desecration
( 58616, 0x00,  15, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Heart Strike
( 16164, 0x00,  11, 0x901000C3, 0x00001000, 0x00000000, 0x00000000, 0x00000002,   0,   0,   0), -- Elemental Focus
( 49149, 0x00,  15, 0x00000006, 0x00020002, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Chill of the Grave
( 50115, 0x00,  15, 0x00000006, 0x00020002, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Chill of the Grave
( 49217, 0x00,  15, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000000,   0,   0,   1), -- Wandering Plague
( 49654, 0x00,  15, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000000,   0,   0,   1), -- Wandering Plague
( 49655, 0x00,  15, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000000,   0,   0,   1), -- Wandering Plague
( 49137, 0x00,  15, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Endless Winter
( 49657, 0x00,  15, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Endless Winter
( 58620, 0x00,  15, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Glyph of Chains of Ice
( 56342, 0x00,   9, 0x00000018, 0x08000000, 0x00020000, 0x00000000, 0x00000000,   0,   0,   0), -- Lock and Load
( 56343, 0x00,   9, 0x00000018, 0x08000000, 0x00020000, 0x00000000, 0x00000000,   0,   0,   0), -- Lock and Load
( 56344, 0x00,   9, 0x00000018, 0x08000000, 0x00020000, 0x00000000, 0x00000000,   0,   0,   0), -- Lock and Load
( 48539, 0x00,   7, 0x00000010, 0x04000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0), -- Revitalize
( 48544, 0x00,   7, 0x00000010, 0x04000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0), -- Revitalize
( 48545, 0x00,   7, 0x00000010, 0x04000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0), -- Revitalize
( 53234, 0x00,   9, 0x00020000, 0x00000001, 0x00000001, 0x00000000, 0x00000002,   0,   0,   0), -- Piercing Shots (Rank 1)
( 53237, 0x00,   9, 0x00020000, 0x00000001, 0x00000001, 0x00000000, 0x00000002,   0,   0,   0), -- Piercing Shots (Rank 2)
( 53238, 0x00,   9, 0x00020000, 0x00000001, 0x00000001, 0x00000000, 0x00000002,   0,   0,   0), -- Piercing Shots (Rank 3)
( 56636, 0x00,   4, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Taste for Blood (Rank 1)
( 56637, 0x00,   4, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Taste for Blood (Rank 2)
( 56638, 0x00,   4, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   6), -- Taste for Blood (Rank 3)
( 56375, 0x00,   3, 0x01000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000,   0,   0,   0), -- Glyphs of Polymorph
( 54639, 0x00,  15, 0x00400000, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Blood of the north
( 54638, 0x00,  15, 0x00400000, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Blood of the north
( 54637, 0x00,  15, 0x00400000, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Blood of the north
( 61433, 0x00,  15, 0x00400000, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Blood of the north
( 61434, 0x00,  15, 0x00400000, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Blood of the north
( 49467, 0x00,  15, 0x00000010, 0x00020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Death Rune Mastery
( 50033, 0x00,  15, 0x00000010, 0x00020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Death Rune Mastery
( 50034, 0x00,  15, 0x00000010, 0x00020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Death Rune Mastery
( 63373, 0x00,  11, 0x80000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000,   0,   0,   0), -- Frozen Power (Rank 1)
( 63374, 0x00,  11, 0x80000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000,   0,   0,   0), -- Frozen Power (Rank 2)
( 54821, 0x00,   7, 0x00001000, 0x00000000, 0x00000000, 0x00000010, 0x00000000,   0,   0,   0), -- Glyph of Rake
( 54815, 0x00,   7, 0x00008000, 0x00000000, 0x00000000, 0x00000010, 0x00000000,   0,   0,   0), -- Glyph of Shred
( 54845, 0x00,   7, 0x00000004, 0x00000000, 0x00000000, 0x00010000, 0x00000000,   0,   0,   0), -- Glyph of Starfire
( 56800, 0x00,   8, 0x00800004, 0x00000000, 0x00000000, 0x00000010, 0x00000000,   0,   0,   0), -- Glyph of Backstab
( 54832, 0x00,   7, 0x00000000, 0x00001000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0); -- Glyph of Innervate

-- --------
-- ENCHANT PROC
-- --------
TRUNCATE TABLE `spell_enchant_proc_data`;
INSERT INTO spell_enchant_proc_data (`entry`, `customChance`, `PPMChance`,`procEx`) VALUES
 -- Frostbrand Weapon
(2, 0, 8.8,0),
(12, 0, 8.8,0),
(524, 0, 8.8,0),
(1667, 0, 8.8,0),
(1668, 0, 8.8,0),
(2635, 0, 8.8,0),
(3782, 0, 8.8,0),
(3783, 0, 8.8,0),
(3784, 0, 8.8,0),
 -- Wound Poison
(703, 0, 21.43,0),
(704, 0, 21.43,0),
(705, 0, 21.43,0),
(706, 0, 21.43,0),
(2644, 0, 21.43,0),
(3772, 0, 21.43,0),
(3773, 0, 21.43,0),
 -- Instant Poison
(323, 0, 8.53,0),
(324, 0, 8.53,0),
(325, 0, 8.53,0),
(623, 0, 8.53,0),
(624, 0, 8.53,0),
(625, 0, 8.53,0),
(2641, 0, 8.53,0),
(3768, 0, 8.53,0),
(3769, 0, 8.53,0),
 -- Fiery Weapon
(803, 0, 6.0,0),
 -- Demonslaying
(912, 0, 6.0,0),
 -- Icy Weapon
(1894, 0, 3.0,0),
 -- Lifestealing
(1898, 0, 6.0,0),
 -- Unholy Weapon
(1899, 0, 1.0,0),
 -- Crusader
(1900, 0, 1.0,0),
 -- Mongoose
(2673, 0, 1.0,0),
 -- Battlemaster
(2675, 0, 1.0,0),
 -- Executioner
(3225, 0, 1.0,0),
 -- Icebreaker Weapon
(3239, 0, 3.0,0),
 -- Lifeward
(3241, 0, 3.0,0),
 -- Giantslaying
(3251, 0, 3.0,0),
 -- Deathfrost
(3273, 0, 3.0,0),
 -- Rune of the Fallen Crusader
(3368, 0, 1.0,0),
 -- Rune of Cinderglacier
(3369, 0, 1.0,0),
 -- Berserking
(3789, 0, 1.0,0),
 -- Blade Ward
(3869, 0, 1.0,0);

-- --------
-- SPELL BONUS DATA
-- --------
TRUNCATE TABLE `spell_bonus_data`;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(49941, -1, -1, 0.04, -1, 'Death Knight - Blood Boil'),
(48721, -1, -1, 0.04, -1, 'Death Knight - Blood Boil'),
(55078, -1, -1, -1, 0.055, 'Death Knight - Blood Plague'),
(50444, -1, -1, 0.105, -1, 'Death Knight - Corpse Explosion Triggered'),
(52212, -1, -1, 0.0475, -1, 'Death Knight - Death and Decay'),
(47632, -1, -1, 0.15, -1, 'Death Knight - Death Coil'),
(47633, -1, -1, 0.15, -1, 'Death Knight - Death Coil Heal'),
(55095, -1, -1, -1, 0.055, 'Death Knight - Frost Fever'),
(58621, -1, -1, 0.08, -1, 'Death Knight - Glyph of Chains of Ice'),
(49184, -1, -1, 0.1, -1, 'Death Knight - Howling Blast'),
(45477, -1, -1, 0.1, -1, 'Death Knight - Icy Touch'),
(56903, 0, 0, 0, 0, 'Death Knight - Lichflame'),
(50842, -1, -1, 0.04, -1, 'Death Knight - Pestilence'),
(50401, 0, 0, 0, 0, 'Death Knight - Razor Frost'),
(47476, -1, -1, 0.06, -1, 'Death Knight - Strangulate'),
(50536, -1, -1, 0.013, -1, 'Death Knight - Unholy Blight (Rank1)'),
(339, -1, 0.1, -1, -1, 'Druid - Entangling Roots'),
(60089, -1, -1, 0.05, -1, 'Druid - Faerie Fire (feral)'),
(5185, 1.611, -1, -1, -1, 'Druid - Healing Touch'),
(42231, 0.12898, -1, -1, -1, 'Druid - Hurricane Triggered'),
(5570, -1, 0.2, -1, -1, 'Druid - Insect Swarm'),
(33745, -1, -1, -1, 0.01, 'Druid - Lacerate($AP*0.05 / number of ticks)'),
(33778, 0.516, 0, 0, 0, 'Druid - Lifebloom final heal'),
(33763, 0, 0.09518, 0, 0, 'Druid - Lifebloom HoT(rank 1)'),
(48450, 0, 0.09518, 0, 0, 'Druid - Lifebloom HoT(rank 2)'),
(48451, 0, 0.09518, 0, 0, 'Druid - Lifebloom HoT(rank 3)'),
(48628, -1, -1, -1, 0.15, 'Druid - Lock Jaw'),
(8921, 0.1515, 0.13, -1, -1, 'Druid - Moonfire'),
(50464, 0.67305, -1, -1, -1, 'Druid - Nourish'),
(1822, -1, -1, 0.01, 0.06, 'Druid - Rake ($AP*0.18 / number of ticks)'),
(8936, 0.539, 0.188, -1, -1, 'Druid - Regrowth'),
(774, -1, 0.37604, -1, -1, 'Druid - Rejuvenation'),
(50294, 0.0119, -1, -1, -1, 'Druid - Starfall AOE rank 1'),
(53188, 0.0119, -1, -1, -1, 'Druid - Starfall AOE rank 2'),
(53189, 0.0119, -1, -1, -1, 'Druid - Starfall AOE rank 3'),
(53190, 0.0119, -1, -1, -1, 'Druid - Starfall AOE rank 4'),
(50288, 0.0458, -1, -1, -1, 'Druid - Starfall rank 1'),
(53191, 0.0458, -1, -1, -1, 'Druid - Starfall rank 2'),
(53194, 0.0458, -1, -1, -1, 'Druid - Starfall rank 3'),
(53195, 0.0458, -1, -1, -1, 'Druid - Starfall rank 4'),
(2912, 1, -1, -1, -1, 'Druid - Starfire'),
(18562, 0, 0, 0, 0, 'Druid - Swiftmend'),
(779, -1, -1, 0.063, -1, 'Druid - Swipe (Bear)'),
(44203, 0.538, -1, -1, -1, 'Druid - Tranquility Triggered'),
(61391, 0.193, -1, -1, -1, 'Druid - Typhoon'),
(48438, -1, 0.11505, -1, -1, 'Druid - Wild Growth'),
(5176, 0.5714, -1, -1, -1, 'Druid - Wrath'),
(3044, -1, -1, 0.15, -1, 'Hunter - Arcane Shot'),
(3674, -1, -1, -1, 0.02, 'Hunter - Black Arrow($RAP*0.1 / number of ticks)'),
(19306, -1, -1, 0.2, -1, 'Hunter - Counterattack'),
(13812, -1, -1, 0.1, -1, 'Hunter - Explosive Trap Effect'),
(13797, -1, -1, -1, 0.02, 'Hunter - Immolation Trap($RAP*0.1 / number of ticks)'),
(1495, -1, -1, 0.2, -1, 'Hunter - Mongoose Bite'),
(1978, -1, -1, -1, 0.04, 'Hunter - Serpent Sting($RAP*0.2 / number of ticks)'),
(56641, -1, -1, 0.1, -1, 'Hunter - Steady Shot'),
(42243, -1, -1, 0.07, -1, 'Hunter - Volley'),
(53352, -1, -1, 0.14, -1, 'Hunter - Explosive Shot (triggered)'),
(55039, 0, 0, 0, 0, 'Item - Gnomish Lightning Generator'),
(40293, 0, 0, 0, 0, 'Item - Siphon Essence'),
(44425, 0.7143, -1, -1, -1, 'Mage - Arcane Barrage'),
(30451, 0.7143, -1, -1, -1, 'Mage - Arcane Blast'),
(1449, 0.2128, -1, -1, -1, 'Mage - Arcane Explosion'),
(7268, 0.2857, -1, -1, -1, 'Mage - Arcane Missiles Triggered Spell Rank 1'),
(7269, 0.2857, -1, -1, -1, 'Mage - Arcane Missiles Triggered Spell Rank 2'),
(11113, 0.1936, -1, -1, -1, 'Mage - Blast Wave'),
(42208, 0.1437, -1, -1, -1, 'Mage - Blizzard Triggered Spell'),
(120, 0.214, -1, -1, -1, 'Mage - Cone of Cold'),
(31661, 0.1936, -1, -1, -1, 'Mage - Dragons Breath'),
(133, 1, -1, -1, -1, 'Mage - Fire Ball'),
(2136, 0.4286, -1, -1, -1, 'Mage - Fire Blast'),
(543, 0.1, -1, -1, -1, 'Mage - Fire Ward'),
(2120, 0.2357, 0.122, -1, -1, 'Mage - Flamestrike'),
(116, 0.8143, -1, -1, -1, 'Mage - Frost Bolt'),
(122, 0.193, -1, -1, -1, 'Mage - Frost Nova'),
(6143, 0.1, -1, -1, -1, 'Mage - Frost Ward'),
(44614, 0.8571, -1, -1, -1, 'Mage - Frostfire Bolt'),
(11426, 0.8053, -1, -1, -1, 'Mage - Ice Barrier'),
(30455, 0.1429, -1, -1, -1, 'Mage - Ice Lance'),
(44457, 0.4, 0.2, -1, -1, 'Mage - Living Bomb'),
(1463, 0.8053, -1, -1, -1, 'Mage - Mana Shield'),
(34913, 0, 0, 0, 0, 'Mage - Molten Armor Triggered Rank 1'),
(11366, 1.15, 0.05, -1, -1, 'Mage - Pyroblast'),
(2948, 0.4286, -1, -1, -1, 'Mage - Scorch'),
(31935, 0.07, -1, 0.07, -1, 'Paladin - Avenger Shield'),
(53742, -1, 0.0176, -1, 0.03, 'Paladin - Blood Corruption'),
(26573, -1, 0.04, -1, 0.04, 'Paladin - Consecration'),
(879, 0.15, -1, 0.15, -1, 'Paladin - Exorcism'),
(19750, 1, -1, -1, -1, 'Paladin - Flash of Light'),
(53595, 0, 0, 0, 0, 'Paladin - Hammer of the Righteous'),
(24275, 0.15, -1, 0.15, -1, 'Paladin - Hammer of Wrath'),
(62124, 0.085, -1, -1, -1, 'Paladin - Hand of Reckoning'),
(635, 1.66, -1, -1, -1, 'Paladin - Holy Light'),
(20925, 0.09, -1, 0.056, -1, 'Paladin - Holy Shield'),
(25914, 0.81, -1, -1, -1, 'Paladin - Holy Shock Triggered Heal Rank 1'),
(25912, 0.4286, -1, -1, -1, 'Paladin - Holy Shock Triggered Hurt Rank 1'),
(31803, -1, 0.0176, -1, 0.03, 'Paladin - Holy Vengeance'),
(2812, 0.07, -1, 0.07, -1, 'Paladin - Holy Wrath'),
(31898, 0.25, -1, 0.16, -1, 'Paladin - Judgement of Blood Enemy'),
(32220, 0.0833, -1, 0.0533, -1, 'Paladin - Judgement of Blood Self'),
(20467, 0.25, -1, 0.16, -1, 'Paladin - Judgement of Command'),
(53733, 0.22, -1, 0.14, -1, 'Paladin - Judgement of Corruption'),
(20267, 0.1, -1, 0.1, -1, 'Paladin - Judgement of Light Proc'),
-- (20187, 0.4, -1, 0.25, -1, 'Paladin - Judgement of Righteousness'),
(20187, 0, 0, 0, 0, 'Paladin - Judgement of Righteousness'),
(53726, 0.25, -1, 0.16, -1, 'Paladin - Judgement of the Martyr Enemy'),
(53725, 0.0833, -1, 0.0533, -1, 'Paladin - Judgement of the Martyr Self'),
(31804, 0.22, -1, 0.14, -1, 'Paladin - Judgement of Vengeance'),
-- (54158, 0.25, -1, 0.16, -1, 'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'),
(54158, 0, 0, 0, 0, 'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'),
(58597, 0.75, -1, -1, -1, 'Paladin - Sacred Shield'),
(53601, 0.75, -1, -1, -1, 'Paladin - Sacred Shield'),
(31893, 0, 0, 0, 0, 'Paladin - Seal of Blood Proc Enemy'),
(32221, 0, 0, 0, 0, 'Paladin - Seal of Blood Proc Self'),
(20424, 0, 0, 0, 0, 'Paladin - Seal of Command Proc'),
(20167, 0.15, -1, 0.15, -1, 'Paladin - Seal of Light Proc'),
(25742, 0.07, -1, 0.039, -1, 'Paladin - Seal of Righteousness Dummy Proc'),
(53719, 0, 0, 0, 0, 'Paladin - Seal of the Martyr Proc Enemy'),
(53718, 0, 0, 0, 0, 'Paladin - Seal of the Martyr Proc Self'),
(50256, -1, -1, 0.08, -1, 'Pet Skills - Bear (Swipe)'),
(32546, 0.8068, -1, -1, -1, 'Priest - Binding Heal'),
(27813, 0, 0, 0, 0, 'Priest - Blessed Recovery Rank 1'),
(34861, 0.402, -1, -1, -1, 'Priest - Circle of Healing'),
(19236, 0.8068, -1, -1, -1, 'Priest - Desperate Prayer'),
(2944, -1, 0.1849, -1, -1, 'Priest - Devouring Plague'),
(2061, 0.8068, -1, -1, -1, 'Priest - Flash Heal'),
(2060, 1.6135, -1, -1, -1, 'Priest - Greater Heal'),
(14914, 0.5711, 0.024, -1, -1, 'Priest - Holy Fire'),
(15237, 0.1606, -1, -1, -1, 'Priest - Holy Nova Damage'),
(23455, 0.3035, -1, -1, -1, 'Priest - Holy Nova Heal Rank 1'),
(8129, 0, 0, 0, 0, 'Priest - Mana Burn'),
(8092, 0.428, -1, -1, -1, 'Priest - Mind Blast'),
(15407, 0.257, -1, -1, -1, 'Priest - Mind Flay'),
(49821, 0.2861, -1, -1, -1, 'Priest - Mind Sear Trigger Rank 1'),
(47757, 1.6135, -1, -1, -1, 'Priest - Penance (Rank 1'),
(52986, 1.6135, -1, -1, -1, 'Priest - Penance (Rank 2'),
(52987, 1.6135, -1, -1, -1, 'Priest - Penance (Rank 3'),
(52988, 1.6135, -1, -1, -1, 'Priest - Penance (Rank 4'),
(17, 0.8068, -1, -1, -1, 'Priest - Power Word: Shield'),
(596, 0.8068, -1, -1, -1, 'Priest - Prayer of Healing'),
(33110, 0.8068, -1, -1, -1, 'Priest - Prayer of Mending Heal Proc'),
(33619, 0, 0, 0, 0, 'Priest - Reflective Shield'),
(139, -1, 0.376, -1, -1, 'Priest - Renew'),
(32379, 0.4296, -1, -1, -1, 'Priest - Shadow Word: Death'),
(589, -1, 0.1829, -1, -1, 'Priest - Shadow Word: Pain'),
(34433, 0.65, -1, -1, -1, 'Priest - Shadowfiend'),
(585, 0.714, -1, -1, -1, 'Priest - Smite'),
(34914, -1, 0.4, -1, -1, 'Priest - Vampiric Touch'),
(7001, -1, 0.3333, -1, -1, 'Priest - Lightwell Renew Rank 1'),
(2818, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 1($AP*0.12 / number of ticks)'),
(2819, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 2($AP*0.12 / number of ticks)'),
(11353, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 3($AP*0.12 / number of ticks)'),
(11354, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 4($AP*0.12 / number of ticks)'),
(25349, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 5($AP*0.12 / number of ticks)'),
(26968, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 6($AP*0.12 / number of ticks)'),
(27187, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 7($AP*0.12 / number of ticks)'),
(57969, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 8($AP*0.12 / number of ticks)'),
(57970, -1, -1, -1, 0.03, 'Rogue - Deadly Poison Rank 9($AP*0.12 / number of ticks)'),
(703, -1, -1, -1, 0.02, 'Rogue - Garrote'),
(1776, -1, -1, 0.21, -1, 'Rogue - Gouge'),
(8680, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 1'),
(8685, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 2'),
(8689, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 3'),
(11335, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 4'),
(11336, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 5'),
(11337, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 6'),
(26890, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 7'),
(57964, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 8'),
(57965, -1, -1, 0.1, -1, 'Rogue - Instant Poison Rank 9'),
(13218, -1, -1, 0.04, -1, 'Rogue - Wound Poison Rank 1'),
(13222, -1, -1, 0.04, -1, 'Rogue - Wound Poison Rank 2'),
(13223, -1, -1, 0.04, -1, 'Rogue - Wound Poison Rank 3'),
(13224, -1, -1, 0.04, -1, 'Rogue - Wound Poison Rank 4'),
(27189, -1, -1, 0.04, -1, 'Rogue - Wound Poison Rank 5'),
(57974, -1, -1, 0.04, -1, 'Rogue - Wound Poison Rank 6'),
(57975, -1, -1, 0.04, -1, 'Rogue - Wound Poison Rank 7'),
(1064, 1.34, -1, -1, -1, 'Shaman - Chain Heal'),
(421, 0.57, -1, -1, -1, 'Shaman - Chain Lightning'),
(974, 0.4762, -1, -1, -1, 'Shaman - Earth Shield'),
(379, 0, 0, 0, 0, 'Shaman - Earth Shield Triggered'),
(8042, 0.3858, -1, -1, -1, 'Shaman - Earth Shock'),
(8443, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 1'),
(8504, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 2'),
(8505, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 3'),
(11310, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 4'),
(11311, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 5'),
(25538, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 6'),
(25539, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 7'),
(61651, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 8'),
(61660, 0.2142, -1, -1, -1, 'Shaman - Fire Nova Totem Casted by Totem Rank 9'),
(8050, 0.2142, 0.1, -1, -1, 'Shaman - Flame Shock'),
(8026, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 1'),
(58788, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 10'),
(8028, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 2'),
(8029, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 3'),
(10445, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 4'),
(16343, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 5'),
(16344, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 6'),
(25488, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 7'),
(58786, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 8'),
(58787, 0.1, -1, -1, -1, 'Shaman - Flametongue Weapon Proc Rank 9'),
(8056, 0.3858, -1, -1, -1, 'Shaman - Frost Shock'),
(8034, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 1'),
(8037, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 2'),
(10458, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 3'),
(16352, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 4'),
(16353, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 5'),
(25501, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 6'),
(58797, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 7'),
(58798, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 8'),
(58799, 0.1, -1, -1, -1, 'Shaman - Frostbrand Attack Rank 9'),
(2645, 0, 0, 0, 0, 'Shaman - Glyph of Ghost Wolf'),
(52042, 0.045, -1, -1, -1, 'Shaman - Healing Stream Totem Triggered Heal'),
(331, 1.6106, -1, -1, -1, 'Shaman - Healing Wave'),
(51505, 0.5714, -1, -1, -1, 'Shaman - Lava Burst'),
(8004, 0.8082, -1, -1, -1, 'Shaman - Lesser Healing Wave'),
(403, 0.7143, -1, -1, -1, 'Shaman - Lightning Bolt'),
(26364, 0.33, -1, -1, -1, 'Shaman - Lightning Shield Proc Rank 1'),
(8188, 0.1, -1, -1, -1, 'Shaman - Magma Totam Passive Rank 1'),
(10582, 0.1, -1, -1, -1, 'Shaman - Magma Totam Passive Rank 2'),
(10583, 0.1, -1, -1, -1, 'Shaman - Magma Totam Passive Rank 3'),
(10584, 0.1, -1, -1, -1, 'Shaman - Magma Totam Passive Rank 4'),
(25551, 0.1, -1, -1, -1, 'Shaman - Magma Totam Passive Rank 5'),
(58733, 0.1, -1, -1, -1, 'Shaman - Magma Totam Passive Rank 6'),
(58736, 0.1, -1, -1, -1, 'Shaman - Magma Totam Passive Rank 7'),
(61295, 0.4, 0.18, -1, -1, 'Shaman - Riptide'),
(3606, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 1'),
(58702, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 10'),
(6350, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 2'),
(6351, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 3'),
(6352, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 4'),
(10435, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 5'),
(10436, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 6'),
(25530, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 7'),
(58700, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 8'),
(58701, 0.1667, -1, -1, -1, 'Shaman - Searing Totem Attack Rank 9'),
(50796, 0.7139, -1, -1, -1, 'Warlock - Chaos Bolt'),
(17962, 0, 0, 0, 0, 'Warlock - Conflagrate'),
(172, -1, 0.2, -1, -1, 'Warlock - Corruption'),
(980, -1, 0.1, -1, -1, 'Warlock - Curse of Agony'),
(603, -1, 2, -1, -1, 'Warlock - Curse of Doom'),
(18220, 0.96, -1, -1, -1, 'Warlock - Dark Pact Rank 1'),
(6789, 0.214, -1, -1, -1, 'Warlock - Death Coil'),
(689, -1, 0.143, -1, -1, 'Warlock - Drain Life'),
(5138, 0, 0, 0, 0, 'Warlock - Drain Mana'),
(1120, -1, 0.429, -1, -1, 'Warlock - Drain Soul'),
(28176, 0, 0, 0, 0, 'Warlock - Fel Armor'),
(18790, 0, 0, 0, 0, 'Warlock - Fel Stamina'),
(48181, 0.4793, -1, -1, -1, 'Warlock - Haunt'),
(755, -1, 0.4485, -1, -1, 'Warlock - Health Funnel'),
(1949, -1, 0.0949, -1, -1, 'Warlock - Hellfire'),
(5857, 0.145, -1, -1, -1, 'Warlock - Hellfire Effect on Enemy Rank 1'),
(348, 0.2, 0.2, -1, -1, 'Warlock - Immolate'),
(29722, 0.7139, -1, -1, -1, 'Warlock - Incinerate'),
(42223, 0.286, -1, -1, -1, 'Warlock - Rain of Fire Triggered Rank 1'),
(5676, 0.4293, -1, -1, -1, 'Warlock - Searing Pain'),
(27243, 0.2129, 0.25, -1, -1, 'Warlock - Seed of Corruption'),
(686, 0.8569, -1, -1, -1, 'Warlock - Shadow Bolt'),
(6229, 0.3, -1, -1, -1, 'Warlock - Shadow Ward'),
(17877, 0.4293, -1, -1, -1, 'Warlock - Shadowburn'),
(47960, 0.1064, 0.0667, -1, -1, 'Warlock - Shadowflame Rank 1'),
(61291, 0.1064, 0.0667, -1, -1, 'Warlock - Shadowflame Rank 2'),
(30283, 0.1932, -1, -1, -1, 'Warlock - Shadowfury'),
(63106, 0, 0, 0, 0, 'Warlock - Siphon Life Triggered'),
(6353, 1.15, -1, -1, -1, 'Warlock - Soul Fire'),
(30294, 0, 0, 0, 0, 'Warlock - Soul Leech'),
(30108, -1, 0.2, -1, -1, 'Warlock - Unstable Affliction'),
(31117, 1.8, -1, -1, -1, 'Warlock - Unstable Affliction Dispell'),
(57755, -1, -1, 0.5, -1, 'Warrior - Heroic Throw'),
(20253, -1, -1, 0.12, -1, 'Warrior - Intercept'),
(61491, -1, -1, 0.12, -1, 'Warrior - Intercept'),
(6572, -1, -1, 0.207, -1, 'Warrior - Revenge'),
(64382, -1, -1, 0.5, -1, 'Warrior - Shattering Throw'),
(6343, -1, -1, 0.12, -1, 'Warrior - Thunder Clap');

-- --------
-- SPELL DBC
-- --------

TRUNCATE TABLE `spell_dbc`;
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `AttributesEx3`, `DurationIndex`, `RangeIndex`, `Effect1`, `EffectImplicitTargetA1`, `EffectApplyAuraName1`, `EffectMiscValue1`, `SpellFamilyName`, `SchoolMask`, `Comment`) VALUES
(62388, 0,  0, 0x00000000, 21,  1, 6, 1,   4,  0,  0, 0, 'Demonic Circle: Teleport(48020) - casterAuraSpell'),
(65142, 3, 22, 0x00000080, 21, 13, 6, 6, 255, 22, 15, 8, 'Crypt Fever - SPELL_AURA_LINKED');

-- --------
-- SPELL ELIXIR
-- --------

TRUNCATE TABLE `spell_elixir`;
INSERT INTO `spell_elixir` (`entry`, `mask`) VALUES
(673, 0x2),
(2367, 0x1),
(2374, 0x1),
(2378, 0x2),
(2380, 0x2),
(3160, 0x1),
(3164, 0x1),
(3166, 0x2),
(3219, 0x2),
(3220, 0x2),
(3222, 0x2),
(3223, 0x2),
(3593, 0x2),
(7844, 0x1),
(8212, 0x1),
(10667, 0x1),
(10668, 0x2),
(10669, 0x1),
(10692, 0x2),
(10693, 0x2),
(11319, 0x2),
(11328, 0x1),
(11334, 0x1),
(11348, 0x2),
(11349, 0x2),
(11364, 0x2),
(11371, 0x2),
(11390, 0x1),
(11396, 0x2),
(11405, 0x1),
(11406, 0x1),
(11474, 0x1),
(15231, 0x2),
(15233, 0x2),
(16321, 0x2),
(16322, 0x1),
(16323, 0x1),
(16325, 0x2),
(16326, 0x2),
(16327, 0x2),
(16329, 0x1),
(17038, 0x1),
(17535, 0x2),
(17537, 0x1),
(17538, 0x1),
(17539, 0x1),
(17624, 0x3),
(17626, 0x3),
(17627, 0x3),
(17628, 0x3),
(17629, 0x3),
(21920, 0x1),
(24361, 0x2),
(24363, 0x2),
(24382, 0x2),
(24383, 0x2),
(24417, 0x2),
(26276, 0x1),
(27652, 0x2),
(27653, 0x2),
(28486, 0x1),
(28488, 0x1),
(28490, 0x1),
(28491, 0x1),
(28493, 0x1),
(28497, 0x1),
(28501, 0x1),
(28502, 0x2),
(28503, 0x1),
(28509, 0x2),
(28514, 0x2),
(28518, 0x3),
(28519, 0x3),
(28520, 0x3),
(28521, 0x3),
(28540, 0x3),
(29348, 0x2),
(33720, 0x1),
(33721, 0x1),
(33726, 0x1),
(38954, 0x1),
(39625, 0x2),
(39626, 0x2),
(39627, 0x2),
(39628, 0x2),
(40567, 0x7),
(40568, 0x7),
(40572, 0x7),
(40573, 0x7),
(40575, 0x7),
(40576, 0x7),
(41608, 0xB),
(41609, 0xB),
(41610, 0xB),
(41611, 0xB),
(42735, 0x3),
(45373, 0x1),
(46837, 0xB),
(46839, 0xB),
(53746, 0x1),
(53747, 0x2),
(53748, 0x1),
(53749, 0x1),
(53751, 0x2),
(53752, 0x3),
(53755, 0x3),
(53758, 0x3),
(53760, 0x3),
(53763, 0x2),
(53764, 0x2),
(54212, 0x3),
(54452, 0x1),
(54494, 0x1),
(60340, 0x1),
(60341, 0x1),
(60343, 0x2),
(60344, 0x1),
(60345, 0x1),
(60346, 0x1),
(60347, 0x2),
(62380, 0x3),
(18191,0x10),
(18192,0x10),
(18193,0x10),
(18194,0x10),
(18222,0x10),
(22730,0x10),
(25661,0x10);

-- --------
-- Death Knight
-- --------
DELETE FROM `spell_script_target` WHERE entry IN
(51859, 48743, 52124, 52479, 52576, 53110);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(51859, 1, 28525), -- siphon of archerus
(51859, 1, 28542),
(51859, 1, 28543),
(51859, 1, 28544),
(52124, 1, 28655), -- Sky Darkener Assault
(52479, 1, 28819), -- gift of harvester
(52479, 1, 28822),
(52576, 1, 28834), -- Electro-magnetic Pulse
(52576, 1, 28886),
(53110, 1, 29102),
(53110, 1, 29103); -- Devour Humanoid

-- Eye of Acherus
DELETE FROM `spell_target_position` WHERE `id`=51852;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(51852, 609, 2361.21, -5660.45, 503.828, 4.49);

-- death charger
DELETE FROM spell_area WHERE spell = 52693;
INSERT INTO spell_area (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(52693, 4298, 12687, 1, 12687, 0, 0, 2, 1);
update spell_area set gender=2 where spell in (33836,50426,46023,52693);

DELETE FROM `npc_spellclick_spells` WHERE `spell_id` IN (
54568, 54575, 52263, 52280, 52447);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES
(29488, 54568, 12670, 1, 0, 3), -- Taxi to Death's Breath
(29501, 54575, 12670, 1, 0, 3),
(28605, 52263, 12680, 1, 12680, 1), -- Stolen Horse
(28606, 52263, 12680, 1, 12680, 1),
(28607, 52263, 12680, 1, 12680, 1),
(28782, 52280, 12687, 1, 12687, 1), -- Unbound Charger
(28833, 52447, 12701, 1, 12701, 1); -- Scarlet Cannon Master
-- (28887, 52447, 12701, 1, 12701, 1); -- dead cannon

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN(31883, 31893, 31894, 31895, 31896, 31897);
INSERT INTO `npc_spellclick_spells` (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, aura_required, aura_forbidden, user_type) VALUES
(31883, 60123, 0, 0, 0, 0x2, 0, 48085, 2),
(31893, 60123, 0, 0, 0, 0x2, 0, 48084, 2),
(31894, 60123, 0, 0, 0, 0x2, 0, 28276, 2),
(31895, 60123, 0, 0, 0, 0x2, 0, 27874, 2),
(31896, 60123, 0, 0, 0, 0x2, 0, 27873, 2),
(31897, 60123, 0, 0, 0, 0x2, 0, 7001, 2);

update item_template set spellppmRate_1 = 1 where entry = 39371; -- persuader

DELETE FROM `creature_questrelation` WHERE `quest` = 12754;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (28914, 12754);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12754;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (28914, 12754);
DELETE FROM `creature_questrelation` WHERE `quest` = 12755;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (28914, 12755);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12755;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29077, 12755);
DELETE FROM `creature_questrelation` WHERE `quest` = 12756;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29077, 12756);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12756;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (28914, 12756);
DELETE FROM `creature_questrelation` WHERE `quest` = 12757;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (28914, 12757);

UPDATE `quest_template` SET `PrevQuestId`=12751 WHERE `entry`=12754;

update spell_area set quest_end = 12756 where spell=53081;

update creature_template set spell1=53117 where entry=29104;
update creature_template set spell1=53348,killcredit1=29150 where entry IN (29102,29103);
UPDATE creature_template SET spell1=52435,spell2=52576,spell5=52588,VehicleId=79,speed=0 WHERE entry = 28833;
UPDATE `creature_template` SET vehicleid=87 WHERE (`entry`='28817'); -- mine car

DELETE FROM `spell_script_target` WHERE `entry` in (53658, 53679, 53701, 53705, 53706, 53677, 53685);
insert into spell_script_target values
-- (53658, 1, 29173),
(53679, 1, 29183),
(53701, 1, 29175),
(53705, 1, 29183),
(53706, 1, 29183),
(53677, 1, 29227),
(53685, 1, 29175);

-- --------
-- NAXXARAMAS
-- --------

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN
(28732,54097,-29865,-55053,-28169,28059,39088,-28059,-39088,28062,39090,28084,
39091,-28084,-39091,28085,39093);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
( 28732,-28798,  1, 'Widow''s Embrace - Frenzy'),
( 54097,-54100,  1, 'Widow''s Embrace - Frenzy (H)'),
(-29865, 55594,  0, 'Deathbloom'),
(-55053, 55601,  0, 'Deathbloom (H)'),
(-28169, 28206,  0, 'Mutating Injection - Mutagen Explosion'),
(-28169, 28240,  0, 'Mutating Injection - Poison Cloud'),
( 28059,-28084,  1, 'Positive Charge - Negative Charge'),
(-28059,-29659,  0, 'Positive Charge'),
-- ( 28062,-29659,  0, 'Positive Charge'),
( 28084,-28059,  1, 'Negative Charge - Positive Charge'),
(-28084,-29660,  0, 'Negative Charge'),
-- ( 28085,-29660,  0, 'Negative Charge'),
( 39088,-39091,  1, 'Positive Charge - Negative Charge'),
(-39088,-29659,  0, 'Positive Charge'),
-- ( 39090,-29659,  0, 'Positive Charge'),
( 39091,-39088,  1, 'Negative Charge - Positive Charge'),
(-39091,-39092,  0, 'Negative Charge');
-- ( 39093,-39092,  0, 'Negative Charge');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (29912);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES
(29912, 55479, 0, 0, 0, 3); -- Obedience Crystal - Force Obedience

DELETE FROM `spell_script_target` WHERE `entry` IN
(28732,54097,55479,
27892,27893,27928,27929,27935,27936);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(28732, 1, 15953), -- Widow's Embrace
(54097, 1, 15953), -- Widow's Embrace
(55479, 1, 16803), -- Force Obedience - Death Knight Understudy
-- (29105, 1, 16803), -- Hopeless - Death Knight Understudy
(27892, 1, 16060), -- To Anchor 1 - Gothik
(27893, 1, 16060), -- To Anchor 2 - Gothik
(27928, 1, 16060), -- To Anchor 1 - Gothik
(27929, 1, 16060), -- To Anchor 2 - Gothik
(27935, 1, 16060), -- To Anchor 1 - Gothik
(27936, 1, 16060); -- To Anchor 2 - Gothik



-- --------
-- ULDUAR
-- --------
INSERT INTO creature_template (entry, vehicleid) VALUES
(32930, 328), -- Kologarn
(32934, 380), -- Right Arm
(33113, 340), -- Flame Leviathan
(33114, 341), -- Flame Leviathan Seat
(33214, 348) -- Mechanolift 304-A
ON DUPLICATE KEY UPDATE
vehicleid = VALUES(vehicleid);

UPDATE creature_template SET spell1=62288 WHERE entry = 33090;
UPDATE creature_template SET speed=1 WHERE entry=33113;
UPDATE creature_template SET speed=1.25 WHERE entry IN (33060,33109);
UPDATE creature_template SET speed=2 WHERE entry=33062;
UPDATE creature_template SET faction_A=1965,faction_H=1965 WHERE entry IN (33090,33113,33139);

UPDATE creature_template SET flags_extra = 0 WHERE entry IN (33114);
UPDATE creature_template SET InhabitType = 4 WHERE entry = 33214; -- Mechanolift 304-A

INSERT INTO creature_template (entry, spell1, spell2, spell3, spell4, spell5, spell6, vehicleid) VALUES
(33062, 62974, 62286, 62299, 64660, 0, 0, 335), -- Salvaged Chopper
(33109, 62306, 62490, 62308, 62324, 0, 0, 338), -- Salvaged Demolisher
(33167, 62634, 64979, 62479, 62471, 0, 62428, 345), -- Salvaged Demolisher Mechanic Seat
(33060, 62345, 62522, 62346, 0, 0, 0, 336), -- Salvaged Siege Engine
(33067, 62358, 62359, 64677, 0, 0, 0, 337) -- Salvaged Siege Turret
ON DUPLICATE KEY UPDATE
spell1 = VALUES(spell1),
spell2 = VALUES(spell2),
spell3 = VALUES(spell3),
spell4 = VALUES(spell4),
spell5 = VALUES(spell5),
spell6 = VALUES(spell6),
vehicleid = VALUES(vehicleid);

DELETE FROM `spell_script_target` WHERE `entry` IN (62427,62496,62374,62399,62056,63985);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(62427, 1, 33109), -- Load into Catapult
(62374, 1, 33060), -- Pursued
(62374, 1, 33109),
(62399, 1, 33139), -- Overload Circuit
(62496, 1, 33167), -- Liquid Pyrite - Salvaged Demolisher Mechanic Seat
(63985, 1, 32934), -- Stone Grip
(62056, 1, 32934);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-62475,62427);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-62475,-62399, 0, 'System Shutdown - Overload Circuit'),
(-62475,-62375, 0, 'System Shutdown - Gathering Speed'),
(-62475, 62472, 0, 'System Shutdown'), #inform, not correct spell
( 62427, 62340, 2, 'Load into Catapult - Passenger Loaded');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (33143);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES
(33143, 62399, 0, 0, 0, 0); -- Overide device

update creature_template set spell1=62395, AIName = 'TurretAI', scriptname='' where entry = 33139;
update creature_template set spell1=62402 where entry = 33142;
update creature_template set ScriptName = 'boss_kologarn' where entry = 32930;
update creature_template set scriptname = "boss_flame_leviathan_safety_container" where entry = 33218;


-- --------
-- WINTERGRASP
-- --------
DELETE FROM `game_event` WHERE `entry` IN (50,51);
INSERT INTO `game_event` (`entry`, `description`, `world_event`) VALUES
(50, 'Wintergrasp Alliance Defence', 5),
(51, 'Wintergrasp Horde Defence', 5);

-- Build Vehicles
DELETE FROM `spell_script_target` WHERE entry IN
(56575,56661,56663,56665,56667,56669,61408);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(56575, 1, 27852),
(56661, 1, 27852),
(56663, 1, 27852),
(56665, 1, 27852),
(56667, 1, 27852),
(56669, 1, 27852),
(61408, 1, 27852);

-- Defender's Portal
DELETE FROM `spell_script_target` WHERE entry IN
(54643);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(54643,1,23472);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (54643);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
( 54643,-54643, 2, 'Wintergrasp Defender Teleport');

update game_graveyard_zone set ghost_zone = 4603 where id = 1474;

-- No Fly Zone
INSERT INTO `spell_linked_spell` (spell_trigger, spell_effect, type, comment) VALUES
    (-58600, 61243, 0, 'No fly zone - Parachute'),
    (-58730, 61243, 0, 'No fly zone - Parachute');

-- temp

UPDATE `creature_template` SET `ScriptName`='boss_netherspite', `RegenHealth` = '1' WHERE `entry`='15689';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `modelid1`='11686', `modelid3`='11686', `unit_flags` = '33554496', `ScriptName` = '' WHERE `entry` IN ('17367','17368','17369');
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70',`flags_extra`= '2', `speed`= '0.0001', `faction_A` = '16', `faction_H` = '16', `ScriptName` = 'mob_eventai'  WHERE `entry` = '16697';
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = '16697';
INSERT INTO `creature_ai_scripts`
(`id`,`creature_id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`comment`) VALUES
('1669701', '16697',         '0',         '100',          '3',        '3000',        '3000',        '3000',        '3000',          '11',         '46264',             '0',             '2','Void Zone - Cast Void Zone Effect'),
('1669702', '16697',         '1',         '100',          '3',        '3000',        '3000',        '3000',        '3000',          '11',         '46264',             '0',             '2','Void Zone - Cast Void Zone Effect');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN ('-30421','-30422','-30423','38637','38638','38639');
INSERT INTO `spell_linked_spell`(`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
('-30421','38637','0','Netherspite''s Perseverence'),
('-30422','38638','0','Netherspite''s Serenity'),
('-30423','38639','0','Netherspite''s Dominance');
UPDATE `script_texts` SET `type` = '3' WHERE `entry` IN ('-1532089','-1532090');


-- Chicken Net
DELETE FROM `spell_script_target` WHERE `entry` = '51959' and `type` = '1';
INSERT INTO `spell_script_target` ( `entry`, `type`, `targetEntry`) VALUES ('51959', '1', '28161');

-- the lurker below
update creature_template set inhabittype=3 where entry=21217;


-- update creature_template set ScriptName = 'npc_iruk' where entry = 26219;
-- UPDATE creature_template SET ScriptName = 'npc_corastrasza' WHERE entry = 32548;

DELETE FROM `spell_script_target` WHERE entry = 61245;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(61245, 1, 32535);

UPDATE creature_template SET VehicleId = 165 , spell1 = 56091,spell2 = 56092,spell3 = 57090,spell4 = 57143 ,spell5 = 57108,spell6=57403, unit_class = 1, minhealth = 100000, maxhealth = 100000 WHERE entry = 32535;
UPDATE creature_template SET armor = 9729, mindmg = 422, maxdmg=586, minrangedmg=345, maxrangedmg=509, attackpower=642, rangedattackpower=103 WHERE entry = 32535;
update creature set DeathState = 0 where id = 26219;

TRUNCATE TABLE `quad_string`;
INSERT INTO `quad_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(1, 'You should select a character or a creature.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'You should select a creature.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '|cffff0000[System Message]: %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '|cffff0000[Event Message]: %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'There is no help for that command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'There is no such command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'There is no such subcommand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Command %s have subcommands:%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Commands available to you:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Incorrect syntax.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Your account level is: %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Active connections: %u (max: %u) Queued connections: %u (max: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Server uptime: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Player saved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'All players saved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'There are the following active GMs on this server:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'There are no GMs currently logged in on this server.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Cannot do that while flying.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Cannot do that in Battlegrounds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Target is flying you can''t do that.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '%s is flying command failed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'You are not mounted so you can''t dismount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Cannot do that while fighting.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'You used it recently.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Password not changed (unknown error)!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'The password was changed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'The new passwords do not match or the old password is wrong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Your account is now locked.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Your account is now unlocked.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, ', rank ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, ' [known]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, ' [learn]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, ' [passive]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, ' [talent]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, ' [active]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, ' [complete]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, ' (offline)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'You are: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'visible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'invisible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'You', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, ' <unknown> ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '<error>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '<non-existing character>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'UNKNOWN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'You must be at least level %u to enter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'You must be at least level %u and have item %s to enter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Hello! Ready for some training?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Invaid item count (%u) for item %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Mail can''t have more %u item stacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'The new passwords do not match', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Your password can''t be longer than 16 characters (client limit), password not changed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Current Message of the day: \r\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Using World DB: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Using script library: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Using creature EventAI: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Online players: %u (max: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Up to %u expansion allowed now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Global notify: ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Map: %u (%s) Zone: %u (%s) Area: %u (%s) Phase: %u\nX: %f Y: %f Z: %f Orientation: %f\ngrid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '%s is already being teleported.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'You can summon a player to your instance only if he is in your party with you as leader.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'You cannot go to the player''s instance because you are in a party now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'You can go to the player''s instance while not being in his party only if your GM mode is on.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'You can not go to player %s from instance to instance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'You can not summon player %s from instance to instance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'You are summoning %s%s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'You are being summoned by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'You are teleporting %s%s to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'You are being teleported by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Player (%s) does not exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Appearing at %s''s location.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '%s is appearing to your location.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Incorrect values.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'No character selected.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '%s is not in a group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'You changed HP of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '%s changed your HP to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'You changed MANA of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '%s changed your MANA to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'You changed ENERGY of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '%s changed your ENERGY to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Current energy: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'You changed rage of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '%s changed your rage to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'You changed level of %s to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'GUID %i, faction is %i, flags is %i, npcflag is %i, DY flag is %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Wrong faction: %u (not found in factiontemplate.dbc).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'You changed GUID=%i ''s Faction to %i, flags to %i, npcflag to %i, dyflag to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'You changed the spellflatid=%i, val= %i, mark =%i to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '%s changed your spellflatid=%i, val= %i, mark =%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '%s has access to all taxi nodes now (until logout).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '%s has no more access to all taxi nodes now (only visited accessible).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '%s has given you access to all taxi nodes (until logout).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '%s has removed access to all taxi nodes (only visited still accessible).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'You set all speeds to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '%s set all your speeds to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'You set the speed to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '%s set your speed to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'You set the swim speed to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '%s set your swim speed to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'You set the backwards run speed to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '%s set your backwards run speed to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'You set the fly speed to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '%s set your fly speed to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'You set the size %2.2f of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '%s set your size to %2.2f.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'There is no such mount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'You give a mount to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '%s gave you a mount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'USER1: %i, ADD: %i, DIF: %i\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'You take all copper of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '%s took you all of your copper.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'You take %i copper from %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '%s took %i copper from you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'You give %i copper to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '%s gave you %i copper.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'You hear sound %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'USER2: %i, ADD: %i, RESULT: %i\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Removed bit %i in field %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Set bit %i in field %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'Teleport location table is empty!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Teleport location not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Requires search parameter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'There are no teleport locations matching your request.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Locations found are:\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'Mail sent to %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'You try to hear sound %u but it doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'You can''t teleport self to self!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'server console command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'You changed runic power of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '%s changed your runic power to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'Liquid level: %f, ground: %f, type: %d, status: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'No selection.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'Object GUID is: lowpart %u highpart %X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'The name was too long by %i characters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'Error, name can only contain characters A-Z and a-z.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'The subname was too long by %i characters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Not yet implemented', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'Item ''%i'' ''%s'' added to list with maxcount ''%i'' and incrtime ''%i'' and extendedcost ''%i''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'Item ''%i'' not found in database.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'Item ''%i'' ''%s'' deleted from vendor list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'Item ''%i'' not found in vendor list.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'Item ''%i'' already in vendor list.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'Spells of %s reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'Spells of %s will reset at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'Talents of %s reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'Talents of %s will reset at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'Your spells have been reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'Your talents have been reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'Unknown case ''%s'' for .resetall command. Type full correct case name.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'Spells will reset for all players at login. Strongly recommend re-login!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'Talents will reset for all players at login. Strongly recommend re-login!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'Creature (GUID: %u) No waypoint found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'Creature (GUID: %u) Last waypoint not found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'Creature (GUID: %u) No waypoint found - used ''wpguid''. Now trying to find it by its position...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'Creature (GUID: %u) No waypoints found - This is a MaNGOS db problem (single float).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'Selected creature is ignored - provided GUID is used', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'Creature (GUID: %u) not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'You must select a visual waypoint.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'No visual waypoints found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'Could not create visual waypoint with creatureID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'All visual waypoints removed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'Could not create waypoint-creature with ID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'No GUID provided.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'No waypoint number provided.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'Argument required for ''%s''.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'Waypoint %i added to GUID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'Waypoint %d added.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'Waypoint changed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'Waypoint %s modified.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'WP export successfull.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'No waypoints found inside the database.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'File imported.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'Waypoint removed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'Warning: Could not delete WP from the world with ID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'This happens if the waypoint is too far away from your char.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'The WP is deleted from the database, but not from the world here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'They will disappear after a server restart.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'Waypoint %d: Info for creature: %s, GUID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'Waittime: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'Model %d: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'Emote: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'Spell: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'Text%d (ID: %i): %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'AIScript: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'Forced rename for player %s will be requested at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'Forced rename for player %s (GUID #%u) will be requested at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'Waypoint-Creature (GUID: %u) Not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'Could not find NPC...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'Creature movement type set to ''%s'', waypoints removed (if any).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'Creature movement type set to ''%s'', waypoints were not removed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'Incorrect value, use on or off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'Value saved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'Value saved, you may need to rejoin or clean your client cache.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'Areatrigger ID %u not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'Target map or coordinates is invalid (X: %f Y: %f MapId: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'Zone coordinates is invalid (X: %f Y: %f AreaId: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'Zone %u (%s) is part of instanceable map %u (%s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'Nothing found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'Object not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'Creature not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'Warning: Mob found more than once - you will be teleported to the first one found in DB.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'Creature Removed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'Creature moved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'Creature (GUID:%u) must be on the same map as player!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'Game Object (GUID: %u) not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'Game Object (GUID: %u) has references in not found creature %u GO list, can''t be deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'Game Object (GUID: %u) removed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) turned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) moved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'You must select a vendor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'You must send id for item', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'Vendor has too many items (max 128)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'You can''t kick self, logout instead', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'Player %s kicked.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'Accepting Whisper: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'Accepting Whisper: ON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'Accepting Whisper: OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'Creature (GUID: %u) not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'Tickets count: %i show new tickets: %s\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'New ticket from %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'Ticket of %s (Last updated: %s):\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'New ticket show: ON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'New ticket show: OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'Ticket %i doesn''t exist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'All tickets deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'Character %s ticket deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'Ticket deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'Spawn distance changed to: %f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'Spawn time changed to: %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'The honor of %s was set to %u!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'Your chat has been disabled for %u minutes. Reason: %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'You have disabled %s''s chat for %u minutes. Reason: %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'Player''s chat is already enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'Your chat has been enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'You have enabled %s''s chat.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'Faction %s (%u) reputation of %s was set to %5d!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'The arena points of %s was set to %u!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'No faction found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'Faction %i unknown!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'Invalid parameter %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'delta must be between 0 and %d (inclusive)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '%d - |cffffffff|Hfaction:%d|h[%s]|h|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, ' [visible]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, ' [at war]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, ' [peace forced]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, ' [hidden]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, ' [invisible forced]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, ' [inactive]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'Hated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'Hostile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'Unfriendly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'Neutral', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'Friendly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'Honored', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'Revered', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'Exalted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'Faction %s (%u) can''nt have reputation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, ' [no reputation]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'Characters at account %s (Id: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '  %s (GUID %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'No players found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'Extended item cost %u not exist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'GM mode is ON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'GM mode is OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'GM Chat Badge is ON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'GM Chat Badge is OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'You repair all %s''s items.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'All your items repaired by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'You set waterwalk mode %s for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'Your waterwalk mode %s by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '%s is now following you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '%s is not following you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '%s is now not following you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'Creature (Entry: %u) cannot be tamed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'You already have pet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'Forced customize for player %s will be requested at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'Forced customize for player %s (GUID #%u) will be requested at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'TaxiNode ID %u not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348,'Game Object (Entry: %u) have invalid data and can''t be spawned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(400, '|cffff0000[System Message]:|rScripts reloaded', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'You change security level of account %s to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, '%s changed your security level to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'You have low security level for this.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'Creature movement disabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'Creature movement enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'Weather can''t be changed for this zone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'Weather system disabled at server.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, '%s is banned for %s. Reason: %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, '%s is banned permanently for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, '%s %s not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, '%s unbanned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'There was an error removing the ban on %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'Account not exist: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'There is no such character.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'There is no such IP in banlist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'Account %s has never been banned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'Ban history for account %s:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'Ban Date: %s Bantime: %s Still active: %s  Reason: %s Set by: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'Inf.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'Never', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'IP: %s\nBan Date: %s\nUnban Date: %s\nRemaining: %s\nReason: %s\nSet by: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'There is no matching IPban.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'There is no matching account.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'There is no banned account owning a character matching this part.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'The following IPs match your pattern:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'The following accounts match your query:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'You learned many spells/skills.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'You learned all spells for class.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'You learned all talents for class.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'You learned all languages.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'You learned all craft skills and recipes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'Could not find ''%s''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'Invalid item id: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'No items found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'Invalid gameobject id: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'Found items %u: %u ( inventory %u mail %u auction %u guild %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'Found gameobjects %u: %u ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'Invalid creature id: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'Found creatures %u: %u ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'No area found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'No item sets found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'No skills found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'No spells found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'No quests found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'No creatures found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'No gameobjects found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'Graveyard #%u doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'Graveyard #%u already linked to zone #%u (current).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'Graveyard #%u linked to zone #%u (current).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'Graveyard #%u can''t be linked to subzone or not existed zone #%u (internal error).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'No faction in Graveyard with id= #%u , fix your DB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'invalid team, please fix database', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'any', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'alliance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'horde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'Graveyard #%u (faction: %s) is nearest from linked to zone #%u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'Zone #%u doesn''t have linked graveyards.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'Zone #%u doesn''t have linked graveyards for faction: %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'Teleport location already exists!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'Teleport location added.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'Teleport location NOT added: database error.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'Teleport location deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'No taxinodes found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'Target unit has %d auras:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'id: %d effmask: %d charges: %d stack: %d slot %d duration: %d maxduration: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'Target unit has %d auras of type %d:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'id: %d eff: %d amount: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'Quest %u not found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'Quest %u started from item. For correct work, please, add item to inventory and start quest in normal way: .additem %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'Quest removed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, ' [rewarded]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, ' [complete]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, ' [active]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, '%s''s Fly Mode %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'Opcode %u sent to %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'Character loaded successfully!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'Failed to load the character!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'Character dumped successfully!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'Character dump failed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'Spell %u broken and not allowed to cast or learn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'Skill %u (%s) for player %s set to %u and current maximum set to %u (without permanent (talent) bonuses).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'Player %s must have skill %u (%s) before using this command.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'Invalid skill id (%u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'You learned default GM spells/skills.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'You already know that spell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'Target(%s) already know that spell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, '%s doesn''t know that spell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'You already forgot that spell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'All spell cooldowns removed for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'Spell %u cooldown removed for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'Command : Additem, itemId = %i, amount = %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'Command : Additemset, itemsetId = %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'Removed itemID = %i, amount = %i from %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'Cannot create item ''%i'' (amount: %i)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'You need to provide a guild name!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'Player not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, 'Player already has a guild!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 'Guild not created! (already exists?)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'No items from itemset ''%u'' found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'The distance is: (3D) %f (2D) %f yards.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'Item ''%i'' ''%s'' Item Slot %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'Item ''%i'' doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'Item ''%i'' ''%s'' Added to Slot %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'Item save failed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, '%d - owner: %s (guid: %u account: %u ) %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, '%d - sender: %s (guid: %u account: %u ) receiver: %s (guid: %u account: %u ) %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, '%d - owner: %s (guid: %u account: %u ) %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'Wrong link type!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, '%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0:0|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(513, '%d - |cffffffff|Hquest:%d:%d|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(514, '%d - |cffffffff|Hcreature_entry:%d|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, '%d - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, '%d - |cffffffff|Hgameobject_entry:%d|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, '%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, '%d - |cffffffff|Hitemset:%d|h[%s %s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, '|cffffffff|Htele:%s|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, '%d - |cffffffff|Hspell:%d|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, '%d - |cffffffff|Hskill:%d|h[%s %s]|h|r %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'Game Object (Entry: %u) not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, '>> Game Object %s (GUID: %u) at %f %f %f. Orientation %f.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'Selected object:\n|cffffffff|Hgameobject:%d|h[%s]|h|r GUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, '>> Add Game Object ''%i'' (%s) (GUID: %i) added at ''%f %f %f''.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, '%s (lowguid: %u) movement generators stack:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, '   Idle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, '   Random', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, '   Waypoint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, '   Animal random', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, '   Confused', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, '   Targeted to player %s (lowguid %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, '   Targeted to creature %s (lowguid %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, '   Targeted to <NULL>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, '   Home movement to (X:%f Y:%f Z:%f)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, '   Home movement used for player?!?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, '   Taxi flight', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, '   Unknown movement generator (%u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'Player selected NPC\nGUID: %u.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'Level: %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'Health (base): %u. (max): %u. (current): %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'Field Flags: %u.\nDynamic Flags: %u.\nFaction Template: %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'Loot: %u Pickpocket: %u Skinning: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'Position: %f %f %f.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, '*** Is a vendor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, '*** Is a trainer!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'InstanceID: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'Player%s %s (guid: %u) Account: %s (id: %u) Email: %s GMLevel: %u Last IP: %s Last login: %s Latency: %ums', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'Race: %s Class: %s Played time: %s Level: %u Money: %ug%us%uc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'Command .pinfo doesn''t support ''rep'' option for offline players.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, '%s has explored all zones now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, '%s has no more explored zones.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, '%s has explored all zones for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, '%s has hidden all zones from you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 'Hover enabled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'Hover disabled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, '%s level up you to (%i)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, '%s level down you to (%i)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, '%s reset your level progress.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'The area has been set as explored.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'The area has been set as not explored.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 'GUID=%i ''s updateIndex: %i, value:  %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'You change GUID=%i ''s UpdateIndex: %i value to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'The value index %u is too big to %u(count: %u).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'Set %u uint32 Value:[OPCODE]:%u [VALUE]:%u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'You Set %u Field:%u to uint32 Value: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'Set %u float Value:[OPCODE]:%u [VALUE]:%f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'You Set %u Field:%i to float Value: %f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'Get %u uint32 Value:[OPCODE]:%u [VALUE]:%u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'The uint32 value of %u in %u is: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'Get %u float Value:[OPCODE]:%u [VALUE]:%f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 'The float of %u value in %u is: %f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, '.Set32Bit:[OPCODE]:%u [VALUE]:%u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 'You set Bit of Field:%u to Value: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, '.Mod32Value:[OPCODE]:%u [VALUE]:%i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'You modified the value of Field:%u to Value: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'You are now invisible.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'You are now visible.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'Selected player or creature not have victim.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'Player %s learned all default spells for race/class and completed quests rewarded spells.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'Found near gameobjects (distance %f): %u ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'SpawnTime: Full:%s Remain:%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, '%d - |cffffffff|Hgameevent:%d|h[%s]|h|r%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'No event found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'Event not exist!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'Event %u: %s%s\nStart: %s End: %s Occurence: %s Length: %s\nNext state change: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'Event %u already active!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'Event %u not active!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, '   Point movement to (X:%f Y:%f Z:%f)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, '   Fear movement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, '   Distract movement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'You have learned all spells in craft: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'Currently Banned Accounts:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, '|    Account    |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'Currently Banned IPs:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, '|      IP       |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'Current gamemasters:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, '|    Account    |  GM  |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'No gamemasters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 'The Alliance wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'The Horde wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'The battle for Warsong Gulch begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'The battle for Warsong Gulch begins in 30 seconds. Prepare yourselves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'Let the battle for Warsong Gulch begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, '$n captured the Horde flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, '$n captured the Alliance flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'The Horde flag was dropped by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'The Alliance Flag was dropped by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'The Alliance Flag was returned to its base by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'The Horde flag was returned to its base by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'The Horde flag was picked up by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'The Alliance Flag was picked up by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'The flags are now placed at their bases.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'The Alliance flag is now placed at its base.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 'The Horde flag is now placed at its base.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 'The Battle for Eye of the Storm begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 'The Battle for Eye of the Storm begins in 30 seconds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 'The Battle for Eye of the Storm has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 'Alliance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 'Horde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 'stables', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 'blacksmith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 'farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 'lumber mill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 'mine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 'The %s has taken the %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, '$n has defended the %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, '$n has assaulted the %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, '$n claims the %s! If left unchallenged, the %s will control it in 1 minute!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 'The Battle for Arathi Basin begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 'The Battle for Arathi Basin begins in 30 seconds. Prepare yourselves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 'The Battle for Arathi Basin has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 'The Alliance has gathered $1776W resources, and is near victory!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 'The Horde has gathered $1777W resources, and is near victory!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 'After your recent battle in %s our best attempts to award you a Mark of Honor failed. Enclosed you will find the Mark of Honor we were not able to deliver to you at the time. Thanks for fighting in %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 'The Alliance has taken control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 'The Horde has taken control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 'The Alliance has taken control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 'The Horde has taken control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 'The Alliance has taken control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 'The Horde has taken control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 'The Alliance has taken control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 'The Horde has taken control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 'The Alliance has lost control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 'The Horde has lost control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 'The Alliance has lost control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 'The Horde has lost control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, 'The Alliance has lost control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 'The Horde has lost control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 'The Alliance has lost control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 'The Horde has lost control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, '%s has taken the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 'The Alliance have captured the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 'The Horde have captured the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 'The flag has been dropped.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, 'The flag has been reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'You must be level %u to form an arena team', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'One minute until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'Thirty seconds until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'Fifteen seconds until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'The Arena battle has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'You must wait %s before speaking again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'This item(s) have problems with equipping/storing in inventory.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, '%s wishes to not be disturbed and cannot receive whisper messages: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, '%s is Away from Keyboard: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'Do not Disturb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'Away from Keyboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, 'Queue status for %s (Lvl: %u to %u)\nQueued alliances: %u (Need at least %u more)\nQueued hordes: %u (Need at least %u more)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, '|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] A: %u/%u, H: %u/%u|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'You must be level %u to join an arena team!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'You don''t meet Battleground level requirements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, '|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] Started!|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, '|cffff0000[Arena Queue Announcer]:|r %s -- Joined : %ux%u : %u|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, '|cffff0000[Arena Queue Announcer]:|r %s -- Exited : %ux%u : %u|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'Your group is too large for this battleground. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'Your group is too large for this arena. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'Your group has members not in your arena team. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'Your group does not have enough players to join this match.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'The Gold Team wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'The Green Team wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'There aren''t enough players in this battleground. It will end soon unless some more players join to balance the fight.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'Your group has an offline member. Please remove him before joining.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'Your group has players from the opposing faction. You can''t join the battleground as a group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'Your group has players from different battleground brakets. You can''t join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 'Someone in your party is Deserter. You can''t join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'Someone in your party is already in three battleground queues. You cannot join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'You cannot teleport to a battleground or arena map.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'You cannot summon players to a battleground or arena map.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'You must be in GM mode to teleport to a player in a battleground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'Arenas are set to 1v1 for debugging. So, don''t join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'Arenas are set to normal playercount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'Battlegrounds are set to 1v0 for debugging.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 'Battlegrounds are set to normal playercount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 'Flushing Arena points based on team ratings, this may take a few minutes. Please stand by...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'Distributing arena points to players...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'Finished setting arena points for online players.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'Modifying played count, arena points etc. for loaded arena teams, sending updated stats to online players...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'Modification done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, 'Done flushing Arena points.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, 'Not enough players. This game will close in %u mins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, 'Not enough players. This game will close in %u seconds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, 'The battle for Warsong Gulch begins in 2 minutes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, 'The battle for Arathi Basin begins in 2 minutes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, 'The battle for Eye of the Storm begins in 2 minutes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, 'Battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, '%s has successfully defended the fortress!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, '%s has taken over the fortress!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, 'The %s siege workshop has been damaged by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, 'The %s siege workshop has been destroyed by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, 'The %s tower has been damaged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, 'The %s tower has been destroyed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, 'Wintergrasp fortress is under attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, 'Wintergrasp is now under the control of the %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, 'Wintergrasp timer set to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, 'Wintergrasp battle started.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, 'Wintergrasp battle finished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, 'Wintergrasp info: %s controled. Timer: %s. Wartime: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, 'Wintergrasp outdoorPvP is disabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, 'Wintergrasp outdoorPvP is enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, 'You have reached Rank 1: Corporal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, 'You have reached Rank 2: First Lieutenant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'Arena testing turned %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, '|cffff0000[Automatic]:|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, '|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, 'Invalid name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'You do not have enough gold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, 'You do not have enough free slots', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, 'Your partner does not have enough free bag slots', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, 'You do not have permission to perform that function', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, 'Unknown language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, 'You don''t know that language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, 'Please provide character name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, 'Player %s not found or offline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, 'Account for character %s not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(810, '|Hplayer:$N|h[$N]|h has earned the achievement $a!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(811, 'Guild Master', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(812, 'Officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(813, 'Veteran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(814, 'Member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(815, 'Initiate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(816, 'Warning: You''ve entered a no-fly zone and are about to be dismounted!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000, 'Exiting daemon...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1001, 'Account deleted: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1002, 'Account %s NOT deleted (probably sql file format was updated)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1003, 'Account %s NOT deleted (unknown error)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1004, 'Account created: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1005, 'Account name can''t be longer than 16 characters (client limit), account not created!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1006, 'Account with this name already exist!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1007, 'Account %s NOT created (probably sql file format was updated)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1008, 'Account %s NOT created (unknown error)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1009, 'Player %s (Guid: %u) Account %s (Id: %u) deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1010, '|    Account    |       Character      |       IP        | GM | Expansion |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1011, '|<Error>        | %20s |<Error>          |<Er>| <Error>   |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1012, '===========================================================================', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1013, '|%15s| %20s | %15s |%4d| %9d |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1014, 'No online players.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1100, 'Account %s (Id: %u) have up to %u expansion allowed now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1101, 'Message of the day changed to:\r\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1102, 'Message sent to %s: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1103, '%d - %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1104, '%d - %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1105, '%d - %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1106, '%d - %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1107, '%d - %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1108, '%d - %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1109, '%d - %s %s %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1110, '%d - %s X:%f Y:%f Z:%f MapId:%d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1111, '%d - %s X:%f Y:%f Z:%f MapId:%d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1112, 'Failed to open file: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1113, 'Account %s (%u) have max amount allowed characters (client limit)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1114, 'Dump file have broken data!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1115, 'Invalid character name!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1116, 'Invalid character guid!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1117, 'Character guid %u in use!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1118, '%d - guild: %s (guid: %u) %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1119, 'You must use male or female as gender.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1120, 'You change gender of %s to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1121, 'Your gender changed to %s by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1122, '(%u/%u +perm %u +temp %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1123, 'Not pet found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1124, 'Wrong pet type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1125, 'Your pet learned all talents', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1126, 'Your pet talents have been reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1127, 'Talents of %s''s pet reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1128, '%d - |cffffffff|Htaxinode:%u|h[%s %s]|h|r (Map:%u X:%f Y:%f Z:%f)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1129, '%d - %s %s (Map:%u X:%f Y:%f Z:%f)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1200, 'You try to view cinemitic %u but it doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1201, 'You try to view movie %u but it doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1300, 'Alliance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1301, 'Horde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1302, '%s was destroyed by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1303, 'The %s is under attack! If left unchecked, the %s will destroy it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1304, 'The %s was taken by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1305, 'The %s was taken by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1306, 'The %s was taken by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1307, 'The %s is under attack! If left unchecked, the %s will capture it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1308, 'The %s has taken the %s! Its supplies will now be used for reinforcements!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1309, 'Irondeep Mine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1310, 'Coldtooth Mine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1311, 'Stormpike Aid Station', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1312, 'Dun Baldar South Bunker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1313, 'Dun Baldar North Bunker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1314, 'Stormpike Graveyard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1315, 'Icewing Bunker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1316, 'Stonehearth Graveyard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1317, 'Stonehearth Bunker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1318, 'Snowfall Graveyard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1319, 'Iceblood Tower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1320, 'Iceblood Graveyard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1321, 'Tower Point', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1322, 'Frostwolf Graveyard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1323, 'East Frostwolf Tower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1324, 'West Frostwolf Tower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1325, 'Frostwolf Relief Hut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1326, 'The Battle for Alterac Valley begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1327, 'The Battle for Alterac Valley begins in 30 seconds. Prepare yourselves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1328, 'The Battle for Alterac Valley has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1329, 'The Alliance Team is running out of reinforcements!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1330, 'The Horde Team is running out of reinforcements!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1331, 'The Frostwolf General is Dead!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1332, 'The Stormpike General is Dead!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1333, 'The Battle for Alterac Valley begins in 2 minutes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000, '|cff00ff00New ticket from|r|cffff00ff %s.|r |cff00ff00Ticket entry:|r|cffff00ff %d.|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2001, '|cff00ff00Character|r|cffff00ff %s |r|cff00ff00edited his/her ticket:|r|cffff00ff %d.|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2002, '|cff00ff00Character|r|cffff00ff %s |r|cff00ff00abandoned ticket entry:|r|cffff00ff %d.|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2003, '|cff00ff00Closed by|r:|cff00ccff %s|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2004, '|cff00ff00Deleted by|r:|cff00ccff %s|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2005, 'Ticket not found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2006, 'Please close ticket before deleting it permanently.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2007, 'Ticket %d is already assigned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2008, '%u Tickets succesfully reloaded from the database.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2009, 'Showing list of open tickets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2010, 'Showing list of open tickets whose creator is online.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2011, 'Showing list of closed tickets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2012, 'Invalid name specified. Name should be that of an online Gamemaster.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2013, 'This ticket is already assigned to yourself. To unassign use .ticket unassign %d and then reassign.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2014, 'Ticket %d is not assigned, you cannot unassign it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2015, 'You cannot unassign tickets from staffmembers with a higher security level than yourself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2016, 'Cannot close ticket %d, it is assigned to another GM.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2017, '|cff00ff00Ticket|r:|cff00ccff %d.|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2018, '|cff00ff00Created by|r:|cff00ccff %s|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2019, '|cff00ff00Last change|r:|cff00ccff %s ago|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2020, '|cff00ff00Assigned to|r:|cff00ccff %s|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2021, '|cff00ff00Unassigned by|r:|cff00ccff %s|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2022, '\n|cff00ff00Message|r: "%s"|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2023, '\n|cff00ff00Comment|r: "%s"|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2024, '\n|cff00ccff%s|r |cff00ff00Added comment|r: "%s"|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2025, '|cff00ff00Created|r:|cff00ccff %s ago|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5000, 'You froze player %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5001, 'It might be amusing but no... you cant freeze yourself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5002, 'Invalid input check the name of target.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5003, 'You unfroze player %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5004, 'There are no frozen players.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5005, 'Following players are frozen on the server:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5006, '- %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5007, 'You must be in a raid group to enter this instance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5009, 'Sound %u Played to server', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5010, 'linkGUID: %u, Entry: %u (%s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5011, 'You can''t teleport self to self!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5012, 'No maps found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5013, '[Continent]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5014, '[Instance]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5015, '[Battleground]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5016, '[Arena]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5017, '[Raid reset time: %s]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5018, '[Heroic reset time: %s]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5019, '[Mountable]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6613, '|cfff00000[GM Announcement]: %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6614, 'Notification to GM''s - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6615, '|cffffff00[|c1f40af20GM Announce by|r |cffff0000%s|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6616, 'Silence is ON for %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7523, 'WORLD: Denying connections.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7524, 'WORLD: Accepting connections.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10001, 'The Horde has taken The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10002, 'The Alliance has taken The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10003, 'The Horde has taken The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10004, 'The Alliance has taken The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10005, 'The Horde has taken Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10006, 'The Alliance has taken Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10007, 'The Horde lost The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10008, 'The Alliance lost The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10009, 'The Horde lost The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10010, 'The Alliance lost The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10011, 'The Horde lost Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10012, 'The Alliance lost Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10013, 'The Horde has taken the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10014, 'The Alliance has taken the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10015, 'The Horde has taken the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10016, 'The Alliance has taken the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10017, 'The Horde has captured the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10018, 'The Alliance has captured the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10019, 'The Horde lost the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10020, 'The Alliance lost the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10021, 'The Horde lost the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10022, 'The Alliance lost the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10023, 'The Horde lost the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10024, 'The Alliance lost the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10025, 'The Horde has captured Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10026, 'The Alliance has captured Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10027, 'The Horde lost Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10028, 'The Alliance lost Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10029, 'The Horde has taken a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10030, 'The Alliance has taken a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10031, 'The Horde lost a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10032, 'The Alliance lost a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10033, 'The Horde has taken the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10034, 'The Alliance has taken the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10035, 'The Horde has taken the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10036, 'The Alliance has taken the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10037, 'The Horde has taken the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10038, 'The Alliance has taken the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10039, 'The Horde has taken the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10040, 'The Alliance has taken the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10041, 'The Horde lost the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10042, 'The Alliance lost the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10043, 'The Horde lost the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10044, 'The Alliance lost the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10045, 'The Horde lost the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10046, 'The Alliance lost the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10047, 'The Horde lost the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10048, 'The Alliance lost the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10049, 'The Horde has collected 200 silithyst!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10050, 'The Alliance has collected 200 silithyst!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10051, 'Take me to Northpass Tower.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10052, 'Take me to Eastwall Tower.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10053, 'Take me to Crown Guard Tower.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10054, 'Give me the flag, I''ll take it to the central beacon for the glory of the Alliance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10055, 'Give me the flag, I''ll take it to the central beacon for the glory of the Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11000, '|cffffff00[|c00077766Autobroadcast|cffffff00]: |cFFF222FF%s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET NAMES utf8 */;
----scripts_guildmaster
INSERT INTO `guildhouses` VALUES
(2, 0, -10711, 2483, 8, 1, 'Деревня тауренов, Силитус'),/*Tauren village at Veiled Sea (Silithus)*/
(3, 0, -8323, -343, 146, 0, 'Аббатство Североземья, Элвиннский лес'),/*Fishing outside an Northshire Abbey (Elwynn Forest)*/
(4, 0, 7368, -1560, 163, 1, 'Деревня троллей в горах, Темные берега'),/*Troll Village in mountains (Darkshore)*/
(5, 0, -4151, -1400, 198, 0, 'Деревня дварфов, Болотина'),/*Dwarven village outside Ironforge (Wetlands)*/
(6, 0, -1840, -4233, 2.14, 0, 'Деревня дварфов, Нагорье Арати'),/*Dwarven village (Arathi Highlands, Forbidding Sea)*/
(7, 0, -4151, -1400, 198, 0, 'Разбитый цеппелин, Болотина'),/*Crashed zeppelin (Wetlands, Dun Modr)*/
(8, 0, -723, -1076, 179, 1, 'Лагерь тауренов, Мулгор'),/*Tauren camp (Mulgore, Red Rock)*/
(9, 0, -206, 1666, 80, 0, 'Крепость Темного Клыка, Серебряный бор'),/*Shadowfang Keep an outside instance (Silverpine Forest)*/
(10, 0, -6374, 1262, 7, 0, 'Гавань снаружи Штормграда'),/*Harbor house outside Stormwind (Elwynn Forest)*/
(11, 0, -8640, 580, 96, 0, 'Тюрьма между каналами Штормграда'),/*Empty jail between canals (Stormwind)*/
(12, 0, -4844, -1066, 502, 0, 'Старый Стальгорн'),/*Old Ironforge*/
(13, 0, -4863, -1658, 503.5, 0, 'Аэропорт Стальгорна'),/*Ironforge Airport*/
(14, 0, 1146, -165, 313, 37, 'Кратер Азжары (вход Альянса)'),/*Azshara Crater instance (Alliance entrance)*/
(15, 0, -123, 858, 298, 37, 'Кратер Азжары (вход Орды)'),/*Azshara Crater instance (Horde entrance)*/
(16, 0, 4303, -2760, 16.8, 0, 'Башня Кель`Таласа'),/*Quel''Thalas Tower*/
(17, 0, -6161, -790, 423, 0, 'Разбитый самолет гномов Дун Морог-Тлеющее Ущелье'),/*Crashed gnome airplane (between Dun Morogh and Searing Gorge)*/
(18, 0, -11790, -1640, 54.7, 0, 'Зул`Гуруб'),/*Zul'Gurub an outside instance (Stranglethorn Vale)*/
(19, 0, -11805, -4754, 6, 1, 'Деревня гоблинов, Танарис'),/*Goblin village (Tanaris, South Seas)*/
(20, 0, -9296, 670, 132, 0, 'Лагерь бандитов, Элвиннский лес'),/*Villains camp outside an Stormwind (Elwynn Forest)*/
(21, 0, 3414, -3380, 142.2, 0, 'Стратхольм');/*Stratholm an outside instance*/

----world_guildmaster
DELETE FROM `creature_template` WHERE `entry`=99003;
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (99003, 0, 0, 0, 18748, 5525, 20711, 17895, 'Bruenno Guilde', 'Guildhouse Keeper', '', 59, 61, 6700, 24000, 5598, 5875, 4049, 35, 35, 1, 1.48, 1, 0, 339, 347, 0, 158, 1, 1500, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'guildmaster');
----
UPDATE `creature_template` SET `spell2`='50990' WHERE `entry`=27881;