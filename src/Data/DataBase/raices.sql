-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2025 a las 00:54:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `raices`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `idCarta` int(255) NOT NULL,
  `idTituloCarta` int(255) NOT NULL,
  `Titulo` varchar(60) NOT NULL,
  `subTitulo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carta`
--

INSERT INTO `carta` (`idCarta`, `idTituloCarta`, `Titulo`, `subTitulo`) VALUES
(1, 1, 'PARA EMPEZAR', 'ENTRADAS'),
(2, 1, 'PARA EMPEZAR', 'WRAPS Y ENSALADAS'),
(3, 1, 'PARA EMPEZAR', 'PIZZAS INDIVIDUALES'),
(4, 2, 'PLATOS FUERTES', 'PASTAS CASERAS'),
(5, 2, 'PLATOS FUERTES', 'CARNES'),
(6, 2, 'PLATOS FUERTES', 'PESCADOS'),
(7, 2, 'PLATOS FUERTES', 'PASTELES - RISOTTOS - GUISOS'),
(8, 2, 'PLATOS FUERTES', 'MILANESAS'),
(9, 3, 'PARA COMBINAR COMO VOS QUIERAS', 'CARNES'),
(10, 4, 'POSTRES', 'PARA TENTARSE'),
(11, 5, 'VINOS - UVAS TINTAS', 'MALBEC'),
(12, 6, 'VINOS - UVAS BLANCAS, ROSADOS Y ESPUMANTES', 'SUAVIGNON BLANC'),
(13, 7, 'BEBIDAS', 'CON ALCOHOL'),
(14, 7, 'BEBIDAS', 'SIN ALCOHOL'),
(15, 8, 'TRAGOS', 'CLASICOS'),
(16, 8, 'TRAGOS', 'JARRAS'),
(17, 8, 'TRAGOS', 'NUESTROS'),
(18, 9, 'HAPPY HOUR', 'CLASICOS'),
(19, 9, 'HAPPY HOUR', 'JARRAS'),
(20, 9, 'HAPPY HOUR', 'NUESTROS'),
(21, 10, 'CAFETERIA', 'INFUSIONES CALIENTES'),
(22, 10, 'CAFETERIA', 'INFUSIONES FRÍAS'),
(23, 10, 'CAFETERIA', 'ADICIONALES'),
(24, 10, 'CAFETERIA', 'DESAYUNOS / MERIENDAS'),
(25, 10, 'CAFETERIA', 'PASTELERÍA'),
(26, 10, 'CAFETERIA', 'COMBOS'),
(27, 11, 'MENU EMPRESAS', 'PRINCIPALES - $12.000'),
(28, 11, 'MENU EMPRESAS', 'PRINCIPALES - $14.000'),
(29, 3, 'PARA COMBINAR COMO VOS QUIERAS', 'ACHURAS'),
(30, 3, 'PARA COMBINAR COMO VOS QUIERAS', 'APANADOS'),
(31, 3, 'PARA COMBINAR COMO VOS QUIERAS', 'PASTAS'),
(32, 3, 'PARA COMBINAR COMO VOS QUIERAS', 'GUARNICIONES'),
(33, 3, 'PARA COMBINAR COMO VOS QUIERAS', 'PORCIONES'),
(34, 3, 'PARA COMBINAR COMO VOS QUIERAS', 'PESCADOS'),
(35, 3, 'PARA COMBINAR COMO VOS QUIERAS', 'SALSAS'),
(36, 5, 'VINOS - UVAS TINTAS', 'BLEND'),
(37, 5, 'VINOS - UVAS TINTAS', 'CABERNET SAUVIGNON'),
(38, 5, 'VINOS - UVAS TINTAS', 'CABERNET FRANC'),
(39, 5, 'VINOS - UVAS TINTAS', 'SYRAH'),
(40, 5, 'VINOS - UVAS TINTAS', 'TEMPRANILLO'),
(41, 5, 'VINOS - UVAS TINTAS', 'PINOT NOIR'),
(42, 6, 'VINOS - UVAS BLANCAS, ROSADOS Y ESPUMANTES', 'DULCES'),
(43, 6, 'VINOS - UVAS BLANCAS, ROSADOS Y ESPUMANTES', 'ESPUMANTES'),
(44, 6, 'VINOS - UVAS BLANCAS, ROSADOS Y ESPUMANTES', 'CHARDONNAY'),
(45, 6, 'VINOS - UVAS BLANCAS, ROSADOS Y ESPUMANTES', 'ROSADOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta_descriptions`
--

CREATE TABLE `carta_descriptions` (
  `idDescription` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `idTituloCarta` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carta_descriptions`
--

INSERT INTO `carta_descriptions` (`idDescription`, `title`, `subtitle`, `price`, `idTituloCarta`) VALUES
(1, 'Cubierto', '', '$2.000', 1),
(2, 'Menú Infantil', 'Incluye plato principal + Bebida', '$12.000', 1),
(3, 'DE LUNES A VIERNES DE 11 A 16 HS', 'ENVIOS A DOMICILIOS Y TAKE AWAY', 'INCLUYE: PRINCIPAL A ELECCION. LIMONADA, AGUA SABORIZADA O GASEOSA. POSTRE (PANQUEQUE DE DDL, BUDÍN DE PAN, FLAN, VIGILANTE) O CAFÉ', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `idOrder` int(255) NOT NULL,
  `idUser` int(255) NOT NULL,
  `idPlato` int(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`idOrder`, `idUser`, `idPlato`, `cantidad`, `estado`) VALUES
(47, 3, 38, 3, 'a Confirmar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `idPlato` int(255) NOT NULL,
  `tituloPlato` varchar(255) NOT NULL,
  `subTituloPlato` varchar(255) NOT NULL,
  `detalles` varchar(255) NOT NULL,
  `precio` int(255) NOT NULL,
  `idCarta` int(255) NOT NULL,
  `vegetariano` varchar(10) NOT NULL,
  `sinTacc` varchar(10) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `platos`
--

INSERT INTO `platos` (`idPlato`, `tituloPlato`, `subTituloPlato`, `detalles`, `precio`, `idCarta`, `vegetariano`, `sinTacc`, `img`) VALUES
(1, 'EMPANADA FRITA DE CARNE SUAVE', '', '', 2500, 1, '', '', ''),
(2, 'CROQUETAS DE ESPINACA', 'En su salsa de morrón asado\r\n', '', 6500, 1, '', '', ''),
(3, 'TABLA EMPANADAS MINI', '8 unidades, cuatro sabores distintos', '', 8000, 1, '', '', ''),
(4, 'REVUELTO GRAMAJO', 'Ni tan revuelto ni tan gramajo', '', 8000, 1, '', '', ''),
(5, 'BERENJENAS PARMESANAS', '', '', 10000, 1, 'true', 'true', ''),
(6, 'PAPAS CUÑA', 'Cebolla crocante, cheddar, panceta ahumada y verdeo', '', 10000, 1, '', '', ''),
(7, 'MOZZARELLA APANADA', 'En mix de semillas y su salsa de pesto y tomate', '', 11000, 1, '', '', ''),
(8, 'PROVOLETA MARINADA', 'Con variedad de hongos, tomates secos hidratados y rúcula', '', 15000, 1, '', '', ''),
(9, 'RABAS CON SU CREMA ACIDA', '', '', 15000, 1, '', '', ''),
(10, 'ENSALADA RAICES ', 'Rúcula, tomate, huevo, panceta, papas Raíces y hongos, con reducción de aceto\nbalsámico\n', '', 11000, 2, '', '', ''),
(11, 'NUESTRA ENSALADA CESAR CON POLLO', 'Rúcula, croutones, panceta ahumada, salsa César, reducción de aceto balsámico, parmesano y pollo marinado', '', 10000, 2, '', '', ''),
(12, 'WRAP CESAR', 'Pollo, lechuga, parmesano, panceta ahumada, salsa cesar y papas Raíces', '', 10000, 2, '', '', ''),
(13, 'ENSALADA DE VERANO', 'Rúcula, pollo marinado, champignones salteados, queso azul, peras fileteadas, almendras picadas y pelitos de batata frit', '', 9000, 2, '', '', ''),
(14, 'CAPRESE', 'Mozzarella, tomates frescos, pesto', '', 8500, 3, 'true', '', ''),
(15, 'NUESTRA', 'Mozzarella, cebolla, panceta, ciboulette y amapola', '', 9000, 3, '', '', ''),
(16, 'AGNOLOTTI CAPRESE', 'Con tuco y perfume de albahaca', '', 11000, 4, 'true', '', ''),
(17, 'RAVIOLONES 3X3', '3 vegetales - 3 quesos en salsa de zapallo, almendras tostadas y crema', '', 11000, 4, 'true', '', ''),
(18, 'NUESTRO MALFATTI', 'De espinaca y ricota en salsa 4 quesos (chevrotin, roquefort, mozzarella y parmesano)', '', 14000, 4, 'true', '', ''),
(19, 'ÑOQUIS CON RAGÔUT DE CORDERO', '', '', 12000, 4, '', '', ''),
(20, 'GNOCCHI DE SEMOLA SOUFFLÉ GRATINADOS', 'Con polvo de tomates secos, rúcula y roquefort', '', 15000, 4, 'true', '', ''),
(21, 'RAVIOLONES DE RICOTA Y ESPINACA CON RAGOUT DE OSOBUCO', '', '', 14000, 4, '', '', ''),
(22, 'RAVIOLONES DE ASADO Y VACIO AL ASADOR', 'Con provoleta y morrones ahumados en su jugo de cocción', '', 13000, 4, '', '', ''),
(23, 'SORRENTINOS DE LA CHEF', 'Rellenos de pollo, panceta, cebollas salteadas y mozzarella en salsa cremosa de hongos y huevo poche', '', 15000, 4, '', '', ''),
(24, 'TAGLIATELLE NERO DI SEPPIA CON GAMBAS AL AJILLO', '', '', 15000, 4, '', '', ''),
(25, 'SORRENTINOS', 'De pescado blanco en salsa cremosa de espinaca y pesto', '', 13000, 4, '', '', ''),
(26, 'MINI BIFE DE TERNERA', 'Con revuelto ni tan revuelto ni tan gramajo', '', 15000, 5, '', '', ''),
(27, 'BONDIOLA BRESEADA', 'Con pure de batata y su pera al malbec', '', 18000, 5, '', '', ''),
(28, 'PAMPLONA', 'Pechuga rellena de mozzarella, morrón asado y rúcula, envuelta en panceta ahumada sobre papas a la crema de verdeo', '', 20000, 5, '', '', ''),
(29, 'BIFE PETRONA', 'Bife de chorizo grillado con tomate asado relleno de mozzarella, panceta ahumada y yema de huevo, papas Raíces y bouquet', '', 21000, 5, '', '', ''),
(30, 'OJO DE BIFE EN CROUTE DE HIERBAS', 'Con papa rota y crema ácida de ciboulette', '', 21000, 5, '', '', ''),
(31, 'OJO DE BIFE', 'Con mini provoleta, chorizo y morcilla bombón, verdes, criolla y papas Raíces', '', 25000, 5, '', '', ''),
(32, 'BIFE DE CHORIZO RELLENO', 'De provoleta y morrones salteados, acompañado de tortilla española y bouquet de verdes', '', 23000, 5, '', 'true', ''),
(33, 'RIBS A LA BARBACOA', 'Ribs de cerdo a la barbacoa acompañados de batatas y boniatos fritos, con su ensalada coleslaw', '', 22000, 5, '', 'true', ''),
(34, 'FILET DE MERLUZA APANADO CON SESAMO', 'Acompañado con timbal de calabaza al curry, verdeo, arroz y mozzarella', '', 13000, 6, '', '', ''),
(35, 'PESCA DEL DIA', 'Sobre risotto provenzal, emulsión de limón, y gremolata de pan crocante', '', 19500, 6, '', '', ''),
(36, 'GUISO DE LENTEJAS', 'Carne, cerdo, chorizo colorado y panceta', '', 9000, 7, '', 'true', ''),
(37, 'LOCRO PULSUDO', 'Carne, cerdo, chorizo colorado, panceta y porotos', '', 10000, 7, '', 'true', ''),
(38, 'RISOTTO DE POLLO Y VARIEDAD DE HONGOS ', '', '', 15000, 7, '', 'true', ''),
(39, 'FRICASSE DE POLLO', 'Con papas cubo salteadas a la crema de verdeo, hongos y panceta', '', 14000, 7, '', 'true', ''),
(40, 'PASTEL DE CALABAZA', 'Con pollo, choclo, verdeo y mozzarella', '', 11000, 7, '', 'true', ''),
(41, 'NUESTRO PASTEL DE PAPAS', '', '', 16000, 7, '', 'true', ''),
(42, 'TIRITAS DE CARNE', 'Desglasadas con vino tinto, morrones, cebolla y papas cubo a la crema', '', 13000, 7, '', 'true', ''),
(43, 'CAPRESE O NAPOLITANA', 'De Berenjena', 'Con papas Raíces', 12500, 8, 'true', '', ''),
(44, 'CAPRESE O NAPOLITANA', 'De Pollo', 'Con papas Raíces', 15000, 8, '', '', ''),
(45, 'CAPRESE O NAPOLITANA', 'De Carne', 'Con papas Raíces', 16500, 8, '', '', ''),
(46, 'RAICES', 'De Berenjena', 'Con mozzarella y salteado de vegetales, acompañado de puré de calabaza, brócoli y cebollas salteadas coronado con huevo ', 15000, 8, 'true', '', ''),
(47, 'RAICES', 'De Pollo', 'Con mozzarella y salteado de vegetales, acompañado de puré de calabaza, brócoli y cebollas salteadas coronado con huevo ', 17000, 8, '', '', ''),
(48, 'RAICES', 'De Carne', 'Con mozzarella y salteado de vegetales, acompañado de puré de calabaza, brócoli y cebollas salteadas coronado con huevo ', 18000, 8, '', '', ''),
(49, 'PECHUGA GRILLADA', '', '', 9000, 9, '', 'true', ''),
(50, 'MINI BIFE DE CHORIZO', '', '(200gr)', 11000, 9, '', 'true', ''),
(51, 'BIFE DE CHORIZO', '', '(300gr)', 15000, 9, '', 'true', ''),
(52, 'OJO DE BIFE', '', '(300gr)', 17000, 9, '', 'true', ''),
(53, 'MORCILLA BOMBON', '', '2 Unidades', 4500, 29, '', '', ''),
(54, 'CHORIZO BOMBON', '', '2 Unidades', 5500, 29, '', '', ''),
(55, 'CHORIZO + MORCILLA', '', '2 Unidades', 5000, 29, '', '', ''),
(56, 'MILANESA DE BERENJENA', '', '', 7000, 30, 'true', '', ''),
(57, 'FILET DE MERLUZA', '', '', 8000, 30, '', '', ''),
(58, 'MILANESA DE POLLO, CARNE O CERDO', '', '', 9500, 30, '', '', ''),
(59, 'SPAGHETTI', '', '', 5000, 31, 'true', '', ''),
(60, 'TAGLIATELLE', '', '', 5000, 31, 'true', '', ''),
(61, 'ÑOQUIS', '', '', 6000, 31, 'true', '', ''),
(62, 'MALFATTI DE ESPINACA', '', '', 6000, 31, 'true', '', ''),
(63, 'FIDEOS DE ARROZ', '', '', 7000, 31, 'true', 'true', ''),
(64, 'RAVIOLONES DE ESPINACA Y RICOTA', '', '', 7000, 31, 'true', '', ''),
(65, 'PAPAS FRITAS', '', '', 3500, 32, 'true', 'true', ''),
(66, 'ENSALADA', '', '3 Ingredientes', 4500, 32, 'true', 'true', ''),
(67, 'PURE DE PAPAS - CALABAZA O BATATA', '', '', 3500, 32, 'true', 'true', ''),
(68, 'PURE MIXTO', '', '', 4000, 32, 'true', 'true', ''),
(69, 'VEGETALES SALTEADOS', '', '', 5000, 32, 'true', 'true', ''),
(70, 'TORTILLA DE PAPAS', '', '', 6500, 32, 'true', '', ''),
(71, 'PAPAS FRITAS', '', '', 4500, 33, '', '', ''),
(72, 'PAPAS RAICES', '', '', 5500, 33, '', '', ''),
(73, 'ENSALADA', '', '2 Ingredientes', 8000, 33, 'true', 'true', ''),
(74, 'ENSALADA', '', '3 Ingredientes', 9000, 33, 'true', 'true', ''),
(75, 'PESCA DEL DIA', '', '', 11000, 34, '', '', ''),
(76, 'TUCO / CREMA / ROSA', '', '', 4000, 35, 'true', 'true', ''),
(77, 'CAPRESE', '', '', 5500, 35, 'true', 'true', ''),
(78, 'PESTO Y NUECES', '', '', 3500, 35, 'true', 'true', ''),
(79, 'BOLOGNESA', '', '', 6500, 35, '', 'true', ''),
(80, 'CALABAZA, CREMA Y ALMENDRAS', '', '', 5500, 35, 'true', 'true', ''),
(81, 'CUATRO QUESOS', '', '', 7000, 35, 'true', 'true', ''),
(82, 'HONGOS Y CREMA', '', '', 7000, 35, 'true', 'true', ''),
(83, 'CREME BRULEE DE DULCE DE LECHE', '', '', 4500, 10, '', '', ''),
(84, 'CHEESECAKE DE DULCE DE LECHE', 'Con base de chocolinas y helado de dulce de leche granizado', '', 7000, 10, '', '', ''),
(85, 'VOLCAN DE CHOCOLATE', 'Con helado de crema americana con frutos rojos', '', 6500, 10, '', '', ''),
(86, 'CHEESECAKE DE FRUTOS ROJOS', '', '', 6500, 10, '', '', ''),
(87, 'TRES TEXTURAS DE CHOCOLATE', '', '', 6000, 10, '', '', ''),
(88, 'NUESTRO TIRAMISU', '', '', 5500, 10, '', '', ''),
(89, 'PAVLOVA', 'Merengue con un toque de dulce de leche, frutos rojos, crema, almendras y banana caramelizada.', '', 6000, 10, '', 'true', ''),
(90, 'COPA BAILEYS CASERO', 'Helado de americana, banana, nueces y syrup de chocolate', '', 5000, 10, '', 'true', ''),
(91, 'TARTA TIBIA DE MANZANA', 'Con helado de crema americana', '', 6500, 10, '', '', ''),
(92, 'PERA AL MALBEC', 'Con crema, almendras tostadas y merengues caseros', '', 4500, 10, '', 'true', ''),
(93, 'PANQUEQUE CLASICO', 'De dulce de leche quemado con azúcar', '', 4000, 10, '', '', ''),
(94, 'HELADO', 'Dulce de leche granizado, crema americana, limón, banana split, frutilla y/o chocolate con almendras', '2 bochas', 7500, 10, '', 'true', ''),
(95, 'HELADO', 'Dulce de leche granizado, crema americana, limón, banana split, frutilla y/o chocolate con almendras', '1 bocha', 4000, 10, '', 'true', ''),
(96, 'FLAN CASERO', '', '', 3500, 10, '', 'true', ''),
(97, 'VIGILANTE', '', '', 3500, 10, '', 'true', ''),
(98, 'ADICIONAL', 'Crema o dulce de leche', '', 1500, 10, '', 'true', ''),
(99, 'ADICIONAL', 'Crema y dulce de leche', '', 2500, 10, '', 'true', ''),
(100, 'PORTILLO MALBEC', '', '375cc', 5000, 11, '', '', ''),
(101, 'F.GASCON ROBLE', '', '375cc', 7500, 11, '', '', ''),
(102, 'UNO MALBEC', '', '375cc', 7500, 11, '', '', ''),
(103, 'ESCORIHUELA GASCÓN', '', '375cc', 9000, 11, '', '', ''),
(104, 'SALENTEIN RESERVA', '', '375cc', 9000, 11, '', '', ''),
(105, 'PORTILLO', '', '', 7000, 11, '', '', ''),
(106, 'FAMILIA GASCON', '', '', 7500, 11, '', '', ''),
(107, 'ALAMOS', '', '', 9000, 11, '', '', ''),
(108, 'NICASIA', '', '', 11000, 11, '', '', ''),
(109, 'UNO', '', '', 13000, 11, '', '', ''),
(110, 'SALENTEIN RESERVA', '', '', 13000, 11, '', '', ''),
(111, 'ARGENTO ORGÁNICO', '', '', 13500, 11, '', '', ''),
(112, 'SAINT FELICIEN', '', '', 13500, 11, '', '', ''),
(113, 'UNO ORGÁNICO', '', '', 15500, 11, '', '', ''),
(114, 'E. GASCÓN GRAN RESERVA', '', '', 17000, 11, '', '', ''),
(115, 'MALBEC', '', '', 20000, 11, '', '', ''),
(116, 'F. GASCON RED BLEND', '', '', 9000, 36, '', '', ''),
(117, 'ARGENTO MALBEC CABERNET FRANC ORGÁNICO', '', '', 13500, 36, '', '', ''),
(118, 'DV CATENA CABERNET MALBEC', '', '', 32000, 36, '', '', ''),
(119, 'FAMILIA GASCON', '', '', 9000, 37, '', '', ''),
(120, 'UNO', '', '', 13000, 37, '', '', ''),
(121, 'NICASIA', '', '', 13000, 38, '', '', ''),
(122, 'ESCORIHUELA GASCON', '', '', 13500, 38, '', '', ''),
(123, 'SAINT FELICIEN', '', '', 15500, 38, '', '', ''),
(124, 'FAMILIA GASCON', '', '', 9000, 39, '', '', ''),
(125, 'SAINT FELICIEN', '', '', 15500, 39, '', '', ''),
(126, 'PORTILLO', '', '', 7500, 40, '', '', ''),
(127, 'FAMILIA GASCON', '', '', 9000, 40, '', '', ''),
(128, 'ESCORIHUELA GASCON', '', '', 13500, 41, '', '', ''),
(129, 'DESCORCHE', '', '', 7000, 11, '', '', ''),
(132, 'PORTILLO', '', '', 7500, 12, '', '', ''),
(133, 'UNO', '', '', 13000, 12, '', '', ''),
(134, 'PRISIONERO BLANC DE MALBEC DULCE NATURAL', '', '', 8000, 42, '', '', ''),
(135, 'PRISIONERO CHENIN', '', '', 8000, 42, '', '', ''),
(136, 'PORTILLO DULCE NATURAL', '', '', 8000, 42, '', '', ''),
(137, 'NOVECENTO EXTRA BRUT', '', '', 7000, 43, '', '', ''),
(138, 'FAMILIA GASCON E. BRUT', '', '', 13000, 43, '', '', ''),
(139, 'FAMILIA GASCON ROBLE', '', '375cc', 7500, 44, '', '', ''),
(140, 'PORTILLO', '', '', 7500, 44, '', '', ''),
(141, 'FAMILIA GASCON', '', '', 9000, 44, '', '', ''),
(142, 'ALAMOS', '', '', 11000, 44, '', '', ''),
(143, 'UNO', '', '', 13000, 44, '', '', ''),
(144, 'PORTILLO', '', '', 7500, 45, '', '', ''),
(145, 'ARGENTO', '', '', 10000, 45, '', '', ''),
(146, 'FAMILIA GASCON', '', '', 9000, 45, '', '', ''),
(147, 'ALAMOS (MACERACIÓN ATENUADA)', '', '', 11000, 45, '', '', ''),
(148, 'UNO', '', '', 13000, 45, '', '', ''),
(149, 'SALENTEIN ROSE', '', '', 13500, 45, '', '', ''),
(150, 'CERVEZA ANDES LATA 473CC', '', '', 4000, 13, '', '', ''),
(151, 'CERVEZA STELLA ARTOIS LATA', '', '', 4500, 13, '', '', ''),
(152, 'CERVEZA ANDES 950CC', '', '', 6500, 13, '', '', ''),
(153, 'STELLA ARTOIS 975CC', '', '', 8500, 13, '', '', ''),
(154, 'AGUA MINERAL SIN GAS', '', '', 2000, 14, '', '', ''),
(155, 'SODA', '', '', 2000, 14, '', '', ''),
(156, 'GASEOSAS', '', '', 2500, 14, '', '', ''),
(157, 'AGUAS SABORIZADAS', '', '', 2500, 14, '', '', ''),
(158, 'LIMONADA MENTA Y JENGIBRE', '', '', 4000, 14, '', '', ''),
(159, 'LIMONADA DE FRUTOS ROJOS', '', '', 4500, 14, '', '', ''),
(160, 'GIN TONIC', 'GIN HERACLITO, TONICA, RODAJA DE LIMON', '', 6500, 15, '', '', ''),
(161, 'TOM COLLINS', 'GIN HERACLITO, ALMIBAR, JUGO DE LIMÓN, SODA', '', 4500, 15, '', '', ''),
(162, 'APEROL SPRITZ', 'APEROL, ESPUMANTE Y RODAJA DE NARANJA', '', 6000, 15, '', '', ''),
(163, 'CARPANO ROSSO & POMELO', 'CARPANO ROSSO, GASEOSA DE POMELO', '', 5000, 15, '', '', ''),
(164, 'CARPANO ORIGINALE', 'CARPANO ROSSO, SODA, PINCHE DE ACEITUNA', '', 3000, 15, '', '', ''),
(165, 'NEGRONI', 'CARPANO ROSSO, GIN, RED BITTER', '', 4000, 15, '', '', ''),
(166, 'CUBRA LIBRE - SANTO LIBRE', 'RON BACCARDI, COLA, O SEVEN UP', '', 7500, 15, '', '', ''),
(167, 'FERNET BRANCA', 'FERNET BRANCA, COLA', '', 6000, 15, '', '', ''),
(168, 'MINT TONIC', 'BRANCA MENTA, AGUA TONICA, RODAJA DE LIMA', '', 6000, 15, '', '', ''),
(169, 'SERNOVA POMELO', 'VODKA SERNOVA, GASEOSA Y RODAJA DE POMELO', '', 5000, 15, '', '', ''),
(170, 'CAIPIROSKA', 'VODKA, LIMA', '', 3500, 15, '', '', ''),
(171, 'CAIPIROSKA DE FRUTOS ROJOS', 'VODKA, LIMA, FRUTOS ROJOS', '', 4500, 15, '', '', ''),
(172, 'MIMOSA', 'VINO ESPUMANTE, JUGO DE NARANJA', '', 3000, 15, '', '', ''),
(173, 'GANCIA', 'LIMÓN Y SEVEN UP', '', 4500, 15, '', '', ''),
(174, 'JARRA DE VERMU', 'VERMU,SODA, RODAJAS DE NARANJA 1,5LT.', '', 7500, 16, '', '', ''),
(175, 'TINTO DE VERANO ', 'VERMU, VINOTINTO MALBEC,SEVEN UP, RODAJAS DE LIMON', '1,5lts', 13000, 16, '', '', ''),
(176, 'CONSENTIDO', 'VERMU LUNFA ROSSO,ESPUMANTE, RODAJA DE NARANJA', '', 5000, 17, '', '', ''),
(177, 'LUNFARDO', 'VERMU LUNFA ROSADO, JUGO DELIMÓN, ALMIBAR DE JENGIBRE, FRUTILLAS, SODA, MENTA', '', 5500, 17, '', '', ''),
(178, 'CHAMUYO', 'VERMU LUNFA ROSADO,GIN BLEND DE TECNICAS,TÓNICA, RODAJA DEPOMELO', '', 7500, 17, '', '', ''),
(179, 'NARANJO EN FLOR', 'BITTER LUNFA, VERMULUNFA ROSADO,TÓNICA, RODAJA DE NARANJA', '', 7000, 17, '', '', ''),
(180, 'MATE GARIBALDI', 'YERBA MATE,CAMPARI Y JUGO DE NARANJAS', '', 8500, 17, '', '', ''),
(181, 'VODKA ROJO', 'SERNOVA, FRUTOS ROJOS, SEVEN UP', '', 6000, 17, '', '', ''),
(182, 'DISCULPAME', 'CHAMPAGNE, REDUCCION DE FRUTOS ROJOS', '', 4000, 17, '', '', ''),
(183, 'GIN TONIC', 'GIN HERACLITO,TONICA, RODAJA DELIMON', '', 5600, 18, '', '', ''),
(184, 'GIN TONIC BLEND DE TÉCNICAS', 'GIN HERACLITO BLEND DETÉCNICAS, TONICA, RODAJA DELIMON', '', 6000, 18, '', '', ''),
(185, 'TOM COLLINS', 'GIN HERACLITO, ALMIBAR, JUGO DE LIMÓN,SODA', '', 4000, 18, '', '', ''),
(186, 'LUNFA SPRITZ', 'BITTER LUNFA,ESPUMANTE Y RODAJA DE NARANJA', '', 5600, 18, '', '', ''),
(187, 'VERMU LUNFA & TÓNICA', 'VERMULUNFA ROSSOO ROSADO,TÓNICA, RODAJA DE NARANJA', '', 5200, 18, '', '', ''),
(188, 'VERMU LUNFA & SODA', 'VERMULUNFA ROSSOO ROSADO,SODA, RODAJA DE NARANJA', '', 3200, 18, '', '', ''),
(189, ' NEGRONI HERACLITO&LUNFA', 'LUNFA ROSSO,GIN HERÁCLITO, BITTER LUNFA', '', 4000, 18, '', '', ''),
(190, 'JARRA DE VERMU ROSSO LUNFA', 'LUNFA ROSSO,SODA, RODAJAS DE NARANJA 1,5LT.', '', 12400, 19, '', '', ''),
(191, 'JARRA DE VERMU ROSADO LUNFA', 'LUNFA ROSADO,TÓNICA, RODAJAS DEPOMELO 1,5LT.', '', 13600, 19, '', '', ''),
(192, 'TINTO DE VERANO', 'LUNFA ROSSO, VINOTINTO MALBEC, SEVEN UP, RODAJAS DELIMON -1,5LT.', '', 12800, 19, '', '', ''),
(193, 'CONSENTIDO', 'VERMULUNFA ROSSO,ESPUMANTE, RODAJA DE NARANJA', '', 4800, 20, '', '', ''),
(194, 'LUNFARDO', 'VERMULUNFA ROSADO, JUGO DELIMÓN, ALMIBAR DE JENGIBRE, FRUTILLAS, SODA, MENTA', '', 4800, 20, '', '', ''),
(195, 'NARANJO EN FLOR', 'BITTER LUNFA, VERMULUNFA ROSADO,TÓNICA, RODAJA DE NARANJA', '', 5600, 20, '', '', ''),
(196, 'CHAMUYO', 'VERMULUNFA ROSADO,GIN BLEND DE TECNICAS,TÓNICA, RODAJA DEPOMELO', '', 6400, 20, '', '', ''),
(197, 'CAFÉ POCILLO', 'espresso / cortado / lágrima', '', 2500, 21, '', '', ''),
(198, 'CAFÉ DESCAFEINADO', 'espresso / cortado / lágrima', '', 3000, 21, '', '', ''),
(199, 'CAFÉ JARRITO', 'espresso / cortado / lágrima', '', 3000, 21, '', '', ''),
(200, 'CAFÉ DOBLE', 'espresso / cortado / lágrima', '', 3500, 21, '', '', ''),
(201, 'TAZÓN RAÍCES', 'supes tazón', '', 5500, 21, '', '', ''),
(202, 'CAPUCCINO ITALIANO', 'espresso con leche espumada y cacao y/o canela', '', 4000, 21, '', '', ''),
(203, 'TÉ', 'variedad de sabores The Blenders y Heredia', '', 3000, 21, '', '', ''),
(204, 'MATE', 'servicio de mate', '', 3500, 21, '', '', ''),
(205, 'SUBMARINO', 'leche caliente con chocolate', '', 3500, 21, '', '', ''),
(206, 'CAFÉ DE VERANO', 'espresso con helado de crema y syrup de chocolate', '', 4500, 22, '', '', ''),
(207, 'LIMONADA', 'jugo de limón, syroup de jengibre y menta', '', 5000, 22, '', '', ''),
(208, 'LIMONADA DE FRUTOS ROJOS', 'jugo de limón, syroup de frutos rojos y menta', '', 6000, 22, '', '', ''),
(209, 'JUGO DE NARANJA', 'vaso de jugo de naranja', '', 3500, 22, '', '', ''),
(210, 'LICUADO DE BANANA', 'con leche o agua', '', 4000, 22, '', '', ''),
(211, 'LICUADO DE FRUTOS ROJOS', 'con leche o agua', '', 6000, 22, '', '', ''),
(212, 'MILKSHAKE', 'helado (crema americana, chocolate, dulce de leche, banana split) con leche, coronado con crema batida', '', 4500, 22, '', '', ''),
(213, 'LECHE VEGETAL', '', '', 1000, 23, '', '', ''),
(214, 'JARRITO DE LECHE', '', '', 500, 23, '', '', ''),
(215, 'CREMA', '', '', 1500, 23, '', '', ''),
(216, 'MEDIALUNA', 'casera', '', 1200, 24, '', '', ''),
(217, 'MEDIALUNA RELLENA', 'con jamón y queso', '', 2500, 24, '', '', ''),
(218, 'TOSTADAS DE PAN CASERO', 'con manteca y dulce de leche o queso crema y mermelada', '', 4000, 24, '', '', ''),
(219, 'HUEVOS REVUELTOS', 'en tostón, con panceta', '', 6000, 24, '', '', ''),
(220, 'TOSTADO RÚSTICO', 'con jamon y queso, acompañado de papas pay', '', 6000, 24, '', '', ''),
(221, 'TOSTÓN CON PALTA', 'queso crema y huevo poché', '', 8000, 24, '', '', ''),
(222, 'YOGURT CON FRUTAS Y GRANOLA', 'yogurt natural, frutas de estación, granola casera y miel', '', 10000, 24, '', '', ''),
(223, 'PANCAKES', 'con manzana en compota, bananas caramelizadas, leche condensada, helado de americana y almendras', '', 7000, 24, '', '', ''),
(224, 'BAGEL', 'relleno de jamón y queso, con huevo frito en el centro', '', 8000, 24, '', '', ''),
(225, 'COOKIE XL', 'vainilla con chips de chocolate blanco y almendras / chocolate con chips de chocolate / con avena y pasas', '', 3000, 25, '', '', ''),
(226, 'TARTA DE MANZANA', '', '', 7000, 25, '', '', ''),
(227, 'TIRAMISÚ', '', '', 6000, 25, '', '', ''),
(228, 'CHEESECAKE DE DULCE DE LECHE', '', '', 7000, 25, '', '', ''),
(229, 'CHEESECAKE DE FRUTOS ROJOS', '', '', 8000, 25, '', '', ''),
(230, 'TRES TEXTURAS DE CHOCOLATE', '', '', 8000, 25, '', '', ''),
(231, 'PORTEÑO', 'café doble o té con 2 medialunas', '', 5500, 26, '', '', ''),
(232, 'CLÁSICO', 'café doble o té con tostadas y dips', '', 7000, 26, '', '', ''),
(233, 'FIT', 'café doble o té con yogurt con granola y frutas', '', 12500, 26, '', '', ''),
(234, 'DULCE', 'café doble o té con pancakes', '', 9500, 26, '', '', ''),
(235, 'BRUNCH RAÍCES PARA DOS', '2 tazones Raíces o tés,\nlimonada 500cc, dos\nmedialunas, bagel relleno,\nporción de torta (manzana,\ntiramisu, cheesecake de ddl,\ntres texturas) y huevos\nrevueltos\n', '', 32000, 26, '', '', ''),
(236, 'ENSALADA DE POLLO, RÚCULA,\nZANAHORIA RALLADA Y HUEVO CON\nADEREZO DE MOSTAZA Y CURRY', '', '', 12000, 27, '', '', ''),
(237, 'ÑOQUIS DE PAPA A LA BOLOGNESA', '', '', 12000, 27, '', '', ''),
(238, 'MILANESA DE BERENJENA CON ENSALADA DE ESTACIÓN', '', '', 12000, 27, 'true', '', ''),
(239, 'ALBÓNDIGAS CON PURÉ DE PAPA Y ESPINACA', '', '', 12000, 27, '', '', ''),
(240, 'MUSLITO DEPOLLO AL VERDEOCON PAPAS CUÑA', '', '', 12000, 27, '', '', ''),
(241, 'CREPPES DE ESPINACA Y RICOTA CON SALSA ROSA', '', '', 12000, 27, 'true', '', ''),
(242, 'RIÑONES A LA PROVENZAL CON PAPAS ESPAÑOLAS', '', '', 12000, 27, '', '', ''),
(243, 'ENSALADA CÉSAR', '', '', 14000, 28, 'true', '', ''),
(244, 'BONDIOLA A LA BARBACOA CON PAPAS ESPAÑOLAS', '', '', 14000, 28, '', '', ''),
(245, 'PECHUGA GRILLADA CON PURE MIXTO', '', '', 14000, 28, '', '', ''),
(246, 'MILANESITA DE CARNE DE CERDO CON PURÉ DE BATATAS (O PAPAS)', '', '', 14000, 28, '', '', ''),
(247, 'SUPREMA CON PAPAS FRITAS', '', '', 14000, 28, '', '', ''),
(248, 'PECHUGA RELLENA CON SALSA DE PUERROS Y PURÉ DE CALABAZA', '', '', 14000, 28, '', '', ''),
(249, 'FILET DE MERLUZA APANADO CON PURE DE CALABAZA', '', '', 14000, 28, '', '', ''),
(250, 'POLLO AL CURRY CON ARROZ', '', '', 14000, 28, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prensa`
--

CREATE TABLE `prensa` (
  `idPrensa` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prensa`
--

INSERT INTO `prensa` (`idPrensa`, `titulo`, `link`, `foto`, `descripcion`) VALUES
(1, 'La Nación – julio 2010', 'prensa/la-nacion-julio-2010.jpg', 'la-nacion-julio-2010.jpg', '14 años atrás'),
(2, 'Tiempo argentino – mayo 2013', 'prensa/tiempo-argentino-mayo-2013.jpg', 'tiempo-argentino-mayo-2013.jpg', '11 años atrás'),
(3, 'Para Ti – sept 2012', 'prensa/para-ti-sep-2012.jpg', 'para-ti-sep-2012.jpg', '12 años atrás'),
(4, 'Ollas y Sartenes – junio 2010', 'prensa/raices-ollas-9-jun-2010.jpg', 'raices-ollas-9-jun-2010.jpg', '14 años atrás'),
(5, 'Sybarite', 'prensa/nota-en-sybarite.jpg', 'nota-en-sybarite.jpg', '10 años atrás'),
(6, 'Tiempo Argentino – mayo 2013', 'prensa/tiempo-argentino-mayo-2013-1.jpg', 'tiempo-argentino-mayo-2013-1.jpg', '11 años atrás'),
(7, 'Ollas y Sartenes- junio 2010', 'prensa/clarin-ollas-y-sartenes-2.jpg', 'clarin-ollas-y-sartenes-2.jpg', '14 años atrás'),
(8, 'Ollas y Sartenes- junio 2010', 'prensa/clarin-ollas-y-sartenes-3.jpg', 'clarin-ollas-y-sartenes-3.jpg', '14 años atrás'),
(9, 'Noticias- Septiembre 2013', 'prensa/noticias-septiembre-2013.jpg', 'noticias-septiembre-2013.jpg', '11 años atrás'),
(10, 'Planeta Urbano', 'prensa/planeta-urbano.jpg', 'planeta-urbano.jpg', '10 años atrás'),
(11, 'La Razón', 'prensa/la-razon.jpg', 'la-razon.jpg', '10 años atrás'),
(12, 'Clarín', 'prensa/clarin.jpg', 'clarin.jpg', '10 años atrás'),
(13, 'Ámbito del placer', 'prensa/ambito-del-placer.jpg', 'ambito-del-placer.jpg', '10 años atrás'),
(14, 'Tiempo Argentino – enero 2014', 'prensa/tiempo-argentino-enero-2014.jpg', 'tiempo-argentino-enero-2014.jpg', '10 años atrás'),
(15, 'Tiempo Argentino – enero 2014', 'prensa/tiempo-argentino-enero-2014-2.jpg', 'tiempo-argentino-enero-2014-2.jpg', '10 años atrás'),
(16, 'Planeta Joy', 'prensa/planeta-joy.jpg', 'planeta-joy.jpg', '10 años atrás');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulo_cartas`
--

CREATE TABLE `titulo_cartas` (
  `idTituloCarta` int(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `titulo_cartas`
--

INSERT INTO `titulo_cartas` (`idTituloCarta`, `Titulo`) VALUES
(1, 'PARA EMPEZAR'),
(2, 'PLATOS FUERTES'),
(3, 'PARA COMBINAR COMO VOS QUIERAS'),
(4, 'POSTRES'),
(5, 'VINOS - UVAS TINTAS'),
(6, 'VINOS - UVAS BLANCAS, ROSADOS Y ESPUMANTES'),
(7, 'BEBIDAS'),
(8, 'TRAGOS'),
(9, 'HAPPY HOUR'),
(10, 'CAFETERIA'),
(11, 'MENU EMPRESAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokens`
--

CREATE TABLE `tokens` (
  `idToken` int(255) NOT NULL,
  `userName` varchar(66) NOT NULL,
  `token` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tokens`
--

INSERT INTO `tokens` (`idToken`, `userName`, `token`, `tipo`) VALUES
(28, 'lucho12', '0.57166504892435980.7228005616329976', 0),
(30, 'lucho1', '0.7185054134626780.14741150142967796', 0),
(55, 'crisliffu', '0.139929114155204370.6702783067008296', 0),
(56, 'luciano12', '0.196509969190586050.7070092830669903', 0),
(64, 'mbeatriz', '0.77792590174172460.286289895647343', 0),
(70, 'luciano', '0.93561825124596610.600800434437057', 0),
(74, 'marlalo', '0.55730592930907230.8081354793547126', 0),
(76, 'das23aa', '0.89333036243355560.5871831476116192', 0),
(103, 'usuario', '0.89389832664507620.8342773180968048', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUser` int(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `secondName` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userPass` varchar(30) NOT NULL,
  `tipo` int(3) NOT NULL,
  `lt` varchar(120) NOT NULL,
  `lng` varchar(120) NOT NULL,
  `direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUser`, `name`, `secondName`, `email`, `telefono`, `userName`, `userPass`, `tipo`, `lt`, `lng`, `direccion`) VALUES
(1, 'Luciano', 'Opitz', 'pcflamaa12@gmail.com', '12343554', 'luciano', 'ȜɉǯȈȫõúǥȺȃ', 2, '-34.5691102', '-58.45748319999999', 'Av. Crámer & Virrey del Pino, Ciudad Autónoma de Buenos Aires, Argentina'),
(2, 'Marta', 'Lagamma', 'jcresp@gmail.com', '98123412', 'mbeatriz', 'ȜɉǯȈȫõúǥȺȃ', 4, '-34.5674465', '-58.4334527', 'Aviador Matienzo 1643, Ciudad Autónoma de Buenos Aires, Argentina'),
(3, 'Asda', 'Lalo', 'pcflamaa@gmail.com', '3243244312', 'usuario', 'ȜɉǯȈȫõúǪȫǯǥ', 1, '-34.5626423', '-58.4910126', 'Galván & Nuñez, Ciudad Autónoma de Buenos Aires, Argentina'),
(4, 'Luciano', 'Opitz', 'jcres3po44@gmail.com', '011304710021', 'luciano12', 'ȜɉǯȈȫõúǥȺȃ', 5, '-34.5549501', '-58.4850409', 'Tronador & Avenida Ricardo Balbin, Ciudad Autónoma de Buenos Aires, Argentina'),
(5, 'Criss', 'Liffu', 'jcrespa@gmail.com', '011304710022', 'crisliffu', 'ȜɉǯȈȫõúǥȺȃ', 3, '-34.5550534', '-58.4942223', 'Avenida Ricardo Balbin & Avenida Ruiz Huidobro, Ciudad Autónoma de Buenos Aires, Argentina'),
(6, 'Luciano', 'Opitz', 'jcrespaao@gmail.com', '0113047100299', 'fernanda', 'ȜɉǯȈȫõúǥȺȃ', 6, '-34.557636', '-58.4774367', 'Manuela Pedraza & Avenida Ricardo Balbin, Ciudad Autónoma de Buenos Aires, Argentina'),
(7, 'Luciano', 'Opitz', 'asdaaasdsa@gmail.com', '0113047100212', 'luciano1231', 'úúõĎȵɓõú', 1, '-34.56995089999999', '-58.5091194', 'Crisólogo Larralde & Avenida de los Constituyentes, Ciudad Autónoma de Buenos Aires, Argentina'),
(8, 'Leon', 'Chiappa', 'jcrespo44@gmail.com', '01130471002', 'lucho12', 'ȜɉǯȈȫõúǪȫǯǥúĄ', 1, '-34.5495237', '-58.4541553', 'Avenida del Libertador & Quesada, Ciudad Autónoma de Buenos Aires, Argentina'),
(9, 'Leandro', 'Chuserneger', 'mirtaestelarepp@gmail.com', '12341234', 'luciano42', 'úúõĎȵɓÿúĄú', 1, '-34.5580106', '-58.4866025', 'Pasaje Chajari & Donado, Ciudad Autónoma de Buenos Aires, Argentina'),
(10, 'Camila', 'Sanchez', 'opitz.luciano.et21.24@gmail.com', '87655678', 'camila12', 'ǯǥȡȍȜǥúú', 1, '-34.5520879', '-58.48079010000001', 'Avenida García del Río & Roque Pérez, Ciudad Autónoma de Buenos Aires, Argentina'),
(12, 'Rodrigo', 'Pettinato', 'jcrespo444@gmail.com', '12332112', 'rpetti', 'ȜɉǯȈȫõúǪȫǯǥĝĘ', 1, '-34.53945849999999', '-58.4756964', 'Avenida Cabildo & Av. Gral. Paz, Ciudad Autónoma de Buenos Aires, Argentina');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`idCarta`);

--
-- Indices de la tabla `carta_descriptions`
--
ALTER TABLE `carta_descriptions`
  ADD PRIMARY KEY (`idDescription`),
  ADD KEY `idTituloCarta` (`idTituloCarta`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idPlato` (`idPlato`);

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
  ADD PRIMARY KEY (`idPlato`),
  ADD KEY `idCarta` (`idCarta`);

--
-- Indices de la tabla `prensa`
--
ALTER TABLE `prensa`
  ADD PRIMARY KEY (`idPrensa`);

--
-- Indices de la tabla `titulo_cartas`
--
ALTER TABLE `titulo_cartas`
  ADD PRIMARY KEY (`idTituloCarta`);

--
-- Indices de la tabla `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`idToken`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carta`
--
ALTER TABLE `carta`
  MODIFY `idCarta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `carta_descriptions`
--
ALTER TABLE `carta_descriptions`
  MODIFY `idDescription` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `idOrder` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `idPlato` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT de la tabla `prensa`
--
ALTER TABLE `prensa`
  MODIFY `idPrensa` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `titulo_cartas`
--
ALTER TABLE `titulo_cartas`
  MODIFY `idTituloCarta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tokens`
--
ALTER TABLE `tokens`
  MODIFY `idToken` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUser` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carta_descriptions`
--
ALTER TABLE `carta_descriptions`
  ADD CONSTRAINT `carta_descriptions_ibfk_1` FOREIGN KEY (`idTituloCarta`) REFERENCES `titulo_cartas` (`idTituloCarta`);

--
-- Filtros para la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUser`),
  ADD CONSTRAINT `ordenes_ibfk_2` FOREIGN KEY (`idPlato`) REFERENCES `platos` (`idPlato`);

--
-- Filtros para la tabla `platos`
--
ALTER TABLE `platos`
  ADD CONSTRAINT `platos_ibfk_1` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idCarta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
