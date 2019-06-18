-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2019 a las 01:19:35
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `extension`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistente`
--

CREATE TABLE `asistente` (
  `dni` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `resumen` text NOT NULL,
  `eje` text NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `cuit` text NOT NULL,
  `nacimiento` date NOT NULL,
  `direccion` text NOT NULL,
  `telefono` text NOT NULL,
  `mail` text NOT NULL,
  `pais` text NOT NULL,
  `provincia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asistente`
--

INSERT INTO `asistente` (`dni`, `titulo`, `resumen`, `eje`, `nombres`, `apellidos`, `cuit`, `nacimiento`, `direccion`, `telefono`, `mail`, `pais`, `provincia`) VALUES
(11111111, 'asdasdsd', 'asdfsdf', 'dasdf', 'Ruben', 'Caceres', '22222222222', '2019-06-14', 'Manzana 57 Parcela 3 Barrio Rucci', '3644503954', 'rubens_uncaus@hotmail.com', 'Argentina', 'Chaco'),
(32941523, 'asdasdsd', ' asdad', 'dasdf', '', '', '20329415237', '2019-06-04', 'Manzana 57 Parcela 3 Barrio Rucci', '3644503954', '', 'Argentina', 'Chaco'),
(33333333, 'asdf', 'asd', 'sadf', 'Ruben', 'Caceres', '33333333333', '2019-06-07', 'Manzana 57 Parcela 3 Barrio Rucci', '3644503954', 'rubens_uncaus@hotmail.com', 'Argentina', 'Chaco'),
(33941523, 'asdasdsd', ' asd', 'asd', '', '', '232323232323', '2019-06-29', 'Manzana 57 Parcela 3 Barrio Rucci', '3644503954', '', 'Argentina', 'Chaco'),
(43434322, 'asdasdsd', 'asdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sadasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sadasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sadasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sadasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sadasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nv\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nv\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nv\r\nv\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nv\r\nv\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nv\r\nv\r\nv\r\n\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\nasdsadadsad a sd asd asd asd  asd asd as d asd as dsa d sad\r\n', 'dasdf', 'Ruben', 'Caceres', '34322333333', '2019-06-07', 'Manzana 57 Parcela 3 Barrio Rucci', '3644503954', 'rubens_uncaus@hotmail.com', 'Argentina', 'Chaco'),
(67676767, 'asdasdsd', ' jhjkhjhkj', 'asd', 'Ruben', 'Caceres', '676767', '2019-06-28', 'Manzana 57 Parcela 3 Barrio Rucci', '3644503954', 'rubens_uncaus@hotmail.com', 'Argentina', 'Chaco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_pais` int(255) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `continente` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre_corto` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `nombre`, `continente`, `nombre_corto`) VALUES
(0, 'INDETERMINADO', 'AS', 'as'),
(1, 'Estados Unidos', 'AM', 'us'),
(2, 'Canad', 'AM', 'el'),
(3, 'Puerto Rico', 'AM', 'pr'),
(4, 'Republica Dominicana', 'AM', 'rd'),
(7, 'Rusia', 'EU', 'ru'),
(20, 'Egipto', 'AF', 'eg'),
(27, 'Sudafrica', 'AF', 'sa'),
(30, 'Grecia', 'EU', 'gr'),
(31, 'Holanda', 'EU', 'nl'),
(32, 'Belgica', 'EU', 'be'),
(33, 'Francia', 'EU', 'fr'),
(34, 'Espa', 'EU', 'es'),
(36, 'Hungria', 'EU', 'hu'),
(39, 'Italia', 'EU', 'it'),
(40, 'Rumania', 'EU', 'ro'),
(41, 'Suiza', 'EU', 'ch'),
(43, 'Austria', 'EU', 'at'),
(44, 'Reino Unido', 'EU', 'gb'),
(45, 'Dinarmarca', 'EU', 'dk'),
(46, 'Suecia', 'EU', 'se'),
(47, 'Noruega', 'EU', 'no'),
(48, 'Polonia', 'EU', 'pl'),
(49, 'Alemania', 'EU', 'dw'),
(51, 'Peru', 'AM', 'pe'),
(52, 'Mexico', 'AM', 'mx'),
(53, 'Cuba', 'AM', 'cu'),
(54, 'Argentina', 'AM', 'ar'),
(55, 'Brasil', 'AM', 'br'),
(56, 'Chile', 'AM', 'cl'),
(57, 'Colombia', 'AM', 'co'),
(58, 'Venezuela', 'AM', 've'),
(60, 'Malasia', 'OC', 'my'),
(61, 'Australia', 'OC', 'au'),
(62, 'Indonesia', 'OC', 'id'),
(63, 'Filipinas', 'OC', 'ph'),
(64, 'Nueva Zelanda', 'OC', 'nz'),
(65, 'Singapur', 'OC', 'sg'),
(66, 'Tailandia', 'OC', 'th'),
(81, 'Japon', 'AS', 'jp'),
(82, 'Corea', 'AS', 'kr'),
(84, 'Vietnam', 'AS', 'vn'),
(86, 'China', 'AS', 'cn'),
(90, 'Turquia', 'AS', 'tr'),
(91, 'India', 'AS', 'in'),
(92, 'Pakistan', 'AS', 'pk'),
(93, 'Afganistan', 'AS', 'af'),
(94, 'Sri Lanka', 'AS', 'lk'),
(95, 'Myanmar (ex Birmania)', 'AS', 'mm'),
(98, 'Iran', 'AS', 'ir'),
(212, 'Marruecos', 'AF', 'ma'),
(213, 'Argelia', 'AF', 'dz'),
(216, 'Tunez', 'AF', 'tn'),
(218, 'Libia', 'AF', 'ly'),
(220, 'Gambia', 'AF', 'gm'),
(221, 'Senegal', 'AF', 'sn'),
(222, 'Mauritania', 'AF', 'mr'),
(223, 'Mal', 'AF', 'ml'),
(225, 'Costa de Marfil', 'AF', 'ci'),
(226, 'Burkina Faso', 'AF', 'bf'),
(227, 'N?ger', 'AF', 'ne'),
(229, 'Benin', 'AF', 'bj'),
(230, 'Isla Mauricio', 'AF', 'mu'),
(231, 'Liberia', 'AF', 'lr'),
(232, 'Sierra Leona', 'AF', 'sl'),
(233, 'Ghana', 'AF', 'gh'),
(234, 'Nigeria', 'AF', 'ng'),
(235, 'Chad', 'AF', 'td'),
(236, 'Rep?blica Centro Africana', 'AF', 'cf'),
(237, 'Camerun', 'AF', 'cm'),
(238, 'Cabo Verde', 'AF', 'cv'),
(239, 'Santo Tome y Principe', 'AF', 'st'),
(241, 'Gab', 'AF', 'ga'),
(242, 'Congo', 'AF', 'cg'),
(243, 'Zaire', 'AF', 'zr'),
(244, 'Angola', 'AF', 'ao'),
(249, 'Sudan', 'AF', 'sd'),
(250, 'Ruanda', 'AF', 'rw'),
(252, 'Somalia', 'AF', 'so'),
(254, 'Kenya', 'AF', 'ke'),
(255, 'Tanzania', 'AF', 'tz'),
(256, 'Uganda', 'AF', 'ug'),
(257, 'Burundi', 'AF', 'bi'),
(258, 'Mozambique', 'AF', 'mz'),
(260, 'Zambia', 'AF', 'zm'),
(261, 'Madagascar', 'AF', 'md'),
(262, 'Reuni', 'AF', 're'),
(263, 'Zimbabwe', 'AF', 'zw'),
(264, 'Namibia', 'AF', 'na'),
(265, 'Malawi', 'AF', 'mw'),
(266, 'Lesotho', 'AF', 'ls'),
(267, 'Botswana', 'AF', 'bw'),
(268, 'Swazilandia', 'AF', 'sz'),
(269, 'Comores', 'AF', 'km'),
(290, 'Santa Helena', 'AF', 'sh'),
(291, 'Eritrea', 'AF', 'er'),
(351, 'Portugal', 'EU', 'pt'),
(352, 'Luxemburgo', 'EU', 'lu'),
(353, 'Irlanda', 'EU', 'ie'),
(354, 'Islandia', 'EU', 'is'),
(355, 'Albania', 'EU', 'al'),
(356, 'Malta', 'EU', 'mt'),
(357, 'Chipre', 'EU', 'cy'),
(358, 'Finlandia', 'EU', 'fi'),
(359, 'Bulgaria', 'EU', 'bg'),
(370, 'Lituania', 'EU', 'lt'),
(371, 'Letonia', 'EU', 'lv'),
(372, 'Estonia', 'EU', 'ee'),
(373, 'Moldova', 'EU', 'md'),
(374, 'Armenia', 'EU', 'am'),
(375, 'Bielorrusia', 'EU', 'by'),
(376, 'Andorra', 'EU', 'ad'),
(377, 'Monaco', 'EU', 'mc'),
(378, 'San Marino', 'EU', 'sm'),
(379, 'Ciudad del Vatanico', 'EU', 'va'),
(380, 'Ucrania', 'EU', 'ua'),
(381, 'Yugoslavia', 'EU', 'yu'),
(385, 'Croacia', 'EU', 'hr'),
(386, 'Eslovenia', 'EU', 'si'),
(387, 'Bosnia y Herzegovina', 'EU', 'ba'),
(389, 'Macedonia', 'EU', 'mk'),
(420, 'Rep?blica Checa', 'EU', 'cz'),
(421, 'Eslovaquia', 'EU', 'sk'),
(423, 'Liechtenstein', 'EU', 'li'),
(501, 'Belice', 'AM', 'bz'),
(502, 'Guatemala', 'AM', 'gt'),
(503, 'El Salvador', 'AM', 'sv'),
(504, 'Honduras', 'AM', 'hn'),
(505, 'Nicaragua', 'AM', 'ni'),
(506, 'Costa Rica', 'AM', 'cr'),
(507, 'Panama', 'AM', 'pa'),
(509, 'Haiti', 'AM', 'ht'),
(591, 'Bolivia', 'AM', 'bo'),
(592, 'Guyana', 'AM', 'gy'),
(593, 'Ecuador', 'AM', 'ec'),
(594, 'Guayana Francesa', 'AM', 'gf'),
(595, 'Paraguay', 'AM', 'py'),
(596, 'Martinica', 'AM', 'mq'),
(597, 'Surinam', 'AM', 'sr'),
(598, 'Uruguay', 'AM', 'uy'),
(599, 'Antillas Holandesas', 'AM', 'an'),
(672, 'Isla Norfolk', 'AS', 'nf'),
(673, 'Brunei', 'AS', 'bn'),
(674, 'Nauru', 'OC', 'nr'),
(675, 'Nueva Guinea y Papua', 'OC', 'pg'),
(676, 'Tonga', 'OC', 'to'),
(677, 'Islas Salomon', 'OC', 'sb'),
(678, 'Vanuatu', 'OC', 'vt'),
(679, 'Fidji', 'OC', 'fj'),
(680, 'Palau', 'OC', 'pw'),
(685, 'Samoa Occidental', 'OC', 'ws'),
(686, 'Kiribati', 'OC', 'ki'),
(687, 'Nueva Caledonia', 'OC', 'nc'),
(688, 'Tuvalu', 'OC', 'tv'),
(689, 'Polinesia Francesa', 'OC', 'pf'),
(690, 'Tokelau', 'OC', 'tk'),
(691, 'Estados Federador de Micronesia', 'OC', 'fm'),
(692, 'Islas Marshall', 'OC', 'mh'),
(850, 'Corea del Norte', 'AS', 'kp'),
(853, 'Macao', 'AS', 'mo'),
(856, 'Laos', 'AS', 'la'),
(880, 'Bangladesh', 'AS', 'bd'),
(886, 'Taiwan', 'AS', 'tw'),
(960, 'Maldivas', 'AS', 'mv'),
(961, 'L?bano', 'AS', 'lb'),
(962, 'Jordania', 'AS', 'jo'),
(963, 'Siria', 'AS', 'sy'),
(964, 'Irak', 'AS', 'iq'),
(965, 'Kuwait', 'AS', 'kw'),
(966, 'Arabia Saudita', 'AS', 'sa'),
(967, 'Yemen R.A.', 'AS', 'ye'),
(968, 'Om', 'AS', 'om'),
(971, 'Emiratos Arabes Unidos', 'AS', 'ae'),
(972, 'Israel', 'AS', 'il'),
(973, 'Bahrein', 'AS', 'bh'),
(974, 'Qatar', 'AS', 'qa'),
(975, 'Bhut', 'AS', 'bt'),
(976, 'Mongolia', 'AS', 'mn'),
(977, 'Nepal', 'AS', 'np'),
(993, 'Turkmenist', 'AS', 'tm'),
(994, 'Azerbaiy', 'AS', 'az'),
(995, 'Georgia', 'AS', 'ge'),
(998, 'Uzbekist', 'AS', 'uz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id_provincia` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `id_pais` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id_provincia`, `nombre`, `id_pais`) VALUES
(0, 'INDETERMINADO', 0),
(102, 'Alabama', 1),
(104, 'Alaska', 1),
(105, 'Arizona', 1),
(107, 'Arkansas', 1),
(108, 'California', 1),
(110, 'Colorado', 1),
(111, 'Connecticut', 1),
(113, 'Delaware', 1),
(114, 'Florida', 1),
(116, 'Georgia', 1),
(117, 'Hawaii', 1),
(119, 'Idaho', 1),
(120, 'Illinois', 1),
(122, 'Indiana', 1),
(123, 'Iowa', 1),
(125, 'Kansas', 1),
(126, 'Kentucky', 1),
(128, 'Louisiana', 1),
(129, 'Maine', 1),
(131, 'Maryland', 1),
(132, 'Massachusetts', 1),
(134, 'Michigan', 1),
(135, 'Minnesota', 1),
(137, 'Mississippi', 1),
(138, 'Missouri', 1),
(140, 'Montana', 1),
(141, 'Nebraska', 1),
(143, 'Nevada', 1),
(144, 'New Hampshire', 1),
(146, 'New Jersey', 1),
(147, 'New Mexico', 1),
(149, 'New York', 1),
(150, 'North Carolina', 1),
(152, 'North Dakota', 1),
(153, 'Ohio', 1),
(155, 'Oklahoma', 1),
(156, 'Oregon', 1),
(158, 'Pennsylvania', 1),
(159, 'Rhode Island', 1),
(161, 'South Carolina', 1),
(162, 'South Dakota', 1),
(164, 'Tennessee', 1),
(165, 'Texas', 1),
(167, 'Utah', 1),
(168, 'Vermont', 1),
(170, 'Virginia', 1),
(171, 'Washington', 1),
(173, 'West Virginia', 1),
(174, 'Wisconsin', 1),
(176, 'Wyoming', 1),
(298, 'Indeterminada', 2),
(398, 'Indeterminada', 3),
(498, 'Indeterminada', 4),
(3405, 'Andaluc', 34),
(3410, 'Arag', 34),
(3415, 'Asturias', 34),
(3420, 'Cantabria', 34),
(3425, 'Castilla - La Mancha', 34),
(3430, 'Castilla - Le', 34),
(3435, 'Catalunya', 34),
(3440, 'Extremadura', 34),
(3445, 'Galicia', 34),
(3450, 'Islas Baleares', 34),
(3455, 'Islas Canarias', 34),
(3460, 'La Rioja', 34),
(3465, 'Madrid', 34),
(3470, 'Murcia', 34),
(3475, 'Navarra', 34),
(3480, 'Pa?s Vasco - Euskadi', 34),
(3485, 'Valencia', 34),
(3490, 'Ceuta', 34),
(3495, 'Melilla', 34),
(3904, 'Abruzos', 39),
(3908, 'Apulia', 39),
(3912, 'Basilicata', 39),
(3916, 'Calabria', 39),
(3920, 'Campania', 39),
(3924, 'Cerde', 39),
(3928, 'Emilia - Roma', 39),
(3932, 'Friul - Venecia Julia', 39),
(3936, 'Las Marcas', 39),
(3940, 'Lacio', 39),
(3944, 'Liguria', 39),
(3948, 'Lombard', 39),
(3952, 'Molise', 39),
(3956, 'Piamonte', 39),
(3960, 'Sicilia', 39),
(3964, 'Toscana', 39),
(3968, 'Trentino - Alto Adigio', 39),
(3972, 'Umbr', 39),
(3976, 'Valle de Aosta', 39),
(3980, 'V?neto', 39),
(4101, 'Sin Provincias', 41),
(4906, 'Baden-Wurtemberg (Baden-W?rttemberg)', 49),
(4912, 'Baja Sajonia (Niedersachsen)', 49),
(4918, 'Baviera', 49),
(4924, 'Berl', 49),
(4930, 'Brandeburgo (Brandenburg)', 49),
(4936, 'Bremen', 49),
(4942, 'Hamburgo (Hamburg)', 49),
(4948, 'Hesse', 49),
(4954, 'Mecklemburgo-Pomerania Occidental (Mecklenburg-Vorpommern)', 49),
(4960, 'Renania del Norte-Westfalia (Nordrhein-Westfalen)', 49),
(4966, 'Renania-Palatinado (Rheinland-Pfalz)', 49),
(4972, 'Sajonia (Sachsen)', 49),
(4975, 'Sajonia-Anhalt (Sachsen-Anhalt)', 49),
(4978, 'Sarre (Saarland)', 49),
(4984, 'Schleswig-Holstein', 49),
(4990, 'Turingia (Th?ringen)', 49),
(5104, 'AMAZONAS', 51),
(5108, 'ANCASH', 51),
(5112, 'APURIMAC', 51),
(5116, 'AREQUIPA', 51),
(5120, 'AYACUCHO', 51),
(5124, 'CAJAMARCA', 51),
(5128, 'CUSCO', 51),
(5132, 'HUANUCO', 51),
(5136, 'HUANCAVELICA', 51),
(5140, 'ICA', 51),
(5144, 'JUNIN', 51),
(5148, 'LA LIBERTAD', 51),
(5152, 'LAMBAYEQUE', 51),
(5156, 'LIMA', 51),
(5160, 'LORETO', 51),
(5164, 'MADRE DE DIOS', 51),
(5168, 'MOQUEGUA', 51),
(5172, 'PASCO', 51),
(5176, 'PIURA', 51),
(5180, 'PUNO', 51),
(5184, 'SAN MARTIN', 51),
(5188, 'TACNA', 51),
(5192, 'TUMBES', 51),
(5196, 'UCAYALI', 51),
(5203, 'Aguascalientes', 52),
(5206, 'Baja California Norte', 52),
(5209, 'Baja California Sur', 52),
(5212, 'Campeche', 52),
(5215, 'Chiapas', 52),
(5218, 'Chihuahua', 52),
(5221, 'Coahuila', 52),
(5224, 'Colima', 52),
(5227, 'Distrito Federal', 52),
(5230, 'Durango', 52),
(5233, 'Estado de Mexico', 52),
(5236, 'Guanajuato', 52),
(5239, 'Guerrero', 52),
(5242, 'Hidalgo', 52),
(5245, 'Jalisco', 52),
(5248, 'Michoac', 52),
(5251, 'Morelos', 52),
(5254, 'Nayarit', 52),
(5257, 'Nuevo Le', 52),
(5260, 'Oaxaca', 52),
(5263, 'Puebla', 52),
(5266, 'Quer?taro', 52),
(5269, 'Quintana Roo', 52),
(5272, 'San Luis Potos', 52),
(5275, 'Sinaloa', 52),
(5278, 'Sonora', 52),
(5281, 'Tabasco', 52),
(5284, 'Tamaulipas', 52),
(5287, 'Tlaxcala', 52),
(5290, 'Veracruz', 52),
(5293, 'Yucat', 52),
(5296, 'Zacatecas', 52),
(5402, 'Capital Federal', 54),
(5406, 'Buenos Aires', 54),
(5410, 'Catamarca', 54),
(5414, 'Cordoba', 54),
(5418, 'Corrientes', 54),
(5422, 'Chaco', 54),
(5426, 'Chubut', 54),
(5430, 'Entre Rios', 54),
(5434, 'Formosa', 54),
(5438, 'Jujuy', 54),
(5442, 'La Pampa', 54),
(5446, 'La Rioja', 54),
(5450, 'Mendoza', 54),
(5454, 'Misiones', 54),
(5458, 'Neuquén', 54),
(5462, 'Rio Negro', 54),
(5466, 'Salta', 54),
(5470, 'San Juan', 54),
(5474, 'San Luis', 54),
(5478, 'Santa Cruz', 54),
(5482, 'Santa Fe', 54),
(5486, 'Santiago del Estero', 54),
(5490, 'Tucuman', 54),
(5494, 'Tierra del Fuego, Antartida e Islas del Atlantico Sur', 54),
(5503, 'Acre', 55),
(5506, 'Alagoas', 55),
(5509, 'Amap', 55),
(5512, 'Amazonas', 55),
(5515, 'Bahia', 55),
(5518, 'Cear', 55),
(5521, 'Distrito Federal', 55),
(5524, 'Esp?rito Santo', 55),
(5527, 'Goi', 55),
(5530, 'Maranh', 55),
(5533, 'Mato Grosso', 55),
(5536, 'Mato Grosso do Sul', 55),
(5539, 'Minas Gerais', 55),
(5542, 'Par', 55),
(5545, 'Para?ba', 55),
(5548, 'Paran', 55),
(5551, 'Pernambuco', 55),
(5554, 'Piau', 55),
(5557, 'Rio de Janeiro', 55),
(5560, 'Rio Grande do Norte', 55),
(5563, 'Rio Grande do Sul', 55),
(5566, 'Rond?nia', 55),
(5569, 'Roraima', 55),
(5572, 'Santa Catarina', 55),
(5575, 'S?o Paulo', 55),
(5578, 'Sergipe', 55),
(5581, 'Tocantins', 55),
(5607, 'AISEN DEL GENERAL CARLOS IBA?EZ DEL CAMPO', 56),
(5614, 'ANTOFAGASTA', 56),
(5621, 'ARAUCANIA', 56),
(5628, 'ATACAMA', 56),
(5635, 'BIOBIO', 56),
(5642, 'COQUIMBO', 56),
(5649, 'LIBERTADOR GENERAL BERNARDO O?HIGGINS', 56),
(5656, 'LOS LAGOS', 56),
(5663, 'MAGALLANES Y LA ANTARTICA CHILENA', 56),
(5670, 'MAULE', 56),
(5677, 'METROPOLITANA DE SANTIAGO', 56),
(5684, 'TARAPACA', 56),
(5691, 'VALPARAISO', 56),
(5703, 'Amazonas', 57),
(5706, 'Antioquia', 57),
(5709, 'Arauca', 57),
(5712, 'Atl?ntico', 57),
(5716, 'Bogotá', 57),
(5719, 'Bol?var', 57),
(5722, 'Boyac', 57),
(5725, 'Caldas', 57),
(5728, 'Caquet', 57),
(5732, 'Casanare', 57),
(5735, 'Cauca', 57),
(5738, 'C?sar', 57),
(5741, 'Choc', 57),
(5744, 'C?rdoba', 57),
(5748, 'Cundinamarca', 57),
(5751, 'Guaviare', 57),
(5754, 'Huila', 57),
(5757, 'La Guajira', 57),
(5760, 'Magdalena', 57),
(5764, 'Meta', 57),
(5767, 'Nari', 57),
(5770, 'Norte de Santander', 57),
(5773, 'Putumayo', 57),
(5776, 'Quindi', 57),
(5780, 'Risaralda', 57),
(5783, 'San Andr?s y Providencia', 57),
(5786, 'Santander', 57),
(5789, 'Sucre', 57),
(5792, 'Tolima', 57),
(5796, 'Valle del Cauca', 57),
(5803, 'Amazonas', 58),
(5806, 'Anzo?tegui', 58),
(5809, 'Apure', 58),
(5812, 'Aragua', 58),
(5815, 'Barinas', 58),
(5818, 'Bol?var', 58),
(5821, 'Carabobo', 58),
(5824, 'Cojedes', 58),
(5827, 'Delta Amacuro', 58),
(5830, 'Dependencias Federales', 58),
(5833, 'distrito federal', 58),
(5836, 'Falc', 58),
(5839, 'Gu?rico', 58),
(5842, 'Lara', 58),
(5845, 'M?rida', 58),
(5848, 'Miranda', 58),
(5851, 'Monagas', 58),
(5854, 'Nueva Esparta', 58),
(5857, 'Portuguesa', 58),
(5860, 'Sucre', 58),
(5863, 'T?chira', 58),
(5866, 'Trujillo', 58),
(5869, 'Vargas', 58),
(5872, 'Yaracuy', 58),
(5875, 'Zulia', 58),
(6405, 'Auckland', 64),
(6410, 'Bah?a de los Halcones', 64),
(6415, 'Bah?a de Plenty', 64),
(6420, 'Canterbury', 64),
(6425, 'Costa Oeste', 64),
(6430, 'Gisborne', 64),
(6435, 'Islas Chatham', 64),
(6440, 'Manauatu-Uanganui', 64),
(6445, 'Marlborough', 64),
(6450, 'Nelson', 64),
(6455, 'Otago', 64),
(6460, 'Regi?n del Norte', 64),
(6465, 'Regi?n del Sur', 64),
(6470, 'Taranaki', 64),
(6475, 'Tasmania', 64),
(6480, 'Waikato', 64),
(6485, 'Wellington', 64),
(8102, 'Aichi', 81),
(8104, 'Akita', 81),
(8106, 'Aomori', 81),
(8108, 'Chiba', 81),
(8110, 'Ehime', 81),
(8112, 'Fukui', 81),
(8114, 'Fukuoka', 81),
(8116, 'Fukushima', 81),
(8118, 'Gifu', 81),
(8120, 'Gunma', 81),
(8122, 'Hiroshima', 81),
(8124, 'Hokkaido', 81),
(8126, 'Hyogo', 81),
(8128, 'Ibaraki', 81),
(8130, 'Ishikawa', 81),
(8132, 'Iwate', 81),
(8134, 'Kagawa', 81),
(8136, 'Kagoshima', 81),
(8138, 'Kanagawa', 81),
(8140, 'Kochi', 81),
(8142, 'Kumamoto', 81),
(8144, 'Kyoto', 81),
(8146, 'Mie', 81),
(8148, 'Miyagi', 81),
(8150, 'Miyazaki', 81),
(8152, 'Nagano', 81),
(8154, 'Nagasaki', 81),
(8156, 'Nara', 81),
(8158, 'Niigata', 81),
(8160, 'Oita', 81),
(8162, 'Okayama', 81),
(8164, 'Okinawa', 81),
(8166, 'Osaka', 81),
(8168, 'Saga', 81),
(8170, 'Saitama', 81),
(8172, 'Shiga', 81),
(8174, 'Shimane', 81),
(8176, 'Shizuoka', 81),
(8178, 'Tochigi', 81),
(8180, 'Tokushima', 81),
(8182, 'Tokio', 81),
(8184, 'Tottori', 81),
(8186, 'Toyama', 81),
(8188, 'Wakayama', 81),
(8190, 'Yamagata', 81),
(8192, 'Yamaguchi', 81),
(8194, 'Yamanashi', 81),
(22598, 'Indeterminada', 225),
(35303, 'Condado de Carlow', 353),
(35306, 'Condado de Cavan', 353),
(35309, 'Condado de Clare', 353),
(35312, 'Condado de Cork', 353),
(35315, 'Condado de Donegal', 353),
(35318, 'Condado de Dubl', 353),
(35321, 'Condado de Galway', 353),
(35324, 'Condado de Kerry', 353),
(35327, 'Condado de Kildare', 353),
(35330, 'Condado de Kilkenny', 353),
(35333, 'Condado de Laois', 353),
(35336, 'Condado de Leitrim', 353),
(35339, 'Condado de Limerick', 353),
(35342, 'Condado de Longford', 353),
(35345, 'Condado de Louth', 353),
(35348, 'Condado de Mayo', 353),
(35351, 'Condado de Meath', 353),
(35354, 'Condado de Monaghan', 353),
(35357, 'Condado de Offaly', 353),
(35360, 'Condado de Roscommon', 353),
(35363, 'Condado de Sligo', 353),
(35366, 'Condado de Tipperary', 353),
(35369, 'Condado de Waterford', 353),
(35372, 'Condado de Westmeath', 353),
(35375, 'Condado de Wexford', 353),
(35378, 'Condado de Wicklow', 353),
(50613, 'Alajuela', 506),
(50626, 'Cartago', 506),
(50639, 'Guanacaste', 506),
(50652, 'Heredia', 506),
(50665, 'Lim', 506),
(50678, 'Puntarenas', 506),
(50691, 'San Jose', 506),
(59101, 'Sin Provincias', 591),
(59304, 'AZUAY', 593),
(59308, 'BOLIVAR', 593),
(59312, 'CA?AR', 593),
(59316, 'CARCHI', 593),
(59320, 'CHIMBORAZO', 593),
(59324, 'COTOPAXI', 593),
(59328, 'EL ORO', 593),
(59332, 'ESMERALDAS', 593),
(59336, 'GALAPAGOS', 593),
(59340, 'GUAYAS', 593),
(59344, 'IMBABURA', 593),
(59348, 'LOJA', 593),
(59352, 'LOS RIOS', 593),
(59356, 'MANABI', 593),
(59360, 'MORONA SANTIAGO', 593),
(59364, 'NAPO', 593),
(59368, 'ORELLANA', 593),
(59372, 'PASTAZA', 593),
(59376, 'PICHINCHA', 593),
(59380, 'SUCUMBIOS', 593),
(59384, 'TUNGURAHUA', 593),
(59388, 'ZAMORA CHINCHIPE', 593),
(59501, 'Sin Provincias', 595),
(59801, 'Sin Provincias', 598);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `created`, `last_login`) VALUES
(1, 'rubens.uncaus@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0000-00-00 00:00:00', '2019-06-18 23:12:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistente`
--
ALTER TABLE `asistente`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id_provincia`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id_pais` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=999;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id_provincia` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59802;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD CONSTRAINT `provincias_ibfk_2` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
