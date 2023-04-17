-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2023 a las 23:27:01
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aplicacion_musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albunes`
--

CREATE TABLE `albunes` (
  `id_album` int(11) NOT NULL,
  `listado` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `albunes`
--

INSERT INTO `albunes` (`id_album`, `listado`) VALUES
(1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id_artistas` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `disquera` varchar(50) DEFAULT NULL,
  `canciones` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id_artistas`, `nombre`, `disquera`, `canciones`) VALUES
(3, 'andres', 'music', 'romanticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_reproducciones`
--

CREATE TABLE `lista_reproducciones` (
  `id_listaRep` int(11) NOT NULL,
  `tipo_canciones` varchar(50) DEFAULT NULL,
  `numero_canciones` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lista_reproducciones`
--

INSERT INTO `lista_reproducciones` (`id_listaRep`, `tipo_canciones`, `numero_canciones`) VALUES
(1, 'romanticas', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `telefono`, `correo`, `id_pedido`) VALUES
(3, 'fernando', 321544344, 'fernandoruiz@gmail.com', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albunes`
--
ALTER TABLE `albunes`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id_artistas`);

--
-- Indices de la tabla `lista_reproducciones`
--
ALTER TABLE `lista_reproducciones`
  ADD PRIMARY KEY (`id_listaRep`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lista_reproducciones`
--
ALTER TABLE `lista_reproducciones`
  ADD CONSTRAINT `lista_reproducciones_ibfk_1` FOREIGN KEY (`id_listaRep`) REFERENCES `albunes` (`id_album`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `artistas` (`id_artistas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
