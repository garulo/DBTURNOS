/*
Navicat MySQL Data Transfer

Source Server         : TurnosLocalObspado
Source Server Version : 50729
Source Host           : 172.16.23.128:3306
Source Database       : turnos

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2021-09-27 22:19:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oficinalocal
-- ----------------------------
DROP TABLE IF EXISTS `oficinalocal`;
CREATE TABLE `oficinalocal` (
  `idOficina` varchar(50) NOT NULL COMMENT 'Identificador de la Oficina Local',
  `num` varchar(3) DEFAULT NULL COMMENT 'Número de la Oficina Local',
  `codUniCom` varchar(5) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre a Mostrarse de la Oficina Local.',
  `desc` varchar(200) DEFAULT NULL COMMENT 'Decripción de la Oficina Local',
  `direccion` varchar(1000) DEFAULT NULL COMMENT 'Dirección de la Oficina Local',
  `cp` varchar(6) DEFAULT NULL COMMENT 'Código Postal de la Oficina Local',
  `municipio` varchar(100) DEFAULT NULL COMMENT 'Municipio de la Oficina Local',
  `tel` varchar(12) DEFAULT NULL COMMENT 'Teléfono 1 de la Oficina Local',
  `ciudad` varchar(100) DEFAULT NULL COMMENT 'Ciudad de la Oficina Local',
  `email1` varchar(100) DEFAULT NULL COMMENT 'Email 1 de la Oficina Local',
  `servidor` varchar(100) DEFAULT NULL COMMENT 'Servidor de la Oficina Local',
  `db_username` varchar(100) DEFAULT NULL COMMENT 'DB USERNAME de la Oficina Local',
  `db_pass` varchar(100) DEFAULT NULL COMMENT 'DB PASSWORD  de la Oficina Local',
  `db_host` varchar(100) DEFAULT NULL COMMENT 'DB HOST de la Oficina Local',
  `db_port` varchar(100) DEFAULT NULL COMMENT 'DB PORT de la Oficina Local',
  `db_name` varchar(100) DEFAULT NULL COMMENT 'DB DATABASE de la Oficina Local',
  `video` varchar(1000) DEFAULT NULL,
  `dt_tblturno_last` text,
  `poster` text,
  PRIMARY KEY (`idOficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for servicios
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
  `id` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Identificador de Servicio',
  `DescripcionServicio` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre de Servico',
  `Estatus` varchar(10) CHARACTER SET utf8 NOT NULL,
  `UserLastUpdate` varchar(50) CHARACTER SET utf8 NOT NULL,
  `FechaLastUpdate` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Color` varchar(20) CHARACTER SET utf8 NOT NULL,
  `prefijo` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DescripcionServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for servicio_ventanillas
-- ----------------------------
DROP TABLE IF EXISTS `servicio_ventanillas`;
CREATE TABLE `servicio_ventanillas` (
  `id` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Identificador de relación',
  `NombreVentanilla` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Ventanilla.',
  `NombreServicio` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Servicio',
  `UsuarioLastUpdate` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Usuario creador de relación',
  `FechaLastUpdate` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Fecha de creación de relación',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for turnos
-- ----------------------------
DROP TABLE IF EXISTS `turnos`;
CREATE TABLE `turnos` (
  `idTurno` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Identificador de Turno',
  `intTurno` varchar(10) COLLATE utf8_bin NOT NULL,
  `intVentanilla` varchar(3) CHARACTER SET utf8 NOT NULL COMMENT 'Número de identificación del Ventanilla',
  `intServicio` varchar(30) COLLATE utf8_bin NOT NULL,
  `strCliente` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'Descripción del tipo de dispositivo utilizado por el cliente: Local ó Web',
  `strEstatusTurno` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'Descripcion de Estatus en particular del Turno: Espera, Atención ó Terminado.',
  `strTipoTurno` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'Descripción del Tipo de Turno: Normal ó Reasignado. ',
  `dtmFechaEspera` varchar(50) COLLATE utf8_bin NOT NULL,
  `dtmFechaAtencion` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Fecha de inicio inicio de asignación de atención del turno.',
  `intOficinadeServicios` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `dtmFechaTermino` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Fecha de finalización de estatus de turno.',
  `enviado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `dt_enviado` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `num_atenciones` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `strUserAttending` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `strIdUserAttending` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `strEstatusAtencion` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `valPreferencial` varchar(50) COLLATE utf8_bin DEFAULT 'false',
  `strTipoServicio` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idTurno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Identificador de Usuario',
  `usuario` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre de usuario',
  `password` varchar(30) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `idRol` varchar(2) CHARACTER SET utf8 NOT NULL,
  `estatus` varchar(1) CHARACTER SET utf8 NOT NULL,
  `fecha` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `ventanilla` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for ventanillas
-- ----------------------------
DROP TABLE IF EXISTS `ventanillas`;
CREATE TABLE `ventanillas` (
  `idVentanilla` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Identificador de la Oficina Local',
  `NombreVentanilla` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre a Mostrarse de la Oficina Local.',
  `DescVentanilla` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Decripción de la Oficina Local',
  `UsuarioAsignado` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Usuario Colaborador Asignado a operación de la Ventanilla',
  `UsuarioLastUpdate` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Último usuario en operar la Ventanilla',
  `FechaLastUpdate` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Última fecha de operación de la ventanilla',
  `LastTurnAtended` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `servicios` text COLLATE utf8_bin,
  PRIMARY KEY (`NombreVentanilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
SET FOREIGN_KEY_CHECKS=1;
