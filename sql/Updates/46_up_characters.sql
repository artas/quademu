--
-- Table structure for table `mail_external`
--

DROP TABLE IF EXISTS `mail_external`;
CREATE TABLE `mail_external` (
  `id` bigint(20) NOT NULL auto_increment,
  `sender` bigint(20) default NULL,
  `receiver` bigint(20) default NULL,
  `subject` varchar(200) collate latin1_general_ci default NULL,
  `message` varchar(500) collate latin1_general_ci default NULL,
  `money` bigint(20) default NULL,
  `stationery` int(10) default '41',
  `sent` tinyint(4) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mail_external`
--

LOCK TABLES `mail_external` WRITE;
/*!40000 ALTER TABLE `mail_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_external_items`
--

DROP TABLE IF EXISTS `mail_external_items`;
CREATE TABLE `mail_external_items` (
  `mail_id` bigint(20) default NULL,
  `item` bigint(20) default NULL
)  ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mail_external_items`
--

LOCK TABLES `mail_external_items` WRITE;
/*!40000 ALTER TABLE `mail_external_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_external_items` ENABLE KEYS */;
UNLOCK TABLES;
