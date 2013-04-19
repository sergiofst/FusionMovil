/*
Navicat MySQL Data Transfer

Source Server         : FusionMovil_mysql
Source Server Version : 50152
Source Host           : localhost:3306
Source Database       : fusionmovil_portal2

Target Server Type    : MYSQL
Target Server Version : 50152
File Encoding         : 65001

Date: 2011-02-19 08:48:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `fmp_category`
-- ----------------------------
DROP TABLE IF EXISTS `fmp_category`;
CREATE TABLE `fmp_category` (
  `idCategory` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fmp_category
-- ----------------------------
INSERT INTO fmp_category VALUES ('1', 'Chicas', 'La Categoria de chicas', '1');

-- ----------------------------
-- Table structure for `fmp_content`
-- ----------------------------
DROP TABLE IF EXISTS `fmp_content`;
CREATE TABLE `fmp_content` (
  `idContent` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `File` varchar(255) NOT NULL,
  `idContentType` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`idContent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fmp_content
-- ----------------------------
INSERT INTO fmp_content VALUES ('1', 'Chica 01', 'La Chica 01', 'chica_03.jpg', '1', '1');

-- ----------------------------
-- Table structure for `fmp_contentcategory`
-- ----------------------------
DROP TABLE IF EXISTS `fmp_contentcategory`;
CREATE TABLE `fmp_contentcategory` (
  `idContentCategory` int(11) NOT NULL AUTO_INCREMENT,
  `idContent` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`idContentCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fmp_contentcategory
-- ----------------------------
INSERT INTO fmp_contentcategory VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for `fmp_contenttype`
-- ----------------------------
DROP TABLE IF EXISTS `fmp_contenttype`;
CREATE TABLE `fmp_contenttype` (
  `idContentType` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Path` varchar(255) NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idContentType`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fmp_contenttype
-- ----------------------------
INSERT INTO fmp_contenttype VALUES ('1', 'Fondo', 'Los fondos', '~/Content/Fondos', '1');

-- ----------------------------
-- Table structure for `fmp_menu`
-- ----------------------------
DROP TABLE IF EXISTS `fmp_menu`;
CREATE TABLE `fmp_menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `idPortal` int(11) NOT NULL,
  `idParent` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Type` int(11) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fmp_menu
-- ----------------------------
INSERT INTO fmp_menu VALUES ('1', '1', '0', 'Fondos', 'Los fondos', '0', '', '0', '1');
INSERT INTO fmp_menu VALUES ('2', '1', '1', 'Chicas', 'Las chicas', '1', ' ', '1', '1');
INSERT INTO fmp_menu VALUES ('3', '1', '1', 'Carros', 'Los carros', '0', ' ', '0', '1');
