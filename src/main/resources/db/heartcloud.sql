/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50517
Source Host           : 127.0.0.1:3306
Source Database       : heartcloud

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2018-02-24 07:56:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `department_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `department_scale` int(7) DEFAULT NULL,
  `department_contacts` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `department_phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `department_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `department_remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enterprise_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `enterprise_contacts` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `enterprise_phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `enterprise_email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `enterprise_scale` int(7) DEFAULT NULL,
  `enterprise_type` int(2) DEFAULT NULL,
  `enterprise_icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `enterprise_remark` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of enterprise
-- ----------------------------

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `staff_age` int(3) DEFAULT NULL,
  `staff_sex` int(2) DEFAULT NULL,
  `staff_bron` date DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `staff_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `staff_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `companyId_id` int(10) DEFAULT NULL,
  `staff_seniority` double DEFAULT NULL,
  `staff_homeInfo` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `staff_icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of staff
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `pass_word` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `rel_id` int(10) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
