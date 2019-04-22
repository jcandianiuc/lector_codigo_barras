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
-- Base de datos: ProyectoRedes
--
CREATE DATABASE IF NOT EXISTS ProyectoRedes;
USE ProyectoRedes;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla sexo
--

CREATE TABLE sexo(
  id_sexo int(4) NOT NULL AUTO_INCREMENT,
  tipo_sexo varchar(40) NOT NULL,
  PRIMARY KEY (id_sexo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO sexo VALUES(1,"Masculino"),(2,"Femenino");
--
-- RELACIONES PARA LA TABLA sexo:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla tipoUsuario
--

CREATE TABLE tipoUsuario(
  id_tipoUsuario int(3) NOT NULL AUTO_INCREMENT,
  tipoUsuario varchar(30) NOT NULL,
  PRIMARY KEY (id_tipoUsuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA tipoUsuario:
--

--
-- Volcado de datos para la tabla tipoUsuario
--



INSERT INTO tipoUsuario(id_tipoUsuario, tipoUsuario) VALUES
(1, 'Estudiante'),(2, 'Maestro'),(3, 'Visitante');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla usuario
--

CREATE TABLE usuario(
  id_usuario int(3) NOT NULL AUTO_INCREMENT,
  nombre varchar(50) NOT NULL,
  apellido_paterno varchar(50) NOT NULL,
  apellido_materno varchar(50) NULL,
  edad int(4) NULL,
  correo text,
  sexo int NOT NULL,
  tipo_usuario int(4) NOT NULL,
  PRIMARY KEY (id_usuario),
  FOREIGN KEY (sexo) REFERENCES sexo(id_sexo),
  FOREIGN KEY (tipo_usuario) REFERENCES tipoUsuario(id_tipoUsuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA usuario:
--   tipo_usuario
--       tipoUsuario -> id_tipousuario
--

--
-- Índices para tablas volcadas
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla registros
--

CREATE TABLE registros(
  id_registro int(11) NOT NULL AUTO_INCREMENT,
  entrada datetime NOT NULL,
  salida datetime NOT NULL,
  comentario int(11) NOT NULL,
  id_usuario int(11) NOT NULL,
  PRIMARY KEY (id_registro),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA registros:
--   id_usuario
--       usuario -> id_usuario
--

