-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: practice
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `colname` varchar(20) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icon` varchar(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `stick` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (6,'2016-5-135','高级编程','工科','Marc',1),(8,'2018-5-254','python','工科','吕佳',0);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evangel`
--

DROP TABLE IF EXISTS `evangel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evangel` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evangel`
--

LOCK TABLES `evangel` WRITE;
/*!40000 ALTER TABLE `evangel` DISABLE KEYS */;
INSERT INTO `evangel` VALUES (1,'【报佳音】我校荣获2020年度全市高校安全稳定工作先进单位','2021-03-24','。。。\n','https://www.cqnu.edu.cn/info/1101/6893.htm'),(2,'【报佳音】我校教师获“全国巾帼建功标兵”称号','2021-03-10','。。。','https://www.cqnu.edu.cn/info/1101/6845.htm');
/*!40000 ALTER TABLE `evangel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalism`
--

DROP TABLE IF EXISTS `journalism`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journalism` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalism`
--

LOCK TABLES `journalism` WRITE;
/*!40000 ALTER TABLE `journalism` DISABLE KEYS */;
INSERT INTO `journalism` VALUES (2,'市委教育工委专职副书记覃正杰一行来校调研','2021-05-22','。。。','https://www.cqnu.edu.cn/info/1058/7247.htm'),(3,'我校召开2021年实验室建设滚动项目入库专家论证会','2021-05-21','。。。','https://www.cqnu.edu.cn/info/1058/7244.htm'),(4,'校党委中心组（扩大）学习会专题学习《中国共产党统一战线工作条','2021-05-19','。。。','https://www.cqnu.edu.cn/info/1058/7218.htm'),(5,'琼台师范学院曹阳校长一行来校调研交流','2021-05-20','。。。','https://www.cqnu.edu.cn/info/1058/7232.htm');
/*!40000 ALTER TABLE `journalism` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pattern` varchar(128) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'/',NULL,1,'所有',NULL),(2,'/home',1,1,'所有管理','Home'),(3,'/home',2,1,'公共信息','Home'),(4,'/home',2,1,'基本信息','Home'),(5,'/home',2,1,'权限管理','Home'),(6,'/journalism/**',3,1,'重师要闻','Journalism'),(7,'/evangel/**',3,1,'佳音在线','Evangel'),(8,'/special/**',3,1,'专题聚焦','Special'),(9,'/science/**',3,1,'学术动态','Science'),(10,'/subject/**',3,1,'学科建设','Subject'),(11,'/message/**',3,1,'通知公告','Message'),(12,'/teacher/**',4,1,'教师管理','Teacher'),(13,'/course/**',4,1,'课程管理','CourseManager'),(14,'/article/**',4,1,'文章管理','Article'),(15,'/user/**',5,1,'用户管理','UserManage'),(16,'/uploadvideo/**',19,1,'上传视频','Uploadvideo'),(17,'/releaselive/**',19,1,'发布直播信息','Releaselive'),(18,'/personal/**',4,1,'个人信息','Personal'),(19,'/',NULL,1,'上传功能','');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_role`
--

DROP TABLE IF EXISTS `menu_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mid` int DEFAULT NULL,
  `rid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_role`
--

LOCK TABLES `menu_role` WRITE;
/*!40000 ALTER TABLE `menu_role` DISABLE KEYS */;
INSERT INTO `menu_role` VALUES (1,3,1),(2,4,1),(3,5,1),(14,6,3),(15,7,3),(16,8,3),(17,9,3),(18,10,3),(19,11,3),(20,12,3),(21,13,3),(22,14,3),(23,15,1),(24,16,4),(25,17,4),(26,18,4),(27,18,5);
/*!40000 ALTER TABLE `menu_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'重庆师范大学2021年考核招聘博士辅导员简章','2021-05-18','。。。。。','https://www.cqnu.edu.cn/info/1050/7193.htm');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nameZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_dba','数据库管理员'),(2,'ROLE_admin','系统管理员'),(3,'ROLE_user','用户'),(4,'ROLE_teacher','教师'),(5,'ROLE_student','学生');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `science`
--

DROP TABLE IF EXISTS `science`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `science` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `science`
--

