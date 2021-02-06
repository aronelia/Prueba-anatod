-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2021 a las 23:54:50
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `final1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `cliente_nombre` varchar(255) NOT NULL,
  `cliente_dni` varchar(255) NOT NULL,
  `cliente_localidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `cliente_nombre`, `cliente_dni`, `cliente_localidad`) VALUES
(85, 'testing', '1515155', 2),
(89, 'Teodoro', '40403030', 1),
(100, 'Victoria', '44155659', 3),
(101, 'Martin', '88559944', 2),
(107, 'Juliancito', '33333333', 2),
(111, 'Jose', '32323', 1),
(115, 'Test', '123456789', 3),
(117, 'Marito', '123', 2),
(118, 'Txted', '124578', 1),
(119, 'Rodrigo', '41315335', 1),
(125, 'Julian', '39578459', 2),
(126, 'Monica', '22222222', 3),
(127, 'Test3', '3574544', 2),
(128, 'Aron', '31159357', 3),
(129, 'Maria', '4151515', 2),
(130, 'Josefina', '55555555', 2),
(131, 'Carlos', '41511512', 2),
(132, 'Alma', '00000000', 3),
(133, 'Sara', '41315313', 2),
(135, 'Facundo', '2331323', 1),
(136, 'Fede', '413153131455', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `localidad_id` int(11) NOT NULL,
  `localidad_nombre` varchar(255) NOT NULL,
  `localidad_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`localidad_id`, `localidad_nombre`, `localidad_provincia`) VALUES
(1, 'Localidad', 1),
(2, 'Bahia Blanca', 2),
(3, 'Monte Hermoso', 2),
(4, 'Bariloche', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `provincia_id` int(11) NOT NULL,
  `provincia_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`provincia_id`, `provincia_nombre`) VALUES
(2, 'Buenos Aires'),
(1, 'Provincia 1'),
(3, 'Rio Negro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cliente_dni` (`cliente_dni`),
  ADD KEY `cliente_localidad` (`cliente_localidad`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`localidad_id`),
  ADD KEY `localidad_provincia` (`localidad_provincia`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`provincia_id`),
  ADD UNIQUE KEY `provincia_nombre` (`provincia_nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`cliente_localidad`) REFERENCES `localidades` (`localidad_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`localidad_provincia`) REFERENCES `provincias` (`provincia_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
