/*
Navicat MySQL Data Transfer

Source Server         : LocalDB
Source Server Version : 50129
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50129
File Encoding         : 65001

Date: 2015-07-15 18:20:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for g_brand
-- ----------------------------
DROP TABLE IF EXISTS `g_brand`;
CREATE TABLE `g_brand` (
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
-- Records of g_brand
-- ----------------------------
INSERT INTO `g_brand` VALUES ('1', '0', 'admin', '2015-07-12 18:34:13', '2015-07-12 18:30:28', 'Apple', '苹果 美国 完美');
INSERT INTO `g_brand` VALUES ('2', '0', 'admin', '2015-07-12 18:34:15', '2015-07-12 18:31:49', '魅族', 'Meizu 中国 时尚');
INSERT INTO `g_brand` VALUES ('3', '0', 'admin', '2015-07-12 18:34:17', '2015-07-12 18:32:49', 'Dell', '戴尔 美国 外星人');
INSERT INTO `g_brand` VALUES ('4', '0', 'admin', '2015-07-12 18:34:19', '2015-07-12 18:33:38', '小米', 'Mi 中国 跑分');

-- ----------------------------
-- Table structure for g_category
-- ----------------------------
DROP TABLE IF EXISTS `g_category`;
CREATE TABLE `g_category` (
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
  CONSTRAINT `G_Category_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `g_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_category
-- ----------------------------
INSERT INTO `g_category` VALUES ('1', '0', 'G', '2015-07-12 18:51:41', '2015-07-12 18:35:43', null, '电脑、办公', null);
INSERT INTO `g_category` VALUES ('2', '0', 'G', '2015-07-12 18:51:40', '2015-07-12 18:36:59', '1', '电脑整机', null);
INSERT INTO `g_category` VALUES ('3', '0', 'G', '2015-07-12 18:51:39', '2015-07-12 18:38:48', '1', '电脑配件', null);
INSERT INTO `g_category` VALUES ('4', '0', 'G', '2015-07-12 18:51:38', '2015-07-12 18:38:51', '1', '外设产品', null);
INSERT INTO `g_category` VALUES ('5', '0', 'G', '2015-07-12 18:51:37', '2015-07-12 18:39:23', '2', '笔记本', null);
INSERT INTO `g_category` VALUES ('6', '0', 'G', '2015-07-12 19:20:18', '2015-07-12 18:49:42', '2', '台式机', null);
INSERT INTO `g_category` VALUES ('7', '0', 'G', '2015-07-12 18:51:36', '2015-07-12 18:49:45', '2', '平板电脑', null);
INSERT INTO `g_category` VALUES ('8', '0', 'G', '2015-07-12 18:51:32', '2015-07-12 18:49:48', '3', 'CPU', null);
INSERT INTO `g_category` VALUES ('9', '0', 'G', '2015-07-12 18:51:31', '2015-07-12 18:49:51', '3', '内存', null);
INSERT INTO `g_category` VALUES ('10', '0', 'G', '2015-07-12 18:51:30', '2015-07-12 18:49:53', '3', '显卡', null);
INSERT INTO `g_category` VALUES ('11', '0', 'G', '2015-07-12 18:51:30', '2015-07-12 18:49:56', '4', '鼠标', null);
INSERT INTO `g_category` VALUES ('12', '0', 'G', '2015-07-12 18:51:29', '2015-07-12 18:49:58', '4', '键盘', '');
INSERT INTO `g_category` VALUES ('13', '0', 'G', '2015-07-12 18:51:28', '2015-07-12 18:50:00', null, '鞋靴', null);
INSERT INTO `g_category` VALUES ('14', '0', 'G', '2015-07-12 18:51:27', '2015-07-12 18:50:03', '13', '流行男鞋', null);
INSERT INTO `g_category` VALUES ('15', '0', 'G', '2015-07-12 18:51:26', '2015-07-12 18:50:05', '13', '时尚女鞋', null);
INSERT INTO `g_category` VALUES ('16', '0', 'G', '2015-07-12 18:51:25', '2015-07-12 18:50:07', '14', '商务休闲鞋', null);
INSERT INTO `g_category` VALUES ('17', '0', 'G', '2015-07-12 18:51:25', '2015-07-12 18:50:09', '14', '正装鞋', null);
INSERT INTO `g_category` VALUES ('18', '0', 'G', '2015-07-12 18:51:24', '2015-07-12 18:50:11', '14', '运动鞋', null);
INSERT INTO `g_category` VALUES ('19', '0', 'G', '2015-07-12 18:51:23', '2015-07-12 18:50:14', '15', '高跟鞋', null);
INSERT INTO `g_category` VALUES ('20', '0', 'G', '2015-07-12 18:51:22', '2015-07-12 18:50:16', '15', '休闲鞋', null);
INSERT INTO `g_category` VALUES ('21', '0', 'G', '2015-07-12 18:51:21', '2015-07-12 18:50:18', '15', '运动鞋', null);

-- ----------------------------
-- Table structure for g_commodity
-- ----------------------------
DROP TABLE IF EXISTS `g_commodity`;
CREATE TABLE `g_commodity` (
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
  CONSTRAINT `G_Commodity_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `g_product` (`id`),
  CONSTRAINT `G_Commodity_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `g_brand` (`id`),
  CONSTRAINT `G_Commodity_ibfk_3` FOREIGN KEY (`categoryId`) REFERENCES `g_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_commodity
-- ----------------------------
INSERT INTO `g_commodity` VALUES ('1', null, null, '2015-07-12 19:41:34', '0000-00-00 00:00:00', '14', '1', '6', 'SKU000001', 'Apple iMac MF883CH/A 21.5英寸一体电脑\n\n    Apple iMac MF883CH/A 21.5英寸一体电脑\n    Apple iMac MF883CH/A 21.5英寸', '锋锐设计 锋芒表现 屏幕上的华彩 屏幕后的精彩 iMac 等你选择~', '999999', '9', '9.9', null);
INSERT INTO `g_commodity` VALUES ('2', null, null, '2015-07-15 14:46:00', '0000-00-00 00:00:00', null, '3', '6', 'SKU000002', '戴尔银河战舰i7/16G/双泰坦，超级款', '你值得拥有', '8888', '8', '', null);

-- ----------------------------
-- Table structure for g_commodity2propertyitem
-- ----------------------------
DROP TABLE IF EXISTS `g_commodity2propertyitem`;
CREATE TABLE `g_commodity2propertyitem` (
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
  CONSTRAINT `G_Commodity2PropertyItem_ibfk_1` FOREIGN KEY (`propertyItemId`) REFERENCES `g_propertyitem` (`id`),
  CONSTRAINT `G_Commodity2PropertyItem_ibfk_2` FOREIGN KEY (`commodityId`) REFERENCES `g_commodity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_commodity2propertyitem
-- ----------------------------
INSERT INTO `g_commodity2propertyitem` VALUES ('1', null, null, '2015-07-15 14:17:48', '0000-00-00 00:00:00', '2', '1', null, null);
INSERT INTO `g_commodity2propertyitem` VALUES ('2', null, null, '2015-07-15 14:17:50', '0000-00-00 00:00:00', '5', '1', null, null);
INSERT INTO `g_commodity2propertyitem` VALUES ('3', null, null, '2015-07-15 14:17:52', '0000-00-00 00:00:00', '8', '1', null, null);
INSERT INTO `g_commodity2propertyitem` VALUES ('4', null, null, '2015-07-15 14:18:02', '0000-00-00 00:00:00', '3', '2', null, null);
INSERT INTO `g_commodity2propertyitem` VALUES ('5', null, null, '2015-07-15 14:18:01', '0000-00-00 00:00:00', '6', '2', null, null);
INSERT INTO `g_commodity2propertyitem` VALUES ('6', null, null, '2015-07-15 14:18:11', '0000-00-00 00:00:00', '9', '2', null, null);

-- ----------------------------
-- Table structure for g_commodity2specitem
-- ----------------------------
DROP TABLE IF EXISTS `g_commodity2specitem`;
CREATE TABLE `g_commodity2specitem` (
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
  CONSTRAINT `G_Commodity2SpecItem_ibfk_1` FOREIGN KEY (`commodityId`) REFERENCES `g_commodity` (`id`),
  CONSTRAINT `G_Commodity2SpecItem_ibfk_2` FOREIGN KEY (`specItemId`) REFERENCES `g_specitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_commodity2specitem
-- ----------------------------
INSERT INTO `g_commodity2specitem` VALUES ('1', null, null, '2015-07-12 20:03:52', '0000-00-00 00:00:00', '1', '2');
INSERT INTO `g_commodity2specitem` VALUES ('2', null, null, '2015-07-12 20:03:58', '0000-00-00 00:00:00', '1', '4');
INSERT INTO `g_commodity2specitem` VALUES ('3', null, null, '2015-07-12 20:04:09', '0000-00-00 00:00:00', '1', '6');
INSERT INTO `g_commodity2specitem` VALUES ('4', null, null, '2015-07-12 20:04:19', '0000-00-00 00:00:00', '1', '1');
INSERT INTO `g_commodity2specitem` VALUES ('5', null, null, '2015-07-12 20:04:28', '0000-00-00 00:00:00', '1', '3');
INSERT INTO `g_commodity2specitem` VALUES ('6', null, null, '2015-07-12 20:04:36', '0000-00-00 00:00:00', '1', '5');

-- ----------------------------
-- Table structure for g_product
-- ----------------------------
DROP TABLE IF EXISTS `g_product`;
CREATE TABLE `g_product` (
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
-- Records of g_product
-- ----------------------------
INSERT INTO `g_product` VALUES ('1', '0', 'G', '2015-07-12 19:10:58', '2015-07-12 19:05:24', 'SPU000001', 'DELL银河战舰台式机', 'DUANGDUANGDUANGDUANG', null);
INSERT INTO `g_product` VALUES ('2', '0', 'G', '2015-07-12 19:06:26', '2015-07-12 19:05:27', 'SPU000002', 'Macbook Pro', '苹果笔记本专业版', null);
INSERT INTO `g_product` VALUES ('3', '0', 'G', '2015-07-12 19:12:42', '2015-07-12 19:05:29', 'SPU000003', 'iPad Air', '平板3', null);
INSERT INTO `g_product` VALUES ('4', '0', 'G', '2015-07-12 19:12:28', '2015-07-12 19:05:31', 'SPU000004', 'iPad mini', '平板迷你', null);
INSERT INTO `g_product` VALUES ('5', '0', 'G', '2015-07-12 19:06:24', '2015-07-12 19:05:33', 'SPU000005', '外星人', '戴尔外星人系列笔记本', null);
INSERT INTO `g_product` VALUES ('6', '0', 'G', '2015-07-12 19:06:23', '2015-07-12 19:05:35', 'SPU000006', '金士顿内存', '金士顿DDR3内存', null);
INSERT INTO `g_product` VALUES ('7', '0', 'G', '2015-07-12 19:06:23', '2015-07-12 19:05:37', 'SPU000007', '花花公子男鞋', '花花公子男鞋夏季新款', null);
INSERT INTO `g_product` VALUES ('8', '0', 'GGGGGGGGG', '2015-07-12 19:06:22', '2015-07-12 19:05:39', 'SPU000008', '阿迪达斯跑鞋男', '阿迪达斯跑鞋夏季新款跑鞋', null);
INSERT INTO `g_product` VALUES ('9', '0', 'G', '2015-07-12 19:06:21', '2015-07-12 19:05:41', 'SPU000009', '钻石奢华99米大高跟', '钻石品质，值得信赖', null);
INSERT INTO `g_product` VALUES ('10', '0', 'GG', '2015-07-12 19:06:20', '2015-07-12 19:05:43', 'SPU000010', '清新跑鞋', '新百伦清新系列', null);
INSERT INTO `g_product` VALUES ('11', '0', 'G', '2015-07-12 19:06:20', '2015-07-12 19:05:45', 'SPU000011', '魔力鸭机械键盘DS9001S3', '就是啪啪啪', null);
INSERT INTO `g_product` VALUES ('12', '0', 'G', '2015-07-12 19:06:19', '2015-07-12 19:05:47', 'SPU000012', '雷柏世界杯版无线鼠标', '美，烂', null);
INSERT INTO `g_product` VALUES ('14', '0', 'G', '2015-07-12 19:40:09', '2015-07-12 19:37:15', 'SPU000013', 'iMac', '美美美', null);

-- ----------------------------
-- Table structure for g_product2spec
-- ----------------------------
DROP TABLE IF EXISTS `g_product2spec`;
CREATE TABLE `g_product2spec` (
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
  CONSTRAINT `G_Product2Spec_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `g_product` (`id`),
  CONSTRAINT `G_Product2Spec_ibfk_2` FOREIGN KEY (`specId`) REFERENCES `g_spec` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_product2spec
-- ----------------------------

-- ----------------------------
-- Table structure for g_property
-- ----------------------------
DROP TABLE IF EXISTS `g_property`;
CREATE TABLE `g_property` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `categoryId` int(30) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `G_Property_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `g_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_property
-- ----------------------------
INSERT INTO `g_property` VALUES ('1', '0', 'G', '2015-07-15 14:07:44', '2015-07-15 14:07:41', '6', 'CPU');
INSERT INTO `g_property` VALUES ('2', '0', 'G', '2015-07-15 14:08:59', '2015-07-15 14:08:56', '6', '显卡');
INSERT INTO `g_property` VALUES ('3', '0', 'G', '2015-07-15 14:11:07', '0000-00-00 00:00:00', '6', '内存');

-- ----------------------------
-- Table structure for g_propertyitem
-- ----------------------------
DROP TABLE IF EXISTS `g_propertyitem`;
CREATE TABLE `g_propertyitem` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `propertyId` int(30) DEFAULT NULL,
  `itemName` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `propertyId` (`propertyId`),
  CONSTRAINT `G_PropertyItem_ibfk_1` FOREIGN KEY (`propertyId`) REFERENCES `g_property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_propertyitem
-- ----------------------------
INSERT INTO `g_propertyitem` VALUES ('1', null, null, '2015-07-15 14:11:27', '2015-07-15 14:07:26', '1', 'i3');
INSERT INTO `g_propertyitem` VALUES ('2', null, null, '2015-07-15 14:11:33', '0000-00-00 00:00:00', '1', 'i5');
INSERT INTO `g_propertyitem` VALUES ('3', null, null, '2015-07-15 14:11:40', '0000-00-00 00:00:00', '1', '17');
INSERT INTO `g_propertyitem` VALUES ('4', null, null, '2015-07-15 14:12:29', '0000-00-00 00:00:00', '2', '低端');
INSERT INTO `g_propertyitem` VALUES ('5', null, null, '2015-07-15 14:13:36', '0000-00-00 00:00:00', '2', '中端');
INSERT INTO `g_propertyitem` VALUES ('6', null, null, '2015-07-15 14:12:45', '0000-00-00 00:00:00', '2', '高端');
INSERT INTO `g_propertyitem` VALUES ('7', null, null, '2015-07-15 14:15:05', '0000-00-00 00:00:00', '3', '2G');
INSERT INTO `g_propertyitem` VALUES ('8', null, null, '2015-07-15 14:15:10', '0000-00-00 00:00:00', '3', '4G');
INSERT INTO `g_propertyitem` VALUES ('9', null, null, '2015-07-15 14:15:15', '0000-00-00 00:00:00', '3', '8G');

-- ----------------------------
-- Table structure for g_spec
-- ----------------------------
DROP TABLE IF EXISTS `g_spec`;
CREATE TABLE `g_spec` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_spec
-- ----------------------------
INSERT INTO `g_spec` VALUES ('1', '0', 'G', '2015-07-12 19:48:21', '2015-07-12 19:48:13', 'CPU');
INSERT INTO `g_spec` VALUES ('2', '0', 'G', '2015-07-12 19:49:01', '2015-07-12 19:48:27', '内存');
INSERT INTO `g_spec` VALUES ('3', '0', 'G', '2015-07-12 19:49:42', '2015-07-12 19:48:49', '屏幕尺寸');

-- ----------------------------
-- Table structure for g_specitem
-- ----------------------------
DROP TABLE IF EXISTS `g_specitem`;
CREATE TABLE `g_specitem` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `version` int(30) DEFAULT NULL,
  `lastOperator` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `specId` int(30) DEFAULT NULL,
  `itemName` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `specId` (`specId`),
  CONSTRAINT `G_SpecItem_ibfk_1` FOREIGN KEY (`specId`) REFERENCES `g_spec` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of g_specitem
-- ----------------------------
INSERT INTO `g_specitem` VALUES ('1', null, 'G', '2015-07-12 19:50:38', '2015-07-12 19:50:35', '1', 'i5');
INSERT INTO `g_specitem` VALUES ('2', null, null, '2015-07-12 19:51:13', '0000-00-00 00:00:00', '1', 'i7');
INSERT INTO `g_specitem` VALUES ('3', null, null, '2015-07-12 19:51:22', '0000-00-00 00:00:00', '2', '8G');
INSERT INTO `g_specitem` VALUES ('4', null, null, '2015-07-12 19:51:31', '0000-00-00 00:00:00', '2', '16G');
INSERT INTO `g_specitem` VALUES ('5', null, null, '2015-07-12 19:51:51', '0000-00-00 00:00:00', '3', '21.5');
INSERT INTO `g_specitem` VALUES ('6', null, null, '2015-07-12 19:52:06', '0000-00-00 00:00:00', '3', '25.6');
