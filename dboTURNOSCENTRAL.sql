/*
Navicat SQL Server Data Transfer

Source Server         : TurnosCentral
Source Server Version : 120000
Source Host           : 192.168.46.97:1433
Source Database       : turnos_central
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 120000
File Encoding         : 65001

Date: 2021-09-27 23:11:59
*/


-- ----------------------------
-- Table structure for cat_tipo_servicios
-- ----------------------------
DROP TABLE [dbo].[cat_tipo_servicios]
GO
CREATE TABLE [dbo].[cat_tipo_servicios] (
[idtipo] varchar(45) NULL ,
[idservicio] varchar(45) NULL ,
[Nombre] varchar(100) NULL ,
[Descripcion] varchar(200) NULL ,
[UserLastUpdate] varchar(50) NULL ,
[FechaLastUpdate] varchar(50) NULL 
)


GO

-- ----------------------------
-- Table structure for oficina_servicio
-- ----------------------------
DROP TABLE [dbo].[oficina_servicio]
GO
CREATE TABLE [dbo].[oficina_servicio] (
[id] varchar(45) NOT NULL ,
[Oficina] varchar(100) NOT NULL ,
[NombreServicio] varchar(200) NOT NULL ,
[UsuarioLastUpdate] varchar(100) NOT NULL ,
[FechaLastUpdate] varchar(200) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for oficinas
-- ----------------------------
DROP TABLE [dbo].[oficinas]
GO
CREATE TABLE [dbo].[oficinas] (
[idOficina] varchar(50) NOT NULL ,
[num] varchar(3) NOT NULL ,
[nombre] varchar(100) NOT NULL ,
[descripcion] varchar(200) NULL ,
[direccion] varchar(1000) NULL ,
[cp] varchar(6) NULL ,
[municipio] varchar(100) NULL ,
[tel] varchar(12) NULL ,
[ciudad] varchar(100) NULL ,
[email1] varchar(100) NULL ,
[servidor] varchar(100) NULL ,
[db_username] varchar(100) NULL ,
[db_pass] varchar(100) NULL ,
[db_host] varchar(100) NULL ,
[db_port] varchar(100) NULL ,
[db_name] varchar(100) NULL ,
[servicios] varchar(400) NULL ,
[codUniCom] varchar(5) NULL 
)


GO

-- ----------------------------
-- Table structure for servicios
-- ----------------------------
DROP TABLE [dbo].[servicios]
GO
CREATE TABLE [dbo].[servicios] (
[id] varchar(45) NOT NULL ,
[DescripcionServicio] varchar(30) NOT NULL ,
[Estatus] varchar(10) NOT NULL ,
[UserLastUpdate] varchar(50) NULL ,
[FechaLastUpdate] varchar(50) NULL ,
[Color] varchar(20) NULL ,
[prefijo] varchar(5) NULL 
)


GO

-- ----------------------------
-- Table structure for turnos_central
-- ----------------------------
DROP TABLE [dbo].[turnos_central]
GO
CREATE TABLE [dbo].[turnos_central] (
[idTurno] varchar(45) NOT NULL ,
[intTurno] varchar(10) NOT NULL ,
[intVentanilla] varchar(3) NOT NULL ,
[intServicio] varchar(30) NOT NULL ,
[strCliente] varchar(20) NOT NULL ,
[strEstatusTurno] varchar(20) NOT NULL ,
[strTipoTurno] varchar(20) NOT NULL ,
[dtmFechaEspera] varchar(50) NOT NULL ,
[dtmFechaAtencion] varchar(50) NOT NULL ,
[intOficinadeServicios] varchar(50) NULL ,
[dtmFechaTermino] varchar(50) NOT NULL ,
[strIdUserAttending] varchar(50) NULL ,
[strUserAttending] varchar(50) NULL ,
[strEstatusAtencion] varchar(50) NULL ,
[valPreferencial] varchar(50) NULL ,
[strTipoServicio] varchar(50) NULL 
)


GO

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE [dbo].[usuarios]
GO
CREATE TABLE [dbo].[usuarios] (
[id] varchar(45) NOT NULL ,
[usuario] varchar(30) NOT NULL ,
[password] varchar(30) NOT NULL ,
[nombre] varchar(50) NOT NULL ,
[email] varchar(30) NOT NULL ,
[idRol] varchar(2) NOT NULL ,
[estatus] varchar(1) NOT NULL ,
[fecha] varchar(60) NULL ,
[oficina] varchar(3) NULL 
)


GO

-- ----------------------------
-- Indexes structure for table oficina_servicio
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table oficina_servicio
-- ----------------------------
ALTER TABLE [dbo].[oficina_servicio] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table oficinas
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table oficinas
-- ----------------------------
ALTER TABLE [dbo].[oficinas] ADD PRIMARY KEY ([num])
GO

-- ----------------------------
-- Indexes structure for table servicios
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table servicios
-- ----------------------------
ALTER TABLE [dbo].[servicios] ADD PRIMARY KEY ([DescripcionServicio])
GO

-- ----------------------------
-- Indexes structure for table turnos_central
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table turnos_central
-- ----------------------------
ALTER TABLE [dbo].[turnos_central] ADD PRIMARY KEY ([idTurno])
GO

-- ----------------------------
-- Indexes structure for table usuarios
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table usuarios
-- ----------------------------
ALTER TABLE [dbo].[usuarios] ADD PRIMARY KEY ([usuario])
GO
