/*!40101 SET NAMES utf8 */;
/*!40101 SET SQL_MODE=''*/;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
----INSERT - scripts_guildmaster
DELETE FROM `guildhouses` WHERE `entry` IN (2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21);
INSERT INTO `guildhouses` VALUES
(2, 0, -10711, 2483, 8, 1, 'Деревня тауренов, Силитус',/*Tauren village at Veiled Sea (Silithus)*/
(3, 0, -8323, -343, 146, 0, 'Аббатство Североземья, Элвиннский лес',/*Fishing outside an Northshire Abbey (Elwynn Forest)*/
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
(17, 0, -6161, -790, 423, 0, 'Разбитый самолет гномов (Дун Морог-Тлеющее Ущелье'),/*Crashed gnome airplane (between Dun Morogh and Searing Gorge)*/
(18, 0, -11790, -1640, 54.7, 0, 'Зул`Гуруб'),/*Zul'Gurub an outside instance (Stranglethorn Vale)*/
(19, 0, -11805, -4754, 6, 1, 'Деревня гоблинов, Танарис'),/*Goblin village (Tanaris, South Seas)*/
(20, 0, -9296, 670, 132, 0, 'Лагерь бандитов, Элвиннский лес'),/*Villains camp outside an Stormwind (Elwynn Forest)*/
(21, 0, 3414, -3380, 142.2, 0, 'Стратхольм');/*Stratholm an outside instance*/
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
