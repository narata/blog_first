-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: blog_first
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add user',2,'add_user'),(5,'Can change user',2,'change_user'),(6,'Can delete user',2,'delete_user'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add category',7,'add_category'),(20,'Can change category',7,'change_category'),(21,'Can delete category',7,'delete_category'),(22,'Can add tag',8,'add_tag'),(23,'Can change tag',8,'change_tag'),(24,'Can delete tag',8,'delete_tag'),(25,'Can add post',9,'add_post'),(26,'Can change post',9,'change_post'),(27,'Can delete post',9,'delete_post'),(28,'Can add comment',10,'add_comment'),(29,'Can change comment',10,'change_comment'),(30,'Can delete comment',10,'delete_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$WeRYhE3kDk5D$KpuAKkkkj7x7TBlfL9N3+gY1uXmv3njmD7EZHrnpu/Y=','2018-04-01 21:01:48.916423',1,'narata','','','jtnarata@163.com',1,1,'2018-04-01 11:35:32.185400');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'category test');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `body` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `excerpt` varchar(200) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'title test','body test','2018-03-01 11:39:00.000000','2018-03-01 11:39:00.000000','',1,1,1),(2,'title test2','body test2','2018-04-01 20:38:00.000000','2018-04-01 20:38:00.000000','',1,1,0),(3,'Markdown 测试','# 一级标题\r\n\r\n## 二级标题\r\n\r\n### 三级标题\r\n\r\n- 列表项1\r\n- 列表项2\r\n- 列表项3\r\n\r\n> 这是一段引用\r\n\r\n```python\r\ndef detail(request, pk):  \r\n    post = get_object_or_404(Post, pk=pk)  \r\n    post.body = markdown.markdown(post.body,  \r\n                                  extensions=[  \r\n                                      \'markdown.extensions.extra\',  \r\n                                      \'markdown.extensions.codehilite\',  \r\n                                      \'markdown.extensions.toc\',  \r\n                                  ])  \r\n    return render(request, \'blog/detail.html\', context={\'post\': post})  \r\n```','2018-04-02 14:02:00.000000','2018-04-02 14:02:00.000000','',1,1,20),(4,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,3),(5,'title test','body test','2018-03-01 11:39:00.000000','2018-03-01 11:39:00.000000','',1,1,0),(6,'title test2','body test2','2018-04-01 20:38:00.000000','2018-04-01 20:38:00.000000','',1,1,0),(7,'Markdown 测试','# 一级标题\r\n\r\n## 二级标题\r\n\r\n### 三级标题\r\n\r\n- 列表项1\r\n- 列表项2\r\n- 列表项3\r\n\r\n> 这是一段引用\r\n\r\n```python\r\ndef detail(request, pk):  \r\n    post = get_object_or_404(Post, pk=pk)  \r\n    post.body = markdown.markdown(post.body,  \r\n                                  extensions=[  \r\n                                      \'markdown.extensions.extra\',  \r\n                                      \'markdown.extensions.codehilite\',  \r\n                                      \'markdown.extensions.toc\',  \r\n                                  ])  \r\n    return render(request, \'blog/detail.html\', context={\'post\': post})  \r\n```','2018-04-02 14:02:00.000000','2018-04-02 14:02:00.000000','',1,1,19),(8,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1),(9,'title test','body test','2018-03-01 11:39:00.000000','2018-03-01 11:39:00.000000','',1,1,0),(10,'title test2','body test2','2018-04-01 20:38:00.000000','2018-04-01 20:38:00.000000','',1,1,0),(11,'Markdown 测试','# 一级标题\r\n\r\n## 二级标题\r\n\r\n### 三级标题\r\n\r\n- 列表项1\r\n- 列表项2\r\n- 列表项3\r\n\r\n> 这是一段引用\r\n\r\n```python\r\ndef detail(request, pk):  \r\n    post = get_object_or_404(Post, pk=pk)  \r\n    post.body = markdown.markdown(post.body,  \r\n                                  extensions=[  \r\n                                      \'markdown.extensions.extra\',  \r\n                                      \'markdown.extensions.codehilite\',  \r\n                                      \'markdown.extensions.toc\',  \r\n                                  ])  \r\n    return render(request, \'blog/detail.html\', context={\'post\': post})  \r\n```','2018-04-02 14:02:00.000000','2018-04-02 14:02:00.000000','',1,1,19),(12,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1),(13,'title test','body test','2018-03-01 11:39:00.000000','2018-03-01 11:39:00.000000','',1,1,0),(14,'title test2','body test2','2018-04-01 20:38:00.000000','2018-04-01 20:38:00.000000','',1,1,0),(15,'Markdown 测试','# 一级标题\r\n\r\n## 二级标题\r\n\r\n### 三级标题\r\n\r\n- 列表项1\r\n- 列表项2\r\n- 列表项3\r\n\r\n> 这是一段引用\r\n\r\n```python\r\ndef detail(request, pk):  \r\n    post = get_object_or_404(Post, pk=pk)  \r\n    post.body = markdown.markdown(post.body,  \r\n                                  extensions=[  \r\n                                      \'markdown.extensions.extra\',  \r\n                                      \'markdown.extensions.codehilite\',  \r\n                                      \'markdown.extensions.toc\',  \r\n                                  ])  \r\n    return render(request, \'blog/detail.html\', context={\'post\': post})  \r\n```','2018-04-02 14:02:00.000000','2018-04-02 14:02:00.000000','',1,1,19),(16,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1),(17,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1),(18,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1),(19,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1),(20,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1),(21,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1),(22,'习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植树活动时强调，绿化祖国要坚持以人民为中心的发展思想，广泛开展国土绿化行动，人人出力，日积月累，让祖国大地不断绿起来美起来。\r\n\r\n　　春风送暖，万物勃发。上午10时许，党和国家领导人习近平、李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山等集体乘车，来到北京市通州区张家湾镇，同首都群众一起参加义务植树活动。\r\n\r\n　　植树点位于北京城市副中心的城市绿心范围内，紧邻大运河森林公园，面积约300亩，原来是厂房、果园和停车场，现规划为城市绿地，未来将成为大运河文化带上景观建设的重要节点。\r\n\r\n　　一下车，习近平就拿起铁锹走向植树地点。正在这里植树的干部群众看见总书记来了，一边热烈鼓掌一边热情问好。习近平向大家挥手致意，随后同北京市、国家林业和草原局负责同志以及首都干部群众、少先队员一起忙碌起来。\r\n\r\n　　挥锹铲土、填入树苗、培实新土……习近平接连种下白皮松、西府海棠、红瑞木、玉兰、紫叶李。他一边同少先队员提水浇灌，一边询问孩子们学习生活和体育锻炼情况，叮嘱他们从小热爱劳动，培养爱护环境、爱绿植绿护绿的意识。\r\n\r\n　　植树现场一片热火朝天景象。参加劳动的领导同志同大家一起扶苗、培土、围堰、浇灌，还不时同身边的干部群众交流加强生态建设、推动绿色发展的看法。\r\n\r\n　　植树期间，习近平同参加植树的干部群众谈起造林绿化和生态环保工作。他强调，植树造林历来是中华民族的优良传统。今天，我们来这里植树既是履行法定义务，也是建设美丽中国、推进生态文明建设、改善民生福祉的具体行动。开展国土绿化行动，既要注重数量更要注重质量，坚持科学绿化、规划引领、因地制宜，走科学、生态、节俭的绿化发展之路，久久为功、善做善成，不断扩大森林面积，不断提高森林质量，不断提升生态系统质量和稳定性。我们既要着力美化环境，又要让人民群众舒适地生活在其中，同美好环境融为一体。\r\n\r\n　　习近平指出，各级领导干部要率先垂范、身体力行，以实际行动引领带动广大干部群众像对待生命一样对待生态环境，持之以恒开展义务植树，踏踏实实抓好绿化工程，丰富义务植树尽责形式，人人出力，日积月累，让我们美丽的祖国更加美丽。前人栽树，后人乘凉，我们这一代人就是要用自己的努力造福子孙后代。\r\n\r\n　　在京中共中央政治局委员、中央书记处书记、国务委员等参加植树活动。','2018-04-02 19:09:00.000000','2018-04-02 19:09:00.000000','新华社北京4月2日电（记者张晓松、林晖）中共中央总书记、国家主席、中央军委主席习近平2日上午在参加首都义务植',1,1,1);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_tags`
--

DROP TABLE IF EXISTS `blog_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_tags_post_id_4925ec37_uniq` (`post_id`,`tag_id`),
  KEY `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_post_tags_post_id_a1c71c8a_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  CONSTRAINT `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_tags`
