/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : example

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2018-06-13 18:17:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_point
-- ----------------------------
DROP TABLE IF EXISTS `sys_point`;
CREATE TABLE `sys_point` (
  `id` varchar(32) NOT NULL,
  `point` varchar(32) NOT NULL,
  `sharing_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_point_ibfk_1` (`sharing_id`),
  CONSTRAINT `sys_point_ibfk_1` FOREIGN KEY (`sharing_id`) REFERENCES `sys_sharing` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_point
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sharing
-- ----------------------------
DROP TABLE IF EXISTS `sys_sharing`;
CREATE TABLE `sys_sharing` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `depart_addr` varchar(40) NOT NULL COMMENT '出发地',
  `destination` varchar(40) NOT NULL COMMENT '目的地',
  `depart_date` date NOT NULL COMMENT '出发时间',
  `latest_date` date DEFAULT NULL COMMENT '最迟出发时间',
  `announce_date` date NOT NULL COMMENT '发布时间',
  `sum_person` int(11) NOT NULL COMMENT '可坐人数',
  `exist_person` int(11) DEFAULT '0' COMMENT '已有人数',
  `remark` varchar(120) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `sys_sharing_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sharing
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(12) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` bit(1) NOT NULL COMMENT '性别 0男，1女',
  `card` varchar(18) NOT NULL COMMENT '身份证',
  `type` bit(1) DEFAULT NULL COMMENT '用户类型 0车主，1乘客',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_flag` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1001', '', '0', '\0', '1', null, null, null, '0');
INSERT INTO `sys_user` VALUES ('10022', '王五', '0', '\0', '2', null, '2018-06-06 21:28:03', '2018-06-11 21:28:07', '0');
INSERT INTO `sys_user` VALUES ('12b45c3cfa0d4ce3bcf4ee16146441cc', '二麻子', '23', '', '3', null, '2018-06-06 20:18:22', null, '0');
INSERT INTO `sys_user` VALUES ('2125eed35e2644fca76da3b1eb067f19', '张三', '25', '', '4', null, '2018-06-06 13:57:59', null, '0');
INSERT INTO `sys_user` VALUES ('69f3641a629646b0b3b856ff8ce67ce6', '李四', '48', '\0', '5', null, '2018-06-06 00:00:00', null, '0');
