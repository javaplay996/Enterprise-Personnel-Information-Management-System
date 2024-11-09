/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qiyerenshiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qiyerenshiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qiyerenshiguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `cultivate` */

DROP TABLE IF EXISTS `cultivate`;

CREATE TABLE `cultivate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '培训开始时间 Search111 ',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '培训结束时间 Search111 ',
  `day_number` int(11) DEFAULT NULL COMMENT '培训天数 Search111 ',
  `cultivate_content` text COMMENT '培训内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='培训';

/*Data for the table `cultivate` */

insert  into `cultivate`(`id`,`yonghu_id`,`on_time`,`down_time`,`day_number`,`cultivate_content`,`create_time`) values (9,2,'2021-04-30 00:00:00','2021-05-01 00:00:00',1,'入职培训\r\n',NULL),(10,1,'2021-04-30 00:00:00','2021-05-08 00:00:00',8,'日常培训\r\n',NULL),(11,1,'2021-04-30 00:00:00','2021-05-08 00:00:00',9,'培训内容1\r\n',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-28 15:27:22'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-28 15:27:22'),(3,'bumen_types','部门类型名称',1,'财务部',NULL,'2021-04-28 15:27:22'),(4,'bumen_types','部门类型名称',2,'人事部',NULL,'2021-04-28 15:27:22'),(5,'bumen_types','部门类型名称',3,'研发部',NULL,'2021-04-28 15:27:22'),(6,'zhiwu_types','职位类型名称',1,'员工',NULL,'2021-04-28 15:27:22'),(7,'zhiwu_types','职位类型名称',2,'小组长',NULL,'2021-04-28 15:27:22'),(8,'zhiwu_types','职位类型名称',3,'部门主管',NULL,'2021-04-28 15:27:22'),(9,'zhaopin_types','招聘类型名称',1,'校内招聘',NULL,'2021-04-28 15:27:22'),(10,'zhaopin_types','招聘类型名称',2,'社会招聘',NULL,'2021-04-28 15:27:22'),(11,'renwu_types','任务类型名称',1,'任务类型1',NULL,'2021-04-28 15:27:22'),(12,'renwu_types','任务类型名称',2,'任务类型2',NULL,'2021-04-28 15:27:22'),(13,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-04-28 15:27:22'),(14,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-04-28 15:27:22'),(15,'liuyan_types','留言类型名称',1,'建议',NULL,'2021-04-28 15:27:22'),(16,'liuyan_types','留言类型名称',2,'投诉',NULL,'2021-04-28 15:27:22'),(17,'luyong_types','是否录用名称',1,'录用',NULL,'2021-04-28 15:27:23'),(18,'luyong_types','是否录用名称',2,'不录用',NULL,'2021-04-28 15:27:23'),(19,'luyong_types','是否录用名称',3,'待面试',NULL,'2021-04-28 15:27:23'),(20,'zhiwu_types','职位类型名称',4,'经理',NULL,'2021-04-28 16:50:46');

/*Table structure for table `fuli` */

DROP TABLE IF EXISTS `fuli`;

CREATE TABLE `fuli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuli_name` varchar(200) DEFAULT NULL COMMENT '福利名字 Search111 ',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `fuli_content` text COMMENT '福利内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='福利';

/*Data for the table `fuli` */

insert  into `fuli`(`id`,`fuli_name`,`bumen_types`,`fuli_content`,`create_time`) values (5,'福利1',2,'福利内容\r\n','2021-04-28 16:35:16'),(6,'福利2',1,'福利2的详情\r\n','2021-04-28 16:35:29'),(7,'福利3',2,'福利内容\r\n','2021-04-28 16:47:45');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'2021-04-28 16:39:53','公告1的详情\r\n','2021-04-28 16:39:53'),(4,'公告2',2,'2021-04-28 16:49:58','公告2的详情\r\n','2021-04-28 16:49:58');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言名称 Search111 ',
  `liuyan_types` int(11) DEFAULT NULL COMMENT '留言类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `liuyan_content` text COMMENT '留言详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_types`,`insert_time`,`liuyan_content`,`create_time`) values (3,1,'建议工资透明化',1,'2021-04-28 16:53:08','工资不够透明\r\n','2021-04-28 16:53:08');

/*Table structure for table `renwu` */

DROP TABLE IF EXISTS `renwu`;

