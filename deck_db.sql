-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-05-2019 a las 00:06:10
-- Versión del servidor: 5.7.26-0ubuntu0.18.04.1
-- Versión de PHP: 5.6.40-1+ubuntu18.04.1+deb.sury.org+2+will+reach+end+of+life+in+april+2019

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deck_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradora_seguridad`
--

CREATE TABLE `administradora_seguridad` (
  `cod_administradora_seguridad` int(11) NOT NULL,
  `num_nit` varchar(50) DEFAULT NULL,
  `num_codigo` varchar(50) DEFAULT NULL,
  `cod_tipo_administradora` int(11) DEFAULT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `booleano`
--

CREATE TABLE `booleano` (
  `cod_booleano` int(11) NOT NULL,
  `txt_nombre` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `booleano`
--

INSERT INTO `booleano` (`cod_booleano`, `txt_nombre`) VALUES
(1, 'SI'),
(0, 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `cod_ciudad` int(11) NOT NULL,
  `cod_departamento` int(11) DEFAULT NULL,
  `cod_dane_ciudad` varchar(11) DEFAULT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`cod_ciudad`, `cod_departamento`, `cod_dane_ciudad`, `txt_nombre`, `ind_activo`) VALUES
(1, 1, '020', 'Alcal', 1),
(2, 1, '041', 'Ansermanuevo', 1),
(3, 1, '054', 'Argelia', 1),
(4, 1, '100', 'Bol', 1),
(5, 1, '147', 'Cartago', 1),
(6, 1, '243', 'El ', 1),
(7, 1, '246', 'El Cairo', 1),
(8, 1, '250', 'El Dovio', 1),
(9, 1, '400', 'La Uni', 1),
(10, 1, '401', 'La Victoria', 1),
(11, 1, '497', 'Obando', 1),
(12, 1, '622', 'Roldanillo', 1),
(13, 1, '823', 'Toro', 1),
(14, 1, '845', 'Ulloa', 1),
(15, 1, '863', 'Versalles', 1),
(16, 1, '895', 'Zarzal', 1),
(17, 1, '036', 'Andaluc', 1),
(18, 1, '111', 'Buga', 1),
(19, 1, '113', 'Bugalagrande', 1),
(20, 1, '126', 'Dari', 1),
(21, 1, '248', 'El Cerrito', 1),
(22, 1, '306', 'Ginebra', 1),
(23, 1, '318', 'Guacar', 1),
(24, 1, '606', 'Restrepo', 1),
(25, 1, '616', 'Riofr', 1),
(26, 1, '717', 'San Pedro', 1),
(27, 1, '828', 'Trujillo', 1),
(28, 1, '834', 'Tulu', 1),
(29, 1, '890', 'Yotoco', 1),
(30, 1, '141', 'Candelaria', 1),
(31, 1, '001', 'Cali', 1),
(32, 1, '233', 'Dagua', 1),
(33, 1, '275', 'Florida', 1),
(34, 1, '364', 'Jamund', 1),
(35, 1, '377', 'La Cumbre', 1),
(36, 1, '520', 'Palmira', 1),
(37, 1, '563', 'Pradera', 1),
(38, 1, '892', 'Yumbo', 1),
(39, 1, '869', 'Vijes', 1),
(40, 1, '122', 'Caicedonia', 1),
(41, 1, '736', 'Sevilla', 1),
(42, 1, '109', 'Buenaventura', 1),
(43, 1, '573', 'Puerto Tejada', 1),
(44, 1, '318', 'Guapi', 1),
(45, 2, NULL, '', 1),
(46, 3, '455', 'miranda', 1),
(47, 4, '001', 'pereira', 1),
(48, 1, '834', 'tulua', 1),
(49, 1, '364', 'jamundi', 1),
(50, 5, '001', 'bogota d.c.', 1),
(51, 3, '698', 'santander de quilichao', 1),
(52, 3, '212', 'corinto', 1),
(53, 3, '110', 'buenos aires', 1),
(54, 3, '001', 'popayan', 1),
(55, 6, '001', 'bogota dc', 1),
(56, 7, '001', 'bucaramanga', 1),
(57, 1, '318', 'guacari', 1),
(58, 1, '036', 'andalucia', 1),
(59, 8, '001', 'barranquilla (distrito)', 1),
(60, 3, '142', 'caloto', 1),
(61, 9, '390', 'la pintada', 1),
(62, 10, '001', 'quibdo', 1),
(63, 1, '400', 'la union', 1),
(64, 11, '001', 'pasto', 1),
(65, 12, '899', 'zipaquira', 1),
(66, 12, '875', 'villeta', 1),
(67, 3, '300', 'guachene', 1),
(68, 3, '001', 'florencia', 1),
(69, 9, '250', 'el bagre', 1),
(70, 3, '513', 'padilla', 1),
(71, 3, '548', 'piendamo', 1),
(72, 13, '405', 'los patios', 1),
(73, 9, '652', 'san francisco', 1),
(74, 1, '100', 'bolivar', 1),
(75, 9, '088', 'bello', 1),
(76, 14, '001', 'ibague', 1),
(77, 9, '001', 'medellin', 1),
(78, 15, '059', 'armenia', 1),
(79, 12, '843', 'ubate', 1),
(80, 1, '126', 'dariencalima', 1),
(81, 11, '036', 'ancuya', 1),
(82, 16, '001', 'manizales', 1),
(83, 11, '835', 'tumaco', 1),
(84, 12, '407', 'lenguazaque', 1),
(85, 17, '001', 'neiva', 1),
(86, 3, '807', 'timbio', 1),
(87, 11, '356', 'ipiales', 1),
(88, 9, '895', 'zaragoza', 1),
(89, 3, '845', 'villa rica', 1),
(90, 18, '001', 'mocoa', 1),
(91, 1, '616', 'riofrio', 1),
(92, 9, '480', 'mutata', 1),
(93, 19, '001', 'valledupar', 1),
(94, 16, '777', 'supia', 1),
(95, 19, '238', 'el copey', 1),
(96, 7, '547', 'piedecuesta', 1),
(97, 3, '450', 'mercaderes', 1),
(98, 1, '020', 'alcala', 1),
(99, 17, '615', 'rivera', 1),
(100, 12, '473', 'mosquera', 1),
(101, 13, '001', 'cucuta', 1),
(102, 18, '568', 'puerto asis', 1),
(103, 18, '885', 'villagarzon', 1),
(104, 3, '532', 'patia (el bordo)', 1),
(105, 20, '001', 'villavicencio', 1),
(106, 21, '001', 'santa marta', 1),
(107, 3, '585', 'purace ( coconuco )', 1),
(108, 3, '780', 'suarez', 1),
(109, 3, '809', 'timbiqui', 1),
(110, 3, '130', 'cajibio', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL,
  `cod_tipo_identificacion` int(11) DEFAULT NULL,
  `num_identificacion` varchar(50) DEFAULT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `txt_apellido` varchar(255) DEFAULT NULL,
  `txt_direccion` varchar(255) DEFAULT NULL,
  `txt_telefono` varchar(50) DEFAULT NULL,
  `txt_telefono_2` varchar(50) DEFAULT NULL,
  `txt_celular` varchar(50) DEFAULT NULL,
  `txt_celular_2` varchar(50) DEFAULT NULL,
  `txt_fax` varchar(50) DEFAULT NULL,
  `txt_email` varchar(50) DEFAULT NULL,
  `txt_website` varchar(50) DEFAULT NULL,
  `cod_estado_cliente` int(11) DEFAULT NULL,
  `cod_tipo_cliente` int(11) DEFAULT NULL,
  `cod_regimen` int(11) DEFAULT NULL,
  `ind_credito` int(1) DEFAULT NULL,
  `url_foto` varchar(255) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cod_cliente`, `cod_tipo_identificacion`, `num_identificacion`, `txt_nombre`, `txt_apellido`, `txt_direccion`, `txt_telefono`, `txt_telefono_2`, `txt_celular`, `txt_celular_2`, `txt_fax`, `txt_email`, `txt_website`, `cod_estado_cliente`, `cod_tipo_cliente`, `cod_regimen`, `ind_credito`, `url_foto`, `cod_usuario`, `fec_registro`, `ind_bloqueado`) VALUES
