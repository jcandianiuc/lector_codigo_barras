-- --------------------------------------------------------

--
-- Base de datos: `ProyectoRedes`
--

CREATE DATABASE IF NOT EXISTS ProyectoRedes;
USE ProyectoRedes;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `idRegistro` int(4) NOT NULL,
  `diaHoraEntrada` datetime NOT NULL,
  `diaHoraSalida` datetime NOT NULL,
  `comentario` varchar(50) NOT NULL,
  `idUsuario` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `idSexo` int(4) NOT NULL,
  `tipoSexo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoUsuario`
--

CREATE TABLE `tipoUsuario` (
  `idTipoUsuario` int(4) NOT NULL,
  `tipoUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(4) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `idSexo` int(4) DEFAULT NULL,
  `idTipoUsuario` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`idRegistro`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`idSexo`);

--
-- Indices de la tabla `tipoUsuario`
--
ALTER TABLE `tipoUsuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idSexo` (`idSexo`),
  ADD KEY `idTipoUsuario` (`idTipoUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `registros` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;


