/*
 Navicat MySQL Data Transfer

 Source Server         : MySql
 Source Server Version : 50537
 Source Host           : 10.211.55.5
 Source Database       : git

 Target Server Version : 50537
 File Encoding         : utf-8

 Date: 07/05/2015 16:16:18 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `Commodity`
-- ----------------------------
BEGIN;
INSERT INTO `Commodity` VALUES ('1', '0', 'admin', '2015-07-04 18:08:54', '2015-07-04 18:08:48', 'SKU000001', 'iPhone6', '爱疯6', '6000', '5000', 'http:///wf/sdf/sd', null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