(1, 1, '1111', 'Luis', 'Prieto', 'Calle 12', '4457898', NULL, '3207010935', NULL, NULL, NULL, NULL, 1, 1, 2, 1, NULL, 1, '2019-04-19 01:21:02', 0),
(2, 1, '100045633', 'cliente', NULL, NULL, '3222362129', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, 1, NULL, 1, '2019-04-19 01:21:46', 0),
(3, 1, '1144141006', 'jenny', 'bravo', 'calle17 85c44', '8897654', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 2, 1, NULL, 1, '2019-04-20 22:59:14', 0),
(4, 1, '66787999', 'seleccionadora', NULL, NULL, '3176379833', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, NULL, 1, '2019-04-22 22:07:31', 0),
(5, 1, '00090000', 'procosecha', NULL, NULL, '4456789', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 1, NULL, 1, '2019-04-22 22:10:43', 0),
(6, 1, '999000', 'Melkin', 'RENDON', NULL, '8897656', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 1, NULL, 1, '2019-04-22 22:11:31', 0),
(7, 1, '8876555', 'Procampo', NULL, NULL, '3152711102', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, NULL, 1, '2019-05-22 23:36:05', 0),
(8, 1, '98.364.823-3', 'Guido', 'Chamorro', NULL, '3271649', NULL, NULL, NULL, NULL, 'chamorroguido@gmail.com', NULL, 2, 1, NULL, 1, NULL, 1, '2019-05-22 23:39:20', 0),
(9, 1, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, 1, '2019-05-19 19:00:17', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columna_por_navegacion`
--

CREATE TABLE `columna_por_navegacion` (
  `cod_columna_tabla` int(11) NOT NULL,
  `cod_navegacion` int(11) NOT NULL,
  `cod_tabla_detalle` int(11) NOT NULL,
  `ind_activo` int(1) NOT NULL DEFAULT '1',
  `txt_js_onblur` varchar(255) DEFAULT NULL,
  `ind_readonly` int(1) NOT NULL DEFAULT '0',
  `num_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `columna_por_navegacion`
--

INSERT INTO `columna_por_navegacion` (`cod_columna_tabla`, `cod_navegacion`, `cod_tabla_detalle`, `ind_activo`, `txt_js_onblur`, `ind_readonly`, `num_orden`) VALUES
(91, 44, 12, 1, NULL, 0, 1),
(92, 44, 12, 1, NULL, 0, 2),
(93, 44, 12, 1, NULL, 0, 3),
(94, 44, 12, 1, NULL, 0, 4),
(96, 44, 12, 1, NULL, 0, 5),
(97, 44, 12, 1, NULL, 1, 6),
(98, 44, 12, 1, NULL, 1, 7),
(119, 44, 12, 1, NULL, 0, 8),
(120, 44, 12, 1, NULL, 0, 9),
(121, 44, 12, 1, NULL, 0, 10),
(122, 44, 12, 1, NULL, 0, 11),
(123, 44, 12, 1, NULL, 0, 12),
(124, 44, 12, 1, NULL, 0, 13),
(113, 44, 12, 1, NULL, 0, 14),
(115, 44, 12, 1, NULL, 0, 15),
(116, 44, 12, 1, NULL, 0, 16),
(117, 44, 12, 1, NULL, 1, 17),
(1, 44, 11, 1, NULL, 0, 1),
(2, 44, 11, 1, NULL, 0, 2),
(3, 44, 11, 1, NULL, 0, 3),
(4, 44, 11, 1, NULL, 0, 4),
(5, 44, 11, 1, NULL, 0, 5),
(6, 44, 11, 1, NULL, 0, 6),
(7, 44, 11, 1, NULL, 1, 7),
(8, 44, 11, 1, NULL, 1, 8),
(9, 44, 11, 1, NULL, 0, 9),
(10, 44, 11, 1, NULL, 1, 10),
(109, 44, 11, 1, NULL, 0, 11),
(111, 44, 11, 1, NULL, 0, 12),
(112, 44, 11, 1, NULL, 0, 13),
(91, 44, 9, 1, NULL, 1, 1),
(92, 44, 9, 1, NULL, 1, 2),
(93, 44, 9, 1, NULL, 1, 3),
(101, 44, 9, 1, NULL, 0, 11),
(102, 44, 9, 1, NULL, 0, 12),
(137, 44, 12, 1, '', 0, 13),
(138, 44, 9, 1, '', 0, 13),
(139, 44, 12, 1, '', 0, 13),
(140, 44, 12, 1, '', 0, 13),
(142, 44, 12, 1, '', 0, 12),
(143, 44, 12, 1, '', 0, 12),
(145, 44, 12, 1, '', 0, 12),
(155, 44, 12, 1, '', 0, 13),
(256, 44, 23, 1, NULL, 0, 14),
(173, 44, 16, 1, NULL, 0, 13),
(172, 44, 16, 1, NULL, 0, 12),
(170, 44, 16, 1, NULL, 0, 10),
(169, 44, 16, 1, NULL, 0, 9),
(168, 44, 16, 1, NULL, 0, 8),
(167, 44, 16, 1, NULL, 0, 7),
(166, 44, 16, 1, NULL, 0, 6),
(165, 44, 16, 1, NULL, 0, 5),
(164, 44, 16, 1, NULL, 0, 4),
(163, 44, 16, 1, NULL, 0, 3),
(162, 44, 16, 1, NULL, 0, 2),
(161, 44, 16, 1, NULL, 0, 1),
(255, 44, 23, 1, NULL, 0, 13),
(253, 44, 23, 1, NULL, 0, 12),
(252, 44, 23, 1, NULL, 0, 11),
(251, 44, 23, 1, NULL, 0, 10),
(250, 44, 23, 1, NULL, 1, 9),
(249, 44, 23, 1, NULL, 0, 8),
(248, 44, 23, 1, NULL, 0, 7),
(247, 44, 23, 1, NULL, 1, 6),
(246, 44, 23, 1, NULL, 0, 5),
(245, 44, 23, 1, NULL, 0, 4),
(244, 44, 23, 1, NULL, 0, 3),
(243, 44, 23, 1, NULL, 0, 2),
(242, 44, 23, 1, NULL, 0, 1),
(257, 44, 23, 1, NULL, 0, 15),
(258, 44, 23, 1, NULL, 1, 16),
(291, 44, 29, 1, NULL, 0, 1),
(290, 44, 29, 1, NULL, 0, 2),
(292, 44, 29, 1, NULL, 0, 3),
(293, 44, 29, 1, NULL, 0, 4),
(294, 44, 29, 1, NULL, 0, 6),
(295, 44, 29, 1, NULL, 0, 7),
(296, 44, 29, 1, NULL, 0, 5),
(297, 44, 29, 1, NULL, 0, 8),
(298, 44, 29, 1, NULL, 0, 9),
(299, 44, 29, 1, NULL, 0, 10),
(300, 44, 29, 1, NULL, 0, 11),
(302, 44, 29, 1, NULL, 0, 12),
(303, 44, 29, 1, NULL, 0, 13),
(304, 44, 29, 1, NULL, 0, 14),
(305, 44, 29, 1, NULL, 0, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columna_tabla_autonoma`
--

CREATE TABLE `columna_tabla_autonoma` (
  `cod_columna_tabla` int(11) NOT NULL,
  `cod_tabla` int(11) NOT NULL,
  `cod_tabla_pk` int(11) DEFAULT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `txt_alias` varchar(255) NOT NULL,
  `txt_default_value` varchar(255) DEFAULT NULL,
  `cod_tipo_dato_columna` int(11) NOT NULL,
  `cod_ventana_emergente` int(11) DEFAULT NULL,
  `txt_script_cursor` text,
  `txt_placeholder` varchar(255) DEFAULT NULL,
  `ind_pk` int(11) NOT NULL DEFAULT '1',
  `ind_filtro` int(11) NOT NULL DEFAULT '1',
  `ind_basic` int(11) DEFAULT NULL,
  `ind_avanced` int(11) DEFAULT NULL,
  `ind_not_null` int(11) NOT NULL DEFAULT '1',
  `ind_bloqueado` int(11) NOT NULL DEFAULT '1',
  `ind_unique` int(11) NOT NULL DEFAULT '0',
  `ind_input_multiple` int(11) DEFAULT NULL,
  `ind_visible_form` int(11) DEFAULT NULL,
  `num_orden_insert` int(11) NOT NULL,
  `num_size_input` int(11) DEFAULT NULL,
  `max_length` int(11) NOT NULL,
  `txt_script_lista_valor` text,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `columna_tabla_autonoma`
--

INSERT INTO `columna_tabla_autonoma` (`cod_columna_tabla`, `cod_tabla`, `cod_tabla_pk`, `txt_nombre`, `txt_alias`, `txt_default_value`, `cod_tipo_dato_columna`, `cod_ventana_emergente`, `txt_script_cursor`, `txt_placeholder`, `ind_pk`, `ind_filtro`, `ind_basic`, `ind_avanced`, `ind_not_null`, `ind_bloqueado`, `ind_unique`, `ind_input_multiple`, `ind_visible_form`, `num_orden_insert`, `num_size_input`, `max_length`, `txt_script_lista_valor`, `fec_registro`, `cod_usuario`) VALUES
(1, 1, 1, 'cod_entidad', 'COD ENTIDAD', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(2, 1, 1, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(3, 1, 1, 'txt_nit', 'NIT', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(4, 1, 1, 'txt_telefono', 'TELEFONO', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(5, 1, 1, 'txt_contacto', 'CONTACTO', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(6, 1, 1, 'txt_direccion', 'DIRECCION', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(7, 1, 1, 'ind_activo', 'ACTIVO', '1', 4, NULL, 'select * from booleano order by txt_nombre', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 10, NULL, 255, NULL, NULL, NULL),
(8, 1, 1, 'txt_email', 'EMAIL', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(9, 1, 1, 'txt_facebook', 'FACEBOOK', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, NULL, NULL, NULL),
(10, 1, 1, 'txt_web', 'WEB', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, NULL, NULL),
(11, 2, 2, 'cod_paciente', 'COD PACIENTE', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(12, 2, 2, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(13, 2, 2, 'txt_apellido', 'APELLIDO', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(14, 2, 2, 'cod_tipo_identificacion', 'TIPO IDENTIFICACI&oacute;N', '1', 4, NULL, 'select * from tipo_identificacion where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 256, NULL, NULL, NULL),
(15, 2, 2, 'txt_identificacion', 'IDENTIFICACI&oacute;N', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 5, NULL, 257, NULL, NULL, NULL),
(16, 2, 2, 'cod_sexo', 'SEXO', NULL, 4, NULL, 'select * from sexo', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 6, NULL, 258, NULL, NULL, NULL),
(17, 2, 2, 'txt_telefono', 'TEL&eacute;FONO', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 259, NULL, NULL, NULL),
(18, 2, 2, 'txt_celular', 'CELULAR', NULL, 10, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 260, NULL, NULL, NULL),
(19, 2, 2, 'txt_direccion', 'DIRECCI&Oacute;N', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 261, NULL, NULL, NULL),
(20, 2, 2, 'txt_email', 'EMAIL', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 10, NULL, 262, NULL, NULL, NULL),
(21, 2, 2, 'fec_nacimiento', 'FECHA NACIMIENTO', NULL, 3, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 11, NULL, 263, NULL, NULL, NULL),
(22, 2, 2, 'txt_ocupacion', 'OCUPACI&oacute;N', NULL, 1, NULL, 'select * from ocupacion where ind_activo = 1', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 12, NULL, 264, NULL, NULL, NULL),
(23, 2, 2, 'cod_estado_civil', 'ESTADO CIVIL', NULL, 4, NULL, 'select * from estado_civil where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 13, NULL, 265, NULL, NULL, NULL),
(24, 2, 2, 'cod_entidad', 'ENTIDAD (ERP)', NULL, 4, NULL, 'select * from entidad where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 14, NULL, 266, NULL, NULL, NULL),
(25, 2, 2, 'cod_tipo_vinculacion', 'TIPO VINCULACI&Oacute;N', NULL, 4, NULL, 'select * from tipo_vinculacion where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 15, NULL, 267, NULL, NULL, NULL),
(26, 2, 2, 'txt_acompanante', 'ACOMPA&Ntilde;ANTE', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 17, NULL, 268, NULL, NULL, NULL),
(27, 2, 2, 'cod_parentesco', 'PARENTESCO', NULL, 4, NULL, 'select * from parentesco where ind_activo = 1', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 18, NULL, 269, NULL, NULL, NULL),
(28, 2, 2, 'txt_telefono_acompanante', 'TELEFONO ACOMPA&Ntilde;ANTE', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 19, NULL, 270, NULL, NULL, NULL),
(29, 2, 2, 'txt_nota_adicional', 'NOTA ADICIONAL', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 23, NULL, 270, NULL, NULL, NULL),
(30, 2, 2, 'txt_tramite_orden', 'TRAMITE DE ORDEN', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 24, NULL, 255, NULL, NULL, NULL),
(31, 3, 3, 'cod_profesional_salud', 'COD PROFESIONAL', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(32, 3, 3, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(33, 3, 3, 'txt_apellido', 'APELLIDO', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(34, 3, 3, 'cod_tipo_identificacion', 'TIPO IDENTIFICACI&Oacute;N', NULL, 4, NULL, 'select * from tipo_identificacion where ind_activo = 1', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(35, 3, 3, 'txt_identificacion', 'IDENTIFICACI&Oacute;N', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(36, 3, 3, 'num_tarjeta_profesional', 'TARJETA PROFESIONAL', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(37, 3, 3, 'txt_celular', 'CELULAR', NULL, 10, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(38, 3, 3, 'txt_telefono', 'TELEFONO', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, NULL, NULL),
(39, 3, 3, 'txt_telefono_2', 'TELEFONO 2', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, NULL, NULL, NULL),
(40, 3, 3, 'txt_direccion', 'DIRECCI&Oacute;N', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 10, NULL, 255, NULL, NULL, NULL),
(41, 3, 3, 'txt_email', 'EMAIL', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 11, NULL, 255, NULL, NULL, NULL),
(42, 3, 3, 'txt_eps', 'EPS', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 12, NULL, 255, NULL, NULL, NULL),
(43, 3, 3, 'txt_fondo_pension', 'FONDO PENSI&Oacute;N', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 13, NULL, 255, NULL, NULL, NULL),
(44, 3, 3, 'cod_especialidad', 'ESPECIALIDAD', NULL, 4, NULL, 'select * from especialidad where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 14, NULL, 255, NULL, NULL, NULL),
(45, 3, 3, 'cod_especialidad_2', 'ESPECIALIDAD 2', NULL, 4, NULL, 'select * from especialidad where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 15, NULL, 255, NULL, NULL, NULL),
(46, 3, 3, 'txt_login', 'LOGIN', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 16, NULL, 255, NULL, NULL, NULL),
(47, 3, 3, 'txt_password', 'PASSWORD', NULL, 16, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 17, NULL, 255, NULL, NULL, NULL),
(48, 4, 4, 'cod_atencion', 'COD ATENCION', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(49, 4, 4, 'cod_tipo_atencion', 'TIPO ATENCION', NULL, 4, NULL, 'select * from tipo_atencion where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(50, 4, 4, 'fec_atencion', 'FEC ATENCION', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(51, 4, 4, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(52, 4, 4, 'cod_profesional_salud', 'PROFESIONAL SALUD', NULL, 7, 3, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 5, NULL, 255, 'select * from profesional_salud where cod_profesional_salud =value_columna', NULL, NULL),
(53, 4, 4, 'cod_paciente', 'PACIENTE', NULL, 7, 2, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 6, NULL, 255, 'select * from paciente where cod_paciente =value_columna', NULL, NULL),
(54, 4, 4, 'txt_motivo', 'MOTIVO CONSULTA', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(55, 4, 4, 'txt_enfermedad', 'ENFERMEDAD', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, NULL, NULL),
(56, 4, 4, 'txt_descripcion', 'DESCRIPCION', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, NULL, NULL, NULL),
(61, 5, 5, 'cod_noticia', 'COD NOTICIA', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(58, 4, 4, 'txt_prescripcion', 'PRESCRIPCION', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 11, NULL, 255, NULL, NULL, NULL),
(59, 4, 4, 'txt_laboratorios', 'LABORATORIOS', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 12, NULL, 255, NULL, NULL, NULL),
(60, 4, 4, 'fec_control', 'FECHA CONTROL', NULL, 8, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 13, NULL, 255, NULL, NULL, NULL),
(62, 5, 5, 'cod_categoria_noticia', 'CATEGORIA ', NULL, 4, NULL, 'select * from categoria_noticia where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(63, 5, 5, 'txt_titulo', 'TITULO', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(64, 5, 5, 'txt_descripcion', 'DESCRIPCION', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(65, 5, 5, 'fec_registro', 'FECHA REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 1, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(66, 5, 5, 'url_imagen_1', 'IMAGEN 1', NULL, 9, NULL, NULL, NULL, 0, 2, NULL, NULL, 0, 0, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(67, 5, 5, 'url_imagen_2', 'IMAGEN 2', NULL, 9, NULL, NULL, NULL, 0, 3, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(70, 5, 5, 'url_video', 'URL YOUTUBE', NULL, 1, NULL, NULL, NULL, 0, 6, NULL, NULL, 0, 0, 0, 0, 1, 10, NULL, 255, NULL, NULL, NULL),
(71, 5, 5, 'ind_activo', 'VISIBLE', '1', 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 11, NULL, 255, NULL, NULL, NULL),
(72, 2, 2, 'cod_estado_paciente', 'ESTADO', '1', 4, NULL, 'select * from estado_paciente  where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 25, NULL, 255, NULL, NULL, NULL),
(73, 6, 6, 'cod_registro', 'COD REGISTRO', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(74, 6, 6, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(75, 6, 6, 'txt_ciudad', 'CIUDAD', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(76, 6, 6, 'txt_empresa', 'EMPRESA', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(77, 6, 6, 'txt_edad', 'EDAD', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(78, 6, 6, 'txt_eps', 'EPS', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(79, 6, 6, 'txt_telefono', 'TELEFONO', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(80, 6, 6, 'txt_celular', 'CELULAR', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, NULL, NULL),
(81, 6, 6, 'txt_email', 'EMAIL', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, NULL, NULL, NULL),
(82, 6, 6, 'txt_comentarios', 'COMENTARIOS', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 10, NULL, 255, NULL, NULL, NULL),
(83, 6, 6, 'cod_tipo_registro', 'TIPO REGISTRO', NULL, 4, NULL, 'select * from tipo_registro where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 11, NULL, 255, NULL, NULL, NULL),
(84, 3, 3, 'cod_estado_profesional', 'ESTADO', '1', 4, NULL, 'select * from estado_profesional where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 18, NULL, 255, NULL, NULL, NULL),
(85, 7, 7, 'cod_extencion_tiempo', 'COD EXTENCION', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(86, 7, 7, 'cod_profesional_salud', 'PROFESIONAL SALUD', NULL, 4, NULL, 'select cod_profesional_salud,concat(txt_nombre,\' \',txt_apellido)  from profesional_salud where ind_bloqueado = 0 order by txt_nombre,txt_apellido', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(87, 7, 7, 'num_horas', 'HORAS ADICIONALES', '0', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(88, 7, 7, 'num_atenciones', 'ATENCIONES ADICIONALES', '0', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(89, 7, 7, 'num_cargadas', 'ATENCIONES CARGADAS', '0', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(90, 7, 7, 'fec_registro', 'FECHA REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 1, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(122, 8, 8, 'dias_vigencia', 'DIAS VIGENCIA', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 11, NULL, 255, NULL, NULL, NULL),
(115, 12, 12, 'cod_tipo_atencion', 'TIPO ATENCIÓN', NULL, 4, NULL, 'select cod_tipo_atencion,txt_nombre from tipo_atencion where ind_activo = 1 and txt_nombre like \"%EVOLUCION%\"', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 35, NULL, NULL, NULL),
(123, 8, 8, 'cod_paciente_categoria', 'CATEG. CUOTA MODERADORA', '4', 4, NULL, 'select cod_paciente_categoria, concat(txt_nombre,\' -\',val_categoria) from paciente_categoria where ind_activo =1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 12, NULL, 255, NULL, NULL, NULL),
(121, 8, 8, 'fec_expedicion', 'FEC EXPEDICIÓN', NULL, 8, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 10, NULL, 255, NULL, NULL, NULL),
(98, 8, 8, 'fec_modificacion', 'FEC MODIFICACIÓN', NULL, 8, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(119, 8, 8, 'ips_que_solicita', 'IPS QUE SOLICITA', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, NULL, NULL),
(120, 8, 8, 'cod_estado_autorizacion', 'ESTADO DE AUTORIZACIÓN', '4', 4, NULL, 'select cod_estado_autorizacion, txt_nombre from estado_autorizacion where ind_activo=1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 1, 1, 9, NULL, 255, NULL, NULL, NULL),
(97, 8, 8, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(114, 12, 12, 'cod_autorizacion', 'COD AUTORIZACION', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(113, 12, 12, 'cod_autorizacion_tipo_atencion', 'COD AUTORIZACION TIPO ATENCION', NULL, 1, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(104, 9, 9, 'cod_atencion', 'COD ATENCION', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(103, 9, 9, 'cod_autorizacion', 'COD AUTORIZACION', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(102, 9, 9, 'cod_cie_10', 'COD CIE 10', NULL, 7, 10, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 2, NULL, 255, 'select cod_cie_10,txt_descripcion as txt_nombre, cod_3_digitos  from cie_10 where cod_cie_10 = \'value_columna\'', NULL, NULL),
(101, 9, 9, 'cod_diagnostico', 'COD DIAGNOSTICO', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(108, 10, 10, 'txt_descripcion', 'DESCRIPCION', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(107, 10, 10, 'cod_3_digitos', 'COD 4 DIGITOS', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(106, 10, 10, 'cod_cie_10', 'COD CIE 10', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(105, 9, 9, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(110, 11, 11, 'cod_entidad', 'ENTIDAD', NULL, 4, NULL, 'select cod_entidad,txt_nombre from entidad where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(109, 11, 11, 'cod_entidad_tipo_atencion', 'COD ENTIDAD TIPO ATENCION', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(111, 11, 11, 'cod_tipo_atencion', 'TIPO ATENCION', NULL, 4, NULL, 'select cod_tipo_atencion,txt_nombre from tipo_atencion where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(112, 11, 11, 'num_valor', 'VALOR', NULL, 2, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(116, 12, 12, 'cant_sesiones_autorizadas', 'SESIONES AUTORIZADAS', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(117, 12, 12, 'cant_sesiones_faltantes', 'SESIONES FALTANTES', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(118, 2, 2, 'cod_paciente_categoria', 'CATEGORIA CONTIZANTE', '', 4, 0, 'select cod_paciente_categoria, concat(txt_nombre,\' - \',val_categoria) from paciente_categoria where ind_activo =1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 16, NULL, 255, '', NULL, NULL),
(96, 8, 8, 'cod_motivo_consulta', 'CAUSA EXTERNA / MOTIVO CONSULTA', '13', 4, NULL, 'select cod_motivo_consulta,txt_nombre from motivo_consulta where ind_activo=1 order by txt_nombre asc', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(94, 8, 8, 'cod_entidad', 'ENTIDAD (ERP)', NULL, 4, NULL, 'select cod_entidad,txt_nombre from entidad where ind_activo = 1 order by txt_nombre asc', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(92, 8, 8, 'num_autorizacion', 'NRO. AUTORIZACIÓN ENTIDAD', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(93, 8, 8, 'cod_paciente', 'PACIENTE', NULL, 7, 2, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, 'select cod_paciente, concat(txt_nombre,\' \',txt_apellido) as txt_nombre from paciente where (txt_identificacion <> \'\' and txt_identificacion = value_columna) or (cod_paciente = value_columna)', NULL, NULL),
(91, 8, 8, 'cod_autorizacion', 'NRO. AUTORIZACION INTERNA', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(124, 8, 8, 'copago_porcentaje', 'COPAGO (%)', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 13, NULL, 255, NULL, NULL, NULL),
(127, 13, 13, 'cod_estado_factura', 'ESTADO', NULL, 4, NULL, 'select cod_estado_factura,txt_nombre from estado_factura where ind_activo = 1', NULL, 0, 1, 1, 1, 1, 0, 0, 1, 1, 3, NULL, 255, NULL, NULL, NULL),
(260, 24, 24, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, '2014-07-15 22:41:53', 1),
(261, 24, 24, 'txt_apellido', 'APELLIDO', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 1, 3, NULL, 255, NULL, '2014-07-15 22:41:53', 1),
(125, 13, 13, 'cod_factura', 'COD FACTURA', NULL, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(128, 13, 13, 'fec_registro', 'FEC REGISTRO', NULL, 8, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(129, 1, 1, 'cod_tipo_factura', 'TIPO FACTURACION', '', 4, 0, 'select cod_tipo_factura,txt_nombre from tipo_factura where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 11, NULL, 255, '', NULL, NULL),
(130, 14, 14, 'cod_resolucion_dian', 'COD INTERNO (RESOLUCION DIAN)', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(131, 14, 14, 'num_resolucion', 'NUMERO RESOLUCION', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 1, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(132, 14, 14, 'num_rango_inicial', 'RANGO INICIAL', NULL, 5, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(133, 14, 14, 'num_rango_final', 'RANGO FINAL', NULL, 5, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(134, 14, 14, 'fec_resolucion', 'FEC RESOLUCION', NULL, 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(135, 14, 14, 'ind_activo', 'ACTIVO', NULL, 4, NULL, 'select cod_booleano,txt_nombre  from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(136, 14, 14, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(137, 8, 8, 'fec_programada', 'FECHA INICIO PROGRAMADA', '', 8, 0, '', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 14, NULL, 255, '', NULL, NULL),
(138, 9, 9, 'ind_principal', 'PRINCIPAL', '', 4, 0, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 6, NULL, 255, '', NULL, NULL),
(139, 8, 8, 'txt_ubicacion', 'UBICACIÓN', '', 1, 0, '', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 15, NULL, 255, '', NULL, NULL),
(140, 8, 8, 'ind_facturar_sin_terminar', 'FACTURAR SIN TERMINAR', '0', 4, 0, 'select * from booleano', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 16, NULL, 255, '', NULL, NULL),
(141, 1, 1, 'txt_celular', 'CELULAR', '', 1, 0, '', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 4, NULL, 255, '', NULL, NULL),
(142, 8, 8, 'val_compartido', 'VALOR COMPARTIDO', '', 2, 0, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 17, NULL, 255, '', NULL, NULL),
(143, 8, 8, 'ind_alto_costo', 'ALTO COSTO', '0', 4, 0, 'select * from booleano', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 18, NULL, 255, '', NULL, NULL),
(144, 14, 14, 'txt_prefijo', 'PREFIJO', '', 1, 0, '', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 3, NULL, 255, '', NULL, NULL),
(145, 8, 8, 'cod_tipo_diagnostico', 'TIPO DIAGNOSTICO', '3', 4, 0, 'select cod_tipo_diagnostico,txt_nombre from tipo_diagnostico where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 19, NULL, 255, '', NULL, NULL),
(146, 2, 2, 'cod_unidad_medida_edad', 'U. M. EDAD', '1', 4, 0, 'select cod_unidad_medida_edad,txt_nombre from unidad_medida_edad where ind_activo = 1', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 11, NULL, 255, '', NULL, NULL),
(147, 2, 2, 'cod_ciudad', 'CIUDAD RESIDENCIA', '31', 4, 0, 'select cod_ciudad, txt_nombre from ciudad where ind_activo = 1 order by txt_nombre', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, '', NULL, NULL),
(148, 2, 2, 'cod_zona_residencia', 'ZONA RESIDENCIA', '1', 4, 0, 'select cod_zona_residencia, txt_nombre from zona_residencia where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, '', NULL, NULL),
(149, 1, 1, 'txt_nombre_rips', 'NOMBRE (RIPS)', '', 1, 0, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 4, NULL, 255, '', NULL, NULL),
(150, 1, 1, 'txt_codigo_entidad', 'Codigo entidad (Ej. EPS013)', '', 1, 0, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 4, NULL, 255, '', NULL, NULL),
(151, 1, 1, 'num_plazo_pago', 'PLAZO PAGO (DIAS)', '', 2, 0, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 4, NULL, 255, '', NULL, NULL),
(152, 1, 1, 'val_rete', 'RETEFUENTE (%) (SEPARADO POR PUNTO)', '', 2, 0, '', NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 12, NULL, 255, '', NULL, NULL),
(153, 4, 4, 'cod_autorizacion', 'NRO. AUTORIZACION (INTERNA)', '', 1, 0, '', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 14, NULL, 255, '', NULL, NULL),
(156, 8, 8, 'ind_tiene_observacion', 'OBSERVACION', '', 4, 0, 'select * from booleano', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 21, NULL, 255, '', NULL, NULL),
(155, 8, 8, 'txt_observacion', 'OBSERVACION', '', 6, 0, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 20, NULL, 255, '', NULL, NULL),
(157, 2, 2, 'txt_responsable', 'RESPONSABLE', '', 1, 0, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 20, NULL, 255, '', NULL, NULL),
(158, 2, 2, 'cod_parentesco_2', 'PARENTESCO RESPONSABLE', '', 4, 0, 'select * from parentesco where ind_activo = 1', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 21, NULL, 255, '', NULL, NULL),
(159, 2, 2, 'txt_tel_responsable', 'TELEFONO RESPONSABLE', '', 1, 0, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 22, NULL, 255, '', NULL, NULL),
(160, 2, 2, 'cod_entidad_2', 'ENTIDAD (EAPB)', '', 4, 0, 'select * from entidad where ind_activo = 1', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 14, NULL, 255, '', NULL, NULL),
(168, 15, 15, 'txt_email', 'EMAIL', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 0, NULL, 1, 8, NULL, 255, NULL, NULL, NULL),
(166, 15, 15, 'txt_login', 'LOGIN', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 1, NULL, 1, 6, NULL, 255, NULL, NULL, NULL),
(167, 15, 15, 'txt_password', 'PASSWORD', NULL, 16, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, NULL, 1, 7, NULL, 255, NULL, NULL, NULL),
(165, 15, 15, 'cod_estado_seg_usuario', 'ESTADO USUARIO', '1', 4, NULL, 'select cod_estado_seg_usuario,txt_nombre from estado_seg_usuario where ind_activo = 1', NULL, 0, 1, 1, 1, 1, 0, 0, NULL, 1, 5, NULL, 255, NULL, NULL, NULL),
(164, 15, 15, 'num_identificacion', 'NO IDENTIFICACION', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 1, NULL, 1, 4, NULL, 255, NULL, NULL, NULL),
(163, 15, 15, 'cod_tipo_identificacion', 'TIPO IDENTIFICACION', NULL, 4, NULL, 'select cod_tipo_identificacion, txt_nombre from tipo_identificacion where ind_activo = 1', NULL, 0, 1, 1, 1, 1, 0, 0, NULL, 1, 3, NULL, 255, NULL, NULL, NULL),
(162, 15, 15, 'txt_nombre', 'NOMBRE (COMPLETO)', NULL, 15, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, NULL, 1, 2, NULL, 255, NULL, NULL, NULL),
(161, 15, 15, 'cod_usuario_pk', 'COD USUARIO', NULL, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, NULL, 1, 1, NULL, 255, NULL, NULL, NULL),
(169, 15, 15, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, 0, NULL, 1, 9, NULL, 255, NULL, NULL, NULL),
(172, 16, 16, 'cod_perfil', 'PERFIL', NULL, 4, NULL, 'select cod_perfil,txt_nombre from seg_perfil where ind_activo = 1 and ind_bloqueado = 0', NULL, 0, 1, NULL, NULL, 1, 0, 0, NULL, 1, 3, NULL, 255, NULL, NULL, NULL),
(171, 16, 16, 'cod_usuario_pk', 'COD USUARI PK', NULL, 5, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, NULL, 1, 2, NULL, 255, NULL, NULL, NULL),
(170, 16, 16, 'cod_perfil_usuario', 'COD PERFIL USUARIO', NULL, 5, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, NULL, 1, 1, NULL, 255, NULL, NULL, NULL),
(173, 16, 16, 'txt_nota', 'NOTA', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 1, 4, NULL, 255, NULL, NULL, NULL),
(176, 17, 17, 'ind_activo', 'ACTIVO', NULL, 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(175, 17, 17, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(174, 17, 17, 'cod_perfil_pk', 'COD PERFIL', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(177, 17, 17, 'fec_registro', 'FEC REGISTRO', NULL, 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(178, 22, 22, 'cod_columna_tabla', 'COD COLUMNA TABLA', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(179, 22, 22, 'cod_tabla_pk', 'TABLA', NULL, 4, NULL, 'select cod_tabla, txt_nombre from tabla_autonoma order by txt_nombre asc', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(180, 22, 22, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(181, 22, 22, 'txt_alias', 'ALIAS', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(182, 22, 22, 'txt_default_value', 'VALOR DEFAULT', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(183, 22, 22, 'cod_tipo_dato_columna', 'TIPO DATO', NULL, 4, NULL, 'select * from tipo_dato_columna_tabla where ind_activo = 1 order by txt_nombre asc', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(184, 22, 22, 'cod_ventana_emergente', 'VENTANA EMERGENTE', NULL, 4, NULL, 'select cod_tabla, txt_nombre from tabla_autonoma order by txt_nombre asc', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(185, 22, 22, 'txt_script_cursor', 'SCRIPT CURSOR', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, NULL, NULL),
(186, 22, 22, 'ind_pk', 'CAMPO PRIMARIO', NULL, 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 9, NULL, 255, NULL, NULL, NULL),
(187, 22, 22, 'ind_filtro', 'FILTRO', NULL, 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 10, NULL, 255, NULL, NULL, NULL),
(188, 22, 22, 'ind_not_null', 'PERMITIR NULO', NULL, 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 11, NULL, 255, NULL, NULL, NULL),
(189, 22, 22, 'ind_bloqueado', 'SOLO LECTURA', NULL, 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 12, NULL, 255, NULL, NULL, NULL),
(190, 22, 22, 'ind_unique', 'REGISTRO UNICO', NULL, 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 13, NULL, 255, NULL, NULL, NULL),
(191, 22, 22, 'ind_input_multiple', 'LISTBOX MULTIPLE', NULL, 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 14, NULL, 255, NULL, NULL, NULL),
(192, 22, 22, 'ind_visible_form', 'MOSTRAR EN FORMULARIO', NULL, 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 15, NULL, 255, NULL, NULL, NULL),
(193, 22, 22, 'num_orden_insert', 'ORDEN', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 16, NULL, 255, NULL, NULL, NULL),
(194, 22, 22, 'max_lenght', 'LIMITE CARACTERES', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 17, NULL, 255, NULL, NULL, NULL),
(195, 22, 22, 'txt_script_lista_valor', 'SCRIPT PARA VENTANA', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 18, NULL, 255, NULL, NULL, NULL),
(196, 22, 22, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, 0, 0, 1, 19, NULL, 255, NULL, NULL, NULL),
(197, 18, 18, 'cod_empleado', 'COD EMPLEADO', NULL, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(198, 18, 18, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, NULL, NULL),
(199, 18, 18, 'txt_apellido', 'APELLIDO', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, NULL, NULL),
(200, 18, 18, 'num_identificacion', 'NO IDENTIFICACION', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 1, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(201, 18, 18, 'cod_tipo_identificacion', 'TIPO IDENTIFICACION', '1', 4, NULL, 'select cod_tipo_identificacion, txt_nombre from tipo_identificacion where ind_activo = 1 order by txt_nombre asc', NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(202, 18, 18, 'ind_activo', 'ACTIVO', '1', 4, NULL, 'select * from booleano', NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(203, 18, 18, 'txt_telefono', 'TELEFONO', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(204, 18, 18, 'txt_celular', 'CELULAR', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, NULL, NULL),
(205, 18, 18, 'txt_email', 'EMAIL', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, NULL, NULL, NULL),
(206, 18, 18, 'txt_login', 'LOGIN', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 0, 1, 10, NULL, 255, NULL, NULL, NULL),
(207, 18, 18, 'txt_password', 'PASSWORD', NULL, 16, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 11, NULL, 255, NULL, NULL, NULL),
(208, 18, 18, 'cod_ciudad', 'CIUDAD', NULL, 4, NULL, 'select cod_ciudad, txt_nombre from ciudad where ind_activo = 1 order by txt_nombre asc', NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 12, NULL, 255, NULL, NULL, NULL),
(209, 18, 18, 'txt_direccion', 'DIRECCION', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 13, NULL, 255, NULL, NULL, NULL),
(210, 18, 18, 'cod_eps', 'EPS', NULL, 4, NULL, 'select cod_aministradora_seguridad, txt_nombre from administradora_seguridad where cod_tipo_administradora = 2 and ind_activo = 1 order by txt_nombre asc', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 14, NULL, 255, NULL, NULL, NULL),
(211, 18, 18, 'cod_arl', 'ARL', NULL, 4, NULL, 'select cod_aministradora_seguridad, txt_nombre from administradora_seguridad where cod_tipo_administradora = 1 and ind_activo = 1 order by txt_nombre asc', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 15, NULL, 255, NULL, NULL, NULL),
(212, 18, 18, 'cod_afp', 'AFP', NULL, 4, NULL, 'select cod_aministradora_seguridad, txt_nombre from administradora_seguridad where cod_tipo_administradora = 5 and ind_activo = 1 order by txt_nombre asc', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 16, NULL, 255, NULL, NULL, NULL),
(213, 18, 18, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, 0, 0, 1, 17, NULL, 255, NULL, NULL, NULL),
(214, 19, 19, 'cod_cliente', 'COD CLIENTE', NULL, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, NULL, NULL),
(215, 19, 19, 'cod_empresa', 'EMPRESA', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 2, NULL, 255, NULL, NULL, NULL),
(216, 19, 19, 'cod_tipo_identificacion', 'TIPO IDENTIFICACION', '1', 4, NULL, 'select cod_tipo_identificacion, txt_nombre from tipo_identificacion where ind_activo = 1 ', NULL, 0, 1, 1, 1, 1, 0, 0, 1, 1, 3, NULL, 255, NULL, NULL, NULL),
(217, 19, 19, 'num_identificacion', 'NO IDENTIFICACION', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 1, 0, 1, 4, NULL, 255, NULL, NULL, NULL),
(218, 19, 19, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 5, NULL, 255, NULL, NULL, NULL),
(219, 19, 19, 'txt_apellido', 'APELLIDO', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 1, 6, NULL, 255, NULL, NULL, NULL),
(220, 19, 19, 'txt_direccion', 'DIRECCION', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, NULL, NULL),
(221, 19, 19, 'txt_telefono', 'TELEFONO', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 8, NULL, 255, NULL, NULL, NULL),
(222, 19, 19, 'txt_telefono_2', 'TELEFONO 2', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, NULL, NULL, NULL),
(223, 19, 19, 'txt_celular', 'CELULAR', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 10, NULL, 255, NULL, NULL, NULL),
(224, 19, 19, 'txt_fax', 'FAX', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 11, NULL, 255, NULL, NULL, NULL),
(225, 19, 19, 'txt_email', 'EMAIL', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 12, NULL, 255, NULL, NULL, NULL),
(226, 19, 19, 'txt_website', 'WEBSITE', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 13, NULL, 255, NULL, NULL, NULL),
(227, 19, 19, 'cod_estado_cliente', 'ESTADO', '1', 4, NULL, 'select cod_estado_cliente, txt_nombre from estado_cliente where ind_activo = 1 order by txt_nombre asc', NULL, 0, 1, 1, 1, 1, 1, 0, 1, 1, 14, NULL, 255, NULL, NULL, NULL),
(228, 19, 19, 'cod_regimen', 'REGIMEN', NULL, 4, NULL, 'select cod_regimen, txt_nombre from regimen where ind_activo = 1 order by txt_nombre asc', NULL, 0, 1, NULL, NULL, 0, 0, 0, 1, 1, 15, NULL, 255, NULL, NULL, NULL),
(229, 19, 19, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, 0, 0, 1, 16, NULL, 255, NULL, NULL, NULL),
(230, 19, 19, 'cod_tipo_cliente', 'TIPO CLIENTE', '', 4, 0, 'select * from tipo_cliente where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 14, NULL, 255, '', '2014-05-30 19:49:20', 1),
(231, 19, 19, 'url_foto', 'FOTO (OPCIONAL)', '', 9, 0, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 15, NULL, 255, '', '2014-06-13 10:42:16', 1),
(259, 24, 24, 'cod_proveedor', 'COD PROVEEDOR', NULL, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, '2014-07-15 22:41:53', 1),
(238, 21, 21, 'val_precio_venta', 'PRECIO (VENTA)', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 7, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(237, 21, 21, 'val_precio_costo', 'PRECIO (COSTO)', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 6, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(236, 21, 21, 'num_peso', 'PESO (Kg)', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 5, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(235, 21, 21, 'num_cantidad', 'CANTIDAD', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 0, 0, 0, 4, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(234, 21, 21, 'cod_unidad_medida', 'UNIDAD MEDIDA', '1', 4, NULL, 'select * from unidad_medida', NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 3, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(233, 21, 21, 'txt_nombre', 'NOMBRE', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 1, 0, 1, 2, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(232, 21, 21, 'cod_producto', 'COD PRODCUTO', NULL, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(239, 21, 21, 'val_iva_porc', 'IVA (%)', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(240, 21, 21, 'txt_descripcion', 'DESCRIPCION', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 9, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(241, 21, 21, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, 10, NULL, 255, NULL, '2014-06-15 17:58:48', 1),
(252, 20, 20, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 11, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(251, 20, 20, 'txt_observacion', 'OBSERVACION', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 10, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(248, 20, 20, 'val_negociado', 'VALOR NEGOCIADO', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 7, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(249, 20, 20, 'val_recibido', 'VALOR RECIBIDO', '0', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 8, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(250, 20, 20, 'val_saldo', 'VALOR SALDO', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 0, 0, 1, 9, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(247, 20, 20, 'val_real', 'VALOR TOTAL', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 0, 0, 1, 6, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(246, 20, 20, 'cod_estado_pedido', 'ESTADO', '1', 4, NULL, 'select cod_estado_pedido,txt_nombre from estado_pedido where ind_activo = 1', NULL, 0, 1, 1, 1, 1, 1, 0, 1, 1, 5, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(245, 20, 20, 'cod_forma_pago', 'FORMA DE PAGO', '1', 4, NULL, ' select cod_forma_pago,txt_nombre from forma_pago where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 1, 1, 4, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(242, 20, 20, 'cod_pedido', 'COD PEDIDO', NULL, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(243, 20, 20, 'cod_cliente', 'CLIENTE', NULL, 7, 19, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 2, NULL, 255, '\r\nselect  cod_cliente, \r\n        concat(cod_cliente,\' - \',txt_nombre_completo) as txt_nombre\r\nfrom  (\r\n        select c.*,\r\n        if(txt_apellido is not null,concat(txt_nombre,\' \',txt_apellido),concat(txt_nombre)) as txt_nombre_completo \r\n        from cliente c\r\n      ) cliente\r\nwhere ind_bloqueado = 0 \r\nand ((num_identificacion <> \'\' and num_identificacion = \'value_columna\') or (cod_cliente = \'value_columna\' or txt_nombre_completo like \'%value_columna%\'))', '2014-06-23 21:25:02', 1),
(244, 20, 20, 'cod_factura', 'FACTURA', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 0, 3, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(253, 23, 23, 'cod_pedido_detalle', 'COD DETALLE', NULL, 5, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(254, 23, 23, 'cod_pedido', 'COD PEDIDO', NULL, 5, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(255, 23, 23, 'cod_producto', 'PRODUCTO', NULL, 19, NULL, 'select  cod_producto,concat(upper(t.txt_nombre),\' (\',um.txt_nombre,\')  (CANT: \',t.num_cantidad,\')\') as txt_nombre \r\nfrom producto t, unidad_medida um \r\nwhere   t.cod_unidad_medida = um.cod_unidad_medida\r\ncondiciones_script_consulta\r\nand     t.cod_estado_producto = 1 order by t.txt_nombre asc', 'Busca y selecciona el producto', 0, 1, 1, 1, 1, 0, 0, 0, 1, 3, 230, 255, NULL, '2014-06-23 21:44:41', 1),
(256, 23, 23, 'cantidad', 'CANTIDAD', NULL, 5, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(257, 23, 23, 'val_precio_unitario', 'PRECIO UNITARIO', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 5, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(258, 23, 23, 'val_total', 'PRECIO TOTAL', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 6, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(262, 24, 24, 'cod_tipo_identificacion', 'TIPO IDENTIFICACION', '1', 4, NULL, 'select  cod_tipo_identificacion,txt_nombre from tipo_identificacion where ind_activo = 1 order by txt_nombre asc', NULL, 0, 1, 0, 1, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, '2014-07-15 22:41:53', 1),
(263, 24, 24, 'num_identificacion', 'NO IDENTIFICACION', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 5, NULL, 255, NULL, '2014-07-15 22:41:53', 1),
(264, 24, 24, 'txt_telefono', 'TELEFONO', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 6, NULL, 255, NULL, '2014-07-15 22:41:53', 1),
(265, 24, 24, 'txt_direccion', 'DIRECCION', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, '2014-07-15 22:41:53', 1),
(266, 24, 24, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, 8, NULL, 255, NULL, '2014-07-15 22:41:53', 1),
(276, 25, 25, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 9, NULL, 255, NULL, '2014-07-19 00:43:45', 1),
(274, 25, 25, 'txt_nota', 'NOTA', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 8, NULL, 255, NULL, '2014-07-19 00:43:45', 1),
(273, 25, 25, 'cod_manifiesto', 'COD MANIFIESTO', NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 0, 0, 1, 7, NULL, 255, NULL, '2014-07-19 00:43:45', 1),
(272, 25, 25, 'num_cantidad', 'CANTIDAD', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 6, NULL, 255, NULL, '2014-07-19 00:43:45', 1),
(271, 25, 25, 'cod_unidad_medida', 'UNIDAD MEDIDA', NULL, 4, NULL, 'select cod_unidad_medida,txt_nombre from unidad_medida where ind_activo = 1', NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, 5, NULL, 255, NULL, '2014-07-19 00:43:45', 1),
(270, 25, 25, 'val_flete', 'VAL FLETE', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, '2014-07-19 00:43:45', 1),
(267, 25, 25, 'cod_entrada_producto', 'COD ENTRADA PRODUCTO', NULL, 5, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, '2014-07-19 00:43:45', 1),
(275, 21, 21, 'cod_estado_producto', 'ESTADO PRODUCTO', '1', 4, NULL, 'select cod_estado_producto,txt_nombre from estado_producto where ind_activo = 1 order by txt_nombre asc', NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 11, NULL, 255, NULL, '2014-07-16 00:59:18', 1),
(269, 25, 25, 'cod_producto', 'PRODUCTO', NULL, 19, NULL, 'select  cod_producto,concat(upper(t.txt_nombre),\' (\',um.txt_nombre,\')  (CANT: \',t.num_cantidad,\')\') as txt_nombre \r\nfrom producto t, unidad_medida um \r\nwhere   t.cod_unidad_medida = um.cod_unidad_medida\r\ncondiciones_script_consulta\r\nand     t.cod_estado_producto = 1 order by t.txt_nombre asc', NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 3, NULL, 255, 'select cod_producto, \r\n        t.txt_nombre\r\n\r\nfrom producto t where (t.cod_producto = \'value_columna\' or txt_nombre like \'%value_columna%\')', '2014-07-19 00:43:45', 1),
(268, 25, 25, 'cod_proveedor', 'PROVEEDOR', NULL, 7, 24, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 2, NULL, 255, 'select cod_proveedor, concat(t.txt_nombre,\' \',ifnull(t.txt_apellido, \'\')) from proveedor t where (cod_proveedor = \'value_columna\' or num_identificacion = \'value_columna\' or txt_nombre like \'%value_columna%\')', '2014-07-19 00:43:45', 1),
(277, 19, 19, 'ind_credito', 'PERMITE CREDITO', '1', 4, 0, 'select * from booleano', '', 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 16, NULL, 0, '', '2014-11-20 08:12:27', 1),
(278, 13, 13, 'cod_cliente', 'CLIENTE', '', 7, 19, '', '', 0, 1, 1, 1, 1, 0, 0, 0, 1, 5, NULL, 0, '\r\nselect  cod_cliente, \r\n        concat(cod_cliente,\' - \',txt_nombre_completo) as txt_nombre\r\nfrom  (\r\n        select c.*,\r\n        if(txt_apellido is not null,concat(txt_nombre,\' \',txt_apellido),concat(txt_nombre)) as txt_nombre_completo \r\n        from cliente c\r\n      ) cliente\r\nwhere ind_bloqueado = 0 \r\nand ((num_identificacion <> \'\' and num_identificacion = \'value_columna\') or (cod_cliente = \'value_columna\' or txt_nombre_completo like \'%value_columna%\'))', '2014-11-25 23:13:36', 1),
(279, 27, 27, 'cod_dia_festivo', 'COD DIA FESTIVO', NULL, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, '2015-01-12 19:08:01', 1),
(280, 27, 27, 'fec_festivo', 'FEC FESTIVO', NULL, 3, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 0, 1, 0, 1, 2, NULL, 255, NULL, '2015-01-12 19:08:01', 1),
(281, 27, 27, 'txt_descripcion', 'DESCRIPCION', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 3, NULL, 255, NULL, '2015-01-12 19:08:01', 1),
(282, 27, 27, 'ind_activo', 'ACTIVO', '1', 4, NULL, 'select * from booleano', NULL, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, '2015-01-12 19:08:01', 1),
(283, 27, 27, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 0, 0, 1, 5, NULL, 255, NULL, '2015-01-12 19:08:01', 1),
(290, 28, 28, 'cod_proveedor', 'PROVEEDOR', NULL, 7, 24, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 2, NULL, 255, 'select cod_proveedor, concat(t.txt_nombre,\' \',ifnull(t.txt_apellido, \'\')) as \"txt_nombre\" from proveedor t where (cod_proveedor = \'value_columna\' or num_identificacion = \'value_columna\' or txt_nombre like \'%value_columna%\')', '2014-06-23 21:25:02', 1),
(291, 28, 28, 'cod_pedido_compra', 'COD PEDIDO COMPRA', NULL, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(292, 28, 28, 'cod_forma_pago', 'FORMA DE PAGO', '1', 4, NULL, ' select cod_forma_pago,txt_nombre from forma_pago where ind_activo = 1', NULL, 0, 1, NULL, NULL, 1, 0, 0, 1, 1, 4, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(293, 28, 28, 'cod_estado_pedido', 'ESTADO', '1', 4, NULL, 'select cod_estado_pedido,txt_nombre from estado_pedido where ind_activo = 1', NULL, 0, 1, 1, 1, 1, 1, 0, 1, 1, 5, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(294, 28, 28, 'val_total', 'VALOR TOTAL', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 0, 0, 1, 8, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(295, 28, 28, 'val_saldo', 'VALOR SALDO', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 0, 0, 1, 9, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(296, 28, 28, 'val_pagado', 'VALOR PAGADO', '0', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 7, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(298, 28, 28, 'txt_observacion', 'OBSERVACION', NULL, 6, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 10, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(299, 28, 28, 'fec_registro', 'FEC REGISTRO', 'now()', 8, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 11, NULL, 255, NULL, '2014-06-23 21:25:02', 1),
(300, 29, 29, 'cod_pedido_compra_detalle', 'COD DETALLE', NULL, 5, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, 0, 1, 1, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(301, 29, 29, 'cod_pedido_compra', 'COD PEDIDO COMPRA', NULL, 5, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 2, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(302, 29, 29, 'cod_producto', 'PRODUCTO', NULL, 19, NULL, 'select  cod_producto,concat(upper(t.txt_nombre),\' (\',um.txt_nombre,\')  (CANT: \',t.num_cantidad,\')\') as txt_nombre \r\nfrom producto t, unidad_medida um \r\nwhere   t.cod_unidad_medida = um.cod_unidad_medida\r\ncondiciones_script_consulta\r\nand     t.cod_estado_producto = 1 \r\nand cod_tipo_producto=2\r\norder by t.txt_nombre asc', 'Busca y selecciona el producto', 0, 1, 1, 1, 1, 0, 0, 0, 1, 3, 230, 255, NULL, '2014-06-23 21:44:41', 1),
(303, 29, 29, 'cantidad', 'CANTIDAD', NULL, 5, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 4, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(304, 29, 29, 'val_precio_unitario', 'PRECIO UNITARIO', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 5, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(305, 29, 29, 'val_total', 'PRECIO TOTAL', NULL, 2, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 6, NULL, 255, NULL, '2014-06-23 21:44:41', 1),
(306, 21, 21, 'cod_tipo_producto', 'TIPO PRODUCTO', NULL, 4, NULL, 'select cod_tipo_producto,txt_nombre from tipo_producto where ind_activo = 1 order by txt_nombre', NULL, 0, 1, 1, 1, 1, 0, 0, 0, 1, 10, NULL, 255, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicion_consulta`
--

CREATE TABLE `condicion_consulta` (
  `cod_condicion_consulta` int(11) NOT NULL,
  `cod_perfil` int(11) DEFAULT NULL,
  `cod_tabla` int(11) DEFAULT NULL,
  `cod_reporte_tabla` int(11) DEFAULT NULL,
  `cod_entidad` int(11) DEFAULT NULL,
  `fec_consulta` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `condicion_consulta`
--

INSERT INTO `condicion_consulta` (`cod_condicion_consulta`, `cod_perfil`, `cod_tabla`, `cod_reporte_tabla`, `cod_entidad`, `fec_consulta`) VALUES
(2, 7, 2, 32, 4, '2013-05-01 08:00:00'),
(3, 6, 2, 33, 2, '2013-05-01 08:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_archivos`
--

CREATE TABLE `control_archivos` (
  `cod_control_archivos` int(11) NOT NULL,
  `fec_remision` datetime DEFAULT NULL,
  `txt_codigo_archivo` varchar(255) DEFAULT NULL,
  `cod_nombre_archivos` int(11) DEFAULT NULL,
  `num_total_registros` int(11) DEFAULT NULL,
  `cod_entidad` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `control_archivos`
--

INSERT INTO `control_archivos` (`cod_control_archivos`, `fec_remision`, `txt_codigo_archivo`, `cod_nombre_archivos`, `num_total_registros`, `cod_entidad`, `ind_bloqueado`, `cod_usuario`) VALUES
(1, '2014-01-28 17:09:53', 'AC2014003', 3, 34, 4, 0, 1),
(2, '2014-01-31 12:17:55', 'AC2014004', 4, 1, 6, 0, 1),
(3, '2014-01-31 12:19:02', 'US2014004', 4, 1, 6, 0, 1),
(4, '2014-04-02 11:36:53', 'AC2014006', 6, 5, 6, 0, 1),
(5, '2014-04-02 11:37:09', 'AC2014008', 8, 1, 6, 0, 1),
(11, '2014-04-24 09:36:58', 'AF2014010', 10, 4, 4, 0, 1),
(10, '2014-04-24 09:36:43', 'US2014010', 10, 2, 4, 0, 1),
(9, '2014-04-24 09:36:32', 'AC2014010', 10, 3, 4, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `cod_departamento` int(11) NOT NULL,
  `cod_dane_departamento` varchar(11) DEFAULT NULL,
  `cod_pais` varchar(11) DEFAULT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `ind_activo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`cod_departamento`, `cod_dane_departamento`, `cod_pais`, `txt_nombre`, `ind_activo`) VALUES
(1, '76', '1', 'VALLE', 1),
(2, NULL, '1', '', 0),
(3, '19', '1', 'cauca', 1),
(4, '66', '1', 'risaralda', 1),
(5, '11', '1', 'bogota d.c.', 1),
(6, '11', '1', 'bogota dc', 1),
(7, '68', '1', 'santander', 1),
(8, '08', '1', 'atlantico', 1),
(9, '05', '1', 'antioquia', 1),
(10, '27', '1', 'choco', 1),
(11, '52', '1', 'nariÑo', 1),
(12, '25', '1', 'cundinamarca', 1),
(13, '54', '1', 'norte de santander', 1),
(14, '73', '1', 'tolima', 1),
(15, '63', '1', 'quindio', 1),
(16, '17', '1', 'caldas', 1),
(17, '41', '1', 'huila', 1),
(18, '86', '1', 'putumayo', 1),
(19, '20', '1', 'cesar', 1),
(20, '50', '1', 'meta', 1),
(21, '47', '1', 'magdalena', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_nombre_archivos`
--

CREATE TABLE `detalle_nombre_archivos` (
  `cod_detalle_nombre_archivos` int(11) NOT NULL,
  `cod_nombre_archivos` int(11) DEFAULT NULL,
  `cod_factura` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia_festivo`
--

CREATE TABLE `dia_festivo` (
  `cod_dia_festivo` int(11) NOT NULL,
  `fec_festivo` date DEFAULT NULL,
  `txt_descripcion` text,
  `fec_registro` datetime DEFAULT NULL,
  `ind_bloqueado` int(1) DEFAULT NULL,
  `ind_activo` int(1) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dia_festivo`
--

INSERT INTO `dia_festivo` (`cod_dia_festivo`, `fec_festivo`, `txt_descripcion`, `fec_registro`, `ind_bloqueado`, `ind_activo`, `cod_usuario`) VALUES
(1, '2014-01-01', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(2, '2014-01-06', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(3, '2014-03-24', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(4, '2014-04-13', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(5, '2014-04-17', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(6, '2014-04-18', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(7, '2014-04-20', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(8, '2014-05-01', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(9, '2014-05-01', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(10, '2014-06-02', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(11, '2014-06-23', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(12, '2014-06-30', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(13, '2014-07-20', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(14, '2014-08-07', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(15, '2014-08-18', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(16, '2014-10-13', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(17, '2014-11-03', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(18, '2014-11-17', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(19, '2014-12-08', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(20, '2014-12-25', NULL, '2014-11-03 19:04:24', 0, 1, 1),
(21, '2015-01-01', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(22, '2015-12-01', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(23, '2015-03-23', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(24, '2015-03-29', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(25, '2015-04-02', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(26, '2015-04-03', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(27, '2015-04-05', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(28, '2015-05-01', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(29, '2015-05-18', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(30, '2015-06-08', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(31, '2015-06-15', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(32, '2015-06-29', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(33, '2015-07-20', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(34, '2015-08-07', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(35, '2015-08-17', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(36, '2015-10-12', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(37, '2015-11-02', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(38, '2015-11-16', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(39, '2015-12-08', NULL, '2014-11-03 19:33:24', 0, 1, 1),
(40, '2015-12-25', NULL, '2014-11-03 19:33:24', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia_mes`
--

CREATE TABLE `dia_mes` (
  `num_dia` int(11) NOT NULL,
  `num_mes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `cod_empleado` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `txt_apellido` varchar(255) DEFAULT NULL,
  `num_identificacion` varchar(255) DEFAULT NULL,
  `cod_tipo_identificacion` int(11) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL,
  `txt_telefono` varchar(100) DEFAULT NULL,
  `txt_celular` varchar(100) DEFAULT NULL,
  `txt_email` varchar(255) DEFAULT NULL,
  `txt_login` varchar(255) DEFAULT NULL,
  `txt_password` varchar(255) DEFAULT NULL,
  `cod_ciudad` int(11) DEFAULT NULL,
  `txt_direccion` varchar(255) DEFAULT NULL,
  `cod_eps` int(11) DEFAULT NULL,
  `cod_arl` int(11) DEFAULT NULL,
  `cod_afp` int(11) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada_producto`
--

CREATE TABLE `entrada_producto` (
  `cod_entrada_producto` int(11) NOT NULL,
  `cod_proveedor` int(11) DEFAULT NULL,
  `cod_producto` int(11) DEFAULT NULL,
  `cod_estado_entrada_producto` int(11) DEFAULT NULL,
  `val_flete` int(11) DEFAULT NULL,
  `cod_unidad_medida` int(11) DEFAULT NULL,
  `num_cantidad` int(11) DEFAULT NULL,
  `cod_manifiesto` int(11) DEFAULT NULL,
  `ind_contabilizado` int(1) DEFAULT NULL,
  `txt_nota` text,
  `cod_empleado` int(255) DEFAULT NULL,
  `cod_usuario_modificacion` int(11) DEFAULT NULL,
  `fec_modificacion` datetime DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entrada_producto`
--

INSERT INTO `entrada_producto` (`cod_entrada_producto`, `cod_proveedor`, `cod_producto`, `cod_estado_entrada_producto`, `val_flete`, `cod_unidad_medida`, `num_cantidad`, `cod_manifiesto`, `ind_contabilizado`, `txt_nota`, `cod_empleado`, `cod_usuario_modificacion`, `fec_modificacion`, `fec_registro`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 1, 1, 2, 120000, 1, 0, 111, 1, 'Prueba', 0, 1, '2019-04-20 17:45:10', '2019-04-19 01:45:57', 1, 0),
(2, 1, 1, 1, 500000, 1, 50, 111222, 1, 'POrueba', NULL, 1, '2019-04-20 17:43:09', '2019-04-20 17:41:25', 1, 0),
(3, 2, 2, 1, 560000, 1, 100, NULL, 1, NULL, NULL, 1, '2019-04-20 22:57:37', '2019-04-20 17:43:16', 1, 0),
(4, 3, 3, 1, 550, 1, 120, 778, 1, NULL, NULL, 1, '2019-04-20 23:05:33', '2019-04-20 22:57:57', 1, 0),
(5, 4, 4, 1, 750000, 1, 80, NULL, 1, 'test', NULL, 1, '2019-04-22 22:33:37', '2019-04-21 22:51:55', 1, 0),
(6, 4, 5, 1, 750000, 1, 30, NULL, 1, NULL, NULL, 1, '2019-04-22 22:35:04', '2019-04-22 22:34:34', 1, 0),
(7, 7, 6, 1, 1000000, 1, 100, NULL, 1, NULL, NULL, 1, '2019-05-22 23:03:32', '2019-05-22 23:02:57', 1, 0),
(8, 7, 7, 1, 1000000, 1, 305, NULL, 1, NULL, NULL, 1, '2019-05-22 23:11:43', '2019-05-22 23:10:55', 1, 0),
(9, 4, 1, 1, 750000, 1, 100, NULL, 1, NULL, NULL, 1, '2019-05-22 23:26:00', '2019-05-22 23:24:42', 1, 0),
(10, 12, 8, 2, 800000, 1, 0, NULL, 1, NULL, NULL, 1, '2019-05-21 23:14:55', '2019-05-22 23:53:12', 1, 0),
(11, 5, 5, 1, 10000, 1, 20, NULL, 1, NULL, NULL, 1, '2019-05-26 21:50:30', '2019-05-23 23:13:03', 1, 0),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-26 21:58:07', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `cod_estado_civil` int(11) NOT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `ind_activo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_civil`
--

INSERT INTO `estado_civil` (`cod_estado_civil`, `txt_nombre`, `ind_activo`) VALUES
(1, 'SOLTERO', 1),
(2, 'CASADO', 1),
(3, 'VIUDO', 1),
(4, 'SEPARADO', 1),
(5, 'UNION LIBRE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_cliente`
--

CREATE TABLE `estado_cliente` (
  `cod_estado_cliente` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_cliente`
--

INSERT INTO `estado_cliente` (`cod_estado_cliente`, `txt_nombre`, `ind_activo`) VALUES
(1, 'Paz y salvo', 1),
(2, 'Pendiente pago', 1),
(3, 'En Mora', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_entrada_producto`
--

CREATE TABLE `estado_entrada_producto` (
  `cod_estado_entrada_producto` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_entrada_producto`
--

INSERT INTO `estado_entrada_producto` (`cod_estado_entrada_producto`, `txt_nombre`, `ind_activo`) VALUES
(2, 'ANULADA', 1),
(1, 'ACTIVA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_factura`
--

CREATE TABLE `estado_factura` (
  `cod_estado_factura` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `txt_color` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_factura`
--

INSERT INTO `estado_factura` (`cod_estado_factura`, `txt_nombre`, `txt_color`, `ind_activo`) VALUES
(1, 'Generada', '', 1),
(2, 'Impresa', '', 0),
(3, 'Radicada', NULL, 0),
(4, 'Pagada', '#00ff00', 1),
(5, 'Vencida', '#ff6666', 1),
(8, 'Anulada', '#ff8000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pedido`
--

CREATE TABLE `estado_pedido` (
  `cod_estado_pedido` int(11) NOT NULL,
  `txt_nombre` varchar(45) DEFAULT NULL,
  `txt_color` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_pedido`
--

INSERT INTO `estado_pedido` (`cod_estado_pedido`, `txt_nombre`, `txt_color`, `ind_activo`) VALUES
(1, 'REGISTRADO', '', 1),
(2, 'PAGADO', '', 1),
(3, 'ANULADO', '', 1),
(4, 'FACTURADO', '#00ff00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_producto`
--

CREATE TABLE `estado_producto` (
  `cod_estado_producto` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_producto`
--

INSERT INTO `estado_producto` (`cod_estado_producto`, `txt_nombre`, `ind_activo`) VALUES
(1, 'DISPONIBLE', 1),
(2, 'SUSPENDIDO', 1),
(3, 'AGOTADO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_seg_usuario`
--

CREATE TABLE `estado_seg_usuario` (
  `cod_estado_seg_usuario` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_seg_usuario`
--

INSERT INTO `estado_seg_usuario` (`cod_estado_seg_usuario`, `txt_nombre`, `ind_activo`) VALUES
(1, 'ACTIVO', 1),
(2, 'INACTIVO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_tabla_autonoma`
--

CREATE TABLE `estado_tabla_autonoma` (
  `cod_estado_tabla` int(11) NOT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `ind_activo` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_tabla_autonoma`
--

INSERT INTO `estado_tabla_autonoma` (`cod_estado_tabla`, `txt_nombre`, `ind_activo`) VALUES
(1, 'BLOQUEADO', 0),
(2, 'ACTIVA', 1),
(3, 'INACTIVA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evolucion_android`
--

CREATE TABLE `evolucion_android` (
  `cod_evolucion_android` int(11) NOT NULL,
  `cod_evolucion_externa` int(11) DEFAULT NULL,
  `cod_profesional_salud` int(11) DEFAULT NULL,
  `ide_paciente` int(11) DEFAULT NULL,
  `txt_fecha_atencion` varchar(10) DEFAULT NULL,
  `txt_hora_atencion` varchar(10) DEFAULT NULL,
  `cod_tipo_atencion` int(11) DEFAULT NULL,
  `txt_evolucion` text,
  `cod_estado` int(11) DEFAULT NULL,
  `cod_atencion` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `evolucion_android`
--

INSERT INTO `evolucion_android` (`cod_evolucion_android`, `cod_evolucion_externa`, `cod_profesional_salud`, `ide_paciente`, `txt_fecha_atencion`, `txt_hora_atencion`, `cod_tipo_atencion`, `txt_evolucion`, `cod_estado`, `cod_atencion`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 11, 3, 2147483647, '2013-05-15', '18:6:00', 9, 'texto de lo que se envio', 2, NULL, 17, NULL),
(2, 1, 3, 16936, '2013-01-15', '13:21:00', 9, 'tiene muchas cosas', 2, NULL, 17, 1),
(3, 2, 3, 111222333, '2013-05-09', '13:30:00', 9, 'lo que paso en', 2, NULL, 17, 1),
(4, 3, 3, 16936083, '2015-11-03', '13:31:00', 9, 'prueba de la gente', 2, NULL, 17, 1),
(5, 4, 3, 169552, '2013-05-20', '13:32:00', 9, ' texto de prueba', 2, NULL, 17, 1),
(6, 5, 3, 154878, '2013-07-07', '5:32:00', 9, 'fghdngcngdgj', 2, NULL, 17, 1),
(7, 6, 3, 1242544545, '2012-06-10', '17:51:00', 10, 'hchgfhfddsfeshyjjtfdhgrgsgff', 2, NULL, 17, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `cod_factura` int(11) NOT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_estado_factura` int(11) DEFAULT NULL,
  `cod_resolucion_dian` int(11) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `fec_modificacion` datetime DEFAULT NULL,
  `fec_vencimiento` date DEFAULT NULL,
  `num_dias_vencidos` int(11) DEFAULT NULL,
  `val_descuento` int(11) DEFAULT NULL,
  `val_iva_porc` decimal(5,2) DEFAULT NULL,
  `val_rete_porc` decimal(5,2) DEFAULT NULL,
  `val_cree_porc` decimal(5,2) DEFAULT NULL,
  `ind_reimpresa` int(11) DEFAULT NULL,
  `cod_usuario_modificacion` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_anulada` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`cod_factura`, `cod_cliente`, `cod_estado_factura`, `cod_resolucion_dian`, `fec_registro`, `fec_modificacion`, `fec_vencimiento`, `num_dias_vencidos`, `val_descuento`, `val_iva_porc`, `val_rete_porc`, `val_cree_porc`, `ind_reimpresa`, `cod_usuario_modificacion`, `cod_usuario`, `ind_anulada`, `ind_bloqueado`) VALUES
(1, 1, 4, NULL, '2019-04-20 18:09:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0),
(2, 1, 4, NULL, '2019-04-20 22:52:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0),
(3, 3, 1, NULL, '2019-04-20 23:06:47', '2019-05-23 00:23:57', '2019-05-02', 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0),
(4, 4, 4, NULL, '2019-04-20 23:23:24', NULL, '2019-05-25', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0),
(5, 5, 1, NULL, '2019-04-22 22:40:25', NULL, '2019-05-27', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0),
(6, 6, 4, NULL, '2019-05-22 23:12:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0),
(7, 8, 1, NULL, '2019-05-22 23:32:01', NULL, '2019-06-26', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_anuladas`
--

CREATE TABLE `facturas_anuladas` (
  `cod_facturas_anuladas` int(11) NOT NULL,
  `cod_atencion` int(11) DEFAULT NULL,
  `cod_factura` int(11) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas_anuladas`
--

INSERT INTO `facturas_anuladas` (`cod_facturas_anuladas`, `cod_atencion`, `cod_factura`, `fec_registro`, `cod_usuario`) VALUES
(1, 17428, 5, '2014-01-16 15:02:27', 1),
(2, 17435, 6, '2014-01-16 17:25:45', 1),
(3, 17437, 6, '2014-01-16 17:25:45', 1),
(4, 17439, 8, '2014-01-16 17:25:45', 1),
(5, 17440, 8, '2014-01-16 17:25:45', 1),
(6, 17443, 8, '2014-01-16 17:25:45', 1),
(7, 17444, 8, '2014-01-16 17:25:45', 1),
(8, 17423, 1, '2014-01-16 19:23:33', 1),
(9, 17425, 1, '2014-01-16 19:23:33', 1),
(10, 17432, 1, '2014-01-16 19:23:33', 1),
(11, 17429, 2, '2014-01-16 19:23:33', 1),
(12, 17430, 2, '2014-01-16 19:23:33', 1),
(13, 17424, 3, '2014-01-16 19:23:33', 1),
(14, 17426, 3, '2014-01-16 19:23:33', 1),
(15, 17518, 22, '2014-01-28 15:14:59', 1),
(16, 17519, 22, '2014-01-28 15:14:59', 1),
(17, 17521, 23, '2014-01-28 15:14:59', 1),
(18, 17522, 23, '2014-01-28 15:14:59', 1),
(19, 16828, 26, '2014-02-17 15:08:36', 1),
(20, 16902, 26, '2014-02-17 15:08:36', 1),
(21, 17075, 26, '2014-02-17 15:08:36', 1),
(22, 17106, 26, '2014-02-17 15:08:36', 1),
(23, 17135, 26, '2014-02-17 15:08:36', 1),
(24, 17199, 26, '2014-02-17 15:08:36', 1),
(25, 17284, 26, '2014-02-17 15:08:36', 1),
(26, 17369, 26, '2014-02-17 15:08:36', 1),
(27, 17471, 36, '2014-03-06 14:07:43', 1),
(28, 17474, 36, '2014-03-06 14:07:43', 1),
(29, 17476, 36, '2014-03-06 14:07:43', 1),
(30, 17480, 36, '2014-03-06 14:07:43', 1),
(31, 17482, 36, '2014-03-06 14:07:43', 1),
(32, 17439, 34, '2014-03-06 14:12:57', 1),
(33, 17440, 34, '2014-03-06 14:12:57', 1),
(34, 17443, 34, '2014-03-06 14:12:57', 1),
(35, 17526, 38, '2014-04-03 10:30:39', 1),
(36, 17529, 38, '2014-04-03 10:30:39', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_pago`
--

CREATE TABLE `factura_pago` (
  `cod_factura_pago` int(11) NOT NULL,
  `cod_factura` int(11) DEFAULT NULL,
  `val_pago` int(11) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura_pago`
--

INSERT INTO `factura_pago` (`cod_factura_pago`, `cod_factura`, `val_pago`, `fec_registro`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 1, 500000, '2019-04-20 18:09:33', 1, 0),
(2, 2, 500000, '2019-04-20 22:52:01', 1, 0),
(3, 3, 1500000, '2019-04-20 23:06:47', 1, 0),
(4, 4, 3900000, '2019-04-22 00:00:00', 1, 0),
(5, 3, 120000, '2019-05-22 00:00:00', 1, 0),
(6, 3, 500000, '2019-05-22 00:00:00', 1, 0),
(7, 6, 12810000, '2019-05-22 23:12:08', 1, 0),
(8, 7, 500000, '2019-05-22 23:32:01', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filtro_reporte`
--

CREATE TABLE `filtro_reporte` (
  `cod_filtro_reporte` int(11) NOT NULL,
  `cod_reporte_tabla` int(11) DEFAULT NULL,
  `cod_columna_tabla` int(11) DEFAULT NULL,
  `ind_activo` int(1) DEFAULT NULL,
  `txt_js_onblur` varchar(255) DEFAULT NULL,
  `ind_readonly` int(1) DEFAULT NULL,
  `num_orden` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE `forma_pago` (
  `cod_forma_pago` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `num_dias` int(11) DEFAULT NULL,
  `ind_activo` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forma_pago`
--

INSERT INTO `forma_pago` (`cod_forma_pago`, `txt_nombre`, `num_dias`, `ind_activo`) VALUES
(1, 'CONTADO', 0, 1),
(2, 'CREDITO 10 DIAS', 10, 1),
(3, 'CREDITO 20 DIAS', 20, 1),
(4, 'CREDITO 30 DIAS', 30, 1),
(5, 'CREDITO 45 DIAS', 45, 1),
(6, 'CREDITO 60 DIAS', 60, 1),
(7, 'CREDITO 90 DIAS', 90, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto_cliente`
--

CREATE TABLE `foto_cliente` (
  `cod_foto_paciente` int(11) NOT NULL,
  `fec_atencion` datetime DEFAULT NULL,
  `cod_atencion` int(11) DEFAULT NULL,
  `txt_descripcion` text,
  `url_archivo` varchar(255) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_paciente` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guarda_impuesto`
--

CREATE TABLE `guarda_impuesto` (
  `cod_guarda_impuesto` int(11) NOT NULL,
  `txt_facturas` text NOT NULL,
  `val_iva_porc` decimal(5,2) DEFAULT NULL,
  `val_cree_porc` decimal(5,2) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora`
--

CREATE TABLE `hora` (
  `cod_hora` varchar(255) DEFAULT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hora`
--

INSERT INTO `hora` (`cod_hora`, `txt_nombre`) VALUES
('1:00:00', '1:00'),
('1:15:00', '1:15'),
('1:30:00', '1:30'),
('1:45:00', '1:45'),
('2:00:00', '2:00'),
('2:15:00', '2:15'),
('2:30:00', '2:30'),
('2:45:00', '2:45'),
('3:00:00', '3:00'),
('3:15:00', '3:15'),
('3:30:00', '3:30'),
('3:45:00', '3:45'),
('4:00:00', '4:00'),
('4:15:00', '4:15'),
('4:30:00', '4:30'),
('4:45:00', '4:45'),
('5:00:00', '5:00'),
('5:15:00', '5:15'),
('5:30:00', '5:30'),
('5:45:00', '5:45'),
('6:00:00', '6:00'),
('6:15:00', '6:15'),
('6:30:00', '6:30'),
('6:45:00', '6:45'),
('7:00:00', '7:00'),
('7:15:00', '7:15'),
('7:30:00', '7:30'),
('7:45:00', '7:45'),
('8:00:00', '8:00'),
('8:15:00', '8:15'),
('8:30:00', '8:30'),
('8:45:00', '8:45'),
('9:00:00', '9:00'),
('9:15:00', '9:15'),
('9:30:00', '9:30'),
('9:45:00', '9:45'),
('10:00:00', '10:00'),
('10:15:00', '10:15'),
('10:30:00', '10:30'),
('10:45:00', '10:45'),
('11:00:00', '11:00'),
('11:15:00', '11:15'),
('11:30:00', '11:30'),
('11:45:00', '11:45'),
('12:00:00', '12:00'),
('12:15:00', '12:15'),
('12:30:00', '12:30'),
('12:45:00', '12:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora_minuto`
--

CREATE TABLE `hora_minuto` (
  `txt_hora_minuto` varchar(8) NOT NULL,
  `num_hora_militar` int(2) DEFAULT NULL,
  `num_hora` int(2) DEFAULT NULL,
  `txt_minuto` varchar(2) DEFAULT NULL,
  `txt_horario` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hora_minuto`
--

INSERT INTO `hora_minuto` (`txt_hora_minuto`, `num_hora_militar`, `num_hora`, `txt_minuto`, `txt_horario`) VALUES
('00:00:00', 0, 0, '00', 'PM'),
('00:15:00', 0, 0, '15', 'AM'),
('00:30:00', 0, 0, '30', 'AM'),
('00:45:00', 0, 0, '45', 'AM'),
('01:00:00', 1, 1, '00', 'AM'),
('01:15:00', 1, 1, '15', 'AM'),
('01:30:00', 1, 1, '30', 'AM'),
('01:45:00', 1, 1, '45', 'AM'),
('02:00:00', 2, 2, '00', 'AM'),
('02:15:00', 2, 2, '15', 'AM'),
('02:30:00', 2, 2, '30', 'AM'),
('02:45:00', 2, 2, '45', 'AM'),
('03:00:00', 3, 3, '00', 'AM'),
('03:15:00', 3, 3, '15', 'AM'),
('03:30:00', 3, 3, '30', 'AM'),
('03:45:00', 3, 3, '45', 'AM'),
('04:00:00', 4, 4, '00', 'AM'),
('04:15:00', 4, 4, '15', 'AM'),
('04:30:00', 4, 4, '30', 'AM'),
('04:45:00', 4, 4, '45', 'AM'),
('05:00:00', 5, 5, '00', 'AM'),
('05:15:00', 5, 5, '15', 'AM'),
('05:30:00', 5, 5, '30', 'AM'),
('05:45:00', 5, 5, '45', 'AM'),
('06:00:00', 6, 6, '00', 'AM'),
('06:15:00', 6, 6, '15', 'AM'),
('06:30:00', 6, 6, '30', 'AM'),
('06:45:00', 6, 6, '45', 'AM'),
('07:00:00', 7, 7, '00', 'AM'),
('07:15:00', 7, 7, '15', 'AM'),
('07:30:00', 7, 7, '30', 'AM'),
('07:45:00', 7, 7, '45', 'AM'),
('08:00:00', 8, 8, '00', 'AM'),
('08:15:00', 8, 8, '15', 'AM'),
('08:30:00', 8, 8, '30', 'AM'),
('08:45:00', 8, 8, '45', 'AM'),
('09:00:00', 9, 9, '00', 'AM'),
('09:15:00', 9, 9, '15', 'AM'),
('09:30:00', 9, 9, '30', 'AM'),
('09:45:00', 9, 9, '45', 'AM'),
('10:00:00', 10, 10, '00', 'AM'),
('10:15:00', 10, 10, '15', 'AM'),
('10:30:00', 10, 10, '30', 'AM'),
('10:45:00', 10, 10, '45', 'AM'),
('11:00:00', 11, 11, '00', 'AM'),
('11:15:00', 11, 11, '15', 'AM'),
('11:30:00', 11, 11, '30', 'AM'),
('11:45:00', 11, 11, '45', 'AM'),
('12:00:00', 12, 12, '00', 'MD'),
('12:15:00', 12, 12, '15', 'PM'),
('12:30:00', 12, 12, '30', 'PM'),
('12:45:00', 12, 12, '45', 'PM'),
('13:00:00', 13, 1, '00', 'PM'),
('13:15:00', 13, 1, '15', 'PM'),
('13:30:00', 13, 1, '30', 'PM'),
('13:45:00', 13, 1, '45', 'PM'),
('14:00:00', 14, 2, '00', 'PM'),
('14:15:00', 14, 2, '15', 'PM'),
('14:30:00', 14, 2, '30', 'PM'),
('14:45:00', 14, 2, '45', 'PM'),
('15:00:00', 15, 3, '00', 'PM'),
('15:15:00', 15, 3, '15', 'PM'),
('15:30:00', 15, 3, '30', 'PM'),
('15:45:00', 15, 3, '45', 'PM'),
('16:00:00', 16, 4, '00', 'PM'),
('16:15:00', 16, 4, '15', 'PM'),
('16:30:00', 16, 4, '30', 'PM'),
('16:45:00', 16, 4, '45', 'PM'),
('17:00:00', 17, 5, '00', 'PM'),
('17:15:00', 17, 5, '15', 'PM'),
('17:30:00', 17, 5, '30', 'PM'),
('17:45:00', 17, 5, '45', 'PM'),
('18:00:00', 18, 6, '00', 'PM'),
('18:15:00', 18, 6, '15', 'PM'),
('18:30:00', 18, 6, '30', 'PM'),
('18:45:00', 18, 6, '45', 'PM'),
('19:00:00', 19, 7, '00', 'PM'),
('19:15:00', 19, 7, '15', 'PM'),
('19:30:00', 19, 7, '30', 'PM'),
('19:45:00', 19, 7, '45', 'PM'),
('20:00:00', 20, 8, '00', 'PM'),
('20:15:00', 20, 8, '15', 'PM'),
('20:30:00', 20, 8, '30', 'PM'),
('20:45:00', 20, 8, '45', 'PM'),
('21:00:00', 21, 9, '00', 'PM'),
('21:15:00', 21, 9, '15', 'PM'),
('21:30:00', 21, 9, '30', 'PM'),
('21:45:00', 21, 9, '45', 'PM'),
('22:00:00', 22, 10, '00', 'PM'),
('22:15:00', 22, 10, '15', 'PM'),
('22:30:00', 22, 10, '30', 'PM'),
('22:45:00', 22, 10, '45', 'PM'),
('23:00:00', 23, 11, '00', 'PM'),
('23:15:00', 23, 11, '15', 'PM'),
('23:30:00', 23, 11, '30', 'PM'),
('23:45:00', 23, 11, '45', 'PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `cod_mensaje` int(11) NOT NULL,
  `txt_mensaje` varchar(100) DEFAULT NULL,
  `txt_motivo` varchar(100) DEFAULT NULL,
  `txt_solucion` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`cod_mensaje`, `txt_mensaje`, `txt_motivo`, `txt_solucion`) VALUES
(1, 'El campo $parametro no es valido', 'El campo esta vacio', 'Ingrese el valor solicitado'),
(2, 'Informacion actualizada con exito', 'OK', 'OK'),
(3, 'Usuario no valido', 'Su perfil no esta autorizado en el sistema', 'Ingrese su login y password o consulte <br>con el administrador del sistema'),
(5, 'Cambio de Password no es Valido', 'La confirmacion del password no es correcta', 'Intentelo Nuevamnete'),
(4, 'Cambio de Password no es Valido', 'Su Password Actual esta mal escrito', 'Intentelo Nuevamnete'),
(6, 'El campo $parametro no es valido', 'Este campo solo acepta valores numericos', 'elimine las letras o signos especiales'),
(7, 'el campo $parametro no es valido', 'Este valor ya fue usado por otro registro', 'Ingrese un valor diferente o revise la base de datos'),
(10, 'Informacion actualizada con exito', 'OK', 'OK'),
(11, 'El campo $parametro no es valido', 'Este campo no acepta numeros', 'Borre los caracteres numericos del campo $parametro'),
(13, 'No se puede registrar una evolucion', 'No hay registrada valoracion previa', 'primero ejecute una valoracion completa del paciente'),
(12, 'No se ha podido definir el paciente', 'No hay ningun registro seleccionado', 'Busque el paciente<br>Seleccione el registro<br>click en registrar valoraci&oacute;n'),
(14, 'Fecha atencion no valida', 'La fecha no puede ser menor <br>a 24 horas antes de la fecha actual', 'Notifique esta situacion con <br>el departamento administrativo'),
(15, 'Fecha atencion no valida', 'La fecha no puede ser <br>mayor a la fecha actual', 'Ingrese nuevamente la fecha'),
(16, 'No se completo el proceso de impresion', 'No hay ningun registro seleccionado', 'Por favor seleccione la(s) factura(s)'),
(17, 'No se puede guardar la Resolucion', 'Existe una resolucion activa', 'Por favor inactive la resolucion anterior'),
(18, 'No puede ejecutar el proceso', 'No ha elegido el estado', 'Por favor eliga el nuevo estado para las facturas'),
(19, 'No puede registrar la autorizacion', 'Ya existe una autorizacion vigente para $parametro ', 'Elimine el tipo de atencion que genera conflicto'),
(20, 'No puede registrar la autorizacion', 'No puede guardar dos tipos de atencion iguales', 'Por favor elimine uno de los repetidos'),
(21, 'No puede registrar la autorizacion', 'La fecha programada debe estar entre el <br>rango de fecha expedicion mas dias vigencia', 'Cambie la fecha programada'),
(22, 'No puede actualizar la autorizacion', 'No puede cambiar los tipos de atencion si estos ya se iniciaron', 'Consulte con el administrador'),
(23, 'No puede actualizar el registro', 'La nueva cantidad es inferior a la cantidad <br> de sesiones ya realizadas', 'Ingrese el valor correcto'),
(24, 'Se cerrara la autorizacion', 'Ha ingresado la misma cantidad de sesiones realizadas', ''),
(25, 'No puede registrar la evolucion', 'No existe numero de autorizacion', 'Comuniquese con el administrador'),
(26, 'No puede modificar el registro', 'La autorizacion ya fue facturada', 'Consulte con el administrador'),
(27, 'No puede registrar la autorizacion', 'El paciente no pertenece a la entidad ingresada', 'Por favor modifique la entidad o actualize los datos del paciente'),
(28, 'No puede vincular la(s) atenciones', 'El tipo de atencion es diferente al almacenado en la autorizacion', 'Consulte al administrador'),
(29, 'No puede registrar la autorizacion', 'El paciente se encuentra inactivo', 'Actualize los datos del paciente'),
(30, 'No es posible generar facturas', 'El rango de la resolucion DIAN ha llegado a su limite', 'Comuniquese con el administrador'),
(31, 'No se encontraron registros', 'No existen facturas para esta entidad o periodo de facturacion', 'Por favor elija nuevas condiciones e intente de nuevo'),
(32, 'No completar el proceso', 'La cantidad seleccionada es superior a la permitida', 'Seleccione lo permitido'),
(33, 'No se puede completar el proceso de facturacion', 'El rango de facturacion ha llegado a su limite', 'Por favor ingrese un nuevo rango'),
(34, 'No puede ingresar al proceso de $parametro', 'No hay ningun registro seleccionado', 'Seleccione el registro e intente de nuevo (COD. ERROR 34)'),
(35, 'No puede completar el proceso', 'Ha elegido facturas anuladas', 'Por favor seleccione facturas que no esten anuladas'),
(36, 'No puede completar el proceso de facturacion', 'El rango seleccionado contiene autorizaciones sin finalizar', 'Por favor seleccione autorizaciones que han sido terminadas'),
(37, 'No puede completar el proceso de facturacion', 'El rango seleccionado contiene autorizaciones en estado $parametro', 'Por favor seleccione autorizaciones cumplidas'),
(38, 'No puede completar el proceso', 'La autorizacion ya ha sido cumplida', 'Cambie el estado de la autorizacion a VIGENTE'),
(39, 'No puede ingresar al proceso $parametro', 'Ha selecionado mas de un registro', 'Seleccione un solo registro e intente de nuevo (COD. ERROR 39)'),
(40, 'No puede ingresar al proceso', 'Ha seleccionado pedidos en estado ANULADO', 'Seleccione solamente pedidos en estado REGISTRADO'),
(41, 'No puede ingresar al proceso', 'Ha seleccionado pedidos en estado PAGADO', 'Seleccione solamente pedidos en estado REGISTRADO'),
(42, '$parametro', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombre_archivos`
--

CREATE TABLE `nombre_archivos` (
  `cod_nombre_archivos` int(11) NOT NULL,
  `cod_entidad` int(11) DEFAULT NULL,
  `txt_ac` varchar(100) DEFAULT NULL,
  `txt_us` varchar(100) DEFAULT NULL,
  `txt_af` varchar(100) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `fec_modificacion` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nombre_archivos`
--

INSERT INTO `nombre_archivos` (`cod_nombre_archivos`, `cod_entidad`, `txt_ac`, `txt_us`, `txt_af`, `fec_registro`, `fec_modificacion`, `cod_usuario`) VALUES
(1, 10, 'AC2014001', 'US2014001', 'AF2014001', '2014-01-28 16:30:17', NULL, 1),
(2, 6, 'AC2014002', 'US2014002', 'AF2014002', '2014-01-28 16:30:17', NULL, 1),
(3, 4, 'AC2014003', 'US2014003', 'AF2014003', '2014-01-28 16:30:17', NULL, 1),
(4, 6, 'AC2014004', 'US2014004', 'AF2014004', '2014-01-31 12:17:30', NULL, 1),
(5, 4, 'AC2014005', 'US2014005', 'AF2014005', '2014-01-31 14:35:46', NULL, 1),
(6, 6, 'AC2014006', 'US2014006', 'AF2014006', '2014-04-02 11:26:44', NULL, 1),
(7, 4, 'AC2014007', 'US2014007', 'AF2014007', '2014-04-02 11:26:44', NULL, 1),
(8, 6, 'AC2014008', 'US2014008', 'AF2014008', '2014-04-02 11:35:59', NULL, 1),
(9, 4, 'AC2014009', 'US2014009', 'AF2014009', '2014-04-02 11:35:59', NULL, 1),
(10, 4, 'AC2014010', 'US2014010', 'AF2014010', '2014-04-23 18:06:30', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro_sistema`
--

CREATE TABLE `parametro_sistema` (
  `cod_parametro` int(11) NOT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `txt_alias` varchar(255) DEFAULT NULL,
  `val_parametro` varchar(255) NOT NULL,
  `ind_visible` int(11) DEFAULT NULL,
  `ind_modificable_x_usuario` int(1) DEFAULT NULL,
  `cod_tipo_dato_columna` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parametro_sistema`
--

INSERT INTO `parametro_sistema` (`cod_parametro`, `txt_nombre`, `txt_alias`, `val_parametro`, `ind_visible`, `ind_modificable_x_usuario`, `cod_tipo_dato_columna`) VALUES
(1, 'AM', NULL, 'AM', 0, 0, NULL),
(2, 'PM', NULL, 'PM', 0, 0, NULL),
(3, 'fec_actualizacion_facturas', 'FEC ACTUALIZACION FACTURAS', '2019-04-22 00:16:12', 1, 0, 1),
(4, 'ind_mantener_sesion', 'MANTENER SESION', '0', 0, 0, NULL),
(5, 'ind_varios_pedido_x_factura', 'MULTIPLES PEDIDOS POR FACTURA', '0', 1, 1, 20),
(6, 'activa_resolucion_dian', 'RESOLUCION DIAN', '0', 1, 1, 20),
(7, 'nombre_sistema', 'NOMBRE DEL SISTEMA', 'D E C K  V. 1', 1, 0, 1),
(8, 'version', 'VERSION', '1.3', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro_x_usuario`
--

CREATE TABLE `parametro_x_usuario` (
  `cod_parametro_x_usuario` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_parametro` int(11) DEFAULT NULL,
  `val_parametro` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `cod_pedido` int(11) NOT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_factura` int(11) DEFAULT NULL,
  `cod_forma_pago` int(11) DEFAULT NULL,
  `cod_estado_pedido` int(11) DEFAULT NULL,
  `val_real` int(11) DEFAULT NULL,
  `val_negociado` int(11) DEFAULT NULL,
  `val_recibido` int(11) DEFAULT NULL,
  `val_saldo` int(11) DEFAULT NULL,
  `val_total` int(11) DEFAULT NULL,
  `txt_observacion` text,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`cod_pedido`, `cod_cliente`, `cod_factura`, `cod_forma_pago`, `cod_estado_pedido`, `val_real`, `val_negociado`, `val_recibido`, `val_saldo`, `val_total`, `txt_observacion`, `fec_registro`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 1, 1, 1, 4, 500000, NULL, 500000, 0, 500000, 'Prueba', '2019-04-20 18:09:33', 1, 0),
(2, 2, NULL, 1, 1, 500000, NULL, 500000, 0, 500000, NULL, '2019-04-20 22:46:16', 1, 0),
(3, 1, 2, 1, 4, 500000, NULL, 500000, 0, 500000, NULL, '2019-04-20 22:52:01', 1, 0),
(4, 2, NULL, 4, 1, 500000, NULL, 300000, 200000, 500000, NULL, '2019-04-20 22:59:39', 1, 0),
(5, 3, 3, 2, 4, 2800000, NULL, 2120000, 680000, 2800000, NULL, '2019-04-20 23:06:47', 1, 0),
(6, 4, 4, 4, 4, 3900000, NULL, 3900000, 0, 3900000, NULL, '2019-04-20 23:23:24', 1, 0),
(7, 5, 5, 4, 4, 5500000, NULL, 0, 5500000, 5500000, NULL, '2019-04-22 22:40:25', 1, 0),
(8, 6, 6, 1, 4, 12810000, NULL, 12810000, 0, 12810000, NULL, '2019-05-22 23:12:08', 1, 0),
(9, 8, 7, 4, 4, 2500000, NULL, 500000, 2000000, 2500000, NULL, '2019-05-22 23:32:01', 1, 0),
(10, 6, NULL, 3, 1, 2500000, NULL, 0, 2500000, 2500000, NULL, '2019-05-23 00:21:41', 1, 0),
(11, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, '2019-05-17 00:03:42', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_compra`
--

CREATE TABLE `pedido_compra` (
  `cod_pedido_compra` int(11) NOT NULL,
  `cod_proveedor` int(11) DEFAULT NULL,
  `cod_forma_pago` int(11) DEFAULT NULL,
  `cod_estado_pedido` int(11) DEFAULT NULL,
  `val_pagado` int(11) DEFAULT NULL,
  `val_saldo` int(11) DEFAULT NULL,
  `val_total` int(11) DEFAULT NULL,
  `txt_observacion` text,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido_compra`
--

INSERT INTO `pedido_compra` (`cod_pedido_compra`, `cod_proveedor`, `cod_forma_pago`, `cod_estado_pedido`, `val_pagado`, `val_saldo`, `val_total`, `txt_observacion`, `fec_registro`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 3, 1, 1, 10000, 0, NULL, NULL, '2019-05-26 22:18:12', 1, 0),
(2, 3, 1, 1, 10000, 0, NULL, NULL, '2019-05-21 23:21:10', 1, 0),
(3, NULL, 1, 1, 0, NULL, NULL, NULL, '2019-05-23 23:45:45', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_compra_detalle`
--

CREATE TABLE `pedido_compra_detalle` (
  `cod_pedido_compra_detalle` int(11) NOT NULL,
  `cod_pedido_compra` int(11) DEFAULT NULL,
  `cod_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `val_precio_unitario` int(11) DEFAULT NULL,
  `val_total` int(11) DEFAULT NULL,
  `ind_cant_restada` int(1) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido_compra_detalle`
--

INSERT INTO `pedido_compra_detalle` (`cod_pedido_compra_detalle`, `cod_pedido_compra`, `cod_producto`, `cantidad`, `val_precio_unitario`, `val_total`, `ind_cant_restada`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 2, 8, 1, 10000, 10000, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `cod_pedido_detalle` int(11) NOT NULL,
  `cod_pedido` int(11) DEFAULT NULL,
  `cod_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `val_precio_unitario` int(11) DEFAULT NULL,
  `val_total` int(11) DEFAULT NULL,
  `ind_cant_restada` int(1) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido_detalle`
--

INSERT INTO `pedido_detalle` (`cod_pedido_detalle`, `cod_pedido`, `cod_producto`, `cantidad`, `val_precio_unitario`, `val_total`, `ind_cant_restada`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 1, 1, 10, 50000, 500000, 1, 1, 0),
(2, 2, 1, 10, 50000, 500000, 1, 1, 0),
(3, 3, 1, 10, 50000, 500000, 1, 1, 0),
(4, 4, 2, 20, 25000, 500000, 1, 1, 0),
(5, 5, 3, 100, 28000, 2800000, 1, 1, 0),
(6, 6, 4, 80, 45000, 3600000, 1, 1, 0),
(7, 6, 5, 20, 15000, 300000, 1, 1, 0),
(8, 7, 6, 100, 55000, 5500000, 1, 1, 0),
(9, 8, 7, 305, 42000, 12810000, 1, 1, 0),
(10, 9, 1, 50, 50000, 2500000, 1, 1, 0),
(11, 10, 1, 50, 50000, 2500000, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_facturacion`
--

CREATE TABLE `periodo_facturacion` (
  `cod_periodo_facturacion` int(11) NOT NULL,
  `fec_inicial` datetime DEFAULT NULL,
  `fec_final` datetime DEFAULT NULL,
  `num_archivos` int(11) DEFAULT NULL,
  `num_facturas` int(11) DEFAULT NULL,
  `year_facturacion` int(11) DEFAULT NULL,
  `consecutivo_year` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso_adicional_pantalla`
--

CREATE TABLE `proceso_adicional_pantalla` (
  `cod_proceso` int(11) NOT NULL,
  `cod_tabla` int(11) NOT NULL,
  `cod_navegacion` int(11) NOT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `txt_js` varchar(255) DEFAULT NULL,
  `txt_descripcion` varchar(255) DEFAULT NULL,
  `por_registro` int(11) DEFAULT NULL,
  `ind_activo` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proceso_adicional_pantalla`
--

INSERT INTO `proceso_adicional_pantalla` (`cod_proceso`, `cod_tabla`, `cod_navegacion`, `txt_nombre`, `txt_js`, `txt_descripcion`, `por_registro`, `ind_activo`) VALUES
(31, 13, 39, 'Anular Factura', 'f_anular_factura(this)', 'Metodo para anular una factura', 0, 1),
(4, 2, 39, 'Fotos', 'f_ver_foto()', NULL, 0, 1),
(5, 2, 39, 'Registrar fotos', 'f_registrar_foto()', NULL, 0, 1),
(7, 8, 78, 'Genera Factura(s)', 'f_genera_factura()', 'Este proceso guardara y generara factura por autorizacion, para su posterior impresion', 0, 1),
(30, 20, 78, 'Generar Recibo de pago', 'f_genera_recibo_pago()', 'Genera recibo de pago o tiquete de compra de el/los pedidos seleccionados', 1, 1),
(10, 13, 39, 'Resolucion DIAN', 'f_resolucion_dian()', 'Genera / Actualiza la resolucion de la DIAN para el rango de facturacion', 0, 1),
(8, 13, 39, 'Genera Factura(s)', 'f_genera_factura()', 'Genera facturas que esten pendientes en el sistema para despues ser listadas en el reporte', 0, 0),
(9, 13, 39, 'Imprime Factura(s)', 'f_imprime_factura()', 'Imprime las facturas seleccionadas en el reporte', 0, 1),
(14, 13, 39, 'Generar Reportes', 'f_genera_reportes()', 'Proceso para generar los reportes para facturacion', 0, 0),
(15, 13, 39, 'Genera Factura(s) Pre-anuladas', 'f_genera_factura_v2()', 'Genera y lista las facturas que fueron anteriormente anuladas', 0, 0),
(16, 8, 81, 'Genera Factura(s)', 'f_genera_factura()', 'Este proceso guardara y generara factura por autorizacion, para su posterior impresion', 0, 1),
(17, 8, 39, 'Genera Factura(s)', 'f_genera_factura()', 'Este proceso guardara y generara factura por autorizacion, para su posterior impresion', 0, 1),
(18, 8, 1030, 'Genera Factura(s)', 'f_genera_factura()', 'Este proceso guardara y generara factura por autorizacion, para su posterior impresion', 0, 1),
(19, 15, 39, 'PERFILES', 'f_ver_perfil()', 'Muestra los perfiles configurados en el sistema', 0, 1),
(20, 15, 78, 'PERFILES', 'f_ver_perfil()', 'Muestra los perfiles configurados en el sistema', 0, 1),
(21, 17, 39, 'Procesos en pantalla', 'f_ver_procesos_adicionales()', 'Muestra los procesos en pantalla relacionados con el perfil', 0, 1),
(22, 8, 1026, 'Genera Factura(s)', 'f_genera_factura()', 'Este proceso guardara y generara factura por autorizacion, para su posterior impresion', 0, 1),
(23, 17, 39, 'Permisos Reportes', 'f_ver_reportes_perfil()', 'Muestra los resportes a los que tiene permiso el perfil seleccionado', 0, 1),
(24, 15, 81, 'PERFILES', 'f_ver_perfil()', 'Muestra los perfiles configurados en el sistema', 0, 1),
(25, 19, 39, 'Ver Registro', 'ver_registro()', 'Ver los datos del registro seleccionado', 1, 1),
(26, 21, 39, 'Entrada de Productos', 'f_entrada_productos(this)', 'Clic para registrar una entrada de bodega para el producto seleccionado', 0, 1),
(27, 20, 78, 'Generar Factura', 'f_generar_factura()', 'Factura los pedidos seleccionados', 1, 1),
(28, 20, 78, 'Anular Pedido', 'f_anular_pedido()', 'anula los pedidos seleccionados', 1, 1),
(29, 20, 78, 'Pagar Pedido', 'f_pagar_pedido()', 'Cambia el estado a \"Pagado\" para los pedidos seleccionados', 1, 1),
(32, 13, 39, 'Pagar/Abonar Factura', 'f_pagar_factura(this)', 'Paga una factura o abona a su saldo', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso_navegacion`
--

CREATE TABLE `proceso_navegacion` (
  `cod_proceso_navegacion` int(11) NOT NULL,
  `cod_proceso` int(11) DEFAULT NULL,
  `cod_navegacion` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proceso_navegacion`
--

INSERT INTO `proceso_navegacion` (`cod_proceso_navegacion`, `cod_proceso`, `cod_navegacion`) VALUES
(1, 11, 1032),
(2, 4, 1012),
(3, 12, 1035),
(4, 7, 1026),
(5, 13, 1037),
(6, 14, 1039),
(7, 2, 1003),
(8, 9, 1025),
(9, 19, 39),
(10, 21, 1050),
(11, 3, 1004),
(12, 5, 1010),
(13, 1, 1001),
(14, 10, 39),
(15, 6, 1022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_producto` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `cod_estado_producto` int(11) DEFAULT NULL,
  `cod_unidad_medida` int(11) DEFAULT NULL,
  `num_cantidad` int(11) DEFAULT NULL,
  `num_peso` int(11) DEFAULT NULL,
  `val_precio_costo` int(11) DEFAULT NULL,
  `val_precio_venta` int(11) DEFAULT NULL,
  `val_iva_porc` decimal(3,2) DEFAULT NULL,
  `txt_descripcion` text,
  `cod_tipo_producto` int(10) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL,
  `fec_modificacion` datetime DEFAULT NULL,
  `cod_usuario_modificacion` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_producto`, `txt_nombre`, `cod_estado_producto`, `cod_unidad_medida`, `num_cantidad`, `num_peso`, `val_precio_costo`, `val_precio_venta`, `val_iva_porc`, `txt_descripcion`, `cod_tipo_producto`, `fec_registro`, `cod_usuario`, `ind_bloqueado`, `fec_modificacion`, `cod_usuario_modificacion`) VALUES
(1, 'cero', 1, 1, 20, NULL, NULL, 50000, NULL, NULL, NULL, '2019-04-08 00:50:19', 1, 0, '2019-05-22 23:23:37', 1),
(2, 'amarilla', 1, 1, 80, 50, 25000, 25000, NULL, NULL, NULL, '2019-04-20 17:24:41', 1, 0, '2019-04-20 22:55:27', 1),
(3, 'capiro', 1, 1, 20, 50, 26500, 28000, NULL, NULL, NULL, '2019-04-20 22:56:56', 1, 0, '2019-04-20 23:04:20', 1),
(4, 'Superior', 1, 1, 0, 50, 43500, 45000, NULL, NULL, NULL, '2019-04-20 23:04:39', 1, 0, '2019-04-22 22:23:08', 1),
(5, 'pollera', 1, 1, 110, 50, 13500, 15000, NULL, NULL, NULL, '2019-04-22 22:23:34', 1, 0, '2019-04-22 22:25:45', 1),
(6, 'Parda', 1, 1, 0, 50, 53500, 55000, NULL, NULL, NULL, '2019-04-22 22:26:11', 1, 0, '2019-05-22 23:02:42', 1),
(7, 'unica', 1, 1, 0, 50, 40500, 42000, NULL, NULL, NULL, '2019-05-22 23:09:27', 1, 0, '2019-05-22 23:10:24', 1),
(8, 'Desayuno', 1, 2, 0, NULL, NULL, 10000, NULL, 'Compra', 2, '2019-05-22 23:17:35', 1, 0, '2019-05-21 23:34:00', 1),
(9, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-19 19:12:05', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `cod_proveedor` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `txt_apellido` varchar(255) DEFAULT NULL,
  `cod_tipo_identificacion` int(11) DEFAULT NULL,
  `num_identificacion` varchar(255) DEFAULT NULL,
  `txt_telefono` varchar(255) DEFAULT NULL,
  `txt_direccion` varchar(255) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`cod_proveedor`, `txt_nombre`, `txt_apellido`, `cod_tipo_identificacion`, `num_identificacion`, `txt_telefono`, `txt_direccion`, `fec_registro`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 'Luis', 'Prueba', 1, '223366', '3201234567', 'Calle 12222', '2019-04-19 01:28:11', 1, 0),
(2, 'julio', NULL, 1, '1133131665', '4433212', NULL, '2019-04-20 22:56:14', 1, 0),
(3, 'felipe', 'bravo', 1, '7789654', '8897867', 'cavasa', '2019-04-20 23:02:27', 1, 0),
(4, 'HERNAN', 'CADENA', 1, '9623', NULL, NULL, '2019-04-20 23:04:27', 1, 0),
(5, 'Felipe', 'Bravo', 1, '21084299', NULL, NULL, '2019-04-22 22:18:43', 1, 0),
(6, 'Leonel', 'Benavidez', 1, '21041763', NULL, NULL, '2019-04-22 22:20:05', 1, 0),
(7, 'Bayardo', 'Prado', 1, '109100019263', NULL, NULL, '2019-04-22 22:20:54', 1, 0),
(8, 'Miguel', 'Guerrero', 1, '374036697', NULL, NULL, '2019-04-22 22:31:34', 1, 0),
(9, 'Ernesto', 'Moreno', 1, '88863948059', NULL, NULL, '2019-05-23 00:09:12', 1, 0),
(10, 'Libardo', 'Ceballos', 1, '88538326229', NULL, NULL, '2019-05-23 00:10:40', 1, 0),
(11, 'Hector', 'Gonzales', 1, '998999', NULL, NULL, '2019-05-23 00:11:54', 1, 0),
(12, 'Felipe', 'Moreno', 1, '0000822', NULL, NULL, '2019-05-23 00:12:43', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen`
--

CREATE TABLE `regimen` (
  `cod_regimen` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regimen`
--

INSERT INTO `regimen` (`cod_regimen`, `txt_nombre`, `ind_activo`) VALUES
(1, 'Comun', 1),
(2, 'Simplificado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_tabla`
--

CREATE TABLE `reporte_tabla` (
  `cod_reporte_tabla` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `cod_tabla` int(11) DEFAULT NULL,
  `txt_script` text,
  `ind_activo` int(11) DEFAULT NULL,
  `ind_default` int(11) DEFAULT NULL COMMENT 'Reporte por defecto (si no selecciona nada el usuario esta sera la consulta que use el sistema)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reporte_tabla`
--

INSERT INTO `reporte_tabla` (`cod_reporte_tabla`, `txt_nombre`, `cod_tabla`, `txt_script`, `ind_activo`, `ind_default`) VALUES
(1, 'PRODUCTOS', 21, 'SELECT  t.cod_producto,\r\n        t.txt_nombre as 01nombre,     t.num_cantidad as 02cantidad,\r\n        um.txt_nombre as 01unidad_medida,\r\n        t.val_precio_venta as 02precio_venta,\r\n        t.fec_registro as 08fec_registro,\r\n        ifnull(su.txt_nombre, su.txt_login) as 01usuario,\r\n        t.fec_modificacion as 08fec_modificacion,\r\n        ifnull(su2.txt_nombre,su2.txt_login) as 01usuario_modificacion       \r\nfrom    producto t left join seg_usuario su2 on (t.cod_usuario_modificacion = su2.cod_usuario_pk),\r\n        unidad_medida um,\r\n        seg_usuario su\r\nwhere   t.cod_unidad_medida = um.cod_unidad_medida\r\nand     t.ind_bloqueado = 0\r\nand     t.cod_usuario = su.cod_usuario_pk\r\ncondiciones_script_consulta\r\n', 1, 1),
(11, 'Facturas', 13, 'select  t.cod_factura, \r\n        if(c.txt_apellido is not null,concat(c.txt_nombre,\' \',c.txt_apellido),c.txt_nombre) as \'01cliente\',\r\n        estado_factura.txt_nombre as \'01estado_factura\',\r\n       vdf.txt_forma_pago as \'01forma_pago\',\r\n       \r\n       IFNULL(t.num_dias_vencidos,0)  as \'02dias_vencidos\',\r\n        estado_factura.txt_color as privado_color,\r\n        IFNULL(vdf.val_total_sin_iva,0) as \'02val_pedido\',\r\n        IFNULL(vdf.val_recibido,0) as \'02val_recibido\',\r\n        IFNULL(vdf.val_saldo,0) as \'02val_saldo\',\r\n        vdf.val_total_sin_iva + vdf.`02iva` as \'02val_total_factura\',\r\n        t.fec_registro as \'08fec_registro\',\r\n        su2.txt_login as \'01usuario_modificacion\'\r\nfrom   (factura t left join v_detalle_factura  vdf on (t.cod_factura = vdf.cod_factura))\r\n        left join seg_usuario su2 on (t.cod_usuario_modificacion = su2.cod_usuario_pk)    ,\r\n        estado_factura  ,\r\n        cliente c       ,\r\n        forma_pago      ,\r\n        seg_usuario su1 ,        \r\n        booleano b\r\n\r\nwhere   t.cod_estado_factura = estado_factura.cod_estado_factura  \r\nand     t.cod_usuario = su1.cod_usuario_pk\r\nand     t.ind_reimpresa = b.cod_booleano\r\nand     t.cod_cliente = c.cod_cliente\r\n condiciones_script_consulta\r\ngroup by t.cod_factura, vdf.txt_forma_pago', 1, 1),
(36, 'PROVEEDORES', 24, 'select  t.cod_proveedor  ,\r\n      concat(t.txt_nombre,\' \',ifnull(t.txt_apellido, \'\')) as 01nombre,\r\n        concat(\'(\',ti.txt_nombre_corto,\') \',t.num_identificacion) as 01identificacion,\r\n        t.txt_telefono as 01telefono,\r\n        t.txt_direccion as 01direcion\r\nfrom    proveedor t,\r\n        tipo_identificacion ti\r\nwhere   t.cod_tipo_identificacion = ti.cod_tipo_identificacion\r\nand     ind_bloqueado = 0\r\ncondiciones_script_consulta\r\n', 1, 1),
(12, 'Resolucion DIAN', 14, 'select  t.cod_resolucion_dian,\r\n        t.num_resolucion as 01nro_resolucion,\r\n        t.txt_prefijo as 01prefijo,\r\n        t.num_rango_inicial as 01rango_inicial,\r\n        t.num_rango_final as 01rango_final,\r\n        t.fec_resolucion as 08fec_resolucion,\r\n        t.fec_registro as 08fec_registro,\r\n        b.txt_nombre as 01activa,\r\n        su.txt_login as 01registrado_por\r\nfrom    resolucion_dian t,\r\n        seg_usuario su,\r\n        booleano b\r\nwhere   t.ind_bloqueado = 0\r\nand     t.cod_usuario = su.cod_usuario_pk\r\nand     t.ind_activo = b.cod_booleano\r\ncondiciones_script_consulta', 1, 1),
(23, 'Impuesto Cree', 13, 'select  t.cod_factura,\r\n        e.txt_nombre as 01entidad,\r\n        ef.txt_nombre as 01estado,\r\n        t.fec_registro as 08fec_registro,\r\n        IFNULL(t.val_cree_porc,0) as 01cree,\r\n        vdf.`02cree` as 02valor_cree,\r\n        vdf.`02valor_total` as 02valor_total  \r\n        \r\nfrom    factura         t,\r\n        entidad         e,\r\n        estado_factura  ef,\r\n        v_detalle_factura vdf\r\nwhere   t.cod_entidad = e.cod_entidad\r\nand     t.cod_estado_factura = ef.cod_estado_factura\r\nand     t.cod_factura = vdf.cod_factura\r\ncondiciones_script_consulta', 1, 0),
(25, 'USUARIOS', 15, 'select  t.cod_usuario_pk,\r\n        t.txt_nombre as 01nombre,\r\n        t.num_identificacion as 01identificacion,\r\n        t.txt_login  as 01login,\r\n        t.txt_email as 01email,\r\n        esu.txt_nombre as 01estado,\r\n        t.fec_registro as 08fec_registro\r\nfrom    seg_usuario t,\r\n        seg_perfil_usuario t2,\r\n        estado_seg_usuario esu\r\nwhere   t.cod_estado_seg_usuario = esu.cod_estado_seg_usuario\r\nand     t.cod_usuario_pk = t2.cod_usuario_pk\r\ncondiciones_script_consulta', 1, 1),
(26, 'PERFIL', 17, 'select  t.cod_perfil_pk ,\r\n        t.txt_nombre as 01nombre,\r\n        b.txt_nombre as 01activo,\r\n        t.fec_registro as 08fec_registro,\r\n        ifnull(su.txt_nombre,su.txt_login) as 01usuario\r\nfrom    seg_perfil t,\r\n        booleano b  ,\r\n        seg_usuario su\r\nwhere   t.ind_activo = b.cod_booleano\r\nand     t.cod_usuario = su.cod_usuario_pk\r\nand     t.ind_bloqueado = 0\r\ncondiciones_script_consulta', 1, 1),
(37, 'Dias festivos (General)', 27, 'select  t.cod_dia_festivo ,\r\n      t.fec_festivo as 03fec_festivo,\r\n        t.txt_descripcion as 06descripcion,\r\n        b.txt_nombre as 01activo,\r\n        t.fec_registro as 08fec_registro,\r\n        su.txt_nombre as 01usuario\r\nfrom    dia_festivo t,\r\n        booleano b,\r\n        seg_usuario su\r\nwhere   t.ind_activo = b.cod_booleano\r\nand     t.cod_usuario = su.cod_usuario_pk\r\nand     t.ind_bloqueado = 0\r\ncondiciones_script_consulta', 1, 1),
(34, 'CLIENTES', 19, 'select  t.cod_cliente,\r\n        if(t.txt_apellido is not null,concat(t.txt_nombre,\' \',t.txt_apellido),t.txt_nombre) as 01nombre,\r\n        ti.txt_nombre as 01tipo_identificacion,\r\n        t.num_identificacion as 01no_identificacion,\r\n        tc.txt_nombre as 01tipo_cliente,\r\n        ec.txt_nombre as 01estado_cliente,\r\n        r.txt_nombre as 01regimen       \r\nfrom    cliente t left join regimen r on (t.cod_regimen = r.cod_regimen),\r\n        tipo_identificacion ti,\r\n        estado_cliente ec ,\r\n        tipo_cliente tc ,        \r\n        seg_usuario su\r\nwhere   t.cod_tipo_identificacion = ti.cod_tipo_identificacion \r\nand     t.cod_estado_cliente = ec.cod_estado_cliente\r\nand     t.cod_tipo_cliente = tc.cod_tipo_cliente\r\nand     t.cod_usuario = su.cod_usuario_pk \r\ncondiciones_script_consulta', 1, 1),
(35, 'PEDIDOS', 20, 'select  t.cod_pedido,\r\n        if(c.txt_apellido is not null,concat(c.txt_nombre,\' \',c.txt_apellido),c.txt_nombre) as 01cliente,\r\n        t.cod_factura as 01factura,\r\n        ep.txt_nombre as 01estado_pedido,\r\n        ep.txt_color as privado_color,\r\n        fp.txt_nombre as 01forma_pago,\r\n        t.val_real as 02val_total,\r\n        t.val_saldo as 02val_saldo,\r\n        t.val_recibido as 02val_recibido,        \r\n        t.fec_registro as 08fec_registro,\r\n        su.txt_nombre as 01usuario\r\nfrom    pedido t left join pedido_detalle t2 on (t.cod_pedido = t2.cod_pedido),\r\n        cliente c,\r\n        forma_pago fp,\r\n        seg_usuario su,\r\n        estado_pedido ep\r\nwhere   t.cod_cliente = c.cod_cliente\r\nand     t.cod_forma_pago = fp.cod_forma_pago\r\nand     t.cod_usuario = su.cod_usuario_pk\r\nand     t.cod_estado_pedido = ep.cod_estado_pedido\r\nand     t.ind_bloqueado = 0\r\n\r\ncondiciones_script_consulta\r\ngroup by t.cod_pedido', 1, 1),
(38, 'Empleados', 18, 'select  t.cod_empleado,\r\n        t.txt_nombre as 01nombre,\r\n         t.txt_apellido as 01apellido,\r\n        t.num_identificacion as 01identificacion,\r\n        \r\n        t.fec_registro as 08fec_registro\r\nfrom    empleado t\r\n        \r\nwhere   1=1\r\ncondiciones_script_consulta', 1, 1),
(39, 'Entrada De Productos', 25, 'select t.cod_entrada_producto,\r\n       p.txt_nombre as \'01producto\',\r\n       t.num_cantidad as  \'02cantidad\',\r\n       un.txt_nombre as \'01unidad_medida\',\r\n       pr.txt_nombre as \'01proveedor\',\r\n       t.val_flete as \'02flete\',\r\n\r\n       t.fec_registro as \'08fec_registro\' \r\nfrom entrada_producto as t join producto as p on (t.cod_producto = p.cod_producto) join unidad_medida un on (t.cod_unidad_medida = un.cod_unidad_medida) join proveedor pr on (t.cod_proveedor = pr.cod_proveedor) where 1=1 \r\nand     t.ind_bloqueado = 0 condiciones_script_consulta', 1, 1),
(40, 'Pedido Compra', 28, 'select  t.cod_pedido_compra,\r\n        if(c.txt_apellido is not null,concat(c.txt_nombre,\' \',c.txt_apellido),c.txt_nombre) as 01cliente,\r\n        \r\n        ep.txt_nombre as 01estado_pedido,\r\n        ep.txt_color as privado_color,\r\n        fp.txt_nombre as 01forma_pago,\r\n        t.val_total as 02val_total,\r\n        t.val_saldo as 02val_saldo,\r\n        t.val_pagado as 02val_pagado,        \r\n        t.fec_registro as 08fec_registro,\r\n        su.txt_nombre as 01usuario\r\nfrom    pedido_compra t left join pedido_compra_detalle t2 on (t.cod_pedido_compra = t2.cod_pedido_compra),\r\n        proveedor c,\r\n        forma_pago fp,\r\n        seg_usuario su,\r\n        estado_pedido ep\r\nwhere   t.cod_proveedor = c.cod_proveedor\r\nand     t.cod_forma_pago = fp.cod_forma_pago\r\nand     t.cod_usuario = su.cod_usuario_pk\r\nand     t.cod_estado_pedido = ep.cod_estado_pedido\r\nand     t.ind_bloqueado = 0\r\n\r\ncondiciones_script_consulta\r\ngroup by t.cod_pedido_compra', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion_dian`
--

CREATE TABLE `resolucion_dian` (
  `cod_resolucion_dian` int(11) NOT NULL,
  `num_resolucion` bigint(20) DEFAULT NULL,
  `txt_prefijo` varchar(255) DEFAULT NULL,
  `num_rango_inicial` int(11) DEFAULT NULL,
  `num_rango_final` int(11) DEFAULT NULL,
  `fec_resolucion` datetime DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `resolucion_dian`
--

INSERT INTO `resolucion_dian` (`cod_resolucion_dian`, `num_resolucion`, `txt_prefijo`, `num_rango_inicial`, `num_rango_final`, `fec_resolucion`, `ind_activo`, `fec_registro`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 50000318460, 'A', 1, 40, '2014-12-04 08:00:00', 1, '2013-12-30 14:54:53', 1, 0),
(2, 0, NULL, NULL, NULL, NULL, NULL, '2013-12-30 14:58:54', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_empresa`
--

CREATE TABLE `seg_empresa` (
  `cod_empresa` int(255) UNSIGNED NOT NULL,
  `txt_razon_social` varchar(255) DEFAULT NULL,
  `txt_nombre_comercial` varchar(255) DEFAULT NULL,
  `cod_ciiu` varchar(255) DEFAULT NULL,
  `cod_tipo_identificacion` int(255) DEFAULT NULL,
  `num_identificacion` varchar(255) DEFAULT NULL,
  `cod_ciudad` int(255) DEFAULT NULL,
  `txt_direccion` varchar(255) DEFAULT NULL,
  `txt_telefono` varchar(255) DEFAULT NULL,
  `ind_iva` int(10) DEFAULT NULL,
  `val_porcentaje_iva` int(10) DEFAULT NULL,
  `fec_fundacion` date DEFAULT NULL,
  `fec_registro` date DEFAULT NULL,
  `fec_modificacion` date DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_empresa`
--

INSERT INTO `seg_empresa` (`cod_empresa`, `txt_razon_social`, `txt_nombre_comercial`, `cod_ciiu`, `cod_tipo_identificacion`, `num_identificacion`, `cod_ciudad`, `txt_direccion`, `txt_telefono`, `ind_iva`, `val_porcentaje_iva`, `fec_fundacion`, `fec_registro`, `fec_modificacion`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 'Jenny ', 'Jenny Bravo', NULL, 8, '8002525699', NULL, '1801 Collins Ave', '3057542206', 0, NULL, '2019-04-12', '2019-04-20', '2019-04-20', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_navegacion`
--

CREATE TABLE `seg_navegacion` (
  `cod_navegacion` int(11) NOT NULL,
  `txt_validacion` varchar(100) DEFAULT NULL,
  `txt_proceso` varchar(100) DEFAULT NULL,
  `txt_consulta` varchar(100) DEFAULT NULL,
  `txt_salida` varchar(100) DEFAULT NULL,
  `txt_contenido` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) NOT NULL,
  `txt_descripcion` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_navegacion`
--

INSERT INTO `seg_navegacion` (`cod_navegacion`, `txt_validacion`, `txt_proceso`, `txt_consulta`, `txt_salida`, `txt_contenido`, `ind_activo`, `txt_descripcion`) VALUES
(36, 'ver_tablas_autonomas.php', '', 'ver_tablas_autonomas.php', 'ver_tablas_autonomas.php', NULL, 1, 'Listado de tablas autonomas'),
(37, 'ver_registrar_dato_tabla_autonoma.php', '', 'ver_registrar_dato_tabla_autonoma.php', 'ver_registrar_dato_tabla_autonoma.php', NULL, 1, 'Formulario de registro de una tabla autonoma'),
(38, 'guardar_dato_tabla_autonoma.php', 'guardar_dato_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Formulario de registro de una tabla autonoma'),
(39, 'ver_consultar_tabla_autonoma.php', '', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Consulta los datos de una tabla autonoma'),
(40, 'eliminar_dato_tabla_autonoma.php', 'eliminar_dato_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Consulta los datos de una tabla autonoma'),
(41, 'ver_imprimir_reporte_tabla_autonoma.php', '', 'ver_imprimir_reporte_tabla_autonoma.php', 'ver_imprimir_reporte_tabla_autonoma.php', NULL, 1, 'Imprime un reporte de una tabla autonoma'),
(42, '', '', 'ver_consultar_tabla_autonoma_iframe.php', '', NULL, 1, 'Consulta datos en iframe de una tabla autonoma'),
(43, 'ver_buscador_tabla_autonoma.php', '', 'ver_buscador_tabla_autonoma.php', 'ver_buscador_tabla_autonoma.php', NULL, 1, 'Ventana emergente buscador sobre tabla autonoma'),
(44, 'ver_registrar_maestro_detalle_autonomo.php', '', 'ver_registrar_maestro_detalle_autonomo.php', 'ver_registrar_maestro_detalle_autonomo.php', NULL, 1, 'Registra datos de un maestro de detalle en una tabla autonoma'),
(45, 'guardar_maestro_detalle.php', 'guardar_maestro_detalle.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda los datos de un maestro de detalle'),
(46, 'eliminar_dato_maestro_detalle.php', 'eliminar_dato_maestro_detalle.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Elimina los datos de un maestro de detalle'),
(76, 'eliminar_foto_tabla_autonoma.php', 'eliminar_foto_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Elimina la foto de un registro de una tabla autonoma'),
(77, '', '', 'ver_consultar_mp3_iframe.php', '', NULL, 1, 'permite que se reprodusca un mp3 sin necesitad de flash'),
(78, 'ver_consultar_maestro_detalle.php', NULL, 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', NULL, 1, 'Consulta dos tablas simultaneamente (maestro de detalle)'),
(79, 'eliminar_foto_maestro_detalle.php', 'eliminar_foto_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', NULL, 1, 'Elimina la foto de una tabla de detalle'),
(80, 'eliminar_dato_maestro_detalle.php', 'eliminar_dato_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', NULL, 1, 'Elimina los datos de un maestro detalle'),
(81, 'guardar_maestro_detalle.php', 'guardar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', NULL, 1, 'Guarda maestro de detalle y llega a consulta maestro detalle'),
(1012, 'ver_fotos_paciente.php', NULL, 'ver_fotos_paciente.php', 'ver_fotos_paciente.php', NULL, 1, 'Muestra las fotos de un paciente'),
(1011, 'guardar_foto_paciente.php', 'guardar_foto_paciente.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'guarda las fotos de un paciente'),
(1009, NULL, NULL, 'ver_noticias.php', 'ver_noticias.php', NULL, 1, 'Noticias'),
(1010, 'ver_registrar_foto_paciente.php', NULL, 'ver_registrar_foto_paciente.php', 'ver_registrar_foto_paciente.php', NULL, 1, 'Registro fotos segumiento paciente'),
(1007, NULL, NULL, NULL, 'ver_servicios.php', NULL, 1, 'Servicios'),
(1008, NULL, NULL, NULL, 'ver_registrese.php', NULL, 1, 'Registrese'),
(1006, NULL, NULL, NULL, 'ver_conozcanos.php', NULL, 1, 'Conozcanos'),
(1000, NULL, NULL, NULL, 'ver_index.php', NULL, 1, 'Pantalla principal'),
(1001, 'ver_registrar_valoracion.php', NULL, 'ver_registrar_valoracion.php', 'ver_registrar_valoracion.php', NULL, 1, 'Pantalla para registro de valoracion por paciente'),
(1002, 'guardar_valoracion.php', 'guardar_valoracion.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda valoracion de un paciente'),
(1003, 'ver_historia_clinica.php', NULL, 'ver_historia_clinica.php', 'ver_historia_clinica.php', NULL, 1, 'Metodo para ver la informacion de una historia clinica'),
(1004, 'ver_registrar_evolucion.php', NULL, 'ver_registrar_evolucion.php', 'ver_registrar_evolucion.php', NULL, 1, 'Metodo para registrar la evolucion de un paciente'),
(1005, 'guardar_evolucion.php', 'guardar_evolucion.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda la evolucion de un paciente'),
(1013, 'ver_cambiar_password.php', '', '', 'ver_cambiar_password.php', NULL, 1, 'Ver cambiar password'),
(1014, 'guardar_cambiar_password.php', 'guardar_cambiar_password.php', 'ver_tablas_autonomas.php', 'ver_tablas_autonomas.php', NULL, 1, 'Guardar cambiar password'),
(1015, '', 'guardar_registrarse.php', '', '', NULL, 1, 'Guardar Registrese'),
(1016, '', '', '', 'ver_contactenos.php', NULL, 1, 'Ver contactenos'),
(1017, '', 'guardar_contactenos.php', '', '', NULL, 1, 'Guardar Contactenos'),
(1018, 'ver_imprimir_historia_clinica.php', '', 'ver_imprimir_historia_clinica.php', 'ver_imprimir_historia_clinica.php', NULL, 1, 'Imprime historia clinica'),
(1019, 'validar_usuario_android.php', NULL, 'validar_usuario_android.php', NULL, NULL, 1, 'valida login y password enviados desde android'),
(1020, 'validar_usuario_android.php', 'sincronizar_android.php', NULL, NULL, NULL, 1, 'recibe los datos desde android'),
(1021, 'ver_registrar_atencion.php', '', 'ver_registrar_atencion.php', 'ver_registrar_atencion.php', NULL, 1, 'Muestra formulario para registrar y/o modificar una atencion'),
(1022, 'ver_registrar_maestro_detalle_entidad.php', '', 'ver_registrar_maestro_detalle_autonomo.php', 'ver_registrar_maestro_detalle_autonomo.php', NULL, 1, 'Asocia la entidad con el tipo de atencion para asignar valores'),
(1023, 'guardar_maestro_detalle.php', 'guardar_maestro_detalle.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Consulta informacion de la tabla maestro de una maestro detalle'),
(1024, 'guardar_maestro_detalle.php', 'guardar_maestro_detalle.php', 'ver_registrar_maestro_detalle_autonomo.php', 'ver_registrar_maestro_detalle_autonomo.php', NULL, 1, ''),
(1025, 'ver_imprimir_factura.php', 'modifica_factura.php', 'ver_imprimir_factura.php', 'ver_imprimir_factura.php', NULL, 1, 'Muestra pantalla para imprimir factura generada desde una autorizacion'),
(1026, 'genera_facturas.php', 'genera_facturas.php', 'ver_imprimir_factura.php', 'ver_imprimir_factura.php', NULL, 1, 'Genera el proceso de crear facturas'),
(1027, '', '', 'ver_asociar_autorizacion_atencion.php', 'ver_asociar_autorizacion_atencion.php', NULL, 1, 'Muestra pantalla donde se lista las atenciones pendiente por autorizacion'),
(1028, 'guardar_resolucion_dian.php', 'guardar_dato_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda la resolucion dian'),
(1029, 'ver_registrar_dato_tabla_autonoma.php', '', 'ver_registrar_dato_tabla_autonoma.php', 'ver_registrar_resolucion_dian.php', NULL, 1, 'muestra pantalla para registrar un numero de resolucion'),
(1030, 'guardar_atencion_autorizacion.php', 'guardar_atencion_autorizacion.php', 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', NULL, 1, 'Guarda la relacion entre las atencion y la autorizacion generada'),
(1031, 'ver_registrar_dato_tabla_autonoma.php', '', 'ver_consultar_registro_factura.php', 'ver_consultar_registro_factura.php', NULL, 1, 'muestra el registro de una factura'),
(1032, 'ver_cambiar_estado_factura.php', '', 'ver_cambiar_estado_factura.php', 'ver_cambiar_estado_factura.php', NULL, 1, 'muestra pantalla para el cambio masivo de estado'),
(1033, 'guardar_estado_factura.php', 'guardar_estado_factura.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda el nuevo estado para las facturas seleccionadas'),
(1034, 'guardar_autorizacion.php', 'guardar_maestro_detalle.php', 'ver_registrar_maestro_detalle_autonomo.php', 'ver_registrar_maestro_detalle_autonomo.php', NULL, 1, 'Guarda una autorizacion'),
(1035, 'ver_registrar_descuento.php', '', 'ver_registrar_descuento.php', 'ver_registrar_descuento.php', NULL, 1, 'muestra pantalla para generar y asignar descuento'),
(1036, 'guardar_descuento_factura.php', 'guardar_descuento_factura.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'guarda el descuento de las facturas'),
(1037, 'ver_registrar_impuesto.php', '', 'ver_registrar_impuesto.php', 'ver_registrar_impuesto.php', NULL, 1, 'Muestra pantalla para generar y asignar iva a las facturas seleccionadas'),
(1038, 'guardar_impuesto_factura.php', 'guardar_impuesto_factura.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda el impuesto para las facturas'),
(1039, 'ver_generar_reportes.php', 'ver_generar_reportes.php', 'ver_generar_reportes.php', 'ver_generar_reportes.php', NULL, 1, ''),
(1040, '', 'descargar_reporte.php', 'descargar_reporte.php', '', NULL, 0, ''),
(1041, '', 'descargar_txt.php', 'descargar_txt.php', '', NULL, 1, 'descargar archivo plano'),
(1042, 'ver_asociar_factura.php', 'genera_facturas_anuladas.php', 'ver_asociar_factura.php', 'ver_asociar_factura.php', NULL, 1, 'Muestra lista de facturas que se generaron'),
(1043, 'guardar_relacion_factura_periodo.php', 'guardar_relacion_factura_periodo.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda la relacion entre facturas y periodos de facturacion'),
(1044, 'ver_imprimir_relacion.php', '', 'ver_imprimir_relacion.php', 'ver_imprimir_relacion.php', NULL, 1, 'Descargar archivo de relaciones'),
(1045, 'ver_estadisticas.php', '', 'ver_estadisticas.php', 'ver_estadisticas.php', NULL, 1, 'muestra las estadisicas del sistema'),
(1046, 'ver_registrar_perfil.php', '', 'ver_registrar_perfil.php', 'ver_registrar_perfil.php', NULL, 1, 'Muestra pantalla de registro para la creacion de perfiles y sus permisos'),
(1047, 'guardar_perfil.php', 'guardar_perfil.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda el perfil creado con sus respectivos permisos'),
(1048, 'ver_registrar_condicion_perfil.php', 'guardar_perfil.php', 'ver_registrar_condicion_perfil.php', 'ver_registrar_condicion_perfil.php', NULL, 1, 'Muestra pantalla para el registro de condiciones especiales para un perfil'),
(1049, 'guardar_condicion_consulta.php', 'guardar_condicion_consulta.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'guarda las condiciones para el reporte determinado para un perfil'),
(1050, 'ver_registrar_proceso_pantalla.php', '', 'ver_registrar_proceso_pantalla.php', 'ver_registrar_proceso_pantalla.php', NULL, 1, ''),
(1051, 'guardar_procesos_adicionales.php', 'guardar_procesos_adicionales.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda y da permisos sobre el proceso seleccionado'),
(1052, 'ver_registrar_reporte_perfil.php', '', 'ver_registrar_reporte_perfil.php', 'ver_registrar_reporte_perfil.php', NULL, 1, 'Muestra pantalla para el registro de los permisos sobre los reportes del sistema'),
(1053, 'guardar_perfil_reporte.php', 'guardar_perfil_reporte.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, 'Guarda los permisos sobre los reportes seleccionados del sistema'),
(1054, '', '', '', 'ver_validar_usuario.php', NULL, 1, 'Muestra pantalla para el login'),
(1055, 'ver_registrar_dato_tabla_autonoma.php', '', 'ver_registrar_entrada_producto.php', 'ver_registrar_entrada_producto.php', NULL, 1, 'Muestra pantalla para el regiustro de las entradas para los productos'),
(127, 'ver_registrar_dato_ventana_emergente.php', '', 'ver_registrar_dato_tabla_autonoma.php', 'ver_registrar_dato_ventana_emergente.php', NULL, 1, 'Muestra pantalla para el registro de un dato desde una ventana emergente'),
(2000, '', '', 'ver_entrada_x_proveedor.php', 'ver_entrada_x_proveedor.php', NULL, 1, 'Muestra informacion cargada mediante ajax de las entradas segundo el proveedor seleccionado'),
(2001, '', '', '', '', 'precio_unitario_producto.php', 1, 'Retorn el precio unitario del producto '),
(2002, '', '', '', '', 'retorna_cantidad_producto.php', 1, 'Retorna la cantidad del producto para compararla contra la ingresada'),
(1056, 'guardar_pedido.php', 'guardar_pedido.php', 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', '', 1, 'Flujo de navegacion para guardar los pedidos registrados por el usuario'),
(1057, '', 'anular_pedido.php', '', '', '', 1, 'Flujo de navegacion para la anulacion de uno o varios pedidos'),
(1058, 'ver_pagar_pedido.php', '', 'ver_pagar_pedido.php', 'ver_pagar_pedido.php', '', 1, 'Pantalla donde se describen los pedidos que van a ser pagados'),
(1059, 'pagar_pedido.php', 'pagar_pedido.php', 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', '', 1, 'Navega y cambia el estado a los pedidos seleccionados '),
(47, 'guardar_dato_ventana_emergente.php', 'guardar_dato_tabla_autonoma.php', '', 'salida_guardar_dato_ventana.php', '', 1, 'Guarda datos de la ventana emergente'),
(1060, '', 'generar_recibo_pago.php', '', '', '', 1, 'Flujo de navegacion para generar tiquete de comprar'),
(1061, '', '', 'consulta_script_lista_valores.php', '', 'consulta_script_lista_valores.php', 1, 'Flujo de navegacion para consultar dato de acuerdo al script en la columna tabla autonoma'),
(1062, 'ver_parametros_sistema.php', '', 'ver_parametros_sistema.php', 'ver_parametros_sistema.php', '', 1, 'Flujo de navegacion para mostrar informacion y parametros configurables del sistema'),
(1063, 'guardar_parametros_sistema.php', 'guardar_parametros_sistema.php', 'ver_parametros_sistema.php', 'ver_parametros_sistema.php', '', 1, 'Valida y guarda los datos intorudcidos en la pantalla de codiguracion de los parametros del sistema'),
(1064, '', 'generar_recibo_pago_v2.php', '', 'generar_recibo_pago_v2.php', '', 1, 'Flujo de navegacion para generar recibo de pago para impresora de tinta'),
(1065, '', '', 'consultar_row_pedido.php', '', '', 1, 'Flujo de navegacion para consultar un registro por codigo de tabla y codigo pk, devolviendo un array json para javascript'),
(1066, '', '', 'consultar_row_autonomo.php', '', '', 1, 'Flujo de navegacion para consultar una registro a partir del pk de columna_tabña_autonoma'),
(1067, '', 'anular_factura.php', '', '', '', 1, 'Flujo de navegacion para anular una factura y liberar los pedidos'),
(1068, '', '', 'ver_pagar_factura.php', '', 'ver_pagar_factura.php', 1, 'Muestra ventana para ingresar el valor que se pagara de la factura'),
(1069, '', 'pagar_factura.php', '', '', '', 1, 'Flujo de navegacion para guardar el pago sobre una factura'),
(1070, 'ver_consultar_tabla_autonoma.php', '', 'ver_consultar_registro_factura.php', 'ver_consultar_registro_factura.php', '', 1, 'Flujo de navegacion para guardar el pago sobre una factura'),
(1071, '', '', 'consultar_factura_by_estado.php', '', 'ver_facturas_by_estado.php', 1, 'Flujo de navegacion para consultar si un cliente tiene facturas vencidas o esta en mora'),
(1072, '', 'anular_entrada_producto.php', '', '', '', 1, 'Flujo de navegacion para anular una entrada de producto'),
(200, '', '', 'ver_menu_secundario.php', 'ver_menu_secundario.php', '', 1, 'Flujo de navegacion para la configuracion de tablas menores'),
(1073, '', 'genera_backup.php', '', '', '', 1, 'Flujo de navegacion para generar backup'),
(1100, 'ver_registrar_maestro_detalle_autonomo.php', NULL, 'ver_registrar_maestro_detalle_autonomo.php', 'ver_registrar_pedido.php', NULL, 1, 'Registra Pedido'),
(1075, 'guardar_pedido.php', 'guardar_pedido.php', 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', NULL, 1, 'Guardar Pedido'),
(1096, 'genera_limpieza_datos.php', 'genera_limpieza_datos.php', NULL, NULL, '', 1, 'Limpia Base de datos'),
(1097, NULL, NULL, NULL, NULL, 'ver_confirmacion_login_return.php', 1, ''),
(1091, 'valida_usuario_login.php', NULL, NULL, NULL, NULL, 1, ''),
(1077, 'guardar_entrada_producto.php', 'guardar_dato_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', 'ver_consultar_tabla_autonoma.php', NULL, 1, ''),
(1092, NULL, NULL, 'ver_entrada_x_sujeto.php', '', 'ver_entrada_x_sujeto.php', 1, ''),
(1095, 'guardar_seg_empresa.php', 'guardar_seg_empresa.php', NULL, NULL, NULL, 1, ''),
(1084, 'guardar_pedido_compra.php', 'guardar_pedido_compra.php', 'ver_consultar_maestro_detalle.php', 'ver_consultar_maestro_detalle.php', NULL, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_navegacion_estadistica`
--

CREATE TABLE `seg_navegacion_estadistica` (
  `cod_navegacion` int(11) DEFAULT NULL,
  `fec_visita` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cod_pais` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_navegacion_estadistica`
--

INSERT INTO `seg_navegacion_estadistica` (`cod_navegacion`, `fec_visita`, `cod_pais`) VALUES
(36, '2019-04-08 05:48:15', NULL),
(39, '2019-04-08 05:48:17', NULL),
(36, '2019-04-08 05:48:19', NULL),
(78, '2019-04-08 05:48:21', NULL),
(36, '2019-04-08 05:48:24', NULL),
(39, '2019-04-08 05:48:30', NULL),
(36, '2019-04-08 05:48:33', NULL),
(39, '2019-04-08 05:49:02', NULL),
(36, '2019-04-08 05:49:07', NULL),
(1062, '2019-04-08 05:49:31', NULL),
(36, '2019-04-08 05:49:35', NULL),
(78, '2019-04-08 05:50:08', NULL),
(36, '2019-04-08 05:50:12', NULL),
(39, '2019-04-08 05:50:16', NULL),
(37, '2019-04-08 05:50:19', NULL),
(38, '2019-04-08 05:50:57', NULL),
(38, '2019-04-08 05:51:03', NULL),
(38, '2019-04-08 05:54:21', NULL),
(38, '2019-04-08 05:56:43', NULL),
(38, '2019-04-08 05:58:52', NULL),
(38, '2019-04-08 05:59:31', NULL),
(38, '2019-04-08 05:59:44', NULL),
(38, '2019-04-08 06:00:40', NULL),
(38, '2019-04-08 06:00:59', NULL),
(39, '2019-04-08 06:01:16', NULL),
(39, '2019-04-08 06:01:51', NULL),
(39, '2019-04-08 06:02:43', NULL),
(39, '2019-04-08 06:02:54', NULL),
(1055, '2019-04-08 06:03:17', NULL),
(43, '2019-04-08 06:03:21', NULL),
(1055, '2019-04-08 06:03:46', NULL),
(39, '2019-04-08 06:04:17', NULL),
(1055, '2019-04-08 06:05:07', NULL),
(1055, '2019-04-08 06:07:38', NULL),
(1055, '2019-04-08 06:07:58', NULL),
(1055, '2019-04-08 06:08:37', NULL),
(1055, '2019-04-08 06:10:02', NULL),
(1055, '2019-04-08 06:11:11', NULL),
(1055, '2019-04-08 06:29:00', NULL),
(36, '2019-04-12 04:31:41', NULL),
(78, '2019-04-12 04:32:22', NULL),
(39, '2019-04-12 04:33:02', NULL),
(39, '2019-04-12 04:33:05', NULL),
(39, '2019-04-12 04:33:09', NULL),
(39, '2019-04-12 04:33:10', NULL),
(39, '2019-04-12 04:33:13', NULL),
(39, '2019-04-12 04:33:15', NULL),
(36, '2019-04-12 04:33:22', NULL),
(39, '2019-04-12 04:41:45', NULL),
(39, '2019-04-12 04:45:15', NULL),
(39, '2019-04-12 04:45:21', NULL),
(39, '2019-04-12 04:48:01', NULL),
(39, '2019-04-12 04:48:04', NULL),
(39, '2019-04-12 04:48:25', NULL),
(39, '2019-04-12 04:48:55', NULL),
(39, '2019-04-12 04:50:45', NULL),
(39, '2019-04-12 05:00:55', NULL),
(39, '2019-04-12 05:02:23', NULL),
(36, '2019-04-12 05:02:42', NULL),
(39, '2019-04-12 05:02:47', NULL),
(39, '2019-04-12 05:03:01', NULL),
(1052, '2019-04-12 05:03:07', NULL),
(1052, '2019-04-12 05:03:14', NULL),
(1052, '2019-04-12 05:11:26', NULL),
(1053, '2019-04-12 05:11:34', NULL),
(39, '2019-04-12 05:11:39', NULL),
(39, '2019-04-12 05:11:41', NULL),
(39, '2019-04-12 05:11:44', NULL),
(78, '2019-04-12 05:11:45', NULL),
(39, '2019-04-12 05:11:46', NULL),
(39, '2019-04-12 05:11:48', NULL),
(39, '2019-04-12 05:11:49', NULL),
(39, '2019-04-12 05:12:21', NULL),
(39, '2019-04-12 05:16:47', NULL),
(39, '2019-04-12 05:16:53', NULL),
(39, '2019-04-12 05:20:24', NULL),
(36, '2019-04-17 02:15:14', NULL),
(78, '2019-04-17 02:15:50', NULL),
(43, '2019-04-17 02:16:20', NULL),
(78, '2019-04-17 02:17:02', NULL),
(39, '2019-04-17 02:17:05', NULL),
(39, '2019-04-17 02:17:06', NULL),
(78, '2019-04-17 02:17:07', NULL),
(39, '2019-04-17 02:17:08', NULL),
(39, '2019-04-17 02:17:09', NULL),
(39, '2019-04-17 02:17:09', NULL),
(39, '2019-04-17 02:17:13', NULL),
(36, '2019-04-18 02:00:32', NULL),
(200, '2019-04-18 02:00:34', NULL),
(36, '2019-04-18 02:00:36', NULL),
(78, '2019-04-18 02:00:37', NULL),
(36, '2019-04-19 03:37:30', NULL),
(78, '2019-04-19 03:37:31', NULL),
(36, '2019-04-19 06:14:58', NULL),
(78, '2019-04-19 06:14:59', NULL),
(39, '2019-04-19 06:20:58', NULL),
(37, '2019-04-19 06:21:02', NULL),
(38, '2019-04-19 06:21:31', NULL),
(38, '2019-04-19 06:21:40', NULL),
(37, '2019-04-19 06:21:46', NULL),
(39, '2019-04-19 06:21:50', NULL),
(37, '2019-04-19 06:21:59', NULL),
(39, '2019-04-19 06:22:01', NULL),
(37, '2019-04-19 06:22:03', NULL),
(39, '2019-04-19 06:22:04', NULL),
(39, '2019-04-19 06:22:10', NULL),
(1055, '2019-04-19 06:25:07', NULL),
(39, '2019-04-19 06:25:33', NULL),
(1055, '2019-04-19 06:25:49', NULL),
(1055, '2019-04-19 06:26:12', NULL),
(39, '2019-04-19 06:27:54', NULL),
(39, '2019-04-19 06:27:58', NULL),
(1055, '2019-04-19 06:28:07', NULL),
(39, '2019-04-19 06:28:10', NULL),
(37, '2019-04-19 06:28:11', NULL),
(38, '2019-04-19 06:28:41', NULL),
(39, '2019-04-19 06:28:45', NULL),
(1055, '2019-04-19 06:28:48', NULL),
(1061, '2019-04-19 06:28:52', NULL),
(1061, '2019-04-19 06:28:52', NULL),
(1061, '2019-04-19 06:28:52', NULL),
(1061, '2019-04-19 06:28:55', NULL),
(1061, '2019-04-19 06:28:55', NULL),
(1061, '2019-04-19 06:28:55', NULL),
(1061, '2019-04-19 06:28:55', NULL),
(1061, '2019-04-19 06:28:56', NULL),
(1061, '2019-04-19 06:28:56', NULL),
(1061, '2019-04-19 06:28:56', NULL),
(1061, '2019-04-19 06:28:56', NULL),
(1061, '2019-04-19 06:28:57', NULL),
(1061, '2019-04-19 06:28:57', NULL),
(1061, '2019-04-19 06:28:58', NULL),
(1061, '2019-04-19 06:28:58', NULL),
(1061, '2019-04-19 06:28:58', NULL),
(1061, '2019-04-19 06:28:59', NULL),
(1061, '2019-04-19 06:28:59', NULL),
(1061, '2019-04-19 06:28:59', NULL),
(1061, '2019-04-19 06:29:00', NULL),
(1061, '2019-04-19 06:29:00', NULL),
(1061, '2019-04-19 06:29:01', NULL),
(1061, '2019-04-19 06:29:01', NULL),
(1061, '2019-04-19 06:29:01', NULL),
(1061, '2019-04-19 06:29:01', NULL),
(1055, '2019-04-19 06:36:05', NULL),
(1055, '2019-04-19 06:36:31', NULL),
(1055, '2019-04-19 06:37:19', NULL),
(1055, '2019-04-19 06:37:26', NULL),
(1055, '2019-04-19 06:37:36', NULL),
(1055, '2019-04-19 06:37:47', NULL),
(1055, '2019-04-19 06:38:53', NULL),
(1055, '2019-04-19 06:39:04', NULL),
(1055, '2019-04-19 06:39:13', NULL),
(1055, '2019-04-19 06:41:02', NULL),
(1055, '2019-04-19 06:45:57', NULL),
(43, '2019-04-19 06:46:01', NULL),
(43, '2019-04-19 06:46:14', NULL),
(39, '2019-04-19 06:46:23', NULL),
(39, '2019-04-19 06:46:26', NULL),
(39, '2019-04-19 06:46:28', NULL),
(39, '2019-04-19 06:46:29', NULL),
(39, '2019-04-19 06:46:31', NULL),
(39, '2019-04-19 06:46:34', NULL),
(43, '2019-04-19 06:46:38', NULL),
(1061, '2019-04-19 06:46:44', NULL),
(1061, '2019-04-19 06:46:45', NULL),
(1061, '2019-04-19 06:46:45', NULL),
(1061, '2019-04-19 06:46:45', NULL),
(1061, '2019-04-19 06:46:45', NULL),
(43, '2019-04-19 06:46:58', NULL),
(1061, '2019-04-19 06:47:11', NULL),
(39, '2019-04-19 06:49:39', NULL),
(43, '2019-04-19 06:49:45', NULL),
(43, '2019-04-19 06:49:55', NULL),
(39, '2019-04-19 06:49:57', NULL),
(39, '2019-04-19 06:50:10', NULL),
(1055, '2019-04-19 06:50:14', NULL),
(1061, '2019-04-19 06:50:18', NULL),
(1061, '2019-04-19 06:50:18', NULL),
(1061, '2019-04-19 06:50:18', NULL),
(1061, '2019-04-19 06:50:18', NULL),
(1061, '2019-04-19 06:50:18', NULL),
(1061, '2019-04-19 06:50:20', NULL),
(1061, '2019-04-19 06:50:20', NULL),
(1061, '2019-04-19 06:50:21', NULL),
(1061, '2019-04-19 06:50:21', NULL),
(1061, '2019-04-19 06:50:22', NULL),
(1061, '2019-04-19 06:50:22', NULL),
(1061, '2019-04-19 06:50:22', NULL),
(43, '2019-04-19 06:50:23', NULL),
(1061, '2019-04-19 06:50:29', NULL),
(1061, '2019-04-19 06:50:29', NULL),
(1061, '2019-04-19 06:50:29', NULL),
(1061, '2019-04-19 06:50:29', NULL),
(1061, '2019-04-19 06:50:31', NULL),
(1061, '2019-04-19 06:50:32', NULL),
(1061, '2019-04-19 06:50:32', NULL),
(1061, '2019-04-19 06:50:32', NULL),
(1055, '2019-04-19 06:51:28', NULL),
(1061, '2019-04-19 06:51:32', NULL),
(1061, '2019-04-19 06:51:32', NULL),
(1061, '2019-04-19 06:51:33', NULL),
(1061, '2019-04-19 06:51:34', NULL),
(1061, '2019-04-19 06:51:34', NULL),
(1061, '2019-04-19 06:51:34', NULL),
(1061, '2019-04-19 06:51:34', NULL),
(1061, '2019-04-19 06:51:37', NULL),
(1061, '2019-04-19 06:51:37', NULL),
(1061, '2019-04-19 06:51:37', NULL),
(1061, '2019-04-19 06:51:44', NULL),
(1061, '2019-04-19 06:51:45', NULL),
(1055, '2019-04-19 06:52:49', NULL),
(1061, '2019-04-19 06:52:53', NULL),
(1061, '2019-04-19 06:52:53', NULL),
(1061, '2019-04-19 06:52:53', NULL),
(1061, '2019-04-19 06:53:12', NULL),
(1055, '2019-04-19 06:56:02', NULL),
(1061, '2019-04-19 06:56:05', NULL),
(1061, '2019-04-19 06:56:05', NULL),
(1061, '2019-04-19 06:56:05', NULL),
(1055, '2019-04-19 06:56:15', NULL),
(1061, '2019-04-19 06:56:18', NULL),
(1061, '2019-04-19 06:56:18', NULL),
(1061, '2019-04-19 06:56:18', NULL),
(36, '2019-04-19 06:56:48', NULL),
(200, '2019-04-19 06:56:50', NULL),
(36, '2019-04-19 06:56:53', NULL),
(39, '2019-04-19 06:56:55', NULL),
(39, '2019-04-19 06:57:01', NULL),
(1052, '2019-04-19 06:57:10', NULL),
(1046, '2019-04-19 06:57:21', NULL),
(39, '2019-04-19 06:57:28', NULL),
(39, '2019-04-19 06:57:31', NULL),
(39, '2019-04-19 06:57:34', NULL),
(1055, '2019-04-19 06:57:37', NULL),
(1055, '2019-04-19 06:58:56', NULL),
(1055, '2019-04-19 06:59:41', NULL),
(1055, '2019-04-19 06:59:53', NULL),
(1055, '2019-04-19 07:00:10', NULL),
(1055, '2019-04-19 07:00:26', NULL),
(78, '2019-04-19 07:00:30', NULL),
(39, '2019-04-19 07:01:26', NULL),
(1055, '2019-04-19 07:01:38', NULL),
(78, '2019-04-19 07:01:40', NULL),
(39, '2019-04-19 07:01:42', NULL),
(1055, '2019-04-19 07:01:45', NULL),
(1061, '2019-04-19 07:01:48', NULL),
(1061, '2019-04-19 07:01:48', NULL),
(1061, '2019-04-19 07:01:48', NULL),
(1077, '2019-04-19 07:01:59', NULL),
(1055, '2019-04-19 07:02:45', NULL),
(78, '2019-04-19 07:02:47', NULL),
(39, '2019-04-19 07:02:55', NULL),
(1055, '2019-04-19 07:02:57', NULL),
(1055, '2019-04-19 07:05:14', NULL),
(1055, '2019-04-19 07:05:54', NULL),
(39, '2019-04-19 07:06:01', NULL),
(1055, '2019-04-19 07:06:04', NULL),
(1061, '2019-04-19 07:06:09', NULL),
(1061, '2019-04-19 07:06:09', NULL),
(1061, '2019-04-19 07:06:09', NULL),
(1077, '2019-04-19 07:06:19', NULL),
(36, '2019-04-20 17:43:08', NULL),
(36, '2019-04-20 17:43:13', NULL),
(78, '2019-04-20 17:43:15', NULL),
(39, '2019-04-20 17:43:22', NULL),
(39, '2019-04-20 17:54:51', NULL),
(39, '2019-04-20 18:01:28', NULL),
(78, '2019-04-20 18:01:38', NULL),
(39, '2019-04-20 18:02:25', NULL),
(39, '2019-04-20 19:23:00', NULL),
(36, '2019-04-20 19:23:05', NULL),
(78, '2019-04-20 19:23:06', NULL),
(39, '2019-04-20 19:23:10', NULL),
(39, '2019-04-20 19:23:12', NULL),
(39, '2019-04-20 19:24:03', NULL),
(39, '2019-04-20 19:32:23', NULL),
(39, '2019-04-20 19:33:56', NULL),
(39, '2019-04-20 19:38:20', NULL),
(39, '2019-04-20 19:38:52', NULL),
(39, '2019-04-20 19:43:32', NULL),
(39, '2019-04-20 19:46:12', NULL),
(39, '2019-04-20 19:47:06', NULL),
(39, '2019-04-20 19:47:49', NULL),
(39, '2019-04-20 19:48:39', NULL),
(39, '2019-04-20 19:49:49', NULL),
(39, '2019-04-20 19:50:04', NULL),
(39, '2019-04-20 19:58:05', NULL),
(39, '2019-04-20 20:01:13', NULL),
(1055, '2019-04-20 20:01:17', NULL),
(39, '2019-04-20 20:01:21', NULL),
(39, '2019-04-20 20:09:30', NULL),
(39, '2019-04-20 20:09:31', NULL),
(1055, '2019-04-20 20:09:35', NULL),
(39, '2019-04-20 20:09:36', NULL),
(39, '2019-04-20 20:15:40', NULL),
(39, '2019-04-20 20:16:06', NULL),
(39, '2019-04-20 20:18:33', NULL),
(39, '2019-04-20 20:22:51', NULL),
(39, '2019-04-20 20:26:48', NULL),
(39, '2019-04-20 20:54:50', NULL),
(1055, '2019-04-20 20:54:54', NULL),
(39, '2019-04-20 20:54:57', NULL),
(1055, '2019-04-20 20:55:00', NULL),
(39, '2019-04-20 20:55:14', NULL),
(37, '2019-04-20 20:55:18', NULL),
(39, '2019-04-20 20:55:22', NULL),
(37, '2019-04-20 20:55:25', NULL),
(39, '2019-04-20 20:55:27', NULL),
(39, '2019-04-20 20:57:48', NULL),
(37, '2019-04-20 21:02:48', NULL),
(39, '2019-04-20 21:02:52', NULL),
(39, '2019-04-20 21:02:58', NULL),
(1055, '2019-04-20 21:03:01', NULL),
(39, '2019-04-20 21:14:20', NULL),
(1055, '2019-04-20 21:14:22', NULL),
(1077, '2019-04-20 21:14:25', NULL),
(1055, '2019-04-20 21:15:07', NULL),
(1077, '2019-04-20 21:15:11', NULL),
(1055, '2019-04-20 21:17:46', NULL),
(1077, '2019-04-20 21:17:55', NULL),
(1055, '2019-04-20 21:20:00', NULL),
(1055, '2019-04-20 21:22:22', NULL),
(1077, '2019-04-20 21:22:51', NULL),
(1061, '2019-04-20 21:22:56', NULL),
(1061, '2019-04-20 21:22:57', NULL),
(1061, '2019-04-20 21:22:57', NULL),
(1061, '2019-04-20 21:22:57', NULL),
(1061, '2019-04-20 21:22:57', NULL),
(1061, '2019-04-20 21:22:59', NULL),
(1061, '2019-04-20 21:22:59', NULL),
(1061, '2019-04-20 21:22:59', NULL),
(1061, '2019-04-20 21:22:59', NULL),
(1061, '2019-04-20 21:22:59', NULL),
(1061, '2019-04-20 21:22:59', NULL),
(1061, '2019-04-20 21:23:00', NULL),
(1061, '2019-04-20 21:23:00', NULL),
(1061, '2019-04-20 21:23:00', NULL),
(1077, '2019-04-20 21:23:13', NULL),
(1055, '2019-04-20 21:23:23', NULL),
(1055, '2019-04-20 21:25:33', NULL),
(1055, '2019-04-20 21:43:53', NULL),
(1055, '2019-04-20 22:18:24', NULL),
(36, '2019-04-20 22:18:26', NULL),
(36, '2019-04-20 22:18:30', NULL),
(78, '2019-04-20 22:18:32', NULL),
(39, '2019-04-20 22:18:34', NULL),
(1055, '2019-04-20 22:18:36', NULL),
(43, '2019-04-20 22:18:41', NULL),
(1077, '2019-04-20 22:18:49', NULL),
(37, '2019-04-20 22:24:41', NULL),
(39, '2019-04-20 22:24:46', NULL),
(1055, '2019-04-20 22:24:48', NULL),
(43, '2019-04-20 22:24:50', NULL),
(1077, '2019-04-20 22:41:21', NULL),
(1055, '2019-04-20 22:41:25', NULL),
(39, '2019-04-20 22:41:55', NULL),
(1055, '2019-04-20 22:42:01', NULL),
(39, '2019-04-20 22:42:05', NULL),
(1055, '2019-04-20 22:42:11', NULL),
(39, '2019-04-20 22:42:14', NULL),
(39, '2019-04-20 22:42:40', NULL),
(1055, '2019-04-20 22:42:43', NULL),
(1061, '2019-04-20 22:42:46', NULL),
(1061, '2019-04-20 22:42:46', NULL),
(1061, '2019-04-20 22:42:46', NULL),
(1061, '2019-04-20 22:42:46', NULL),
(1061, '2019-04-20 22:42:46', NULL),
(1061, '2019-04-20 22:42:48', NULL),
(1061, '2019-04-20 22:42:49', NULL),
(1061, '2019-04-20 22:42:49', NULL),
(1061, '2019-04-20 22:42:49', NULL),
(1061, '2019-04-20 22:42:49', NULL),
(1061, '2019-04-20 22:42:49', NULL),
(1061, '2019-04-20 22:42:50', NULL),
(1061, '2019-04-20 22:42:50', NULL),
(1061, '2019-04-20 22:42:50', NULL),
(1061, '2019-04-20 22:42:53', NULL),
(1061, '2019-04-20 22:42:54', NULL),
(1061, '2019-04-20 22:42:54', NULL),
(1061, '2019-04-20 22:42:54', NULL),
(1077, '2019-04-20 22:43:09', NULL),
(1055, '2019-04-20 22:43:16', NULL),
(1055, '2019-04-20 22:45:00', NULL),
(1072, '2019-04-20 22:45:10', NULL),
(1055, '2019-04-20 22:45:16', NULL),
(39, '2019-04-20 22:45:20', NULL),
(1055, '2019-04-20 22:45:23', NULL),
(1055, '2019-04-20 23:09:17', NULL),
(1061, '2019-04-20 23:09:20', NULL),
(1061, '2019-04-20 23:09:20', NULL),
(1061, '2019-04-20 23:09:20', NULL),
(1061, '2019-04-20 23:09:20', NULL),
(1061, '2019-04-20 23:09:20', NULL),
(1061, '2019-04-20 23:09:22', NULL),
(1061, '2019-04-20 23:09:23', NULL),
(1061, '2019-04-20 23:09:23', NULL),
(1061, '2019-04-20 23:09:23', NULL),
(1061, '2019-04-20 23:09:23', NULL),
(1061, '2019-04-20 23:09:23', NULL),
(1061, '2019-04-20 23:09:23', NULL),
(1061, '2019-04-20 23:09:23', NULL),
(1061, '2019-04-20 23:09:23', NULL),
(39, '2019-04-20 23:09:28', NULL),
(78, '2019-04-20 23:09:31', NULL),
(1100, '2019-04-20 23:09:33', NULL),
(43, '2019-04-20 23:09:40', NULL),
(43, '2019-04-20 23:09:48', NULL),
(43, '2019-04-20 23:10:05', NULL),
(1100, '2019-04-20 23:14:33', NULL),
(1100, '2019-04-20 23:17:34', NULL),
(1100, '2019-04-20 23:20:12', NULL),
(1100, '2019-04-20 23:36:38', NULL),
(43, '2019-04-20 23:36:48', NULL),
(1100, '2019-04-20 23:38:05', NULL),
(43, '2019-04-20 23:38:12', NULL),
(2001, '2019-04-20 23:38:24', NULL),
(2002, '2019-04-20 23:38:25', NULL),
(2001, '2019-04-20 23:38:26', NULL),
(2002, '2019-04-20 23:38:26', NULL),
(2002, '2019-04-20 23:38:28', NULL),
(2002, '2019-04-20 23:38:28', NULL),
(1075, '2019-04-20 23:38:44', NULL),
(1058, '2019-04-20 23:39:17', NULL),
(1059, '2019-04-20 23:39:27', NULL),
(1026, '2019-04-20 23:39:36', NULL),
(78, '2019-04-20 23:39:38', NULL),
(1064, '2019-04-21 00:02:01', NULL),
(78, '2019-04-21 00:02:10', NULL),
(1026, '2019-04-21 00:02:12', NULL),
(78, '2019-04-21 00:02:14', NULL),
(36, '2019-04-21 00:02:25', NULL),
(1062, '2019-04-21 00:02:26', NULL),
(1062, '2019-04-21 00:08:09', NULL),
(1062, '2019-04-21 00:19:12', NULL),
(1062, '2019-04-21 00:20:02', NULL),
(1062, '2019-04-21 00:20:24', NULL),
(1062, '2019-04-21 00:22:17', NULL),
(1062, '2019-04-21 00:23:42', NULL),
(1062, '2019-04-21 00:24:13', NULL),
(1062, '2019-04-21 00:25:07', NULL),
(1062, '2019-04-21 00:25:43', NULL),
(1062, '2019-04-21 00:25:59', NULL),
(1062, '2019-04-21 00:26:11', NULL),
(1062, '2019-04-21 00:26:57', NULL),
(1062, '2019-04-21 00:33:46', NULL),
(1062, '2019-04-21 00:35:15', NULL),
(36, '2019-04-21 00:35:24', NULL),
(39, '2019-04-21 00:35:26', NULL),
(39, '2019-04-21 00:35:30', NULL),
(39, '2019-04-21 00:35:32', NULL),
(78, '2019-04-21 00:35:35', NULL),
(1026, '2019-04-21 00:35:41', NULL),
(78, '2019-04-21 00:35:53', NULL),
(36, '2019-04-21 00:35:54', NULL),
(1062, '2019-04-21 00:35:57', NULL),
(36, '2019-04-21 00:36:07', NULL),
(78, '2019-04-21 00:36:08', NULL),
(1026, '2019-04-21 00:36:11', NULL),
(78, '2019-04-21 00:36:16', NULL),
(39, '2019-04-21 02:25:34', NULL),
(36, '2019-04-21 02:25:45', NULL),
(36, '2019-04-21 02:51:36', NULL),
(78, '2019-04-21 02:51:38', NULL),
(78, '2019-04-21 03:22:30', NULL),
(36, '2019-04-21 03:26:19', NULL),
(78, '2019-04-21 03:26:21', NULL),
(78, '2019-04-21 03:29:06', NULL),
(78, '2019-04-21 03:30:01', NULL),
(78, '2019-04-21 03:39:05', NULL),
(36, '2019-04-21 03:39:55', NULL),
(36, '2019-04-21 03:39:56', NULL),
(78, '2019-04-21 03:42:00', NULL),
(1061, '2019-04-21 03:42:29', NULL),
(1061, '2019-04-21 03:42:29', NULL),
(78, '2019-04-21 03:43:27', NULL),
(78, '2019-04-21 03:43:35', NULL),
(1061, '2019-04-21 03:43:41', NULL),
(1061, '2019-04-21 03:43:43', NULL),
(1061, '2019-04-21 03:43:45', NULL),
(1061, '2019-04-21 03:43:48', NULL),
(1061, '2019-04-21 03:43:51', NULL),
(1061, '2019-04-21 03:43:51', NULL),
(1061, '2019-04-21 03:43:52', NULL),
(1061, '2019-04-21 03:43:52', NULL),
(1061, '2019-04-21 03:43:54', NULL),
(1061, '2019-04-21 03:43:55', NULL),
(1061, '2019-04-21 03:43:55', NULL),
(1061, '2019-04-21 03:43:59', NULL),
(1061, '2019-04-21 03:44:01', NULL),
(1061, '2019-04-21 03:44:02', NULL),
(1061, '2019-04-21 03:44:08', NULL),
(1061, '2019-04-21 03:44:10', NULL),
(39, '2019-04-21 03:44:34', NULL),
(78, '2019-04-21 03:44:45', NULL),
(1061, '2019-04-21 03:44:51', NULL),
(1061, '2019-04-21 03:44:51', NULL),
(39, '2019-04-21 03:44:59', NULL),
(37, '2019-04-21 03:45:48', NULL),
(39, '2019-04-21 03:45:53', NULL),
(78, '2019-04-21 03:46:13', NULL),
(1100, '2019-04-21 03:46:16', NULL),
(1061, '2019-04-21 03:46:23', NULL),
(1061, '2019-04-21 03:46:23', NULL),
(1061, '2019-04-21 03:46:23', NULL),
(1061, '2019-04-21 03:46:24', NULL),
(1061, '2019-04-21 03:46:24', NULL),
(1061, '2019-04-21 03:46:24', NULL),
(39, '2019-04-21 03:46:34', NULL),
(37, '2019-04-21 03:46:42', NULL),
(38, '2019-04-21 03:48:13', NULL),
(39, '2019-04-21 03:48:24', NULL),
(1061, '2019-04-21 03:48:30', NULL),
(39, '2019-04-21 03:48:49', NULL),
(37, '2019-04-21 03:49:00', NULL),
(39, '2019-04-21 03:49:04', NULL),
(37, '2019-04-21 03:49:12', NULL),
(39, '2019-04-21 03:49:16', NULL),
(78, '2019-04-21 03:49:20', NULL),
(1100, '2019-04-21 03:49:21', NULL),
(1061, '2019-04-21 03:49:26', NULL),
(1061, '2019-04-21 03:49:26', NULL),
(1061, '2019-04-21 03:49:26', NULL),
(1061, '2019-04-21 03:49:26', NULL),
(1061, '2019-04-21 03:49:26', NULL),
(1061, '2019-04-21 03:49:27', NULL),
(1061, '2019-04-21 03:49:27', NULL),
(1061, '2019-04-21 03:49:27', NULL),
(2001, '2019-04-21 03:49:38', NULL),
(2002, '2019-04-21 03:49:38', NULL),
(2002, '2019-04-21 03:49:40', NULL),
(2002, '2019-04-21 03:49:40', NULL),
(1075, '2019-04-21 03:49:51', NULL),
(39, '2019-04-21 03:50:59', NULL),
(78, '2019-04-21 03:51:19', NULL),
(78, '2019-04-21 03:51:58', NULL),
(1100, '2019-04-21 03:52:01', NULL),
(1061, '2019-04-21 03:52:05', NULL),
(1061, '2019-04-21 03:52:05', NULL),
(2001, '2019-04-21 03:52:16', NULL),
(2002, '2019-04-21 03:52:16', NULL),
(2002, '2019-04-21 03:52:17', NULL),
(2002, '2019-04-21 03:52:17', NULL),
(1075, '2019-04-21 03:52:32', NULL),
(39, '2019-04-21 03:53:02', NULL),
(39, '2019-04-21 03:53:07', NULL),
(78, '2019-04-21 03:53:10', NULL),
(1100, '2019-04-21 03:53:16', NULL),
(78, '2019-04-21 03:53:22', NULL),
(1026, '2019-04-21 03:53:38', NULL),
(78, '2019-04-21 03:53:40', NULL),
(39, '2019-04-21 03:54:30', NULL),
(37, '2019-04-21 03:54:39', NULL),
(38, '2019-04-21 03:55:27', NULL),
(1055, '2019-04-21 03:55:39', NULL),
(1077, '2019-04-21 03:55:49', NULL),
(1061, '2019-04-21 03:55:56', NULL),
(1061, '2019-04-21 03:55:57', NULL),
(1061, '2019-04-21 03:55:57', NULL),
(1061, '2019-04-21 03:55:57', NULL),
(39, '2019-04-21 03:56:03', NULL),
(37, '2019-04-21 03:56:14', NULL),
(38, '2019-04-21 03:56:32', NULL),
(38, '2019-04-21 03:56:45', NULL),
(39, '2019-04-21 03:56:51', NULL),
(37, '2019-04-21 03:56:56', NULL),
(39, '2019-04-21 03:57:04', NULL),
(1055, '2019-04-21 03:57:09', NULL),
(1061, '2019-04-21 03:57:13', NULL),
(1061, '2019-04-21 03:57:13', NULL),
(1061, '2019-04-21 03:57:14', NULL),
(1061, '2019-04-21 03:57:14', NULL),
(1077, '2019-04-21 03:57:37', NULL),
(1055, '2019-04-21 03:57:57', NULL),
(39, '2019-04-21 03:58:15', NULL),
(39, '2019-04-21 03:58:35', NULL),
(39, '2019-04-21 03:58:49', NULL),
(37, '2019-04-21 03:59:14', NULL),
(39, '2019-04-21 03:59:31', NULL),
(78, '2019-04-21 03:59:34', NULL),
(1100, '2019-04-21 03:59:39', NULL),
(1061, '2019-04-21 03:59:43', NULL),
(1061, '2019-04-21 03:59:44', NULL),
(1061, '2019-04-21 03:59:55', NULL),
(1061, '2019-04-21 03:59:55', NULL),
(1061, '2019-04-21 03:59:57', NULL),
(1061, '2019-04-21 03:59:57', NULL),
(1061, '2019-04-21 03:59:58', NULL),
(1061, '2019-04-21 04:00:00', NULL),
(1061, '2019-04-21 04:00:00', NULL),
(1061, '2019-04-21 04:00:00', NULL),
(1061, '2019-04-21 04:00:03', NULL),
(1061, '2019-04-21 04:00:04', NULL),
(1061, '2019-04-21 04:00:04', NULL),
(1061, '2019-04-21 04:00:04', NULL),
(1061, '2019-04-21 04:00:04', NULL),
(1061, '2019-04-21 04:00:05', NULL),
(1061, '2019-04-21 04:00:05', NULL),
(43, '2019-04-21 04:00:07', NULL),
(1061, '2019-04-21 04:00:19', NULL),
(1061, '2019-04-21 04:00:20', NULL),
(1061, '2019-04-21 04:00:20', NULL),
(1061, '2019-04-21 04:00:21', NULL),
(1061, '2019-04-21 04:00:21', NULL),
(1061, '2019-04-21 04:00:21', NULL),
(1061, '2019-04-21 04:00:21', NULL),
(1061, '2019-04-21 04:00:21', NULL),
(2001, '2019-04-21 04:00:34', NULL),
(2002, '2019-04-21 04:00:34', NULL),
(2002, '2019-04-21 04:00:36', NULL),
(2002, '2019-04-21 04:00:37', NULL),
(1075, '2019-04-21 04:01:05', NULL),
(1064, '2019-04-21 04:01:11', NULL),
(78, '2019-04-21 04:01:22', NULL),
(39, '2019-04-21 04:01:27', NULL),
(39, '2019-04-21 04:01:52', NULL),
(39, '2019-04-21 04:01:54', NULL),
(39, '2019-04-21 04:01:59', NULL),
(37, '2019-04-21 04:02:27', NULL),
(38, '2019-04-21 04:03:11', NULL),
(78, '2019-04-21 04:03:16', NULL),
(39, '2019-04-21 04:03:18', NULL),
(78, '2019-04-21 04:03:38', NULL),
(39, '2019-04-21 04:03:39', NULL),
(37, '2019-04-21 04:03:41', NULL),
(38, '2019-04-21 04:04:20', NULL),
(39, '2019-04-21 04:04:24', NULL),
(37, '2019-04-21 04:04:27', NULL),
(39, '2019-04-21 04:04:30', NULL),
(39, '2019-04-21 04:04:36', NULL),
(37, '2019-04-21 04:04:39', NULL),
(39, '2019-04-21 04:04:43', NULL),
(1055, '2019-04-21 04:04:51', NULL),
(1061, '2019-04-21 04:04:55', NULL),
(1061, '2019-04-21 04:04:55', NULL),
(1061, '2019-04-21 04:04:55', NULL),
(1061, '2019-04-21 04:04:55', NULL),
(1061, '2019-04-21 04:04:55', NULL),
(1061, '2019-04-21 04:04:55', NULL),
(1061, '2019-04-21 04:04:56', NULL),
(1061, '2019-04-21 04:04:56', NULL),
(1061, '2019-04-21 04:05:03', NULL),
(1077, '2019-04-21 04:05:33', NULL),
(39, '2019-04-21 04:05:35', NULL),
(37, '2019-04-21 04:05:39', NULL),
(38, '2019-04-21 04:06:35', NULL),
(78, '2019-04-21 04:06:40', NULL),
(1100, '2019-04-21 04:06:47', NULL),
(1061, '2019-04-21 04:06:53', NULL),
(2001, '2019-04-21 04:07:06', NULL),
(2002, '2019-04-21 04:07:06', NULL),
(2002, '2019-04-21 04:07:10', NULL),
(2002, '2019-04-21 04:07:10', NULL),
(2002, '2019-04-21 04:07:10', NULL),
(2002, '2019-04-21 04:07:11', NULL),
(2002, '2019-04-21 04:07:13', NULL),
(78, '2019-04-21 04:07:20', NULL),
(1075, '2019-04-21 04:07:30', NULL),
(39, '2019-04-21 04:07:34', NULL),
(1061, '2019-04-21 04:07:35', NULL),
(1061, '2019-04-21 04:07:35', NULL),
(1061, '2019-04-21 04:07:35', NULL),
(39, '2019-04-21 04:07:39', NULL),
(78, '2019-04-21 04:07:41', NULL),
(1026, '2019-04-21 04:07:47', NULL),
(78, '2019-04-21 04:07:50', NULL),
(39, '2019-04-21 04:07:52', NULL),
(78, '2019-04-21 04:07:57', NULL),
(1026, '2019-04-21 04:08:02', NULL),
(78, '2019-04-21 04:08:03', NULL),
(39, '2019-04-21 04:08:07', NULL),
(1061, '2019-04-21 04:08:12', NULL),
(39, '2019-04-21 04:08:18', NULL),
(78, '2019-04-21 04:08:45', NULL),
(78, '2019-04-21 04:08:57', NULL),
(1065, '2019-04-21 04:09:11', NULL),
(39, '2019-04-21 04:09:20', NULL),
(78, '2019-04-21 04:09:23', NULL),
(1064, '2019-04-21 04:10:05', NULL),
(78, '2019-04-21 04:10:08', NULL),
(78, '2019-04-21 04:10:14', NULL),
(78, '2019-04-21 04:10:36', NULL),
(1100, '2019-04-21 04:10:38', NULL),
(39, '2019-04-21 04:10:41', NULL),
(78, '2019-04-21 04:10:44', NULL),
(39, '2019-04-21 04:10:54', NULL),
(78, '2019-04-21 04:10:55', NULL),
(39, '2019-04-21 04:10:57', NULL),
(37, '2019-04-21 04:11:12', NULL),
(39, '2019-04-21 04:11:42', NULL),
(78, '2019-04-21 04:22:54', NULL),
(78, '2019-04-21 04:22:57', NULL),
(1061, '2019-04-21 04:23:03', NULL),
(1061, '2019-04-21 04:23:03', NULL),
(1061, '2019-04-21 04:23:03', NULL),
(78, '2019-04-21 04:23:05', NULL),
(43, '2019-04-21 04:23:10', NULL),
(78, '2019-04-21 04:23:17', NULL),
(78, '2019-04-21 04:23:19', NULL),
(1100, '2019-04-21 04:23:24', NULL),
(78, '2019-04-21 04:23:26', NULL),
(78, '2019-04-21 04:23:28', NULL),
(39, '2019-04-21 04:23:50', NULL),
(39, '2019-04-21 04:24:39', NULL),
(39, '2019-04-21 04:24:43', NULL),
(39, '2019-04-21 04:25:08', NULL),
(39, '2019-04-21 04:55:25', NULL),
(39, '2019-04-21 05:20:10', NULL),
(39, '2019-04-21 05:20:14', NULL),
(39, '2019-04-21 05:20:17', NULL),
(36, '2019-04-21 19:10:54', NULL),
(36, '2019-04-21 19:11:00', NULL),
(78, '2019-04-21 19:11:02', NULL),
(39, '2019-04-21 19:11:10', NULL),
(39, '2019-04-21 19:11:14', NULL),
(39, '2019-04-21 19:11:16', NULL),
(39, '2019-04-21 19:11:20', NULL),
(78, '2019-04-21 19:11:22', NULL),
(39, '2019-04-21 19:11:26', NULL),
(39, '2019-04-21 19:11:27', NULL),
(39, '2019-04-21 20:02:47', NULL),
(36, '2019-04-22 03:03:17', NULL),
(36, '2019-04-22 03:04:16', NULL),
(36, '2019-04-22 03:05:00', NULL),
(78, '2019-04-22 03:05:08', NULL),
(78, '2019-04-22 03:06:46', NULL),
(78, '2019-04-22 03:07:03', NULL),
(78, '2019-04-22 03:09:56', NULL),
(78, '2019-04-22 03:10:10', NULL),
(78, '2019-04-22 03:11:13', NULL),
(78, '2019-04-22 03:11:15', NULL),
(78, '2019-04-22 03:12:46', NULL),
(78, '2019-04-22 03:13:56', NULL),
(78, '2019-04-22 03:51:06', NULL),
(36, '2019-04-22 03:51:09', NULL),
(36, '2019-04-22 03:51:15', NULL),
(78, '2019-04-22 03:51:17', NULL),
(39, '2019-04-22 03:51:23', NULL),
(39, '2019-04-22 03:51:27', NULL),
(39, '2019-04-22 03:51:29', NULL),
(39, '2019-04-22 03:51:31', NULL),
(39, '2019-04-22 03:51:33', NULL),
(39, '2019-04-22 03:51:35', NULL),
(39, '2019-04-22 03:51:36', NULL),
(43, '2019-04-22 03:51:37', NULL),
(39, '2019-04-22 03:51:40', NULL),
(39, '2019-04-22 03:51:49', NULL),
(1055, '2019-04-22 03:51:55', NULL),
(39, '2019-04-22 03:51:58', NULL),
(39, '2019-04-22 03:52:00', NULL),
(78, '2019-04-22 03:54:37', NULL),
(78, '2019-04-22 03:55:45', NULL),
(39, '2019-04-22 03:56:01', NULL),
(39, '2019-04-22 03:56:37', NULL),
(39, '2019-04-22 03:58:22', NULL),
(39, '2019-04-22 03:58:57', NULL),
(39, '2019-04-22 03:59:58', NULL),
(78, '2019-04-22 04:00:13', NULL),
(78, '2019-04-22 04:01:25', NULL),
(1065, '2019-04-22 04:01:36', NULL),
(39, '2019-04-22 04:01:46', NULL),
(39, '2019-04-22 04:01:48', NULL),
(39, '2019-04-22 05:15:57', NULL),
(36, '2019-04-22 05:16:02', NULL),
(36, '2019-04-22 05:16:06', NULL),
(78, '2019-04-22 05:16:08', NULL),
(39, '2019-04-22 05:16:12', NULL),
(39, '2019-04-22 05:16:15', NULL),
(39, '2019-04-22 05:16:28', NULL),
(39, '2019-04-22 05:16:38', NULL),
(39, '2019-04-22 05:16:52', NULL),
(39, '2019-04-22 05:17:00', NULL),
(39, '2019-04-22 05:17:08', NULL),
(39, '2019-04-22 05:17:15', NULL),
(39, '2019-04-22 05:17:54', NULL),
(39, '2019-04-22 05:18:04', NULL),
(39, '2019-04-22 05:18:11', NULL),
(39, '2019-04-22 05:18:29', NULL),
(39, '2019-04-22 05:18:59', NULL),
(39, '2019-04-22 05:19:09', NULL),
(39, '2019-04-22 05:19:11', NULL),
(39, '2019-04-22 05:20:06', NULL),
(39, '2019-04-22 05:21:48', NULL),
(39, '2019-04-22 05:21:50', NULL),
(39, '2019-04-22 05:23:52', NULL),
(39, '2019-04-22 05:25:00', NULL),
(39, '2019-04-22 05:25:17', NULL),
(37, '2019-04-22 05:25:23', NULL),
(39, '2019-04-22 05:25:26', NULL),
(36, '2019-04-23 03:02:42', NULL),
(39, '2019-04-23 03:06:18', NULL),
(39, '2019-04-23 03:07:07', NULL),
(37, '2019-04-23 03:07:31', NULL),
(38, '2019-04-23 03:09:12', NULL),
(37, '2019-04-23 03:10:43', NULL),
(38, '2019-04-23 03:11:26', NULL),
(37, '2019-04-23 03:11:31', NULL),
(38, '2019-04-23 03:12:12', NULL),
(38, '2019-04-23 03:12:46', NULL),
(39, '2019-04-23 03:14:30', NULL),
(37, '2019-04-23 03:17:21', NULL),
(38, '2019-04-23 03:18:34', NULL),
(37, '2019-04-23 03:18:43', NULL),
(38, '2019-04-23 03:19:43', NULL),
(37, '2019-04-23 03:20:05', NULL),
(38, '2019-04-23 03:20:50', NULL),
(37, '2019-04-23 03:20:54', NULL),
(38, '2019-04-23 03:21:40', NULL),
(39, '2019-04-23 03:21:49', NULL),
(37, '2019-04-23 03:22:00', NULL),
(38, '2019-04-23 03:23:08', NULL),
(37, '2019-04-23 03:23:34', NULL),
(39, '2019-04-23 03:23:49', NULL),
(37, '2019-04-23 03:24:14', NULL),
(39, '2019-04-23 03:24:23', NULL),
(37, '2019-04-23 03:24:31', NULL),
(39, '2019-04-23 03:24:50', NULL),
(37, '2019-04-23 03:25:00', NULL),
(39, '2019-04-23 03:25:11', NULL),
(37, '2019-04-23 03:25:17', NULL),
(38, '2019-04-23 03:25:45', NULL),
(37, '2019-04-23 03:26:11', NULL),
(39, '2019-04-23 03:26:36', NULL),
(37, '2019-04-23 03:26:52', NULL),
(39, '2019-04-23 03:27:20', NULL),
(39, '2019-04-23 03:31:09', NULL),
(39, '2019-04-23 03:31:17', NULL),
(37, '2019-04-23 03:31:34', NULL),
(36, '2019-04-23 03:31:49', NULL),
(39, '2019-04-23 03:32:13', NULL),
(78, '2019-04-23 03:32:20', NULL),
(1055, '2019-04-23 03:32:43', NULL),
(1061, '2019-04-23 03:32:57', NULL),
(1061, '2019-04-23 03:32:57', NULL),
(1077, '2019-04-23 03:33:37', NULL),
(1055, '2019-04-23 03:34:34', NULL),
(1061, '2019-04-23 03:34:42', NULL),
(1061, '2019-04-23 03:34:42', NULL),
(1077, '2019-04-23 03:35:04', NULL),
(78, '2019-04-23 03:35:18', NULL),
(1061, '2019-04-23 03:36:01', NULL),
(1061, '2019-04-23 03:36:03', NULL),
(1100, '2019-04-23 03:36:40', NULL),
(1061, '2019-04-23 03:36:50', NULL),
(2001, '2019-04-23 03:37:09', NULL),
(2002, '2019-04-23 03:37:09', NULL),
(2002, '2019-04-23 03:37:13', NULL),
(2002, '2019-04-23 03:37:15', NULL),
(2002, '2019-04-23 03:37:15', NULL),
(2002, '2019-04-23 03:37:16', NULL),
(2002, '2019-04-23 03:37:17', NULL),
(2002, '2019-04-23 03:37:20', NULL),
(2002, '2019-04-23 03:37:21', NULL),
(2002, '2019-04-23 03:37:21', NULL),
(2002, '2019-04-23 03:37:22', NULL),
(2002, '2019-04-23 03:37:22', NULL),
(1075, '2019-04-23 03:38:03', NULL),
(1100, '2019-04-23 03:40:25', NULL),
(1061, '2019-04-23 03:40:32', NULL),
(2001, '2019-04-23 03:40:52', NULL),
(2002, '2019-04-23 03:40:52', NULL),
(2001, '2019-04-23 03:40:53', NULL),
(2002, '2019-04-23 03:40:53', NULL),
(2002, '2019-04-23 03:41:04', NULL),
(2002, '2019-04-23 03:41:04', NULL),
(2002, '2019-04-23 03:41:04', NULL),
(2002, '2019-04-23 03:41:04', NULL),
(2002, '2019-04-23 03:41:05', NULL),
(2002, '2019-04-23 03:41:05', NULL),
(2002, '2019-04-23 03:41:06', NULL),
(2002, '2019-04-23 03:41:06', NULL),
(2002, '2019-04-23 03:41:06', NULL),
(2002, '2019-04-23 03:41:06', NULL),
(1100, '2019-04-23 03:42:30', NULL),
(78, '2019-04-23 03:42:32', NULL),
(39, '2019-04-23 03:42:33', NULL),
(37, '2019-04-23 03:42:34', NULL),
(39, '2019-04-23 03:42:37', NULL),
(37, '2019-04-23 03:42:41', NULL),
(39, '2019-04-23 03:42:43', NULL),
(39, '2019-04-23 03:43:15', NULL),
(39, '2019-04-23 03:43:26', NULL),
(39, '2019-04-23 03:43:46', NULL),
(78, '2019-04-23 03:43:55', NULL),
(1100, '2019-04-23 03:44:26', NULL),
(2001, '2019-04-23 03:45:13', NULL),
(2002, '2019-04-23 03:45:13', NULL),
(2002, '2019-04-23 03:45:13', NULL),
(2002, '2019-04-23 03:45:16', NULL),
(2002, '2019-04-23 03:45:17', NULL),
(1075, '2019-04-23 03:45:34', NULL),
(1100, '2019-04-23 03:45:45', NULL),
(1075, '2019-04-23 03:45:56', NULL),
(1026, '2019-04-23 03:46:03', NULL),
(78, '2019-04-23 03:46:06', NULL),
(39, '2019-04-23 03:46:17', NULL),
(1068, '2019-04-23 03:46:56', NULL),
(1069, '2019-04-23 03:47:11', NULL),
(39, '2019-04-23 03:47:12', NULL),
(1031, '2019-04-23 03:47:56', NULL),
(1025, '2019-04-23 03:48:28', NULL),
(39, '2019-04-23 03:48:29', NULL),
(39, '2019-04-23 03:49:27', NULL),
(39, '2019-04-23 03:50:03', NULL),
(39, '2019-05-23 03:51:18', NULL),
(36, '2019-05-23 03:51:24', NULL),
(36, '2019-05-23 03:51:32', NULL),
(36, '2019-05-23 03:51:50', NULL),
(78, '2019-05-23 03:52:21', NULL),
(39, '2019-05-23 03:52:56', NULL),
(1031, '2019-05-23 03:53:13', NULL),
(39, '2019-05-23 03:53:30', NULL),
(36, '2019-05-23 03:53:40', NULL),
(1062, '2019-05-23 03:53:46', NULL),
(39, '2019-05-23 03:54:01', NULL),
(36, '2019-05-23 03:54:05', NULL),
(39, '2019-05-23 03:54:07', NULL),
(39, '2019-05-23 03:55:40', NULL),
(1068, '2019-05-23 03:56:28', NULL),
(1068, '2019-05-23 03:56:39', NULL),
(1069, '2019-05-23 03:56:46', NULL),
(39, '2019-05-23 03:56:46', NULL),
(1068, '2019-05-23 03:56:49', NULL),
(1069, '2019-05-23 03:57:04', NULL),
(39, '2019-05-23 03:57:04', NULL),
(1068, '2019-05-23 03:57:08', NULL),
(39, '2019-05-23 03:57:15', NULL),
(1061, '2019-05-23 03:57:19', NULL),
(1061, '2019-05-23 03:57:20', NULL),
(1061, '2019-05-23 03:57:20', NULL),
(1061, '2019-05-23 03:57:20', NULL),
(39, '2019-05-23 03:57:21', NULL),
(39, '2019-05-23 03:57:24', NULL),
(36, '2019-05-23 03:58:24', NULL),
(78, '2019-05-23 03:58:54', NULL),
(39, '2019-05-23 03:59:44', NULL),
(37, '2019-05-23 04:00:09', NULL),
(39, '2019-05-23 04:01:33', NULL),
(37, '2019-05-23 04:01:48', NULL),
(39, '2019-05-23 04:01:56', NULL),
(38, '2019-05-23 04:02:42', NULL),
(1055, '2019-05-23 04:02:57', NULL),
(1061, '2019-05-23 04:03:07', NULL),
(1061, '2019-05-23 04:03:07', NULL),
(1061, '2019-05-23 04:03:08', NULL),
(1077, '2019-05-23 04:03:32', NULL),
(78, '2019-05-23 04:03:46', NULL),
(39, '2019-05-23 04:04:01', NULL),
(1061, '2019-05-23 04:04:05', NULL),
(1061, '2019-05-23 04:04:05', NULL),
(1061, '2019-05-23 04:04:06', NULL),
(1061, '2019-05-23 04:04:06', NULL),
(1061, '2019-05-23 04:04:06', NULL),
(1100, '2019-05-23 04:04:07', NULL),
(39, '2019-05-23 04:04:36', NULL),
(39, '2019-05-23 04:04:41', NULL),
(39, '2019-05-23 04:04:43', NULL),
(78, '2019-05-23 04:04:54', NULL),
(1061, '2019-05-23 04:05:40', NULL),
(1061, '2019-05-23 04:05:42', NULL),
(1061, '2019-05-23 04:05:42', NULL),
(1061, '2019-05-23 04:05:42', NULL),
(1061, '2019-05-23 04:05:43', NULL),
(1061, '2019-05-23 04:05:43', NULL),
(1061, '2019-05-23 04:05:43', NULL),
(1061, '2019-05-23 04:05:45', NULL),
(1100, '2019-05-23 04:06:53', NULL),
(1061, '2019-05-23 04:07:12', NULL),
(1061, '2019-05-23 04:07:13', NULL),
(1071, '2019-05-23 04:07:15', NULL),
(2001, '2019-05-23 04:07:29', NULL),
(2002, '2019-05-23 04:07:29', NULL),
(2002, '2019-05-23 04:07:33', NULL),
(2002, '2019-05-23 04:07:34', NULL),
(2002, '2019-05-23 04:07:34', NULL),
(1075, '2019-05-23 04:07:41', NULL),
(78, '2019-05-23 04:07:49', NULL),
(1026, '2019-05-23 04:08:16', NULL),
(78, '2019-05-23 04:08:17', NULL),
(37, '2019-05-23 04:08:30', NULL),
(39, '2019-05-23 04:08:33', NULL),
(39, '2019-05-23 04:09:15', NULL),
(39, '2019-05-23 04:09:16', NULL),
(37, '2019-05-23 04:09:20', NULL),
(39, '2019-05-23 04:09:24', NULL),
(37, '2019-05-23 04:09:27', NULL),
(38, '2019-05-23 04:10:24', NULL),
(1055, '2019-05-23 04:10:55', NULL),
(1061, '2019-05-23 04:11:06', NULL),
(1061, '2019-05-23 04:11:06', NULL),
(1061, '2019-05-23 04:11:06', NULL),
(1061, '2019-05-23 04:11:06', NULL),
(1061, '2019-05-23 04:11:06', NULL),
(1061, '2019-05-23 04:11:06', NULL),
(1061, '2019-05-23 04:11:09', NULL),
(1061, '2019-05-23 04:11:09', NULL),
(1061, '2019-05-23 04:11:09', NULL),
(1061, '2019-05-23 04:11:10', NULL),
(1061, '2019-05-23 04:11:12', NULL),
(1061, '2019-05-23 04:11:12', NULL),
(1077, '2019-05-23 04:11:43', NULL),
(78, '2019-05-23 04:11:53', NULL),
(78, '2019-05-23 04:11:56', NULL),
(1100, '2019-05-23 04:12:08', NULL),
(1061, '2019-05-23 04:12:13', NULL),
(1061, '2019-05-23 04:12:13', NULL),
(1061, '2019-05-23 04:12:13', NULL),
(1061, '2019-05-23 04:12:14', NULL),
(1061, '2019-05-23 04:12:14', NULL),
(1071, '2019-05-23 04:12:15', NULL),
(2001, '2019-05-23 04:12:29', NULL),
(2002, '2019-05-23 04:12:29', NULL),
(2002, '2019-05-23 04:12:31', NULL),
(2002, '2019-05-23 04:12:31', NULL),
(2002, '2019-05-23 04:12:32', NULL),
(39, '2019-05-23 04:12:37', NULL),
(1075, '2019-05-23 04:12:49', NULL),
(1026, '2019-05-23 04:13:07', NULL),
(78, '2019-05-23 04:13:08', NULL),
(39, '2019-05-23 04:13:16', NULL),
(37, '2019-05-23 04:13:27', NULL),
(39, '2019-05-23 04:13:36', NULL),
(39, '2019-05-23 04:14:44', NULL),
(39, '2019-05-23 04:15:47', NULL),
(39, '2019-05-23 04:15:58', NULL),
(37, '2019-05-23 04:16:21', NULL),
(39, '2019-05-23 04:16:23', NULL),
(38, '2019-05-23 04:16:53', NULL),
(39, '2019-05-23 04:17:05', NULL),
(37, '2019-05-23 04:17:35', NULL),
(39, '2019-05-23 04:17:50', NULL),
(39, '2019-05-23 04:18:01', NULL),
(37, '2019-05-23 04:18:04', NULL),
(39, '2019-05-23 04:18:07', NULL),
(78, '2019-05-23 04:18:41', NULL),
(39, '2019-05-23 04:19:16', NULL),
(39, '2019-05-23 04:19:26', NULL),
(78, '2019-05-23 04:19:27', NULL),
(37, '2019-05-23 04:19:51', NULL),
(39, '2019-05-23 04:19:53', NULL),
(37, '2019-05-23 04:19:56', NULL),
(39, '2019-05-23 04:20:41', NULL),
(37, '2019-05-23 04:20:51', NULL),
(39, '2019-05-23 04:20:59', NULL),
(39, '2019-05-23 04:21:34', NULL),
(37, '2019-05-23 04:21:55', NULL),
(38, '2019-05-23 04:22:14', NULL),
(37, '2019-05-23 04:22:38', NULL),
(38, '2019-05-23 04:23:37', NULL),
(39, '2019-05-23 04:23:37', NULL),
(39, '2019-05-23 04:24:01', NULL),
(37, '2019-05-23 04:24:16', NULL),
(39, '2019-05-23 04:24:26', NULL),
(39, '2019-05-23 04:24:33', NULL),
(1055, '2019-05-23 04:24:42', NULL),
(1061, '2019-05-23 04:25:01', NULL),
(1061, '2019-05-23 04:25:02', NULL),
(1061, '2019-05-23 04:25:02', NULL),
(1077, '2019-05-23 04:26:00', NULL),
(78, '2019-05-23 04:26:31', NULL),
(39, '2019-05-23 04:28:42', NULL),
(78, '2019-05-23 04:29:46', NULL),
(39, '2019-05-23 04:30:27', NULL),
(78, '2019-05-23 04:30:50', NULL),
(39, '2019-05-23 04:31:20', NULL),
(78, '2019-05-23 04:31:43', NULL),
(1100, '2019-05-23 04:32:01', NULL),
(78, '2019-05-23 04:32:30', NULL),
(39, '2019-05-23 04:32:32', NULL),
(39, '2019-05-23 04:32:43', NULL),
(1100, '2019-05-23 04:32:46', NULL),
(39, '2019-05-23 04:32:48', NULL),
(39, '2019-05-23 04:32:59', NULL),
(39, '2019-05-23 04:33:04', NULL),
(37, '2019-05-23 04:33:39', NULL),
(39, '2019-05-23 04:34:31', NULL),
(39, '2019-05-23 04:35:03', NULL),
(39, '2019-05-23 04:35:19', NULL),
(38, '2019-05-23 04:35:20', NULL),
(39, '2019-05-23 04:35:48', NULL),
(39, '2019-05-23 04:36:03', NULL),
(37, '2019-05-23 04:36:05', NULL),
(39, '2019-05-23 04:36:10', NULL),
(39, '2019-05-23 04:37:06', NULL),
(37, '2019-05-23 04:37:16', NULL),
(38, '2019-05-23 04:38:44', NULL),
(37, '2019-05-23 04:39:20', NULL),
(39, '2019-05-23 04:40:18', NULL),
(39, '2019-05-23 04:40:58', NULL),
(39, '2019-05-23 04:43:49', NULL),
(39, '2019-05-23 04:44:02', NULL),
(39, '2019-05-23 04:45:34', NULL),
(39, '2019-05-23 04:45:52', NULL),
(38, '2019-05-23 04:45:54', NULL),
(39, '2019-05-23 04:47:23', NULL),
(39, '2019-05-23 04:47:38', NULL),
(39, '2019-05-23 04:47:43', NULL),
(39, '2019-05-23 04:47:52', NULL),
(39, '2019-05-23 04:48:00', NULL),
(39, '2019-05-23 04:48:04', NULL),
(43, '2019-05-23 04:48:09', NULL),
(39, '2019-05-23 04:48:13', NULL),
(39, '2019-05-23 04:48:19', NULL),
(43, '2019-05-23 04:48:41', NULL),
(39, '2019-05-23 04:48:48', NULL),
(39, '2019-05-23 04:49:25', NULL),
(39, '2019-05-23 04:50:02', NULL),
(39, '2019-05-23 04:50:18', NULL),
(39, '2019-05-23 04:50:25', NULL),
(78, '2019-05-23 04:50:36', NULL),
(37, '2019-05-23 04:51:08', NULL),
(39, '2019-05-23 04:51:14', NULL),
(37, '2019-05-23 04:51:20', NULL),
(39, '2019-05-23 04:51:25', NULL),
(37, '2019-05-23 04:51:33', NULL),
(39, '2019-05-23 04:51:37', NULL),
(37, '2019-05-23 04:51:42', NULL),
(78, '2019-05-23 04:52:05', NULL),
(43, '2019-05-23 04:52:12', NULL),
(78, '2019-05-23 04:52:15', NULL),
(78, '2019-05-23 04:52:18', NULL),
(39, '2019-05-23 04:52:33', NULL),
(39, '2019-05-23 04:52:53', NULL),
(1055, '2019-05-23 04:53:12', NULL),
(39, '2019-05-23 04:53:23', NULL),
(37, '2019-05-23 04:53:29', NULL),
(39, '2019-05-23 04:53:33', NULL),
(1055, '2019-05-23 04:53:42', NULL),
(1061, '2019-05-23 04:54:10', NULL),
(1061, '2019-05-23 04:54:11', NULL),
(1061, '2019-05-23 04:54:12', NULL),
(39, '2019-05-23 04:54:27', NULL),
(39, '2019-05-23 04:54:53', NULL),
(37, '2019-05-23 04:54:59', NULL),
(39, '2019-05-23 04:55:31', NULL),
(39, '2019-05-23 04:56:42', NULL),
(37, '2019-05-23 04:56:47', NULL),
(39, '2019-05-23 04:57:07', NULL),
(39, '2019-05-23 04:57:30', NULL),
(39, '2019-05-23 04:57:42', NULL),
(37, '2019-05-23 04:57:47', NULL),
(39, '2019-05-23 04:57:58', NULL),
(1061, '2019-05-23 04:58:05', NULL),
(39, '2019-05-23 04:58:09', NULL),
(1031, '2019-05-23 04:58:15', NULL),
(39, '2019-05-23 04:58:49', NULL),
(36, '2019-05-23 05:00:45', NULL),
(1062, '2019-05-23 05:00:49', NULL),
(36, '2019-05-23 05:00:52', NULL),
(200, '2019-05-23 05:00:55', NULL),
(39, '2019-05-23 05:01:00', NULL),
(37, '2019-05-23 05:01:33', NULL),
(78, '2019-05-23 05:06:28', NULL),
(39, '2019-05-23 05:06:46', NULL),
(39, '2019-05-23 05:07:01', NULL),
(37, '2019-05-23 05:08:13', NULL),
(38, '2019-05-23 05:09:06', NULL),
(37, '2019-05-23 05:09:12', NULL),
(39, '2019-05-23 05:09:45', NULL),
(39, '2019-05-23 05:10:16', NULL),
(38, '2019-05-23 05:10:28', NULL),
(39, '2019-05-23 05:10:28', NULL),
(37, '2019-05-23 05:10:40', NULL),
(39, '2019-05-23 05:11:12', NULL),
(38, '2019-05-23 05:11:24', NULL),
(37, '2019-05-23 05:11:54', NULL),
(38, '2019-05-23 05:12:37', NULL),
(37, '2019-05-23 05:12:43', NULL),
(39, '2019-05-23 05:12:57', NULL),
(39, '2019-05-23 05:13:05', NULL),
(39, '2019-05-23 05:13:29', NULL),
(37, '2019-05-23 05:13:43', NULL),
(38, '2019-05-23 05:14:04', NULL),
(39, '2019-05-23 05:14:18', NULL),
(39, '2019-05-23 05:14:30', NULL),
(1055, '2019-05-23 05:14:31', NULL),
(1061, '2019-05-23 05:14:37', NULL),
(1061, '2019-05-23 05:14:39', NULL),
(1061, '2019-05-23 05:14:39', NULL),
(1061, '2019-05-23 05:14:40', NULL),
(1061, '2019-05-23 05:14:40', NULL),
(1077, '2019-05-23 05:15:37', NULL),
(37, '2019-05-23 05:15:53', NULL),
(39, '2019-05-23 05:16:01', NULL),
(1031, '2019-05-23 05:16:06', NULL),
(39, '2019-05-23 05:16:07', NULL),
(37, '2019-05-23 05:16:20', NULL),
(39, '2019-05-23 05:16:49', NULL),
(39, '2019-05-23 05:17:19', NULL),
(39, '2019-05-23 05:17:32', NULL),
(39, '2019-05-23 05:17:57', NULL),
(39, '2019-05-23 05:18:12', NULL),
(78, '2019-05-23 05:18:26', NULL),
(1031, '2019-05-23 05:18:31', NULL),
(1061, '2019-05-23 05:18:33', NULL),
(1061, '2019-05-23 05:18:33', NULL),
(1031, '2019-05-23 05:18:34', NULL),
(1100, '2019-05-23 05:18:43', NULL),
(1061, '2019-05-23 05:18:48', NULL),
(1061, '2019-05-23 05:18:48', NULL),
(2001, '2019-05-23 05:19:00', NULL),
(2002, '2019-05-23 05:19:01', NULL),
(2002, '2019-05-23 05:19:04', NULL),
(2002, '2019-05-23 05:19:05', NULL),
(1075, '2019-05-23 05:19:14', NULL),
(1031, '2019-05-23 05:19:17', NULL),
(78, '2019-05-23 05:19:27', NULL),
(1031, '2019-05-23 05:19:37', NULL),
(39, '2019-05-23 05:19:38', NULL),
(39, '2019-05-23 05:19:40', NULL),
(1031, '2019-05-23 05:19:44', NULL),
(39, '2019-05-23 05:19:53', NULL),
(78, '2019-05-23 05:20:02', NULL),
(1031, '2019-05-23 05:20:09', NULL),
(78, '2019-05-23 05:20:15', NULL),
(78, '2019-05-23 05:20:30', NULL),
(1031, '2019-05-23 05:21:15', NULL),
(1031, '2019-05-23 05:21:24', NULL),
(78, '2019-05-23 05:21:30', NULL),
(39, '2019-05-23 05:21:36', NULL),
(39, '2019-05-23 05:21:39', NULL),
(1100, '2019-05-23 05:21:41', NULL),
(1031, '2019-05-23 05:21:44', NULL),
(1061, '2019-05-23 05:21:47', NULL),
(1061, '2019-05-23 05:21:48', NULL),
(39, '2019-05-23 05:21:48', NULL),
(1031, '2019-05-23 05:21:52', NULL),
(39, '2019-05-23 05:21:55', NULL),
(2001, '2019-05-23 05:21:58', NULL),
(2002, '2019-05-23 05:21:58', NULL),
(1031, '2019-05-23 05:22:00', NULL),
(2002, '2019-05-23 05:22:01', NULL),
(2002, '2019-05-23 05:22:01', NULL),
(1075, '2019-05-23 05:22:06', NULL),
(39, '2019-05-23 05:22:21', NULL),
(1026, '2019-05-23 05:22:30', NULL),
(78, '2019-05-23 05:22:31', NULL),
(39, '2019-05-23 05:22:39', NULL),
(1031, '2019-05-23 05:23:02', NULL),
(39, '2019-05-23 05:23:44', NULL),
(1025, '2019-05-23 05:23:57', NULL),
(39, '2019-05-23 05:23:58', NULL),
(39, '2019-05-23 05:35:59', NULL),
(39, '2019-05-23 05:36:01', NULL),
(37, '2019-05-23 05:36:04', NULL),
(39, '2019-05-23 05:36:05', NULL),
(39, '2019-05-23 05:37:48', NULL),
(39, '2019-05-23 05:37:53', NULL),
(39, '2019-05-23 05:40:55', NULL),
(39, '2019-05-23 05:41:23', NULL),
(39, '2019-05-23 05:41:45', NULL),
(39, '2019-05-23 05:41:59', NULL),
(1061, '2019-05-23 05:42:03', NULL),
(1061, '2019-05-23 05:42:04', NULL),
(1061, '2019-05-23 05:42:04', NULL),
(1061, '2019-05-23 05:42:05', NULL),
(1061, '2019-05-23 05:42:05', NULL),
(1061, '2019-05-23 05:42:06', NULL),
(1061, '2019-05-23 05:42:06', NULL),
(43, '2019-05-23 05:42:10', NULL),
(1061, '2019-05-23 05:42:22', NULL),
(1061, '2019-05-23 05:42:22', NULL),
(1061, '2019-05-23 05:42:22', NULL),
(39, '2019-05-23 05:44:08', NULL),
(39, '2019-05-23 05:44:11', NULL),
(1052, '2019-05-23 05:44:17', NULL),
(1053, '2019-05-23 05:44:24', NULL),
(39, '2019-05-23 05:44:27', NULL),
(39, '2019-05-23 05:44:29', NULL),
(39, '2019-05-23 05:44:59', NULL),
(39, '2019-05-23 05:45:01', NULL),
(39, '2019-05-23 05:45:04', NULL),
(39, '2019-05-23 05:46:20', NULL),
(39, '2019-05-23 05:47:32', NULL),
(39, '2019-05-23 05:47:36', NULL),
(39, '2019-05-23 05:48:22', NULL),
(39, '2019-05-23 05:48:24', NULL),
(39, '2019-05-23 05:49:38', NULL),
(1061, '2019-05-23 05:50:01', NULL),
(1061, '2019-05-23 05:50:01', NULL),
(1061, '2019-05-23 05:50:01', NULL),
(1061, '2019-05-23 05:50:05', NULL),
(39, '2019-05-23 05:51:01', NULL),
(39, '2019-05-23 05:51:15', NULL),
(39, '2019-05-23 05:51:36', NULL),
(37, '2019-05-23 05:51:44', NULL),
(37, '2019-05-23 05:51:57', NULL),
(39, '2019-05-23 05:52:02', NULL),
(39, '2019-05-23 05:52:11', NULL),
(39, '2019-05-23 05:52:14', NULL),
(37, '2019-05-23 05:52:16', NULL),
(39, '2019-05-23 05:52:19', NULL),
(1061, '2019-05-23 05:54:47', NULL),
(1061, '2019-05-23 05:54:47', NULL),
(1061, '2019-05-23 05:54:48', NULL),
(39, '2019-05-23 05:54:50', NULL),
(39, '2019-05-23 05:54:52', NULL),
(1061, '2019-05-23 05:54:55', NULL),
(1061, '2019-05-23 05:54:55', NULL),
(1061, '2019-05-23 05:54:55', NULL),
(1061, '2019-05-23 05:55:56', NULL),
(1061, '2019-05-23 05:55:56', NULL),
(1061, '2019-05-23 05:55:56', NULL),
(1061, '2019-05-23 05:55:56', NULL),
(1061, '2019-05-23 05:55:56', NULL),
(1061, '2019-05-23 05:55:56', NULL),
(1061, '2019-05-23 05:55:57', NULL),
(39, '2019-05-23 05:55:58', NULL),
(1061, '2019-05-23 05:56:04', NULL),
(1061, '2019-05-23 05:56:04', NULL),
(1061, '2019-05-23 05:56:04', NULL),
(39, '2019-05-23 05:56:06', NULL),
(39, '2019-05-23 05:56:09', NULL),
(39, '2019-05-23 05:58:11', NULL),
(39, '2019-05-23 05:58:43', NULL),
(39, '2019-05-23 05:59:35', NULL),
(39, '2019-05-23 05:59:56', NULL),
(39, '2019-05-23 06:01:11', NULL),
(39, '2019-05-23 06:02:00', NULL),
(1061, '2019-05-23 06:02:10', NULL),
(1061, '2019-05-23 06:02:10', NULL),
(1061, '2019-05-23 06:02:10', NULL),
(1061, '2019-05-23 06:02:10', NULL),
(1061, '2019-05-23 06:02:11', NULL),
(1061, '2019-05-23 06:02:11', NULL),
(39, '2019-05-23 06:02:13', NULL),
(37, '2019-05-23 06:02:22', NULL),
(39, '2019-05-23 06:02:37', NULL),
(37, '2019-05-23 06:02:39', NULL),
(39, '2019-05-23 06:02:41', NULL),
(36, '2019-05-24 03:28:30', NULL),
(36, '2019-05-24 03:38:40', NULL),
(78, '2019-05-24 03:38:46', NULL),
(39, '2019-05-24 03:38:50', NULL),
(39, '2019-05-24 03:38:57', NULL),
(1046, '2019-05-24 03:39:03', NULL),
(1047, '2019-05-24 03:39:13', NULL),
(36, '2019-05-24 03:39:18', NULL),
(78, '2019-05-24 03:39:21', NULL),
(78, '2019-05-24 04:00:56', NULL),
(78, '2019-05-24 04:05:36', NULL),
(39, '2019-05-24 04:07:20', NULL),
(39, '2019-05-24 04:07:23', NULL),
(1052, '2019-05-24 04:07:25', NULL),
(1053, '2019-05-24 04:07:31', NULL),
(78, '2019-05-24 04:07:34', NULL),
(78, '2019-05-24 04:07:36', NULL),
(44, '2019-05-24 04:07:37', NULL),
(36, '2019-05-24 04:07:42', NULL),
(78, '2019-05-24 04:07:44', NULL),
(36, '2019-05-24 04:07:47', NULL),
(78, '2019-05-24 04:08:02', NULL),
(78, '2019-05-24 04:08:59', NULL),
(78, '2019-05-24 04:09:14', NULL),
(78, '2019-05-24 04:09:16', NULL),
(39, '2019-05-24 04:09:35', NULL),
(37, '2019-05-24 04:09:52', NULL),
(39, '2019-05-24 04:09:54', NULL),
(39, '2019-05-24 04:11:28', NULL),
(39, '2019-05-24 04:12:47', NULL),
(39, '2019-05-24 04:12:54', NULL),
(39, '2019-05-24 04:13:00', NULL),
(37, '2019-05-24 04:13:03', NULL),
(39, '2019-05-24 04:13:06', NULL),
(37, '2019-05-24 04:13:08', NULL),
(39, '2019-05-24 04:13:12', NULL),
(37, '2019-05-24 04:14:25', NULL),
(37, '2019-05-24 04:24:16', NULL),
(37, '2019-05-24 04:24:23', NULL),
(37, '2019-05-24 05:00:28', NULL),
(37, '2019-05-24 05:00:55', NULL),
(37, '2019-05-24 05:01:57', NULL),
(37, '2019-05-24 05:04:07', NULL),
(37, '2019-05-24 05:07:27', NULL),
(37, '2019-05-24 05:07:37', NULL),
(37, '2019-05-24 05:07:50', NULL),
(37, '2019-05-24 05:09:12', NULL),
(37, '2019-05-24 05:10:07', NULL),
(37, '2019-05-24 05:10:14', NULL),
(37, '2019-05-24 05:10:26', NULL),
(37, '2019-05-24 05:11:16', NULL),
(37, '2019-05-24 05:17:30', NULL),
(37, '2019-05-24 05:19:12', NULL),
(37, '2019-05-24 05:19:41', NULL),
(37, '2019-05-24 05:19:49', NULL),
(37, '2019-05-24 05:21:27', NULL),
(39, '2019-05-24 05:21:34', NULL),
(37, '2019-05-24 05:21:39', NULL),
(39, '2019-05-24 05:21:44', NULL),
(37, '2019-05-24 05:21:50', NULL),
(38, '2019-05-24 05:22:04', NULL),
(39, '2019-05-24 05:22:16', NULL),
(37, '2019-05-24 05:22:20', NULL),
(38, '2019-05-24 05:22:30', NULL),
(39, '2019-05-24 05:22:31', NULL),
(37, '2019-05-24 05:22:34', NULL),
(39, '2019-05-24 05:22:37', NULL),
(37, '2019-05-24 05:22:42', NULL),
(39, '2019-05-24 05:23:16', NULL),
(39, '2019-05-24 05:23:29', NULL),
(39, '2019-05-24 05:23:32', NULL),
(78, '2019-05-24 05:23:35', NULL),
(44, '2019-05-24 05:23:37', NULL),
(36, '2019-05-24 05:23:40', NULL),
(78, '2019-05-24 05:23:42', NULL),
(36, '2019-05-26 04:36:34', NULL),
(39, '2019-05-26 04:42:26', NULL),
(39, '2019-05-26 04:42:38', NULL),
(78, '2019-05-26 05:39:55', NULL),
(36, '2019-05-26 05:39:58', NULL),
(36, '2019-05-26 05:40:02', NULL),
(78, '2019-05-26 05:40:05', NULL),
(36, '2019-05-27 01:55:16', NULL),
(36, '2019-05-27 01:55:23', NULL),
(39, '2019-05-27 01:55:26', NULL),
(39, '2019-05-27 01:58:37', NULL),
(37, '2019-05-27 01:58:39', NULL),
(39, '2019-05-27 01:59:04', NULL),
(39, '2019-05-27 01:59:06', NULL),
(1055, '2019-05-27 01:59:09', NULL),
(39, '2019-05-27 02:24:49', NULL),
(1055, '2019-05-27 02:25:00', NULL),
(1055, '2019-05-27 02:26:10', NULL),
(1055, '2019-05-27 02:27:35', NULL),
(1055, '2019-05-27 02:28:12', NULL),
(1055, '2019-05-27 02:28:53', NULL),
(1055, '2019-05-27 02:30:25', NULL),
(1055, '2019-05-27 02:36:42', NULL),
(1055, '2019-05-27 02:36:45', NULL),
(1055, '2019-05-27 02:37:18', NULL),
(1055, '2019-05-27 02:37:40', NULL),
(1055, '2019-05-27 02:38:08', NULL),
(1055, '2019-05-27 02:40:12', NULL),
(1055, '2019-05-27 02:43:10', NULL),
(1055, '2019-05-27 02:44:40', NULL),
(1055, '2019-05-27 02:45:33', NULL),
(1055, '2019-05-27 02:45:55', NULL),
(1055, '2019-05-27 02:46:31', NULL),
(1055, '2019-05-27 02:48:10', NULL),
(1055, '2019-05-27 02:48:26', NULL),
(39, '2019-05-27 02:48:30', NULL),
(1055, '2019-05-27 02:48:33', NULL),
(1055, '2019-05-27 02:49:03', NULL),
(1055, '2019-05-27 02:49:42', NULL),
(1061, '2019-05-27 02:49:47', NULL),
(1061, '2019-05-27 02:49:47', NULL),
(1061, '2019-05-27 02:49:47', NULL),
(1061, '2019-05-27 02:49:47', NULL),
(1061, '2019-05-27 02:49:48', NULL),
(43, '2019-05-27 02:49:53', NULL),
(1077, '2019-05-27 02:50:30', NULL),
(39, '2019-05-27 02:50:35', NULL),
(37, '2019-05-27 02:50:45', NULL),
(37, '2019-05-27 02:56:29', NULL),
(37, '2019-05-27 02:57:42', NULL),
(39, '2019-05-27 02:57:58', NULL),
(39, '2019-05-27 02:58:04', NULL),
(1055, '2019-05-27 02:58:07', NULL),
(1055, '2019-05-27 02:58:33', NULL),
(1055, '2019-05-27 02:59:27', NULL),
(1055, '2019-05-27 03:00:44', NULL),
(1055, '2019-05-27 03:01:11', NULL),
(1055, '2019-05-27 03:01:16', NULL),
(39, '2019-05-27 03:01:27', NULL),
(39, '2019-05-27 03:01:37', NULL),
(37, '2019-05-27 03:01:40', NULL),
(39, '2019-05-27 03:01:59', NULL),
(78, '2019-05-27 03:02:07', NULL),
(44, '2019-05-27 03:02:19', NULL),
(36, '2019-05-27 03:02:22', NULL),
(78, '2019-05-27 03:02:24', NULL),
(44, '2019-05-27 03:10:08', NULL),
(44, '2019-05-27 03:16:50', NULL),
(44, '2019-05-27 03:18:12', NULL);
INSERT INTO `seg_navegacion_estadistica` (`cod_navegacion`, `fec_visita`, `cod_pais`) VALUES
(36, '2019-05-27 03:24:00', NULL),
(78, '2019-05-27 03:24:02', NULL),
(44, '2019-05-27 03:24:03', NULL),
(44, '2019-05-27 03:26:07', NULL),
(44, '2019-05-27 03:26:20', NULL),
(44, '2019-05-27 04:14:03', NULL),
(36, '2019-05-27 04:14:06', NULL),
(36, '2019-05-27 04:14:13', NULL),
(78, '2019-05-27 04:14:15', NULL),
(44, '2019-05-27 04:14:16', NULL),
(1061, '2019-05-27 04:14:32', NULL),
(1061, '2019-05-27 04:14:32', NULL),
(1061, '2019-05-27 04:14:33', NULL),
(36, '2019-05-27 04:14:53', NULL),
(78, '2019-05-27 04:15:06', NULL),
(44, '2019-05-27 04:15:08', NULL),
(36, '2019-05-27 04:15:10', NULL),
(78, '2019-05-27 04:38:01', NULL),
(44, '2019-05-27 04:38:03', NULL),
(36, '2019-05-27 04:38:18', NULL),
(39, '2019-05-27 04:38:20', NULL),
(36, '2019-05-27 04:38:22', NULL),
(39, '2019-05-27 04:38:24', NULL),
(39, '2019-05-27 04:38:26', NULL),
(36, '2019-05-27 04:38:27', NULL),
(36, '2019-04-29 03:31:45', NULL),
(78, '2019-04-29 03:31:49', NULL),
(78, '2019-04-29 03:34:20', NULL),
(44, '2019-04-29 03:34:23', NULL),
(44, '2019-04-29 03:38:31', NULL),
(44, '2019-04-29 03:54:28', NULL),
(36, '2019-05-10 05:27:39', NULL),
(78, '2019-05-10 05:38:27', NULL),
(44, '2019-05-10 05:38:30', NULL),
(78, '2019-05-10 05:38:41', NULL),
(39, '2019-05-10 05:38:44', NULL),
(37, '2019-05-10 05:38:48', NULL),
(39, '2019-05-10 05:38:50', NULL),
(36, '2019-05-16 04:46:24', NULL),
(78, '2019-05-16 05:30:38', NULL),
(78, '2019-05-16 05:30:41', NULL),
(44, '2019-05-16 05:30:43', NULL),
(36, '2019-05-17 04:55:10', NULL),
(78, '2019-05-17 04:57:25', NULL),
(44, '2019-05-17 04:57:27', NULL),
(44, '2019-05-17 04:58:44', NULL),
(44, '2019-05-17 04:59:00', NULL),
(44, '2019-05-17 05:03:32', NULL),
(78, '2019-05-17 05:03:40', NULL),
(1100, '2019-05-17 05:03:42', NULL),
(78, '2019-05-17 05:03:50', NULL),
(44, '2019-05-17 05:03:51', NULL),
(44, '2019-05-17 05:09:27', NULL),
(36, '2019-05-19 23:27:29', NULL),
(78, '2019-05-19 23:27:31', NULL),
(44, '2019-05-19 23:27:33', NULL),
(44, '2019-05-19 23:32:30', NULL),
(78, '2019-05-19 23:39:55', NULL),
(78, '2019-05-19 23:39:57', NULL),
(78, '2019-05-19 23:41:08', NULL),
(44, '2019-05-19 23:41:10', NULL),
(44, '2019-05-19 23:42:09', NULL),
(44, '2019-05-19 23:59:12', NULL),
(39, '2019-05-20 00:00:08', NULL),
(78, '2019-05-20 00:00:13', NULL),
(78, '2019-05-20 00:00:15', NULL),
(39, '2019-05-20 00:00:16', NULL),
(37, '2019-05-20 00:00:17', NULL),
(78, '2019-05-20 00:00:20', NULL),
(44, '2019-05-20 00:00:22', NULL),
(44, '2019-05-20 00:01:58', NULL),
(39, '2019-05-20 00:02:17', NULL),
(37, '2019-05-20 00:02:18', NULL),
(39, '2019-05-20 00:02:27', NULL),
(37, '2019-05-20 00:02:29', NULL),
(37, '2019-05-20 00:02:37', NULL),
(37, '2019-05-20 00:03:22', NULL),
(78, '2019-05-20 00:03:24', NULL),
(44, '2019-05-20 00:03:26', NULL),
(44, '2019-05-20 00:04:08', NULL),
(39, '2019-05-20 00:04:12', NULL),
(37, '2019-05-20 00:04:13', NULL),
(78, '2019-05-20 00:04:18', NULL),
(44, '2019-05-20 00:04:20', NULL),
(44, '2019-05-20 00:05:11', NULL),
(44, '2019-05-20 00:05:52', NULL),
(43, '2019-05-20 00:05:57', NULL),
(39, '2019-05-20 00:07:04', NULL),
(37, '2019-05-20 00:07:05', NULL),
(36, '2019-05-20 00:07:24', NULL),
(200, '2019-05-20 00:07:26', NULL),
(36, '2019-05-20 00:07:28', NULL),
(39, '2019-05-20 00:07:29', NULL),
(36, '2019-05-20 00:07:31', NULL),
(1062, '2019-05-20 00:07:33', NULL),
(36, '2019-05-20 00:08:31', NULL),
(78, '2019-05-20 00:08:33', NULL),
(44, '2019-05-20 00:08:34', NULL),
(39, '2019-05-20 00:08:49', NULL),
(37, '2019-05-20 00:08:50', NULL),
(38, '2019-05-20 00:09:08', NULL),
(38, '2019-05-20 00:09:15', NULL),
(78, '2019-05-20 00:09:19', NULL),
(44, '2019-05-20 00:09:20', NULL),
(43, '2019-05-20 00:09:24', NULL),
(81, '2019-05-20 00:09:58', NULL),
(81, '2019-05-20 00:10:03', NULL),
(39, '2019-05-20 00:11:58', NULL),
(37, '2019-05-20 00:12:05', NULL),
(37, '2019-05-20 00:39:43', NULL),
(36, '2019-05-20 00:39:53', NULL),
(78, '2019-05-20 00:39:54', NULL),
(78, '2019-05-20 00:39:57', NULL),
(1100, '2019-05-20 00:39:58', NULL),
(39, '2019-05-20 00:40:02', NULL),
(37, '2019-05-20 00:40:03', NULL),
(37, '2019-05-20 00:43:38', NULL),
(39, '2019-05-20 00:43:42', NULL),
(37, '2019-05-20 00:43:45', NULL),
(38, '2019-05-20 00:43:48', NULL),
(78, '2019-05-20 00:43:52', NULL),
(44, '2019-05-20 00:43:53', NULL),
(44, '2019-05-20 01:50:38', NULL),
(36, '2019-05-20 01:50:40', NULL),
(36, '2019-05-20 01:50:47', NULL),
(78, '2019-05-20 01:50:49', NULL),
(44, '2019-05-20 01:50:50', NULL),
(44, '2019-05-20 01:52:07', NULL),
(44, '2019-05-20 01:52:15', NULL),
(44, '2019-05-20 01:52:56', NULL),
(44, '2019-05-20 01:54:08', NULL),
(44, '2019-05-20 01:55:54', NULL),
(78, '2019-05-20 01:56:41', NULL),
(78, '2019-05-20 01:57:55', NULL),
(37, '2019-05-20 01:57:56', NULL),
(78, '2019-05-20 01:58:05', NULL),
(37, '2019-05-20 01:58:07', NULL),
(78, '2019-05-20 01:58:08', NULL),
(78, '2019-05-20 01:58:52', NULL),
(37, '2019-05-20 01:58:55', NULL),
(78, '2019-05-20 01:59:14', NULL),
(44, '2019-05-20 01:59:16', NULL),
(44, '2019-05-20 01:59:35', NULL),
(44, '2019-05-20 02:00:04', NULL),
(44, '2019-05-20 02:01:03', NULL),
(44, '2019-05-20 02:01:07', NULL),
(78, '2019-05-20 02:01:08', NULL),
(44, '2019-05-20 02:01:09', NULL),
(43, '2019-05-20 02:01:25', NULL),
(44, '2019-05-20 04:49:44', NULL),
(36, '2019-05-20 04:49:46', NULL),
(36, '2019-05-20 04:49:49', NULL),
(78, '2019-05-20 04:49:51', NULL),
(44, '2019-05-20 04:49:52', NULL),
(44, '2019-05-20 04:50:58', NULL),
(44, '2019-05-20 04:51:01', NULL),
(44, '2019-05-20 04:52:15', NULL),
(43, '2019-05-20 04:53:30', NULL),
(2001, '2019-05-20 04:53:50', NULL),
(2002, '2019-05-20 04:53:50', NULL),
(2002, '2019-05-20 04:53:58', NULL),
(44, '2019-05-20 04:55:05', NULL),
(1061, '2019-05-20 04:55:13', NULL),
(1061, '2019-05-20 04:55:14', NULL),
(1061, '2019-05-20 04:55:14', NULL),
(1061, '2019-05-20 04:55:14', NULL),
(2001, '2019-05-20 04:55:21', NULL),
(2002, '2019-05-20 04:55:21', NULL),
(2002, '2019-05-20 04:55:22', NULL),
(1084, '2019-05-20 04:55:39', NULL),
(36, '2019-05-22 03:56:22', NULL),
(78, '2019-05-22 03:56:24', NULL),
(44, '2019-05-22 03:56:53', NULL),
(44, '2019-05-22 03:57:53', NULL),
(43, '2019-05-22 03:57:55', NULL),
(2001, '2019-05-22 03:58:03', NULL),
(2002, '2019-05-22 03:58:03', NULL),
(2002, '2019-05-22 03:58:05', NULL),
(1084, '2019-05-22 03:58:18', NULL),
(36, '2019-05-22 04:14:04', NULL),
(78, '2019-05-22 04:14:12', NULL),
(44, '2019-05-22 04:14:15', NULL),
(43, '2019-05-22 04:14:17', NULL),
(39, '2019-05-22 04:14:23', NULL),
(37, '2019-05-22 04:14:26', NULL),
(38, '2019-05-22 04:14:40', NULL),
(1055, '2019-05-22 04:14:44', NULL),
(1072, '2019-05-22 04:14:55', NULL),
(39, '2019-05-22 04:15:01', NULL),
(39, '2019-05-22 04:15:07', NULL),
(78, '2019-05-22 04:15:10', NULL),
(44, '2019-05-22 04:15:11', NULL),
(43, '2019-05-22 04:15:13', NULL),
(2001, '2019-05-22 04:15:23', NULL),
(2002, '2019-05-22 04:15:23', NULL),
(2002, '2019-05-22 04:15:25', NULL),
(2002, '2019-05-22 04:15:25', NULL),
(44, '2019-05-22 04:16:27', NULL),
(43, '2019-05-22 04:16:29', NULL),
(2001, '2019-05-22 04:16:36', NULL),
(2002, '2019-05-22 04:16:36', NULL),
(2002, '2019-05-22 04:16:38', NULL),
(1084, '2019-05-22 04:16:53', NULL),
(1084, '2019-05-22 04:17:25', NULL),
(1084, '2019-05-22 04:17:56', NULL),
(1084, '2019-05-22 04:18:23', NULL),
(78, '2019-05-22 04:18:28', NULL),
(78, '2019-05-22 04:18:30', NULL),
(44, '2019-05-22 04:18:40', NULL),
(43, '2019-05-22 04:18:41', NULL),
(2001, '2019-05-22 04:18:47', NULL),
(2002, '2019-05-22 04:18:47', NULL),
(2002, '2019-05-22 04:18:48', NULL),
(1084, '2019-05-22 04:18:53', NULL),
(44, '2019-05-22 04:19:26', NULL),
(43, '2019-05-22 04:19:27', NULL),
(2001, '2019-05-22 04:19:35', NULL),
(2002, '2019-05-22 04:19:35', NULL),
(2002, '2019-05-22 04:19:38', NULL),
(1084, '2019-05-22 04:19:41', NULL),
(44, '2019-05-22 04:21:10', NULL),
(43, '2019-05-22 04:21:11', NULL),
(44, '2019-05-22 04:27:26', NULL),
(78, '2019-05-22 04:27:28', NULL),
(44, '2019-05-22 04:27:35', NULL),
(78, '2019-05-22 04:27:40', NULL),
(78, '2019-05-22 04:30:46', NULL),
(44, '2019-05-22 04:30:47', NULL),
(43, '2019-05-22 04:30:49', NULL),
(1061, '2019-05-22 04:31:03', NULL),
(1061, '2019-05-22 04:31:03', NULL),
(1061, '2019-05-22 04:31:04', NULL),
(1061, '2019-05-22 04:31:05', NULL),
(1061, '2019-05-22 04:31:05', NULL),
(1061, '2019-05-22 04:31:06', NULL),
(1061, '2019-05-22 04:31:06', NULL),
(1061, '2019-05-22 04:31:07', NULL),
(1061, '2019-05-22 04:31:07', NULL),
(1061, '2019-05-22 04:31:07', NULL),
(1061, '2019-05-22 04:31:08', NULL),
(1061, '2019-05-22 04:31:08', NULL),
(44, '2019-05-22 04:31:58', NULL),
(43, '2019-05-22 04:32:00', NULL),
(44, '2019-05-22 04:33:34', NULL),
(39, '2019-05-22 04:33:50', NULL),
(37, '2019-05-22 04:33:52', NULL),
(38, '2019-05-22 04:34:00', NULL),
(78, '2019-05-22 04:34:05', NULL),
(44, '2019-05-22 04:34:06', NULL),
(2001, '2019-05-22 04:34:20', NULL),
(2002, '2019-05-22 04:34:20', NULL),
(43, '2019-05-22 04:34:21', NULL),
(2002, '2019-05-22 04:34:26', NULL),
(1084, '2019-05-22 04:34:30', NULL),
(44, '2019-05-22 04:34:34', NULL),
(78, '2019-05-22 04:34:36', NULL),
(44, '2019-05-22 05:00:10', NULL),
(78, '2019-05-22 05:00:22', NULL),
(44, '2019-05-22 05:00:25', NULL),
(36, '2019-05-24 04:36:42', NULL),
(78, '2019-05-24 04:36:44', NULL),
(44, '2019-05-24 04:37:22', NULL),
(44, '2019-05-24 04:40:16', NULL),
(44, '2019-05-24 04:43:42', NULL),
(43, '2019-05-24 04:43:47', NULL),
(2001, '2019-05-24 04:43:53', NULL),
(2002, '2019-05-24 04:43:53', NULL),
(2002, '2019-05-24 04:43:54', NULL),
(1084, '2019-05-24 04:44:00', NULL),
(44, '2019-05-24 04:44:04', NULL),
(43, '2019-05-24 04:44:19', NULL),
(2001, '2019-05-24 04:44:25', NULL),
(2002, '2019-05-24 04:44:25', NULL),
(2002, '2019-05-24 04:44:26', NULL),
(1084, '2019-05-24 04:44:33', NULL),
(44, '2019-05-24 04:45:45', NULL),
(78, '2019-05-24 04:45:47', NULL),
(44, '2019-05-24 04:45:49', NULL),
(43, '2019-05-24 04:45:50', NULL),
(2001, '2019-05-24 04:45:55', NULL),
(2002, '2019-05-24 04:45:55', NULL),
(2002, '2019-05-24 04:45:56', NULL),
(1084, '2019-05-24 04:46:00', NULL),
(1084, '2019-05-24 04:46:28', NULL),
(44, '2019-05-24 04:48:02', NULL),
(43, '2019-05-24 04:48:04', NULL),
(2001, '2019-05-24 04:48:08', NULL),
(2002, '2019-05-24 04:48:08', NULL),
(2002, '2019-05-24 04:48:09', NULL),
(1084, '2019-05-24 04:48:12', NULL),
(44, '2019-05-24 04:48:19', NULL),
(78, '2019-05-24 04:48:21', NULL),
(44, '2019-05-24 04:48:44', NULL),
(44, '2019-05-24 04:52:40', NULL),
(44, '2019-05-24 04:53:12', NULL),
(44, '2019-05-24 04:53:42', NULL),
(44, '2019-05-24 04:54:10', NULL),
(44, '2019-05-24 04:55:02', NULL),
(44, '2019-05-24 04:55:43', NULL),
(44, '2019-05-24 04:56:02', NULL),
(1084, '2019-05-24 04:56:10', NULL),
(44, '2019-05-24 04:56:12', NULL),
(78, '2019-05-24 04:56:13', NULL),
(36, '2019-05-29 03:51:06', NULL),
(78, '2019-05-29 03:51:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_operacion_tabla`
--

CREATE TABLE `seg_operacion_tabla` (
  `cod_operacion` int(11) NOT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `txt_alias` varchar(255) NOT NULL,
  `ind_activo` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_operacion_tabla`
--

INSERT INTO `seg_operacion_tabla` (`cod_operacion`, `txt_nombre`, `txt_alias`, `ind_activo`) VALUES
(1, 'INSERT', 'CREAR', 1),
(2, 'SELECT', 'CONSULTAR', 1),
(3, 'UPDATE', 'MODIFICAR', 1),
(4, 'DELETE', 'BORRAR', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_perfil`
--

CREATE TABLE `seg_perfil` (
  `cod_perfil` int(11) NOT NULL,
  `txt_nombre` varchar(100) NOT NULL,
  `cod_perfil_pk` int(11) DEFAULT NULL,
  `ind_activo` int(11) NOT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_perfil`
--

INSERT INTO `seg_perfil` (`cod_perfil`, `txt_nombre`, `cod_perfil_pk`, `ind_activo`, `fec_registro`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 'AMINISTRADOR', 1, 1, '2014-05-05 18:05:18', 1, 0),
(2, '', 2, 1, '2014-11-30 16:13:19', 1, 1),
(3, 'AUXILIAR', 3, 1, '2014-12-01 23:43:51', 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_perfil_navegacion`
--

CREATE TABLE `seg_perfil_navegacion` (
  `cod_navegacion` int(11) DEFAULT NULL,
  `cod_perfil` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_perfil_navegacion`
--

INSERT INTO `seg_perfil_navegacion` (`cod_navegacion`, `cod_perfil`) VALUES
(1045, 1),
(1045, 1),
(1045, 1),
(1050, 1),
(1039, 1),
(1037, 1),
(1035, 1),
(1032, 1),
(1026, 1),
(1025, 1),
(1022, 1),
(1012, 1),
(1010, 1),
(1004, 1),
(1003, 1),
(1001, 1),
(1045, 1),
(1014, 1),
(1013, 1),
(37, 1),
(36, 1),
(1045, 1),
(1045, 1),
(1014, 3),
(1013, 3),
(37, 3),
(36, 3),
(45, 3),
(44, 3),
(43, 3),
(38, 3),
(78, 3),
(39, 3),
(1014, 8),
(1013, 8),
(37, 8),
(45, 1),
(44, 1),
(43, 1),
(38, 1),
(78, 1),
(39, 1),
(1045, 1),
(1045, 1),
(1045, 1),
(1045, 1),
(36, 8),
(45, 8),
(44, 8),
(43, 8),
(38, 8),
(78, 8),
(39, 8),
(1045, 1),
(1045, 1),
(1045, 1),
(1045, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_perfil_proceso_adicional`
--

CREATE TABLE `seg_perfil_proceso_adicional` (
  `cod_proceso` int(2) NOT NULL,
  `cod_perfil` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_perfil_proceso_adicional`
--

INSERT INTO `seg_perfil_proceso_adicional` (`cod_proceso`, `cod_perfil`) VALUES
(4, 1),
(5, 1),
(7, 1),
(9, 1),
(10, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_perfil_reporte`
--

CREATE TABLE `seg_perfil_reporte` (
  `cod_reporte_tabla` int(11) DEFAULT NULL,
  `cod_perfil` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Indica que reportes se muestran por cada perfil';

--
-- Volcado de datos para la tabla `seg_perfil_reporte`
--

INSERT INTO `seg_perfil_reporte` (`cod_reporte_tabla`, `cod_perfil`) VALUES
(39, 1),
(38, 1),
(37, 1),
(36, 1),
(35, 1),
(34, 1),
(26, 1),
(25, 1),
(23, 1),
(12, 1),
(11, 1),
(1, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_perfil_usuario`
--

CREATE TABLE `seg_perfil_usuario` (
  `cod_perfil_usuario` int(11) NOT NULL,
  `cod_usuario_pk` int(11) DEFAULT NULL,
  `cod_perfil` int(11) DEFAULT NULL,
  `txt_nota` varchar(255) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_perfil_usuario`
--

INSERT INTO `seg_perfil_usuario` (`cod_perfil_usuario`, `cod_usuario_pk`, `cod_perfil`, `txt_nota`, `cod_usuario`, `ind_bloqueado`) VALUES
(1, 1, 1, NULL, 1, NULL),
(5, 2, 1, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_permiso_tabla_autonoma`
--

CREATE TABLE `seg_permiso_tabla_autonoma` (
  `cod_tabla` int(11) NOT NULL,
  `cod_operacion` int(11) NOT NULL,
  `cod_perfil` int(11) NOT NULL,
  `fec_registro` datetime DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_permiso_tabla_autonoma`
--

INSERT INTO `seg_permiso_tabla_autonoma` (`cod_tabla`, `cod_operacion`, `cod_perfil`, `fec_registro`, `cod_usuario`) VALUES
(27, 3, 1, '2019-05-23 22:39:13', 1),
(27, 2, 1, '2019-05-23 22:39:13', 1),
(27, 1, 1, '2019-05-23 22:39:13', 1),
(26, 3, 1, '2019-05-23 22:39:13', 1),
(26, 2, 1, '2019-05-23 22:39:13', 1),
(26, 1, 1, '2019-05-23 22:39:13', 1),
(25, 3, 1, '2019-05-23 22:39:13', 1),
(25, 2, 1, '2019-05-23 22:39:13', 1),
(25, 1, 1, '2019-05-23 22:39:13', 1),
(24, 3, 1, '2019-05-23 22:39:13', 1),
(24, 2, 1, '2019-05-23 22:39:13', 1),
(24, 2, 3, '2014-12-01 23:45:15', 2),
(23, 2, 3, '2014-12-01 23:45:15', 2),
(20, 2, 3, '2014-12-01 23:45:15', 2),
(24, 1, 1, '2019-05-23 22:39:13', 1),
(21, 3, 1, '2019-05-23 22:39:13', 1),
(21, 2, 1, '2019-05-23 22:39:13', 1),
(21, 1, 1, '2019-05-23 22:39:13', 1),
(20, 3, 1, '2019-05-23 22:39:13', 1),
(20, 2, 1, '2019-05-23 22:39:13', 1),
(20, 1, 1, '2019-05-23 22:39:13', 1),
(19, 3, 1, '2019-05-23 22:39:13', 1),
(19, 2, 1, '2019-05-23 22:39:13', 1),
(19, 1, 1, '2019-05-23 22:39:13', 1),
(18, 3, 1, '2019-05-23 22:39:13', 1),
(18, 2, 1, '2019-05-23 22:39:13', 1),
(18, 1, 1, '2019-05-23 22:39:13', 1),
(17, 3, 1, '2019-05-23 22:39:13', 1),
(17, 2, 1, '2019-05-23 22:39:13', 1),
(17, 1, 1, '2019-05-23 22:39:13', 1),
(16, 3, 1, '2019-05-23 22:39:13', 1),
(16, 2, 1, '2019-05-23 22:39:13', 1),
(16, 1, 1, '2019-05-23 22:39:13', 1),
(15, 3, 1, '2019-05-23 22:39:13', 1),
(15, 2, 1, '2019-05-23 22:39:13', 1),
(15, 1, 1, '2019-05-23 22:39:13', 1),
(13, 2, 3, '2014-12-01 23:45:15', 2),
(19, 2, 3, '2014-12-01 23:45:15', 2),
(13, 3, 1, '2019-05-23 22:39:13', 1),
(13, 2, 1, '2019-05-23 22:39:13', 1),
(13, 1, 1, '2019-05-23 22:39:13', 1),
(28, 1, 1, '2019-05-23 22:39:13', 1),
(28, 2, 1, '2019-05-23 22:39:13', 1),
(28, 3, 1, '2019-05-23 22:39:13', 1),
(28, 4, 1, '2019-05-23 22:39:13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_usuario`
--

CREATE TABLE `seg_usuario` (
  `cod_usuario_pk` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `cod_tipo_identificacion` int(11) DEFAULT NULL,
  `num_identificacion` varchar(255) DEFAULT NULL,
  `cod_estado_seg_usuario` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `txt_login` varchar(255) DEFAULT NULL,
  `txt_password` varchar(255) DEFAULT NULL,
  `txt_email` varchar(255) DEFAULT NULL,
  `ind_bloqueado` int(11) DEFAULT NULL,
  `fec_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seg_usuario`
--

INSERT INTO `seg_usuario` (`cod_usuario_pk`, `txt_nombre`, `cod_tipo_identificacion`, `num_identificacion`, `cod_estado_seg_usuario`, `cod_usuario`, `txt_login`, `txt_password`, `txt_email`, `ind_bloqueado`, `fec_registro`) VALUES
(1, 'Administrador', NULL, NULL, 1, 1, 'admin', '*43A6EE305388135D3AA1A8DF556215ACD0A02482', NULL, 0, '2013-12-16 18:44:29'),
(2, 'Jenny Bravo', 1, '1144141006', 1, 1, 'jbravo', '*E1DFEDC056EE2B54D6A7ED9176C3FFD6DEB6D6BA', 'creativacolombiana@hotmail.com', 0, '2014-12-02 08:48:02'),
(3, '', NULL, '', 1, 2, '', '*E1DFEDC056EE2B54D6A7ED9176C3FFD6DEB6D6BA', NULL, 1, '2014-12-02 09:42:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `separador_txt`
--

CREATE TABLE `separador_txt` (
  `cod_separador_txt` int(11) NOT NULL,
  `txt_nombre` varchar(45) DEFAULT NULL,
  `txt_caracter` varchar(45) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `separador_txt`
--

INSERT INTO `separador_txt` (`cod_separador_txt`, `txt_nombre`, `txt_caracter`, `ind_activo`) VALUES
(1, 'Coma (,)', ',', 1),
(2, 'Punto y Coma (;)', ';', 1),
(3, 'Espacio en blanco ( )', ' ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `cod_sexo` int(11) NOT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `txt_nombre_2` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`cod_sexo`, `txt_nombre`, `txt_nombre_2`, `ind_activo`) VALUES
(1, 'MASCULINO', 'M', 1),
(2, 'FEMENINO', 'F', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_autonoma`
--

CREATE TABLE `tabla_autonoma` (
  `cod_tabla` int(11) NOT NULL,
  `cod_estado_tabla` int(11) NOT NULL,
  `cod_tipo_tabla_autonoma` int(11) DEFAULT NULL,
  `num_orden` int(11) NOT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `txt_alias` varchar(255) NOT NULL,
  `ind_dashboard` int(11) DEFAULT NULL,
  `cod_tabla_detalle` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tabla_autonoma`
--

INSERT INTO `tabla_autonoma` (`cod_tabla`, `cod_estado_tabla`, `cod_tipo_tabla_autonoma`, `num_orden`, `txt_nombre`, `txt_alias`, `ind_dashboard`, `cod_tabla_detalle`, `icon`) VALUES
(27, 2, 2, 27, 'dia_festivo', 'DIAS FESTIVOS', 0, NULL, NULL),
(13, 2, 1, 13, 'factura', 'FACTURA', 1, NULL, NULL),
(14, 2, 2, 14, 'resolucion_dian', 'RESOLUCION DIAN', 0, NULL, NULL),
(15, 2, 1, 15, 'seg_usuario', 'USUARIO', 1, NULL, NULL),
(16, 2, 1, 16, 'seg_perfil_usuario', 'PERFIL X USUARIO', 0, NULL, NULL),
(17, 2, 1, 17, 'seg_perfil', 'PERFIL', 0, NULL, NULL),
(18, 2, 1, 18, 'empleado', 'EMPLEADOS', 1, NULL, NULL),
(19, 2, 1, 19, 'cliente', 'CLIENTES', 1, NULL, NULL),
(20, 2, 1, 20, 'pedido', 'PEDIDOS', 1, 23, NULL),
(21, 2, 1, 21, 'producto', 'PRODUCTOS', 1, NULL, NULL),
(22, 2, 1, 22, 'columna_tabla_autonoma', 'COLUMNAS MODULOS', 0, NULL, NULL),
(23, 2, 1, 23, 'pedido_detalle', 'PEDIDO DETALLE', 0, NULL, NULL),
(24, 2, 2, 24, 'proveedor', 'PROVEEDOR', 1, NULL, NULL),
(25, 2, 1, 25, 'entrada_producto', 'ENTRADA DE PRODUCTOS', 1, NULL, NULL),
(26, 2, 1, 26, 'parametro_sistema', 'PARAMETROS DEL SISTEMA', 0, NULL, NULL),
(28, 2, 1, 28, 'pedido_compra', 'PEDIDO COMPRA', 1, 29, NULL),
(29, 2, 1, 29, 'pedido_compra_detalle', 'DETALLE COMPRA', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_autonoma_personalizado`
--

CREATE TABLE `tabla_autonoma_personalizado` (
  `cod_tabla` int(11) NOT NULL,
  `cod_navegacion` int(11) NOT NULL,
  `txt_js` varchar(255) DEFAULT NULL,
  `txt_proceso_php` varchar(255) DEFAULT NULL,
  `txt_consulta_php` varchar(255) DEFAULT NULL,
  `txt_js_adicional` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tabla_autonoma_personalizado`
--

INSERT INTO `tabla_autonoma_personalizado` (`cod_tabla`, `cod_navegacion`, `txt_js`, `txt_proceso_php`, `txt_consulta_php`, `txt_js_adicional`) VALUES
(3, 38, NULL, 'crear_usuario_profesional_salud.php', NULL, NULL),
(2, 39, 'ver_consultar_paciente.js', NULL, NULL, NULL),
(4, 39, 'ver_consultar_atencion.js', '', NULL, NULL),
(8, 39, 'ver_consultar_autorizacion.js', '', NULL, NULL),
(11, 44, 'ver_registrar_entidad_tipo_atencion.js', '', NULL, NULL),
(9, 44, 'ver_registrar_autorizacion.js', '', NULL, NULL),
(12, 44, 'ver_registrar_autorizacion_tipo_atencion.js', '', NULL, NULL),
(12, 1024, '', 'registrar_diagnostico.php', NULL, NULL),
(9, 81, '', 'ver_reporte_autorizaciones.php', NULL, NULL),
(4, 1021, 'ver_registrar_atencion.js', '', NULL, NULL),
(8, 78, 'ver_consultar_autorizacion.js', '', NULL, NULL),
(14, 1029, 'ver_registrar_resolucion_dian.js', '', NULL, NULL),
(14, 39, 'ver_consultar_resolucion_dian.js', NULL, NULL, NULL),
(14, 1028, 'ver_registrar_resolucion_dian.js', '', NULL, NULL),
(13, 39, 'ver_consultar_factura.js', '', 'ver_consultar_factura.php', NULL),
(13, 1032, 'ver_cambiar_estado_factura.js', '', NULL, NULL),
(12, 1034, '', 'registrar_diagnostico.php', NULL, NULL),
(13, 1035, 'ver_generar_descuento.js', '', NULL, NULL),
(13, 1039, 'ver_consultar_factura.js', '', NULL, NULL),
(13, 1042, 'ver_registrar_factura_periodo.js', '', NULL, NULL),
(8, 81, 'ver_consultar_autorizacion.js', '', NULL, NULL),
(8, 1030, 'ver_consultar_autorizacion.js', '', NULL, NULL),
(2, 1003, 'ver_historia_clinica.js', '', NULL, NULL),
(15, 39, 'ver_consultar_usuario.js', '', NULL, NULL),
(15, 78, 'ver_consultar_usuario.js', '', NULL, NULL),
(17, 39, 'ver_consultar_perfil.js', '', NULL, NULL),
(16, 44, 'ver_registrar_usuario.js', '', NULL, NULL),
(21, 38, '', 'guardar_producto.php', NULL, 'ver_consultar_producto.js'),
(21, 39, '', '', NULL, 'ver_consultar_producto.js'),
(25, 38, '', 'guardar_entrada_producto.php', NULL, NULL),
(23, 44, 'ver_registrar_pedido.js', '', '', 'ajax_registrar_pedido.js'),
(23, 81, '', 'guardar_pedido.php', '', ''),
(20, 78, '', '', 'ver_registrar_pedido.php', 'ver_consultar_pedido.js'),
(25, 1055, 'ver_registrar_entrada.js', NULL, NULL, NULL),
(29, 44, '', '', '', 'ver_registrar_pedido_compra.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_administradora`
--

CREATE TABLE `tipo_administradora` (
  `cod_tipo_administradora` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_administradora`
--

INSERT INTO `tipo_administradora` (`cod_tipo_administradora`, `txt_nombre`, `ind_activo`) VALUES
(1, 'ARP', 1),
(2, 'EPS', 1),
(3, 'CCF', 1),
(4, 'PAR', 1),
(5, 'AFP', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `cod_tipo_cliente` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`cod_tipo_cliente`, `txt_nombre`, `ind_activo`) VALUES
(1, 'RETENEDOR', 1),
(2, 'NO RETENEDOR', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_dato_columna_tabla`
--

CREATE TABLE `tipo_dato_columna_tabla` (
  `cod_tipo_dato_colunna` int(11) NOT NULL,
  `txt_nombre` varchar(255) NOT NULL,
  `ind_activo` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_dato_columna_tabla`
--

INSERT INTO `tipo_dato_columna_tabla` (`cod_tipo_dato_colunna`, `txt_nombre`, `ind_activo`) VALUES
(1, 'VARCHAR', 1),
(2, 'INT CON FORMATO', 1),
(3, 'DATE CON FORMATO', 1),
(4, 'LIST BOX', 1),
(5, 'INT SIN FORMATO', 1),
(6, 'TEXT', 1),
(7, 'LISTA DE VALORES', 1),
(8, 'DATETIME CON FORMATO', 1),
(9, 'ARCHIVO', 1),
(10, 'CELULAR', 1),
(11, 'INDEFINIDO', 1),
(12, 'VIDEO YOUTUBE', 1),
(13, 'ARCHIVO MP3', 1),
(14, 'HORA', 1),
(15, 'VARCHAR SIN NUMERO', 1),
(16, 'PASSWORD', 1),
(17, 'AUTOCOMPLETE AJAX', 1),
(19, 'LIST BOX CON BUSCADOR', 1),
(20, 'DATO BOLEANO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_factura`
--

CREATE TABLE `tipo_factura` (
  `cod_tipo_factura` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_factura`
--

INSERT INTO `tipo_factura` (`cod_tipo_factura`, `txt_nombre`, `ind_activo`) VALUES
(1, 'Por tipo de atencion', 1),
(2, 'Por Autorizacion', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_identificacion`
--

CREATE TABLE `tipo_identificacion` (
  `cod_tipo_identificacion` int(11) NOT NULL,
  `txt_nombre` varchar(50) NOT NULL,
  `cod_pk_reporte` varchar(255) DEFAULT NULL,
  `txt_nombre_corto` varchar(45) DEFAULT NULL,
  `ind_activo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_identificacion`
--

INSERT INTO `tipo_identificacion` (`cod_tipo_identificacion`, `txt_nombre`, `cod_pk_reporte`, `txt_nombre_corto`, `ind_activo`) VALUES
(1, 'CEDULA', '2', 'CC', 1),
(2, 'REGISTRO CIVIL', '4', 'RC', 1),
(3, 'TARJETA IDENTIDAD', '5', 'TI', 1),
(4, 'PASAPORTE', '6', 'PA', 1),
(5, 'CEDULA DE EXTRANGERIA', '3', 'CE', 1),
(8, 'NIT', '', 'UN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `cod_tipo_producto` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`cod_tipo_producto`, `txt_nombre`, `ind_activo`) VALUES
(1, 'Ventas', 1),
(2, 'Compras', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_tabla_autonoma`
--

CREATE TABLE `tipo_tabla_autonoma` (
  `cod_tipo_tabla_autonoma` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_tabla_autonoma`
--

INSERT INTO `tipo_tabla_autonoma` (`cod_tipo_tabla_autonoma`, `txt_nombre`, `ind_activo`) VALUES
(1, 'PRIMARIA', 1),
(2, 'SECUNDARIO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `cod_unidad_medida` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`cod_unidad_medida`, `txt_nombre`, `ind_activo`) VALUES
(1, 'BULTO', 1),
(2, 'UND', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida_edad`
--

CREATE TABLE `unidad_medida_edad` (
  `cod_unidad_medida_edad` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidad_medida_edad`
--

INSERT INTO `unidad_medida_edad` (`cod_unidad_medida_edad`, `txt_nombre`, `ind_activo`) VALUES
(1, 'AÑOS', 1),
(2, 'MESES', 1),
(3, 'DIAS', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_factura`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_detalle_factura` (
`cod_factura` int(11)
,`01cliente` varchar(255)
,`01estado_factura` varchar(255)
,`txt_forma_pago` varchar(255)
,`02valor_factura` decimal(32,0)
,`val_recibido` decimal(32,0)
,`val_saldo` decimal(32,0)
,`02valor_descuento` bigint(11)
,`privado_color` varchar(255)
,`02iva` decimal(37,0)
,`val_total_sin_iva` decimal(33,0)
,`02retefuente` decimal(36,0)
,`02cree` decimal(36,0)
,`val_total` decimal(37,0)
,`08fec_registro` datetime
,`cod_cliente` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_residencia`
--

CREATE TABLE `zona_residencia` (
  `cod_zona_residencia` int(11) NOT NULL,
  `txt_nombre` varchar(255) DEFAULT NULL,
  `txt_nombre_corto` varchar(255) DEFAULT NULL,
  `ind_activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zona_residencia`
--

INSERT INTO `zona_residencia` (`cod_zona_residencia`, `txt_nombre`, `txt_nombre_corto`, `ind_activo`) VALUES
(1, 'Urbana', 'U', 1),
(2, 'Rural', 'R', 1);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_factura`
--
DROP TABLE IF EXISTS `v_detalle_factura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_factura`  AS  select `t`.`cod_factura` AS `cod_factura`,`cliente`.`txt_nombre` AS `01cliente`,`estado_factura`.`txt_nombre` AS `01estado_factura`,`fp`.`txt_nombre` AS `txt_forma_pago`,ifnull(sum(`p`.`val_total`),0) AS `02valor_factura`,ifnull(sum(`p`.`val_recibido`),0) AS `val_recibido`,ifnull(sum(`p`.`val_saldo`),0) AS `val_saldo`,ifnull(`t`.`val_descuento`,0) AS `02valor_descuento`,`estado_factura`.`txt_color` AS `privado_color`,ifnull(round((((sum(`p`.`val_total`) - ifnull(`t`.`val_descuento`,0)) * `t`.`val_iva_porc`) / 100),0),0) AS `02iva`,ifnull((sum(`p`.`val_total`) - ifnull(`t`.`val_descuento`,0)),0) AS `val_total_sin_iva`,ifnull(round((sum((`p`.`val_total` * `t`.`val_rete_porc`)) / 100),0),0) AS `02retefuente`,ifnull(round((sum((`p`.`val_total` * `t`.`val_cree_porc`)) / 100),0),0) AS `02cree`,ifnull(((sum(`p`.`val_total`) - ifnull(`t`.`val_descuento`,0)) + ifnull(round((sum((`p`.`val_total` * `t`.`val_iva_porc`)) / 100),0),0)),0) AS `val_total`,`t`.`fec_registro` AS `08fec_registro`,`t`.`cod_cliente` AS `cod_cliente` from ((((`factura` `t` left join `pedido` `p` on((`t`.`cod_factura` = `p`.`cod_factura`))) join `cliente`) join `estado_factura`) join `forma_pago` `fp`) where ((`t`.`cod_cliente` = `cliente`.`cod_cliente`) and (`t`.`cod_estado_factura` = `estado_factura`.`cod_estado_factura`) and (`p`.`cod_forma_pago` = `fp`.`cod_forma_pago`)) group by `t`.`cod_factura`,`fp`.`txt_nombre` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradora_seguridad`
--
ALTER TABLE `administradora_seguridad`
  ADD PRIMARY KEY (`cod_administradora_seguridad`),
  ADD KEY `fk_administradora_seguridad_tipo_administradora1` (`cod_tipo_administradora`);

--
-- Indices de la tabla `booleano`
--
ALTER TABLE `booleano`
  ADD PRIMARY KEY (`cod_booleano`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`cod_ciudad`),
  ADD KEY `fk_ciudad_departamento1` (`cod_departamento`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`),
  ADD KEY `fk_cliente_tipo_identificacion1` (`cod_tipo_identificacion`),
  ADD KEY `fk_cliente_estado_cliente1` (`cod_estado_cliente`),
  ADD KEY `fk_cliente_regimen1` (`cod_regimen`),
  ADD KEY `fk_cliente_tipo_cliente1` (`cod_tipo_cliente`);

--
-- Indices de la tabla `columna_por_navegacion`
--
ALTER TABLE `columna_por_navegacion`
  ADD PRIMARY KEY (`cod_columna_tabla`,`cod_navegacion`,`cod_tabla_detalle`);

--
-- Indices de la tabla `columna_tabla_autonoma`
--
ALTER TABLE `columna_tabla_autonoma`
  ADD PRIMARY KEY (`cod_columna_tabla`);

--
-- Indices de la tabla `condicion_consulta`
--
ALTER TABLE `condicion_consulta`
  ADD PRIMARY KEY (`cod_condicion_consulta`),
  ADD KEY `fk_condicion_consulta_seg_perfil1` (`cod_perfil`),
  ADD KEY `fk_condicion_consulta_tabla_autonoma1` (`cod_tabla`),
  ADD KEY `fk_condicion_consulta_reporte_tabla1` (`cod_reporte_tabla`);

--
-- Indices de la tabla `control_archivos`
--
ALTER TABLE `control_archivos`
  ADD PRIMARY KEY (`cod_control_archivos`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`cod_departamento`),
  ADD KEY `fk_departamento_pais1` (`cod_pais`);

--
-- Indices de la tabla `detalle_nombre_archivos`
--
ALTER TABLE `detalle_nombre_archivos`
  ADD PRIMARY KEY (`cod_detalle_nombre_archivos`),
  ADD KEY `fk_detalle_nombre_archivos_nombre_archivos1` (`cod_nombre_archivos`),
  ADD KEY `fk_detalle_nombre_archivos_factura1` (`cod_factura`);

--
-- Indices de la tabla `dia_festivo`
--
ALTER TABLE `dia_festivo`
  ADD PRIMARY KEY (`cod_dia_festivo`),
  ADD KEY `fk_dia_festivo_seg_usuario1` (`cod_usuario`);

--
-- Indices de la tabla `dia_mes`
--
ALTER TABLE `dia_mes`
  ADD PRIMARY KEY (`num_dia`,`num_mes`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`cod_empleado`),
  ADD KEY `fk_empleado_tipo_identificacion1` (`cod_tipo_identificacion`),
  ADD KEY `fk_empleado_ciudad1` (`cod_ciudad`),
  ADD KEY `fk_empleado_administradora_seguridad1` (`cod_eps`),
  ADD KEY `fk_empleado_administradora_seguridad2` (`cod_arl`),
  ADD KEY `fk_empleado_administradora_seguridad3` (`cod_afp`);

--
-- Indices de la tabla `entrada_producto`
--
ALTER TABLE `entrada_producto`
  ADD PRIMARY KEY (`cod_entrada_producto`),
  ADD KEY `fk_entrada_producto_proveedor1_idx` (`cod_proveedor`),
  ADD KEY `fk_entrada_producto_producto1_idx` (`cod_producto`),
  ADD KEY `fk_entrada_producto_unidad_medida1_idx` (`cod_unidad_medida`),
  ADD KEY `fk_entrada_producto_estado_entrada_producto1_idx` (`cod_estado_entrada_producto`),
  ADD KEY `fk_entrada_producto_seg_usuario1_idx` (`cod_usuario_modificacion`),
  ADD KEY `cod_empleado` (`cod_empleado`),
  ADD KEY `cod_empleado_2` (`cod_empleado`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`cod_estado_civil`);

--
-- Indices de la tabla `estado_cliente`
--
ALTER TABLE `estado_cliente`
  ADD PRIMARY KEY (`cod_estado_cliente`);

--
-- Indices de la tabla `estado_entrada_producto`
--
ALTER TABLE `estado_entrada_producto`
  ADD PRIMARY KEY (`cod_estado_entrada_producto`);

--
-- Indices de la tabla `estado_factura`
--
ALTER TABLE `estado_factura`
  ADD PRIMARY KEY (`cod_estado_factura`);

--
-- Indices de la tabla `estado_pedido`
--
ALTER TABLE `estado_pedido`
  ADD PRIMARY KEY (`cod_estado_pedido`);

--
-- Indices de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  ADD PRIMARY KEY (`cod_estado_producto`);

--
-- Indices de la tabla `estado_seg_usuario`
--
ALTER TABLE `estado_seg_usuario`
  ADD PRIMARY KEY (`cod_estado_seg_usuario`);

--
-- Indices de la tabla `estado_tabla_autonoma`
--
ALTER TABLE `estado_tabla_autonoma`
  ADD PRIMARY KEY (`cod_estado_tabla`);

--
-- Indices de la tabla `evolucion_android`
--
ALTER TABLE `evolucion_android`
  ADD PRIMARY KEY (`cod_evolucion_android`),
  ADD KEY `eand_aten_fk` (`cod_atencion`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`cod_factura`),
  ADD KEY `fk_factura_estado_factura1` (`cod_estado_factura`),
  ADD KEY `fk_factura_resolucion_dian1` (`cod_resolucion_dian`),
  ADD KEY `fk_factura_cliente1` (`cod_cliente`);

--
-- Indices de la tabla `facturas_anuladas`
--
ALTER TABLE `facturas_anuladas`
  ADD PRIMARY KEY (`cod_facturas_anuladas`);

--
-- Indices de la tabla `factura_pago`
--
ALTER TABLE `factura_pago`
  ADD PRIMARY KEY (`cod_factura_pago`),
  ADD KEY `fk_factura_pago_factura1` (`cod_factura`),
  ADD KEY `fk_factura_pago_seg_usuario1` (`cod_usuario`);

--
-- Indices de la tabla `filtro_reporte`
--
ALTER TABLE `filtro_reporte`
  ADD PRIMARY KEY (`cod_filtro_reporte`),
  ADD KEY `fk_filtro_reporte_reporte_tabla1` (`cod_reporte_tabla`),
  ADD KEY `fk_filtro_reporte_columna_tabla_autonoma1` (`cod_columna_tabla`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`cod_forma_pago`);

--
-- Indices de la tabla `foto_cliente`
--
ALTER TABLE `foto_cliente`
  ADD PRIMARY KEY (`cod_foto_paciente`),
  ADD KEY `fpac_aten_fk` (`cod_atencion`);

--
-- Indices de la tabla `guarda_impuesto`
--
ALTER TABLE `guarda_impuesto`
  ADD PRIMARY KEY (`cod_guarda_impuesto`);

--
-- Indices de la tabla `hora_minuto`
--
ALTER TABLE `hora_minuto`
  ADD PRIMARY KEY (`txt_hora_minuto`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`cod_mensaje`);

--
-- Indices de la tabla `nombre_archivos`
--
ALTER TABLE `nombre_archivos`
  ADD PRIMARY KEY (`cod_nombre_archivos`);

--
-- Indices de la tabla `parametro_sistema`
--
ALTER TABLE `parametro_sistema`
  ADD PRIMARY KEY (`cod_parametro`),
  ADD KEY `fk_parametro_sistema_tipo_dato_columna_tabla1` (`cod_tipo_dato_columna`);

--
-- Indices de la tabla `parametro_x_usuario`
--
ALTER TABLE `parametro_x_usuario`
  ADD PRIMARY KEY (`cod_parametro_x_usuario`),
  ADD KEY `fk_parametro_x_usuario_seg_usuario1` (`cod_usuario`),
  ADD KEY `fk_parametro_x_usuario_parametro_sistema1` (`cod_parametro`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`cod_pedido`),
  ADD KEY `fk_pedido_factura1` (`cod_factura`),
  ADD KEY `fk_pedido_forma_pago1` (`cod_forma_pago`),
  ADD KEY `fk_pedido_cliente1` (`cod_cliente`),
  ADD KEY `fk_pedido_estado_pedido1` (`cod_estado_pedido`);

--
-- Indices de la tabla `pedido_compra`
--
ALTER TABLE `pedido_compra`
  ADD PRIMARY KEY (`cod_pedido_compra`),
  ADD UNIQUE KEY `cod_pedido_compra` (`cod_pedido_compra`),
  ADD KEY `cod_proveedor` (`cod_proveedor`),
  ADD KEY `cod_pedido_compra_2` (`cod_pedido_compra`);

--
-- Indices de la tabla `pedido_compra_detalle`
--
ALTER TABLE `pedido_compra_detalle`
  ADD PRIMARY KEY (`cod_pedido_compra_detalle`),
  ADD KEY `cod_pedido_compra_detalle` (`cod_pedido_compra_detalle`);

--
-- Indices de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`cod_pedido_detalle`),
  ADD KEY `fk_ pedido_detalle_pedido1` (`cod_pedido`),
  ADD KEY `fk_ pedido_detalle_producto1` (`cod_producto`);

--
-- Indices de la tabla `periodo_facturacion`
--
ALTER TABLE `periodo_facturacion`
  ADD PRIMARY KEY (`cod_periodo_facturacion`);

--
-- Indices de la tabla `proceso_adicional_pantalla`
--
ALTER TABLE `proceso_adicional_pantalla`
  ADD PRIMARY KEY (`cod_proceso`);

--
-- Indices de la tabla `proceso_navegacion`
--
ALTER TABLE `proceso_navegacion`
  ADD PRIMARY KEY (`cod_proceso_navegacion`),
  ADD KEY `fk_proceso_navegacion_proceso_adicional_pantalla1` (`cod_proceso`),
  ADD KEY `fk_proceso_navegacion_seg_navegacion1` (`cod_navegacion`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_producto`),
  ADD KEY `fk_producto_unidad_medida1` (`cod_unidad_medida`),
  ADD KEY `fk_producto_estado_producto1` (`cod_estado_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`cod_proveedor`),
  ADD KEY `fk_proveedor_tipo_identificacion1` (`cod_tipo_identificacion`),
  ADD KEY `index3` (`num_identificacion`);

--
-- Indices de la tabla `regimen`
--
ALTER TABLE `regimen`
  ADD PRIMARY KEY (`cod_regimen`);

--
-- Indices de la tabla `reporte_tabla`
--
ALTER TABLE `reporte_tabla`
  ADD PRIMARY KEY (`cod_reporte_tabla`),
  ADD KEY `fk_reporte__ref_7768_tabla_au` (`cod_tabla`);

--
-- Indices de la tabla `resolucion_dian`
--
ALTER TABLE `resolucion_dian`
  ADD PRIMARY KEY (`cod_resolucion_dian`);

--
-- Indices de la tabla `seg_empresa`
--
ALTER TABLE `seg_empresa`
  ADD PRIMARY KEY (`cod_empresa`),
  ADD KEY `cod_tipo_identificacion` (`cod_tipo_identificacion`);

--
-- Indices de la tabla `seg_navegacion`
--
ALTER TABLE `seg_navegacion`
  ADD PRIMARY KEY (`cod_navegacion`);

--
-- Indices de la tabla `seg_operacion_tabla`
--
ALTER TABLE `seg_operacion_tabla`
  ADD PRIMARY KEY (`cod_operacion`);

--
-- Indices de la tabla `seg_perfil`
--
ALTER TABLE `seg_perfil`
  ADD PRIMARY KEY (`cod_perfil`);

--
-- Indices de la tabla `seg_perfil_proceso_adicional`
--
ALTER TABLE `seg_perfil_proceso_adicional`
  ADD PRIMARY KEY (`cod_proceso`,`cod_perfil`),
  ADD KEY `fk_seg_perfil_proceso_adicional_proceso_adicional_pantalla1` (`cod_proceso`),
  ADD KEY `fk_seg_perfil_proceso_adicional_seg_perfil1` (`cod_perfil`);

--
-- Indices de la tabla `seg_perfil_reporte`
--
ALTER TABLE `seg_perfil_reporte`
  ADD KEY `fk_seg_perfil_reporte_seg_perfil1` (`cod_perfil`),
  ADD KEY `fk_seg_perfil_reporte_reporte_tabla1` (`cod_reporte_tabla`);

--
-- Indices de la tabla `seg_perfil_usuario`
--
ALTER TABLE `seg_perfil_usuario`
  ADD PRIMARY KEY (`cod_perfil_usuario`),
  ADD KEY `fk_seg_perfil_usuario_seg_perfil1` (`cod_perfil`);

--
-- Indices de la tabla `seg_permiso_tabla_autonoma`
--
ALTER TABLE `seg_permiso_tabla_autonoma`
  ADD PRIMARY KEY (`cod_tabla`,`cod_operacion`,`cod_perfil`);

--
-- Indices de la tabla `seg_usuario`
--
ALTER TABLE `seg_usuario`
  ADD PRIMARY KEY (`cod_usuario_pk`),
  ADD KEY `fk_seg_usuario_estado_seg_usuario1` (`cod_estado_seg_usuario`),
  ADD KEY `fk_seg_usuario_tipo_identificacion1` (`cod_tipo_identificacion`);

--
-- Indices de la tabla `separador_txt`
--
ALTER TABLE `separador_txt`
  ADD PRIMARY KEY (`cod_separador_txt`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`cod_sexo`);

--
-- Indices de la tabla `tabla_autonoma`
--
ALTER TABLE `tabla_autonoma`
  ADD PRIMARY KEY (`cod_tabla`),
  ADD KEY `fk_tabla_autonoma_tipo_tabla_autonoma1` (`cod_tipo_tabla_autonoma`);

--
-- Indices de la tabla `tabla_autonoma_personalizado`
--
ALTER TABLE `tabla_autonoma_personalizado`
  ADD PRIMARY KEY (`cod_tabla`,`cod_navegacion`);

--
-- Indices de la tabla `tipo_administradora`
--
ALTER TABLE `tipo_administradora`
  ADD PRIMARY KEY (`cod_tipo_administradora`);

--
-- Indices de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`cod_tipo_cliente`);

--
-- Indices de la tabla `tipo_dato_columna_tabla`
--
ALTER TABLE `tipo_dato_columna_tabla`
  ADD PRIMARY KEY (`cod_tipo_dato_colunna`);

--
-- Indices de la tabla `tipo_factura`
--
ALTER TABLE `tipo_factura`
  ADD PRIMARY KEY (`cod_tipo_factura`);

--
-- Indices de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  ADD PRIMARY KEY (`cod_tipo_identificacion`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`cod_tipo_producto`),
  ADD UNIQUE KEY `txt_nombre` (`txt_nombre`),
  ADD KEY `cod_tipo_producto` (`cod_tipo_producto`);

--
-- Indices de la tabla `tipo_tabla_autonoma`
--
ALTER TABLE `tipo_tabla_autonoma`
  ADD PRIMARY KEY (`cod_tipo_tabla_autonoma`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`cod_unidad_medida`);

--
-- Indices de la tabla `unidad_medida_edad`
--
ALTER TABLE `unidad_medida_edad`
  ADD PRIMARY KEY (`cod_unidad_medida_edad`);

--
-- Indices de la tabla `zona_residencia`
--
ALTER TABLE `zona_residencia`
  ADD PRIMARY KEY (`cod_zona_residencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradora_seguridad`
--
ALTER TABLE `administradora_seguridad`
  MODIFY `cod_administradora_seguridad` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `cod_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `columna_tabla_autonoma`
--
ALTER TABLE `columna_tabla_autonoma`
  MODIFY `cod_columna_tabla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT de la tabla `condicion_consulta`
--
ALTER TABLE `condicion_consulta`
  MODIFY `cod_condicion_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `control_archivos`
--
ALTER TABLE `control_archivos`
  MODIFY `cod_control_archivos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `cod_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `detalle_nombre_archivos`
--
ALTER TABLE `detalle_nombre_archivos`
  MODIFY `cod_detalle_nombre_archivos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dia_festivo`
--
ALTER TABLE `dia_festivo`
  MODIFY `cod_dia_festivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `cod_empleado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `entrada_producto`
--
ALTER TABLE `entrada_producto`
  MODIFY `cod_entrada_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `estado_cliente`
--
ALTER TABLE `estado_cliente`
  MODIFY `cod_estado_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estado_entrada_producto`
--
ALTER TABLE `estado_entrada_producto`
  MODIFY `cod_estado_entrada_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `estado_pedido`
--
ALTER TABLE `estado_pedido`
  MODIFY `cod_estado_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  MODIFY `cod_estado_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estado_seg_usuario`
--
ALTER TABLE `estado_seg_usuario`
  MODIFY `cod_estado_seg_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `evolucion_android`
--
ALTER TABLE `evolucion_android`
  MODIFY `cod_evolucion_android` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `cod_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `facturas_anuladas`
--
ALTER TABLE `facturas_anuladas`
  MODIFY `cod_facturas_anuladas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `factura_pago`
--
ALTER TABLE `factura_pago`
  MODIFY `cod_factura_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `filtro_reporte`
--
ALTER TABLE `filtro_reporte`
  MODIFY `cod_filtro_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  MODIFY `cod_forma_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `foto_cliente`
--
ALTER TABLE `foto_cliente`
  MODIFY `cod_foto_paciente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `guarda_impuesto`
--
ALTER TABLE `guarda_impuesto`
  MODIFY `cod_guarda_impuesto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `nombre_archivos`
--
ALTER TABLE `nombre_archivos`
  MODIFY `cod_nombre_archivos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `cod_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `pedido_compra`
--
ALTER TABLE `pedido_compra`
  MODIFY `cod_pedido_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pedido_compra_detalle`
--
ALTER TABLE `pedido_compra_detalle`
  MODIFY `cod_pedido_compra_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  MODIFY `cod_pedido_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `periodo_facturacion`
--
ALTER TABLE `periodo_facturacion`
  MODIFY `cod_periodo_facturacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proceso_navegacion`
--
ALTER TABLE `proceso_navegacion`
  MODIFY `cod_proceso_navegacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cod_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `cod_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `regimen`
--
ALTER TABLE `regimen`
  MODIFY `cod_regimen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `reporte_tabla`
--
ALTER TABLE `reporte_tabla`
  MODIFY `cod_reporte_tabla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `resolucion_dian`
--
ALTER TABLE `resolucion_dian`
  MODIFY `cod_resolucion_dian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `seg_empresa`
--
ALTER TABLE `seg_empresa`
  MODIFY `cod_empresa` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `seg_perfil`
--
ALTER TABLE `seg_perfil`
  MODIFY `cod_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `seg_perfil_usuario`
--
ALTER TABLE `seg_perfil_usuario`
  MODIFY `cod_perfil_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `seg_usuario`
--
ALTER TABLE `seg_usuario`
  MODIFY `cod_usuario_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `separador_txt`
--
ALTER TABLE `separador_txt`
  MODIFY `cod_separador_txt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_administradora`
--
ALTER TABLE `tipo_administradora`
  MODIFY `cod_tipo_administradora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `cod_tipo_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_factura`
--
ALTER TABLE `tipo_factura`
  MODIFY `cod_tipo_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  MODIFY `cod_tipo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_tabla_autonoma`
--
ALTER TABLE `tipo_tabla_autonoma`
  MODIFY `cod_tipo_tabla_autonoma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `cod_unidad_medida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `unidad_medida_edad`
--
ALTER TABLE `unidad_medida_edad`
  MODIFY `cod_unidad_medida_edad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `zona_residencia`
--
ALTER TABLE `zona_residencia`
  MODIFY `cod_zona_residencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
