-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2020 a las 02:38:03
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemainventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacionproducto`
--

CREATE TABLE `asignacionproducto` (
  `idasignacionProducto` int(11) NOT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `idSucursal` int(11) DEFAULT NULL,
  `idPasillo` int(11) DEFAULT NULL,
  `idEstanteria` int(11) DEFAULT NULL,
  `idBodega` int(11) DEFAULT NULL,
  `idrazonMovimiento` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `cantidad` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignacionproducto`
--

INSERT INTO `asignacionproducto` (`idasignacionProducto`, `idProducto`, `idSucursal`, `idPasillo`, `idEstanteria`, `idBodega`, `idrazonMovimiento`, `estado`, `cantidad`) VALUES
(2, 4, 1, 3, 3, 3, 4, 0, 1),
(5, 5, 3, 3, 2, 4, 4, 0, 123.4344),
(6, 4, 1, 3, 3, 4, 4, 1, 124.23),
(7, 4, 1, 5, 3, 4, 4, 0, 12.3),
(8, 5, 3, 3, 2, 5, 4, 0, 2323.54),
(9, 4, 3, 3, 2, 6, 4, 0, 123.43),
(10, 4, 3, 3, 2, 6, 4, 1, 233.32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `idBodega` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`idBodega`, `nombre`) VALUES
(3, 'bodega4'),
(4, 'bodega mil'),
(5, 'bodega san nicolastias'),
(6, 'bodegonas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nombre`) VALUES
(9, 'categoria12'),
(12, 'Granos'),
(13, 'categoriagato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estanteria`
--

CREATE TABLE `estanteria` (
  `idEstanteria` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idPasillo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estanteria`
--

INSERT INTO `estanteria` (`idEstanteria`, `descripcion`, `idPasillo`) VALUES
(2, 'estamteroa3', 5),
(3, 'estanteria4', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasillo`
--

CREATE TABLE `pasillo` (
  `idPasillo` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idBodega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasillo`
--

INSERT INTO `pasillo` (`idPasillo`, `descripcion`, `idBodega`) VALUES
(3, 'pasillo3', 5),
(5, 'pasilllo5', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precioCosto` double DEFAULT NULL,
  `precioVenta` double DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `codigo`, `descripcion`, `precioCosto`, `precioVenta`, `idCategoria`) VALUES
(4, '232324kf', 'producto1', 32, 20, 12),
(5, 'dsdsd', 'producto12', 32.3, 234.3, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razonmovimiento`
--

CREATE TABLE `razonmovimiento` (
  `idrazonMovimiento` int(11) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `razonmovimiento`
--

INSERT INTO `razonmovimiento` (`idrazonMovimiento`, `descripcion`) VALUES
(4, 'razon2'),
(5, 'razon3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `idSucursal` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`idSucursal`, `nombre`) VALUES
(1, 'sucursal 1'),
(3, 'sucursal 3'),
(5, 'sucursal31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `clave` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `correo`, `clave`) VALUES
(1, 'carjigarcia@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignacionproducto`
--
ALTER TABLE `asignacionproducto`
  ADD PRIMARY KEY (`idasignacionProducto`),
  ADD KEY `fk_productoAsignacion` (`idProducto`),
  ADD KEY `fk_sucursalAsignacion` (`idSucursal`),
  ADD KEY `fk_pasilloAsignacion` (`idPasillo`),
  ADD KEY `fk_estanteriaAsignacion` (`idEstanteria`),
  ADD KEY `fk_bodegaAsignacion` (`idBodega`),
  ADD KEY `fk_razonMovimiento` (`idrazonMovimiento`);

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`idBodega`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `estanteria`
--
ALTER TABLE `estanteria`
  ADD PRIMARY KEY (`idEstanteria`),
  ADD KEY `fk_pasilloEstanteria` (`idPasillo`);

--
-- Indices de la tabla `pasillo`
--
ALTER TABLE `pasillo`
  ADD PRIMARY KEY (`idPasillo`),
  ADD KEY `fk_Bodega` (`idBodega`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `fk_CategoriaProducto` (`idCategoria`);

--
-- Indices de la tabla `razonmovimiento`
--
ALTER TABLE `razonmovimiento`
  ADD PRIMARY KEY (`idrazonMovimiento`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`idSucursal`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignacionproducto`
--
ALTER TABLE `asignacionproducto`
  MODIFY `idasignacionProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `bodega`
--
ALTER TABLE `bodega`
  MODIFY `idBodega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `estanteria`
--
ALTER TABLE `estanteria`
  MODIFY `idEstanteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pasillo`
--
ALTER TABLE `pasillo`
  MODIFY `idPasillo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `razonmovimiento`
--
ALTER TABLE `razonmovimiento`
  MODIFY `idrazonMovimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `idSucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacionproducto`
--
ALTER TABLE `asignacionproducto`
  ADD CONSTRAINT `fk_bodegaAsignacion` FOREIGN KEY (`idBodega`) REFERENCES `bodega` (`idBodega`),
  ADD CONSTRAINT `fk_estanteriaAsignacion` FOREIGN KEY (`idEstanteria`) REFERENCES `estanteria` (`idEstanteria`),
  ADD CONSTRAINT `fk_pasilloAsignacion` FOREIGN KEY (`idPasillo`) REFERENCES `pasillo` (`idPasillo`),
  ADD CONSTRAINT `fk_productoAsignacion` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  ADD CONSTRAINT `fk_razonMovimiento` FOREIGN KEY (`idrazonMovimiento`) REFERENCES `razonmovimiento` (`idrazonMovimiento`),
  ADD CONSTRAINT `fk_sucursalAsignacion` FOREIGN KEY (`idSucursal`) REFERENCES `sucursales` (`idSucursal`);

--
-- Filtros para la tabla `estanteria`
--
ALTER TABLE `estanteria`
  ADD CONSTRAINT `fk_pasilloEstanteria` FOREIGN KEY (`idPasillo`) REFERENCES `pasillo` (`idPasillo`);

--
-- Filtros para la tabla `pasillo`
--
ALTER TABLE `pasillo`
  ADD CONSTRAINT `fk_Bodega` FOREIGN KEY (`idBodega`) REFERENCES `bodega` (`idBodega`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_CategoriaProducto` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
