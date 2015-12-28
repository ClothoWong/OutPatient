/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : outpatient

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-12-28 17:39:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dempartment
-- ----------------------------
DROP TABLE IF EXISTS `dempartment`;
CREATE TABLE `dempartment` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `department_detail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `avaliable_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dempartment
-- ----------------------------
INSERT INTO `dempartment` VALUES ('1', 'internal', 'internal medicine', '1000');
INSERT INTO `dempartment` VALUES ('2', 'surgery', 'surgery', '5000');
INSERT INTO `dempartment` VALUES ('3', 'pediatrics', 'children partment', '2000');
INSERT INTO `dempartment` VALUES ('4', 'obstetrics and gynecology', 'obstetrics and gynecology', '2000');
INSERT INTO `dempartment` VALUES ('5', 'ophtalmology', 'ophtalmology department', '1000');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `doctor_sex` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `doctor_level` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `doctor_score` int(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('1', 'Jim', 'female', 'A+', '91', '1', '1');
INSERT INTO `doctor` VALUES ('2', 'Kim', 'male', 'A', '86', '1', '1');
INSERT INTO `doctor` VALUES ('3', 'Karry', 'male', 'A', '86', '2', '1');
INSERT INTO `doctor` VALUES ('4', 'Cindy', 'female', 'B+', '81', '2', '1');
INSERT INTO `doctor` VALUES ('5', 'Bob', 'male', 'C', '76', '3', '1');
INSERT INTO `doctor` VALUES ('6', 'Alice', 'female', 'B+', '81', '4', '1');
INSERT INTO `doctor` VALUES ('7', 'Ace', 'male', 'A', '86', '5', '1');

-- ----------------------------
-- Table structure for errorlist
-- ----------------------------
DROP TABLE IF EXISTS `errorlist`;
CREATE TABLE `errorlist` (
  `error_id` int(11) NOT NULL,
  `error_info` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `error_type` int(11) DEFAULT NULL,
  `user_action` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of errorlist
-- ----------------------------

-- ----------------------------
-- Table structure for hcard
-- ----------------------------
DROP TABLE IF EXISTS `hcard`;
CREATE TABLE `hcard` (
  `hcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `idcard_number` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `crash_card` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`hcard_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hcard
-- ----------------------------
INSERT INTO `hcard` VALUES ('1', '13301047', '13301047', '74010331');
INSERT INTO `hcard` VALUES ('2', '13301011', '13301011', '11010331');
INSERT INTO `hcard` VALUES ('3', '13301004', '13301004', '40010331');

-- ----------------------------
-- Table structure for laboratory
-- ----------------------------
DROP TABLE IF EXISTS `laboratory`;
CREATE TABLE `laboratory` (
  `laboratory_id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `report` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `trade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`laboratory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of laboratory
-- ----------------------------
INSERT INTO `laboratory` VALUES ('1', 'X-ray', '1', '1', 'The condition is perfect', '1');

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `medicine_info` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `medicine_price` decimal(10,2) unsigned zerofill DEFAULT NULL,
  `medicine_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of medicine
-- ----------------------------
INSERT INTO `medicine` VALUES ('1', 'antibiotics', 'kangshengsu', '00000010.00', '10000');
INSERT INTO `medicine` VALUES ('2', 'albomycin', 'baimeisu', '00000005.00', '20000');
INSERT INTO `medicine` VALUES ('3', 'berberine', 'huangliansu', '00000008.00', '20000');
INSERT INTO `medicine` VALUES ('4', 'aspirin', 'asipilin', '00000020.00', '20000');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `patient_sex` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `patient_age` int(11) DEFAULT NULL,
  `idcard_number` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `hcard_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('1', 'Bob', 'male', '20', '13301047', '13301047', '1', '2');
INSERT INTO `patient` VALUES ('2', 'Alice', 'female', '38', '13301011', '13301011', '2', '3');
INSERT INTO `patient` VALUES ('3', 'Tim', 'male', '55', '13301004', '13301004', '3', '5');

-- ----------------------------
-- Table structure for prescription
-- ----------------------------
DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `medicine_list` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `evaluate_score` int(11) DEFAULT NULL,
  `trade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of prescription
-- ----------------------------

-- ----------------------------
-- Table structure for registerrecord
-- ----------------------------
DROP TABLE IF EXISTS `registerrecord`;
CREATE TABLE `registerrecord` (
  `register_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `register_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `register_price` decimal(10,2) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `trade_id` int(11) NOT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of registerrecord
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_power` int(11) DEFAULT NULL,
  `role_describe` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1', 'low');
INSERT INTO `role` VALUES ('2', '2', 'mid');
INSERT INTO `role` VALUES ('3', '3', 'high');
INSERT INTO `role` VALUES ('4', '4', 'very-high');

-- ----------------------------
-- Table structure for traderecord
-- ----------------------------
DROP TABLE IF EXISTS `traderecord`;
CREATE TABLE `traderecord` (
  `trade_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pre_time` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `final_time` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `trade_detail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isPrePay` char(1) COLLATE utf8_bin DEFAULT NULL,
  `isFinalPay` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`trade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of traderecord
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xyk', 'xyk', '1', '12345678901');
INSERT INTO `user` VALUES ('2', 'wh', 'wh', '2', '09876543210');
INSERT INTO `user` VALUES ('3', 'ctt', 'ctt', '2', '10293847561');
INSERT INTO `user` VALUES ('4', 'wyy', 'wyy', '2', '01928374650');
INSERT INTO `user` VALUES ('5', 'ggt', 'ggt', '2', '56473829101');
