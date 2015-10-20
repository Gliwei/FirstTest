/*
 Navicat MySQL Data Transfer

 Source Server         : MySql
 Source Server Version : 50537
 Source Host           : 10.211.55.5
 Source Database       : git

 Target Server Version : 50537
 File Encoding         : utf-8

 Date: 07/14/2015 22:51:42 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Brand`
-- ----------------------------
DROP TABLE IF EXISTS `Brand`;
CREATE TABLE `Brand` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `Brand`
-- ----------------------------
BEGIN;
INSERT INTO `Brand` VALUES ('1', '0', 'admin', '2015-07-05 00:31:33', '2015-07-05 00:31:05', 'Apple', '苹果');
COMMIT;

-- ----------------------------
--  Table structure for `Commodity`
-- ----------------------------
DROP TABLE IF EXISTS `Commodity`;
CREATE TABLE `Commodity` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sku` varchar(30) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `subtitle` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `salePrice` decimal(10,0) NOT NULL,
  `costPrice` decimal(10,0) NOT NULL,
  `mainPicture` varchar(100) COLLATE utf8_bin NOT NULL,
  `htmlDescription` longtext COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `Commodity`
-- ----------------------------
BEGIN;
INSERT INTO `Commodity` VALUES ('1', '0', 'admin', '2015-07-05 18:51:02', '2015-07-04 18:08:48', 'SKU000001', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('2', '0', 'admon', '2015-07-05 18:51:25', '2015-07-05 18:36:49', 'SKU000002', 'Macbook Pro', '苹果专业版笔记本电脑', '12000', '10', 'http://img12.360buyimg.com/n7/jfs/t1645/308/58960101/79882/caad6ef0/556c41eaN0161b8cf.jpg', null), ('3', '0', 'admon', '2015-07-05 18:51:48', '2015-07-05 18:38:05', 'SKU000003', 'iPad Air ', '超级苍蝇拍', '3000', '10', 'http://img10.360buyimg.com/n7/jfs/t1129/207/547049037/104830/1ccccf38/552e21ecNad7a0962.jpg', null), ('4', '0', 'admin', '2015-07-05 18:51:58', '2015-07-05 18:39:27', 'SKU000004', 'iTouch', '不知为何物', '1000', '10', 'http://img11.360buyimg.com/n7/jfs/t781/47/852767220/966328/345bac2b/55519e04Nf5a5c947.jpg', null), ('5', '0', 'admin', '2015-07-05 18:52:01', '2015-07-05 18:40:15', 'SKU000005', 'iPhoto', '什么玩意', '50', '19', 'http://img12.360buyimg.com/n7/jfs/t544/169/572435024/43440/8dbbe424/5473167bN4783dfc0.jpg', null), ('7', '0', 'admin', '2015-07-12 11:37:42', '2015-07-04 18:08:48', 'SKU000006', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('8', '0', 'admin', '2015-07-12 11:37:45', '2015-07-04 18:08:48', 'SKU000007', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('9', '0', 'admin', '2015-07-12 11:37:48', '2015-07-04 18:08:48', 'SKU000008', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('10', '0', 'admin', '2015-07-12 11:37:52', '2015-07-04 18:08:48', 'SKU000009', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('11', '0', 'admin', '2015-07-12 11:37:57', '2015-07-04 18:08:48', 'SKU000010', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('12', '0', 'admin', '2015-07-12 11:38:00', '2015-07-04 18:08:48', 'SKU000011', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('13', '0', 'admin', '2015-07-12 11:38:05', '2015-07-04 18:08:48', 'SKU000012', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('14', '0', 'admin', '2015-07-12 11:38:09', '2015-07-04 18:08:48', 'SKU000013', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('15', '0', 'admin', '2015-07-12 11:38:13', '2015-07-04 18:08:48', 'SKU000014', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('16', '0', 'admin', '2015-07-12 11:38:17', '2015-07-04 18:08:48', 'SKU000015', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('17', '0', 'admin', '2015-07-12 11:38:25', '2015-07-04 18:08:48', 'SKU000016', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('18', '0', 'admin', '2015-07-12 11:38:29', '2015-07-04 18:08:48', 'SKU000017', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('19', '0', 'admin', '2015-07-12 11:38:33', '2015-07-04 18:08:48', 'SKU000018', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('20', '0', 'admin', '2015-07-12 11:38:38', '2015-07-04 18:08:48', 'SKU000019', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('21', '0', 'admin', '2015-07-12 11:38:44', '2015-07-04 18:08:48', 'SKU000020', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('22', '0', 'admin', '2015-07-12 11:38:48', '2015-07-04 18:08:48', 'SKU000021', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('23', '0', 'admin', '2015-07-12 11:38:54', '2015-07-04 18:08:48', 'SKU000022', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('24', '0', 'admin', '2015-07-12 11:38:57', '2015-07-04 18:08:48', 'SKU000023', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('25', '0', 'admin', '2015-07-12 11:39:01', '2015-07-04 18:08:48', 'SKU000024', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('26', '0', 'admin', '2015-07-12 11:39:05', '2015-07-04 18:08:48', 'SKU000025', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('27', '0', 'admin', '2015-07-12 11:39:08', '2015-07-04 18:08:48', 'SKU000026', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('28', '0', 'admin', '2015-07-12 11:39:12', '2015-07-04 18:08:48', 'SKU000027', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('29', '0', 'admin', '2015-07-12 11:39:15', '2015-07-04 18:08:48', 'SKU000028', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('30', '0', 'admin', '2015-07-12 11:39:20', '2015-07-04 18:08:48', 'SKU000029', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('31', '0', 'admin', '2015-07-12 11:39:25', '2015-07-04 18:08:48', 'SKU000030', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('32', '0', 'admin', '2015-07-12 11:39:29', '2015-07-04 18:08:48', 'SKU000031', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('33', '0', 'admin', '2015-07-12 11:39:36', '2015-07-04 18:08:48', 'SKU000032', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('34', '0', 'admin', '2015-07-12 11:39:39', '2015-07-04 18:08:48', 'SKU000033', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null), ('35', '0', 'admin', '2015-07-12 11:39:43', '2015-07-04 18:08:48', 'SKU000034', 'iPhone6', '爱疯6', '6000', '5000', 'http://img11.360buyimg.com/n7/jfs/t1396/125/52982947/964328/e053ebc0/55519e03N99a745ed.jpg', null);
COMMIT;

-- ----------------------------
--  Table structure for `G_Brand`
-- ----------------------------
DROP TABLE IF EXISTS `G_Brand`;
CREATE TABLE `G_Brand` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `G_Brand`
-- ----------------------------
BEGIN;
INSERT INTO `G_Brand` VALUES ('1', '0', 'admin', '2015-07-12 18:34:13', '2015-07-12 18:30:28', 'Apple', '苹果 美国 完美'), ('2', '0', 'admin', '2015-07-12 18:34:15', '2015-07-12 18:31:49', '魅族', 'Meizu 中国 时尚'), ('3', '0', 'admin', '2015-07-12 18:34:17', '2015-07-12 18:32:49', 'Dell', '戴尔 美国 外星人'), ('4', '0', 'admin', '2015-07-12 18:34:19', '2015-07-12 18:33:38', '小米', 'Mi 中国 跑分');
COMMIT;

-- ----------------------------
--  Table structure for `G_Category`
-- ----------------------------
DROP TABLE IF EXISTS `G_Category`;
CREATE TABLE `G_Category` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parentId` int(30) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  CONSTRAINT `G_Category_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `G_Category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `G_Category`
-- ----------------------------
BEGIN;
INSERT INTO `G_Category` VALUES ('1', '0', 'G', '2015-07-12 18:51:41', '2015-07-12 18:35:43', null, '电脑、办公', null), ('2', '0', 'G', '2015-07-12 18:51:40', '2015-07-12 18:36:59', '1', '电脑整机', null), ('3', '0', 'G', '2015-07-12 18:51:39', '2015-07-12 18:38:48', '1', '电脑配件', null), ('4', '0', 'G', '2015-07-12 18:51:38', '2015-07-12 18:38:51', '1', '外设产品', null), ('5', '0', 'G', '2015-07-12 18:51:37', '2015-07-12 18:39:23', '2', '笔记本', null), ('6', '0', 'G', '2015-07-12 19:20:18', '2015-07-12 18:49:42', '2', '台式机', null), ('7', '0', 'G', '2015-07-12 18:51:36', '2015-07-12 18:49:45', '2', '平板电脑', null), ('8', '0', 'G', '2015-07-12 18:51:32', '2015-07-12 18:49:48', '3', 'CPU', null), ('9', '0', 'G', '2015-07-12 18:51:31', '2015-07-12 18:49:51', '3', '内存', null), ('10', '0', 'G', '2015-07-12 18:51:30', '2015-07-12 18:49:53', '3', '显卡', null), ('11', '0', 'G', '2015-07-12 18:51:30', '2015-07-12 18:49:56', '4', '鼠标', null), ('12', '0', 'G', '2015-07-12 18:51:29', '2015-07-12 18:49:58', '4', '键盘', ''), ('13', '0', 'G', '2015-07-12 18:51:28', '2015-07-12 18:50:00', null, '鞋靴', null), ('14', '0', 'G', '2015-07-12 18:51:27', '2015-07-12 18:50:03', '13', '流行男鞋', null), ('15', '0', 'G', '2015-07-12 18:51:26', '2015-07-12 18:50:05', '13', '时尚女鞋', null), ('16', '0', 'G', '2015-07-12 18:51:25', '2015-07-12 18:50:07', '14', '商务休闲鞋', null), ('17', '0', 'G', '2015-07-12 18:51:25', '2015-07-12 18:50:09', '14', '正装鞋', null), ('18', '0', 'G', '2015-07-12 18:51:24', '2015-07-12 18:50:11', '14', '运动鞋', null), ('19', '0', 'G', '2015-07-12 18:51:23', '2015-07-12 18:50:14', '15', '高跟鞋', null), ('20', '0', 'G', '2015-07-12 18:51:22', '2015-07-12 18:50:16', '15', '休闲鞋', null), ('21', '0', 'G', '2015-07-12 18:51:21', '2015-07-12 18:50:18', '15', '运动鞋', null);
COMMIT;

-- ----------------------------
--  Table structure for `G_Commodity`
-- ----------------------------
DROP TABLE IF EXISTS `G_Commodity`;
CREATE TABLE `G_Commodity` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `productId` int(30) DEFAULT NULL,
  `brandId` int(30) DEFAULT NULL,
  `categoryId` int(30) DEFAULT NULL,
  `sku` varchar(30) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `subtitle` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `salePrice` decimal(10,0) NOT NULL,
  `costPrice` decimal(10,0) NOT NULL,
  `mainPicture` varchar(100) COLLATE utf8_bin NOT NULL,
  `htmlDescription` mediumtext COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `brandId` (`brandId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `G_Commodity_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `G_Product` (`id`),
  CONSTRAINT `G_Commodity_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `G_Brand` (`id`),
  CONSTRAINT `G_Commodity_ibfk_3` FOREIGN KEY (`categoryId`) REFERENCES `G_Category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `G_Commodity`
-- ----------------------------
BEGIN;
INSERT INTO `G_Commodity` VALUES ('1', null, null, '2015-07-12 19:41:34', '0000-00-00 00:00:00', '14', '1', '6', 'SKU000001', 'Apple iMac MF883CH/A 21.5英寸一体电脑\n\n    Apple iMac MF883CH/A 21.5英寸一体电脑\n    Apple iMac MF883CH/A 21.5英寸', '锋锐设计 锋芒表现 屏幕上的华彩 屏幕后的精彩 iMac 等你选择~', '999999', '9', '9.9', null), ('2', null, null, '2015-07-12 19:38:10', '0000-00-00 00:00:00', null, null, null, '', '戴尔银河战舰i7/16G/双泰坦，超级款', '你值得拥有', '0', '0', '', null);
COMMIT;

-- ----------------------------
--  Table structure for `G_Commodity2PropertyItem`
-- ----------------------------
DROP TABLE IF EXISTS `G_Commodity2PropertyItem`;
CREATE TABLE `G_Commodity2PropertyItem` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `propertyItemId` int(30) DEFAULT NULL,
  `commodityId` int(30) DEFAULT NULL,
  `propertyName` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `itemName` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `propertyItemId` (`propertyItemId`),
  KEY `commodityId` (`commodityId`),
  CONSTRAINT `G_Commodity2PropertyItem_ibfk_1` FOREIGN KEY (`propertyItemId`) REFERENCES `G_PropertyItem` (`id`),
  CONSTRAINT `G_Commodity2PropertyItem_ibfk_2` FOREIGN KEY (`commodityId`) REFERENCES `G_Commodity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `G_Commodity2SpecItem`
-- ----------------------------
DROP TABLE IF EXISTS `G_Commodity2SpecItem`;
CREATE TABLE `G_Commodity2SpecItem` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `commodityId` int(30) DEFAULT NULL,
  `specItemId` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commodityId` (`commodityId`),
  KEY `specItemId` (`specItemId`),
  CONSTRAINT `G_Commodity2SpecItem_ibfk_1` FOREIGN KEY (`commodityId`) REFERENCES `G_Commodity` (`id`),
  CONSTRAINT `G_Commodity2SpecItem_ibfk_2` FOREIGN KEY (`specItemId`) REFERENCES `G_SpecItem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `G_Commodity2SpecItem`
-- ----------------------------
BEGIN;
INSERT INTO `G_Commodity2SpecItem` VALUES ('1', null, null, '2015-07-12 20:03:52', '0000-00-00 00:00:00', '1', '2'), ('2', null, null, '2015-07-12 20:03:58', '0000-00-00 00:00:00', '1', '4'), ('3', null, null, '2015-07-12 20:04:09', '0000-00-00 00:00:00', '1', '6'), ('4', null, null, '2015-07-12 20:04:19', '0000-00-00 00:00:00', '1', '1'), ('5', null, null, '2015-07-12 20:04:28', '0000-00-00 00:00:00', '1', '3'), ('6', null, null, '2015-07-12 20:04:36', '0000-00-00 00:00:00', '1', '5');
COMMIT;

-- ----------------------------
--  Table structure for `G_Product`
-- ----------------------------
DROP TABLE IF EXISTS `G_Product`;
CREATE TABLE `G_Product` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `spu` varchar(30) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `subtitle` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `htmlDescription` mediumtext COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `G_Product`
-- ----------------------------
BEGIN;
INSERT INTO `G_Product` VALUES ('1', '0', 'G', '2015-07-12 19:10:58', '2015-07-12 19:05:24', 'SPU000001', 'DELL银河战舰台式机', 'DUANGDUANGDUANGDUANG', null), ('2', '0', 'G', '2015-07-12 19:06:26', '2015-07-12 19:05:27', 'SPU000002', 'Macbook Pro', '苹果笔记本专业版', null), ('3', '0', 'G', '2015-07-12 19:12:42', '2015-07-12 19:05:29', 'SPU000003', 'iPad Air', '平板3', null), ('4', '0', 'G', '2015-07-12 19:12:28', '2015-07-12 19:05:31', 'SPU000004', 'iPad mini', '平板迷你', null), ('5', '0', 'G', '2015-07-12 19:06:24', '2015-07-12 19:05:33', 'SPU000005', '外星人', '戴尔外星人系列笔记本', null), ('6', '0', 'G', '2015-07-12 19:06:23', '2015-07-12 19:05:35', 'SPU000006', '金士顿内存', '金士顿DDR3内存', null), ('7', '0', 'G', '2015-07-12 19:06:23', '2015-07-12 19:05:37', 'SPU000007', '花花公子男鞋', '花花公子男鞋夏季新款', null), ('8', '0', 'GGGGGGGGG', '2015-07-12 19:06:22', '2015-07-12 19:05:39', 'SPU000008', '阿迪达斯跑鞋男', '阿迪达斯跑鞋夏季新款跑鞋', null), ('9', '0', 'G', '2015-07-12 19:06:21', '2015-07-12 19:05:41', 'SPU000009', '钻石奢华99米大高跟', '钻石品质，值得信赖', null), ('10', '0', 'GG', '2015-07-12 19:06:20', '2015-07-12 19:05:43', 'SPU000010', '清新跑鞋', '新百伦清新系列', null), ('11', '0', 'G', '2015-07-12 19:06:20', '2015-07-12 19:05:45', 'SPU000011', '魔力鸭机械键盘DS9001S3', '就是啪啪啪', null), ('12', '0', 'G', '2015-07-12 19:06:19', '2015-07-12 19:05:47', 'SPU000012', '雷柏世界杯版无线鼠标', '美，烂', null), ('14', '0', 'G', '2015-07-12 19:40:09', '2015-07-12 19:37:15', 'SPU000013', 'iMac', '美美美', null);
COMMIT;

-- ----------------------------
--  Table structure for `G_Product2Spec`
-- ----------------------------
DROP TABLE IF EXISTS `G_Product2Spec`;
CREATE TABLE `G_Product2Spec` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `productId` int(30) DEFAULT NULL,
  `specId` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `specId` (`specId`),
  CONSTRAINT `G_Product2Spec_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `G_Product` (`id`),
  CONSTRAINT `G_Product2Spec_ibfk_2` FOREIGN KEY (`specId`) REFERENCES `G_Spec` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `G_Property`
-- ----------------------------
DROP TABLE IF EXISTS `G_Property`;
CREATE TABLE `G_Property` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `categoryId` int(30) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `G_Property_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `G_Category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `G_PropertyItem`
-- ----------------------------
DROP TABLE IF EXISTS `G_PropertyItem`;
CREATE TABLE `G_PropertyItem` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `propertyId` int(30) DEFAULT NULL,
  `itemName` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `propertyId` (`propertyId`),
  CONSTRAINT `G_PropertyItem_ibfk_1` FOREIGN KEY (`propertyId`) REFERENCES `G_Property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `G_PropertyItem`
-- ----------------------------
BEGIN;
INSERT INTO `G_PropertyItem` VALUES ('1', null, null, '2015-07-12 19:50:18', '0000-00-00 00:00:00', null, '');
COMMIT;

-- ----------------------------
--  Table structure for `G_Spec`
-- ----------------------------
DROP TABLE IF EXISTS `G_Spec`;
CREATE TABLE `G_Spec` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `G_Spec`
-- ----------------------------
BEGIN;
INSERT INTO `G_Spec` VALUES ('1', '0', 'G', '2015-07-12 19:48:21', '2015-07-12 19:48:13', 'CPU'), ('2', '0', 'G', '2015-07-12 19:49:01', '2015-07-12 19:48:27', '内存'), ('3', '0', 'G', '2015-07-12 19:49:42', '2015-07-12 19:48:49', '屏幕尺寸');
COMMIT;

-- ----------------------------
--  Table structure for `G_SpecItem`
-- ----------------------------
DROP TABLE IF EXISTS `G_SpecItem`;
CREATE TABLE `G_SpecItem` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `specId` int(30) DEFAULT NULL,
  `itemName` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `specId` (`specId`),
  CONSTRAINT `G_SpecItem_ibfk_1` FOREIGN KEY (`specId`) REFERENCES `G_Spec` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `G_SpecItem`
-- ----------------------------
BEGIN;
INSERT INTO `G_SpecItem` VALUES ('1', null, 'G', '2015-07-12 19:50:38', '2015-07-12 19:50:35', '1', 'i5'), ('2', null, null, '2015-07-12 19:51:13', '0000-00-00 00:00:00', '1', 'i7'), ('3', null, null, '2015-07-12 19:51:22', '0000-00-00 00:00:00', '2', '8G'), ('4', null, null, '2015-07-12 19:51:31', '0000-00-00 00:00:00', '2', '16G'), ('5', null, null, '2015-07-12 19:51:51', '0000-00-00 00:00:00', '3', '21.5'), ('6', null, null, '2015-07-12 19:52:06', '0000-00-00 00:00:00', '3', '25.6');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
