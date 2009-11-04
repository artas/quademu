ALTER TABLE `spell_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
UPDATE `creature_template` SET `ScriptName`='boss_trollgore' WHERE `entry`=26630;
UPDATE `creature_template` SET `ScriptName`='boss_tharon_ja' WHERE `entry`=26632;
UPDATE `creature_template` SET `ScriptName`='npc_loklira_crone' WHERE `entry`=29975;
UPDATE `creature_template` SET `ScriptName`='npc_victorious_challenger' WHERE `entry`=30012;
UPDATE `creature_template` SET `ScriptName`='npc_mcgoyver' WHERE `entry`=24040;
UPDATE `creature_template` SET `ScriptName`='npc_jenny' WHERE `entry`=25969;
UPDATE `creature_template` SET `ScriptName`='npc_drakkari_gutripper' WHERE `entry`=26641;
UPDATE `creature_template` SET `ScriptName`='npc_drakkari_scytheclaw' WHERE `entry`=26628;
UPDATE `creature_template` SET `ScriptName`='boss_dred' WHERE `entry`=27483;
DELETE FROM `spell_proc_event` WHERE `entry` IN
(15318,15272,15320);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
( 15318, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x02000000, 0x00002000,   0,   0,   0), -- Shadow Affinity (Rank 1)
( 15272, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x02000000, 0x00002000,   0,   0,   0), -- Shadow Affinity (Rank 2)
( 15320, 0x20,   0, 0x00000000, 0x00000000, 0x00000000, 0x02000000, 0x00002000,   0,   0,   0); -- Shadow Affinity (Rank 3)
ALTER TABLE `exploration_basexp` MODIFY COLUMN `level` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0;
UPDATE `creature_template` SET `ScriptName`='npc_training_dummy' WHERE `entry` IN (2674,2673);
INSERT INTO `quad_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
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
    (772, 'You have reached Rank 2: First Lieutenant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO command (name, security, help) VALUES
    ('wg', 3, 'Syntax: .wg $subcommand.'),
    ('wg enable', 3, 'Syntax: .wg enable [on/off] Enable/Disable Wintergrasp outdoorPvP.'),
    ('wg start', 3, 'Syntax: .wg start\r\nForce Wintergrasp battle start.'),
    ('wg status', 3, 'Syntax: .wg status\r\nWintergrasp info, defender, timer, wartime.'),
    ('wg stop', 3, 'Syntax: .wg stop\r\nForce Wintergrasp battle stop (No rewards).'),
    ('wg switch', 3, 'Syntax: .wg switch\r\nSwitchs Wintergrasp defender team.'),
    ('wg timer', 3, 'Syntax: .wg timer\r\nChange Wintergrasp current timer (in secs).');
INSERT INTO `spell_linked_spell` (spell_trigger, spell_effect, type, comment) VALUES
    (-58600, 61243, 0, 'No fly zone - Parachute'),
    (-58730, 61243, 0, 'No fly zone - Parachute');
INSERT INTO `quad_string` (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
    (816, 'You have entered a No-Fly Zone and are about to be dismounted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `quad_string` WHERE `entry`=816;
INSERT INTO `quad_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(816, 'Warning: You''ve entered a no-fly zone and are about to be dismounted!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `creature_template` SET `AIName` = 'AOEAI' WHERE `entry` IN ('23336','23069','23259');
UPDATE `creature_template` SET `spell1` = '40029' WHERE `entry` = 23069;
UPDATE `creature_template` SET `spell1` = '40610' WHERE `entry` = 23259;
UPDATE `creature_template` SET `spell1` = '40836' WHERE `entry` = 23336;