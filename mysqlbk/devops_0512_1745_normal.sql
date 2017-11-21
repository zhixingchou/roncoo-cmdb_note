-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: devops
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cabinet`
--

DROP TABLE IF EXISTS `cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabinet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `idc_id` int(11) NOT NULL,
  `power` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinet`
--

LOCK TABLES `cabinet` WRITE;
/*!40000 ALTER TABLE `cabinet` DISABLE KEYS */;
INSERT INTO `cabinet` VALUES (8,'1-1',10,'10A');
/*!40000 ALTER TABLE `cabinet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobbler`
--

DROP TABLE IF EXISTS `cobbler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cobbler` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL COMMENT '????????o???Ã©â€¦?IP',
  `MAC` varchar(50) NOT NULL COMMENT 'Ã©â‚¬?Ã¨??MAC??Â°??â‚¬????????â€°Ã¨ï¿¡â€¦',
  `hostname` varchar(50) DEFAULT NULL COMMENT '?????o???',
  `os` varchar(50) NOT NULL COMMENT '?3????',
  `status` int(11) NOT NULL,
  `gateway` varchar(50) DEFAULT NULL,
  `subnet` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobbler`
--

LOCK TABLES `cobbler` WRITE;
/*!40000 ALTER TABLE `cobbler` DISABLE KEYS */;
/*!40000 ALTER TABLE `cobbler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idc`
--

DROP TABLE IF EXISTS `idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `idc_name` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `user_interface` varchar(50) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `rel_cabinet_num` int(11) DEFAULT NULL,
  `pact_cabinet_num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idc`
--

LOCK TABLES `idc` WRITE;
/*!40000 ALTER TABLE `idc` DISABLE KEYS */;
INSERT INTO `idc` VALUES (10,'上海美华系统楼','上海美华系统楼','上海美华系统楼','','test@metinform.cn','运维人员','',1,1);
/*!40000 ALTER TABLE `idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `install`
--

DROP TABLE IF EXISTS `install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `install` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL COMMENT 'ç»™ä¸»æœºåˆ†é…IP',
  `install_time` datetime NOT NULL COMMENT 'å®‰è£…æ—¶é—´',
  `os` varchar(50) NOT NULL COMMENT 'æ“ä½œç³»ç»Ÿ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `install`
--

LOCK TABLES `install` WRITE;
/*!40000 ALTER TABLE `install` DISABLE KEYS */;
/*!40000 ALTER TABLE `install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintain`
--

DROP TABLE IF EXISTS `maintain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `server_run` varchar(40) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `remark` text,
  `xiajia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintain`
--

LOCK TABLES `maintain` WRITE;
/*!40000 ALTER TABLE `maintain` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maintenance_name` varchar(50) DEFAULT NULL,
  `hostname` varchar(50) DEFAULT NULL,
  `maintenance_time` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `power`
--

DROP TABLE IF EXISTS `power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '权限英文名',
  `name_cn` varchar(40) NOT NULL COMMENT '权限中文名',
  `url` varchar(128) NOT NULL COMMENT '权限对应的url',
  `comment` varchar(128) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `power`
--

LOCK TABLES `power` WRITE;
/*!40000 ALTER TABLE `power` DISABLE KEYS */;
INSERT INTO `power` VALUES (4,'git','git仓库','/project/project','测试'),(14,'cobbler','装机平台','/cobbler','赋予装机平台权限'),(6,'zabbix','监控','/zabbix','监控管理'),(7,'elk','性能展示','/show','性能展示'),(8,'testing','测试发布','/project/testing','代码测试发布'),(9,'apply','申请发布','/proect/apply','申请发布sss'),(10,'deploy','发布列表','/proect/deploy','发布列表');
/*!40000 ALTER TABLE `power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `module_letter` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `distro` varchar(50) NOT NULL COMMENT 'profile name',
  `os` varchar(50) NOT NULL COMMENT 'æ“ä½œç³»ç»Ÿ',
  `ks` varchar(100) NOT NULL COMMENT 'ksæ–‡ä»¶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT 'é¡¹ç›®å',
  `path` varchar(80) NOT NULL COMMENT 'é¡¹ç›®ä»£ç ä»“åº“è·¯å¾„',
  `principal` int(10) unsigned NOT NULL COMMENT 'è´Ÿè´£äºº',
  `p_user` int(10) unsigned DEFAULT NULL COMMENT 'æœ‰æƒé™çš„ç”¨æˆ·',
  `p_group` int(10) unsigned DEFAULT NULL COMMENT 'æœ‰æƒé™çš„ç»„',
  `create_date` date NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `is_lock` tinyint(1) unsigned DEFAULT '0' COMMENT 'æ˜¯å¦é”å®š 0-æœªé”å®š 1-é”å®š',
  `comment` varchar(256) DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_apply`
--

DROP TABLE IF EXISTS `project_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL COMMENT 'å¯¹åº”projecté¡¹ç›®ID',
  `info` varchar(64) NOT NULL COMMENT 'å‘å¸ƒç®€ä»‹',
  `applicant` varchar(64) NOT NULL COMMENT 'ç”³è¯·äºº',
  `version` varchar(64) DEFAULT NULL COMMENT 'å‘å¸ƒç‰ˆæœ¬',
  `commit` varchar(64) NOT NULL COMMENT 'ä»£ç æœ€æ–°ç‰ˆæœ¬',
  `apply_date` datetime NOT NULL COMMENT 'ç”³è¯·æ—¶é—´',
  `status` int(10) DEFAULT '0' COMMENT 'å‘å¸ƒçŠ¶æ€',
  `detail` text COMMENT 'å‘å¸ƒè¯¦æƒ…',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_apply`
--

LOCK TABLES `project_apply` WRITE;
/*!40000 ALTER TABLE `project_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_deploy`
--

DROP TABLE IF EXISTS `project_deploy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_deploy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL COMMENT 'å¯¹åº”projectçš„é¡¹ç›®ID',
  `info` varchar(64) NOT NULL COMMENT 'å‘å¸ƒç®€ä»‹',
  `version` varchar(64) DEFAULT NULL COMMENT 'å‘å¸ƒç‰ˆæœ¬',
  `commit` varchar(64) NOT NULL COMMENT 'ä»£ç æœ€æ–°ç‰ˆæœ¬',
  `applicant` varchar(64) NOT NULL COMMENT 'æ“ä½œäºº',
  `apply_date` datetime NOT NULL COMMENT 'æ“ä½œæ—¶é—´',
  `status` int(10) DEFAULT '0' COMMENT 'å‘å¸ƒçŠ¶æ€',
  `detail` text COMMENT 'å‘å¸ƒè¯¦æƒ…',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_deploy`
--

LOCK TABLES `project_deploy` WRITE;
/*!40000 ALTER TABLE `project_deploy` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_deploy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_test`
--

DROP TABLE IF EXISTS `project_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL COMMENT 'å¯¹åº”projecté¡¹ç›®ID',
  `host` varchar(64) NOT NULL COMMENT 'æµ‹è¯•ä¸»æœº',
  `commit` varchar(64) NOT NULL COMMENT 'æŽ¨é€ç‰ˆæœ¬å·',
  `pusher` varchar(128) NOT NULL COMMENT 'æŽ¨é€äºº',
  `push_date` datetime NOT NULL COMMENT 'æŽ¨é€æ—¶é—´',
  `comment` varchar(256) DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_test`
--

LOCK TABLES `project_test` WRITE;
/*!40000 ALTER TABLE `project_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `server_run` varchar(40) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `remark` text,
  `reporttime` varchar(30) DEFAULT NULL,
  `status` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT 'è§’è‰2???',
  `name_cn` varchar(40) NOT NULL COMMENT 'è§’è‰2??-?–????',
  `p_id` varchar(20) NOT NULL COMMENT '???é??id????…?è???¤???ap_id,?-???o?-—??|??2?±????',
  `info` varchar(50) DEFAULT NULL COMMENT 'è§’è‰2???è?°?????ˉ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'sa','运维组','4,14,6,7,8,9,10','超级管理员'),(7,'php','开发组','4,14,8,9,10','PHP开发'),(10,'zj','装机','14','专门装机用户');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(30) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `vm_status` int(11) DEFAULT NULL,
  `st` varchar(50) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  `manufacturers` varchar(100) DEFAULT NULL,
  `server_type` varchar(100) DEFAULT NULL,
  `server_cpu` varchar(200) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `server_disk` varchar(100) DEFAULT NULL,
  `server_mem` int(11) DEFAULT NULL,
  `mac_address` varchar(30) DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `check_update_time` datetime DEFAULT NULL,
  `supplier` varchar(30) DEFAULT NULL,
  `idc_id` int(11) DEFAULT NULL,
  `cabinet_id` int(11) DEFAULT NULL,
  `cabinet_pos` varchar(10) DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `supplier_phone` varchar(20) DEFAULT NULL,
  `server_up_time` datetime DEFAULT NULL,
  `server_purpose` varchar(30) DEFAULT NULL,
  `host` varchar(20) DEFAULT NULL,
  `server_run` varchar(100) DEFAULT NULL,
  `host_status` int(4) DEFAULT '1',
  `host_models` varchar(10) DEFAULT '1U',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES (31,'vm-ct6-ops','192.168.2.159',0,'VMware-42224c126256f0e6-25a51c6c76d86a8b','42224C12-6256-F0E6-25A5-1C6C76D86A8B','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E5506++@+2.13GHz+1','CentOS+6.9+Final','3+++50',1878,'00:50:56:a2:65:19','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--运维使用安装运维工具','192.168.2.251','CMDB-(cobbler)-周志兴',1,'1U'),(32,'met-ops-dk','192.168.2.225',1,'JVNKM2X','44454C4C-5600-104E-804B-CAC04F4D3258','Dell+Inc.','PowerEdge+1950','Intel(R)+Xeon(R)+CPU+++++++++++E5405++@+2.00GHz+8','CentOS+Linux+7.3.1611+Core','278',15882,'00:22:19:50:99:93','2008-09-12',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--Docker宿主','','周志兴',1,'1U'),(33,'appserver1.eport.sh.cn','192.168.2.130',0,'VMware-564d2447ebca3601-939be6818b457e45','564D2447-EBCA-3601-939B-E6818B457E45','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E5506++@+2.13GHz+1','Red+Hat+Enterprise+Linux+AS+4+Nahant+Update+6','10+++10',2027,'00:50:56:b7:23:82','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产','192.168.2.251','cst_测试，http(未知)',1,'1U'),(34,'eport','192.168.2.140',0,'VMware-423ecbc576ea08a5-cf908eabf7f9ee22','423ECBC5-76EA-08A5-CF90-8EABF7F9EE22','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E7540++@+2.00GHz+1','Red+Hat+Enterprise+Linux+Server+6.4+Santiago','60',3834,'00:50:56:be:b3:d5','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--易报关测试环境','192.168.2.135','单点登陆、运营系统、微信端、pc端、搜索服务、单证服务都在上面--易报关产品相关内测服务器,(20160602)得知黄俊伟仍在使用',1,'1U'),(35,'eport','192.168.2.148',0,'VMware-423ead09b9aec89f-5ede3c38b05cef5d','423EAD09-B9AE-C89F-5EDE-3C38B05CEF5D','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU++++++++++++5130++@+2.00GHz+1','Red+Hat+Enterprise+Linux+Server+6.4+Santiago','50',1878,'00:50:56:be:e9:85','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--框架2.0+，maven服务器（易报关，通关服务等项','','席润申请,测试',1,'1U'),(36,'eport','192.168.2.149',0,'VMware-423e80b9735514a9-5ecfadfe0c9978f8','423E80B9-7355-14A9-5ECF-ADFE0C9978F8','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU++++++++++++5130++@+2.00GHz+1','Red+Hat+Enterprise+Linux+Server+6.4+Santiago','50',1878,'00:50:56:be:42:23','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--框架2.0+，消息服务器测试、activemq环境','','席润申请,tomcat（单证服务）sms服务器,中间件,无本地数据(咨询过后得知程序员自己备份)',1,'1U'),(37,'localhost.localdomain','192.168.2.154',0,'VMware-42159b910887b2a7-7c53b1ca26c02d59','42159B91-0887-B2A7-7C53-B1CA26C02D59','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E5640++@+2.67GHz+4','CentOS+6.5+Final','10',3832,'00:50:56:95:17:40','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--\"公司门户网站，测试环境？+上海电子口岸网2013年','192.168.2.247','info.metinfrom.cn+进出口服务平台',1,'1U'),(38,'localhost.localdomain','192.168.2.166',0,'VMware-423e3327f602d753-6104e97d59d226ba','423E3327-F602-D753-6104-E97D59D226BA','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E5606++@+2.13GHz+2','Red+Hat+Enterprise+Linux+Server+5.8+Tikanga','20',1010,'00:50:56:be:aa:3b','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--全公司使用的JIRA生产环境--对应的数据库','192.168.2.134','jiradb--瞿琴',1,'1U'),(39,'WIN-358CM27B9PL','192.168.2.152',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz','Microsoft+Windows+Server+2012+R2+Standard','VMware+Virtual+disk+SCSI+Disk+Device+:+49G',6143,'00:50:56:BE:6C:D6','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--i创意、产业投资等测试环境','192.168.2.101','瞿琴',1,'1U'),(40,'localhost.localdomain','192.168.2.184',0,'VMware-422226e132f2b5da-fa2fb9810948d166','422226E1-32F2-B5DA-FA2F-B9810948D166','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU++++++++++++5130++@+2.00GHz+4','CentOS+Linux+7.2.1511+Core','40',3952,'00:50:56:a2:cf:09','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--路威WMS测试','192.168.2.31','',1,'1U'),(41,'template1','192.168.2.240',0,'VMware-421ff507417ac676-c08cf62150e23293','421FF507-417A-C676-C08C-F62150E23293','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E7540++@+2.00GHz+1','Red+Hat+Enterprise+Linux+Server+5.8+Tikanga','100',3949,'00:50:56:9f:23:73','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','关贸云一期测试环境','0','',1,'1U'),(42,'localhost.localdomain','192.168.2.72',0,'VMware-423e0d2465340ee6-850b0e64c41b62a1','423E0D24-6534-0EE6-850B-0E64C41B62A1','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E7540++@+2.00GHz+1','CentOS+6.5+Final','51',2887,'00:50:56:be:31:69','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--通关服务教学版','192.168.2.137','关贸云单点登陆和统一权限管理的mysql数据库（黄俊伟测试通关服务教学版的测试机器(使用期限一年)）',1,'1U'),(43,'declinux','192.168.2.74',0,'VMware-423e85d708b6a73c-95e6d573c86ca742','423E85D7-08B6-A73C-95E6-D573C86CA742','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E5606++@+2.13GHz+2','CentOS+Linux+7.2.1511+Core','40',3952,'00:50:56:be:81:8f','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--关贸云开发环境','','现(gmy黄俊伟测试)+++(前(测试机(mongodb)徐铮、席润)',1,'1U'),(44,'localhost.localdomain','192.168.2.76',0,'VMware-564dc390495e5bac-992f2dcf342ebee1','564DC390-495E-5BAC-992F-2DCF342EBEE1','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+0+@+2.00GHz+1','CentOS+Linux+7.2.1511+Core','40',2001,'00:0c:29:2e:be:e1','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--黄俊伟研发测试2(20170215-2年)','192.168.2.137','黄俊伟',1,'1U'),(45,'localhost.localdomain','192.168.2.77',0,'VMware-564dc7761e5aa98c-14abf1acb8198e08','564DC776-1E5A-A98C-14AB-F1ACB8198E08','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+0+@+2.00GHz+1','CentOS+Linux+7.2.1511+Core','50',3952,'00:0c:29:19:8e:08','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--黄俊伟研发测试3(momgodb)(20170215','192.168.2.137','黄俊伟',1,'1U'),(46,'oracletestdb','192.168.2.94',0,'VMware-564da2d88d88d943-46afd95412ba3775','564DA2D8-8D88-D943-46AF-D95412BA3775','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+0+@+2.00GHz+4','CentOS+6.5+Final','50+++60',5852,'00:0c:29:ba:37:75','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试','192.168.2.239','数据库，测试使用',1,'1U'),(47,'localhost.localdomain','192.168.2.141',0,'VMware-4222401993c221b3-24dadd435be43de2','42224019-93C2-21B3-24DA-DD435BE43DE2','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU++++++++++++5130++@+2.00GHz+1','CentOS+6.9+Final','50',1877,'00:50:56:a2:f9:77','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--应用测试(cmdbuilder_svnmanager','','马强测试',1,'1U'),(48,'WIN-1J1OF9PCNSU','192.168.2.176',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU+++++++++++E5640++@+2.67GHz','Microsoft+Windows+Server+2008+R2+Standard+','VMware+Virtual+disk+SCSI+Disk+Device+:+59G',5119,'00:50:56:BE:CF:3F','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--\"上海煤炭交易平台+测试环境+河南跨境通关服务平台（','','供应链事业部的上海煤炭交易平台--\"瞿琴+谢聪聪\"',1,'1U'),(49,'lvlisong22','192.168.2.221',0,'','','x86','','CpuType+:	Intel(R)+Xeon(R)+CPU+++++++++++E7540++@+2.00GHz','Microsoft(R)+Windows(R)+Server+2003,+Enterprise+Ed','VMware+Virtual+disk+SCSI+Disk+Device+:+19G',4095,'00:50:56:9F:0C:6B','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--http(未知),吕,测试','192.168.2.135','',1,'1U'),(50,'WIN-0EPST4Q9FG2','192.168.2.231',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU++++++++++++5130++@+2.00GHz','Microsoft+Windows+Server+2008+R2+Standard+','VMware+Virtual+disk+SCSI+Disk+Device+:+49G',6143,'00:50:56:A2:76:B1','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','测试--西北物流园区测试','192.168.2.32','win2008_西北物流园区测试（龙承旸）_231--龙承旸',1,'1U'),(52,'mq_sms','192.168.2.6',1,'2WXM32X','44454C4C-5700-1058-804D-B2C04F333258','Dell+Inc.','PowerEdge+2950','Intel(R)+Xeon(R)+CPU++++++++++++5130++@+2.00GHz+2','Red+Hat+Enterprise+Linux+AS+4+Nahant+Update+2','136',4051,'00:1a:a0:0c:36:10','2006-10-18',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','','0','mq/oracle/ftp',1,'1U'),(53,'localhost.localdomain','192.168.2.26',0,'VMware-423ea27efe7ca25b-a15de9303f4a3514','423EA27E-FE7C-A25B-A15D-E9303F4A3514','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+2','CentOS+6.5+Final','25',3016,'00:50:56:be:4f:4d','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','','192.168.2.101','centos6.5+PMO+瞿晴(研发中0512)',1,'1U'),(54,'pmodb','192.168.2.27',0,'VMware-423eeee2189adb48-770228df142b6001','423EEEE2-189A-DB48-7702-28DF142B6001','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+4','CentOS+6.5+Final','50',7872,'00:50:56:be:c7:54','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--研发中心PMO管理系统生产APP对应的数据库环境','192.168.2.101','centos6.5+oracle11g++sid:gmy2--瞿琴、余双双',1,'1U'),(55,'svctag-277gb1x','192.168.2.35',0,'','','x86','','CpuType+:	Intel(R)+Xeon(TM)+CPU+2.80GHz','Microsoft(R)+Windows(R)+Server+2003,+Enterprise+Ed','PERC++LD++0+PERCRAID+SCSI+Disk+Device+:+67G',2047,'00:0B:DB:92:78:DB','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','','0','财务使用',1,'1U'),(56,'ybg.tradefree.cn','192.168.2.41',0,'VMware-564d358b5cc49351-93c17bdd1855fead','564D358B-5CC4-9351-93C1-7BDD1855FEAD','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+4','CentOS+6.5+Final','50',3832,'00:0c:29:55:fe:ad','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--易报关','192.168.2.239','生Niginx、单点登陆、定时任务（易报关产品_主_微信应用服务器_nginx_2.41+Nginx tomcat6.0  JDK7.0）--黄俊伟',1,'1U'),(57,'localhost.localdomain','192.168.2.42',0,'VMware-564de5208c214093-0278132cda7504e5','564DE520-8C21-4093-0278-132CDA7504E5','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+4','CentOS+6.5+Final','50',3832,'00:0c:29:75:04:e5','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--易报关','192.168.2.239','微信端、pc端（易报关产品_主_微信应用服务器_ybgfront_2.42+tomcat6.0++JDK7.0）--黄俊伟',1,'1U'),(58,'localhost.localdomain','192.168.2.43',0,'VMware-564d468018ac3d9f-32d1f81b46d494b3','564D4680-18AC-3D9F-32D1-F81B46D494B3','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+4','CentOS+6.5+Final','50',3832,'00:0c:29:d4:94:b3','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--易报关','192.168.2.239','运营系统（易报关产品_主_微信应用服务器_ybgbackend_2.43+tomcat6.0++JDK7.0）--黄俊伟',1,'1U'),(59,'ybgproductdb44','192.168.2.44',0,'VMware-564db40248aead69-adc32f9f3ad48ab6','564DB402-48AE-AD69-ADC3-2F9F3AD48AB6','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+4','CentOS+6.5+Final','50',7872,'00:0c:29:d4:8a:b6','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--易报关','192.168.2.239','数据库（易报关产品_主_数据库_2.44+Oracle11.2）--黄俊伟',1,'1U'),(60,'ybgpassdb49','192.168.2.49',0,'VMware-564d765f34dee50d-694804a6410c85e0','564D765F-34DE-E50D-6948-04A6410C85E0','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+4','CentOS+6.5+Final','50',7872,'00:0c:29:0c:85:e0','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产-关贸云通关服务','192.168.2.239','西安关贸云_通关服务数据库gmytgdb+oracle11g--李亚维',1,'1U'),(61,'localhost.localdomain','192.168.2.60',0,'VMware-42228e5cf750448a-a8da10e95be56611','42228E5C-F750-448A-A8DA-10E95BE56611','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+1','CentOS+6.8+Final','50+++100',3832,'00:50:56:a2:80:e2','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--全国接口应用服务器db','192.168.2.234','全国接口应用服务器db--黄俊伟',1,'1U'),(62,'localhost.localdomain','192.168.2.61',0,'VMware-422250b03bbc5d3d-0e70bbbb63cb9f20','422250B0-3BBC-5D3D-0E70-BBBB63CB9F20','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+4','CentOS+Linux+7.2.1511+Core','40',3952,'00:50:56:a2:78:2c','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--全国接口应用服务器app','192.168.2.234','全国接口应用服务器app--黄俊伟',1,'1U'),(63,'eport','192.168.2.65',0,'VMware-423eae01d07d9db9-4029e55656ae4225','423EAE01-D07D-9DB9-4029-E55656AE4225','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E7540++@+2.00GHz+1','Red+Hat+Enterprise+Linux+Server+6.4+Santiago','50',1878,'00:50:56:be:0e:36','2012-06-22',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','组织用户管理界面/消息接口','','tomcat+短消息发送服务++(未监控)使用人：瞿晴',1,'1U'),(64,'metinformoaweb','192.168.2.66',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz','Microsoft+Windows+Server+2008+R2+Enterprise+','VMware+Virtual+disk+SCSI+Disk+Device+:+39G',6143,'00:50:56:BE:98:FC','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','','192.168.2.138','new_oa_db',1,'1U'),(65,'metinformoaweb2','192.168.2.67',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU+E5-2620+0+@+2.00GHz','Microsoft+Windows+Server+2008+R2+Enterprise+','VMware+Virtual+disk+SCSI+Disk+Device+:+39G',4095,'00:50:56:95:6D:C0','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','','192.168.2.138','new_oa_web',1,'1U'),(66,'localhost.localdomain','192.168.2.69',0,'VMware-4222f2f56a2adaa8-20786a3033d07c61','4222F2F5-6A2A-DAA8-2078-6A3033D07C61','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+1','CentOS+6.8+Final','50',3832,'00:50:56:a2:b7:e3','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--路威WMS正式环境','192.168.2.234','路威WMS正式环境_tomcat_应用--陆青川',1,'1U'),(67,'WIN-K2H9N4D4DNR','192.168.2.71',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz','Microsoft+Windows+Server+2008+R2+Enterprise+','VMware+Virtual+disk+SCSI+Disk+Device+:+39G',4095,'00:0C:29:F8:DD:76','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产','192.168.2.239','tomcat+sqlserver2008++信资服务--',1,'1U'),(68,'localhost.localdomain','192.168.2.85',1,'2WNKM2X','44454C4C-5700-104E-804B-B2C04F4D3258','Dell+Inc.','PowerEdge+1950','Intel(R)+Xeon(R)+CPU+++++++++++E5405++@+2.00GHz+8','Red+Hat+Enterprise+Linux+Server+5.4+Tikanga','836',16046,'00:22:19:59:26:3e','2008-09-12',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','','0','实体机',1,'1U'),(69,'localhost.localdomain','192.168.2.87',0,'VMware-423e0a836f5dd481-872a338e1a569803','423E0A83-6F5D-D481-872A-338E1A569803','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+4','CentOS+6.5+Final','25+++50',3961,'00:50:56:be:ac:c1','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','','0','教育培训部-伏翠良',1,'1U'),(70,'localhost.localdomain','192.168.2.92',0,'VMware-42154c30e93d68b2-01e37faf514af2ac','42154C30-E93D-68B2-01E3-7FAF514AF2AC','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E5606++@+2.13GHz+4','CentOS+Linux+7.2.1511+Core','40',3952,'00:50:56:95:0f:d4','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产','0','Zabbix+Server',1,'1U'),(71,'JAVABuild','192.168.2.102',0,'','','x86','','CpuType+:	Intel(R)+Xeon(R)+CPU+++++++++++E7540++@+2.00GHz','Microsoft(R)+Windows(R)+Server+2003,+Enterprise+Edition','VMware+Virtual+disk+SCSI+Disk+Device+:+59G',2047,'00:50:56:95:12:D5','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产','192.168.2.135','重要,svn存放服务器',1,'1U'),(72,'localhost.localdomain','192.168.2.111',0,'VMware-423eb5adae8dee50-17556bfe67bc7be1','423EB5AD-AE8D-EE50-1755-6BFE67BC7BE1','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU++++++++++++5130++@+2.00GHz+2','CentOS+6.5+Final','10+++16',3832,'00:50:56:be:b6:63','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产','192.168.2.134','内网机器监控入库(zabbix——次要)',1,'1U'),(73,'owner-zxpt','192.168.2.120',0,'','','x86','','CpuType+:	Intel(R)+Xeon(R)+CPU+++++++++++E5606++@+2.13GHz','Microsoft(R)+Windows(R)+Server+2003,+Enterprise+Edition','VMware+Virtual+disk+SCSI+Disk+Device+:+19G',1023,'00:0C:29:4B:BA:F7','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产','192.168.2.101','http(未知)',1,'1U'),(74,'cas.my.com','192.168.2.147',1,'9VTJ5X1','4C4C4544-0056-5410-804A-B9C04F355831','Dell+Inc.','PowerEdge+R620','Intel(R)+Xeon(R)+CPU+E5-2620+0+@+2.00GHz+24','Red+Hat+Enterprise+Linux+Server+5.8+Tikanga','1116',15976,'90:b1:1c:3a:cd:ae','2012-10-25',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产','0','ORACLE内部，Tomcat(未知)',1,'1U'),(75,'gmt-test','192.168.2.153',0,'','','x86','','CpuType+:	Intel(R)+Xeon(R)+CPU+++++++++++E7540++@+2.00GHz','Microsoft(R)+Windows(R)+Server+2003,+Enterprise+Edition','VMware+Virtual+IDE+Hard+Drive+:+76G',4095,'00:50:56:BC:56:EA','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--关贸通','192.168.2.135','gmt+楼上曹政',1,'1U'),(76,'localhost.localdomain','192.168.2.208',0,'VMware-423efa9645dbf003-403092cf064a45be','423EFA96-45DB-F003-4030-92CF064A45BE','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+++++++++++E5606++@+2.13GHz+1','Red+Hat+Enterprise+Linux+Server+6.7+Santiago','50',238,'00:50:56:be:89:c9','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--新-文件备份机器','192.168.2.101','非关键文件备份--运维部',1,'1U'),(77,'supop','192.168.2.209',0,'VMware-423ea710f3d7c415-49e989aab3ae35db','423EA710-F3D7-C415-49E9-89AAB3AE35DB','VMware,+Inc.','VMware+Virtual+Platform','Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz+2','CentOS+6.6+Final','40',1006,'00:50:56:be:c5:8d','2014-04-14',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--metitop/metidb','192.168.2.101','',1,'1U'),(78,'ttt-5d7e60a1da4','192.168.2.220',0,'','','x86','','CpuType+:	Intel(R)+Xeon(R)+CPU+E5-2620+0+@+2.00GHz','Microsoft(R)+Windows(R)+Server+2003,+Enterprise+Edition','VMware+Virtual+disk+SCSI+Disk+Device+:+29G',1023,'00:0C:29:75:99:11','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--http(未知)+MQ运维机','192.168.2.135','',1,'1U'),(79,'WIN-0EPST4Q9FG2','192.168.2.222',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz','Microsoft+Windows+Server+2008+R2+Standard+','VMware+Virtual+disk+SCSI+Disk+Device+:+49G',6143,'00:50:56:BE:97:B6','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--加贸无忧','192.168.2.101','http(海关加工贸易辅助管理平台)--王伟群',1,'1U'),(80,'WIN-0EPST4Q9FG2','192.168.2.223',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz','Microsoft+Windows+Server+2008+R2+Standard+','VMware+Virtual+disk+SCSI+Disk+Device+:+49G',6143,'00:50:56:BE:2C:6F','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--加贸无忧','192.168.2.101','http(海关加工贸易辅助管理平台)--王伟群',1,'1U'),(81,'WIN-0EPST4Q9FG2','192.168.2.224',0,'','','AMD64','','CpuType+:	Intel(R)+Xeon(R)+CPU+E5-2620+v3+@+2.40GHz','Microsoft+Windows+Server+2008+R2+Standard+','VMware+Virtual+disk+SCSI+Disk+Device+:+49G',6143,'00:50:56:BE:09:7F','0000-00-00',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','生产--加贸无忧','192.168.2.101','http(未知)--王伟群',1,'1U'),(82,'appserver1.eport.sh.cn','192.168.2.245',1,'H6ZRY2X','44454C4C-3600-105A-8052-C8C04F593258','Dell+Inc.','PowerEdge+R410','Intel(R)+Xeon(R)+CPU+++++++++++E5506++@+2.13GHz+8','Red+Hat+Enterprise+Linux+Server+5.4+Tikanga','1862',16044,'84:2b:2b:4c:7e:24','2010-05-25',NULL,'',10,8,'','2018-09-01 00:00:00','','2017-05-01 00:00:00','应用备份存储服务器','0','0',1,'1U'),(83,'owner-8eea17425','192.168.2.58',0,'','','x86','Intel','CpuType+:	Intel(R)+Pentium(R)+III+Xeon+processor','Microsoft(R)+Windows(R)+Server+2003,+Enterprise+Edition','VMware+Virtual+disk+SCSI+Disk+Device+:+39G',3839,'00:0C:29:D9:47:F6','2017-05-12',NULL,'',10,8,'','2017-05-12 00:00:00','','2017-05-12 00:00:00','','192.168.2.251','ORACLE对外业务内测',1,'1U');
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch`
--

DROP TABLE IF EXISTS `switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `device` varchar(40) DEFAULT NULL,
  `port` int(8) DEFAULT NULL,
  `cabinet` int(4) DEFAULT NULL,
  `idc` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch`
--

LOCK TABLES `switch` WRITE;
/*!40000 ALTER TABLE `switch` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `name` varchar(80) NOT NULL COMMENT '姓名',
  `email` varchar(64) NOT NULL COMMENT '公司邮箱',
  `mobile` varchar(16) DEFAULT NULL COMMENT '手机号',
  `r_id` varchar(32) NOT NULL COMMENT '角色id,允许多个r_id,存为字符串类型',
  `is_lock` tinyint(1) unsigned NOT NULL COMMENT '是否锁定 0-未锁定 1-锁定',
  `join_date` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login` datetime DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','admin','787696331@qq.com','183105199111','1,10',0,NULL,'2017-05-12 15:43:19'),(17,'xiaoluo','e10adc3949ba59abbe56e057f20f883e','小罗','18878774260@163.com','18878774260','7,10',0,'2016-08-24 16:33:54','2016-08-26 03:16:45'),(7,'kk','e10adc3949ba59abbe56e057f20f883e','kk','7896331@qq.com','11212121','1',0,'2016-04-13 14:53:33','2016-08-26 02:57:36');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zbhost`
--

DROP TABLE IF EXISTS `zbhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zbhost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmdb_hostid` int(11) DEFAULT NULL,
  `hostid` int(11) DEFAULT NULL,
  `server_run` varchar(40) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zbhost`
--

LOCK TABLES `zbhost` WRITE;
/*!40000 ALTER TABLE `zbhost` DISABLE KEYS */;
/*!40000 ALTER TABLE `zbhost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-12 17:45:59
