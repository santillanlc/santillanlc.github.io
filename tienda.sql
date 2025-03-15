-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2025 a las 01:59:20
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `producto_id`, `cantidad`, `usuario_id`) VALUES
(1, 1, 1, 1),
(2, 15, 7, 7),
(3, 4, 1, 2),
(4, 4, 2, 7),
(5, 14, 1, 9),
(6, 8, 2, 8),
(7, 1, 2, 2),
(8, 10, 5, 4),
(9, 18, 1, 2),
(10, 3, 2, 15),
(11, 21, 1, 2),
(12, 1, 5, 13),
(13, 4, 3, 2),
(14, 19, 3, 16),
(15, 10, 5, 2),
(16, 23, 1, 17),
(17, 17, 2, 2),
(18, 17, 3500, 3),
(19, 18, 30000, 19),
(20, 22, 2, 6),
(21, 22, 4, 2),
(22, 19, 30, 22),
(23, 24, 1, 2),
(24, 18, 5, 16),
(25, 15, 456, 8),
(26, 20, 14000, 9),
(27, 19, 7, 3),
(28, 25, 2, 2),
(29, 21, 12058, 6),
(30, 21, 1, 16),
(31, 29, 4, 2),
(32, 19, 2, 3),
(33, 10, 3, 13),
(34, 25, 4500, 1),
(35, 28, 1, 25),
(36, 15, 2, 20),
(39, 16, 5, 22),
(40, 11, 34, 11),
(41, 28, 2, 12),
(42, 31, 1, 2),
(43, 31, 45, 31),
(44, 30, 23, 17),
(45, 3, 6, 24),
(46, 32, 4566, 21),
(47, 24, 34, 32),
(48, 1, 6, 7),
(49, 36, 3, 29),
(50, 31, 8, 2),
(51, 29, 1, 31),
(52, 32, 5, 18),
(53, 41, 5, 32),
(54, 34, 6, 28),
(55, 41, 3, 20),
(56, 28, 6, 25),
(57, 1, 7, 19),
(58, 29, 9, 16),
(59, 30, 7, 22),
(60, 16, 9, 20),
(61, 42, 1, 2),
(62, 35, 5, 31),
(63, 33, 7, 29),
(64, 19, 8, 37),
(65, 40, 7, 34),
(66, 42, 7, 33),
(67, 46, 6, 36),
(68, 20, 7, 38),
(69, 15, 65, 37),
(70, 44, 4, 36),
(71, 2, 4, 15),
(72, 41, 1, 15),
(73, 15, 3, 9),
(74, 2, 12, 24),
(75, 52, 34, 17),
(76, 1, 345, 21),
(77, 23, 45, 6),
(78, 45, 3, 23),
(79, 15, 3, 29),
(80, 41, 1, 33),
(81, 60, 5, 34),
(82, 51, 1, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripción` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripción`) VALUES
(1, 'tecnologia', 'todos los productos electronicos'),
(2, 'Moda', 'Ropa para damas y caballeros.\r\n'),
(3, 'Electronicos', 'Apartado Para Seleccionar los apartatos electronicos o de circuitos'),
(4, 'Bebes', 'Ropa, productos y todo lo relacionado al cuidado de los bebes'),
(5, 'Mascotas y accesorios ', 'Los accesorios para mascotas son artículos que ayudan a que los animales estén cómodos y saludables.'),
(6, 'Cuidado personal', 'Mantener el cuerpo limpio y sano. '),
(7, 'Juguetes y videojuegos', ' También puede vender artículos de juguetes como accesorios, electrónica, libros.'),
(8, 'Accesorios de viaje ', 'Maletas, bolsas, comestiquera, bolsas de mano, maleta de mano, porta pasaporte y accesorios '),
(12, 'zapatos', 'zapakids');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `id` int(11) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `num` int(11) NOT NULL,
  `colonia` varchar(120) NOT NULL,
  `cp` int(11) NOT NULL,
  `estado` varchar(150) NOT NULL,
  `ciudad` varchar(150) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`id`, `calle`, `num`, `colonia`, `cp`, `estado`, `ciudad`, `usuario_id`) VALUES
