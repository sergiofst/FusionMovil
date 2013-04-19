/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : fusionmovil

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2010-11-03 23:31:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `categorias`
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `idPadre` int(11) NOT NULL,
  `Icono` varchar(100) NOT NULL,
  `Estatus` int(11) NOT NULL,
  `Orden` int(11) NOT NULL,
  `ListaContenidos` int(11) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO categorias VALUES ('1', 'Aplicaciones', '0', '~/Contenido/Fondos/9068_icono.gif', '1', '1', '0');
INSERT INTO categorias VALUES ('2', 'Juegos', '0', '~/Contenido/Fondos/9068_icono.gif', '1', '2', '0');
INSERT INTO categorias VALUES ('4', 'Fondos', '0', '~/Contenido/Fondos/9068_icono.gif', '1', '0', '0');
INSERT INTO categorias VALUES ('5', 'Directa', '0', '~/Contenido/Fondos/9068_icono.gif', '1', '3', '1');
INSERT INTO categorias VALUES ('6', 'Chicas', '4', '~/Contenido/Fondos/chica_02_icono.jpg', '1', '0', '1');
INSERT INTO categorias VALUES ('7', 'Autos', '4', '~/Contenido/Fondos/carro_04_icono.jpg', '1', '1', '1');

-- ----------------------------
-- Table structure for `contenidocategorias`
-- ----------------------------
DROP TABLE IF EXISTS `contenidocategorias`;
CREATE TABLE `contenidocategorias` (
  `idContenidoCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `idContenido` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  PRIMARY KEY (`idContenidoCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contenidocategorias
-- ----------------------------
INSERT INTO contenidocategorias VALUES ('1', '1', '4');
INSERT INTO contenidocategorias VALUES ('2', '2', '4');
INSERT INTO contenidocategorias VALUES ('3', '3', '4');
INSERT INTO contenidocategorias VALUES ('4', '4', '4');
INSERT INTO contenidocategorias VALUES ('5', '5', '4');
INSERT INTO contenidocategorias VALUES ('6', '1', '5');
INSERT INTO contenidocategorias VALUES ('7', '2', '5');
INSERT INTO contenidocategorias VALUES ('8', '6', '6');
INSERT INTO contenidocategorias VALUES ('9', '7', '6');
INSERT INTO contenidocategorias VALUES ('10', '8', '6');
INSERT INTO contenidocategorias VALUES ('11', '9', '6');
INSERT INTO contenidocategorias VALUES ('12', '10', '6');
INSERT INTO contenidocategorias VALUES ('13', '11', '7');
INSERT INTO contenidocategorias VALUES ('14', '12', '7');
INSERT INTO contenidocategorias VALUES ('15', '13', '7');
INSERT INTO contenidocategorias VALUES ('16', '14', '7');
INSERT INTO contenidocategorias VALUES ('17', '15', '7');

-- ----------------------------
-- Table structure for `contenidoclaves`
-- ----------------------------
DROP TABLE IF EXISTS `contenidoclaves`;
CREATE TABLE `contenidoclaves` (
  `idContenidoClave` int(11) NOT NULL AUTO_INCREMENT,
  `idContenido` int(11) NOT NULL,
  `idMedio` int(11) NOT NULL,
  `Clave` varchar(100) NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idContenidoClave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contenidoclaves
-- ----------------------------

-- ----------------------------
-- Table structure for `contenidoinfo`
-- ----------------------------
DROP TABLE IF EXISTS `contenidoinfo`;
CREATE TABLE `contenidoinfo` (
  `idContenidoInfo` int(11) NOT NULL AUTO_INCREMENT,
  `idContenido` int(11) NOT NULL,
  `Etiqueta` varchar(255) NOT NULL,
  `Valor` varchar(255) NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idContenidoInfo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contenidoinfo
-- ----------------------------
INSERT INTO contenidoinfo VALUES ('1', '1', 'Descripcion', 'Esta es la descripcion del contenido', '1');
INSERT INTO contenidoinfo VALUES ('2', '1', 'Autor', 'Este es el autor del contenido', '1');

-- ----------------------------
-- Table structure for `contenidos`
-- ----------------------------
DROP TABLE IF EXISTS `contenidos`;
CREATE TABLE `contenidos` (
  `idContenido` int(11) NOT NULL AUTO_INCREMENT,
  `idServicio` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Archivo` varchar(100) DEFAULT NULL,
  `srsRatingId` int(11) DEFAULT NULL,
  `Icono` varchar(100) DEFAULT NULL,
  `IconoDestacado` varchar(100) DEFAULT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idContenido`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contenidos
-- ----------------------------
INSERT INTO contenidos VALUES ('1', '1', 'Contenido 1', '~/Contenido/Fondos/9068.jpg', null, '~/Contenido/Fondos/9068_icono.gif', '~/Resources/Iconos/116-controller.png', '1');
INSERT INTO contenidos VALUES ('2', '1', 'Contenido 2', '~/Contenido/Fondos/9068.jpg', null, '~/Contenido/Fondos/9068_icono.gif', '~/Resources/Iconos/116-controller.png', '1');
INSERT INTO contenidos VALUES ('3', '1', 'Contenido 3', '~/Contenido/Fondos/9068.jpg', null, '~/Contenido/Fondos/9068_icono.gif', '~/Resources/Iconos/116-controller.png', '1');
INSERT INTO contenidos VALUES ('4', '1', 'Contenido 4', '~/Contenido/Fondos/9068.jpg', null, '~/Contenido/Fondos/9068_icono.gif', '~/Resources/Iconos/116-controller.png', '1');
INSERT INTO contenidos VALUES ('5', '1', 'Contenido 5', '~/Contenido/Fondos/9068.jpg', null, '~/Contenido/Fondos/9068_icono.gif', '~/Resources/Iconos/116-controller.png', '1');
INSERT INTO contenidos VALUES ('6', '1', 'Chica 01', '~/Contenido/Fondos/chica_01.jpg', null, '~/Contenido/Fondos/chica_01_icono.jpg', ' ', '1');
INSERT INTO contenidos VALUES ('7', '1', 'Chica 02', '~/Contenido/Fondos/chica_02.jpg', null, '~/Contenido/Fondos/chica_02_icono.jpg', ' ', '1');
INSERT INTO contenidos VALUES ('8', '1', 'Chica 03', '~/Contenido/Fondos/chica_03.jpg', null, '~/Contenido/Fondos/chica_03_icono.jpg', ' ', '1');
INSERT INTO contenidos VALUES ('9', '1', 'Chica 04', '~/Contenido/Fondos/chica_04.jpg', null, '~/Contenido/Fondos/chica_04_icono.jpg', null, '1');
INSERT INTO contenidos VALUES ('10', '1', 'Chica 05', '~/Contenido/Fondos/chica_05.jpg', null, '~/Contenido/Fondos/chica_05_icono.jpg', null, '1');
INSERT INTO contenidos VALUES ('11', '1', 'Carro 01', '~/Contenido/Fondos/carro_01.jpg', null, '~/Contenido/Fondos/carro_01_icono.jpg', null, '1');
INSERT INTO contenidos VALUES ('12', '1', 'Carro 02', '~/Contenido/Fondos/carro_02.jpg', null, '~/Contenido/Fondos/carro_02_icono.jpg', null, '1');
INSERT INTO contenidos VALUES ('13', '1', 'Carro 03', '~/Contenido/Fondos/carro_03.jpg', null, '~/Contenido/Fondos/carro_03_icono.jpg', null, '1');
INSERT INTO contenidos VALUES ('14', '1', 'Carro 04', '~/Contenido/Fondos/carro_04.jpg', null, '~/Contenido/Fondos/carro_04_icono.jpg', null, '1');
INSERT INTO contenidos VALUES ('15', '1', 'Carro 05', '~/Contenido/Fondos/carro_05.jpg', null, '~/Contenido/Fondos/carro_05_icono.jpg', null, '1');

-- ----------------------------
-- Table structure for `favoritos`
-- ----------------------------
DROP TABLE IF EXISTS `favoritos`;
CREATE TABLE `favoritos` (
  `idFavorito` int(11) NOT NULL AUTO_INCREMENT,
  `Telefono` varchar(10) NOT NULL,
  `Fecha` date NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idFavorito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of favoritos
-- ----------------------------

-- ----------------------------
-- Table structure for `medios`
-- ----------------------------
DROP TABLE IF EXISTS `medios`;
CREATE TABLE `medios` (
  `idMedio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMedio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of medios
-- ----------------------------

-- ----------------------------
-- Table structure for `servicios`
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
  `idServicio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `SRSRatingId` int(11) DEFAULT NULL,
  `Estatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`idServicio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servicios
-- ----------------------------
INSERT INTO servicios VALUES ('1', 'Fondos', '1278', '1');

-- ----------------------------
-- Table structure for `suscripciones`
-- ----------------------------
DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE `suscripciones` (
  `idSuscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `TransactionId` int(11) NOT NULL,
  `idPortal` int(11) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Creditos` int(11) NOT NULL,
  `FechaSuscripcion` datetime NOT NULL,
  `FechaRenovacion` datetime NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idSuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suscripciones
-- ----------------------------
INSERT INTO suscripciones VALUES ('1', '1', '1', '8115315779', '10', '2010-10-23 00:00:00', '2010-10-25 00:00:00', '1');

-- ----------------------------
-- Table structure for `transacciones`
-- ----------------------------
DROP TABLE IF EXISTS `transacciones`;
CREATE TABLE `transacciones` (
  `idTransaccion` int(11) NOT NULL AUTO_INCREMENT,
  `transactionId` int(11) NOT NULL,
  `idSuscripcion` int(11) NOT NULL,
  `idContenido` int(11) NOT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Fecha` datetime NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idTransaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transacciones
-- ----------------------------
INSERT INTO transacciones VALUES ('1', '1111', '0', '1', '8115315779', '2010-10-16 00:00:00', '3');
INSERT INTO transacciones VALUES ('2', '1111', '0', '1', '8115315779', '2010-10-16 00:00:00', '0');
INSERT INTO transacciones VALUES ('3', '1111', '0', '1', '8115315779', '2010-10-16 00:00:00', '0');
INSERT INTO transacciones VALUES ('4', '1111', '0', '1', '8115315779', '2010-10-16 00:00:00', '0');
INSERT INTO transacciones VALUES ('5', '1111', '0', '1', '8115315779', '2010-10-16 00:00:00', '0');
INSERT INTO transacciones VALUES ('6', '1111', '0', '1', '8115315779', '2010-10-16 00:00:00', '0');
INSERT INTO transacciones VALUES ('7', '1111', '0', '1', '8115315779', '2010-10-16 00:00:00', '0');
INSERT INTO transacciones VALUES ('8', '0', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('9', '0', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('10', '0', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('11', '0', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('12', '0', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('13', '0', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('14', '8283803', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('15', '8283805', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('16', '8283806', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('17', '8283807', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('18', '8283808', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('19', '8283810', '0', '1', '8115315779', '2010-10-21 00:00:00', '0');
INSERT INTO transacciones VALUES ('20', '8283812', '0', '1', '8115315779', '2010-10-21 00:00:00', '4');
INSERT INTO transacciones VALUES ('21', '8283901', '1', '1', null, '2010-10-24 21:55:59', '0');
INSERT INTO transacciones VALUES ('22', '8283902', '1', '1', null, '2010-10-24 21:56:27', '2');
INSERT INTO transacciones VALUES ('23', '0', '1', '7', null, '2010-11-02 22:58:27', '0');
INSERT INTO transacciones VALUES ('24', '0', '1', '7', null, '2010-11-02 22:58:45', '0');
