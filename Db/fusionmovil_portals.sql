/*
Navicat MySQL Data Transfer

Source Server         : FusionMovil_mysql
Source Server Version : 50152
Source Host           : localhost:3306
Source Database       : fusionmovil_portals

Target Server Type    : MYSQL
Target Server Version : 50152
File Encoding         : 65001

Date: 2011-02-19 08:48:28
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `accesosistema`
-- ----------------------------
DROP TABLE IF EXISTS `accesosistema`;
CREATE TABLE `accesosistema` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Estatus` int(11) DEFAULT NULL,
  `FechaRegistro` date DEFAULT NULL,
  `Acceso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 10240 kB; InnoDB free: 10240 kB; InnoDB free: 1';

-- ----------------------------
-- Records of accesosistema
-- ----------------------------
INSERT INTO accesosistema VALUES ('1', 'Rogelio', 'R0rt3g4', '1', '2010-12-29', '1');
INSERT INTO accesosistema VALUES ('2', 'Roger', 'usuario', '1', '2010-12-28', '2');
INSERT INTO accesosistema VALUES ('3', 'Sergio', 'sergio', '1', '2010-12-21', '3');
INSERT INTO accesosistema VALUES ('4', 'Fusion', 'Movil', '1', '2010-12-29', '4');
INSERT INTO accesosistema VALUES ('5', 'fusion', 'movil', '1', '2010-12-29', '5');

-- ----------------------------
-- Table structure for `categorias`
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(250) NOT NULL,
  `idPadre` int(11) NOT NULL,
  `Icono` varchar(250) NOT NULL,
  `Estatus` int(11) NOT NULL,
  `Orden` int(11) NOT NULL,
  `ListaContenidos` int(11) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO categorias VALUES ('1', 'Destacados', '0', '~/Contenido/Fondos/default.jpg', '1', '0', '0');
INSERT INTO categorias VALUES ('2', 'Tonos', '0', '~/Contenido/Fondos/default.jpg', '1', '1', '0');
INSERT INTO categorias VALUES ('3', 'Fondos', '0', '~/Contenido/Fondos/default.jpg', '1', '2', '0');
INSERT INTO categorias VALUES ('4', 'Juegos', '0', '~/Contenido/Fondos/default.jpg', '1', '3', '1');
INSERT INTO categorias VALUES ('5', 'Utilerias', '0', '~/Contenido/Fondos/default.jpg', '1', '4', '1');
INSERT INTO categorias VALUES ('14', 'Musica', '2', '~/Contenido/Fondos/default.jpg', '1', '0', '1');
INSERT INTO categorias VALUES ('15', 'Sonidos Especiales', '2', '~/Contenido/Fondos/default.jpg', '1', '1', '1');
INSERT INTO categorias VALUES ('16', 'Chicas', '3', '~/Contenido/Fondos/default.jpg', '1', '0', '1');
INSERT INTO categorias VALUES ('17', 'Chicos', '3', '~/Contenido/Fondos/default.jpg', '1', '1', '1');
INSERT INTO categorias VALUES ('18', 'Autos', '3', '~/Contenido/Fondos/default.jpg', '1', '2', '1');
INSERT INTO categorias VALUES ('19', 'Animales', '3', '~/Contenido/Fondos/default.jpg', '1', '3', '1');
INSERT INTO categorias VALUES ('20', 'Chistes', '0', '~/Contenido/Fondos/default.jpg', '1', '5', '1');

-- ----------------------------
-- Table structure for `contenidocategorias`
-- ----------------------------
DROP TABLE IF EXISTS `contenidocategorias`;
CREATE TABLE `contenidocategorias` (
  `idContenidoCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `idContenido` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  PRIMARY KEY (`idContenidoCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contenidocategorias
-- ----------------------------
INSERT INTO contenidocategorias VALUES ('1', '1', '16');
INSERT INTO contenidocategorias VALUES ('2', '2', '16');
INSERT INTO contenidocategorias VALUES ('3', '3', '16');
INSERT INTO contenidocategorias VALUES ('4', '4', '18');
INSERT INTO contenidocategorias VALUES ('5', '5', '18');
INSERT INTO contenidocategorias VALUES ('6', '1', '1');
INSERT INTO contenidocategorias VALUES ('7', '2', '1');
INSERT INTO contenidocategorias VALUES ('8', '6', '19');

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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contenidoclaves
-- ----------------------------
INSERT INTO contenidoclaves VALUES ('1', '7', '1', 'horoscopos', '1');
INSERT INTO contenidoclaves VALUES ('2', '7', '1', 'Horoscopos', '1');
INSERT INTO contenidoclaves VALUES ('3', '7', '1', 'Hooroscopos', '1');
INSERT INTO contenidoclaves VALUES ('4', '23', '1', 'aries', '1');
INSERT INTO contenidoclaves VALUES ('5', '23', '1', 'Aries', '1');
INSERT INTO contenidoclaves VALUES ('6', '24', '1', 'Escorpio', '1');
INSERT INTO contenidoclaves VALUES ('7', '24', '1', 'escorpio', '1');
INSERT INTO contenidoclaves VALUES ('8', '25', '1', 'Acuario', '1');
INSERT INTO contenidoclaves VALUES ('9', '25', '1', 'acuario', '1');
INSERT INTO contenidoclaves VALUES ('10', '26', '1', 'Piscis', '1');
INSERT INTO contenidoclaves VALUES ('11', '26', '1', 'piscis', '1');
INSERT INTO contenidoclaves VALUES ('12', '26', '1', 'Picis', '1');
INSERT INTO contenidoclaves VALUES ('13', '26', '1', 'picis', '1');
INSERT INTO contenidoclaves VALUES ('14', '26', '1', 'pisis', '1');
INSERT INTO contenidoclaves VALUES ('15', '26', '1', 'Pisis', '1');
INSERT INTO contenidoclaves VALUES ('16', '27', '1', 'Tauro', '1');
INSERT INTO contenidoclaves VALUES ('17', '27', '1', 'tauro', '1');
INSERT INTO contenidoclaves VALUES ('18', '28', '1', 'Geminis', '1');
INSERT INTO contenidoclaves VALUES ('19', '28', '1', 'geminis', '1');
INSERT INTO contenidoclaves VALUES ('20', '29', '1', 'Cancer', '1');
INSERT INTO contenidoclaves VALUES ('21', '29', '1', 'cancer', '1');
INSERT INTO contenidoclaves VALUES ('22', '30', '1', 'Virgo', '1');
INSERT INTO contenidoclaves VALUES ('23', '30', '1', 'virgo', '1');
INSERT INTO contenidoclaves VALUES ('24', '31', '1', 'Sagitario', '1');
INSERT INTO contenidoclaves VALUES ('25', '31', '1', 'sagitario', '1');
INSERT INTO contenidoclaves VALUES ('26', '32', '1', 'Capricornio', '1');
INSERT INTO contenidoclaves VALUES ('27', '32', '1', 'capricornio', '1');
INSERT INTO contenidoclaves VALUES ('28', '33', '1', 'Libra', '1');
INSERT INTO contenidoclaves VALUES ('29', '33', '1', 'libra', '1');
INSERT INTO contenidoclaves VALUES ('30', '34', '1', 'Latina', '1');
INSERT INTO contenidoclaves VALUES ('31', '35', '1', 'latina', '1');
INSERT INTO contenidoclaves VALUES ('32', '36', '1', 'la tina', '1');
INSERT INTO contenidoclaves VALUES ('33', '40', '1', 'Golosa69', '1');
INSERT INTO contenidoclaves VALUES ('34', '41', '1', 'Vida', '1');
INSERT INTO contenidoclaves VALUES ('35', '41', '1', 'SeguroVida', '1');
INSERT INTO contenidoclaves VALUES ('36', '41', '1', 'vida', '1');
INSERT INTO contenidoclaves VALUES ('37', '42', '1', 'Cel', '1');
INSERT INTO contenidoclaves VALUES ('38', '42', '1', 'cel', '1');
INSERT INTO contenidoclaves VALUES ('40', '42', '1', 'Seguro', '1');
INSERT INTO contenidoclaves VALUES ('41', '41', '1', 'ProVida', '1');
INSERT INTO contenidoclaves VALUES ('42', '41', '1', 'PVida', '1');
INSERT INTO contenidoclaves VALUES ('43', '42', '1', 'Procel', '1');
INSERT INTO contenidoclaves VALUES ('44', '42', '1', 'SeguroCel', '1');
INSERT INTO contenidoclaves VALUES ('45', '42', '1', 'ProtgtCel', '1');
INSERT INTO contenidoclaves VALUES ('46', '23', '1', 'Aries', '1');
INSERT INTO contenidoclaves VALUES ('47', '23', '1', 'aries', '1');
INSERT INTO contenidoclaves VALUES ('48', '24', '1', 'Escorpio', '1');
INSERT INTO contenidoclaves VALUES ('49', '24', '1', 'escorpio', '1');
INSERT INTO contenidoclaves VALUES ('50', '25', '1', 'Acuario', '1');
INSERT INTO contenidoclaves VALUES ('51', '25', '1', 'acuario', '1');
INSERT INTO contenidoclaves VALUES ('52', '26', '1', 'Piscis', '1');
INSERT INTO contenidoclaves VALUES ('53', '26', '1', 'piscis', '1');
INSERT INTO contenidoclaves VALUES ('54', '27', '1', 'Tauro', '1');
INSERT INTO contenidoclaves VALUES ('55', '27', '1', 'tauro', '1');
INSERT INTO contenidoclaves VALUES ('56', '28', '1', 'Geminis', '1');
INSERT INTO contenidoclaves VALUES ('57', '28', '1', 'geminis', '1');
INSERT INTO contenidoclaves VALUES ('58', '29', '1', 'Cancer', '1');
INSERT INTO contenidoclaves VALUES ('59', '29', '1', 'cancer', '1');
INSERT INTO contenidoclaves VALUES ('60', '30', '1', 'Leo', '1');
INSERT INTO contenidoclaves VALUES ('61', '31', '1', 'leo', '1');
INSERT INTO contenidoclaves VALUES ('62', '32', '1', 'Sagitario', '1');
INSERT INTO contenidoclaves VALUES ('63', '33', '1', 'sagitario', '1');
INSERT INTO contenidoclaves VALUES ('64', '34', '1', 'Capricornio', '1');
INSERT INTO contenidoclaves VALUES ('65', '35', '1', 'capricornio', '1');
INSERT INTO contenidoclaves VALUES ('66', '36', '1', 'Libra', '1');
INSERT INTO contenidoclaves VALUES ('67', '37', '1', 'libra', '1');
INSERT INTO contenidoclaves VALUES ('68', '41', '1', 'V', '1');
INSERT INTO contenidoclaves VALUES ('69', '42', '1', 'C', '1');

-- ----------------------------
-- Table structure for `contenidohoroscopos`
-- ----------------------------
DROP TABLE IF EXISTS `contenidohoroscopos`;
CREATE TABLE `contenidohoroscopos` (
  `idContenidoHoroscopo` int(11) NOT NULL AUTO_INCREMENT,
  `idContenido` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Estatus` int(11) NOT NULL,
  `Texto` varchar(250) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`idContenidoHoroscopo`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of contenidohoroscopos
-- ----------------------------
INSERT INTO contenidohoroscopos VALUES ('24', '24', 'Escorpio', '1', 'Estás intentando con todas tus fuerzas aprender a controlar tu carácter y conseguir las metas que tienes en mente. La lección que debes aprender de...', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('25', '25', 'Acuario', '1', 'Estos días atraerás a quien te propongas aunque tú sólo tendrás ojos para tu pareja. Estarás muy ocupado en tu trabajo, tendrás demasiadas cosas', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('26', '26', 'Piscis', '1', 'Dispones de una excelente capacidad para investigar y analizar, sobre todo las áreas más complicadas.', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('27', '27', 'Tauro', '1', 'Hasta que no aprendas a controlar tu carácter, te resultará difícil lograr tus metas. Acepta que existen otros puntos de vista', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('28', '28', 'Geminis', '1', 'Te preocupas demasiado por tu apariencia, es decir, cómo te muestras a los demás. Esa sobrevaloración de la vida social, puede interponerse', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('29', '29', 'Cancer', '1', 'Tus sentimientos son profundos, pero los guardas como si de un tesoro secreto de incalculable valor se tratara. No demuestras lo que sientes', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('30', '30', 'Leo', '1', 'uida tu salud, porque tienes propensión a esforzarte más allá de tus límites, incluso más allá de tus fuerzas y eso te puede perjudicar.', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('31', '31', 'Sagitario', '1', 'Entras en una etapa estupenda para hacer un cambio de imagen de cara a los próximos meses de verano, prepara la piel, nutrir el cabello', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('32', '32', 'Capricornio', '1', 'En el pasado, sufriste mucho en el amor y ahora tienes miedo de abrirte a esa nueva relación.', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('33', '24', 'Escorpio', '1', 'Tendras lo que te mereces!', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('34', '29', 'Cancer', '1', 'Terminaras los servicios del Kannel este martes', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('35', '33', 'Libra', '1', 'Felicidades Campeona, Seras Campeona Nacional por 3 vez ;)', '2010-11-30');
INSERT INTO contenidohoroscopos VALUES ('36', '23', 'Aries', '1', 'Este es el Horoscopo de Aries', '2010-11-30');

-- ----------------------------
-- Table structure for `contenidoinfo`
-- ----------------------------
DROP TABLE IF EXISTS `contenidoinfo`;
CREATE TABLE `contenidoinfo` (
  `idContenidoInfo` int(11) NOT NULL AUTO_INCREMENT,
  `idContenido` int(11) NOT NULL,
  `Etiqueta` varchar(250) NOT NULL,
  `Valor` varchar(250) NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idContenidoInfo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contenidoinfo
-- ----------------------------
INSERT INTO contenidoinfo VALUES ('1', '1', 'Etiqueta 01', 'Valor 01', '1');
INSERT INTO contenidoinfo VALUES ('2', '1', 'Etiqueta 02', 'Valor 02', '1');

-- ----------------------------
-- Table structure for `contenidos`
-- ----------------------------
DROP TABLE IF EXISTS `contenidos`;
CREATE TABLE `contenidos` (
  `idContenido` int(11) NOT NULL AUTO_INCREMENT,
  `idServicio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Archivo` varchar(100) DEFAULT NULL,
  `Icono` varchar(100) DEFAULT NULL,
  `IconoDestacado` varchar(100) DEFAULT NULL,
  `Estatus` int(11) NOT NULL,
  `Texto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idContenido`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of contenidos
-- ----------------------------
INSERT INTO contenidos VALUES ('1', '4', 'Chica 01', 'El contenido 1', '~/Contenido/Fondos/chica_01.jpg', '~/Resources/Iconos/116-controller.gif', '~/Resources/Iconos/116-controller.gif', '1', null);
INSERT INTO contenidos VALUES ('2', '4', 'Chica 02', 'El contenido 2', '~/Contenido/Fondos/chica_02.jpg', '~/Resources/Iconos/116-controller.gif', '~/Resources/Iconos/116-controller.gif', '1', null);
INSERT INTO contenidos VALUES ('3', '4', 'Chica 03', 'El contenido 3', '~/Contenido/Fondos/chica_03.jpg', '~/Resources/Iconos/116-controller.gif', '~/Resources/Iconos/116-controller.gif', '1', null);
INSERT INTO contenidos VALUES ('4', '4', 'Auto 01', 'El contenido 4', '~/Contenido/Fondos/Autos/IMG_0015.jpg', '~/Resources/Iconos/116-controller.gif', '~/Resources/Iconos/116-controller.gif', '1', null);
INSERT INTO contenidos VALUES ('5', '4', 'Auto 02', 'El contenido 5', '~/Contenido/Fondos/Autos/IMG_0016.jpg', '~/Resources/Iconos/116-controller.gif', '~/Resources/Iconos/116-controller.gif', '1', null);
INSERT INTO contenidos VALUES ('6', '4', 'Animal 01', 'Contenido # 6', '~/Contenido/Fondos/Animales/IMG_0017.jpg', '~/Resources/Iconos/116-controller.gif', '~/Resources/Iconos/116-controller.gif', '1', null);
INSERT INTO contenidos VALUES ('7', '6', 'Horoscopos', 'Horoscopos', '~/Contenido/Fondos/9068.jpg', '~/Resources/Iconos/116-controller.gif', '~/Resources/Iconos/116-controller.gif', '1', null);
INSERT INTO contenidos VALUES ('8', '8', 'chiste', 'Chiste1', 'Nothing', 'Nothing', 'Nothing', '1', 'Este es el chiste 1 fabor de reirse hahaha ');
INSERT INTO contenidos VALUES ('9', '8', 'chiste', 'Chiste2', 'Nothing', 'Nothing', 'Nothing', '1', 'Mama, Mama En la escuela me Dicen Joaquin, Mama: OSH CALLATE JOAQUIN :@!!!');
INSERT INTO contenidos VALUES ('10', '8', 'chiste', 'Chiste3', 'Nothing', 'Nothing', 'Nothing', '1', 'Este es el chiste 3, ahora no te toca reir jum :P');
INSERT INTO contenidos VALUES ('11', '8', 'chiste', 'Chiste4', 'Nothing', 'Nothing', 'Nothing', '1', 'EN verdad pensaste que te hiba a mandar un chiste ');
INSERT INTO contenidos VALUES ('12', '8', 'chiste', 'Chiste5', 'Nothing', 'Nothing', 'Nothing', '1', 'aqui va el chiste...... Bien que no esto es puro shhhhow ;)');
INSERT INTO contenidos VALUES ('13', '9', 'Piropo', 'Piropo1', 'Nothing', 'Nothing', 'Nothing', '1', 'Flaca… ¡tírame un hueso!');
INSERT INTO contenidos VALUES ('14', '9', 'Piropo', 'Piropo2', 'Nothing', 'Nothing', 'Nothing', '1', 'Mira no’mas tanta carne y yo chimuelo');
INSERT INTO contenidos VALUES ('15', '9', 'Piropo', 'Piropo3', 'Nothing', 'Nothing', 'Nothing', '1', 'Con ese par de tortas y un licuado….\r\natravieso el desierto');
INSERT INTO contenidos VALUES ('16', '9', 'Piropo', 'Piropo4', 'Nothing', 'Nothing', 'Nothing', '1', 'Si la felicidad es agua y el amor es fuego,\r\n¡Como me gustaría ser tu bombero..! ');
INSERT INTO contenidos VALUES ('17', '9', 'Piropo', 'Piropo5', 'Nothing', 'Nothing', 'Nothing', '1', 'Quiero tener hijos preciosos algún día,\r\ny quisiera preguntar a tus padres cómo\r\nlograron hacer algo tan bonito como tú.');
INSERT INTO contenidos VALUES ('18', '10', 'Ligue', 'Ligue1', 'Nothing', 'Nothing', 'Nothing', '1', '¿Crees en el amor a primera vista o tengo que volver a pasar delante tuyo?.');
INSERT INTO contenidos VALUES ('19', '10', 'Ligue', 'Ligue2', 'Nothing', 'Nothing', 'Nothing', '1', '¿Me permites utilizar tu teléfono? Quiero llamar a mi madre para decirle que he conocido a la chica de mis sueños.');
INSERT INTO contenidos VALUES ('20', '10', 'Ligue', 'Ligue3', 'Nothing', 'Nothing', 'Nothing', '1', 'Perdona, pero la reconozco. ¿No fuimos locamente felices y casados en una vida anterior?.');
INSERT INTO contenidos VALUES ('21', '10', 'Ligue', 'Ligue4', 'Nothing', 'Nothing', 'Nothing', '1', 'Nunca dejes de sonreír, porque nunca sabes quien se puede enamorar de tu sonrisa.');
INSERT INTO contenidos VALUES ('22', '10', 'Ligue', 'Ligue4', 'Nothing', 'Nothing', 'Nothing', '1', 'Mi mente te piensa, mi piel te desea, afuera la tormenta me recuerda el martirio de no tenerte junto a mí..');
INSERT INTO contenidos VALUES ('23', '6', 'Aries', 'Aries', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('24', '6', 'Escorpio', 'Escorpio', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('25', '6', 'Acuario', 'Acuario', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('26', '6', 'Piscis', 'Piscis', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('27', '6', 'Tauro', 'Tauro', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('28', '6', 'Geminis', 'Geminis', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('29', '6', 'Cancer', 'Cancer', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('30', '6', 'Leo', 'Virgo', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('31', '6', 'Sagitario', 'Sagitario', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('32', '6', 'Capricornio', 'Capricornio', 'Nothing', 'Nothing', 'Nothing', '1', '');
INSERT INTO contenidos VALUES ('33', '6', 'Libra', 'Libra', 'Nothing', 'Nothing', 'Nothing', '1', null);
INSERT INTO contenidos VALUES ('34', '2', 'Latina', 'Latina', '~/Contenido/Fondos/chica_01.jpg', '~/Contenido/Fondos/chica_01_icono.jpg', '~/Contenido/Fondos/chica_01_icono.jpg', '1', null);
INSERT INTO contenidos VALUES ('35', '1001', 'Chiste', 'Chiste', '~/Contenido/Fondos/chica_01.jpg', '~/Contenido/Fondos/chica_01.jpg', '~/Contenido/Fondos/chica_01.jpg', '1', 'Este es el Chiste 1');
INSERT INTO contenidos VALUES ('36', '1001', 'Chiste2', 'Chiste2', '~/Contenido/Fondos/chica_01.jpg', '~/Contenido/Fondos/chica_01.jpg', '~/Contenido/Fondos/chica_01.jpg', '1', 'Este es el Chiste 2');
INSERT INTO contenidos VALUES ('40', '1002', 'Golosa69', 'Golosa69', 'hau', 'Nothing', 'Nothing', '1', 'Cualquier Cosa');
INSERT INTO contenidos VALUES ('41', '12', 'SeguroVida', 'Protgt Seguro de Vida', 'Archivo', 'Icono', 'IconoDestacado', '1', 'Seguro De vida PROTGT');
INSERT INTO contenidos VALUES ('42', '11', 'SeguroCelular', 'Protgt Seguro Celular', 'Archivo', 'Icono', 'IconoDestacado', '1', 'Seguro Para Tu Celular');

-- ----------------------------
-- Table structure for `contenidotextos`
-- ----------------------------
DROP TABLE IF EXISTS `contenidotextos`;
CREATE TABLE `contenidotextos` (
  `IdContenidoTexto` int(11) NOT NULL AUTO_INCREMENT,
  `IdTexto` int(11) DEFAULT NULL,
  `Texto` varchar(255) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Estatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdContenidoTexto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contenidotextos
-- ----------------------------
INSERT INTO contenidotextos VALUES ('1', '1', 'Tendras lo que te mereces', '2010-11-02', '1');
INSERT INTO contenidotextos VALUES ('2', '1', 'No se que esperas para llegarle', '2010-11-02', '1');
INSERT INTO contenidotextos VALUES ('3', '1', 'blablablablablabla', '2010-11-02', '1');
INSERT INTO contenidotextos VALUES ('4', '1', 'Que la fuerza te acompañe ', '2010-11-02', '1');
INSERT INTO contenidotextos VALUES ('5', '2', 'Hoy ganan las Rayaaas', '2010-11-02', '1');
INSERT INTO contenidotextos VALUES ('6', '2', 'Cruz Azul lider del Apertura 35 puntos', '2010-11-02', '1');
INSERT INTO contenidotextos VALUES ('7', '2', 'Resultados FIn de Semana Monarcas vs Monterrey (0-2), Tigres vs Jaguares (0-0)', '2010-11-02', '1');
INSERT INTO contenidotextos VALUES ('8', '2', 'EL chicaro volvio a anotar con los reds', '2010-11-02', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of favoritos
-- ----------------------------
INSERT INTO favoritos VALUES ('1', '8115315779', '2010-10-25', '0');
INSERT INTO favoritos VALUES ('2', '8115315779', '2010-10-26', '0');
INSERT INTO favoritos VALUES ('3', '8115315779', '2010-10-26', '0');
INSERT INTO favoritos VALUES ('4', '8115311234', '2011-02-07', '0');
INSERT INTO favoritos VALUES ('5', '8115315779', '2011-02-07', '0');
INSERT INTO favoritos VALUES ('6', '8110034506', '2011-02-07', '0');

-- ----------------------------
-- Table structure for `historial`
-- ----------------------------
DROP TABLE IF EXISTS `historial`;
CREATE TABLE `historial` (
  `IdHistorial` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `smscid` varchar(100) NOT NULL,
  `marcacion` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `Texto` varchar(100) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`IdHistorial`)
) ENGINE=InnoDB AUTO_INCREMENT=754 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of historial
-- ----------------------------
INSERT INTO historial VALUES ('1', '2010-10-09 12:27:02', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('2', '2010-10-09 21:07:00', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('3', '2010-10-09 21:07:02', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('4', '2010-10-09 21:07:23', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('5', '2010-10-09 22:58:28', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('6', '2010-10-10 18:36:01', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('7', '2010-10-10 21:29:28', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('8', '2010-10-10 21:31:31', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('9', '2010-10-10 22:27:04', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('10', '2010-10-10 22:28:46', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('11', '2010-10-10 22:29:39', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('12', '2010-10-10 22:30:54', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('13', '2010-10-10 22:31:27', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('14', '2010-10-10 22:36:15', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('15', '2010-10-10 22:36:19', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('16', '2010-10-10 22:37:59', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('17', '2010-10-10 22:38:33', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('18', '2010-10-10 22:39:31', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('19', '2010-10-10 22:39:43', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('20', '2010-10-10 22:44:43', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('21', '2010-10-10 22:45:09', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('22', '2010-10-10 22:47:22', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('23', '2010-10-10 23:04:57', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('24', '2010-10-10 23:05:14', 'telcel', '31111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('25', '2010-10-11 12:21:07', '%i', '%P', '%p', 'fondotv', '0');
INSERT INTO historial VALUES ('26', '2010-10-11 12:21:29', '%i', '%P', '%p', 'fondo hot', '0');
INSERT INTO historial VALUES ('27', '2010-10-11 12:21:43', '%i', '%P', '%p', 'fondo sexy', '0');
INSERT INTO historial VALUES ('28', '2010-10-11 12:21:45', '%i', '%P', '%p', 'fondo sexy', '0');
INSERT INTO historial VALUES ('29', '2010-10-11 12:22:32', '%i', '%P', '%p', 'fony', '0');
INSERT INTO historial VALUES ('30', '2010-10-11 12:22:40', '%i', '%P', '%p', 'fondo sexy', '0');
INSERT INTO historial VALUES ('31', '2010-10-11 12:22:43', '%i', '%P', '%p', 'fondo sexy', '0');
INSERT INTO historial VALUES ('32', '2010-10-11 12:22:45', '%i', '%P', '%p', 'fondo sexy', '0');
INSERT INTO historial VALUES ('33', '2010-10-11 12:23:46', '%i', '%P', '%p', 'fondo sexy', '0');
INSERT INTO historial VALUES ('34', '2010-10-11 12:23:53', '%i', '%P', '%p', 'fondo hot', '0');
INSERT INTO historial VALUES ('35', '2010-10-11 12:25:26', '%i', '%P', '%p', 'fondo hot', '0');
INSERT INTO historial VALUES ('36', '2010-10-11 12:25:37', '%i', '%P', '%p', 'juego mario', '0');
INSERT INTO historial VALUES ('37', '2010-10-11 12:25:58', '%i', '%P', '%p', 'Juego mario', '0');
INSERT INTO historial VALUES ('38', '2010-10-11 12:26:17', '%i', '%P', '%p', 'Video sexy', '0');
INSERT INTO historial VALUES ('39', '2010-10-11 12:26:23', '%i', '%P', '%p', 'Videosexy', '0');
INSERT INTO historial VALUES ('40', '2010-10-11 12:26:28', '%i', '%P', '%p', 'Video sexy', '0');
INSERT INTO historial VALUES ('41', '2010-10-11 12:26:44', '%i', '%P', '%p', 'Video sexy', '0');
INSERT INTO historial VALUES ('42', '2010-10-11 12:27:03', '%i', '%P', '%p', 'Video sexy', '0');
INSERT INTO historial VALUES ('43', '2010-10-11 13:15:53', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('44', '2010-10-11 13:16:49', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('45', '2010-10-11 13:42:49', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('46', '2010-10-11 13:43:00', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('47', '2010-10-11 13:45:38', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('48', '2010-10-11 13:45:51', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('49', '2010-10-11 13:45:53', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('50', '2010-10-11 13:46:00', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('51', '2010-10-11 13:47:00', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('52', '2010-10-11 13:47:05', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('53', '2010-10-11 13:50:21', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('54', '2010-10-11 13:50:26', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('55', '2010-10-11 13:51:05', '%i', '%P', '%p', 'Video sexy', '0');
INSERT INTO historial VALUES ('56', '2010-10-11 13:52:00', 'telcel', '1111', '8110034506', 'fondos superman', '0');
INSERT INTO historial VALUES ('57', '2010-10-11 13:52:29', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('58', '2010-10-11 13:53:20', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('59', '2010-10-11 13:55:37', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('60', '2010-10-11 13:56:14', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('61', '2010-10-11 13:58:25', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('62', '2010-10-11 13:58:55', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('63', '2010-10-11 13:59:43', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('64', '2010-10-11 14:00:07', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('65', '2010-10-11 14:01:42', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('66', '2010-10-11 14:01:49', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('67', '2010-10-11 14:02:01', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('68', '2010-10-11 14:07:30', 'telcel', '1111', '8110034506', 'Fondo sexy', '0');
INSERT INTO historial VALUES ('69', '2010-10-11 14:16:48', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('70', '2010-10-11 14:21:04', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('71', '2010-10-11 14:23:33', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('72', '2010-10-11 14:24:41', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('73', '2010-10-11 14:25:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('74', '2010-10-11 14:25:29', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('75', '2010-10-11 14:28:22', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('76', '2010-10-11 14:28:29', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('77', '2010-10-11 14:30:51', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('78', '2010-10-11 14:31:11', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('79', '2010-10-11 14:33:58', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('80', '2010-10-11 14:37:23', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('81', '2010-10-11 14:39:51', 'dfgd', '3', '811', 'Fondotv', '0');
INSERT INTO historial VALUES ('82', '2010-10-11 14:42:17', 'dfgd', '3', '811', 'Fondotv', '0');
INSERT INTO historial VALUES ('83', '2010-10-11 14:43:27', 'dfgd', '3', '811', 'Fondotv', '0');
INSERT INTO historial VALUES ('84', '2010-10-11 15:03:48', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('85', '2010-10-11 15:03:50', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('86', '2010-10-11 15:03:54', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('87', '2010-10-11 15:33:33', 'telcel', '1111', '8110034506', 'Video sexy', '0');
INSERT INTO historial VALUES ('88', '2010-10-11 15:33:39', 'telcel', '1111', '8110034506', 'Video sexy', '0');
INSERT INTO historial VALUES ('89', '2010-10-11 15:33:43', 'telcel', '1111', '8110034506', 'Video sexy', '0');
INSERT INTO historial VALUES ('90', '2010-10-11 15:33:55', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('91', '2010-10-11 15:34:37', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('92', '2010-10-11 15:34:40', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('93', '2010-10-11 15:35:29', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('94', '2010-10-11 15:36:11', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('95', '2010-10-11 15:42:03', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('96', '2010-10-11 15:43:42', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('97', '2010-10-11 16:01:47', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('98', '2010-10-11 16:04:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('99', '2010-10-12 09:36:59', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('100', '2010-10-12 09:37:13', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('101', '2010-10-12 09:37:22', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('102', '2010-10-12 09:37:29', 'telcel', '1111', '8110034506', 'sexy chica', '0');
INSERT INTO historial VALUES ('103', '2010-10-12 09:37:36', 'telcel', '1111', '8110034506', 'sexy chica', '0');
INSERT INTO historial VALUES ('104', '2010-10-12 09:43:27', 'telcel', '1111', '8110034506', 'sexy chica', '0');
INSERT INTO historial VALUES ('105', '2010-10-12 09:45:25', 'telcel', '1111', '8110034506', 'sexy chica', '0');
INSERT INTO historial VALUES ('106', '2010-10-12 09:45:33', 'telcel', '1111', '8110034506', 'sexy chica', '0');
INSERT INTO historial VALUES ('107', '2010-10-12 09:45:47', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('108', '2010-10-12 09:51:41', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('109', '2010-10-12 09:51:53', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('110', '2010-10-12 09:53:31', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('111', '2010-10-12 09:54:03', 'telcel', '1111', '8110034506', 'fondotv', '0');
INSERT INTO historial VALUES ('112', '2010-10-12 09:54:24', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('113', '2010-10-12 09:54:39', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('114', '2010-10-12 10:00:26', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('115', '2010-10-12 10:00:41', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('116', '2010-10-12 10:00:45', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('117', '2010-10-12 10:02:46', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('118', '2010-10-12 10:04:50', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('119', '2010-10-12 10:05:06', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('120', '2010-10-12 10:07:03', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('121', '2010-10-12 10:08:11', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('122', '2010-10-12 10:08:17', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('123', '2010-10-12 10:08:30', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('124', '2010-10-12 10:08:38', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('125', '2010-10-12 10:08:42', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('126', '2010-10-12 10:09:08', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('127', '2010-10-12 10:10:10', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('128', '2010-10-12 10:10:20', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('129', '2010-10-12 10:10:40', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('130', '2010-10-12 10:16:47', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('131', '2010-10-12 10:34:08', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('132', '2010-10-12 11:01:09', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('133', '2010-10-12 11:44:28', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('134', '2010-10-12 11:45:41', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('135', '2010-10-12 11:59:28', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('136', '2010-10-12 13:26:18', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('137', '2010-10-12 13:32:12', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('138', '2010-10-12 13:32:21', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('139', '2010-10-12 13:32:41', 'telcel', '1111', '8110034506', 'chica', '0');
INSERT INTO historial VALUES ('140', '2010-10-12 14:10:24', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('141', '2010-10-12 14:19:15', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('142', '2010-10-12 14:21:28', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('143', '2010-10-12 14:21:33', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('144', '2010-10-12 14:21:37', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('145', '2010-10-12 14:21:39', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('146', '2010-10-12 14:21:41', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('147', '2010-10-12 14:21:44', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('148', '2010-10-12 14:36:33', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('149', '2010-10-12 14:38:19', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('150', '2010-10-12 15:25:29', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('151', '2010-10-12 15:25:50', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('152', '2010-10-12 15:26:02', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('153', '2010-10-12 15:29:34', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('154', '2010-10-12 15:30:39', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('155', '2010-10-12 15:30:58', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('156', '2010-10-12 19:03:08', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('157', '2010-10-12 19:03:33', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('158', '2010-10-12 19:04:08', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('159', '2010-10-12 19:04:34', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('160', '2010-10-12 19:04:53', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('161', '2010-10-12 19:05:31', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('162', '2010-10-12 19:05:37', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('163', '2010-10-12 19:06:13', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('164', '2010-10-12 22:47:29', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('165', '2010-10-12 22:53:56', 'telcel', '1111', '8110032506', 'chica', '0');
INSERT INTO historial VALUES ('166', '2010-10-13 09:26:01', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('167', '2010-10-13 09:26:24', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('168', '2010-10-13 09:26:32', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('169', '2010-10-13 09:26:37', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('170', '2010-10-13 09:26:46', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('171', '2010-10-13 09:28:44', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('172', '2010-10-13 09:34:01', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('173', '2010-10-13 09:57:26', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('174', '2010-10-13 11:58:29', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('175', '2010-10-13 11:58:29', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('176', '2010-10-13 12:00:20', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('177', '2010-10-14 09:55:35', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('178', '2010-10-14 13:01:16', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('179', '2010-10-14 13:30:40', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('180', '2010-10-15 10:49:09', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('181', '2010-10-15 11:57:10', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('182', '2010-10-15 11:57:10', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('183', '2010-10-15 12:01:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('184', '2010-10-15 12:01:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('185', '2010-10-15 12:03:50', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('186', '2010-10-15 12:03:50', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('187', '2010-10-15 12:04:44', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('188', '2010-10-15 12:04:45', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('189', '2010-10-15 12:05:06', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('190', '2010-10-15 12:05:17', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('191', '2010-10-15 12:07:58', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('192', '2010-10-15 12:08:04', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('193', '2010-10-15 12:10:44', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('194', '2010-10-15 12:10:44', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('195', '2010-10-15 12:12:52', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('196', '2010-10-15 12:12:53', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('197', '2010-10-15 12:15:43', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('198', '2010-10-15 12:15:53', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('199', '2010-10-15 12:18:47', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('200', '2010-10-15 12:18:53', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('201', '2010-10-15 12:26:01', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('202', '2010-10-15 12:26:01', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('203', '2010-10-15 12:32:57', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('204', '2010-10-15 12:32:58', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('205', '2010-10-15 12:33:39', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('206', '2010-10-15 12:33:40', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('207', '2010-10-15 12:35:08', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('208', '2010-10-15 12:35:08', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('209', '2010-10-15 12:41:05', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('210', '2010-10-15 12:41:05', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('211', '2010-10-15 12:45:39', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('212', '2010-10-15 12:45:39', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('213', '2010-10-15 12:54:39', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('214', '2010-10-15 12:54:40', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('215', '2010-10-15 12:55:41', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('216', '2010-10-15 12:55:41', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('217', '2010-10-15 12:57:37', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('218', '2010-10-15 12:57:38', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('219', '2010-10-15 12:58:22', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('220', '2010-10-15 12:58:22', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('221', '2010-10-15 12:59:26', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('222', '2010-10-15 12:59:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('223', '2010-10-15 13:00:17', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('224', '2010-10-15 13:00:17', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('225', '2010-10-15 13:00:53', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('226', '2010-10-15 13:00:53', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('227', '2010-10-15 13:04:34', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('228', '2010-10-15 13:04:34', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('229', '2010-10-15 13:05:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('230', '2010-10-15 13:05:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('231', '2010-10-15 13:15:36', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('232', '2010-10-15 13:15:36', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('233', '2010-10-15 13:26:55', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('234', '2010-10-15 13:26:55', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('235', '2010-10-15 13:27:14', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('236', '2010-10-15 13:27:15', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('237', '2010-10-15 13:53:17', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('238', '2010-10-15 13:53:18', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('239', '2010-10-15 13:54:15', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('240', '2010-10-15 13:54:15', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('241', '2010-10-15 13:57:20', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('242', '2010-10-15 13:57:21', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('243', '2010-10-15 14:03:21', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('244', '2010-10-15 14:03:21', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('245', '2010-10-15 14:15:04', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('246', '2010-10-15 14:15:04', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('247', '2010-10-15 14:56:03', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('248', '2010-10-15 14:56:03', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('249', '2010-10-15 14:57:06', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('250', '2010-10-15 14:57:06', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('251', '2010-10-15 19:37:20', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('252', '2010-10-15 19:37:21', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('253', '2010-10-15 19:39:45', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('254', '2010-10-15 19:39:45', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('255', '2010-10-15 19:39:45', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('256', '2010-10-15 19:41:28', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('257', '2010-10-15 19:41:28', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('258', '2010-10-15 19:41:28', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('259', '2010-10-15 19:42:03', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('260', '2010-10-15 19:42:03', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('261', '2010-10-15 19:42:04', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('262', '2010-10-15 19:42:39', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('263', '2010-10-15 19:42:39', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('264', '2010-10-15 19:42:39', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('265', '2010-10-18 09:42:25', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('266', '2010-10-18 09:42:46', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('267', '2010-10-18 11:24:49', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('268', '2010-10-18 11:48:31', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('269', '2010-10-18 11:49:34', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('270', '2010-10-18 11:50:36', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('271', '2010-10-18 11:50:59', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('272', '2010-10-18 11:50:59', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('273', '2010-10-18 11:52:07', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('274', '2010-10-18 11:52:08', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('275', '2010-10-18 14:04:03', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('276', '2010-10-18 14:04:03', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('277', '2010-10-18 14:24:21', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('278', '2010-10-18 14:24:21', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('279', '2010-10-18 16:38:33', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('280', '2010-10-18 16:42:12', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('281', '2010-10-18 16:44:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('282', '2010-10-18 16:44:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('283', '2010-10-18 16:45:05', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('284', '2010-10-18 16:45:18', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('285', '2010-10-18 16:45:48', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('286', '2010-10-18 16:46:24', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('287', '2010-10-18 16:46:24', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('288', '2010-10-18 17:19:55', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('289', '2010-10-18 17:19:56', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('290', '2010-10-18 17:20:26', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('291', '2010-10-18 17:20:26', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('292', '2010-10-18 17:21:14', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('293', '2010-10-18 17:23:20', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('294', '2010-10-19 15:23:50', 'Telcel', '1111', '81199999', 'foto sexy89', '0');
INSERT INTO historial VALUES ('295', '2010-10-19 15:25:21', 'Telcel', '1111', '81199999', 'foto sexy89', '0');
INSERT INTO historial VALUES ('296', '2010-10-19 15:25:21', 'Telcel', '1111', '81199999', 'foto sexy89', '0');
INSERT INTO historial VALUES ('297', '2010-10-19 15:26:09', 'Telcel', '1111', '81199999', 'foto sexy', '0');
INSERT INTO historial VALUES ('298', '2010-10-19 15:26:09', 'Telcel', '1111', '81199999', 'foto sexy', '0');
INSERT INTO historial VALUES ('299', '2010-10-19 15:26:28', 'Telcel', '1111', '81199999', 'fotosexy', '0');
INSERT INTO historial VALUES ('300', '2010-10-19 15:26:28', 'Telcel', '1111', '81199999', 'fotosexy', '0');
INSERT INTO historial VALUES ('301', '2010-10-19 15:26:42', 'Telcel', '1111', '81199999', 'fotorgerwgrsexy', '0');
INSERT INTO historial VALUES ('302', '2010-10-19 15:26:42', 'Telcel', '1111', '81199999', 'fotorgerwgrsexy', '0');
INSERT INTO historial VALUES ('303', '2010-10-19 15:27:07', 'Telcel', '1111', '81199999', 'fotorgerwgrsexy', '0');
INSERT INTO historial VALUES ('304', '2010-10-19 15:27:07', 'Telcel', '1111', '81199999', 'fotorgerwgrsexy', '0');
INSERT INTO historial VALUES ('305', '2010-10-19 15:27:45', 'Telcel', '1111', '81199999', 'y', '0');
INSERT INTO historial VALUES ('306', '2010-10-19 15:27:45', 'Telcel', '1111', '81199999', 'y', '0');
INSERT INTO historial VALUES ('307', '2010-10-19 15:32:19', 'Telcel', '1111', '81199999', 'y', '0');
INSERT INTO historial VALUES ('308', '2010-10-19 15:32:19', 'Telcel', '1111', '81199999', 'y', '0');
INSERT INTO historial VALUES ('309', '2010-10-19 15:34:20', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('310', '2010-10-19 15:35:58', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('311', '2010-10-19 16:21:56', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('312', '2010-10-19 16:21:56', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('313', '2010-10-19 16:22:37', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('314', '2010-10-19 16:22:37', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('315', '2010-10-19 16:23:05', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('316', '2010-10-19 16:23:05', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('317', '2010-10-19 16:23:08', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('318', '2010-10-19 16:23:08', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('319', '2010-10-19 16:23:22', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('320', '2010-10-19 16:23:22', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('321', '2010-10-19 16:23:46', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('322', '2010-10-19 16:23:46', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('323', '2010-10-19 16:24:12', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('324', '2010-10-19 16:24:12', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('325', '2010-10-19 16:24:58', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('326', '2010-10-19 16:24:59', 'Telcel', '1111', '81199999', 'fondo sexy', '0');
INSERT INTO historial VALUES ('327', '2010-10-19 16:25:38', 'Telcel', '1111', '81199999', 'fondo sexy89', '0');
INSERT INTO historial VALUES ('328', '2010-10-19 16:25:39', 'Telcel', '1111', '81199999', 'fondo sexy89', '0');
INSERT INTO historial VALUES ('329', '2010-10-19 16:26:20', 'Telcel', '1111', '81199999', 'fondosdfsexy89', '0');
INSERT INTO historial VALUES ('330', '2010-10-19 16:26:21', 'Telcel', '1111', '81199999', 'fondosdfsexy89', '0');
INSERT INTO historial VALUES ('331', '2010-10-20 09:30:54', 'Telcel', '1111', '81199999', 'fondosdfsexy89', '0');
INSERT INTO historial VALUES ('332', '2010-10-20 09:30:55', 'Telcel', '1111', '81199999', 'fondosdfsexy89', '0');
INSERT INTO historial VALUES ('333', '2010-10-20 09:31:31', 'Telcel', '1111', '81199999', 'fondo sexy89', '0');
INSERT INTO historial VALUES ('334', '2010-10-20 09:31:31', 'Telcel', '1111', '81199999', 'fondo sexy89', '0');
INSERT INTO historial VALUES ('335', '2010-10-20 09:32:33', 'Telcel', '1111', '81199999', 'fondo sexy89', '0');
INSERT INTO historial VALUES ('336', '2010-10-20 09:32:34', 'Telcel', '1111', '81199999', 'fondo sexy89', '0');
INSERT INTO historial VALUES ('337', '2010-10-20 09:32:57', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('338', '2010-10-20 09:32:57', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('339', '2010-10-20 09:34:41', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('340', '2010-10-20 09:34:41', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('341', '2010-10-20 09:37:12', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('342', '2010-10-20 09:37:12', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('343', '2010-10-20 09:38:22', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('344', '2010-10-20 09:38:23', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('345', '2010-10-20 09:45:07', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('346', '2010-10-20 09:46:38', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('347', '2010-10-20 09:46:57', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('348', '2010-10-20 09:47:48', 'Telcel', '1111', '81199999', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('349', '2010-10-20 09:48:14', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('350', '2010-10-20 09:48:37', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('351', '2010-10-20 10:06:55', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('352', '2010-10-20 10:06:56', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('353', '2010-10-20 10:07:19', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('354', '2010-10-20 10:07:19', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('355', '2010-10-20 10:08:38', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('356', '2010-10-20 10:08:39', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('357', '2010-10-20 10:08:40', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('358', '2010-10-20 10:08:40', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('359', '2010-10-20 10:09:11', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('360', '2010-10-20 10:09:12', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('361', '2010-10-20 10:09:55', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('362', '2010-10-20 10:09:55', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('363', '2010-10-20 10:09:58', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('364', '2010-10-20 10:09:58', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('365', '2010-10-20 10:10:00', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('366', '2010-10-20 10:10:00', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('367', '2010-10-20 10:10:02', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('368', '2010-10-20 10:10:02', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('369', '2010-10-20 10:13:03', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('370', '2010-10-20 10:13:03', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('371', '2010-10-20 10:13:05', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('372', '2010-10-20 10:13:05', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('373', '2010-10-20 10:13:07', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('374', '2010-10-20 10:13:07', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('375', '2010-10-20 10:13:08', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('376', '2010-10-20 10:13:08', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('377', '2010-10-20 10:13:10', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('378', '2010-10-20 10:13:10', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('379', '2010-10-20 10:19:07', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('380', '2010-10-20 10:19:07', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('381', '2010-10-20 10:19:10', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('382', '2010-10-20 10:19:11', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('383', '2010-10-20 10:19:12', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('384', '2010-10-20 10:19:12', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('385', '2010-10-20 10:20:06', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('386', '2010-10-20 10:20:06', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('387', '2010-10-20 10:20:09', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('388', '2010-10-20 10:20:09', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('389', '2010-10-20 10:20:10', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('390', '2010-10-20 10:20:10', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('391', '2010-10-20 10:20:12', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('392', '2010-10-20 10:20:12', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('393', '2010-10-20 10:20:13', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('394', '2010-10-20 10:20:14', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('395', '2010-10-20 10:26:58', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('396', '2010-10-20 10:26:58', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('397', '2010-10-20 10:27:05', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('398', '2010-10-20 10:27:06', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('399', '2010-10-20 10:27:07', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('400', '2010-10-20 10:27:08', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('401', '2010-10-20 10:30:49', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('402', '2010-10-20 10:30:49', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('403', '2010-10-20 10:30:51', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('404', '2010-10-20 10:30:51', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('405', '2010-10-20 10:30:53', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('406', '2010-10-20 10:30:54', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('407', '2010-10-20 10:33:33', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('408', '2010-10-20 10:33:33', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('409', '2010-10-20 10:33:35', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('410', '2010-10-20 10:33:35', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('411', '2010-10-20 10:35:22', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('412', '2010-10-20 10:35:23', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('413', '2010-10-20 10:35:24', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('414', '2010-10-20 10:35:25', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('415', '2010-10-20 10:41:54', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('416', '2010-10-20 10:41:54', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('417', '2010-10-20 10:41:56', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('418', '2010-10-20 10:41:56', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('419', '2010-10-20 10:41:58', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('420', '2010-10-20 10:41:58', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('421', '2010-10-20 10:42:43', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('422', '2010-10-20 10:42:43', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('423', '2010-10-20 10:43:20', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('424', '2010-10-20 10:43:20', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('425', '2010-10-20 10:44:25', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('426', '2010-10-20 10:44:25', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('427', '2010-10-20 10:44:27', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('428', '2010-10-20 10:44:27', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('429', '2010-10-20 10:46:03', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('430', '2010-10-20 10:47:16', 'Telcel', '1111', '81199999', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('431', '2010-10-20 10:47:26', 'Telcel', '1111', '810276854', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('432', '2010-10-20 10:47:26', 'Telcel', '1111', '810276854', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('433', '2010-10-20 10:48:47', 'Telcel', '1111', '8102216854', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('434', '2010-10-20 10:48:47', 'Telcel', '1111', '8102216854', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('435', '2010-10-20 10:48:57', 'Telcel', '1111', '2216854', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('436', '2010-10-20 10:48:57', 'Telcel', '1111', '2216854', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('437', '2010-10-20 10:50:56', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('438', '2010-10-20 10:50:56', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('439', '2010-10-20 11:39:47', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('440', '2010-10-20 11:40:07', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('441', '2010-10-20 11:41:11', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('442', '2010-10-20 11:41:51', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('443', '2010-10-20 12:17:59', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('444', '2010-10-21 10:53:07', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('445', '2010-10-21 10:54:44', 'Telcel', '1111', '2216854121', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('446', '2010-10-21 10:58:57', 'Telcel', '1111', '99874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('447', '2010-10-21 11:02:00', 'Telcel', '1111', '1874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('448', '2010-10-21 11:29:34', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('449', '2010-10-21 11:32:01', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('450', '2010-10-21 11:34:26', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('451', '2010-10-21 11:39:40', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('452', '2010-10-21 11:46:31', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('453', '2010-10-21 11:48:04', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('454', '2010-10-21 11:59:06', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('455', '2010-10-21 12:01:01', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('456', '2010-10-21 12:09:11', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('457', '2010-10-21 12:16:52', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('458', '2010-10-21 12:20:11', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('459', '2010-10-21 12:21:43', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('460', '2010-10-21 12:21:48', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('461', '2010-10-21 12:31:56', 'Telcel', '1111', '3874321', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('462', '2010-10-21 12:33:13', 'Telcel', '1111', '212111', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('463', '2010-10-21 12:37:07', 'Telcel', '1111', '24322111', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('464', '2010-10-21 13:05:40', 'Telcel', '1111', '242112111', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('465', '2010-10-21 13:06:37', 'Telcel', '1111', '242112111', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('466', '2010-10-21 13:07:14', 'Telcel', '1111', '242112111', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('467', '2010-10-21 13:08:38', 'Telcel', '1111', '242112111', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('468', '2010-10-21 13:15:27', 'Telcel', '1111', '8110034567', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('469', '2010-10-21 13:16:31', 'Telcel', '1111', '8110034567', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('470', '2010-10-22 13:54:21', 'Telcel', '1111', '8211003671', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('471', '2010-10-22 13:57:20', 'Telcel', '1111', '8211003671', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('472', '2010-10-22 13:58:07', 'Telcel', '1111', '8211003671', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('473', '2010-10-22 13:59:22', 'Telcel', '1111', '8211003671', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('474', '2010-10-22 13:59:28', 'Telcel', '1111', '8211003671', 'JuegoPacman22', '0');
INSERT INTO historial VALUES ('475', '2010-10-22 14:05:44', 'Telcel', '1111', '8211003671', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('476', '2010-10-22 14:05:59', 'Telcel', '1111', '8211003671', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('477', '2010-10-27 11:18:37', 'Telcel', '1111', '8211003671', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('478', '2010-10-27 11:18:49', 'Telcel', '1111', '8211003671', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('479', '2010-10-27 11:20:09', 'Telcel', '1111', '8211003671', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('480', '2010-10-27 11:23:08', 'Telcel', '1111', '8211003671', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('481', '2010-10-27 11:24:22', 'Telcel', '1111', '8211003671', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('482', '2010-10-27 11:24:38', 'Telcel', '1111', '675412332', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('483', '2010-10-27 11:25:03', 'Telcel', '1111', '6754121231', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('484', '2010-10-27 11:26:25', 'Telcel', '1111', '6754121231', 'Juego Pacman22', '0');
INSERT INTO historial VALUES ('485', '2010-10-27 11:32:49', 'Telcel', '1111', '8110034506', 'foto sexy89', '0');
INSERT INTO historial VALUES ('486', '2010-10-27 11:34:11', 'Telcel', '1111', '8110034506', 'foto sexy89', '0');
INSERT INTO historial VALUES ('487', '2010-10-27 11:42:07', 'Telcel', '1111', '8112391048', 'foto sexy89', '0');
INSERT INTO historial VALUES ('488', '2010-10-27 11:42:38', 'Telcel', '1111', '8112391048', 'foto sexy89', '0');
INSERT INTO historial VALUES ('489', '2010-11-01 10:37:33', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('490', '2010-11-01 10:39:39', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('491', '2010-11-03 13:10:25', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('492', '2010-11-03 13:16:27', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('493', '2010-11-03 13:18:37', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('494', '2010-11-03 13:25:58', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('495', '2010-11-03 13:25:58', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('496', '2010-11-03 13:50:30', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('497', '2010-11-03 13:55:48', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('498', '2010-11-03 13:58:16', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('499', '2010-11-03 14:03:50', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('500', '2010-11-03 14:05:55', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('501', '2010-11-03 15:10:05', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('502', '2010-11-03 15:15:37', 'telcel', '1111', '8110034506', 'Fondotv', '0');
INSERT INTO historial VALUES ('503', '2010-11-03 15:29:34', 'telcel', '1111', '8110034506', 'horoscopos', '0');
INSERT INTO historial VALUES ('504', '2010-11-03 15:32:16', 'telcel', '1111', '8110034506', 'horoscopos', '0');
INSERT INTO historial VALUES ('505', '2010-11-03 15:37:00', 'telcel', '1111', '8110034506', 'horoscopos', '0');
INSERT INTO historial VALUES ('506', '2010-11-03 15:49:42', 'telcel', '1111', '8110034506', 'horoscopos', '0');
INSERT INTO historial VALUES ('507', '2010-11-03 15:51:27', 'telcel', '1111', '8110034506', 'horoscopos', '0');
INSERT INTO historial VALUES ('508', '2010-11-09 16:20:07', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('509', '2010-11-09 16:20:08', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('510', '2010-11-09 16:21:32', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('511', '2010-11-09 22:32:24', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('512', '2010-11-09 22:40:35', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('513', '2010-11-09 22:51:54', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('514', '2010-11-09 22:51:54', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('515', '2010-11-09 22:51:54', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('516', '2010-11-09 22:57:20', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('517', '2010-11-09 23:01:18', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('518', '2010-11-09 23:02:17', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('519', '2010-11-09 23:03:03', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('520', '2010-11-09 23:03:47', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('521', '2010-11-09 23:04:52', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('522', '2010-11-09 23:05:39', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('523', '2010-11-09 23:09:58', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('524', '2010-11-09 23:22:41', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('525', '2010-11-09 23:37:16', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('526', '2010-11-09 23:44:31', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('527', '2010-11-09 23:56:50', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('528', '2010-11-10 00:01:39', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('529', '2010-11-10 00:08:05', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('530', '2010-11-10 00:14:04', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('531', '2010-11-10 00:15:11', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('532', '2010-11-10 09:30:11', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('533', '2010-11-10 09:33:47', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('534', '2010-11-10 09:34:23', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('535', '2010-11-10 09:35:52', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('536', '2010-11-10 09:38:02', 'Telcel_47774', '47774', '8110034506', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('537', '2010-11-10 09:38:55', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('538', '2010-11-10 09:47:56', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('539', '2010-11-10 09:54:13', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('540', '2010-11-10 10:08:07', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('541', '2010-11-10 10:11:19', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('542', '2010-11-10 10:15:50', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('543', '2010-11-10 10:17:27', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('544', '2010-11-10 11:42:46', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('545', '2010-11-10 11:55:48', 'Telcel_47774', '47774', '8180741231', 'Fusion Horoscopos', '0');
INSERT INTO historial VALUES ('546', '2010-11-12 15:56:25', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('547', '2010-11-12 15:56:54', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('548', '2010-11-13 12:45:23', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('549', '2010-11-13 12:46:59', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('550', '2010-11-13 12:57:55', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('551', '2010-11-13 13:10:19', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('552', '2010-11-13 13:18:16', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('553', '2010-11-13 13:21:45', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('554', '2010-11-13 13:30:21', 'Telcel_47774', '47774', '8180741231', 'Horoscopos', '0');
INSERT INTO historial VALUES ('555', '2010-11-20 18:20:44', 'telcel', 'TO', 'FROM', 'Random', '0');
INSERT INTO historial VALUES ('556', '2010-11-20 18:28:43', 'telcel', 'TO', 'FROM', 'Random', '0');
INSERT INTO historial VALUES ('557', '2010-11-20 18:29:18', 'telcel', 'TO', 'FROM', 'Random', '0');
INSERT INTO historial VALUES ('558', '2010-11-20 18:33:04', 'telcel', 'TO', 'FROM', 'Random', '0');
INSERT INTO historial VALUES ('559', '2010-11-20 18:34:28', 'telcel', 'TO', 'FROM', 'Random', '0');
INSERT INTO historial VALUES ('560', '2010-11-20 18:35:54', 'telcel', 'TO', 'FROM', 'Random', '0');
INSERT INTO historial VALUES ('561', '2010-11-20 18:37:01', 'telcel', 'TO', 'FROM', 'Random', '0');
INSERT INTO historial VALUES ('562', '2010-11-20 18:38:19', 'telcel', 'TO', 'FROM', 'Random', '0');
INSERT INTO historial VALUES ('563', '2010-11-20 18:40:39', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('564', '2010-11-20 18:40:59', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('565', '2010-11-20 18:41:31', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('566', '2010-11-20 18:43:59', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('567', '2010-11-20 18:46:40', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('568', '2010-11-22 08:56:40', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('569', '2010-11-22 09:13:45', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('570', '2010-11-22 09:17:46', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('571', '2010-11-22 09:27:18', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('572', '2010-11-22 09:31:37', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('573', '2010-11-22 09:43:59', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('574', '2010-11-22 09:44:13', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('575', '2010-11-22 09:46:19', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('576', '2010-11-22 13:05:36', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('577', '2010-11-22 13:19:50', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('578', '2010-11-22 13:55:03', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('579', '2010-11-22 13:58:31', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('580', '2010-11-23 09:06:42', 'Telcel_47774', '47774', '8180741231', 'Random', '0');
INSERT INTO historial VALUES ('581', '2010-11-23 10:13:03', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('582', '2010-11-23 11:33:41', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('583', '2010-11-23 13:21:50', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('584', '2010-11-23 13:40:26', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('585', '2010-11-23 13:57:31', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('586', '2010-11-23 14:25:38', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('587', '2010-11-24 09:26:27', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('588', '2010-11-24 10:53:41', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('589', '2010-11-24 13:30:51', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('590', '2010-11-24 13:53:48', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('591', '2010-11-25 11:18:48', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('592', '2010-11-26 11:03:29', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('593', '2010-11-26 12:07:36', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('594', '2010-11-26 13:21:46', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('595', '2010-11-26 13:44:03', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('596', '2010-11-26 13:48:15', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('597', '2010-11-29 09:16:31', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('598', '2010-11-29 10:48:01', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('599', '2010-11-29 11:22:14', 'Telcel_47774', '47774', '8180741231', 'Random chica', '0');
INSERT INTO historial VALUES ('600', '2010-11-30 10:42:00', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('601', '2010-11-30 10:44:24', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('602', '2010-11-30 10:47:14', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('603', '2010-11-30 10:51:14', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('604', '2010-11-30 10:57:59', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('605', '2010-11-30 11:06:20', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('606', '2010-11-30 11:31:22', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('607', '2010-11-30 11:41:30', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('608', '2010-11-30 11:42:48', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('609', '2010-11-30 11:59:37', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('610', '2010-11-30 12:07:06', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('611', '2010-11-30 12:12:17', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('612', '2010-11-30 13:36:14', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('613', '2010-11-30 13:40:25', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('614', '2010-11-30 13:53:23', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('615', '2010-11-30 16:55:41', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('616', '2010-11-30 17:02:01', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('617', '2010-11-30 17:05:27', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('618', '2010-11-30 21:58:44', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('619', '2010-11-30 22:04:02', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('620', '2010-11-30 22:28:34', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('621', '2010-11-30 22:32:57', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('622', '2010-12-01 09:31:34', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('623', '2010-12-01 09:35:26', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('624', '2010-12-01 09:46:21', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('625', '2010-12-01 10:09:55', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('626', '2010-12-01 10:20:56', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('627', '2010-12-01 10:28:27', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('628', '2010-12-01 10:42:10', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('629', '2010-12-01 10:43:09', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('630', '2010-12-01 10:55:30', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('631', '2010-12-01 11:32:31', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('632', '2010-12-01 11:37:40', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('633', '2010-12-01 11:45:58', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('634', '2010-12-01 12:11:43', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('635', '2010-12-02 12:50:18', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('636', '2010-12-03 12:08:40', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('637', '2010-12-03 12:08:40', 'Telcel_47774', '47774', '8180741231', 'Horoscopo Cancer', '0');
INSERT INTO historial VALUES ('638', '2010-12-03 12:16:11', 'Telcel_47774', '47774', '8180741231', 'Horoscopo Cancer', '0');
INSERT INTO historial VALUES ('639', '2010-12-03 12:27:02', 'Telcel_47774', '47774', '8180741231', 'Horoscopo Cancer', '0');
INSERT INTO historial VALUES ('640', '2010-12-03 12:30:37', 'Telcel_47774', '47774', '8180741231', 'Hot Golosa69', '0');
INSERT INTO historial VALUES ('641', '2010-12-03 12:33:12', 'Telcel_47774', '47774', '8180741231', 'Horoscopo Cancer', '0');
INSERT INTO historial VALUES ('642', '2010-12-03 12:37:36', 'Telcel_47774', '47774', '8180741231', 'Horoscopo Cancer', '0');
INSERT INTO historial VALUES ('643', '2010-12-04 13:00:22', 'Telcel', 'TO', 'FROM', 'COSA', '0');
INSERT INTO historial VALUES ('644', '2010-12-07 11:44:36', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('645', '2010-12-07 11:48:03', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('646', '2010-12-07 11:49:40', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('647', '2010-12-07 12:42:57', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('648', '2010-12-07 12:50:12', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('649', '2010-12-07 12:55:03', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('650', '2010-12-07 13:13:54', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('651', '2010-12-07 13:21:08', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('652', '2010-12-07 13:29:23', 'Telcel_47774', '47774', '8180741231', 'Horoscopo Cancer', '0');
INSERT INTO historial VALUES ('653', '2010-12-07 13:55:03', 'Telcel_47774', '47774', '8180741231', 'chiste', '0');
INSERT INTO historial VALUES ('654', '2010-12-07 14:01:54', 'Telcel_47774', '47774', '8180741231', 'chistes', '0');
INSERT INTO historial VALUES ('655', '2010-12-07 15:18:44', 'Telcel_47774', '47774', '8180741231', 'chistes', '0');
INSERT INTO historial VALUES ('656', '2010-12-07 15:22:47', 'Telcel_47774', '47774', '8180741231', 'chistes', '0');
INSERT INTO historial VALUES ('657', '2010-12-07 16:05:19', 'Telcel_47774', '47774', '8180741231', 'chistes', '0');
INSERT INTO historial VALUES ('658', '2010-12-07 16:20:24', 'Telcel_47774', '47774', '8180741231', 'chistes', '0');
INSERT INTO historial VALUES ('659', '2010-12-08 09:57:12', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('660', '2010-12-08 10:10:13', 'Telcel_47774', '47774', '8180741231', 'Pro Seguro', '0');
INSERT INTO historial VALUES ('661', '2010-12-08 10:14:30', 'Telcel_47774', '47774', '8110034506', 'Pro seguro', '0');
INSERT INTO historial VALUES ('662', '2010-12-08 10:25:30', 'Telcel_47774', '47774', '8180741231', 'Pro Seguro', '0');
INSERT INTO historial VALUES ('663', '2010-12-08 14:07:58', 'Telcel_47774', '47774', '8180741231', 'chistes', '0');
INSERT INTO historial VALUES ('664', '2010-12-09 16:20:46', 'Telcel_47774', '47774', '8180741231', 'Baja', '0');
INSERT INTO historial VALUES ('665', '2010-12-09 16:23:06', 'Telcel_47774', '47774', '8180741231', 'Baja', '0');
INSERT INTO historial VALUES ('666', '2010-12-09 16:26:43', 'Telcel_47774', '47774', '8180741231', 'Baja', '0');
INSERT INTO historial VALUES ('667', '2010-12-09 16:31:16', 'Telcel_47774', '47774', '8180741231', 'Baja', '0');
INSERT INTO historial VALUES ('668', '2010-12-09 16:33:11', 'Telcel_47774', '47774', '8180741231', 'Baja', '0');
INSERT INTO historial VALUES ('669', '2010-12-09 16:34:33', 'Telcel_47774', '47774', '8180741231', 'Baja', '0');
INSERT INTO historial VALUES ('670', '2010-12-09 16:40:57', 'Telcel_47774', '47774', '8180741231', 'baja', '0');
INSERT INTO historial VALUES ('671', '2010-12-10 15:16:38', 'Telcel_47774', '47774', '8180741231', 'Pro Seguro', '0');
INSERT INTO historial VALUES ('672', '2010-12-10 15:28:24', 'Telcel_47774', '47774', '8180741231', 'BAJAPROTGT', '0');
INSERT INTO historial VALUES ('673', '2010-12-10 15:32:29', 'Telcel_47774', '47774', '8180741231', 'BAJAPROTGT', '0');
INSERT INTO historial VALUES ('674', '2010-12-20 12:48:15', 'Telcel_47774', '47774', '8116330003', 'A', '0');
INSERT INTO historial VALUES ('675', '2010-12-20 13:10:45', 'Telcel_47774', '47774', '8187770001', 'A', '0');
INSERT INTO historial VALUES ('676', '2010-12-20 15:34:03', 'Telcel_66845', '66845', '3929289180', 'Baja', '0');
INSERT INTO historial VALUES ('677', '2010-12-21 13:23:37', 'Telcel_47774', '47774', '8180741231', 'Pro seguro', '0');
INSERT INTO historial VALUES ('678', '2010-12-28 12:32:39', 'Telcel_47774', '47774', '8180741231', 'ProtgtVida', '0');
INSERT INTO historial VALUES ('679', '2010-12-28 12:42:47', 'Telcel_47774', '47774', '8180741231', 'ProtgtVida', '0');
INSERT INTO historial VALUES ('680', '2010-12-28 12:49:30', 'Telcel_47774', '47774', '8180741231', 'ProtgtVida', '0');
INSERT INTO historial VALUES ('681', '2010-12-28 12:56:12', 'Telcel_47774', '47774', '8180741231', 'ProtgtVida', '0');
INSERT INTO historial VALUES ('682', '2010-12-28 12:56:49', 'Telcel_47774', '47774', '8180741231', 'ProtgtVida', '0');
INSERT INTO historial VALUES ('683', '2010-12-28 13:16:25', 'Telcel_47774', '47774', '8180741231', 'ProtgtSeguro', '0');
INSERT INTO historial VALUES ('684', '2010-12-28 13:16:54', 'Telcel_47774', '47774', '8180741231', 'Seguro', '0');
INSERT INTO historial VALUES ('685', '2010-12-28 13:18:17', 'Telcel_47774', '47774', '8180741231', 'Seguro', '0');
INSERT INTO historial VALUES ('686', '2010-12-28 13:19:13', 'Telcel_47774', '47774', '8180741231', 'Seguro', '0');
INSERT INTO historial VALUES ('687', '2010-12-28 13:22:30', 'Telcel_47774', '47774', '8180741231', 'Seguro', '0');
INSERT INTO historial VALUES ('688', '2010-12-28 15:48:09', 'Telcel_47774', '47774', '8180741231', 'Seguro', '0');
INSERT INTO historial VALUES ('689', '2010-12-28 16:00:03', 'Telcel_47774', '47774', '8110034506', 'Seguro', '0');
INSERT INTO historial VALUES ('690', '2011-01-18 10:26:31', 'Telcel_47774', '47774', '8180741231', 'Seguro C', '0');
INSERT INTO historial VALUES ('691', '2011-01-18 11:19:58', 'Telcel_47774', '47774', '8180741231', 'Protgt V', '0');
INSERT INTO historial VALUES ('692', '2011-01-18 11:24:06', 'Telcel_47774', '47774', '8180741231', 'Protgt V', '0');
INSERT INTO historial VALUES ('693', '2011-01-18 11:27:21', 'Telcel_47774', '47774', '8180741231', 'Protgt V', '0');
INSERT INTO historial VALUES ('694', '2011-01-18 11:31:58', 'Telcel_47774', '47774', '8180741231', 'Protgt V', '0');
INSERT INTO historial VALUES ('695', '2011-01-18 11:34:39', 'Telcel_47774', '47774', '8180741231', 'Protgt V', '0');
INSERT INTO historial VALUES ('696', '2011-01-18 11:37:25', 'Telcel_47774', '47774', '8180741231', 'Seguro Vida', '0');
INSERT INTO historial VALUES ('697', '2011-01-18 11:51:17', 'Telcel_47774', '47774', '8180741231', 'Protgt V', '0');
INSERT INTO historial VALUES ('698', '2011-01-18 12:08:17', 'Telcel_47774', '47774', '8180741231', 'protgtv', '0');
INSERT INTO historial VALUES ('699', '2011-01-18 12:27:24', 'Telcel_47774', '47774', '8180741231', 'protgtv', '0');
INSERT INTO historial VALUES ('700', '2011-01-19 11:31:39', 'Telcel_47774', '47774', '8180741231', 'C Protgt', '0');
INSERT INTO historial VALUES ('701', '2011-01-19 12:41:03', 'Telcel_47774', '47774', '8180741231', 'C Protgt', '0');
INSERT INTO historial VALUES ('702', '2011-01-27 11:45:23', 'Telcel_47774', '47774', '8180741231', 'Alta seguro cel', '0');
INSERT INTO historial VALUES ('703', '2011-01-27 11:49:58', 'Telcel_47774', '47774', '8180741231', 'Alta seguro cel', '0');
INSERT INTO historial VALUES ('704', '2011-01-27 11:52:10', 'Telcel_47774', '47774', '8180741231', 'Alta seguro cel', '0');
INSERT INTO historial VALUES ('705', '2011-01-27 11:54:31', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('706', '2011-01-27 11:57:24', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('707', '2011-01-27 12:00:00', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('708', '2011-01-27 12:02:52', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('709', '2011-01-27 12:08:01', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('710', '2011-01-27 12:09:15', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('711', '2011-01-27 12:49:22', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('712', '2011-01-27 14:52:41', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('713', '2011-01-27 14:54:32', 'Telcel_47774', '47774', '8113858757', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('714', '2011-01-27 14:55:07', 'Telcel_47774', '47774', '8110034506', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('715', '2011-01-27 14:57:14', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('716', '2011-01-28 10:47:34', '%i', '%P', '%p', '%a', '0');
INSERT INTO historial VALUES ('717', '2011-01-28 10:54:40', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('718', '2011-01-28 10:58:16', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('719', '2011-01-28 11:14:12', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('720', '2011-01-28 11:16:14', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('721', '2011-01-28 11:18:27', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('722', '2011-01-28 11:20:09', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('723', '2011-01-28 11:23:19', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('724', '2011-01-28 11:28:10', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('725', '2011-01-28 12:08:55', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('726', '2011-01-28 12:19:07', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('727', '2011-01-28 12:51:30', 'Telcel_66845', '66845', '5544619293', 'BAJA', '0');
INSERT INTO historial VALUES ('728', '2011-01-28 14:02:30', 'Telcel_47774', '47774', '8180741231', 'Jgmgjgj.jag.jt', '0');
INSERT INTO historial VALUES ('729', '2011-01-28 14:08:17', 'Telcel_47774', '47774', '8180741231', 'Cel', '0');
INSERT INTO historial VALUES ('730', '2011-01-28 14:11:32', 'Telcel_47774', '47774', '8180741231', 'Gmgkpjp', '0');
INSERT INTO historial VALUES ('731', '2011-01-31 10:12:17', 'Telcel_47774', '47774', '8110034506', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('732', '2011-01-31 10:16:38', 'Telcel_47774', '47774', '8110034506', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('733', '2011-01-31 12:52:21', 'Telcel_47774', '47774', '8118007873', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('734', '2011-01-31 12:53:19', 'Telcel_47774', '47774', '8118007873', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('735', '2011-01-31 12:58:13', 'Telcel_47774', '47774', '8118007873', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('736', '2011-01-31 13:15:24', 'Telcel_47774', '47774', '8118007873', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('737', '2011-01-31 13:16:38', 'Telcel_47774', '47774', '8118007873', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('738', '2011-01-31 13:18:43', 'Telcel_47774', '47774', '8118007873', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('739', '2011-01-31 13:20:02', 'Telcel_47774', '47774', '8118007873', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('740', '2011-01-31 13:32:32', 'Telcel_47774', '47774', '8180808082', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('741', '2011-01-31 14:39:03', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('742', '2011-01-31 15:14:08', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('743', '2011-01-31 15:17:04', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('744', '2011-01-31 15:21:30', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('745', '2011-01-31 15:24:19', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('746', '2011-01-31 15:35:17', 'Telcel_47774', '47774', '8110034506', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('747', '2011-01-31 15:40:40', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('748', '2011-01-31 15:43:35', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('749', '2011-02-01 09:53:33', 'Telcel_47774', '47774', '8180741231', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('750', '2011-02-01 10:01:58', 'Telcel_47774', '47774', '8180808082', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('751', '2011-02-01 10:31:44', 'Telcel_47774', '47774', '8180808082', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('752', '2011-02-01 11:11:37', 'Telcel_47774', '47774', '8184022492', 'Alta seguro celular', '0');
INSERT INTO historial VALUES ('753', '2011-02-01 11:14:10', 'Telcel_47774', '47774', '8184022492', 'Alta seguro celular', '0');

-- ----------------------------
-- Table structure for `hotnews`
-- ----------------------------
DROP TABLE IF EXISTS `hotnews`;
CREATE TABLE `hotnews` (
  `IdHotNews` int(11) NOT NULL AUTO_INCREMENT,
  `IdTexto` int(11) DEFAULT NULL,
  `IdServicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdHotNews`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of hotnews
-- ----------------------------
INSERT INTO hotnews VALUES ('1', '1', '6');
INSERT INTO hotnews VALUES ('2', '2', '7');

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
-- Table structure for `protgt`
-- ----------------------------
DROP TABLE IF EXISTS `protgt`;
CREATE TABLE `protgt` (
  `IdProtgt` int(11) NOT NULL AUTO_INCREMENT,
  `IdSuscripcion` int(11) DEFAULT NULL,
  `transactionid` int(11) DEFAULT NULL,
  `Telefono` varchar(100) DEFAULT NULL,
  `IdServicio` int(11) DEFAULT NULL,
  `idContenido` int(11) DEFAULT NULL,
  `Estatus` int(1) DEFAULT NULL,
  `FechaSuscripcion` datetime DEFAULT NULL,
  `FechaRenovacion` datetime DEFAULT NULL,
  `FechaSuscripcionRenovada` datetime DEFAULT NULL,
  PRIMARY KEY (`IdProtgt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of protgt
-- ----------------------------

-- ----------------------------
-- Table structure for `protgtp`
-- ----------------------------
DROP TABLE IF EXISTS `protgtp`;
CREATE TABLE `protgtp` (
  `IdPendiente` int(11) NOT NULL AUTO_INCREMENT,
  `Telefono` varchar(100) DEFAULT NULL,
  `IdServicio` int(11) DEFAULT NULL,
  `Reintentos` int(2) DEFAULT NULL,
  `Estatus` int(11) DEFAULT NULL,
  `idContenido` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPendiente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of protgtp
-- ----------------------------
INSERT INTO protgtp VALUES ('1', '8180741231', '11', '0', '0', '42');
INSERT INTO protgtp VALUES ('2', '8110034506', '11', '0', '0', '42');
INSERT INTO protgtp VALUES ('3', '8180741231', '11', '0', '0', '42');
INSERT INTO protgtp VALUES ('4', '8180741231', '11', '0', '0', '42');
INSERT INTO protgtp VALUES ('5', '8180741231', '11', '0', '0', '42');
INSERT INTO protgtp VALUES ('6', '8180808082', '11', '0', '0', '42');
INSERT INTO protgtp VALUES ('7', '8184022492', '11', '0', '0', '42');
INSERT INTO protgtp VALUES ('8', '8180741231', '1', '0', '3', '1');

-- ----------------------------
-- Table structure for `servicioclaves`
-- ----------------------------
DROP TABLE IF EXISTS `servicioclaves`;
CREATE TABLE `servicioclaves` (
  `idServicioClave` int(11) NOT NULL AUTO_INCREMENT,
  `idServicio` int(11) DEFAULT NULL,
  `idMedio` int(11) DEFAULT NULL,
  `Clave` varchar(100) DEFAULT NULL,
  `Estatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`idServicioClave`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 10240 kB';

-- ----------------------------
-- Records of servicioclaves
-- ----------------------------
INSERT INTO servicioclaves VALUES ('23', '11', '1', '^ProtgtCel', '1');
INSERT INTO servicioclaves VALUES ('24', '11', '1', '^Seguro', '1');
INSERT INTO servicioclaves VALUES ('25', '11', '1', '^ProCel', '1');
INSERT INTO servicioclaves VALUES ('26', '11', '1', '^Celular', '1');
INSERT INTO servicioclaves VALUES ('27', '11', '1', '^celular', '1');
INSERT INTO servicioclaves VALUES ('28', '11', '1', 'Alta seguro celular', '1');
INSERT INTO servicioclaves VALUES ('32', '12345', '1', '^bajaprotgt', '1');
INSERT INTO servicioclaves VALUES ('33', '12345', '1', '^Baja Protgt', '1');
INSERT INTO servicioclaves VALUES ('34', '12345', '1', '^BAJAPROTGT', '1');
INSERT INTO servicioclaves VALUES ('35', '12345', '1', ' ^BAJA PROTGT', '1');
INSERT INTO servicioclaves VALUES ('36', '12345', '1', '^baja protgt', '1');
INSERT INTO servicioclaves VALUES ('37', '12345', '1', '^Baja protgt', '1');
INSERT INTO servicioclaves VALUES ('38', '123456', '1', 'Baja', '1');
INSERT INTO servicioclaves VALUES ('39', '123456', '1', 'BAJA', '1');
INSERT INTO servicioclaves VALUES ('40', '123456', '1', 'B A J A', '1');
INSERT INTO servicioclaves VALUES ('41', '123456', '1', 'baja', '1');
INSERT INTO servicioclaves VALUES ('42', '12', '1', 'ProtgtVida', '1');
INSERT INTO servicioclaves VALUES ('43', '12', '1', 'ProVida', '1');
INSERT INTO servicioclaves VALUES ('44', '12', '1', 'Vida', '1');
INSERT INTO servicioclaves VALUES ('45', '12', '1', 'SeguroVida', '1');
INSERT INTO servicioclaves VALUES ('46', '12', '1', 'vida', '1');
INSERT INTO servicioclaves VALUES ('47', '12', '1', 'Alta Seguro Vida', '1');
INSERT INTO servicioclaves VALUES ('48', '12', '1', 'Alta Vida', '1');
INSERT INTO servicioclaves VALUES ('49', '12', '1', 'Alta V', '1');
INSERT INTO servicioclaves VALUES ('50', '12', '1', 'V Seguro', '1');
INSERT INTO servicioclaves VALUES ('51', '12', '1', 'VSeguro', '1');
INSERT INTO servicioclaves VALUES ('52', '11', '1', 'C Seguro', '1');
INSERT INTO servicioclaves VALUES ('53', '11', '1', 'Alta Seguro Cel', '1');
INSERT INTO servicioclaves VALUES ('54', '11', '1', 'Alta Cel', '1');
INSERT INTO servicioclaves VALUES ('55', '12', '1', 'alta seguro vida', '1');
INSERT INTO servicioclaves VALUES ('56', '12', '1', 'Alta seguro vida', '1');
INSERT INTO servicioclaves VALUES ('57', '12', '1', 'Protgt V', '1');
INSERT INTO servicioclaves VALUES ('59', '12', '1', 'protgt v', '1');
INSERT INTO servicioclaves VALUES ('61', '12', '1', 'PotgtV', '1');
INSERT INTO servicioclaves VALUES ('62', '12', '1', 'protgtv', '1');
INSERT INTO servicioclaves VALUES ('63', '11', '1', 'Cel Protg', '1');
INSERT INTO servicioclaves VALUES ('64', '11', '1', 'C Protg', '1');
INSERT INTO servicioclaves VALUES ('65', '11', '1', 'Pro Cel', '1');
INSERT INTO servicioclaves VALUES ('66', '11', '1', 'ALTA SEGURO CEL', '1');
INSERT INTO servicioclaves VALUES ('67', '11', '1', 'Alta seguro cel', '1');
INSERT INTO servicioclaves VALUES ('68', '11', '1', 'Alta seguro cel', '1');

-- ----------------------------
-- Table structure for `servicios`
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
  `idServicio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `SRSRating` int(11) DEFAULT NULL,
  `Estatus` int(11) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `Clase` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idServicio`)
) ENGINE=InnoDB AUTO_INCREMENT=123457 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 10240 kB; InnoDB free: 1';

-- ----------------------------
-- Records of servicios
-- ----------------------------
INSERT INTO servicios VALUES ('1', 'Fondos', '1278', '1', '1', null);
INSERT INTO servicios VALUES ('2', 'Hot', '1278', '1', '1', 'ServiciosSMSKannel.PortalSuscripcionesCommand, ServiciosSMSKannel');
INSERT INTO servicios VALUES ('4', 'Fondotv', '1278', '1', '1', null);
INSERT INTO servicios VALUES ('5', 'Horoscopos', '1278', '1', '1', null);
INSERT INTO servicios VALUES ('6', 'Horoscopos', '1278', '1', '3', 'ServiciosSMSKannel.HoroscopoCommand, ServiciosSMSKannel');
INSERT INTO servicios VALUES ('7', 'FutbolNews', '1279', '1', '3', null);
INSERT INTO servicios VALUES ('8', 'Chistes', '1278', '1', '2', 'ServiciosSMSKannel.RandomCommand, ServiciosSMSKannel');
INSERT INTO servicios VALUES ('9', 'Piropos', '1278', '1', '2', null);
INSERT INTO servicios VALUES ('10', 'Ligue', '1279', '1', '2', null);
INSERT INTO servicios VALUES ('11', 'PROTGTCel', '3283', '1', '4', 'ServiciosSMSKannel.ProtgtCommand, ServiciosSMSKannel');
INSERT INTO servicios VALUES ('12', 'PROTGTVida', '3284', '1', '4', 'ServiciosSMSKannel.ProtgtVidaCommand, ServiciosSMSKannel');
INSERT INTO servicios VALUES ('1000', 'Default', '1278', '1', '1', null);
INSERT INTO servicios VALUES ('1001', 'Random', '1', '1', '1', 'ServiciosSMSKannel.RandomCommand, ServiciosSMSKannel');
INSERT INTO servicios VALUES ('1002', 'Hot', '1278', '1', '1', 'ServiciosSMSKannel.PortalSuscripcionesCommand, ServiciosSMSKannel');
INSERT INTO servicios VALUES ('12345', 'BajaProTGT', '1', '1', '0', 'ServiciosSMSKannel.BAJAPtgtCommand, ServiciosSMSKannel');
INSERT INTO servicios VALUES ('123456', 'BajaPortalSuscripciones', '1', '1', '0', 'ServiciosSMSKannel.BAJAPortalSuscCommand, ServiciosSMSKannel');

-- ----------------------------
-- Table structure for `suschotnews`
-- ----------------------------
DROP TABLE IF EXISTS `suschotnews`;
CREATE TABLE `suschotnews` (
  `IdSuscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `transactionid` int(11) DEFAULT NULL,
  `Telefono` varchar(100) DEFAULT NULL,
  `IdServicio` int(1) DEFAULT NULL,
  `Reintentos` int(2) DEFAULT NULL,
  `Estatus` int(1) DEFAULT NULL,
  `FechaSuscripcion` datetime DEFAULT NULL,
  `FechaRenovacion` datetime DEFAULT NULL,
  `Tipo` int(11) DEFAULT NULL,
  `idContenido` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdSuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of suschotnews
-- ----------------------------
INSERT INTO suschotnews VALUES ('58', '0', '8110034506', '6', '0', '2', '2010-11-15 01:33:55', '0001-01-01 00:00:00', '3', null);
INSERT INTO suschotnews VALUES ('59', '8293546', '8110034506', '6', '0', '2', '2010-11-15 01:36:16', '0001-01-01 00:00:00', '3', null);
INSERT INTO suschotnews VALUES ('60', '8294008', '8110318711', '6', '0', '3', '2010-11-15 13:46:35', '0001-01-01 00:00:00', '3', null);
INSERT INTO suschotnews VALUES ('61', '8294027', '8110318711', '6', '0', '2', '2010-11-15 14:10:09', '0001-01-01 00:00:00', '3', '29');
INSERT INTO suschotnews VALUES ('62', '8294251', '8110318711', '2', '0', '3', '2010-11-15 20:10:58', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('63', '0', '8110318711', '2', '0', '0', '2010-11-15 21:37:22', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('64', '0', '8110318711', '2', '0', '0', '2010-11-15 21:38:37', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('65', '8294299', '8110034506', '2', '0', '3', '2010-11-15 21:39:11', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('66', '0', '8110318711', '2', '0', '0', '2010-11-15 21:57:04', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('67', '0', '8113858757', '2', '0', '0', '2010-11-15 22:00:29', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('68', '8294313', '8184022492', '2', '0', '2', '2010-11-15 22:01:48', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('69', '0', '8110318711', '2', '0', '0', '2010-11-15 22:23:44', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('70', '8294329', '8110318711', '2', '0', '3', '2010-11-15 22:25:06', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('71', '8294340', '8110318711', '2', '0', '3', '2010-11-15 22:41:30', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('72', '8294351', '8110318711', '2', '0', '2', '2010-11-15 22:56:44', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('73', '0', '8110318711', '2', '0', '0', '2010-11-16 07:42:21', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('74', '0', '8110318711', '2', '0', '0', '2010-11-16 09:05:20', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('75', '8294716', '8110034506', '2', '0', '3', '2010-11-16 09:06:49', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('76', '8294725', '8110034506', '2', '0', '2', '2010-11-16 09:11:05', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('77', '8294731', '8110034506', '2', '0', '3', '2010-11-16 09:17:07', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('81', '8294765', '8110034506', '2', '0', '2', '2010-11-16 09:54:49', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('82', '8294769', '8110034506', '6', '0', '2', '2010-11-16 09:58:18', '0001-01-01 00:00:00', '3', '29');
INSERT INTO suschotnews VALUES ('83', '8294777', '8110034506', '2', '0', '2', '2010-11-16 10:07:47', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('84', '8294801', '8110034506', '2', '0', '3', '2010-11-16 10:21:48', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('85', '8294802', '8110034506', '2', '0', '3', '2010-11-16 10:23:03', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('86', '8294807', '8110034506', '2', '0', '3', '2010-11-16 10:28:47', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('87', '8294939', '8110034506', '2', '0', '3', '2010-11-16 12:51:10', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('88', '8294942', '8110034506', '2', '0', '3', '2010-11-16 12:52:59', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('89', '8294966', '8110034506', '2', '0', '3', '2010-11-16 13:14:42', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('90', '8294991', '8110034506', '2', '0', '3', '2010-11-16 13:37:57', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('91', '8295010', '8110034506', '2', '0', '3', '2010-11-16 13:49:36', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('92', '8295015', '8110034506', '2', '0', '2', '2010-11-16 13:54:51', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('93', '8295123', '8110034506', '2', '0', '2', '2010-11-16 16:10:04', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('94', '8295793', '8110034506', '2', '0', '2', '2010-11-17 09:19:32', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('95', '0', '8110034506', '2', '0', '0', '2010-11-17 10:01:52', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('96', '8295818', '8110034506', '2', '0', '2', '2010-11-17 10:03:29', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('97', '8295839', '8110318711', '2', '0', '2', '2010-11-17 10:27:29', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('98', '8295841', '8110034506', '2', '0', '2', '2010-11-17 10:29:05', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('99', '8295846', '8110034506', '2', '0', '2', '2010-11-17 10:31:49', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('100', '8295849', '8110034506', '2', '0', '2', '2010-11-17 10:32:28', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('101', '8295852', '8113858757', '2', '0', '2', '2010-11-17 10:34:50', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('102', '8295856', '8110318711', '2', '0', '2', '2010-11-17 10:35:50', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('103', '8295858', '8110034506', '2', '0', '3', '2010-11-17 10:37:55', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('104', '8295863', '8110034506', '2', '0', '3', '2010-11-17 10:42:51', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('105', '8295875', '8181822181', '2', '0', '3', '2010-11-17 10:56:44', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('106', '8295886', '8181822181', '2', '0', '3', '2010-11-17 11:19:23', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('107', '8295891', '8110034506', '2', '0', '3', '2010-11-17 11:25:09', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('108', '8295896', '8113858757', '2', '0', '3', '2010-11-17 11:31:12', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('109', '8295901', '8110034506', '2', '0', '3', '2010-11-17 11:32:07', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('110', '8295910', '8113858757', '2', '0', '3', '2010-11-17 11:50:22', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('111', '8295917', '8110318711', '2', '0', '3', '2010-11-17 11:58:24', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('112', '8295926', '8110034506', '2', '0', '3', '2010-11-17 12:13:04', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('113', '8295931', '8181822181', '2', '0', '3', '2010-11-17 12:19:32', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('114', '8295944', '8181822181', '2', '0', '3', '2010-11-17 12:30:37', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('115', '8295959', '8181822181', '2', '0', '3', '2010-11-17 12:42:51', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('116', '8295962', '8181822181', '2', '0', '2', '2010-11-17 12:45:55', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('117', '8295975', '8181822181', '2', '0', '2', '2010-11-17 12:57:33', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('118', '8295986', '8181822181', '2', '0', '2', '2010-11-17 13:10:05', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('119', '0', '8181822181', '2', '0', '0', '2010-11-17 13:49:51', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('120', '8296966', '8181822181', '2', '0', '2', '2010-11-18 10:48:46', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('121', '8296997', '8181822181', '2', '0', '2', '2010-11-18 11:25:46', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('122', '8297022', '8181822181', '2', '0', '3', '2010-11-18 11:50:12', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('125', '8297102', '8181822181', '2', '0', '3', '2010-11-18 13:11:23', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('126', '8297107', '8113858757', '2', '0', '2', '2010-11-18 13:12:45', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('127', '8297115', '8113858757', '2', '0', '2', '2010-11-18 13:26:46', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('128', '8297125', '8110034506', '2', '0', '3', '2010-11-18 13:32:57', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('129', '8297128', '8110034506', '2', '0', '3', '2010-11-18 13:34:24', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('130', '8297146', '8110034506', '2', '0', '2', '2010-11-18 13:41:15', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('131', '0', '8110034506', '2', '0', '0', '2010-11-18 13:44:02', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('137', '8298750', '8110034506', '2', '0', '3', '2010-11-20 00:59:24', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('139', '8299109', '8110034506', '2', '0', '3', '2010-11-20 10:00:46', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('140', '8299118', '8110034506', '2', '0', '2', '2010-11-20 10:10:10', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('141', '8299125', '8110034506', '2', '0', '3', '2010-11-20 10:15:14', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('142', '8299134', '8110034506', '2', '0', '3', '2010-11-20 10:23:48', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('143', '8299141', '8110034506', '2', '0', '3', '2010-11-20 10:29:35', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('144', '0', '8110034506', '2', '0', '0', '2010-11-20 10:38:06', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('145', '8299158', '8110034506', '2', '0', '3', '2010-11-20 10:51:25', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('146', '8299165', '8110034506', '2', '0', '3', '2010-11-20 10:56:14', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('150', '8299192', '8110034506', '2', '0', '3', '2010-11-20 11:24:54', '0001-01-01 00:00:00', '1', '34');
INSERT INTO suschotnews VALUES ('151', '8299213', '8110034506', '6', '0', '2', '2010-11-20 11:51:21', '0001-01-01 00:00:00', '3', '29');
INSERT INTO suschotnews VALUES ('176', '8321074', '8110034506', '100', '0', '3', '2010-12-08 10:14:48', '0001-01-01 00:00:00', '4', '41');
INSERT INTO suschotnews VALUES ('178', '8321879', '8180741231', '100', '0', '10', '2010-12-10 15:20:51', '0001-01-01 00:00:00', '4', '41');
INSERT INTO suschotnews VALUES ('179', '0', '8180741231', '100', '0', '2', '2010-12-21 14:16:06', '0001-01-01 00:00:00', '4', '41');
INSERT INTO suschotnews VALUES ('180', null, null, null, null, null, null, null, null, null);
INSERT INTO suschotnews VALUES ('181', '1606330577', '8180741231', '11', '0', '0', '2010-12-28 13:25:44', '0001-01-01 00:00:00', '4', '42');

-- ----------------------------
-- Table structure for `suscprotgt`
-- ----------------------------
DROP TABLE IF EXISTS `suscprotgt`;
CREATE TABLE `suscprotgt` (
  `IdSuscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `transactionid` int(11) DEFAULT NULL,
  `Telefono` varchar(100) DEFAULT NULL,
  `IdServicio` int(11) DEFAULT NULL,
  `Estatus` int(1) DEFAULT NULL,
  `FechaSuscripcion` datetime DEFAULT NULL,
  `FechaSuscripcionAuto` datetime DEFAULT NULL,
  `FechaRenovacion` date DEFAULT NULL,
  `idContenido` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdSuscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of suscprotgt
-- ----------------------------

-- ----------------------------
-- Table structure for `suscripciones`
-- ----------------------------
DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE `suscripciones` (
  `IdSuscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `transactionid` int(11) DEFAULT NULL,
  `idPortal` int(11) DEFAULT NULL,
  `Telefono` varchar(100) DEFAULT NULL,
  `IdServicio` int(1) DEFAULT NULL,
  `Creditos` int(3) DEFAULT NULL,
  `Reintentos` int(2) DEFAULT NULL,
  `Estatus` int(1) DEFAULT NULL,
  `FechaSuscripcion` datetime DEFAULT NULL,
  `FechaRenovacion` datetime DEFAULT NULL,
  `idContenido` int(11) DEFAULT NULL,
  `Tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdSuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of suscripciones
-- ----------------------------
INSERT INTO suscripciones VALUES ('58', '83944849', '1', '8110034506', '6', '0', '0', '0', '2010-11-15 01:33:55', '0001-01-01 00:00:00', '2', null);
INSERT INTO suscripciones VALUES ('157', '8305142', '1', '8180741231', '1002', '4', '0', '0', '2010-12-01 10:59:39', '0001-01-01 00:00:00', '41', null);
INSERT INTO suscripciones VALUES ('158', '8305150', '1', '8180741231', '1002', '0', '0', '0', '2010-12-01 11:33:52', '0001-01-01 00:00:00', '41', null);
INSERT INTO suscripciones VALUES ('159', '8305152', '1', '8180741231', '1002', '6', '0', '0', '2010-12-01 11:37:40', '0001-01-01 00:00:00', '41', null);
INSERT INTO suscripciones VALUES ('160', '8305154', '1', '8180741231', '1002', '2', '0', '3', '2010-12-01 11:47:00', '0001-01-01 00:00:00', '41', null);
INSERT INTO suscripciones VALUES ('161', '8305156', '1', '8180741231', '1002', '1', '0', '3', '2010-12-01 12:13:29', '0001-01-01 00:00:00', '41', null);
INSERT INTO suscripciones VALUES ('162', '8305192', '1', '8180741231', '1002', '6', '0', '3', '2010-12-02 12:52:43', '0001-01-01 00:00:00', '41', null);
INSERT INTO suscripciones VALUES ('163', '8118921', '1', '8180741231', '1002', '4', '0', '3', '2010-12-03 12:11:06', '0001-01-01 00:00:00', '41', null);
INSERT INTO suscripciones VALUES ('164', '8314591', '1', '8180741231', '1002', '4', '0', '3', '2010-12-03 12:31:07', '0001-01-01 00:00:00', '41', null);
INSERT INTO suscripciones VALUES ('165', '8314593', '1', '8180741231', '6', '0', '0', '0', '2010-12-03 12:36:42', '0001-01-01 00:00:00', '29', null);
INSERT INTO suscripciones VALUES ('166', '8314594', '1', '8180741231', '6', '0', '0', '0', '2010-12-03 12:38:11', '0001-01-01 00:00:00', '29', null);
INSERT INTO suscripciones VALUES ('168', '0', null, '8115311234', '1', null, null, '2', '2011-02-06 12:39:12', '0001-01-01 00:00:00', null, null);
INSERT INTO suscripciones VALUES ('169', '0', null, '8115311234', '1', null, null, '2', '2011-02-06 12:40:30', '0001-01-01 00:00:00', null, null);
INSERT INTO suscripciones VALUES ('170', '0', null, '8115311234', '1', null, null, '2', '2011-02-06 12:41:07', '0001-01-01 00:00:00', null, null);
INSERT INTO suscripciones VALUES ('171', '0', null, '8115311234', '1', null, null, '1', '2011-02-07 11:50:36', '2011-02-12 11:50:36', null, null);
INSERT INTO suscripciones VALUES ('172', '0', null, '8115311234', '1', null, null, '1', '2011-02-07 11:53:18', '2011-02-12 11:53:18', null, null);
INSERT INTO suscripciones VALUES ('173', '0', null, '8115311111', '1', null, null, '1', '2011-02-07 12:01:04', '2011-02-12 12:01:04', null, null);
INSERT INTO suscripciones VALUES ('174', '0', null, '8115311111', '1', null, null, '1', '2011-02-07 12:05:16', '2011-02-12 12:05:16', null, null);
INSERT INTO suscripciones VALUES ('175', '0', null, '8115311111', '1', null, null, '1', '2011-02-07 12:12:15', '2011-02-12 12:12:15', null, null);

-- ----------------------------
-- Table structure for `tiposervicio`
-- ----------------------------
DROP TABLE IF EXISTS `tiposervicio`;
CREATE TABLE `tiposervicio` (
  `IdTipo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Tipo` int(11) DEFAULT NULL,
  `Creditos` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=20001 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1';

-- ----------------------------
-- Records of tiposervicio
-- ----------------------------
INSERT INTO tiposervicio VALUES ('1', '932223', '10002', '20');
INSERT INTO tiposervicio VALUES ('2', 'Venta', '2', '0');
INSERT INTO tiposervicio VALUES ('4', 'Promocion', '4', '10');
INSERT INTO tiposervicio VALUES ('5', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('6', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('7', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('8', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('9', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('10', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('11', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('12', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('13', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('14', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('15', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('16', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('17', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('18', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('19', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('20', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('21', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('22', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('23', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('24', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('25', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('26', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('27', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('28', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('29', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('30', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('31', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('32', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('33', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('34', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('35', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('36', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('37', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('38', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('39', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('40', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('41', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('42', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('43', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('44', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('45', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('46', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('47', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('48', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('49', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('50', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('51', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('52', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('53', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('54', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('55', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('56', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('57', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('58', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('59', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('60', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('61', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('62', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('63', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('64', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('65', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('66', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('67', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('68', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('69', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('70', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('71', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('72', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('73', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('74', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('75', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('76', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('77', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('78', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('79', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('80', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('81', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('82', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('83', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('84', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('85', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('86', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('87', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('88', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('89', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('90', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('91', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('92', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('93', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('94', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('95', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('96', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('97', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('98', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('99', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('100', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('101', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('102', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('103', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('104', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('105', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('106', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('107', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('108', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('109', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('110', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('111', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('112', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('113', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('114', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('115', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('116', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('117', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('118', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('119', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('120', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('121', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('122', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('123', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('124', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('125', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('126', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('127', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('128', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('129', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('130', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('131', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('132', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('133', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('134', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('135', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('136', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('137', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('138', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('139', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('140', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('141', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('142', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('143', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('144', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('145', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('146', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('147', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('148', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('149', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('150', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('151', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('152', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('153', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('154', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('155', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('156', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('157', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('158', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('159', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('160', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('161', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('162', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('163', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('164', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('165', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('166', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('167', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('168', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('169', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('170', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('171', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('172', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('173', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('174', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('175', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('176', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('177', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('178', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('179', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('180', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('181', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('182', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('183', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('184', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('185', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('186', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('187', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('188', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('189', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('190', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('191', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('192', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('193', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('194', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('195', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('196', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('197', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('198', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('199', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('200', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('201', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('202', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('203', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('204', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('205', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('206', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('207', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('208', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('209', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('210', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('211', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('212', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('213', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('214', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('215', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('216', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('217', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('218', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('219', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('220', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('221', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('222', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('223', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('224', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('225', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('226', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('227', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('228', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('229', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('230', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('231', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('232', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('233', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('234', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('235', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('236', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('237', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('238', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('239', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('240', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('241', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('242', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('243', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('244', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('245', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('246', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('247', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('248', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('249', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('250', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('251', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('252', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('253', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('254', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('255', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('256', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('257', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('258', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('259', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('260', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('261', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('262', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('263', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('264', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('265', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('266', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('267', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('268', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('269', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('270', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('271', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('272', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('273', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('274', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('275', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('276', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('277', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('278', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('279', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('280', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('281', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('282', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('283', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('284', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('285', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('286', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('287', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('288', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('289', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('290', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('291', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('292', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('293', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('294', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('295', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('296', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('297', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('298', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('299', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('300', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('301', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('302', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('303', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('304', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('305', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('306', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('307', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('308', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('309', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('310', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('311', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('312', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('313', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('314', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('315', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('316', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('317', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('318', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('319', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('320', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('321', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('322', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('323', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('324', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('325', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('326', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('327', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('328', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('329', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('330', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('331', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('332', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('333', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('334', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('335', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('336', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('337', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('338', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('339', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('340', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('341', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('342', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('343', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('344', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('345', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('346', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('347', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('348', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('349', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('350', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('351', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('352', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('353', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('354', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('355', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('356', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('357', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('358', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('359', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('360', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('361', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('362', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('363', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('364', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('365', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('366', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('367', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('368', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('369', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('370', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('371', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('372', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('373', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('374', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('375', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('376', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('377', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('378', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('379', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('380', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('381', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('382', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('383', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('384', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('385', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('386', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('387', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('388', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('389', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('390', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('391', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('392', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('393', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('394', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('395', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('396', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('397', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('398', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('399', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('400', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('401', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('402', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('403', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('404', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('405', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('406', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('407', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('408', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('409', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('410', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('411', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('412', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('413', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('414', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('415', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('416', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('417', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('418', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('419', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('420', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('421', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('422', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('423', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('424', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('425', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('426', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('427', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('428', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('429', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('430', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('431', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('432', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('433', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('434', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('435', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('436', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('437', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('438', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('439', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('440', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('441', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('442', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('443', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('444', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('445', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('446', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('447', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('448', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('449', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('450', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('451', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('452', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('453', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('454', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('455', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('456', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('457', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('458', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('459', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('460', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('461', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('462', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('463', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('464', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('465', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('466', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('467', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('468', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('469', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('470', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('471', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('472', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('473', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('474', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('475', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('476', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('477', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('478', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('479', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('480', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('481', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('482', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('483', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('484', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('485', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('486', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('487', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('488', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('489', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('490', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('491', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('492', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('493', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('494', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('495', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('496', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('497', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('498', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('499', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('500', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('501', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('502', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('503', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('504', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('505', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('506', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('507', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('508', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('509', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('510', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('511', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('512', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('513', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('514', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('515', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('516', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('517', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('518', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('519', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('520', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('521', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('522', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('523', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('524', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('525', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('526', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('527', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('528', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('529', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('530', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('531', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('532', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('533', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('534', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('535', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('536', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('537', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('538', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('539', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('540', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('541', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('542', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('543', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('544', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('545', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('546', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('547', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('548', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('549', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('550', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('551', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('552', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('553', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('554', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('555', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('556', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('557', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('558', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('559', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('560', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('561', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('562', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('563', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('564', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('565', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('566', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('567', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('568', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('569', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('570', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('571', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('572', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('573', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('574', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('575', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('576', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('577', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('578', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('579', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('580', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('581', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('582', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('583', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('584', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('585', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('586', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('587', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('588', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('589', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('590', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('591', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('592', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('593', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('594', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('595', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('596', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('597', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('598', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('599', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('600', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('601', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('602', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('603', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('604', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('605', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('606', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('607', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('608', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('609', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('610', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('611', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('612', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('613', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('614', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('615', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('616', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('617', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('618', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('619', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('620', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('621', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('622', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('623', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('624', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('625', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('626', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('627', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('628', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('629', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('630', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('631', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('632', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('633', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('634', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('635', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('636', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('637', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('638', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('639', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('640', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('641', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('642', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('643', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('644', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('645', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('646', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('647', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('648', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('649', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('650', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('651', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('652', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('653', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('654', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('655', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('656', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('657', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('658', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('659', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('660', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('661', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('662', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('663', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('664', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('665', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('666', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('667', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('668', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('669', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('670', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('671', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('672', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('673', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('674', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('675', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('676', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('677', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('678', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('679', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('680', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('681', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('682', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('683', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('684', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('685', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('686', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('687', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('688', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('689', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('690', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('691', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('692', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('693', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('694', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('695', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('696', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('697', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('698', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('699', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('700', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('701', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('702', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('703', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('704', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('705', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('706', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('707', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('708', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('709', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('710', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('711', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('712', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('713', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('714', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('715', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('716', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('717', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('718', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('719', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('720', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('721', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('722', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('723', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('724', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('725', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('726', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('727', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('728', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('729', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('730', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('731', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('732', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('733', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('734', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('735', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('736', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('737', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('738', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('739', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('740', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('741', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('742', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('743', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('744', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('745', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('746', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('747', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('748', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('749', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('750', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('751', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('752', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('753', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('754', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('755', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('756', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('757', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('758', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('759', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('760', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('761', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('762', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('763', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('764', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('765', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('766', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('767', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('768', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('769', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('770', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('771', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('772', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('773', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('774', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('775', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('776', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('777', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('778', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('779', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('780', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('781', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('782', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('783', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('784', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('785', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('786', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('787', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('788', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('789', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('790', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('791', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('792', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('793', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('794', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('795', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('796', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('797', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('798', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('799', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('800', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('801', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('802', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('803', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('804', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('805', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('806', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('807', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('808', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('809', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('810', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('811', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('812', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('813', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('814', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('815', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('816', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('817', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('818', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('819', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('820', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('821', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('822', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('823', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('824', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('825', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('826', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('827', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('828', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('829', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('830', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('831', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('832', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('833', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('834', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('835', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('836', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('837', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('838', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('839', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('840', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('841', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('842', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('843', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('844', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('845', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('846', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('847', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('848', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('849', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('850', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('851', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('852', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('853', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('854', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('855', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('856', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('857', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('858', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('859', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('860', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('861', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('862', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('863', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('864', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('865', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('866', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('867', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('868', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('869', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('870', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('871', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('872', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('873', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('874', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('875', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('876', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('877', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('878', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('879', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('880', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('881', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('882', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('883', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('884', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('885', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('886', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('887', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('888', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('889', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('890', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('891', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('892', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('893', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('894', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('895', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('896', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('897', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('898', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('899', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('900', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('901', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('902', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('903', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('904', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('905', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('906', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('907', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('908', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('909', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('910', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('911', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('912', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('913', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('914', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('915', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('916', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('917', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('918', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('919', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('920', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('921', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('922', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('923', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('924', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('925', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('926', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('927', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('928', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('929', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('930', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('931', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('932', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('933', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('934', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('935', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('936', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('937', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('938', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('939', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('940', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('941', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('942', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('943', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('944', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('945', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('946', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('947', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('948', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('949', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('950', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('951', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('952', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('953', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('954', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('955', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('956', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('957', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('958', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('959', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('960', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('961', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('962', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('963', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('964', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('965', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('966', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('967', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('968', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('969', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('970', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('971', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('972', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('973', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('974', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('975', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('976', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('977', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('978', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('979', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('980', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('981', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('982', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('983', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('984', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('985', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('986', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('987', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('988', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('989', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('990', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('991', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('992', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('993', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('994', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('995', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('996', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('997', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('998', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('999', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1000', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1001', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1002', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1003', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1004', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1005', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1006', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1007', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1008', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1009', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1010', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1011', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1012', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1013', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1014', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1015', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1016', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1017', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1018', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1019', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1020', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1021', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1022', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1023', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1024', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1025', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1026', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1027', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1028', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1029', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1030', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1031', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1032', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1033', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1034', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1035', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1036', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1037', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1038', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1039', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1040', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1041', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1042', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1043', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1044', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1045', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1046', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1047', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1048', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1049', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1050', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1051', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1052', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1053', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1054', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1055', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1056', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1057', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1058', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1059', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1060', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1061', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1062', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1063', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1064', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1065', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1066', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1067', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1068', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1069', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1070', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1071', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1072', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1073', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1074', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1075', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1076', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1077', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1078', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1079', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1080', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1081', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1082', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1083', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1084', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1085', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1086', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1087', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1088', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1089', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1090', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1091', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1092', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1093', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1094', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1095', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1096', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1097', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1098', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1099', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1100', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1101', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1102', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1103', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1104', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1105', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1106', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1107', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1108', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('1109', 'Hola', '3', '30');
INSERT INTO tiposervicio VALUES ('20000', '932223', '10002', '0');

-- ----------------------------
-- Table structure for `transacciones`
-- ----------------------------
DROP TABLE IF EXISTS `transacciones`;
CREATE TABLE `transacciones` (
  `idTransaccion` int(11) NOT NULL AUTO_INCREMENT,
  `TransactionId` int(11) NOT NULL,
  `idSuscripcion` int(11) NOT NULL,
  `idContenido` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`idTransaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transacciones
-- ----------------------------
INSERT INTO transacciones VALUES ('99', '0', '0', '0', '2011-01-01 00:00:00', '0', '0');
INSERT INTO transacciones VALUES ('100', '0', '172', '1', '2011-02-07 11:53:27', '8115311234', '0');
INSERT INTO transacciones VALUES ('101', '0', '173', '1', '2011-02-07 12:01:08', '8115311111', '0');
INSERT INTO transacciones VALUES ('102', '0', '174', '1', '2011-02-07 12:05:18', '8115311111', '0');
INSERT INTO transacciones VALUES ('103', '0', '175', '1', '2011-02-07 12:12:17', '8115311111', '0');
INSERT INTO transacciones VALUES ('104', '0', '1', '1', '2011-02-07 12:14:27', '8115311111', '0');
INSERT INTO transacciones VALUES ('105', '0', '2', '1', '2011-02-07 12:15:05', '8180741231', '0');
INSERT INTO transacciones VALUES ('106', '0', '3', '1', '2011-02-07 12:17:20', '8180741231', '0');
INSERT INTO transacciones VALUES ('107', '0', '4', '1', '2011-02-07 12:19:19', '8110034506', '0');
INSERT INTO transacciones VALUES ('108', '0', '1', '1', '2011-02-07 12:32:26', '8110034506', '0');
INSERT INTO transacciones VALUES ('109', '0', '1', '1', '2011-02-07 13:03:30', '8110034506', '0');
INSERT INTO transacciones VALUES ('110', '0', '1', '1', '2011-02-07 13:07:46', '8110034506', '0');
INSERT INTO transacciones VALUES ('111', '8323502', '1', '1', '2011-02-07 13:12:25', '8110034506', '0');
INSERT INTO transacciones VALUES ('112', '0', '1', '1', '2011-02-07 13:14:21', '8110034506', '0');
INSERT INTO transacciones VALUES ('113', '0', '1', '1', '2011-02-07 13:14:30', '8110034506', '0');
INSERT INTO transacciones VALUES ('114', '0', '1', '1', '2011-02-07 13:14:39', '8110034506', '0');
INSERT INTO transacciones VALUES ('115', '8323506', '2', '1', '2011-02-07 13:16:22', '8115315111', '0');
INSERT INTO transacciones VALUES ('116', '8323507', '3', '1', '2011-02-07 13:18:42', '8115315112', '0');
INSERT INTO transacciones VALUES ('117', '8323508', '3', '1', '2011-02-07 13:19:48', '8115315112', '0');
INSERT INTO transacciones VALUES ('118', '8323509', '3', '1', '2011-02-07 13:22:03', '8115315112', '0');
INSERT INTO transacciones VALUES ('119', '0', '1', '1', '2011-02-07 15:18:21', '8180741231', '0');

-- ----------------------------
-- Table structure for `ventas`
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idServicio` int(11) DEFAULT NULL,
  `Estatus` int(11) DEFAULT NULL,
  `idContenido` int(11) DEFAULT NULL,
  `Marcacion` varchar(100) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `smscid` varchar(100) DEFAULT NULL,
  `idContenidoClave` int(11) DEFAULT NULL,
  `idServicioClave` int(11) DEFAULT NULL,
  `Telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idVenta`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 10240 kB; InnoDB free: 10240 kB; InnoDB free: 1';

-- ----------------------------
-- Records of ventas
-- ----------------------------
INSERT INTO ventas VALUES ('1', '10', '1', '3', '47774', '2010-11-12 13:01:09', null, null, null, null);
INSERT INTO ventas VALUES ('2', '8', '1', '1', '47774', '2010-11-12 15:01:04', null, null, null, null);
INSERT INTO ventas VALUES ('3', '10', '1', '4', '47774', '2010-11-12 15:02:14', null, null, null, null);
INSERT INTO ventas VALUES ('4', '9', '1', '0', '47774', '2010-11-14 13:23:57', null, null, null, null);
INSERT INTO ventas VALUES ('5', '10', '1', '3', '0', '2010-11-14 22:00:31', null, null, null, null);
INSERT INTO ventas VALUES ('6', '10', '1', '2', '0', '2010-11-14 22:01:52', null, null, null, null);
INSERT INTO ventas VALUES ('7', '10', '1', '1', '47774', '2010-11-14 22:04:36', null, null, null, null);
INSERT INTO ventas VALUES ('8', '10', '1', '0', '47774', '2010-11-14 22:04:39', null, null, null, null);
INSERT INTO ventas VALUES ('9', '10', '1', '3', '47774', '2010-11-14 22:04:42', null, null, null, null);
INSERT INTO ventas VALUES ('10', '10', '1', '4', '47774', '2010-11-14 22:42:14', null, null, null, null);
INSERT INTO ventas VALUES ('11', '1001', null, '35', 'TO', '2010-11-20 18:37:04', 'telcel', '0', '21', 'FROM');
INSERT INTO ventas VALUES ('12', '1001', null, '35', 'TO', '2010-11-20 18:38:41', 'telcel', '0', '21', 'FROM');
INSERT INTO ventas VALUES ('13', '1001', null, '35', '47774', '2010-11-20 18:40:39', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('14', '1001', null, '35', '47774', '2010-11-20 18:41:00', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('15', '1001', null, '35', '47774', '2010-11-20 18:41:31', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('16', '1001', null, '35', '47774', '2010-11-20 18:43:59', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('17', '1001', null, '35', '47774', '2010-11-20 18:46:41', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('18', '1001', null, '35', '47774', '2010-11-22 09:05:39', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('19', '1001', null, '35', '47774', '2010-11-22 09:13:45', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('20', '1001', null, '35', '47774', '2010-11-22 09:18:46', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('21', '1001', null, '35', '47774', '2010-11-22 09:28:33', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('22', '1001', null, '35', '47774', '2010-11-22 09:31:53', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('23', '1001', null, '35', '47774', '2010-11-22 09:47:32', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('24', '1001', null, '35', '47774', '2010-11-22 13:16:51', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('25', '1001', null, '35', '47774', '2010-11-23 09:07:29', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('26', '1001', null, '35', '47774', '2010-11-23 10:44:30', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('27', '1001', null, '35', '47774', '2010-11-23 11:33:41', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('28', '1001', null, '35', '47774', '2010-11-23 13:23:36', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('29', '1001', null, '35', '47774', '2010-11-23 13:56:05', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('30', '1001', null, '35', '47774', '2010-11-23 14:18:40', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('31', '1001', null, '35', '47774', '2010-11-23 14:38:11', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('32', '1001', null, '35', '47774', '2010-11-24 10:13:45', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('33', '1001', null, '35', '47774', '2010-11-24 10:53:45', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('34', '1001', null, '35', '47774', '2010-11-24 13:36:44', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('35', '1001', null, '35', '47774', '2010-11-24 14:07:43', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('36', '1001', null, '35', '47774', '2010-11-25 12:02:09', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('37', '1001', null, '35', '47774', '2010-11-26 13:22:08', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('38', '1001', null, '35', '47774', '2010-11-26 13:44:15', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('39', '1001', null, '35', '47774', '2010-11-26 13:48:31', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('40', '1001', null, '35', '47774', '2010-11-29 09:58:08', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('41', '1001', null, '35', '47774', '2010-11-29 11:43:28', 'Telcel_47774', '0', '21', '8180741231');
INSERT INTO ventas VALUES ('42', '8', null, '8', '47774', '2010-12-07 15:18:53', 'Telcel_47774', '0', '1', '8180741231');
INSERT INTO ventas VALUES ('43', '8', null, '8', '47774', '2010-12-07 15:22:59', 'Telcel_47774', '0', '1', '8180741231');
INSERT INTO ventas VALUES ('44', '8', null, '8', '47774', '2010-12-07 16:05:40', 'Telcel_47774', '0', '1', '8180741231');
INSERT INTO ventas VALUES ('45', '8', null, '8', '47774', '2010-12-07 16:20:45', 'Telcel_47774', '0', '1', '8180741231');
INSERT INTO ventas VALUES ('46', '8', null, '8', '47774', '2010-12-08 14:07:59', 'Telcel_47774', '0', '1', '8180741231');
