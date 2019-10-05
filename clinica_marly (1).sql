-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2019 a las 16:19:06
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica_marly`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Act_Detalle` (IN `Tipo_Habitacion` CHAR(3), IN `Horario` VARCHAR(25), IN `cadPacientes` INT)  BEGIN 
UPDATE Detalle_Habitacion SET
Tipo_Habitacion=Tipo_Habitacion,
Horario=Horario,
cadPacientes=cadPacientes
WHERE Tipo_Habitacion=Tipo_Habitacion;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Act_Elementos` (IN `IDELEMENTO` BIGINT, IN `ID_Visitante` BIGINT, IN `MARCA` VARCHAR(25), IN `CATEGORIA` VARCHAR(25), IN `DESCRIPCION` VARCHAR(100))  BEGIN 
UPDATE Elementos SET
IDELEMENTO=IDELEMENTO,
ID_Visitante=ID_Visitante,
MARCA=MARCA,
CATEGORIA=CATEGORIA,
DESCRIPCION=DESCRIPCION
WHERE IDELEMENTO=IDELEMENTO;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Act_Habitacion` (IN `Numero_Habitacion` VARCHAR(8), IN `Piso` BIGINT, IN `Tipo_Habitacion` CHAR(3), IN `Descripcion` VARCHAR(150))  BEGIN 
UPDATE Habitacion SET
Numero_Habitacion=Numero_Habitacion,
Piso=Piso,
Tipo_Habitacion=Tipo_Habitacion,
Descripcion=Descripcion
WHERE Numero_Habitacion=Numero_Habitacion;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Act_Paciente` (IN `ID_Paciente` BIGINT, IN `Nombre_Paciente` VARCHAR(25), IN `Apellido_Paciente` VARCHAR(25), IN `Fecha_Nacimiento` DATE, IN `Descripcion_Enfermedad` VARCHAR(150), IN `Numero_Habitacion` BIGINT)  BEGIN 
UPDATE Paciente SET
ID_Paciente=ID_Paciente,
Nombre_Paciente=Nombre_Paciente,
Apellido_Paciente=Apellido_Paciente,
Fecha_Nacimiento=Fecha_Nacimiento,
Descripcion_Enfermedad=Descripcion_Enfermedad,
Numero_Habitacion=Numero_Habitacion
WHERE ID_Paciente=ID_Paciente;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Act_Usuarios` (IN `usuario` VARCHAR(15), IN `clave` VARCHAR(10), IN `rol` VARCHAR(13))  BEGIN 
UPDATE Usuario SET
usuario=usuario,
clave=clave,
rol=rol
WHERE usuario=usuario;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Act_Vigilante` (IN `ID_Vigilante` BIGINT, IN `Nombre_Vigilante` VARCHAR(25), IN `Apellido_Vigilante` VARCHAR(25), IN `Puerta` BIGINT, IN `Correo_Vigilante` VARCHAR(30), IN `Estado` VARCHAR(10), IN `usuario` VARCHAR(13))  BEGIN 
UPDATE Vigilante SET
ID_Vigilante=ID_Vigilante,
Nombre_Vigilante=Nombre_Vigilante,
Apellido_Vigilante=Apellido_Vigilante,
Puerta=Puerta,
Correo_Vigilante=Correo_Vigilante,
Estado=Estado,
usuario=usuario
WHERE ID_Vigilante=ID_Vigilante;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Act_Visitante` (IN `ID_Visitante` BIGINT, IN `Nombre_Visitante` VARCHAR(25), IN `Apeelido_Visitante` VARCHAR(25), IN `Edad_Visitante` BIGINT, IN `Relacion_Paciente` VARCHAR(25))  BEGIN 
UPDATE Visitante SET
ID_Visitante=ID_Visitante,
Nombre_Visitante=Nombre_Visitante,
Apeelido_Visitante=Apeelido_Visitante,
Edad_Visitante=Edad_Visitante,
Relacion_Paciente=Relacion_Paciente
WHERE ID_Visitante=ID_Visitante;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Act_Visitas` (IN `Fecha_Visita` DATETIME, IN `Hora_Inicio` TIME, IN `Hora_Fin` TIME, IN `ID_Visitante` BIGINT, IN `ID_Paciente` BIGINT, IN `ID_Vigilante` BIGINT)  BEGIN 
UPDATE Visita SET
Fecha_Visita=Fecha_Visita,
Hora_Inicio=Hora_Inicio,
Hora_Fin=Hora_Fin,
ID_Visitante=ID_Visitante,
ID_Paciente=ID_Paciente,
ID_Vigilante=ID_Vigilante
WHERE ID_Vista=ID_Vista;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Reg_Elementos` (IN `IDELEMENTO` BIGINT, IN `ID_Visitante` BIGINT, IN `MARCA` VARCHAR(25), IN `CATEGORIA` VARCHAR(25), IN `DESCRIPCION` VARCHAR(100), IN `serial` VARCHAR(30))  BEGIN 
INSERT INTO Usuario(IDELEMENTO,ID_Visitante,MARCA,CATEGORIA,DESCRIPCION,serial)
VALUES(IDELEMENTO,ID_Visitante,MARCA,CATEGORIA,DESCRIPCION,serial);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Reg_Habitacion` (IN `Numero_Habitacion` VARCHAR(8), IN `Piso` BIGINT, IN `Tipo_Habitacion` CHAR(3), IN `Estado` VARCHAR(15))  BEGIN 
INSERT INTO Habitacion(
Numero_Habitacion,
Piso,
Tipo_Habitacion,
Estado)
VALUES(
Numero_Habitacion,
Piso,
Tipo_Habitacion,
Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Reg_Paciente` (IN `ID_Paciente` BIGINT, IN `Nombre_Paciente` VARCHAR(25), IN `Apellido_Paciente` VARCHAR(25), IN `Fecha_Nacimiento` DATE, IN `Descripcion_Enfermedad` VARCHAR(150), IN `Numero_Habitacion` BIGINT, IN `Estado` VARCHAR(15))  BEGIN 
INSERT INTO `paciente`(`ID_Paciente`, `Nombre_Paciente`, `Apellido_Paciente`,
`Fecha_Nacimiento`, `Descripcion_Enfermedad`, `Numero_Habitacion`, `Estado`)
VALUES (ID_Paciente ,Nombre_Paciente ,Apellido_Paciente ,Fecha_Nacimiento ,
Descripcion_Enfermedad ,Numero_Habitacion ,Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Reg_Usuario` (IN `usuario` VARCHAR(15), IN `clave` VARCHAR(10), IN `rol` VARCHAR(13), IN `ID_Vigilante` BIGINT(20))  BEGIN 
INSERT INTO Usuario(usuario,clave,rol,ID_Vigilante )VALUES(usuario,clave,
rol,ID_Vigilante );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Reg_Vigilante` (IN `ID_Vigilante` BIGINT, IN `Nombre_Vigilante` VARCHAR(25), IN `Apellido_Vigilante` VARCHAR(25), IN `Correo_Vigilante` VARCHAR(30), IN `Estado` VARCHAR(10))  BEGIN 
INSERT INTO Vigilante(
ID_Vigilante,
Nombre_Vigilante,
Apellido_Vigilante,
Correo_Vigilante,
Estado)
VALUES(
ID_Vigilante,
Nombre_Vigilante,
Apellido_Vigilante,
Correo_Vigilante,
Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Reg_Visita` (IN `FechaInicio` DATETIME, IN `Hora_Inicio` TIME, IN `Hora_Fin` TIME, IN `ID_Visitante` BIGINT, IN `ID_Paciente` BIGINT, IN `ID_Vigilante` BIGINT, IN `FechaFin` DATETIME, IN `Estado` VARCHAR(15))  BEGIN 

INSERT INTO `visita`(`FechaInicio`, `Hora_Inicio`, `Hora_Fin`,
`ID_Visitante`, `ID_Paciente`, `ID_Vigilante`, `FechaFin`, `Estado`) VALUES (
FechaInicio ,Hora_Inicio ,Hora_Fin ,ID_Visitante ,ID_Paciente ,ID_Vigilante ,
FechaFin, Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Reg_Visitante` (IN `ID_Visitante` BIGINT, IN `Nombre_Visitante` VARCHAR(25), IN `Apellido_Visitante` VARCHAR(25), IN `Edad_Visitante` DATE, IN `Relacion_Paciente` VARCHAR(25), IN `Estado` ENUM('Ausente','Visitando'))  BEGIN 
INSERT INTO Visitante(
ID_Visitante,
Nombre_Visitante,
Apellido_Visitante,
Edad_Visitante,
Relacion_Paciente,
Estado)
VALUES(
ID_Visitante,
Nombre_Visitante,
Apellido_Visitante,
Edad_Visitante,
Relacion_Paciente,
Estado);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_habitacion`
--

CREATE TABLE `detalle_habitacion` (
  `Tipo_Habitacion` char(3) NOT NULL,
  `Horario` varchar(25) NOT NULL,
  `cadPacientes` int(11) DEFAULT NULL,
  `Nombre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_habitacion`
--

INSERT INTO `detalle_habitacion` (`Tipo_Habitacion`, `Horario`, `cadPacientes`, `Nombre`) VALUES
('1', '10:30 am 4:00 pm', 3, 'Cuidados Intensivos'),
('2', '10:30 am 4:00 pm', 8, 'Cuidados Intermedios'),
('3', '10:30 am 4:00 pm', 10, 'Post-Operatoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos`
--

CREATE TABLE `elementos` (
  `IDELEMENTO` bigint(20) NOT NULL,
  `ID_Visitante` bigint(20) DEFAULT NULL,
  `MARCA` varchar(25) DEFAULT NULL,
  `CATEGORIA` varchar(25) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `serial` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `elementos`
--

INSERT INTO `elementos` (`IDELEMENTO`, `ID_Visitante`, `MARCA`, `CATEGORIA`, `DESCRIPCION`, `serial`) VALUES
(3, 1000494931, 'Samsung', 'Tablet', '1', '1234567'),
(4, 1000494938, 'Aser', 'Portatil', 'Tablet azul', '1234568'),
(5, 1000494932, 'Samsung', 'Tablet', 'Tablet azul', '1234568'),
(6, 1000494938, 'LG', 'Portatil', 'Tablet azul', '1234567'),
(7, 1000494938, 'Lenovo', 'Portatil', 'Tablet azul', '1234567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `Numero_Habitacion` varchar(8) NOT NULL,
  `Piso` bigint(20) NOT NULL,
  `Tipo_Habitacion` char(3) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`Numero_Habitacion`, `Piso`, `Tipo_Habitacion`, `Estado`) VALUES
('101', 3, '1', 'Ocupado'),
('102', 3, '1', 'Ocupado'),
('103', 3, '2', 'Mantenimiento'),
('104', 3, '1', 'Ocupado'),
('105', 5, '2', 'Disponible'),
('200', 2, '1', 'Disponible'),
('201', 2, '2', 'Disponible'),
('202', 2, '1', 'Disponible'),
('203', 2, '3', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `ID_Paciente` bigint(20) NOT NULL,
  `Nombre_Paciente` varchar(25) NOT NULL,
  `Apellido_Paciente` varchar(25) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Descripcion_Enfermedad` varchar(150) NOT NULL,
  `Numero_Habitacion` varchar(8) NOT NULL,
  `Estado` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`ID_Paciente`, `Nombre_Paciente`, `Apellido_Paciente`, `Fecha_Nacimiento`, `Descripcion_Enfermedad`, `Numero_Habitacion`, `Estado`) VALUES
(1000494931, 'Andres Esteban', 'Rodriguez Ramirez', '2002-03-02', 'Gripe', '105', 'Inactivo'),
(1000494932, 'Miller', 'Camargo', '2019-09-18', 'Gripe', '200', 'Activo'),
(1000494933, 'Luis', 'Zamora', '2019-09-11', 'Fractura', '203', 'Activo'),
(1000494934, 'Wilson', 'Salinas', '2019-09-03', 'Gripe', '202', 'Activo'),
(1000494935, 'Johel', 'Castillo', '2019-09-13', 'Gripe', '202', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` varchar(15) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `rol` varchar(13) NOT NULL,
  `ID_Vigilante` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `clave`, `rol`, `ID_Vigilante`) VALUES
('Alexander', '1234', 'Administrador', 1001059388),
('Andres', '1234', 'Administrador', 10001277741),
('Antonio', '1234', 'Administrador', 1003308063),
('Armando', '1234', 'Administrador', 1001295983),
('Breyner', '1234', 'Administrador', 1000991879),
('Camilo', '1234', 'Vigilante', 1000627733),
('David', '1234', 'Vigilante', 1000017828),
('Esteban', '1234', 'Vigilante', 1000494931),
('Felipe', '1234', 'Vigilante', 1001084324),
('Fernando', '1234', 'Vigilante', 1000349802);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vigilante`
--

CREATE TABLE `vigilante` (
  `ID_Vigilante` bigint(20) NOT NULL,
  `Nombre_Vigilante` varchar(25) NOT NULL,
  `Apellido_Vigilante` varchar(25) NOT NULL,
  `Correo_Vigilante` varchar(30) NOT NULL,
  `Estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vigilante`
--

INSERT INTO `vigilante` (`ID_Vigilante`, `Nombre_Vigilante`, `Apellido_Vigilante`, `Correo_Vigilante`, `Estado`) VALUES
(1000017828, 'David', 'Silva', 'sivajd5@gmail.com', 'Inactivo'),
(1000122005, 'Santiago', 'Cardenas', 'santiago09@gmail.com', 'Inactivo'),
(1000218962, 'Orlando', 'Ballesteros', 'orlando56@gmail.com', 'Activo'),
(1000349802, 'Fernando', 'Amado', 'famado20@gmail.com', 'Activo'),
(1000494931, 'Esteban', 'Rodriguez', 'andresrodriguez2002@gmail.com', 'Activo'),
(1000494932, 'Miller', 'Camargo', 'm@gmail.com', 'Activo'),
(1000627733, 'Camilo', 'Ortiz', 'ortizcamilo7@gmail.com', 'Activo'),
(1000685916, 'Felipe', 'Tovar', 'felipeto78@gmail.com', 'Activo'),
(1000698045, 'Nicolas', 'Acosta', 'shecosta45@gmail.com', 'Activo'),
(1000775573, 'Mateo', 'Leon', 'leonleon6@gmail.com', 'Activo'),
(1000856162, 'Esteban', 'Cebballes', 'esteban789@gmail.com', 'Activo'),
(1000858513, 'Omar', 'Asprilla', 'omarasprilla12@gmail.com', 'Activo'),
(1000991879, 'Breyner', 'Lopez', 'blopez25@gmail.com', 'Activo'),
(1001059388, 'Alexander', 'Triana', 'alextrian123@gmail.com', 'Activo'),
(1001065886, 'Stiven', 'Matallana', 'stiven.m@gmail.com', 'Activo'),
(1001084324, 'Felipe', 'Ramirez', 'aframirez2@gmail.com', 'Activo'),
(1001095279, 'Luis', 'Torrado', 'zato96@gmail.com', 'Activo'),
(1001295983, 'Armando', 'Ochoa', 'ochoaarmando24@gmail.com', 'Activo'),
(1001344022, 'David', 'Castillo', 'daviscastillo78@gmail.com', 'Activo'),
(1003308063, 'Antonio', 'Mejia', 'pome35@gmail.com', 'Activo'),
(10001277741, 'Andres', 'Bulla', 'andresb98@gmail.com', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visita`
--

CREATE TABLE `visita` (
  `ID_Vista` bigint(20) NOT NULL,
  `FechaInicio` date NOT NULL,
  `Hora_Inicio` time NOT NULL,
  `Hora_Fin` time NOT NULL,
  `ID_Visitante` bigint(20) NOT NULL,
  `ID_Paciente` bigint(20) NOT NULL,
  `ID_Vigilante` bigint(20) DEFAULT NULL,
  `FechaFin` date NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `visita`
--

INSERT INTO `visita` (`ID_Vista`, `FechaInicio`, `Hora_Inicio`, `Hora_Fin`, `ID_Visitante`, `ID_Paciente`, `ID_Vigilante`, `FechaFin`, `Estado`) VALUES
(10, '2019-09-24', '15:45:00', '19:17:00', 1000494931, 1000494931, 10001277741, '2019-09-25', 'Finalizado'),
(11, '2019-09-24', '15:45:00', '19:33:00', 1000494931, 1000494931, 10001277741, '2019-09-25', 'Finalizado'),
(12, '2019-09-24', '15:45:00', '19:12:00', 1000494931, 1000494931, 10001277741, '2019-09-25', 'En Proceso'),
(13, '2019-09-25', '15:45:00', '19:17:00', 1000494931, 1000494932, 10001277741, '2019-09-25', 'En Proceso'),
(14, '2019-09-24', '15:15:00', '19:17:00', 1000494932, 1000494932, 10001277741, '2019-09-25', 'En Proceso'),
(15, '2019-09-24', '15:45:00', '19:17:00', 1000494938, 1000494935, 10001277741, '2019-09-25', 'En Proceso'),
(16, '2019-09-25', '15:51:00', '18:53:00', 1000494931, 1000494931, 10001277741, '2019-09-25', 'En Proceso'),
(17, '2019-09-25', '15:59:00', '19:17:00', 1000494932, 1000494931, 10001277741, '2019-09-25', 'Finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitante`
--

CREATE TABLE `visitante` (
  `ID_Visitante` bigint(20) NOT NULL,
  `Nombre_Visitante` varchar(25) NOT NULL,
  `Apellido_Visitante` varchar(25) NOT NULL,
  `Edad_Visitante` date NOT NULL,
  `Relacion_Paciente` varchar(25) NOT NULL,
  `Estado` enum('Ausente','Visitando') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `visitante`
--

INSERT INTO `visitante` (`ID_Visitante`, `Nombre_Visitante`, `Apellido_Visitante`, `Edad_Visitante`, `Relacion_Paciente`, `Estado`) VALUES
(1000494931, 'Andres', 'Esteban', '2002-03-02', 'Sobrino', 'Ausente'),
(1000494932, 'Andres Esteban', 'Ramirez', '4044-03-02', 'Tio', 'Ausente'),
(1000494933, 'Andres ', 'Ramirez', '2019-09-05', 'Hijo', 'Ausente'),
(1000494938, 'Esteban', 'Ramirez', '2019-09-24', 'Hijo', 'Ausente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_habitacion`
--
ALTER TABLE `detalle_habitacion`
  ADD PRIMARY KEY (`Tipo_Habitacion`);

--
-- Indices de la tabla `elementos`
--
ALTER TABLE `elementos`
  ADD PRIMARY KEY (`IDELEMENTO`),
  ADD KEY `ID_Visitante` (`ID_Visitante`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`Numero_Habitacion`),
  ADD KEY `Tipo_Habitacion` (`Tipo_Habitacion`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`ID_Paciente`),
  ADD KEY `Numero_Habitacion` (`Numero_Habitacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario`),
  ADD KEY `ID_Vigilante` (`ID_Vigilante`);

--
-- Indices de la tabla `vigilante`
--
ALTER TABLE `vigilante`
  ADD PRIMARY KEY (`ID_Vigilante`);

--
-- Indices de la tabla `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`ID_Vista`),
  ADD KEY `ID_Visitante` (`ID_Visitante`),
  ADD KEY `ID_Paciente` (`ID_Paciente`),
  ADD KEY `ID_Vigilante` (`ID_Vigilante`);

--
-- Indices de la tabla `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`ID_Visitante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `elementos`
--
ALTER TABLE `elementos`
  MODIFY `IDELEMENTO` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `visita`
--
ALTER TABLE `visita`
  MODIFY `ID_Vista` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `elementos`
--
ALTER TABLE `elementos`
  ADD CONSTRAINT `elementos_ibfk_1` FOREIGN KEY (`ID_Visitante`) REFERENCES `visitante` (`ID_Visitante`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`Tipo_Habitacion`) REFERENCES `detalle_habitacion` (`Tipo_Habitacion`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`Numero_Habitacion`) REFERENCES `habitacion` (`Numero_Habitacion`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_Vigilante`) REFERENCES `vigilante` (`ID_Vigilante`);

--
-- Filtros para la tabla `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`ID_Visitante`) REFERENCES `visitante` (`ID_Visitante`),
  ADD CONSTRAINT `visita_ibfk_2` FOREIGN KEY (`ID_Paciente`) REFERENCES `paciente` (`ID_Paciente`),
  ADD CONSTRAINT `visita_ibfk_3` FOREIGN KEY (`ID_Vigilante`) REFERENCES `vigilante` (`ID_Vigilante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
