-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-03-2023 a las 07:42:55
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `municipios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

DROP TABLE IF EXISTS `provincias`;
CREATE TABLE IF NOT EXISTS `provincias` (
  `COD_PROV` bigint DEFAULT NULL,
  `PROVINCIA` text,
  `COD_CA` bigint DEFAULT NULL,
  `COMUNIDAD_AUTONOMA` text,
  `CAPITAL` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`COD_PROV`, `PROVINCIA`, `COD_CA`, `COMUNIDAD_AUTONOMA`, `CAPITAL`) VALUES
(1, 'Araba/Álava', 16, 'País Vasco/Euskadi', 'Vitoria-Gasteiz'),
(2, 'Albacete', 8, 'Castilla-La Mancha', 'Albacete'),
(3, 'Alacant/Alicante', 10, 'Comunitat Valenciana', 'Alacant/Alicante'),
(4, 'Almería', 1, 'Andalucía', 'Almería'),
(5, 'Ávila', 7, 'Castilla y León', 'Ávila'),
(6, 'Badajoz', 11, 'Extremadura', 'Badajoz'),
(7, 'Illes Balears', 4, 'Illes Balears', 'Palma'),
(8, 'Barcelona', 9, 'Cataluña/Catalunya', 'Barcelona'),
(9, 'Burgos', 7, 'Castilla y León', 'Burgos'),
(10, 'Cáceres', 11, 'Extremadura', 'Cáceres'),
(11, 'Cádiz', 1, 'Andalucía', 'Cádiz'),
(12, 'Castelló/Castellón', 10, 'Comunitat Valenciana', 'Castelló de la Plana'),
(13, 'Ciudad Real', 8, 'Castilla-La Mancha', 'Ciudad Real'),
(14, 'Córdoba', 1, 'Andalucía', 'Córdoba'),
(15, 'A Coruña', 12, 'Galicia', 'A Coruña'),
(16, 'Cuenca', 8, 'Castilla-La Mancha', 'Cuenca'),
(17, 'Girona', 9, 'Cataluña/Catalunya', 'Girona'),
(18, 'Granada', 1, 'Andalucía', 'Granada'),
(19, 'Guadalajara', 8, 'Castilla-La Mancha', 'Guadalajara'),
(20, 'Gipuzkoa', 16, 'País Vasco/Euskadi', 'Donostia/San Sebastián'),
(21, 'Huelva', 1, 'Andalucía', 'Huelva'),
(22, 'Huesca', 2, 'Aragón', 'Huesca'),
(23, 'Jaén', 1, 'Andalucía', 'Jaén'),
(24, 'León', 7, 'Castilla y León', 'León'),
(25, 'Lleida', 9, 'Cataluña/Catalunya', 'Lleida'),
(26, 'La Rioja', 17, 'La Rioja', 'Logroño'),
(27, 'Lugo', 12, 'Galicia', 'Lugo'),
(28, 'Madrid', 13, 'Comunidad de Madrid', 'Madrid'),
(29, 'Málaga', 1, 'Andalucía', 'Málaga'),
(30, 'Murcia', 14, 'Región de Murcia', 'Murcia'),
(31, 'Navarra', 15, 'Comunidad Foral de Navarra', 'Pamplona/Iruña'),
(32, 'Ourense', 12, 'Galicia', 'Ourense'),
(33, 'Asturias', 3, 'Principado de Asturias', 'Oviedo'),
(34, 'Palencia', 7, 'Castilla y León', 'Palencia'),
(35, 'Las Palmas', 5, 'Canarias', 'Las Palmas de Gran Canaria'),
(36, 'Pontevedra', 12, 'Galicia', 'Pontevedra'),
(37, 'Salamanca', 7, 'Castilla y León', 'Salamanca'),
(38, 'Santa Cruz de Tenerife', 5, 'Canarias', 'Santa Cruz de Tenerife'),
(39, 'Cantabria', 6, 'Cantabria', 'Santander'),
(40, 'Segovia', 7, 'Castilla y León', 'Segovia'),
(41, 'Sevilla', 1, 'Andalucía', 'Sevilla'),
(42, 'Soria', 7, 'Castilla y León', 'Soria'),
(43, 'Tarragona', 9, 'Cataluña/Catalunya', 'Tarragona'),
(44, 'Teruel', 2, 'Aragón', 'Teruel'),
(45, 'Toledo', 8, 'Castilla-La Mancha', 'Toledo'),
(46, 'València/Valencia', 10, 'Comunitat Valenciana', 'València'),
(47, 'Valladolid', 7, 'Castilla y León', 'Valladolid'),
(48, 'Bizkaia', 16, 'País Vasco/Euskadi', 'Bilbao'),
(49, 'Zamora', 7, 'Castilla y León', 'Zamora'),
(50, 'Zaragoza', 2, 'Aragón', 'Zaragoza'),
(51, 'Ceuta', 18, 'Ciudad Autónoma de Ceuta', 'Ceuta'),
(52, 'Melilla', 19, 'Ciudad Autónoma de Melilla', 'Melilla');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
