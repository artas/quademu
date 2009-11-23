ALTER TABLE `quest_template` CHANGE `QuestLevel` `QuestLeveltemp` INT(8);
ALTER TABLE `quest_template` ADD `QuestLevel` SMALLINT(3) AFTER `QuestLeveltemp`;
UPDATE `quest_template` SET `QuestLevel` = `QuestLeveltemp`;
ALTER TABLE `quest_template` DROP `QuestLeveltemp`;
UPDATE `gameobject_template` SET `ScriptName`='go_scourge_cage' WHERE `entry` IN (187854, 187855, 187856, 187857, 187858, 187859, 187860, 187862, 187863, 187864, 187865, 187866, 187867, 187868, 187870, 187871, 187872, 187873, 187874, 187861, 190803);
UPDATE `creature_template` SET `ScriptName`='npc_lunaclaw_spirit' WHERE `entry`=12144;
UPDATE `gameobject_template` SET `ScriptName`='go_arcane_prison' WHERE `entry`=187561;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` in (33878,33986,33987,48563,48564,33876,33982,33983,48565,48566);

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(33878, -33876, 1, 'Mangle - Remover'),
(33878, -33982, 1, 'Mangle - Remover'),
(33878, -33983, 1, 'Mangle - Remover'),
(33878, -48565, 1, 'Mangle - Remover'),
(33878, -48566, 1, 'Mangle - Remover'),

(33986, -33876, 1, 'Mangle - Remover'),
(33986, -33982, 1, 'Mangle - Remover'),
(33986, -33983, 1, 'Mangle - Remover'),
(33986, -48565, 1, 'Mangle - Remover'),
(33986, -48566, 1, 'Mangle - Remover'),

(33987, -33876, 1, 'Mangle - Remover'),
(33987, -33982, 1, 'Mangle - Remover'),
(33987, -33983, 1, 'Mangle - Remover'),
(33987, -48565, 1, 'Mangle - Remover'),
(33987, -48566, 1, 'Mangle - Remover'),

(48563, -33876, 1, 'Mangle - Remover'),
(48563, -33982, 1, 'Mangle - Remover'),
(48563, -33983, 1, 'Mangle - Remover'),
(48563, -48565, 1, 'Mangle - Remover'),
(48563, -48566, 1, 'Mangle - Remover'),

(48564, -33876, 1, 'Mangle - Remover'),
(48564, -33982, 1, 'Mangle - Remover'),
(48564, -33983, 1, 'Mangle - Remover'),
(48564, -48565, 1, 'Mangle - Remover'),
(48564, -48566, 1, 'Mangle - Remover'),

(33876, -33878, 1, 'Mangle - Remover'),
(33982, -33878, 1, 'Mangle - Remover'),
(33983, -33878, 1, 'Mangle - Remover'),
(48565, -33878, 1, 'Mangle - Remover'),
(48566, -33878, 1, 'Mangle - Remover'),

(33876, -33986, 1, 'Mangle - Remover'),
(33982, -33986, 1, 'Mangle - Remover'),
(33983, -33986, 1, 'Mangle - Remover'),
(48565, -33986, 1, 'Mangle - Remover'),
(48566, -33986, 1, 'Mangle - Remover'),

(33876, -33987, 1, 'Mangle - Remover'),
(33982, -33987, 1, 'Mangle - Remover'),
(33983, -33987, 1, 'Mangle - Remover'),
(48565, -33987, 1, 'Mangle - Remover'),
(48566, -33987, 1, 'Mangle - Remover'),

(33876, -48563, 1, 'Mangle - Remover'),
(33982, -48563, 1, 'Mangle - Remover'),
(33983, -48563, 1, 'Mangle - Remover'),
(48565, -48563, 1, 'Mangle - Remover'),
(48566, -48563, 1, 'Mangle - Remover'),

(33876, -48564, 1, 'Mangle - Remover'),
(33982, -48564, 1, 'Mangle - Remover'),
(33983, -48564, 1, 'Mangle - Remover'),
(48565, -48564, 1, 'Mangle - Remover'),
(48566, -48564, 1, 'Mangle - Remover');
UPDATE `trinity_string` SET `content_default` = 'Wintergrasp info: %s controlled. Timer: %s. Wartime: %s. Number of Players: (Horde: %u, Alliance: %u)' WHERE `entry` = 768;
UPDATE `creature_template` SET `ScriptName`='npc_mageguard_dalaran' WHERE `entry` IN (29254,29255);

-- positions for Dalaran 'Trespasser!' spell
DELETE FROM `spell_target_position` WHERE `id` IN (54028,54029);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(54028, 571, 5758.79, 678.359, 642.726, 5.572),
(54029, 571, 5849.16, 602.093, 651.13, 2.364);
UPDATE `gameobject_template` SET `ScriptName`='go_blackfathom_altar' WHERE `entry` IN (103015,103016);
UPDATE `creature_template` SET `ScriptName`='boss_gelihast' WHERE `entry`=6243;
UPDATE `creature_template` SET `ScriptName`='boss_kelris' WHERE `entry`=4832;
UPDATE `creature_template` SET `ScriptName`='boss_aku_mai' WHERE `entry`=4829;
DELETE FROM spell_bonus_data WHERE entry IN (47757, 52986, 52987, 52988); -- Old Penance in DB
DELETE FROM spell_bonus_data WHERE entry IN (47750, 52983, 52954, 58985, 47666, 52998, 52999, 53000);
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
(47750, 0.5362, -1, -1, -1, 'Priest - Penance Heal (Rank 1)'),
(52983, 0.5362, -1, -1, -1, 'Priest - Penance Heal (Rank 2)'),
(52954, 0.5362, -1, -1, -1, 'Priest - Penance Heal (Rank 3)'),
(58985, 0.5362, -1, -1, -1, 'Priest - Penance Heal (Rank 4)'),
(47666, 0.229, -1, -1, -1, 'Priest - Penance Hurt (Rank 1)'),
(52998, 0.229, -1, -1, -1, 'Priest - Penance Hurt (Rank 2)'),
(52999, 0.229, -1, -1, -1, 'Priest - Penance Hurt (Rank 3)'),
(53000, 0.229, -1, -1, -1, 'Priest - Penance Hurt (Rank 4)');
UPDATE `gameobject_template` SET `ScriptName`='go_blood_filled_orb' WHERE `entry`=182024;
DELETE FROM `spell_proc_event` WHERE `entry` IN (16086,16544);
INSERT INTO `spell_proc_event` VALUES 
( 16086, 0x04,  11, 0x00000000, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   50,   0),
( 16544, 0x04,  11, 0x00000000, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   100,   0);