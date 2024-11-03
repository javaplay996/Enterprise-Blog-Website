/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmtok55
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmtok55` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmtok55`;

/*Table structure for table `bumenfenlei` */

DROP TABLE IF EXISTS `bumenfenlei`;

CREATE TABLE `bumenfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenming` varchar(200) DEFAULT NULL COMMENT '部门名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='部门分类';

/*Data for the table `bumenfenlei` */

insert  into `bumenfenlei`(`id`,`addtime`,`bumenming`) values (41,'2021-04-17 19:06:06','部门名1'),(42,'2021-04-17 19:06:06','部门名2'),(43,'2021-04-17 19:06:06','部门名3'),(44,'2021-04-17 19:06:06','部门名4'),(45,'2021-04-17 19:06:06','部门名5'),(46,'2021-04-17 19:06:06','部门名6');

/*Table structure for table `chanpinxinxi` */

DROP TABLE IF EXISTS `chanpinxinxi`;

CREATE TABLE `chanpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpintupian` varchar(200) DEFAULT NULL COMMENT '产品图片',
  `chanpinleixing` varchar(200) DEFAULT NULL COMMENT '产品类型',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `chanpintedian` varchar(200) DEFAULT NULL COMMENT '产品特点',
  `chanpinxiangqing` longtext COMMENT '产品详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinbianhao` (`chanpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='产品信息';

/*Data for the table `chanpinxinxi` */

