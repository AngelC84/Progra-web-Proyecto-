CREATE DATABASE PIA_WEB;
USE PIA_WEB;
DROP DATABASE PIA_WEB;


CREATE TABLE `usuario` (
  `Id_Usuario` varchar(20) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido_Paterno` varchar(20) NOT NULL,
  `Apellido_Materno` varchar(20) NOT NULL,
  `Contrasenia` varchar(20) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Imagen_Perfil` varchar(255) NOT NULL,
  `Activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE KEY `Id_Usuario_UNIQUE` (`Id_Usuario`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`)
);

CREATE TABLE `categoria` (
  `Id_Categoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_Categoria`),
  UNIQUE KEY `Nombre_Categoria_UNIQUE` (`Nombre_Categoria`)
);

CREATE TABLE `pregunta` (
  `Id_Pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo_Pregunta` varchar(50) NOT NULL,
  `Descripcion_Pregunta` varchar(255) DEFAULT NULL,
  `Imagen_Pregunta` varchar(255) DEFAULT NULL,
  `Fecha_Creacion_Pregunta` timestamp NOT NULL DEFAULT current_timestamp(),
  `Editada` tinyint(4) NOT NULL DEFAULT 0,
  `Eliminada` tinyint(4) NOT NULL DEFAULT 0,
  `Cont_Util` int(11) NOT NULL DEFAULT 0,
  `Cont_No_Util` int(11) NOT NULL DEFAULT 0,
  `Cont_Fav` int(11) NOT NULL DEFAULT 0,
  `Id_Categoria_FK` int(11) DEFAULT NULL,
  `Id_Usuario_FK` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`),
  KEY `Id_Categoria_FK_idx` (`Id_Categoria_FK`),
  KEY `Id_Usuario_FK_idx` (`Id_Usuario_FK`),
  CONSTRAINT `Id_Categoria_FK` FOREIGN KEY (`Id_Categoria_FK`) REFERENCES `categoria` (`Id_Categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Id_Usuario_FK` FOREIGN KEY (`Id_Usuario_FK`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `respuesta` (
  `Id_Respuesta` int(11) NOT NULL AUTO_INCREMENT,
  `Respuesta` varchar(255) NOT NULL,
  `Imagen` varchar(255) DEFAULT NULL,
  `Fecha_Creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `Correcta` tinyint(4) NOT NULL DEFAULT 0,
  `Eliminada` tinyint(4) NOT NULL DEFAULT 0,
  `Editada` tinyint(4) NOT NULL DEFAULT 0,
  `Cont_Util` int(11) NOT NULL DEFAULT 0,
  `Cont_No_Util` int(11) NOT NULL DEFAULT 0,
  `Id_Pregunta_Respuesta_FK` int(11) DEFAULT NULL,
  `Id_Usuario_Respuesta_FK` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_Respuesta`),
  KEY `Id_Pregunta_Respuesta_FK_idx` (`Id_Pregunta_Respuesta_FK`),
  KEY `Id_Usuario_Respuesta_FK_idx` (`Id_Usuario_Respuesta_FK`),
  CONSTRAINT `Id_Pregunta_Respuesta_FK` FOREIGN KEY (`Id_Pregunta_Respuesta_FK`) REFERENCES `pregunta` (`Id_Pregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Id_Usuario_Respuesta_FK` FOREIGN KEY (`Id_Usuario_Respuesta_FK`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `pregunta_no_util` (
  `Id_Usuario_PNU` varchar(20) NOT NULL,
  `Id_Pregunta_PNU` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario_PNU`,`Id_Pregunta_PNU`),
  KEY `Id_Pregunta_PNU_idx` (`Id_Pregunta_PNU`),
  CONSTRAINT `Id_Pregunta_PNU` FOREIGN KEY (`Id_Pregunta_PNU`) REFERENCES `pregunta` (`Id_Pregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Id_Usuario_PNU` FOREIGN KEY (`Id_Usuario_PNU`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `pregunta_util` (
  `Id_Usuario_PU` varchar(20) NOT NULL,
  `Id_Pregunta_PU` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario_PU`,`Id_Pregunta_PU`),
  KEY `Id_Usuario_PU_idx` (`Id_Usuario_PU`),
  KEY `Id_Pregunta_PU_idx` (`Id_Pregunta_PU`),
  CONSTRAINT `Id_Pregunta_PU` FOREIGN KEY (`Id_Pregunta_PU`) REFERENCES `pregunta` (`Id_Pregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Id_Usuario_PU` FOREIGN KEY (`Id_Usuario_PU`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `respuesta_no_util` (
  `Id_Usuario_RNU` varchar(20) NOT NULL,
  `Id_Respuesta_RNU` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario_RNU`,`Id_Respuesta_RNU`),
  KEY `Id_Respuesta_RNU_idx` (`Id_Respuesta_RNU`),
  CONSTRAINT `Id_Respuesta_RNU` FOREIGN KEY (`Id_Respuesta_RNU`) REFERENCES `respuesta` (`Id_Respuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Id_Usuario_RNU` FOREIGN KEY (`Id_Usuario_RNU`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `respuesta_util` (
  `Id_Usuario_RU` varchar(20) NOT NULL,
  `Id_Respuesta_RU` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario_RU`,`Id_Respuesta_RU`),
  KEY `Id_Respuesta_RU_idx` (`Id_Respuesta_RU`),
  CONSTRAINT `Id_Respuesta_RU` FOREIGN KEY (`Id_Respuesta_RU`) REFERENCES `respuesta` (`Id_Respuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Id_Usuario_RU` FOREIGN KEY (`Id_Usuario_RU`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `favorito` (
  `Id_Usuario_FAV` varchar(20) NOT NULL,
  `Id_Pregunta_FAV` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario_FAV`,`Id_Pregunta_FAV`),
  KEY `Id_Pregunta_FAV_idx` (`Id_Pregunta_FAV`),
  CONSTRAINT `Id_Pregunta_FAV` FOREIGN KEY (`Id_Pregunta_FAV`) REFERENCES `pregunta` (`Id_Pregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Id_Usuario_FAV` FOREIGN KEY (`Id_Usuario_FAV`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUsuario`(IN pOpc varchar(50),
IN pIdUsuario varchar(20),
IN pNombre varchar(30),
IN pApellidoPaterno varchar(20),
IN pApellidoMaterno varchar(20),
IN pContrasenia varchar(20),
IN pFechaNacimiento date,
IN pCorreo varchar(40),
IN pImagenPerfil varchar(255),
IN pActivo tinyint)
BEGIN

IF pOpc = 'Insert'
THEN
INSERT INTO usuario
(Id_Usuario,
Nombre,
Apellido_Paterno,
Apellido_Materno,
Contrasenia,
Fecha_Nacimiento,
Correo,
Imagen_Perfil,
Activo)
VALUES
(pIdUsuario,
pNombre,
pApellidoPaterno,
pApellidoMaterno,
pContrasenia,
pFechaNacimiento,
pCorreo,
pImagenPerfil,
pActivo);
END IF;

IF pOpc = 'Update'
THEN
UPDATE usuario
SET Nombre = pNombre,
Apellido_Paterno = pApellidoPaterno,
Apellido_Materno = pApellidoMaterno,
Contrasenia = pContrasenia,
Fecha_Nacimiento = pFechaNacimiento,
Correo = pCorreo,
Imagen_Perfil = pImagenPerfil
WHERE Id_Usuario = pIdUsuario;
END IF;

IF pOpc = 'UpdateActivo'
THEN
UPDATE usuario
SET Activo = pActivo
WHERE Id_Usuario = pIdUsuario;
END IF;


IF pOpc = 'Select'
THEN
SELECT Id_Usuario, Nombre, Apellido_Paterno, Apellido_Materno, Contrasenia, Fecha_Nacimiento, Correo, Imagen_Perfil, Activo FROM usuario
WHERE Id_Usuario = pIdUsuario;
END IF;

IF pOpc = 'SelectPreguntasUsuario'
THEN
SELECT Id_Pregunta, Titulo_Pregunta, Descripcion_Pregunta, Fecha_Creacion_Pregunta FROM pregunta
WHERE Id_Usuario_FK = pIdUsuario AND Eliminada = 0;
END IF;

IF pOpc = 'SelectRespuestasUsuario'
THEN
SELECT Id_Respuesta, Respuesta, Fecha_Creacion FROM respuesta
WHERE Id_Usuario_Respuesta_FK = pIdUsuario AND Eliminada = 0;
END IF;

IF pOpc = 'SelectPreguntasUtilUsuario'
THEN
SELECT Id_Pregunta, Titulo_Pregunta, Descripcion_Pregunta, Fecha_Creacion_Pregunta, Id_Usuario_FK FROM pregunta
INNER JOIN pregunta_util ON pregunta.Id_Pregunta = pregunta_util.Id_Pregunta_PU 
WHERE pregunta_util.Id_Usuario_PU = pIdUsuario AND pregunta.Eliminada = 0;
END IF;

IF pOpc = 'SelectPreguntasNoUtilUsuario'
THEN
SELECT Id_Pregunta, Titulo_Pregunta, Descripcion_Pregunta, Fecha_Creacion_Pregunta, Id_Usuario_FK FROM pregunta
INNER JOIN pregunta_no_util ON pregunta.Id_Pregunta = pregunta_no_util.Id_Pregunta_PNU 
WHERE pregunta_no_util.Id_Usuario_PNU = pIdUsuario AND pregunta.Eliminada = 0;
END IF;

IF pOpc = 'SelectPreguntasFavUsuario'
THEN
SELECT Id_Pregunta, Titulo_Pregunta, Descripcion_Pregunta, Fecha_Creacion_Pregunta, Id_Usuario_FK FROM pregunta
INNER JOIN favorito ON pregunta.Id_Pregunta = favorito.Id_Pregunta_FAV 
WHERE favorito.Id_Usuario_FAV = pIdUsuario AND pregunta.Eliminada = 0;
END IF;

IF pOpc = 'Delete'
THEN
DELETE FROM usuario
WHERE Id_Usuario = pIdUsuario;
END IF;

END //


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `spPregunta`(

IN pOpc varchar(30),
IN pIdPregunta int,
IN pTituloPregunta varchar(50),
IN pDescripcionPregunta varchar(255),
IN pImagenPregunta varchar(255),
IN pIdCategoria int,
IN pIdUsuario varchar(20)
)
BEGIN

DECLARE contAux INT;

IF pOpc = 'Insert'
THEN
INSERT INTO pregunta
(Titulo_pregunta,
Descripcion_Pregunta,
Imagen_Pregunta,
Id_Categoria_FK,
Id_Usuario_FK
)
VALUES
(pTituloPregunta,
pDescripcionPregunta,
pImagenPregunta,
pIdCategoria,
pIdUsuario);
END IF;

IF pOpc = 'Update'
THEN
UPDATE pregunta
SET Titulo_Pregunta = pTituloPregunta,
Descripcion_Pregunta = pDescripcionPregunta,
Imagen_Pregunta = pImagenPregunta,
Id_Categoria_FK = pIdCategoria,
Editada = 1
WHERE Id_Pregunta = pIdPregunta;
END IF;

IF pOpc = 'Eliminar'
THEN
UPDATE pregunta
SET 
Eliminada = 1
WHERE Id_Pregunta = pIdPregunta;
END IF;

IF pOpc = 'UpdateCont'
THEN
SELECT COUNT(*) FROM pregunta_util WHERE Id_Pregunta_PU = pIdPregunta INTO contAux;
UPDATE pregunta
SET 
Cont_Util = contAux
WHERE Id_Pregunta = pIdPregunta;

SELECT COUNT(*) FROM pregunta_no_util WHERE Id_Pregunta_PNU = pIdPregunta INTO contAux;
UPDATE pregunta
SET 
Cont_No_Util = contAux
WHERE Id_Pregunta = pIdPregunta;

SELECT COUNT(*) FROM favorito WHERE Id_Pregunta_FAV = pIdPregunta INTO contAux;
UPDATE pregunta
SET 
Cont_Fav = contAux
WHERE Id_Pregunta = pIdPregunta;

END IF;

IF pOpc = 'Select'
THEN
SELECT Titulo_Pregunta, Descripcion_Pregunta, Imagen_Pregunta, Fecha_Creacion_Pregunta, Editada, Cont_Util, Cont_No_Util, Cont_Fav, Id_Categoria_FK, Id_Usuario_FK FROM pregunta
WHERE Id_Pregunta = pIdPregunta ;
END IF;


IF pOpc = 'SelectRecientes'
THEN
SELECT Titulo_Pregunta, Descripcion_Pregunta, Fecha_Creacion_Pregunta, Cont_Util, Cont_No_Util, Cont_Fav, Id_Categoria_FK, Id_Usuario_FK FROM pregunta
WHERE Eliminada = 0 ORDER BY Fecha_Creacion_Pregunta DESC;
END IF;

IF pOpc = 'SelectRespuestas'
THEN
SELECT Respuesta, Imagen, Fecha_Creacion, Correcta, Eliminada, Editada, Cont_Util, Cont_No_Util, Id_Usuario_Respuesta_FK FROM respuesta
WHERE Id_Pregunta_Respuesta_FK = pIdPregunta;
END IF;


END //

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `spRespuesta`(IN pOpc varchar(30),
IN pIdRespuesta int,
IN pRespuesta varchar(255),
IN pImagen varchar(255),
IN pCorrecta tinyint,
IN pIdPregunta int,
IN pIdUsuario varchar(20)
)
BEGIN


DECLARE contAux INT;

IF pOpc = 'Insert'
THEN
INSERT INTO respuesta
(Respuesta,
Imagen,
Id_Pregunta_Respuesta_FK,
Id_Usuario_Respuesta_FK
)
VALUES
(pRespuesta,
pImagen,
pIdPregunta,
pIdUsuario);
END IF;

IF pOpc = 'Update'
THEN
UPDATE respuesta
SET Respuesta = pRespuesta,
Imagen = pImagen,
Editada = 1
WHERE Id_Respuesta = pIdRespuesta;
END IF;

IF pOpc = 'Eliminar'
THEN
UPDATE respuesta
SET 
Eliminada = 1
WHERE Id_Respuesta = pIdRespuesta;
END IF;

IF pOpc = 'Correcta'
THEN
UPDATE respuesta
SET 
Correcta = pCorrecta
WHERE Id_Respuesta = pIdRespuesta;
END IF;

IF pOpc = 'UpdateCont'
THEN
SELECT COUNT(*) FROM respuesta_util WHERE Id_Respuesta_RU = pIdRespuesta INTO contAux;
UPDATE respuesta
SET 
Cont_Util = contAux
WHERE Id_Respuesta = pIdRespuesta;

SELECT COUNT(*) FROM respuesta_no_util WHERE Id_Respuesta_RNU = pIdRespuesta INTO contAux;
UPDATE respuesta
SET 
Cont_No_Util = contAux
WHERE Id_Respuesta = pIdRespuesta;


END IF;


END //

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `spCategoria`(IN pOpc varchar(30),
IN pIdCategoria INT,
IN pNombreCategoria VARCHAR(30))
BEGIN


IF pOpc = 'Insert'
THEN
INSERT INTO categoria
(Nombre_Categoria)
VALUES
(pNombreCategoria);
END IF;

IF pOpc = 'Update'
THEN
UPDATE categoria
SET Nombre_Categoria = pNombreCategoria
WHERE Id_Categoria = pIdCategoria;
END IF;

IF pOpc = 'Delete'
THEN
DELETE FROM categoria
WHERE Id_Categoria = pIdCategoria;
END IF;

IF pOpc = 'Select'
THEN
SELECT Id_Categoria, Nombre_Categoria FROM categoria
WHERE Nombre_Categoria = pNombreCategoria;

END IF;

END // 

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFavorito`(IN pOpc varchar(30),
IN pIdUsuario varchar(20),
IN pIdPregunta int)
BEGIN

IF pOpc = 'Insert'
THEN
INSERT INTO favorito
(Id_Usuario_FAV,
Id_Pregunta_FAV
)
VALUES
(pIdUsuario,
pIdPregunta);
END IF;

IF pOpc = 'Delete'
THEN
DELETE FROM favorito
WHERE Id_Usuario_FAV = pIdUsuario AND Id_Pregunta_FAV = pIdPregunta;
END IF;

END//


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `spPreguntaNoUtil`(IN pOpc varchar(30),
IN pIdUsuario varchar(20),
IN pIdPregunta int)
BEGIN
IF pOpc = 'Insert'
THEN
INSERT INTO pregunta_no_util
(Id_Usuario_PNU,
Id_Pregunta_PNU
)
VALUES
(pIdUsuario,
pIdPregunta);
END IF;

IF pOpc = 'Delete'
THEN
DELETE FROM pregunta_no_util
WHERE Id_Usuario_PNU = pIdUsuario AND Id_Pregunta_PNU = pIdPregunta;
END IF;

END //

CREATE DEFINER=`root`@`localhost` PROCEDURE `spPreguntaUtil`(IN pOpc varchar(30),
IN pIdUsuario varchar(20),
IN pIdPregunta int)
BEGIN
IF pOpc = 'Insert'
THEN
INSERT INTO pregunta_util
(Id_Usuario_PU,
Id_Pregunta_PU
)
VALUES
(pIdUsuario,
pIdPregunta);
END IF;

IF pOpc = 'Delete'
THEN
DELETE FROM pregunta_util
WHERE Id_Usuario_PU = pIdUsuario AND Id_Pregunta_PU = pIdPregunta;
END IF;

END//


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `spRespuestaNoUtil`(IN pOpc varchar(30),
IN pIdUsuario varchar(20),
IN pIdRespuesta int)
BEGIN

IF pOpc = 'Insert'
THEN
INSERT INTO respuesta_no_util
(Id_Usuario_RNU,
Id_Respuesta_RNU
)
VALUES
(pIdUsuario,
pIdRespuesta);
END IF;

IF pOpc = 'Delete'
THEN
DELETE FROM respuesta_no_util
WHERE Id_Usuario_RNU = pIdUsuario AND Id_Respuesta_RNU = pIdRespuesta;
END IF;


END//


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `spRespuestaUtil`(IN pOpc varchar(30),
IN pIdUsuario varchar(20),
IN pIdRespuesta int)
BEGIN

IF pOpc = 'Insert'
THEN
INSERT INTO respuesta_util
(Id_Usuario_RU,
Id_Respuesta_RU
)
VALUES
(pIdUsuario,
pIdRespuesta);
END IF;

IF pOpc = 'Delete'
THEN
DELETE FROM respuesta_util
WHERE Id_Usuario_RU = pIdUsuario AND Id_Respuesta_RU = pIdRespuesta;
END IF;

END//



