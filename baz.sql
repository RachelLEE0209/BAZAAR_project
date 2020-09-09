SET NAMES utf8;
DROP DATABASE IF EXISTS baz;
CREATE DATABASE baz CHARSET utf8;
USE baz;

SET FOREIGN_KEY_CHECKS=0;

-- -------------------------------
-- Table structure for `baz_head_news`
-- -------------------------------
DROP TABLE IF EXISTS `baz_head_news`;
CREATE TABLE `baz_head_news`(
	`hnid` SMALLINT PRIMARY KEY AUTO_INCREMENT,
	`details` VARCHAR(64)
);
-- ----------------------------
-- Records of baz_index_carousel
-- ----------------------------
INSERT INTO baz_head_news VALUE 
(NULL,"Charlize Theron身着Alexander McQueen 亮相好莱坞电影奖颁奖典礼"),
(NULL,"杨超越：这个妹妹的演技可以，她的清透肌肤更可以！"),
(NULL,"博主Aimee Song的一日三餐我不关心，她家的花瓶也太好看了！"),
(NULL,"Alexandre de Paris 甜蜜宠物系列 玩转时尚圈的动物世界"),
(NULL,"金秘书和副会长撒糖啦！温柔内双果然是拿下男神的利器！"),
(NULL,"戚薇王真儿的女子图鉴：你要的奋斗的理由，都在这里"),
(NULL,"时尚芭莎电子刊|李现：梦幻24小时"),
(NULL,"国模最强广告季？惊喜还没结束！"),
(NULL,"换季要换新香水，才是精致猪猪女孩的亚子！");


-- -------------------------------
-- Table structure for `baz_index_carousel`
-- -------------------------------
DROP TABLE IF EXISTS `baz_index_carousel`;
CREATE TABLE `baz_index_carousel`(
	`icid` SMALLINT PRIMARY KEY AUTO_INCREMENT,
	`img` VARCHAR(128),
	`title` VARCHAR(64),
	`details` VARCHAR(128)
);
-- ----------------------------
-- Records of baz_index_carousel
-- ----------------------------
INSERT INTO baz_index_carousel VALUE 
(NULL,"img/carousel/zhuchaoyang.jpg","首页顶部轮播图照片1","现实世界里的朱朝阳和严良，梦想是成为黄渤和秦昊"),
(NULL,"img/carousel/necklace.jpg","首页顶部轮播图照片2","杨幂脖子上的Y2K项链，原来就是时髦精跟你的区别？"),
(NULL,"img/carousel/short-sleeve.jpg","首页顶部轮播图照片3","穿短袖不时髦？原来是买错款式了！"),
(NULL,"img/carousel/blackpink.jpg","首页顶部轮播图照片4","终于等到BLACKPINK回归！但这预告海报让我种草了同款美甲？"),
(NULL,"img/carousel/jingboran.jpg","首页顶部轮播图照片5","如果他没有做演员，我好想请他来帮我设计房子啊！");


-- -------------------------------
-- Table structure for `baz_cream`
-- -------------------------------
DROP TABLE IF EXISTS `baz_cream`;
CREATE TABLE `baz_cream`(
	`cid` SMALLINT PRIMARY KEY AUTO_INCREMENT,
	`simg` VARCHAR(128),
	`bimg` VARCHAR(128),
	`num` VARCHAR(16),
	`hot` INT,
	`spec` VARCHAR(32),
	`dtime` VARCHAR(32),
	`brand` VARCHAR(256),
	`product` VARCHAR(256),
	`User` VARCHAR(128) default null
);
-- ----------------------------
-- Records of baz_cream
-- ----------------------------



-- ---------------------------
--Table structure for `baz_receiver_address`
-- ---------------------------
DROP TABLE IF EXISTS `baz_receiver_address`;
CREATE TABLE `baz_receiver_address` (
	`aid` int(11) PRIMARY KEY auto_increment,
	`user_id` INT ,
	`receiver` VARCHAR(16),
	`province` VARCHAR(16),
	`city` VARCHAR(16),
	`county` VARCHAR(16),
	`cellphone` VARCHAR(16),
	`fixedphone` VARCHAR(16),
	`postcode` CHAR (6),
	`tag` VARCHAR(16),
	`is_default` boolean
);


-- ----------------------------
 --Records off baz_receiver_address
 -- ---------------------------


-- ----------------------------
-- Table structure for `baz_user`
-- ----------------------------
DROP TABLE IF EXISTS `baz_user`;
CREATE TABLE `baz_user` (
  `uid` int(11) NOT NULL PRIMARY KEY auto_increment,
  `uname` varchar(32) NOT NULL,
  `upwd` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(16) default NULL UNIQUE,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL
  
);
-- ----------------------------
-- Records of baz_user
-- ----------------------------
INSERT INTO `baz_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/01.png', '丁春秋', '0');
INSERT INTO `baz_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/02.png', '当当喵', '1');
INSERT INTO `baz_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/03.png', '窦志强', '1');
INSERT INTO `baz_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/04.png', '秦小雅', '0');
INSERT INTO `baz_user` VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796', null, null, null);
INSERT INTO `baz_user` VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', null, null, null);
INSERT INTO `baz_user` VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', null, null, null);
INSERT INTO `baz_user` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null, null, null);
INSERT INTO `baz_user` VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', null, null, null);
INSERT INTO `baz_user` VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', null, null, null);
INSERT INTO `baz_user` VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null, null, null);
INSERT INTO `baz_user` VALUES ('12', 'siyongbo', '900427', '616188545@qq.com', '18447103998', null, null, null);
INSERT INTO `baz_user` VALUES ('13', 'qwerty', '123456', '1091256014@qq.com', '15617152367', null, null, null);
INSERT INTO `baz_user` VALUES ('14', 'dingziqiang', '456456', '996534706@qq.com', '15567502520', null, null, null);
INSERT INTO `baz_user` VALUES ('15', 'anqila', 'huang123', '471062503@qq.com', '18898405759', null, null, null);