LOCK TABLES `science` WRITE;
/*!40000 ALTER TABLE `science` DISABLE KEYS */;
INSERT INTO `science` VALUES (1,'西南大学历史文化学院博士生导师徐松岩教授应邀来校讲学','2021-05-22','。。。','https://www.cqnu.edu.cn/info/1059/7251.htm'),(2,'我校承办2021“智能创新·开源共享”高峰论坛','2021-05-18','。。。','https://www.cqnu.edu.cn/info/1059/7210.htm'),(3,'四川大学历史文化学院博士生导师杨天宏教授应邀来校讲学','2021-04-30','。。。','https://www.cqnu.edu.cn/info/1059/7137.htm');
/*!40000 ALTER TABLE `science` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special`
--

DROP TABLE IF EXISTS `special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `special` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special`
--

LOCK TABLES `special` WRITE;
/*!40000 ALTER TABLE `special` DISABLE KEYS */;
INSERT INTO `special` VALUES (1,'【第一线】外国语学院党政领导赴实习基地调研走访','2021-05-24','。。。','https://www.cqnu.edu.cn/info/1060/7254.htm');
/*!40000 ALTER TABLE `special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (29,'徐昊',22,'男'),(31,'hello',23,'女'),(32,'哈哈',22,'男');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'学科专业成果丰硕 学院建设持续推进——历史与社会学院以多样活','2021-05-21','。。。','https://www.cqnu.edu.cn/info/1061/7233.htm');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `id` varchar(13) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `working` tinyint(1) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `nation` varchar(20) DEFAULT NULL,
  `native_place` varchar(20) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `major` varchar(30) DEFAULT NULL,
  `technical_post` varchar(10) DEFAULT NULL,
  `english_level` varchar(10) DEFAULT NULL,
  `computer_level` varchar(10) DEFAULT NULL,
  `hobby` varchar(30) DEFAULT NULL,
  `motto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (41,'2015356462555',40,'许轲','博士','重庆师范大学','110000,110100,110102',1,'15652355915','男','2437465431@qq.com','汉族','重庆','1980-09-18','软件工程','一级教师','','二级','运动,旅游','将来的你，\n会感谢现在努力的自己！\n加油！'),(42,'2016254651245',23,'谭娜','本科','长江师范大学','500000,500100,500105',0,'13546549582','女','249555641@qq','土家族','重庆','1998-10-19','马克思主义','高级教师','CET6','三级','冒险,旅游',''),(45,'2015264455214',54,'倪弘','硕士','华东师范大学','510000,510100,510104',0,'15659248654','女','','','',NULL,'软工','','','','学习,运动',''),(54,'1564512345612',23,'倪鸿','专科','重庆师范大学','120000,120100,120101',0,'13545645615','女','2469565431@qq.com','汉族','重庆','1989-04-06','软件工程','一级教师','CET4','二级','娱乐,冒险','');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'userID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) DEFAULT '1',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `registTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'超级管理员','18568887789','029-82881234','哈尔滨',1,'admin','$2a$10$.xEipV/k4GbHDnVX9IbRVe35Bej4CGgzcwzpMRpmb95sdBXIwAsVG',NULL),(2,'徐昊','18568123489','029-82123434','重庆',1,'xuhao','$2a$10$j.i/f4njiFN0k4TFmh5YS.IH2gtv6/h8eIIMY50BUJ/scKZdG1Ota',NULL),(3,'老王','18568123666','029-82111555','广州',1,'laowang','$2a$10$IXzNQDEYnP6iiWt1HzIFb.QeZgColRvypfCDO8hXj74s98aXgoVeO',NULL),(32,'老师',NULL,NULL,NULL,1,'teacher','$2a$10$ml5pyKqqwX6tPlWgtZi38eNIqfRSHHtwmPYi5D8Zr9uJy1VRzcs4i','2021-06-04 00:59:15'),(34,'学生',NULL,NULL,NULL,1,'student','$2a$10$2kqjzRyK5U44.X4rfjDP3.IG/zG4zEnGO4n1T312uT2h.sMdLJdXq','2021-06-04 01:20:51'),(35,'张三',NULL,NULL,NULL,1,'zhangsan','$2a$10$BlmVMq3IJd1CbT3J/AJ4nu2Xn.4XZaRG7VqoDErFWi/CgJ0Rxyfa.','2021-06-04 18:52:32');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `rid` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,2),(5,1,3),(10,32,4),(12,34,5),(13,35,3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06 21:13:45
