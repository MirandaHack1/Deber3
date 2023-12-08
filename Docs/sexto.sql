-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2023 a las 04:11:41
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sexto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `frm_id` int(11) NOT NULL,
  `frm_identificacion` varchar(17) NOT NULL,
  `frm_empleado` varchar(100) NOT NULL,
  `frm_fecha_nacimiento` varchar(80) NOT NULL,
  `frm_celular` varchar(15) NOT NULL,
  `frm_estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`frm_id`, `frm_identificacion`, `frm_empleado`, `frm_fecha_nacimiento`, `frm_celular`, `frm_estado`) VALUES
(1, '00000000000', 'Nombre', '2023-12-04', '000000000000000', 'Inactivo'),
(2, '12312321312312', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(3, '12312321312312', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(4, '12312321312312', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(5, '2300035421', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(6, '11111111111', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(7, '123123123123', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(8, '123123123', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(9, '', '', '', '', ''),
(10, '', '', '', '', ''),
(11, '1721664090', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(12, '1721664090', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(13, '1721664090', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(14, '2300035421', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(15, '', '', '', '', ''),
(16, '2300035421', 'Jhonny Miranda', '123556', '1234567', 'Activo'),
(17, '', '', '', '', ''),
(18, '2300035421', 'Jhonny Miranda', '1235564', '1234567', 'Activo'),
(19, '12312321312312', 'Jhonny Miranda', '123556', '1234567', 'Activo'),
(20, '2300035421', 'Jhonny Miranda', '1235564', '1234567', 'Activo'),
(21, '2300035421', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(22, '', '', '', '', ''),
(23, '2300035421', 'Jhonny Miranda', '123556', '1234567', 'Activo'),
(24, '', '', '', '', ''),
(25, '2300035421', 'Jhonny Miranda', '123556', '1234567', 'Activo'),
(26, '2300035421', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(27, '2300035421', 'Jhonny Miranda', '123', '1234567', 'Activo'),
(28, '', '', '', '', ''),
(30, '', '', '', '', ''),
(31, '', '', '', '', ''),
(32, '', '', '', '', ''),
(34, '', '', '', '', ''),
(35, '', '', '', '', ''),
(36, '2300035421', 'sdadassdad', 'cambie', '12321312', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `PaisId` int(11) NOT NULL,
  `Nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `ProvinciasId` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `PaisesId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioId` int(11) NOT NULL,
  `Cedula` varchar(17) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Telefono` varchar(17) NOT NULL,
  `Correo` varchar(150) NOT NULL,
  `Contrasenia` text NOT NULL,
  `Rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `Cedula`, `Nombres`, `Apellidos`, `Telefono`, `Correo`, `Contrasenia`, `Rol`) VALUES
(1, '23000035421', 'Jhonny', 'Miranda', '023793711', 'miranda3791167@gmail.com', '123456', 'Administrador'),
(3, '1600618381', 'Ariel', 'llerena', '0236132', 'ariel@admimn', '123', 'Vendedor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`frm_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `frm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
