-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 29-01-2023 a las 17:48:18
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
-- Base de datos: `pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

DROP TABLE IF EXISTS `especie`;
CREATE TABLE IF NOT EXISTS `especie` (
  `CodEsp` int NOT NULL,
  `Altura` int NOT NULL,
  `NombreEsp` varchar(45) NOT NULL,
  `Peso` int NOT NULL,
  PRIMARY KEY (`CodEsp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies_has_movimiento`
--

DROP TABLE IF EXISTS `especies_has_movimiento`;
CREATE TABLE IF NOT EXISTS `especies_has_movimiento` (
  `especies_has_CodEsp` int NOT NULL,
  `movimiento_CodMov` int NOT NULL,
  PRIMARY KEY (`especies_has_CodEsp`,`movimiento_CodMov`),
  KEY `movimiento_CodMov` (`movimiento_CodMov`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

DROP TABLE IF EXISTS `movimiento`;
CREATE TABLE IF NOT EXISTS `movimiento` (
  `CodMov` int NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`CodMov`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
