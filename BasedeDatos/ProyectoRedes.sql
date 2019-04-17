-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.30.23
-- Tiempo de generación: 17-04-2019 a las 00:38:48
-- Versión del servidor: 8.0.3-rc-log
-- Versión de PHP: 7.2.16-1+0~20190307202415.17+stretch~1.gbpa7be82

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ProyectoRedes`
--
CREATE DATABASE IF NOT EXISTS `ProyectoRedes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ProyectoRedes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id_registro` int(11) NOT NULL,
  `dia-hora-entrada` datetime NOT NULL,
  `dia-hora-salida` datetime NOT NULL,
  `comentario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `registros`:
--   `id_usuario`
--       `usuario` -> `id_usuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id_sexo` int(4) NOT NULL,
  `tipo_sexo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `sexo`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoUsuario`
--

CREATE TABLE `tipoUsuario` (
  `id_tipoUsuario` int(3) NOT NULL,
  `tipoUsuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `tipoUsuario`:
--

--
-- Volcado de datos para la tabla `tipoUsuario`
--

INSERT INTO `tipoUsuario` (`id_tipoUsuario`, `tipoUsuario`) VALUES
(1, 'estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(4) DEFAULT NULL,
  `correo` text,
  `sexo` varchar(4) DEFAULT NULL,
  `tipo_usuario` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `usuario`:
--   `tipo_usuario`
--       `tipoUsuario` -> `id_tipousuario`
--

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id_sexo`);

--
-- Indices de la tabla `tipoUsuario`
--
ALTER TABLE `tipoUsuario`
  ADD PRIMARY KEY (`id_tipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `sexo` (`sexo`),
  ADD KEY `tipo_usuario` (`tipo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id_sexo` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoUsuario`
--
ALTER TABLE `tipoUsuario`
  MODIFY `id_tipoUsuario` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(3) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipoUsuario` (`id_tipousuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
