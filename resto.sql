-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 08:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `detalle`
--

CREATE TABLE `detalle` (
  `idDetalle` int(11) NOT NULL,
  `codigoProducto` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detalle`
--

INSERT INTO `detalle` (`idDetalle`, `codigoProducto`, `idPedido`, `cantidad`, `activo`) VALUES
(1, 4, 1, 2, 1),
(2, 1, 1, 2, 1),
(3, 2, 2, 3, 1),
(5, 3, 7, 2, 1),
(6, 4, 7, 1, 1),
(7, 3, 8, 3, 1),
(8, 4, 8, 1, 1),
(9, 4, 9, 1, 0),
(10, 3, 10, 3, 1),
(11, 4, 11, 1, 1),
(12, 3, 11, 5, 1),
(13, 4, 12, 2, 1),
(14, 4, 1, 2, 0),
(15, 1, 1, 4, 0),
(16, 4, 1, 2, 0),
(17, 1, 1, 4, 0),
(18, 4, 1, 2, 0),
(19, 1, 1, 4, 0),
(20, 4, 1, 2, 0),
(21, 1, 1, 4, 0),
(22, 4, 1, 2, 0),
(23, 1, 1, 4, 0),
(24, 1, 13, 2, 1),
(25, 1, 7, 1, 0),
(26, 1, 7, 2, 0),
(27, 5, 7, 2, 1),
(28, 6, 14, 4, 1),
(29, 1, 15, 3, 1),
(30, 1, 16, 1, 1),
(31, 6, 16, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mesa`
--

CREATE TABLE `mesa` (
  `numMesa` int(11) NOT NULL,
  `idMesero` int(11) DEFAULT NULL,
  `capacidad` int(30) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mesa`
--

INSERT INTO `mesa` (`numMesa`, `idMesero`, `capacidad`, `estado`, `activo`) VALUES
(1, 1, 4, 0, 1),
(2, NULL, 4, 0, 1),
(3, 2, 6, 0, 1),
(4, NULL, 6, 0, 1),
(5, 3, 2, 1, 1),
(6, 3, 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mesero`
--

CREATE TABLE `mesero` (
  `idMesero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` bigint(15) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mesero`
--

INSERT INTO `mesero` (`idMesero`, `nombre`, `apellido`, `dni`, `telefono`, `activo`) VALUES
(1, 'Valentin', 'Casas', 45612345, 266411223, 1),
(2, 'Edder', 'Santi', 1324578, 266433221, 1),
(3, 'Allan', 'Chica', 95001001, 2664371603, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `numMesa` int(11) NOT NULL,
  `idMesero` int(11) NOT NULL,
  `pagado` tinyint(1) NOT NULL,
  `subtotal` double DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`idPedido`, `numMesa`, `idMesero`, `pagado`, `subtotal`, `fecha`, `hora`, `activo`) VALUES
(1, 1, 1, 1, 1840, '2022-07-07', '15:33:00', 1),
(2, 3, 2, 0, NULL, '2022-07-07', '08:21:00', 1),
(3, 1, 1, 0, NULL, '2022-07-09', '18:21:00', 0),
(4, 1, 1, 0, NULL, '2022-07-14', '15:47:00', 0),
(5, 1, 1, 0, NULL, '2022-07-14', '15:49:00', 0),
(6, 3, 2, 0, NULL, '2022-07-14', '15:54:00', 0),
(7, 3, 2, 0, NULL, '2022-07-14', '16:02:00', 1),
(8, 3, 2, 0, NULL, '2022-07-14', '16:03:00', 1),
(9, 3, 2, 0, NULL, '2022-07-14', '16:06:00', 0),
(10, 3, 2, 0, NULL, '2022-07-14', '17:56:00', 1),
(11, 3, 2, 0, NULL, '2022-07-14', '18:00:00', 1),
(12, 1, 1, 0, NULL, '2022-07-14', '20:44:00', 1),
(13, 5, 3, 0, NULL, '2022-07-14', '23:21:00', 1),
(14, 6, 3, 1, 480, '2022-07-15', '08:40:00', 1),
(15, 1, 1, 1, 660, '2022-07-15', '14:49:00', 1),
(16, 5, 3, 0, NULL, '2022-07-15', '15:52:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `stock` int(10) NOT NULL,
  `precio` double NOT NULL,
  `comestible` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`codigo`, `nombre`, `stock`, `precio`, `comestible`, `activo`) VALUES
(1, 'Coca-Cola', 29, 220, 0, 1),
(2, 'Sprite', 5, 120, 0, 1),
(3, 'Papas Fritas', 7, 100, 1, 1),
(4, 'Pizza', 34, 700, 1, 1),
(5, 'Manaos', 8, 70, 0, 0),
(6, 'Empanadas JyQ', 5, 120, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL,
  `numMesa` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reserva`
--

INSERT INTO `reserva` (`idReserva`, `numMesa`, `nombre`, `dni`, `fecha`, `hora`, `activo`) VALUES
(1, 1, 'Allan', 12345678, '2022-07-13', '08:21:32', 1),
(2, 2, 'Joe', 14245354, '2022-07-20', '18:21:32', 1),
(3, 3, 'allan', 12345, '2022-07-15', '01:00:04', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`idDetalle`),
  ADD KEY `codigoProducto` (`codigoProducto`),
  ADD KEY `idPedido` (`idPedido`);

--
-- Indexes for table `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`numMesa`),
  ADD KEY `idMesero` (`idMesero`);

--
-- Indexes for table `mesero`
--
ALTER TABLE `mesero`
  ADD PRIMARY KEY (`idMesero`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `numMesa` (`numMesa`),
  ADD KEY `idMesero` (`idMesero`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `numMesa` (`numMesa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detalle`
--
ALTER TABLE `detalle`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `mesa`
--
ALTER TABLE `mesa`
  MODIFY `numMesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mesero`
--
ALTER TABLE `mesero`
  MODIFY `idMesero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`codigoProducto`) REFERENCES `producto` (`codigo`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);

--
-- Constraints for table `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`idMesero`) REFERENCES `mesero` (`idMesero`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`numMesa`) REFERENCES `mesa` (`numMesa`),
  ADD CONSTRAINT `pedido_ibfk_4` FOREIGN KEY (`idMesero`) REFERENCES `mesero` (`idMesero`);

--
-- Constraints for table `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`numMesa`) REFERENCES `mesa` (`numMesa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