insert  into `chanpinxinxi`(`id`,`addtime`,`chanpinbianhao`,`chanpinmingcheng`,`chanpintupian`,`chanpinleixing`,`shengchanriqi`,`chanpintedian`,`chanpinxiangqing`) values (51,'2021-04-17 19:06:06','产品编号1','产品名称1','http://localhost:8080/ssmtok55/upload/chanpinxinxi_chanpintupian1.jpg','产品类型1','2021-04-17','产品特点1','产品详情1'),(52,'2021-04-17 19:06:06','产品编号2','产品名称2','http://localhost:8080/ssmtok55/upload/chanpinxinxi_chanpintupian2.jpg','产品类型2','2021-04-17','产品特点2','产品详情2'),(53,'2021-04-17 19:06:06','产品编号3','产品名称3','http://localhost:8080/ssmtok55/upload/chanpinxinxi_chanpintupian3.jpg','产品类型3','2021-04-17','产品特点3','产品详情3'),(54,'2021-04-17 19:06:06','产品编号4','产品名称4','http://localhost:8080/ssmtok55/upload/chanpinxinxi_chanpintupian4.jpg','产品类型4','2021-04-17','产品特点4','产品详情4'),(55,'2021-04-17 19:06:06','产品编号5','产品名称5','http://localhost:8080/ssmtok55/upload/chanpinxinxi_chanpintupian5.jpg','产品类型5','2021-04-17','产品特点5','产品详情5'),(56,'2021-04-17 19:06:06','产品编号6','产品名称6','http://localhost:8080/ssmtok55/upload/chanpinxinxi_chanpintupian6.jpg','产品类型6','2021-04-17','产品特点6','产品详情6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmtok55/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmtok55/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmtok55/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusswenzhangxinxi` */

DROP TABLE IF EXISTS `discusswenzhangxinxi`;

CREATE TABLE `discusswenzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='文章信息评论表';

/*Data for the table `discusswenzhangxinxi` */

insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-17 19:06:06',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-17 19:06:06',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-17 19:06:06',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-17 19:06:06',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-17 19:06:06',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-17 19:06:06',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='企业新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-17 19:06:06','标题1','简介1','http://localhost:8080/ssmtok55/upload/news_picture1.jpg','内容1'),(92,'2021-04-17 19:06:06','标题2','简介2','http://localhost:8080/ssmtok55/upload/news_picture2.jpg','内容2'),(93,'2021-04-17 19:06:06','标题3','简介3','http://localhost:8080/ssmtok55/upload/news_picture3.jpg','内容3'),(94,'2021-04-17 19:06:06','标题4','简介4','http://localhost:8080/ssmtok55/upload/news_picture4.jpg','内容4'),(95,'2021-04-17 19:06:06','标题5','简介5','http://localhost:8080/ssmtok55/upload/news_picture5.jpg','内容5'),(96,'2021-04-17 19:06:06','标题6','简介6','http://localhost:8080/ssmtok55/upload/news_picture6.jpg','内容6');

/*Table structure for table `qiyedongtai` */

DROP TABLE IF EXISTS `qiyedongtai`;

CREATE TABLE `qiyedongtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dongtaibiaoti` varchar(200) DEFAULT NULL COMMENT '动态标题',
  `dongtaitupian` varchar(200) DEFAULT NULL COMMENT '动态图片',
  `dongtaileixing` varchar(200) DEFAULT NULL COMMENT '动态类型',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `dongtaineirong` longtext COMMENT '动态内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='企业动态';

/*Data for the table `qiyedongtai` */

insert  into `qiyedongtai`(`id`,`addtime`,`dongtaibiaoti`,`dongtaitupian`,`dongtaileixing`,`fabushijian`,`dongtaineirong`) values (61,'2021-04-17 19:06:06','动态标题1','http://localhost:8080/ssmtok55/upload/qiyedongtai_dongtaitupian1.jpg','动态类型1','2021-04-17 19:06:06','动态内容1'),(62,'2021-04-17 19:06:06','动态标题2','http://localhost:8080/ssmtok55/upload/qiyedongtai_dongtaitupian2.jpg','动态类型2','2021-04-17 19:06:06','动态内容2'),(63,'2021-04-17 19:06:06','动态标题3','http://localhost:8080/ssmtok55/upload/qiyedongtai_dongtaitupian3.jpg','动态类型3','2021-04-17 19:06:06','动态内容3'),(64,'2021-04-17 19:06:06','动态标题4','http://localhost:8080/ssmtok55/upload/qiyedongtai_dongtaitupian4.jpg','动态类型4','2021-04-17 19:06:06','动态内容4'),(65,'2021-04-17 19:06:06','动态标题5','http://localhost:8080/ssmtok55/upload/qiyedongtai_dongtaitupian5.jpg','动态类型5','2021-04-17 19:06:06','动态内容5'),(66,'2021-04-17 19:06:06','动态标题6','http://localhost:8080/ssmtok55/upload/qiyedongtai_dongtaitupian6.jpg','动态类型6','2021-04-17 19:06:06','动态内容6');

/*Table structure for table `qiyejieshao` */

DROP TABLE IF EXISTS `qiyejieshao`;

CREATE TABLE `qiyejieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieshaobiaoti` varchar(200) DEFAULT NULL COMMENT '介绍标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jieshaoleixing` varchar(200) DEFAULT NULL COMMENT '介绍类型',
  `jieshaomubiao` longtext COMMENT '介绍目标',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiyeleixing` varchar(200) DEFAULT NULL COMMENT '企业类型',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `chuanglishijian` datetime DEFAULT NULL COMMENT '创立时间',
  `jutijieshao` longtext COMMENT '具体介绍',
  `fazhanlicheng` longtext COMMENT '发展历程',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='企业介绍';

/*Data for the table `qiyejieshao` */

insert  into `qiyejieshao`(`id`,`addtime`,`jieshaobiaoti`,`fengmian`,`jieshaoleixing`,`jieshaomubiao`,`fabushijian`,`qiyemingcheng`,`qiyeleixing`,`dizhi`,`chuanglishijian`,`jutijieshao`,`fazhanlicheng`) values (31,'2021-04-17 19:06:06','介绍标题1','http://localhost:8080/ssmtok55/upload/qiyejieshao_fengmian1.jpg','介绍类型1','介绍目标1','2021-04-17 19:06:06','企业名称1','企业类型1','地址1','2021-04-17 19:06:06','具体介绍1','发展历程1'),(32,'2021-04-17 19:06:06','介绍标题2','http://localhost:8080/ssmtok55/upload/qiyejieshao_fengmian2.jpg','介绍类型2','介绍目标2','2021-04-17 19:06:06','企业名称2','企业类型2','地址2','2021-04-17 19:06:06','具体介绍2','发展历程2'),(33,'2021-04-17 19:06:06','介绍标题3','http://localhost:8080/ssmtok55/upload/qiyejieshao_fengmian3.jpg','介绍类型3','介绍目标3','2021-04-17 19:06:06','企业名称3','企业类型3','地址3','2021-04-17 19:06:06','具体介绍3','发展历程3'),(34,'2021-04-17 19:06:06','介绍标题4','http://localhost:8080/ssmtok55/upload/qiyejieshao_fengmian4.jpg','介绍类型4','介绍目标4','2021-04-17 19:06:06','企业名称4','企业类型4','地址4','2021-04-17 19:06:06','具体介绍4','发展历程4'),(35,'2021-04-17 19:06:06','介绍标题5','http://localhost:8080/ssmtok55/upload/qiyejieshao_fengmian5.jpg','介绍类型5','介绍目标5','2021-04-17 19:06:06','企业名称5','企业类型5','地址5','2021-04-17 19:06:06','具体介绍5','发展历程5'),(36,'2021-04-17 19:06:06','介绍标题6','http://localhost:8080/ssmtok55/upload/qiyejieshao_fengmian6.jpg','介绍类型6','介绍目标6','2021-04-17 19:06:06','企业名称6','企业类型6','地址6','2021-04-17 19:06:06','具体介绍6','发展历程6');

/*Table structure for table `qiyexiangce` */

DROP TABLE IF EXISTS `qiyexiangce`;

CREATE TABLE `qiyexiangce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangcemingcheng` varchar(200) NOT NULL COMMENT '相册名称',
  `xiangceleixing` varchar(200) NOT NULL COMMENT '相册类型',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `bumenming` varchar(200) DEFAULT NULL COMMENT '部门名',
  `jianshu` varchar(200) DEFAULT NULL COMMENT '简述',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `xiangcetupian` longtext COMMENT '相册图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='企业相册';

/*Data for the table `qiyexiangce` */

insert  into `qiyexiangce`(`id`,`addtime`,`xiangcemingcheng`,`xiangceleixing`,`fengmiantu`,`bumenming`,`jianshu`,`fabushijian`,`xiangcetupian`) values (71,'2021-04-17 19:06:06','相册名称1','相册类型1','http://localhost:8080/ssmtok55/upload/qiyexiangce_fengmiantu1.jpg','部门名1','简述1','2021-04-17 19:06:06','相册图片1'),(72,'2021-04-17 19:06:06','相册名称2','相册类型2','http://localhost:8080/ssmtok55/upload/qiyexiangce_fengmiantu2.jpg','部门名2','简述2','2021-04-17 19:06:06','相册图片2'),(73,'2021-04-17 19:06:06','相册名称3','相册类型3','http://localhost:8080/ssmtok55/upload/qiyexiangce_fengmiantu3.jpg','部门名3','简述3','2021-04-17 19:06:06','相册图片3'),(74,'2021-04-17 19:06:06','相册名称4','相册类型4','http://localhost:8080/ssmtok55/upload/qiyexiangce_fengmiantu4.jpg','部门名4','简述4','2021-04-17 19:06:06','相册图片4'),(75,'2021-04-17 19:06:06','相册名称5','相册类型5','http://localhost:8080/ssmtok55/upload/qiyexiangce_fengmiantu5.jpg','部门名5','简述5','2021-04-17 19:06:06','相册图片5'),(76,'2021-04-17 19:06:06','相册名称6','相册类型6','http://localhost:8080/ssmtok55/upload/qiyexiangce_fengmiantu6.jpg','部门名6','简述6','2021-04-17 19:06:06','相册图片6');

/*Table structure for table `qiyexinxi` */

DROP TABLE IF EXISTS `qiyexinxi`;

CREATE TABLE `qiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiyeleixing` varchar(200) DEFAULT NULL COMMENT '企业类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `chuanglishijian` date DEFAULT NULL COMMENT '创立时间',
  `qiyejieshao` longtext COMMENT '企业介绍',
  `xiangqing` longtext COMMENT '详情',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业信息';

/*Data for the table `qiyexinxi` */

insert  into `qiyexinxi`(`id`,`addtime`,`qiyemingcheng`,`qiyeleixing`,`fengmian`,`dizhi`,`chuanglishijian`,`qiyejieshao`,`xiangqing`,`userid`) values (21,'2021-04-17 19:06:06','企业名称1','企业类型1','http://localhost:8080/ssmtok55/upload/qiyexinxi_fengmian1.jpg','地址1','2021-04-17','企业介绍1','详情1',1),(22,'2021-04-17 19:06:06','企业名称2','企业类型2','http://localhost:8080/ssmtok55/upload/qiyexinxi_fengmian2.jpg','地址2','2021-04-17','企业介绍2','详情2',2),(23,'2021-04-17 19:06:06','企业名称3','企业类型3','http://localhost:8080/ssmtok55/upload/qiyexinxi_fengmian3.jpg','地址3','2021-04-17','企业介绍3','详情3',3),(24,'2021-04-17 19:06:06','企业名称4','企业类型4','http://localhost:8080/ssmtok55/upload/qiyexinxi_fengmian4.jpg','地址4','2021-04-17','企业介绍4','详情4',4),(25,'2021-04-17 19:06:06','企业名称5','企业类型5','http://localhost:8080/ssmtok55/upload/qiyexinxi_fengmian5.jpg','地址5','2021-04-17','企业介绍5','详情5',5),(26,'2021-04-17 19:06:06','企业名称6','企业类型6','http://localhost:8080/ssmtok55/upload/qiyexinxi_fengmian6.jpg','地址6','2021-04-17','企业介绍6','详情6',6);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'员工1','yuangong','员工','p08y9ehyhnnjs90gch681c305omcx4nw','2021-04-17 19:07:41','2021-04-17 20:07:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 19:06:06');

/*Table structure for table `wenzhangxinxi` */

DROP TABLE IF EXISTS `wenzhangxinxi`;

CREATE TABLE `wenzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `wenzhangleixing` varchar(200) NOT NULL COMMENT '文章类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianshu` varchar(200) DEFAULT NULL COMMENT '简述',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `suoshuqiye` varchar(200) DEFAULT NULL COMMENT '所属企业',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618657686483 DEFAULT CHARSET=utf8 COMMENT='文章信息';

/*Data for the table `wenzhangxinxi` */

insert  into `wenzhangxinxi`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangleixing`,`tupian`,`jianshu`,`wenzhangneirong`,`fabushijian`,`yuangonggonghao`,`yuangongxingming`,`suoshuqiye`,`bumen`,`zhiwei`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`) values (81,'2021-04-17 19:06:06','文章标题1','公司','http://localhost:8080/ssmtok55/upload/wenzhangxinxi_tupian1.jpg','简述1','文章内容1','2021-04-17 19:06:06','员工工号1','员工姓名1','所属企业1','部门1','职位1','是','',1,1),(82,'2021-04-17 19:06:06','文章标题2','公司','http://localhost:8080/ssmtok55/upload/wenzhangxinxi_tupian2.jpg','简述2','文章内容2','2021-04-17 19:06:06','员工工号2','员工姓名2','所属企业2','部门2','职位2','是','',2,2),(83,'2021-04-17 19:06:06','文章标题3','公司','http://localhost:8080/ssmtok55/upload/wenzhangxinxi_tupian3.jpg','简述3','文章内容3','2021-04-17 19:06:06','员工工号3','员工姓名3','所属企业3','部门3','职位3','是','',3,3),(84,'2021-04-17 19:06:06','文章标题4','公司','http://localhost:8080/ssmtok55/upload/wenzhangxinxi_tupian4.jpg','简述4','文章内容4','2021-04-17 19:06:06','员工工号4','员工姓名4','所属企业4','部门4','职位4','是','',4,4),(85,'2021-04-17 19:06:06','文章标题5','公司','http://localhost:8080/ssmtok55/upload/wenzhangxinxi_tupian5.jpg','简述5','文章内容5','2021-04-17 19:06:06','员工工号5','员工姓名5','所属企业5','部门5','职位5','是','',5,5),(86,'2021-04-17 19:06:06','文章标题6','公司','http://localhost:8080/ssmtok55/upload/wenzhangxinxi_tupian6.jpg','简述6','文章内容6','2021-04-17 19:06:06','员工工号6','员工姓名6','所属企业6','部门6','职位6','是','',6,6),(1618657686482,'2021-04-17 19:08:05','123','公司','','123','<p>123</p>','2021-04-17 19:08:03','员工1','员工姓名1','所属企业1','部门1','员工','否','',0,0);

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `suoshuqiye` varchar(200) DEFAULT NULL COMMENT '所属企业',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`nianling`,`touxiang`,`suoshuqiye`,`bumen`,`zhiwei`,`lianxidianhua`,`youxiang`,`shenfenzheng`) values (11,'2021-04-17 19:06:06','员工1','123456','员工姓名1','男',1,'http://localhost:8080/ssmtok55/upload/yuangong_touxiang1.jpg','所属企业1','部门1','员工','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-04-17 19:06:06','员工2','123456','员工姓名2','男',2,'http://localhost:8080/ssmtok55/upload/yuangong_touxiang2.jpg','所属企业2','部门2','员工','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-04-17 19:06:06','员工3','123456','员工姓名3','男',3,'http://localhost:8080/ssmtok55/upload/yuangong_touxiang3.jpg','所属企业3','部门3','员工','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-04-17 19:06:06','员工4','123456','员工姓名4','男',4,'http://localhost:8080/ssmtok55/upload/yuangong_touxiang4.jpg','所属企业4','部门4','员工','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-04-17 19:06:06','员工5','123456','员工姓名5','男',5,'http://localhost:8080/ssmtok55/upload/yuangong_touxiang5.jpg','所属企业5','部门5','员工','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-04-17 19:06:06','员工6','123456','员工姓名6','男',6,'http://localhost:8080/ssmtok55/upload/yuangong_touxiang6.jpg','所属企业6','部门6','员工','13823888886','773890006@qq.com','440300199606060006');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