(0, 'belloanillo', 8520, 'lunavision', 45698, 'mochis', 'churritomejiquillo', 40),
(1, 'Vasco de Quiroga', 4494, 'La conquista', 80054, 'SINALOA', 'CULIACAN', 1),
(2, 'Mollete', 121, 'Yupilandia', 66608, 'CDMX', 'Peru', 2),
(3, 'Torta de huevo', 2347, 'Pimienta Paprika', 80619, 'Desayunopolis', 'Merienda', 4),
(4, 'callesuperreal', 9000, 'buenastardes', 50078, 'Sinaloa', 'Culiacan', 5),
(5, 'callehyperrealista', 8050, 'cocosaludo', 80020, 'Sinaloa', 'Culiacan', 9),
(6, 'callenacional', 7045, 'bellanacion', 80026, 'Bogota', 'CityPolis', 19),
(7, 'lastrico', 1155, 'Deemal', 29005, 'chromakopia', 'Tresingeishon', 6),
(8, 'Horizontes', 1231, 'Del valle', 23800, 'Valle verde', 'san paulo', 21),
(9, 'churritosnacion', 5012, 'Epura', 90050, 'mochis', 'huevoshermanos', 20),
(10, 'san marcos', 4199, 'santa fe', 80029, 'sinaloa', 'Culiacan', 18),
(11, 'atardecer', 4772, 'acueducto', 80058, 'sinaloa', 'culiacan', 7),
(12, 'Lopez Mateos', 452, 'Ojo de agua', 63023, 'Oaxaca', 'Juarez', 3),
(13, 'Dangzhou', 1233, 'Labrang', 1235, 'Baja California Norte', 'Mexicali', 8),
(14, 'zapote', 5928, 'jaboncillo', 80058, 'sinaloa', 'culiacan', 17),
(15, 'zapote', 5200, 'jaboncillo', 80058, 'sinaloa', 'culiacan', 29),
(16, 'pino real', 5390, 'villas del cedro', 80058, 'sianloa', 'culiacan', 34),
(17, 'pino real', 5294, 'villas del cedro', 80058, 'sinaloa', 'culiacan', 39),
(18, 'Paloma plateada', 4455, 'Platina', 80612, 'Mineraly', 'Poloonia', 3),
(19, 'Johnathan Porkus', 7776, 'Tocineta', 889905, 'Porcinuxtla', 'Ciudad pork', 9),
(20, 'mina del realito', 529, 'huizaches', 80199, 'sinaloa', 'culiacan', 22),
(21, 'mina del realito', 645, 'huizaches', 80199, 'huizaches', 'culiacan', 41),
(22, 'tutupaya', 5963, 'igualitario', 45785, 'mejiquillo', 'polivares', 8),
(23, 'Salty Springs', 977, 'Bropisos', 80081, 'Pisos Picados', 'Fortcity', 34),
(24, 'Oscar Mayer', 1123, 'George Floyd', 98008, 'Califoria', 'Estados Unidos', 16),
(25, 'horaspalillo', 6935, 'saludoskilos', 78951, 'mochis', 'gorda', 31),
(26, 'palestina', 9635, 'peresnapolitano', 45787, 'paresdesconocido', 'localistaminato', 1),
(27, 'gral.angelmartinez', 3044, '21 de marzo', 80199, 'sinaloa', 'culiacan', 49),
(28, 'gral.angel martinez', 2999, '21 de marzo', 80199, 'sinaloa', 'culiacan', 42),
(29, 'Honkas', 3453, 'Ponkas', 80034, 'Jolkas', 'Sonkas', 7),
(30, 'Carmen san diego', 4564, 'Papayon', 80084, 'Johnson', 'Ciudad comercio', 50),
(31, 'juarezsasueta', 3520, 'igualitamos', 78421, 'mezopotamia', 'kilosasus', 50),
(32, 'lopezjuaez', 1205, 'garcosalus', 45872, 'mejiquillo', 'salopaez', 25),
(33, 'Samuel de luque', 777, 'Guillermo', 7777, 'Nikolands', 'Nikito', 4),
(34, 'Gartic', 657, 'Poland', 3254, 'Papots', 'Stinky Pepsi', 29),
(35, 'Vegetta', 24547, 'Bentec', 3234, 'Wigetta', 'Vegetius', 33),
(36, 'Willy', 12543, 'Rex', 1343, 'Papu estado', 'Jas', 30),
(37, 'Xacalaca bum bum', 2343, 'Horuson', 2323, 'Biweron', 'Byeron', 14),
(38, 'Master Chef', 2435, 'Micro', 323, 'Halo', 'Rodriguez', 23),
(39, 'Winter is coming', 666, 'Fusion', 6666, 'Exito', 'Rochin City', 30),
(40, 'Contaros', 346546, 'Historia', 54654, 'Chico', 'Pato', 34),
(41, 'diegojan', 3978, 'perezosuna', 87235, 'mititu', 'kuyutoztica', 16),
(42, 'horusañillo', 85478, 'pakochitza', 62587, 'michoacan', 'palitoscuyo', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_deseos`
--

CREATE TABLE `lista_deseos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `lista_deseos`
--

INSERT INTO `lista_deseos` (`id`, `usuario_id`, `producto_id`) VALUES
(1, 1, 1),
(2, 4, 4),
(3, 7, 2),
(4, 13, 2),
(5, 20, 4),
(6, 22, 19),
(7, 3, 44),
(8, 18, 53),
(9, 18, 2),
(10, 8, 8),
(11, 28, 1),
(12, 8, 46),
(13, 11, 56),
(14, 1, 49),
(15, 6, 19),
(16, 33, 24),
(17, 31, 16),
(18, 34, 5),
(19, 41, 11),
(20, 27, 44),
(21, 9, 66),
(22, 23, 23),
(23, 15, 70),
(24, 32, 41),
(25, 30, 40),
(26, 25, 42),
(27, 47, 22),
(28, 19, 45),
(29, 22, 67),
(30, 48, 14),
(31, 18, 61),
(32, 39, 63),
(33, 15, 3),
(34, 29, 25),
(35, 44, 71),
(36, 5, 67),
(37, 16, 60),
(38, 7, 59),
(39, 39, 56),
(40, 1, 15),
(41, 2, 65),
(42, 33, 41),
(43, 19, 75),
(44, 21, 46),
(45, 3, 37),
(46, 12, 5),
(47, 17, 41),
(48, 24, 42),
(49, 8, 69),
(50, 45, 49),
(51, 38, 76),
(52, 4, 64),
(53, 9, 23),
(54, 29, 54),
(55, 14, 47),
(56, 6, 80),
(57, 7, 68),
(58, 30, 22),
(59, 7, 32),
(60, 49, 34),
(61, 36, 41),
(62, 37, 50),
(63, 42, 3),
(64, 41, 88),
(65, 21, 75),
(66, 39, 58),
(67, 24, 5),
(68, 44, 31),
(69, 50, 83),
(70, 27, 35),
(71, 25, 50),
(72, 34, 85),
(73, 37, 34),
(74, 36, 29),
(75, 30, 48),
(76, 11, 64),
(77, 6, 85),
(78, 12, 84),
(79, 11, 15),
(80, 14, 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `nombre`, `precio`) VALUES
(1, 'gratis', 0),
(4, 'familiar', 250),
(5, 'Estudiante', 50),
(6, 'Amigos', 150),
(7, 'VIP', 1000),
(8, 'Parejas', 100),
(9, 'Embarazadas', 60),
(10, 'individual ', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`id`, `nombre`, `tipo`) VALUES
(1, 'tarjeta', 'debito'),
(2, 'Paypal', 'monedero electronico'),
(3, 'Mercado pago', 'monedero electronico'),
(4, 'Tarjeta', 'credito'),
(6, 'OXXO', 'Deposito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `precio` double NOT NULL,
  `cateroria_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cateroria_id`, `cantidad`) VALUES
(1, 'celular', 'celular touch con camara ', 1200, 1, 1),
(2, 'Computadora Personal con buenos componentes', 'tiene muy buen precio accecible y te ayudara en tus tareas o juegos ', 25000, 3, 12),
(3, 'papik', 'la persona que mas quieren', 333, 2, 1000),
(4, 'Traje de baño unisex', 'Negro, talla M y super combinable y unisex', 666, 2, 69),
(5, 'Peluche de Vaporeon', '1.6 Metros, genera calor, buen compañero para tener unos dulces sueños', 1699.99, 4, 1),
(8, 'Loki', 'perro de payan', 2500, 4, 699),
(10, 'sonaja', 'juguete de bebes', 50, 4, 1),
(11, 'carritos', 'carritos de juguete', 25, 4, 1),
(14, 'Xbox Series X', 'consola de videojuegos', 9000, 3, 50),
(15, 'Dispositivo luminoso para dormir especializado en abuelas.', 'Dale a tu abuela el mejor regalo para satisfacerse en las noches antes y durante el sueño.', 2400, 3, 1),
(16, 'computadora CC2', 'no sirve, barata', 500, 3, 1),
(17, 'Bicicleta electrica', 'Bicicleta r29 con 2 llantas y frenos de discos', 8000, 3, 10),
(18, 'Laptop Gamer', 'Laptop asus gaming tuf a15', 25000, 1, 15),
(19, 'biberon', '10ml\r\n', 250, 4, 5),
(20, 'Playstation 5', 'Consola de videojuegos', 12000, 3, 12),
(21, 'Nintendo Switch', 'Consola de Nintendo', 2300, 3, 55),
(22, 'Peluche Skibidi Toilet', 'skibidi dop dop yes yes', 200, 7, 100),
(23, 'Play 5 pro', 'Play 5 pro de 1tb de espacio', 13000, 1, 2),
(24, 'Monitor', 'Monitor asus 320hz', 8000, 1, 6),
(25, 'Tageta grafica gtx 1660 ti EVO', 'corre bien el fortnite', 5000, 3, 1),
(28, 'Enchufe', 'para conectar dispositivos', 200, 1, 120),
(29, 'Teclado 60%', 'teclado 60% especial para el gaming', 1500, 1, 60),
(30, 'Mouse gamer', 'Mouse gamer logitech superlight g pro', 3000, 1, 4),
(31, 'Hueso de hule', 'juguete de perros', 150, 5, 1237),
(32, 'Peluche de eso tilin', 'eso tilin', 200, 7, 50),
(33, 'peluche de pikachu', 'pikachu', 250, 4, 3186),
(34, 'Peluche de Ete sech', 'ete sech', 200, 7, 50),
(35, 'teclado logitech cc1', 'tiene polvo, pero sirve', 500, 3, 1),
(36, 'mouse dell cc1', 'se traba aveces', 100, 3, 1),
(37, 'Peluche de El pepe', 'el pepe', 200, 7, 50),
(40, 'Rx 6650xt', 'Rx 6650xt de 8gb de vram', 5000, 1, 20),
(41, 'ryzen 5600g', 'ryzen 5600g 3.9GHz', 2500, 1, 60),
(42, 'Shampoo Pantene', 'shampoo', 80, 6, 50),
(43, 'Xbox series S', 'consola de videojuegos', 6, 3, 40967),
(44, 'Jabonzote', 'jabon', 20, 6, 50),
(45, 'Escritorio', 'Escritoria en forma de L', 7000, 1, 30),
(46, 'Minisplit', 'Minisplit de 2 toneladas', 20000, 3, 7),
(47, 'tatum 3', 'tenis de basquetbol', 2999, 12, 3),
(48, 'Peluche del Niño del oxxo', 'mmmmmmmh', 200, 7, 50),
(49, 'nike air jordan 4 ', 'nike air jordan 4 retro millitary black', 12000, 12, 1),
(50, 'zion 4 ', 'tenis de basquetbol ', 3399, 12, 2),
(51, 'nike air jordan 4 ', 'nike air jordan 4 retro se craft photon dust', 2300, 12, 1),
(52, 'Lebron 20', 'tenis de baloncesto', 3000, 12, 50),
(53, 'almohada de cuello', 'para dormir', 100, 8, 5497),
(54, 'Tenis Ja', 'tenis ja morant', 1700, 12, 50),
(55, 'luka 3', 'tenis de basquetbol', 3099, 12, 6),
(56, 'airpods pro', 'airpods rp 2nd gn', 3500, 1, 30),
(57, 'jordan 1', 'a la moda', 5000, 2, 15),
(58, 'Tenis UA Phantom 4 Reflect Unisex', 'Tenis Under Armour', 2999, 12, 39743074),
(59, 'cargador', 'para enchufar dispositvos moviles', 1000, 3, 30),
(60, 'Lebron NXXT Genisus', 'tenis de basquetbol', 3799, 12, 1),
(61, 'adidas Campus 00s\r\n', 'adidas Campus 00s negros con blanco', 1500, 12, 1),
(62, 'Funda de viaje para sombreros', 'sirve para gorras', 599, 8, 2),
(63, 'Comida para gato', 'comida', 250, 5, 50),
(64, 'Nike Total 90 3 SP', 'Nike Total 90 3 SP negros', 2000, 12, 1),
(65, 'Hidrolavadora Electrica', 'Pistola Para Lavado Autos Portatil', 900, 8, 30),
(66, 'Maleta', 'maletas perry ellis', 1287.99, 8, 8),
(67, 'Crema para la cara', 'crema', 89, 6, 95723),
(68, 'Super Mario Oddysey', 'juego de mario', 1, 7, 32470),
(69, 'Traje del Niño del Oxxo para perro', 'para que tu perro sea el niño del oxxo', 100, 5, 50),
(70, 'Fear of God Essentials Hoodie', 'Fear of God Essentials Hoodie gris', 1000, 2, 1),
(71, 'adidas Yeezy Foam RNR\r\n', 'adidas Yeezy Foam RNR negra', 3000, 12, 1),
(72, 'Carreola', 'carro de bebe', 300, 4, 320975),
(73, 'Almohada de cuello ', 'almohada para cuello sirve para dormir', 299, 8, 6),
(74, 'Lavadora', 'Lavadora Mabe 20 Kg Blanca', 9, 3, 1),
(75, 'Ventilador', 'Ventilador Atvio de Piso 20 Pulgadas High Velocity Negro', 699, 3, 1),
(76, 'OFF-WHITE x Puma AC Milan Replica Jersey', 'OFF-WHITE x Puma AC Milan Replica Jersey negro con verde', 4000, 2, 1),
(77, 'Nike Air Force 1 Low\r\n', 'Drake NOCTA Certified Lover Boy Pink Foam\r\n\r\n', 3800, 12, 1),
(78, 'ventilador', 'Ventilador Pedestal Piso Pared 3en1 Con 3 Aspas 18 Pulgadas', 600, 3, 60),
(79, 'lavdora', 'automática Hisense PureJet inverter hasta 15kg 127V color plata\r\n', 10000, 3, 15),
(80, 'secadora', 'Secadora Centrífuga Koblenz Sck55 5.5 Kg Blanco 127V', 3000, 3, 10),
(81, 'batidora', 'Batidora De Inmersión Lagom 100w Licuadoras De Mano 7 Velocidades Eléctrico Cocina Y 2 Palo Para Amasar Accesorios Preparación De Alimentos Color Blanco', 300, 3, 7),
(82, 'Perfume', 'Perfume Nautica Voyage Eau de Toilette 100 ml', 279, 6, 1),
(83, 'Colchon', 'Colchón Matrimonial Master Master más 2 almohadas Core', 2, 6, 1),
(84, 'Almohada tamaño real de Saiki K.', 'te lee los sueños mientras duermes, increible almohada para acompañarte en tus peores momentos', 299, 2, 66),
(85, 'Condones Prudence Edicion VeteALaVersh sabor Chicle-paquete 12 cajas con 5 condones cada una', 'Información de seguridad\r\nNo usar lubricantes a base de aceites\r\n\r\nIngredientes\r\nLátex de hule natural, Almidón de Maíz, Aceite de Silicón, Educolorante, Colorante, Saborizante.\r\n\r\nInstrucciones\r\nVerificar fecha de caducidad, abrir empaque de forma cuidadosa, Colocar el condón en el pene erecto y de', 657.62, 6, 60),
(86, 'super peine 3000 ', 'para tu pelo feo ', 218, 6, 20),
(87, '	\r\nPaco Rabanne Invictus ', 'perfume', 2, 6, 3054),
(88, 'Lego', 'Set LEGO City Garaje de F1 y Auto Mercedes-AMG 6 Alpine 60444', 1, 7, 1),
(89, 'Freidora de aire', 'Horno Freidora de Aire Gourmia Digital 12.6 Litros', 1, 3, 1),
(90, 'Tablet samsung', 'tablet samsung 128gb', 2500, 1, 20),
(91, 'iphone 15', 'iphone 15 1tb color negro', 18000, 1, 100),
(92, 'funda transparente', 'funda para iphone 15', 250, 2, 20),
(93, 'laptop hp', 'laptop hp 120gb', 5000, 1, 30),
(94, 'llantas', 'Paquete De 2 Llantas 175/70r13 Tornel Turbo 82t', 1, 1, 1),
(95, 'Pelicula instantanea', 'Película instantánea FUJIFILM Instax Mini, Contiene 20 exposiciones (dos paquetes de 10 exposiciones cada uno)', 459, 3, 1),
(97, 'TV', 'TV Hisense 65 pulgadas 4K Ultra HD Smart TV LED 65A6NV', 8, 3, 1),
(98, 'Caminadora', 'Caminadora Plegable Costway 2 en 1 Eléctrica Portátil 2,25 HP 12 Km/h Con Altavoz Bluetooth Mando Pantalla LED App Control Negro', 12, 3, 1),
(99, 'minisplit mirage', 'minisplit 1 tonelada', 10000, 3, 40),
(100, 'refrigerador', 'refrigerador mabe', 5000, 3, 50),
(101, 'Tablet', 'Tablet Samsung Tab A9+ SM-X210NZAEMXO Color Gris 8 RAM 128GB Almacenamiento', 3, 3, 1),
(102, 'Refrigerador', 'Refrigerador Mabe 10 Pies RMA250PVMRM0 Inox', 7, 3, 1),
(103, 'LABUBU', 'Diseño único y moderno: Estos \"Llaveros Tasty Macaron\" presentan un diseño único que incorpora elementos de la cultura Kawaii muy populares, especialmente entre los jóvenes y los aficionados a las tendencias. Cada llavero está hecho con colores vivos y formas distintivas, lo que permite a los usuari', 239, 7, 500),
(104, 'Xbox Gamepass Ultimate Código Digital 1 Mes - Xbox One & Series XS [Código por mail]', 'Acerca de este artículo\r\nObtén acceso a más de 100 juegos de alta calidad con títulos que se agregan constantemente.\r\nIncluye membresía Gold para jugar en línea.\r\nHabilidad para descargar y jugar los juegos incluidos en el catálogo Game Pass desde tu: Consola Xbox, Computadora PC (Windows 10).\r\nTítu', 299, 7, 1000),
(105, 'iphone 16', 'iphone 16 1tb', 23000, 1, 50),
(106, 'Macbook', 'macbook 540gb', 12000, 1, 50),
(107, 'dispensador de agua', 'Dispensador De Agua Fría Y Caliente Para Oficina', 1000, 3, 10),
(108, 'lego de auto', 'lego de gtr r35', 4500, 7, 35),
(109, 'mochila nike ', 'mochila nike color negra', 2000, 2, 20),
(110, 'reloj invictus', 'reloj invictus color azul', 4000, 2, 40),
(111, 'Nikon D3200 24,2 MP CMOS Digital SLR con 18 – 55 mm F/3.5 – 5.6 AF-S DX NIKKOR Lente de Zoom (reacondicionado Certificado)', 'Este producto reacondicionado certificado es reacondicionado por el fabricante, con o sin desgaste, y incluye todos los accesorios, además de una garantía de 90 días\r\nSensor de 24.2 Mp CMOS de formato DX, visualización LCD de visualización, trasera (921000)\r\nIII procesamiento de imágenes EXPEED\r\nAmp', 8, 1, 235),
(112, 'BESTON - Paquete de 2 baterías EN-EL14 / EN-EL14a y cargador USB rápido para Nikon D3100 D3200 D3300 D3400 D3500 D5100 D5200 D5300 D5500 D5600 DF Cool', 'Potente y seguro: las baterías tienen una capacidad real de 1100 mAh, cada batería ofrece hasta 1700 disparos, 5 capas integradas de protección IC (sobrecarga, sobredescarga, cortocircuito, alta temperatura y protección contra sobretensiones)\r\nMúltiples formas de carga: la entrada micro-USB común ha', 653, 3, 1000),
(113, 'Hidrolavadora Electrica Pistola Para Lavado Autos Portatil', 'HIRLAN es una marca local mexicana y la primera pistola de agua de alta presión HIRLAN se creó en 2023. Era potente y estaba fabricada con materiales exquisitos. Debido a la pistola de agua de alta presión HIRLAN lavado de coches limpios, conveniencia de riego, estableció una buena reputación de mar', 322, 3, 1234),
(114, 'Pistola De Lavado De Autos Portátil De Alta Presión Eléctric\r\nAgregar a favoritos\r\n$\r\n1,004\r\n,\r\n50', 'Ajuste: Compatible con baterías de iones de litio de la serie 18V, para BL1860 BL1850 BL1840 BL1830 BL1815.\r\n\r\nLimpieza potente: Potente limpiador a presión inalámbrico utiliza un motor de cobre puro de alto rendimiento de 250W, y la presión máxima de agua del limpiador de alta presión es de 5.0Mpa,', 1004, 3, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `telefono`, `fecha_nacimiento`, `genero`) VALUES
(1, 'Hector', 'Ortiz', 'Hector.ortiz23@cetis107.edu.mx', '6673583222', '2008-08-23', 1),
(2, 'Sergio Braulio', 'Martinez Felix', 'sergio.braulio23@cetis107.edu.mx', '6672075259', '2008-08-14', 1),
(3, 'Bayron', 'Estrada', 'bayron.estrada23@cetis107.edu.mx', '6674939801', '2008-08-13', 1),
(4, 'Jonh', 'Pork ', 'jonhpork@gmail.com', '+1 844 244 2779', '1968-09-02', 1),
(5, 'Rubi Esmeralda', 'Zepeda Garcia', 'rubi.zepeda23@cetis107.edu.mx', '6673940804', '2007-09-29', 0),
(6, 'Diego Joan', 'Domínguez Lizárraga', 'diego.dominguez23@cetis107.edu.mx', '667 141 2966', '2008-11-10', 1),
(7, 'Uriel', 'Rodriguez Rojo', 'uriel.rodriguez23@cetis107.edu.mx', '6674939801', '2008-08-05', 1),
(8, 'Cesar Alexis', 'Lopez Molina', 'cesar.lopez23@cetis107.edu.mx', '6673084808', '2008-07-02', 1),
(9, 'Ryhanna Patricia', 'Ramírez Montiel', 'ryhanna.ramirez66@cetis107.edu.x', '6672326904', '2008-05-31', 0),
(11, 'Angel Gibran', 'Loaiza Garcia', 'angel.loaiza23@cetis107.edu.mx', '6671451436', '2008-08-23', 1),
(12, 'Juan Alberto', 'Trejo Alvarado', 'juan.trejo23@cetis107.edu.mx', '6674911079', '2008-01-05', 1),
(13, 'Hugo', 'gastelum', 'Hugo.gastelum23cetis107.edu.mx', '667 186 3234', '2021-03-11', 0),
(14, 'thiago', 'pepe', 'thiago.pepe23@cetis107.edu.mx', '667 325 6346', '2007-06-12', 0),
(15, 'Santiago', 'López Aispuro', 'santiago.lopez23@cetis107.edu.mx', '667 678 7845', '2008-04-20', 1),
(16, 'Paolo Nicholas', 'Valdez Bernal', 'paolo.valdez23@cetis107.edu.mx', '667 879 0280', '2008-10-30', 1),
(17, 'Liam', 'Hernesto', 'liam.hernesto23@cetis107.edu.mx', '667 343 5232', '2012-04-11', 0),
(18, 'Adela', 'Artis', 'Adela.artis23@cetis107.edu.mx', '667 100 2109', '2001-06-28', 1),
(19, 'Maximo', 'Coronel', 'maximo.coronel23@cetis107.edu.mx', '6673819305', '2008-04-12', 1),
(20, 'Jan Carlo', 'Martínez Quintero', 'jan.martinez@cetis107.edu.mx', '667 786 0432', '2008-05-30', 0),
(21, 'Frenando Afondo', 'Magikelnano', 'hola232345@gamil.com.arg', '6674721031', '1979-11-02', 1),
(22, 'Ana Sofia', 'Delgado German', 'ana.delgado23@cetis107.edu.mx', '6674766542', '2008-08-20', 0),
(23, 'Luis Angel', 'Perez Lozano', 'luis.perez23@cetis107.edu.mx', '6674569821', '2008-05-08', 1),
(24, 'Luis Angel', 'Moya Preciado', 'luis.moya23@cetis107.edu.mx', '6672564854', '2008-07-03', 1),
(25, 'Maria Guadalupe', 'Ruelas Astorga', 'maria.ruelas23@cetis107.edu.mx', '6674156985', '1970-05-08', 0),
(26, 'Paula', 'matiz', 'Paula.matiz23@cetis107.edu.mx', '667 343 5239', '2003-03-11', 1),
(27, 'Julia', 'Carola', 'julia.carola23@cetis107.edu.mx', '667 129 2283', '2001-01-08', 0),
(28, 'alba', 'barcela', 'alba.barcela23@cetis107.edu.mx', '667 690 8456', '2008-09-11', 1),
(29, 'Rosselyn', 'Esparza Uriarte', 'rosselyn.esparza23@cetis107.edu.mx', '6674093254', '2008-12-20', 0),
(30, 'rodrigo', 'meza', 'rodrigo.meza23@cetis107.edu.mx', '6676826999', '2025-06-16', 1),
(31, 'eduardo', 'restrepo', 'eduardo.restrepo23@cetis107.edu.mx', '6671655468', '2008-03-25', 1),
(32, 'lucia', 'angulo', 'lucia.angulo23@cetis107.edu.mx', '667 620 8124', '2003-02-17', 1),
(33, 'Ramon Esteban', 'Valenzuela Zavala', 'ramon.valenzuela23@cetis107.edu.mx', '6674511874', '2008-09-10', 1),
(34, 'Frida Sofia', 'Sanchez Valenzuela', 'frida.sanchez23@cetis107.edu.mx', '6671522894', '2008-04-07', 0),
(36, 'Dylan', 'martinez', 'Dylan.martinez', '667 903 4905', '2008-02-06', 0),
(37, 'carla', 'valdez', 'carla.valdez23@cetis107.edu.mx', '667 235 9823', '2005-08-27', 1),
(38, 'Jan Carlo', 'Martínez Quintero', 'jan.martinez@cetis107.edu.mx', '667 786 0432', '2008-05-30', 0),
(39, 'Francisco Jose ', 'Ronchin Gonzales', 'francisco.ronchin', '667 567 4321', '1966-06-06', 1),
(40, 'Angel Guillermo', 'Wong Valenzuela', 'angel.wong23@cetis107.edu.mx', '6671528545', '2008-05-11', 1),
(41, 'Dilan Miguel', 'Valenzuela Rivera', 'dilan.valenzuela23@cetis107.edu.mx', '6675844585', '2008-11-08', 1),
(42, 'papik heriberto', 'millan paredes', 'papik.heriberto@detis107.edu.mx', '6674894655', '1975-09-10', 1),
(43, 'cesar', 'alexis', 'cesar.alexis23@cetis107.edu.mx', '66716987768', '2008-04-25', 1),
(44, 'vicente', 'carreola', 'vicente.carreola23@cetis107.edu.mx', '6679849842', '2008-03-11', 1),
(45, 'manuel', 'estrada camacho', 'manuel.estrada23@cetis107.edu.mx', '6673248556', '2008-09-11', 1),
(46, 'hernesto', 'cruz', 'hernesto.cruz@cetis107.edu.mx', '6678498496', '2008-02-16', 1),
(47, 'cristobal', 'serrano', 'cristobal.serrano24@cetis107.edu.mx', '6679842354', '2009-03-19', 1),
(48, 'manolo', 'carrillo', 'manolo.carrillo23@cetis107.edu.mx', '6678448451', '2008-06-17', 1),
(49, 'alfonso', 'schnitzel', 'alfonso.schnitzel23@cetis107.edu.mx', '6678984210', '2025-07-09', 1),
(50, 'gibran schrodinger', 'estrada camacho', 'gibran.estrada23@cetis107.edu.mx', '6674890000', '2008-10-08', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_membresias`
--

CREATE TABLE `usuario_membresias` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `membresias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario_membresias`
--

INSERT INTO `usuario_membresias` (`id`, `usuario_id`, `membresias_id`) VALUES
(1, 1, 1),
(2, 4, 7),
(3, 8, 9),
(4, 5, 7),
(5, 6, 8),
(6, 3, 10),
(7, 9, 5),
(8, 13, 9),
(9, 12, 8),
(10, 14, 5),
(11, 3, 5),
(12, 8, 1),
(13, 5, 4),
(14, 6, 10),
(15, 11, 9),
(16, 12, 4),
(17, 22, 7),
(18, 21, 9),
(19, 20, 1),
(25, 19, 7),
(26, 7, 10),
(27, 28, 8),
(38, 27, 10),
(39, 31, 10),
(40, 18, 9),
(41, 14, 4),
(42, 15, 6),
(43, 16, 7),
(44, 17, 8),
(45, 18, 10),
(46, 28, 6),
(47, 31, 1),
(48, 39, 7),
(49, 40, 1),
(50, 36, 5),
(51, 41, 5),
(52, 33, 6),
(53, 24, 9),
(54, 25, 8),
(55, 26, 8),
(56, 27, 7),
(57, 28, 6),
(58, 29, 1),
(59, 30, 1),
(60, 31, 5),
(61, 38, 7),
(62, 38, 4),
(63, 40, 10),
(64, 48, 7),
(65, 42, 7),
(66, 43, 7),
(67, 44, 8),
(68, 45, 8),
(69, 46, 1),
(70, 47, 9),
(71, 48, 5),
(72, 49, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `carrito_id` int(11) NOT NULL,
  `metodo_pago_id` int(11) NOT NULL,
  `total` double NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `direccion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `carrito_id`, `metodo_pago_id`, `total`, `estado`, `direccion_id`) VALUES
(1, 1, 1, 1200, 1, 1),
(2, 1, 1, 1, 88, 1),
(3, 1, 6, 3, 1, 2),
(4, 2, 2, 999, 1, 2),
(5, 1, 6, 1200, 0, 2),
(6, 7, 3, 7, 1, 1),
(7, 2, 4, 14, 0, 3),
(8, 6, 6, 8, 1, 3),
(9, 5, 6, 2455, 34, 1),
(10, 3, 4, 2453, 45, 2),
(11, 6, 6, 14, 1, 2),
(12, 5, 2, 12, 1, 2),
(13, 11, 6, 1999999, 1, 2),
(14, 12, 3, 1200000, 9, 1),
(15, 14, 6, 666, 1, 7),
(16, 19, 6, 56666, 65, 6),
(17, 22, 2, 99999999, 65, 4),
(18, 10, 1, 32235, 1, 1),
(19, 9, 6, 200, 1, 2),
(20, 35, 1, 45, 62, 6),
(21, 34, 6, 5865, 45, 8),
(22, 40, 6, 56, 15, 3),
(23, 17, 2, 655555, 74, 3),
(24, 3, 6, 1500, 69, 3),
(25, 13, 3, 1, 17, 4),
(26, 54, 6, 87878, 8, 3),
(27, 54, 6, 655555, 65, 5),
(28, 47, 6, 1200, 9, 2),
(29, 55, 2, 5468755, 62, 15),
(30, 63, 6, 666, 85, 2),
(31, 49, 6, 838838, 1, 8),
(32, 4, 2, 71, 12, 11),
(33, 8, 6, 11, 9, 10),
(34, 68, 1, 838838838883, 1, 9),
(35, 18, 4, 11111, 7, 3),
(36, 1, 3, 555, 48, 10),
(37, 15, 2, 54744, 14, 17),
(38, 17, 6, 5455555, 44, 17),
(39, 15, 3, 774, 85, 1),
(40, 71, 4, 11111, 6, 16),
(41, 78, 6, 655, 24, 16),
(42, 75, 3, 546, 85, 2),
(43, 66, 6, 666, 6, 16),
(44, 78, 4, 123, 1, 19),
(45, 12, 1, 21433, 21, 20),
(46, 14, 6, 22322, 14, 17);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cateroria_id` (`cateroria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_membresias`
--
ALTER TABLE `usuario_membresias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `membresias_id` (`membresias_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrito_id` (`carrito_id`),
  ADD KEY `metodo_pago_id` (`metodo_pago_id`),
  ADD KEY `direccion_id` (`direccion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7909;

--
-- AUTO_INCREMENT de la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usuario_membresias`
--
ALTER TABLE `usuario_membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD CONSTRAINT `lista_deseos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `lista_deseos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`cateroria_id`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `usuario_membresias`
--
ALTER TABLE `usuario_membresias`
  ADD CONSTRAINT `usuario_membresias_ibfk_1` FOREIGN KEY (`membresias_id`) REFERENCES `membresias` (`id`),
  ADD CONSTRAINT `usuario_membresias_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`carrito_id`) REFERENCES `carrito` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`id`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`metodo_pago_id`) REFERENCES `metodo_pago` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