CREATE TABLE `renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `renwu_name` varchar(200) DEFAULT NULL COMMENT '任务名称 Search111 ',
  `renwu_types` int(11) DEFAULT NULL COMMENT '任务类型 Search111 ',
  `renwu_time` timestamp NULL DEFAULT NULL COMMENT '任务时间',
  `renwu_content` text COMMENT '任务详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='任务';

/*Data for the table `renwu` */

insert  into `renwu`(`id`,`yonghu_id`,`renwu_name`,`renwu_types`,`renwu_time`,`renwu_content`,`insert_time`,`create_time`) values (3,2,'任务1',2,'2021-04-29 00:00:00','任务详情\r\n','2021-04-28 16:37:54','2021-04-28 16:37:54'),(4,1,'任务2',2,'2021-05-01 00:00:00','任务2的详情\r\n','2021-04-28 16:38:25','2021-04-28 16:38:25'),(5,1,'任务4',2,'2021-04-29 00:00:00','任务内容\r\n','2021-04-28 16:48:11','2021-04-28 16:48:11');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','pygqt9g5djc100f8xm93r7izvrzt8xi9','2021-04-28 15:51:51','2021-04-28 17:55:06'),(2,1,'a1','yonghu','用户','16d9n0vye6g77ja1snkkvi9w8gge9crk','2021-04-28 16:50:56','2021-04-28 17:50:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份  Search111',
  `jiben_money` decimal(10,4) DEFAULT NULL COMMENT '基本工资',
  `jiaban_money` decimal(10,4) DEFAULT NULL COMMENT '加班费',
  `jiangjin_money` decimal(10,4) DEFAULT NULL COMMENT '奖金',
  `zhufang_money` decimal(10,4) DEFAULT NULL COMMENT '住房补贴',
  `chifan_money` decimal(10,4) DEFAULT NULL COMMENT '吃饭补贴',
  `gongling_money` decimal(10,4) DEFAULT NULL COMMENT '工龄费',
  `kaoqin_money` decimal(10,4) DEFAULT NULL COMMENT '考勤费',
  `baoxianfei_money` decimal(10,4) DEFAULT NULL COMMENT '保险费',
  `wuxianyijin_money` decimal(10,4) DEFAULT NULL COMMENT '五险一金缴纳金额',
  `fakuan_money` decimal(10,4) DEFAULT NULL COMMENT '罚款',
  `shifa_money` decimal(10,4) DEFAULT NULL COMMENT '实发金额',
  `xinzi_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发放时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yonghu_id`,`month`,`jiben_money`,`jiaban_money`,`jiangjin_money`,`zhufang_money`,`chifan_money`,`gongling_money`,`kaoqin_money`,`baoxianfei_money`,`wuxianyijin_money`,`fakuan_money`,`shifa_money`,`xinzi_content`,`insert_time`,`create_time`) values (5,2,'2021-02','1000.0000','100.0000','100.0000','100.0000','100.0000','100.0000','100.0000','10.0000','10.0000','10.0000','1570.0000','无\r\n','2021-04-28 16:11:32','2021-04-28 16:11:32'),(6,1,'2021-03','1000.0000','11.0000','11.0000','1.0000','1.0000','1.0000','1.0000','1.0000','1.0000','1.0000','1023.0000','1\r\n','2021-04-28 16:12:39','2021-04-28 16:12:39'),(7,1,'2021-02','1000.0000','1.0000','1.0000','1.0000','1.0000','1.0000','1.0000','11.0000','1.0000','1.0000','993.0000','','2021-04-28 16:46:59','2021-04-28 16:46:59');

/*Table structure for table `yingpin` */

DROP TABLE IF EXISTS `yingpin`;

CREATE TABLE `yingpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yingpin_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yingpin_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yingpin_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yingpin_zhiwei` varchar(200) DEFAULT NULL COMMENT '应聘职位 Search111 ',
  `yonghu_content` text COMMENT '详情',
  `luyong_types` int(11) DEFAULT NULL COMMENT '是否录用',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '应聘时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='应聘';

/*Data for the table `yingpin` */

insert  into `yingpin`(`id`,`yingpin_name`,`yingpin_phone`,`yingpin_id_number`,`yonghu_photo`,`sex_types`,`yingpin_zhiwei`,`yonghu_content`,`luyong_types`,`insert_time`,`create_time`) values (1,'张1','17703786931','410224199610232011','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1619599158953.jpg',2,'研发部主管','',3,'2021-04-28 16:39:41','2021-04-28 16:39:41'),(2,'张2','17703786969','410224199610232022','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1619599758333.jpg',2,'研发部员工','面试还可以\r\n',1,'2021-04-28 16:49:31','2021-04-28 16:49:31');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwu_types` int(11) DEFAULT NULL COMMENT '职务 Search111 ',
  `chushengriqi_time` timestamp NULL DEFAULT NULL COMMENT '出生日期',
  `ruzhi_time` timestamp NULL DEFAULT NULL COMMENT '入职时间 Search111 ',
  `yonghu_content` text COMMENT '详细介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`bumen_types`,`zhiwu_types`,`chushengriqi_time`,`ruzhi_time`,`yonghu_content`,`create_time`) values (1,'a1','123456','1112','张1','17703786901','410224199610232001','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1619596554957.jpg',1,2,1,'2021-04-14 00:00:00','2021-04-30 00:00:00','用户1的详细介绍\r\n','2021-04-28 15:58:13'),(2,'a2','123456','222','张2','17703786902','410224199610232002','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1619596975378.jpg',2,2,2,'2021-04-05 00:00:00','2021-04-21 00:00:00','无\r\n','2021-04-28 16:03:28'),(3,'a3','123456','333','张三','17703786903','410224199610232003','http://localhost:8080/qiyerenshiguanli/file/download?fileName=1619599489730.jpg',1,2,3,'2021-04-12 00:00:00','2021-04-23 00:00:00','无\r\n','2021-04-28 16:45:16');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘名字 Search111 ',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘类型 Search111 ',
  `zhaopin_time` timestamp NULL DEFAULT NULL COMMENT '招聘时间',
  `zhaopin_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_content` text COMMENT '招聘详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`zhaopin_name`,`zhaopin_types`,`zhaopin_time`,`zhaopin_number`,`zhaopin_content`,`insert_time`,`create_time`) values (3,'招聘1',1,'2021-04-21 00:00:00',3,'招聘详情\r\n','2021-04-28 16:38:55','2021-04-28 16:38:55'),(4,'招聘2',2,'2021-04-30 00:00:00',3,'招聘内容\r\n','2021-04-28 16:48:39','2021-04-28 16:48:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