--

LOCK TABLES `blog_post_tags` WRITE;
/*!40000 ALTER TABLE `blog_post_tags` DISABLE KEYS */;
INSERT INTO `blog_post_tags` VALUES (3,1,1),(4,2,1),(1,3,1),(2,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,2),(9,9,2),(10,10,2);
/*!40000 ALTER TABLE `blog_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'tag test'),(2,'tag_2');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment`
--

DROP TABLE IF EXISTS `comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_post_id_96a9ac05_fk_blog_post_id` (`post_id`),
  CONSTRAINT `comments_comment_post_id_96a9ac05_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment`
--

LOCK TABLES `comments_comment` WRITE;
/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
INSERT INTO `comments_comment` VALUES (1,'黄健','jtnarata@163.com','http://www.narata.com','测试一下','2018-04-02 15:56:31.472065',3);
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-04-02 14:03:06.062350','3','Markdown 测试',1,'[{\"added\": {}}]',9,1),(2,'2018-04-02 14:07:43.152108','3','Markdown 测试',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',9,1),(3,'2018-04-02 14:08:51.755636','3','Markdown 测试',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',9,1),(4,'2018-04-02 15:02:05.783529','1','title test',2,'[{\"changed\": {\"fields\": [\"created_time\", \"modified_time\"]}}]',9,1),(5,'2018-04-02 15:02:45.632448','1','title test',2,'[{\"changed\": {\"fields\": [\"created_time\", \"modified_time\"]}}]',9,1),(6,'2018-04-02 17:18:53.305527','3','Markdown 测试',2,'[{\"changed\": {\"fields\": [\"excerpt\"]}}]',9,1),(7,'2018-04-02 17:18:59.040322','2','title test2',2,'[{\"changed\": {\"fields\": [\"created_time\", \"modified_time\", \"excerpt\"]}}]',9,1),(8,'2018-04-02 17:19:05.729807','1','title test',2,'[{\"changed\": {\"fields\": [\"excerpt\"]}}]',9,1),(9,'2018-04-02 19:09:45.300248','4','习近平：像对待生命一样对待生态环境 让祖国大地不断绿起来美起来',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(2,'auth','user'),(7,'blog','category'),(9,'blog','post'),(8,'blog','tag'),(10,'comments','comment'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-01 11:23:39.323163'),(2,'auth','0001_initial','2018-04-01 11:23:39.727457'),(3,'admin','0001_initial','2018-04-01 11:23:39.865556'),(4,'admin','0002_logentry_remove_auto_add','2018-04-01 11:23:39.891598'),(5,'contenttypes','0002_remove_content_type_name','2018-04-01 11:23:40.029671'),(6,'auth','0002_alter_permission_name_max_length','2018-04-01 11:23:40.083730'),(7,'auth','0003_alter_user_email_max_length','2018-04-01 11:23:40.143752'),(8,'auth','0004_alter_user_username_opts','2018-04-01 11:23:40.161767'),(9,'auth','0005_alter_user_last_login_null','2018-04-01 11:23:40.212804'),(10,'auth','0006_require_contenttypes_0002','2018-04-01 11:23:40.222837'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-01 11:23:40.245852'),(12,'auth','0008_alter_user_username_max_length','2018-04-01 11:23:40.295882'),(13,'blog','0001_initial','2018-04-01 11:23:40.522051'),(14,'sessions','0001_initial','2018-04-01 11:23:40.564081'),(15,'comments','0001_initial','2018-04-02 15:20:17.105401'),(16,'blog','0002_post_views','2018-04-02 17:12:34.569819');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ccry8qoywz2v4lz4t4jy7s3aq9pjauwg','MmE0NTI0ZTYxZTYzMTkxYTQ0OWY3Zjg4NTRiZjk4NzA3MDcwMWNkZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzRlOWIwNDhiNzVhNjRiYzUyNTc3ZTQwZGI2NWJkYTk4OWE0ZTViIn0=','2018-04-15 21:01:48.922445');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-04  0:37:18
