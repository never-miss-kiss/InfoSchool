/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : hamischool

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-06-05 08:40:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `admin_authority_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_authority`
-- ----------------------------
DROP TABLE IF EXISTS `admin_authority`;
CREATE TABLE `admin_authority` (
  `authority_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_authority
-- ----------------------------
INSERT INTO `admin_authority` VALUES ('1', 'root');
INSERT INTO `admin_authority` VALUES ('2', '系统管理员');
INSERT INTO `admin_authority` VALUES ('3', '学校管理员');
INSERT INTO `admin_authority` VALUES ('4', '普通管理员');

-- ----------------------------
-- Table structure for `application_state`
-- ----------------------------
DROP TABLE IF EXISTS `application_state`;
CREATE TABLE `application_state` (
  `application_state_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`application_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of application_state
-- ----------------------------
INSERT INTO `application_state` VALUES ('1', '通过');
INSERT INTO `application_state` VALUES ('2', '不通过');
INSERT INTO `application_state` VALUES ('3', '未处理');
INSERT INTO `application_state` VALUES ('4', '处理中');

-- ----------------------------
-- Table structure for `forum_comment_reply`
-- ----------------------------
DROP TABLE IF EXISTS `forum_comment_reply`;
CREATE TABLE `forum_comment_reply` (
  `forum_comment_reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commented_user_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `forum_post_comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`forum_comment_reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_comment_reply
-- ----------------------------
INSERT INTO `forum_comment_reply` VALUES ('1', '膜拜大神。我的python就是在这里学的', '1', '2', '2018-06-13 20:17:20', '2');
INSERT INTO `forum_comment_reply` VALUES ('2', '谌杨谌杨4 个月前\r\n给大佬递茶', '2', '3', '2018-06-01 20:17:23', '3');
INSERT INTO `forum_comment_reply` VALUES ('3', '网站超棒的！站长加油~！', '3', '4', '2018-06-01 20:17:27', '4');
INSERT INTO `forum_comment_reply` VALUES ('4', '厉害 热度很高 也有一定质量 做成这样很厉害啊', '4', '5', '2018-06-01 20:17:24', '1');
INSERT INTO `forum_comment_reply` VALUES ('5', 'j2ee的课用的就是w3cschool', '5', '1', '2018-06-01 20:17:29', '2');
INSERT INTO `forum_comment_reply` VALUES ('6', '请问头像是本人么，我在一个群里看到同样的头像', '4', '2', '2018-06-01 20:17:32', '3');
INSERT INTO `forum_comment_reply` VALUES ('7', '相当赞的基础技术知识库，业界良心', '4', '3', '2018-06-01 20:17:30', '4');
INSERT INTO `forum_comment_reply` VALUES ('8', '貌似docker我还向里面贡献过笔记', '2', '1', '2018-06-01 20:17:33', '1');
INSERT INTO `forum_comment_reply` VALUES ('9', '很棒的网站', '3', '2', '2018-06-10 20:17:39', '2');
INSERT INTO `forum_comment_reply` VALUES ('10', '我还以为菜鸟没人维护了。没想到竟然还有人维护，666', '1', '3', '2018-06-26 20:17:36', '3');

-- ----------------------------
-- Table structure for `forum_post`
-- ----------------------------
DROP TABLE IF EXISTS `forum_post`;
CREATE TABLE `forum_post` (
  `forum_post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `content` mediumblob,
  `release_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(12) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `is_top` char(1) DEFAULT NULL,
  `is_advertisement` char(1) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`forum_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_post
-- ----------------------------

-- ----------------------------
-- Table structure for `forum_post_collection`
-- ----------------------------
DROP TABLE IF EXISTS `forum_post_collection`;
CREATE TABLE `forum_post_collection` (
  `forum_post_collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `forum_post_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`forum_post_collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_post_collection
-- ----------------------------
INSERT INTO `forum_post_collection` VALUES ('1', '1', '2', '2018-06-01 20:19:18');
INSERT INTO `forum_post_collection` VALUES ('2', '2', '2', '2018-06-01 20:19:20');
INSERT INTO `forum_post_collection` VALUES ('3', '3', '2', '2018-06-01 20:19:21');
INSERT INTO `forum_post_collection` VALUES ('4', '4', '3', '2018-06-01 20:19:23');
INSERT INTO `forum_post_collection` VALUES ('5', '5', '4', '2018-06-01 20:19:24');
INSERT INTO `forum_post_collection` VALUES ('6', '1', '5', '2018-06-01 20:19:27');
INSERT INTO `forum_post_collection` VALUES ('7', '2', '6', '2018-06-01 20:19:29');
INSERT INTO `forum_post_collection` VALUES ('8', '3', '1', '2018-06-01 20:19:33');
INSERT INTO `forum_post_collection` VALUES ('9', '3', '2', '2018-06-01 20:19:31');
INSERT INTO `forum_post_collection` VALUES ('10', '3', '3', '2018-06-01 20:19:35');

-- ----------------------------
-- Table structure for `forum_post_comment`
-- ----------------------------
DROP TABLE IF EXISTS `forum_post_comment`;
CREATE TABLE `forum_post_comment` (
  `forum_post_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `release_time` datetime DEFAULT NULL,
  `forum_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`forum_post_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_post_comment
-- ----------------------------
INSERT INTO `forum_post_comment` VALUES ('1', '不错不错', '1', '2018-05-18 09:42:49', null);
INSERT INTO `forum_post_comment` VALUES ('2', '牛逼啊五五分', '2', '2018-05-09 09:43:25', null);
INSERT INTO `forum_post_comment` VALUES ('3', 'sjkdhajk ', '3', '2018-05-11 09:44:06', null);
INSERT INTO `forum_post_comment` VALUES ('4', '我可以摸摸你的奖杯吗', '3', '2018-05-30 09:44:52', null);
INSERT INTO `forum_post_comment` VALUES ('5', '顶你', '3', '2018-05-31 09:45:06', null);
INSERT INTO `forum_post_comment` VALUES ('6', '有什么呀', '2', '2018-05-29 09:45:21', null);
INSERT INTO `forum_post_comment` VALUES ('7', '大佬说得对', '4', '2018-05-10 09:45:39', null);
INSERT INTO `forum_post_comment` VALUES ('8', '什么', '5', '2018-05-16 09:45:57', null);
INSERT INTO `forum_post_comment` VALUES ('9', '德玛西亚', '6', '2018-05-29 09:46:11', null);
INSERT INTO `forum_post_comment` VALUES ('10', '菊花信', '5', '2018-05-29 09:46:29', null);

-- ----------------------------
-- Table structure for `forum_post_like`
-- ----------------------------
DROP TABLE IF EXISTS `forum_post_like`;
CREATE TABLE `forum_post_like` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `froum_post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_post_like
-- ----------------------------
INSERT INTO `forum_post_like` VALUES ('1', '1', '1', '2018-05-24 21:31:24');
INSERT INTO `forum_post_like` VALUES ('2', '2', '2', '2018-05-10 21:31:36');
INSERT INTO `forum_post_like` VALUES ('3', '3', '3', '2018-05-09 21:31:56');
INSERT INTO `forum_post_like` VALUES ('4', '4', '4', '2018-05-05 21:32:04');
INSERT INTO `forum_post_like` VALUES ('5', '5', '5', '2018-05-01 21:32:14');
INSERT INTO `forum_post_like` VALUES ('6', '6', '6', '2018-05-12 21:32:25');
INSERT INTO `forum_post_like` VALUES ('7', '7', '7', '2018-05-13 21:32:33');
INSERT INTO `forum_post_like` VALUES ('8', '8', '8', '2018-05-11 17:32:50');
INSERT INTO `forum_post_like` VALUES ('9', '8', '8', '2018-05-21 21:33:12');
INSERT INTO `forum_post_like` VALUES ('10', '9', '9', '2018-05-11 05:33:25');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `release_time` datetime DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `qq` int(11) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `goods_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `goods_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_category_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`goods_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('1', '所有分类');
INSERT INTO `goods_category` VALUES ('2', '代步工具');
INSERT INTO `goods_category` VALUES ('3', '手机');
INSERT INTO `goods_category` VALUES ('4', '电脑');
INSERT INTO `goods_category` VALUES ('5', '数码');
INSERT INTO `goods_category` VALUES ('6', '电器');
INSERT INTO `goods_category` VALUES ('7', '雨伞衣帽');
INSERT INTO `goods_category` VALUES ('8', '书籍');
INSERT INTO `goods_category` VALUES ('9', '其他');

-- ----------------------------
-- Table structure for `goods_collection`
-- ----------------------------
DROP TABLE IF EXISTS `goods_collection`;
CREATE TABLE `goods_collection` (
  `goods_collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`goods_collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_collection
-- ----------------------------
INSERT INTO `goods_collection` VALUES ('1', '2', '10', '2018-05-18 12:23:00');
INSERT INTO `goods_collection` VALUES ('2', '3', '10', '2018-05-18 17:23:00');
INSERT INTO `goods_collection` VALUES ('3', '1', '10', '2018-05-16 16:23:00');
INSERT INTO `goods_collection` VALUES ('4', '2', '10', '2018-05-17 12:23:00');
INSERT INTO `goods_collection` VALUES ('5', '1', '10', '2018-05-18 22:23:00');
INSERT INTO `goods_collection` VALUES ('6', '9', '10', '2018-05-17 12:23:00');
INSERT INTO `goods_collection` VALUES ('7', '9', '10', '2018-05-16 10:23:00');
INSERT INTO `goods_collection` VALUES ('8', '8', '10', '2018-05-16 11:23:00');
INSERT INTO `goods_collection` VALUES ('9', '2', '10', '2018-05-17 12:33:00');
INSERT INTO `goods_collection` VALUES ('11', '3', '10', '2018-05-17 22:23:00');

-- ----------------------------
-- Table structure for `goods_comment`
-- ----------------------------
DROP TABLE IF EXISTS `goods_comment`;
CREATE TABLE `goods_comment` (
  `goods_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `release_time` datetime DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_comment
-- ----------------------------
INSERT INTO `goods_comment` VALUES ('1', '这件商品太好了，跟新的一样。物超所值，我很喜欢。', '1', '2018-05-19 19:42:58', '1');
INSERT INTO `goods_comment` VALUES ('2', '裙子收到之后感觉小小的惊艳了一下。自从固执换了设计师之后，就没有15.16年的裙子漂亮了，还是没有放弃希望偶尔进来看看新品', '2', '2018-05-19 17:47:31', '2');
INSERT INTO `goods_comment` VALUES ('3', '东西很好，按装十分放便，我用它直接更换了十年前的笔记本的机械版，因自带系统，換好开机就行，速度大幅提升，笔记本恢复了使用价值。客服们十分热情，谢谢。', '3', '2018-05-19 19:53:27', '3');
INSERT INTO `goods_comment` VALUES ('4', '2天就到了，安装完机器开机就直接安装系统了，非常完美，值得拥有，以后加机子就找你家，全五星好评', '4', '2018-05-21 17:54:26', '3');
INSERT INTO `goods_comment` VALUES ('5', '画面质感很好，非常喜欢', '5', '2018-05-23 18:56:05', '4');
INSERT INTO `goods_comment` VALUES ('6', '整体效果很好，卖家服务周到，配件齐全', '6', '2018-04-12 22:57:16', '5');
INSERT INTO `goods_comment` VALUES ('7', '安装很快 客厅大的建议买大点的 视觉效果更好', '7', '2018-05-11 20:03:33', '6');
INSERT INTO `goods_comment` VALUES ('8', '超乎想像的满意！非常愉快的一次网购！', '8', '2018-05-18 20:04:10', '7');
INSERT INTO `goods_comment` VALUES ('9', '物美价廉！做工精细', '9', '2018-05-12 20:05:03', '8');
INSERT INTO `goods_comment` VALUES ('10', '我很喜欢，超级赞赞赞\r\n我很喜欢，超级赞赞赞', '10', '2018-05-14 20:06:02', '9');

-- ----------------------------
-- Table structure for `goods_comment_reply`
-- ----------------------------
DROP TABLE IF EXISTS `goods_comment_reply`;
CREATE TABLE `goods_comment_reply` (
  `goods_comment_reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(150) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commented_user_id` int(11) DEFAULT NULL,
  `goods_comment_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`goods_comment_reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_comment_reply
-- ----------------------------
INSERT INTO `goods_comment_reply` VALUES ('1', '真的是好，不骗你们', '1', '1', '1', '2018-05-20 11:20:35');
INSERT INTO `goods_comment_reply` VALUES ('2', '这个好像出现了点问题', '2', '2', '2', '2018-05-20 14:40:35');
INSERT INTO `goods_comment_reply` VALUES ('4', '暂时好像不是特别的有感', '4', '4', '4', '2018-05-22 15:40:35');
INSERT INTO `goods_comment_reply` VALUES ('5', '放在客厅真的很不错', '5', '5', '5', '2018-05-25 12:40:35');
INSERT INTO `goods_comment_reply` VALUES ('6', '出了点小问题，卖家反应很及时，真的很满意', '6', '6', '6', '2018-04-30 07:55:35');
INSERT INTO `goods_comment_reply` VALUES ('7', '下次还会再来', '7', '7', '7', '2018-05-20 10:45:35');
INSERT INTO `goods_comment_reply` VALUES ('8', '哎呀，出现了问题，客服却不管不问，太伤心了', '8', '8', '8', '2018-05-22 11:25:35');
INSERT INTO `goods_comment_reply` VALUES ('9', '一分钱一分货吧', '9', '9', '9', '2018-05-15 21:22:02');
INSERT INTO `goods_comment_reply` VALUES ('10', '很喜欢', '10', '10', '10', '2018-05-22 22:12:26');

-- ----------------------------
-- Table structure for `help_buy`
-- ----------------------------
DROP TABLE IF EXISTS `help_buy`;
CREATE TABLE `help_buy` (
  `help_buy_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `receipt_address` varchar(50) DEFAULT NULL,
  `receipt_address_alternative` varchar(40) DEFAULT NULL,
  `buy_address` varchar(40) DEFAULT NULL,
  `buy_address_alternative` varchar(40) DEFAULT NULL,
  `buy_demand` varchar(50) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `recommended_price` float DEFAULT NULL,
  `person_price` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_finished` char(1) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`help_buy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_buy
-- ----------------------------
INSERT INTO `help_buy` VALUES ('1', '鲜花', '郑州大学(新校区)', '北侧', '丹尼斯·大卫城-地下停车场', '大门口', '玫瑰', '25', '50', '55', '2018-06-01 19:54:06', null, null, null, null);
INSERT INTO `help_buy` VALUES ('2', '奶茶', '郑州大学(新校区)', '北侧', '郑州航空工业管理学院', '大门口', '巧克力味', '26.22', '53', '52', '2018-06-01 19:54:10', null, null, null, null);
INSERT INTO `help_buy` VALUES ('3', '水果', '郑州大学(新校区)', '北侧', '东风南路', '大门口', '西瓜', '26.22', '53', '50', '2018-06-01 19:54:13', null, null, null, null);
INSERT INTO `help_buy` VALUES ('4', 'KFC', '郑州大学(新校区)', '北侧', '紫荆名苑', '大门口', '全家桶', '17.13', '35', '35', '2018-06-01 19:54:16', null, null, null, null);
INSERT INTO `help_buy` VALUES ('5', '饮品', '郑州大学(新校区)', '教学咯', '二七广场', '大楼下面', '随便', '17.02', '35', '35', '2018-06-01 19:54:19', null, null, null, null);
INSERT INTO `help_buy` VALUES ('6', '饮品', '郑州航空工业管理学院', '东苑餐厅', '二七广场', '大楼下面', '随便', '13.52', '29', '30', '2018-06-01 19:54:21', null, null, null, null);
INSERT INTO `help_buy` VALUES ('7', '饮品', '郑州航空工业管理学院', '东苑餐厅', '河南财经政法大学', '大楼下面', '随便', '4.16', '15', '10', '2018-06-01 19:54:23', null, null, null, null);
INSERT INTO `help_buy` VALUES ('8', '饮品', '郑州航空工业管理学院', '东苑餐厅', '河南警察学院', '大楼下面', '随便', '4.26', '15', '10', '2018-06-01 19:54:26', null, null, null, null);
INSERT INTO `help_buy` VALUES ('9', '外卖', '郑州航空工业管理学院', '东苑餐厅', '百脑汇电脑城(郑州店)', '东边', '多加辣椒', '11.98', '25', '26', '2018-06-01 19:54:29', null, null, null, null);
INSERT INTO `help_buy` VALUES ('10', '外卖', '郑州航空工业管理学院', '东苑餐厅', '市体育中心', '东边', '多加辣椒', '11.98', '25', '25', '2018-06-01 19:54:30', null, null, null, null);

-- ----------------------------
-- Table structure for `help_comment`
-- ----------------------------
DROP TABLE IF EXISTS `help_comment`;
CREATE TABLE `help_comment` (
  `Help_comment__id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `release_type` tinyint(4) DEFAULT NULL,
  `help_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Help_comment__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `help_comment_reply_id`
-- ----------------------------
DROP TABLE IF EXISTS `help_comment_reply_id`;
CREATE TABLE `help_comment_reply_id` (
  `Help_comment_reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commented_user_id` int(11) DEFAULT NULL,
  `Help_post_comment_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Help_comment_reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_comment_reply_id
-- ----------------------------

-- ----------------------------
-- Table structure for `help_fetch`
-- ----------------------------
DROP TABLE IF EXISTS `help_fetch`;
CREATE TABLE `help_fetch` (
  `help_fetch_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_kind_id` varchar(10) DEFAULT NULL,
  `fetch_address` varchar(40) DEFAULT NULL,
  `remark_ship_address` varchar(40) DEFAULT NULL,
  `fetch_phone` varchar(20) DEFAULT NULL,
  `receipt_address` varchar(40) DEFAULT NULL,
  `remark_receipt_address` varchar(40) DEFAULT NULL,
  `receipt_phone` varchar(20) DEFAULT NULL,
  `fetch_information` varchar(50) DEFAULT NULL,
  `fetch_time` varchar(50) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `recommended_price` float DEFAULT NULL,
  `person_price` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_finished` char(1) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`help_fetch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_fetch
-- ----------------------------
INSERT INTO `help_fetch` VALUES ('1', '2', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '10分钟之内办好加5元', '第三节课之前', '1.5', '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);
INSERT INTO `help_fetch` VALUES ('2', '3', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '10分钟之内办好加5元', '晚上七点', null, '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);
INSERT INTO `help_fetch` VALUES ('3', '4', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '10分钟之内办好加5元', '第五节课之前', null, '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);
INSERT INTO `help_fetch` VALUES ('4', '4', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '10分钟之内办好加5元', '周三下午', null, '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);
INSERT INTO `help_fetch` VALUES ('5', '2', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '', '全天任意时间', null, '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);
INSERT INTO `help_fetch` VALUES ('6', '3', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '10分钟之内办好加5元', '周五上午10点', null, '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);
INSERT INTO `help_fetch` VALUES ('7', '3', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '10分钟之内办好加5元', '第三节课', null, '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);
INSERT INTO `help_fetch` VALUES ('8', '2', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '10分钟之内办好加5元', '第三节课之后', null, '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);
INSERT INTO `help_fetch` VALUES ('9', '2', '1号楼', '303', '13545612378', '2号楼', '505', '13612356478', '10分钟之内办好加5元', ' 明天9点', null, '2.3', '10.5', '2018-06-14 08:12:00', null, null, null, null);

-- ----------------------------
-- Table structure for `help_queue`
-- ----------------------------
DROP TABLE IF EXISTS `help_queue`;
CREATE TABLE `help_queue` (
  `help_queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `remark_infomation` varchar(50) DEFAULT NULL,
  `queue_address` varchar(40) DEFAULT NULL,
  `remark_queue_address` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `queue_time` varchar(50) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `recommended_price` float DEFAULT NULL,
  `person_price` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_finished` char(1) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`help_queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_queue
-- ----------------------------
INSERT INTO `help_queue` VALUES ('1', '代挂号', '医院挂号', '河南科技大学新区医院', '三楼左侧内科', '13323253212', '18年6月2号上午', '大约两小时', '5000', '50', '40', '2018-05-27 00:00:00', null, null, null, null);
INSERT INTO `help_queue` VALUES ('2', '美食排', '排队买商品', '河南科技大学', '三餐厅一楼15窗口', '13323253212', '18年5月29号上午11点', '大约10分钟', null, '2', '2', '2018-05-27 00:00:00', null, null, null, null);
INSERT INTO `help_queue` VALUES ('3', '业务排', '银行业务排队', '中国建设银行', '瀛洲路', '15523253212', '18年6月7号上午11点', '大约30分钟', null, '10', '10', '2018-05-27 00:00:00', null, null, null, null);
INSERT INTO `help_queue` VALUES ('4', '占座排', '图书馆占座', '郑州航院图书馆', null, '15523253212', '18年6月7号上午11点', '大约30分钟', null, '10', '10', '2018-05-27 00:00:00', null, null, null, null);

-- ----------------------------
-- Table structure for `help_send`
-- ----------------------------
DROP TABLE IF EXISTS `help_send`;
CREATE TABLE `help_send` (
  `help_send_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `send_address` varchar(40) DEFAULT NULL,
  `receipt_address` varchar(40) DEFAULT NULL,
  `send_information` varchar(100) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `recommended_price` float DEFAULT NULL,
  `person_price` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_finished` char(1) DEFAULT 'F',
  `click_count` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`help_send_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_send
-- ----------------------------
INSERT INTO `help_send` VALUES ('1', '文件', '郑州市西三环', '郑州市东三环', '文件有些着急，请快点送达', '2018-05-28 20:55:16', '10.5', '15', '25', '2018-05-28 20:57:41', '1', null, null, null);
INSERT INTO `help_send` VALUES ('2', '美食', '郑航', '华水', '请15分钟内送达', '2018-05-11 21:00:41', '1.5', '3', '3', '2018-05-11 21:01:04', '3', null, null, null);
INSERT INTO `help_send` VALUES ('3', '蛋糕', '郑州大学', '郑航', '请30分钟内送达', '2018-05-30 21:07:36', '30', '20', '30', '2018-05-30 21:07:53', '5', null, null, null);
INSERT INTO `help_send` VALUES ('4', '鲜花', '河南大学', '河南科技大学', '请30分钟内送达', '2018-05-24 21:09:03', '15', '18', '15', '2018-05-24 21:09:16', '4', null, null, null);
INSERT INTO `help_send` VALUES ('5', '手机', '华水', '郑航', '请10分钟内送达', '2018-05-12 21:09:51', '1.5', '3', '2', '2018-05-12 21:10:05', '6', null, null, null);
INSERT INTO `help_send` VALUES ('6', '钥匙', '郑航', '郑州大学', '请40分钟内送达', '2018-05-10 21:11:09', '30', '15', '20', '2018-05-10 21:11:24', '7', null, null, null);
INSERT INTO `help_send` VALUES ('7', '美食', '龙子湖', '华水', '请10分钟内送达', '2018-05-03 21:12:24', '2', '2', '2', '2018-05-03 21:12:37', '8', null, null, null);
INSERT INTO `help_send` VALUES ('8', '美食', '龙子湖', '郑航', '请4分钟内送达', '2018-05-16 21:13:04', '1', '2', '2', '2018-05-16 21:13:12', '9', null, null, null);
INSERT INTO `help_send` VALUES ('9', '鲜花', '华水', '郑航', '请5分钟内送达', '2018-04-12 21:15:18', '1.5', '2', '5', '2018-05-12 21:15:32', '5', null, null, null);
INSERT INTO `help_send` VALUES ('10', '蛋糕', '郑航', '郑州西三环', '请10分钟内送达', '2018-05-01 21:16:50', '5', '4', '3', '2018-05-01 21:17:01', '2', null, null, null);

-- ----------------------------
-- Table structure for `message_type`
-- ----------------------------
DROP TABLE IF EXISTS `message_type`;
CREATE TABLE `message_type` (
  `message_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`message_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_type
-- ----------------------------

-- ----------------------------
-- Table structure for `person_application`
-- ----------------------------
DROP TABLE IF EXISTS `person_application`;
CREATE TABLE `person_application` (
  `person_application_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `application_state_id` int(11) DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`person_application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person_application
-- ----------------------------
INSERT INTO `person_application` VALUES ('1', '张一凡', '13233433322', '232343233@qq.com', '232343233', '1.jpg', '1', '2018-05-28 14:44:34', '2018-05-28 14:49:30', null, '1');
INSERT INTO `person_application` VALUES ('2', '南城', '13325432203', '35214475@qq.com', '35214475', '2.jpg', '1', '2018-05-27 15:04:29', '2018-05-27 15:05:20', null, '1');
INSERT INTO `person_application` VALUES ('3', '北辰', '17902343349', '243287623@qq.com', '243287623', '3.jpg', '1', null, null, null, null);
INSERT INTO `person_application` VALUES ('4', '海城', '15217902365', '143252890@qq.com', '143252890', '4.jpg', '1', null, null, null, null);
INSERT INTO `person_application` VALUES ('5', '孙士林', '13233969128', '2531852077@qq.com', '2531852077', '5.jpg', '1', null, null, null, null);
INSERT INTO `person_application` VALUES ('6', '陈诚思', '13465422543', '132532532@qq.com', '132532532', '6.jpg', '2', null, null, null, null);
INSERT INTO `person_application` VALUES ('7', '黄渤', '15565422543', '147532532@qq.com', '147532532', '7.jpg', '2', null, null, null, null);
INSERT INTO `person_application` VALUES ('8', '黄晓明', '15534722543', '112832532@qq.com', '112832532', '8.jpg', '2', null, null, null, null);
INSERT INTO `person_application` VALUES ('9', '王文文', '15539733801', '23832532@qq.com', '112832532', '9.jpg', '2', null, null, null, null);
INSERT INTO `person_application` VALUES ('10', '道无涯', '15137732990', '277232532@qq.com', '277232532', '10.jpg', '2', null, null, null, null);

-- ----------------------------
-- Table structure for `reason_category`
-- ----------------------------
DROP TABLE IF EXISTS `reason_category`;
CREATE TABLE `reason_category` (
  `reason_category_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reason_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reason_category
-- ----------------------------
INSERT INTO `reason_category` VALUES ('1', '二手商品');
INSERT INTO `reason_category` VALUES ('2', '跑腿');
INSERT INTO `reason_category` VALUES ('3', '论坛');

-- ----------------------------
-- Table structure for `report`
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `reason_category_id` int(11) DEFAULT NULL,
  `reason_remark` varchar(100) DEFAULT NULL,
  `reported_user_id` int(11) DEFAULT NULL,
  `source_category_id` int(11) DEFAULT NULL,
  `source_item_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('1', '1', '2', '', '3', '3', '4', '2018-05-15 12:23:00');
INSERT INTO `report` VALUES ('2', '2', '1', '', '3', '3', '4', '2018-05-15 22:23:00');
INSERT INTO `report` VALUES ('3', '1', '3', '', '3', '3', '4', '2018-05-15 02:23:00');
INSERT INTO `report` VALUES ('4', '1', '4', '', '5', '4', '4', '2018-05-15 16:23:00');
INSERT INTO `report` VALUES ('5', '4', '2', '', '3', '3', '4', '2018-05-15 14:23:00');
INSERT INTO `report` VALUES ('6', '3', '4', '', '6', '3', '4', '2018-05-15 09:23:00');
INSERT INTO `report` VALUES ('7', '3', '2', '', '3', '3', '4', '2018-05-15 11:23:00');
INSERT INTO `report` VALUES ('8', '1', '1', '', '6', '3', '4', '2018-05-15 12:23:00');
INSERT INTO `report` VALUES ('9', '4', '3', '', '3', '4', '4', '2018-05-15 20:23:00');
INSERT INTO `report` VALUES ('10', '4', '2', '', '3', '3', '4', '2018-05-15 07:23:00');
INSERT INTO `report` VALUES ('11', '2', '2', '', '3', '7', '4', '2018-05-15 16:23:00');
INSERT INTO `report` VALUES ('12', '1', '2', '', '3', '3', '4', '2018-05-15 12:23:00');

-- ----------------------------
-- Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `school_state_id` tinyint(4) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '吉林大学', '1', null);
INSERT INTO `school` VALUES ('2', '河南大学', '2', null);
INSERT INTO `school` VALUES ('3', '辽宁大学', '3', null);
INSERT INTO `school` VALUES ('4', '北京大学', '4', null);
INSERT INTO `school` VALUES ('5', '郑州大学', '1', null);
INSERT INTO `school` VALUES ('6', '沈阳大学', '2', null);
INSERT INTO `school` VALUES ('7', '青岛大学', '3', null);
INSERT INTO `school` VALUES ('8', '合肥大学', '4', null);
INSERT INTO `school` VALUES ('9', '济宁大学', '1', null);
INSERT INTO `school` VALUES ('10', '桂林大学', '2', null);

-- ----------------------------
-- Table structure for `school_application`
-- ----------------------------
DROP TABLE IF EXISTS `school_application`;
CREATE TABLE `school_application` (
  `school_application_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `application_state_id` int(11) DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`school_application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_application
-- ----------------------------
INSERT INTO `school_application` VALUES ('1', '1', '1', 'jim', '13412378945', '131@163.com', '1231588', '2', '2018-05-16 12:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('2', '6', '3', 'jim', '13412378945', '1251@163.com', '1231588', '2', '2018-05-16 12:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('3', '4', '2', 'tom', '13412312945', '1327@163.com', '1324588', '1', '2018-05-13 12:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('4', '5', '2', 'lucy', '13412378945', '1102@163.com', '431432588', '4', '2018-05-15 12:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('5', '3', '3', 'jack', '13412368945', '21451@163.com', '3453588', '3', '2018-04-16 12:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('6', '2', '1', '五五开', '13412336945', '33693@163.com', '432231588', '3', '2018-04-26 12:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('7', '2', '6', '萨德尔', '13412378945', '247a@163.com', '5464328', '4', '2018-05-09 12:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('8', '8', '7', '路小雨', '13412587945', 'qad1@163.com', '543588', '3', '2018-05-11 12:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('9', '8', '10', '冯珠珠', '134123354945', 'wasd1@163.com', '6541588', '2', '2018-05-16 22:23:00', '2018-05-17 12:23:00', '', '1');
INSERT INTO `school_application` VALUES ('10', '7', '6', '看见爱', '134123296945', '1sda1@163.com', '5436588', '1', '2018-05-16 16:23:00', '2018-05-17 12:23:00', '', '1');

-- ----------------------------
-- Table structure for `school_state`
-- ----------------------------
DROP TABLE IF EXISTS `school_state`;
CREATE TABLE `school_state` (
  `school_state_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`school_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_state
-- ----------------------------
INSERT INTO `school_state` VALUES ('1', '未开通');
INSERT INTO `school_state` VALUES ('2', '正在审核中');
INSERT INTO `school_state` VALUES ('3', '开通');
INSERT INTO `school_state` VALUES ('4', null);

-- ----------------------------
-- Table structure for `source_category`
-- ----------------------------
DROP TABLE IF EXISTS `source_category`;
CREATE TABLE `source_category` (
  `source_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`source_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source_category
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `signature` varchar(50) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `person_application_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `state` char(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', 'f', '14', null, '13526552689', '199981771@qq.com', 'leaf', '阳光，终究穿过了心墙', '1', null, '1.jpg', null);
INSERT INTO `user` VALUES ('2', '123', 'f', '16', null, '13145678808', '1764056344@qq.com', 'umbrella', '成长是需要多少悲伤来覆盖出来的海市蜃楼', '2', null, '2.jpg', null);
INSERT INTO `user` VALUES ('3', '222', 'm', '22', null, '15188089933', 'wushan@163.com', 'grid', '你说过的话我写的到处都是却连你的影子都看不到', '3', null, '3.jpg', null);
INSERT INTO `user` VALUES ('4', '333', 'm', '43', null, '15377899422', '286639798@qq.com', 'border', '那时的书信，纯洁无瑕，带着单纯的光芒', '4', null, '4.jpg', null);
INSERT INTO `user` VALUES ('5', '444', 'm', '33', null, '13678449909', '931721403@qq.com', '鲁智深', '我不爱学校，但我爱上学。因为那里有一群傻比逗我笑', '1', null, '5.jpg', null);
INSERT INTO `user` VALUES ('6', 'qwerqwer', 'm', '22', null, '15266068808', '1899123@126', '剑圣', '多少空白填不来。  ||  多少幸福充不满。', '2', null, '6.jpg', null);
INSERT INTO `user` VALUES ('7', '777', 'm', '14', null, '15800898808', 'wushan@sina.com', '爆破鬼才', '彼此交错的爱恋，穿越了时光，穿越了轮回。', '3', null, '7.jpg', null);
INSERT INTO `user` VALUES ('8', '888', 'm', '23', null, '13244567890', 'haha@qq.com', 'pony', '谁要是动老子姐妹老子会不择手段揍死那个小表子。', '4', null, '8.jpg', null);
INSERT INTO `user` VALUES ('9', '999', 'f', '47', null, '15988086686', '1455tian@qq.com', 'jack', '当解释已经变得苍白时，我再怎么说在你眼里都是无耻的掩饰', '5', null, '9.jpg', null);
INSERT INTO `user` VALUES ('10', 'asdf1234', 'f', '46', null, '13144232343', 'kisssudy@163.com', '瑞兹', '俄相信俄们会不分离，生生世世在一起-', '6', null, '10.jpg', null);
INSERT INTO `user` VALUES ('11', null, null, '27', null, '15100809909', '15100809909@163.com', '流浪法师', '如果没有我这样的坚持 别说你喜欢我', '1', null, null, null);

-- ----------------------------
-- Table structure for `user_message`
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message` (
  `user_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `message_type_id` tinyint(4) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `parent_type` tinyint(4) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `refer` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_read` char(1) DEFAULT NULL,
  PRIMARY KEY (`user_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_message
-- ----------------------------
INSERT INTO `user_message` VALUES ('1', '1', '1', '1', '1', '1', null, null, null, '2018-06-12 09:49:02', null);
INSERT INTO `user_message` VALUES ('2', '1', '1', '1', '1', '1', null, null, null, '2018-06-13 09:49:24', null);
INSERT INTO `user_message` VALUES ('3', '2', '2', '2', '3', '2', null, null, null, '2018-06-06 09:49:31', null);
INSERT INTO `user_message` VALUES ('4', '2', '2', '2', '2', '2', '2', null, null, '2018-05-29 09:50:01', null);
INSERT INTO `user_message` VALUES ('5', '1', '2', '3', '2', '3', null, null, null, '2018-06-01 09:50:09', null);
INSERT INTO `user_message` VALUES ('6', '2', '3', '3', '3', '3', null, null, null, '2018-05-31 09:50:27', null);
INSERT INTO `user_message` VALUES ('7', '4', '2', '3', '2', '3', null, null, null, '2018-05-30 09:50:34', null);
INSERT INTO `user_message` VALUES ('8', '3', '3', '2', '2', '1', null, null, null, '2018-06-07 09:50:58', null);
INSERT INTO `user_message` VALUES ('9', '2', '3', '4', '2', '3', null, null, null, '2018-05-31 09:50:55', null);
INSERT INTO `user_message` VALUES ('10', '2', '3', '4', '2', '4', null, null, null, '2018-06-08 09:51:18', null);

-- ----------------------------
-- Procedure structure for `insert_phone`
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_phone`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_phone`()
begin
declare i int default 0;
declare phone varchar(20);
set phone = trim(concat(phone_head(),rand_num(8)));
while i<100 do
insert into user(phone) values(phone);
set i = i+1;
set phone = trim(concat(phone_head(),rand_num(8)));
end while;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `phone_head`
-- ----------------------------
DROP FUNCTION IF EXISTS `phone_head`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `phone_head`() RETURNS char(3) CHARSET utf8
begin
-- 130 131 132 133 134 135 136 137 138 139 186 187 189 151 157常用的手机头
declare head char(3);
declare bodys varchar(100) default "130 131 132 133 134 135 136 137 138 139 186 187 189 151 157";
declare starts int;
set starts = 1+floor(rand()*15)*4;    
set head = trim(substring(bodys,starts,3));
return head;
end
;;
DELIMITER ;
