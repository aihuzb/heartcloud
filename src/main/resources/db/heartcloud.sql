/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : heartcloud

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2018-02-09 19:42:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `enterprise_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '企业名称',
  `contacts` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '联系人',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '联系人电话',
  `email` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '企业邮箱',
  `scale` int(11) DEFAULT NULL COMMENT '企业规模',
  `type` int(11) DEFAULT NULL COMMENT '企业性质',
  `icon` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '企业图标地址',
  `remark` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '企业介绍',
  `update_date` time DEFAULT NULL COMMENT '更新时间',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of enterprise
-- ----------------------------
INSERT INTO `enterprise` VALUES ('1', '安迪科技实业有限公司', '胡志斌', '18100827027', '286268373@qq.com', '1000', '1', 'fdasdf', '安迪科技实业有限公司', null, '2018-02-09 17:20:21');
