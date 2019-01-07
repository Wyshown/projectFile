/*
Navicat MySQL Data Transfer

Source Server         : 开发数据库
Source Server Version : 50719
Source Host           : 59.110.160.88:3306
Source Database       : store_test

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-16 18:55:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for T_PROVINCE
-- ----------------------------
DROP TABLE IF EXISTS `T_PROVINCE`;
CREATE TABLE `T_PROVINCE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROVINCE_CODE` varchar(20) NOT NULL COMMENT '省份名称',
  `PROVINCE_NAME` varchar(50) NOT NULL COMMENT '省份编码',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `SPELL` varchar(50) DEFAULT NULL COMMENT '拼音',
  `IS_DEL` char(1) DEFAULT '0' COMMENT '逻辑删除（默认0）',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_uqe_province_code` (`PROVINCE_CODE`) USING BTREE,
  KEY `idx_province_name` (`PROVINCE_NAME`) USING BTREE,
  KEY `idx_spell` (`SPELL`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='省份信息表';

-- ----------------------------
-- Records of T_PROVINCE
-- ----------------------------
INSERT INTO `T_PROVINCE` VALUES ('1', '110000', '北京市', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'BeiJingShi', '0');
INSERT INTO `T_PROVINCE` VALUES ('2', '120000', '天津市', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'TianJinShi', '0');
INSERT INTO `T_PROVINCE` VALUES ('3', '130000', '河北省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'HeBeiSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('4', '140000', '山西省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'ShanXiSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('5', '150000', '内蒙古自治区', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'NeiMengGuZiZhiQu', '0');
INSERT INTO `T_PROVINCE` VALUES ('6', '210000', '辽宁省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'LiaoNingSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('7', '220000', '吉林省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'JiLinSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('8', '230000', '黑龙江省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'HeiLongJiangSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('9', '310000', '上海市', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'ShangHaiShi', '0');
INSERT INTO `T_PROVINCE` VALUES ('10', '320000', '江苏省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'JiangSuSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('11', '330000', '浙江省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'ZheJiangSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('12', '340000', '安徽省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'AnHuiSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('13', '350000', '福建省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'FuJianSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('14', '360000', '江西省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'JiangXiSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('15', '370000', '山东省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'ShanDongSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('16', '410000', '河南省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'HeNanSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('17', '420000', '湖北省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'HuBeiSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('18', '430000', '湖南省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'HuNanSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('19', '440000', '广东省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'GuangDongSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('20', '450000', '广西壮族自治区', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'GuangXiZhuangZuZiZhiQu', '0');
INSERT INTO `T_PROVINCE` VALUES ('21', '460000', '海南省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'HaiNanSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('22', '500000', '重庆市', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'ZhongQingShi', '0');
INSERT INTO `T_PROVINCE` VALUES ('23', '510000', '四川省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'SiChuanSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('24', '520000', '贵州省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'GuiZhouSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('25', '530000', '云南省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'YunNanSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('26', '540000', '西藏自治区', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'XiZangZiZhiQu', '0');
INSERT INTO `T_PROVINCE` VALUES ('27', '610000', '陕西省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'ShanXiSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('28', '620000', '甘肃省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'GanSuSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('29', '630000', '青海省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'QingHaiSheng', '0');
INSERT INTO `T_PROVINCE` VALUES ('30', '640000', '宁夏回族自治区', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'NingXiaHuiZuZiZhiQu', '0');
INSERT INTO `T_PROVINCE` VALUES ('31', '650000', '新疆维吾尔自治区', '2017-11-23 11:11:11', '2017-12-13 16:12:48', 'XinJiangWeiWuErZiZhiQu', '0');
INSERT INTO `T_PROVINCE` VALUES ('32', '710000', '台湾省', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'TaiWanSheng', '1');
INSERT INTO `T_PROVINCE` VALUES ('33', '810000', '香港特别行政区', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'XiangGangTeBieXingZhengQu', '1');
INSERT INTO `T_PROVINCE` VALUES ('34', '820000', '澳门特别行政区', '2017-11-23 11:11:11', '2017-11-23 11:11:11', 'AoMenTeBieXingZhengQu', '1');
