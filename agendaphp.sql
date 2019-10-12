-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2019 a las 02:13:49
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agendaphp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `eid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `start` varchar(30) NOT NULL,
  `end` varchar(30) DEFAULT NULL,
  `completo` tinyint(1) DEFAULT 0,
  `hora_i` time NOT NULL,
  `hora_f` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`eid`, `id`, `title`, `start`, `end`, `completo`, `hora_i`, `hora_f`) VALUES
(35, 2, 'MySQL Nextu', '2019-10-13', '2019-10-13', 0, '07:00:00', '11:00:00'),
(36, 2, 'Node.js+MongoDB', '2019-10-22', '2019-10-22', 0, '07:00:00', '10:00:00'),
(38, 2, 'Academy Agil', '2019-10-16', '2019-10-16', 0, '14:00:00', '17:00:00'),
(39, 2, 'PHP+MySQL', '2019-10-18', '2019-10-18', 0, '10:30:00', '14:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_n` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `password`, `fecha_n`) VALUES
(1, 'Gina Fuentes', 'gfuentes@hotmail.com', '$2y$10$wef3mmVwuV1pGAtebYGrfu2uD/7disGTlJvdaSNInBYQZuWbcj4Aa', '2000-09-15'),
(2, 'Juan Perez', 'ppp@gmail.com', '$2y$10$zbAZpK5tpE4jf9e9KnM01.Px5fNQXnx8/rnia3/ROwlra6MRIYOIC', '1995-10-06'),
(3, 'Andy', 'andy@outlook.com', '$2y$10$czkLL4saWjfGHgBkM.5PFOfqPFMvoXCuquu0OIUS5Gtaf30vzz6SW', '1999-10-04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`eid`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
