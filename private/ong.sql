-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2017 a las 05:21:30
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ong`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id_actividad` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `nombre_actividad` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_actividad` date NOT NULL,
  `lugar_actividad` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `doc_actividad` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `imagen_actividad` varchar(200) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id_actividad`, `id_grupo`, `nombre_actividad`, `fecha_actividad`, `lugar_actividad`, `doc_actividad`, `imagen_actividad`) VALUES
(34548, 12, 'Act1', '2017-01-03', 'Cartago', '../uploads/12/intrucciones para abrir proyecto.txt', '../uploads/12/fondo1.jpg'),
(34549, 16, 'Act1', '2017-01-03', 'Cartago', '../uploads/16/intrucciones para abrir proyecto.txt', '../uploads/16/fondo1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `nombre_grupo` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `resumen_grupo` varchar(200) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `nombre_grupo`, `resumen_grupo`) VALUES
(16, 'dgfdgfd', 'Personal'),
(15, 'dgfdgfd', 'Personal'),
(12, 'dgfdgfd', 'Personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivo`
--

CREATE TABLE `objetivo` (
  `id_objetivo` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `contenido_objetivo` varchar(200) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `objetivo`
--

INSERT INTO `objetivo` (`id_objetivo`, `id_grupo`, `contenido_objetivo`) VALUES
(1, 12, 'fdgfdg'),
(2, 12, 'fdgfdg'),
(3, 12, 'fdgfdg'),
(4, 16, 'fdgfdg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id_actividad`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indices de la tabla `objetivo`
--
ALTER TABLE `objetivo`
  ADD PRIMARY KEY (`id_objetivo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id_actividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34550;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `objetivo`
--
ALTER TABLE `objetivo`
  MODIFY `id_objetivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
