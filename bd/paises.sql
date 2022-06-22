-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2022 a las 00:55:50
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idioma_oficial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poblacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `capital`, `idioma_oficial`, `poblacion`, `created_at`, `updated_at`) VALUES
(1, 'Colombia', 'Bogotá', 'Español', '17.000.000 millones de hábitantes', NULL, NULL),
(2, 'Argentina', 'Buenos Aires', 'Español', '27.000.000 de habitantes', NULL, NULL),
(3, 'Francia', 'París', 'Frances', '29.000.000 de habitantes', NULL, NULL),
(4, 'Venezuela', 'Caracas', 'Español', '9.000.000 de habitantes', NULL, NULL),
(5, 'Brasil', 'Brasilia', 'Portugués', '58.000.000 de habitantes', NULL, NULL),
(6, 'Canadá', 'Ottawa', 'Ingles', '39.000.000 de habitantes', NULL, NULL),
(7, 'Estados Unidos', 'Washington DC', 'Ingles ', '79.000.000 de habitantes', NULL, NULL),
(8, 'China', 'Beijing', 'Mandarín', '150.000.000 de habitantes', NULL, NULL),
(9, 'Japón', 'Tokio', 'Japonés', '49.000.000 de habitantes', NULL, NULL),
(10, 'México', 'Ciudad de México', 'Español', '29.000.000 de habitantes', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
