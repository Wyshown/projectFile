/*
Navicat MySQL Data Transfer

Source Server         : jsyf-pre-jsyfadmin
Source Server Version : 50635
Source Host           : 39.107.74.82:3501
Source Database       : store_prod

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2018-10-29 17:17:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for S_STORE_IMAGE_LIBRARY
-- ----------------------------
DROP TABLE IF EXISTS `S_STORE_IMAGE_LIBRARY`;
CREATE TABLE `S_STORE_IMAGE_LIBRARY` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `STORE_ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '店铺ID',
  `IMAGE_URL` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '图片地址',
  `IMAGE_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '图片名称',
  `IMAGE_SOURCE_FLAG` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '图片源标识（0：web，1：app，2：m）',
  `IMAGE_TYPE_FLAG` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '图片类型标识（0：简介，1：封面）',
  `STATUS_FLAG` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '状态标识',
  `CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime NOT NULL COMMENT '修改时间',
  `SORT` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `REMARK` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='店铺图片库';
