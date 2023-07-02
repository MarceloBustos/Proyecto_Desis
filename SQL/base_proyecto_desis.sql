-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2023 a las 14:17:22
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_proyecto_desis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desis_candidatos`
--

CREATE TABLE `desis_candidatos` (
  `id_candidato` int(11) NOT NULL,
  `nombre_candidato` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `desis_candidatos`
--

INSERT INTO `desis_candidatos` (`id_candidato`, `nombre_candidato`) VALUES
(1, 'Nombre Candidato 1'),
(2, 'Nombre Candidato 2'),
(3, 'Nombre Candidato 3'),
(4, 'Nombre Candidato 4'),
(5, 'Nombre Candidato 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desis_comunas`
--

CREATE TABLE `desis_comunas` (
  `id_comuna` int(11) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `cod_provincia` int(11) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `cod_region` int(11) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `desis_comunas`
--

INSERT INTO `desis_comunas` (`id_comuna`, `comuna`, `cod_provincia`, `provincia`, `cod_region`, `region`) VALUES
(1, 'Arica', 151, 'Arica  ', 15, 'De Arica y Parinacota'),
(2, 'Camarones', 151, 'Arica  ', 15, 'De Arica y Parinacota'),
(3, 'Putre', 152, 'Parinacota', 15, 'De Arica y Parinacota'),
(4, 'General Lagos', 152, 'Parinacota', 15, 'De Arica y Parinacota'),
(5, 'Iquique', 11, 'Iquique  ', 1, 'De Tarapacá'),
(6, 'Camiña', 14, 'Tamarugal', 1, 'De Tarapacá'),
(7, 'Colchane', 14, 'Tamarugal', 1, 'De Tarapacá'),
(8, 'Huara', 14, 'Tamarugal', 1, 'De Tarapacá'),
(9, 'Pica', 14, 'Tamarugal', 1, 'De Tarapacá'),
(10, 'Pozo Almonte', 14, 'Tamarugal', 1, 'De Tarapacá'),
(11, 'Alto Hospicio', 11, 'Iquique  ', 1, 'De Tarapacá'),
(12, 'Antofagasta', 21, 'Antofagasta', 2, 'De Antofagasta'),
(13, 'Mejillones', 21, 'Antofagasta', 2, 'De Antofagasta'),
(14, 'Sierra Gorda', 21, 'Antofagasta', 2, 'De Antofagasta'),
(15, 'Taltal', 21, 'Antofagasta', 2, 'De Antofagasta'),
(16, 'Calama', 22, 'El Loa', 2, 'De Antofagasta'),
(17, 'Ollagüe', 22, 'El Loa', 2, 'De Antofagasta'),
(18, 'San Pedro de Atacama', 22, 'El Loa', 2, 'De Antofagasta'),
(19, 'Tocopilla', 23, 'Tocopilla  ', 2, 'De Antofagasta'),
(20, 'María Elena', 23, 'Tocopilla  ', 2, 'De Antofagasta'),
(21, 'Copiapó', 31, 'Copiapó  ', 3, 'De Atacama'),
(22, 'Caldera', 31, 'Copiapó  ', 3, 'De Atacama'),
(23, 'Tierra Amarilla', 31, 'Copiapó  ', 3, 'De Atacama'),
(24, 'Chañaral', 32, 'Chañaral  ', 3, 'De Atacama'),
(25, 'Diego de Almagro', 32, 'Chañaral  ', 3, 'De Atacama'),
(26, 'Vallenar', 33, 'Huasco', 3, 'De Atacama'),
(27, 'Alto del Carmen', 33, 'Huasco', 3, 'De Atacama'),
(28, 'Freirina', 33, 'Huasco', 3, 'De Atacama'),
(29, 'Huasco', 33, 'Huasco', 3, 'De Atacama'),
(30, 'La Serena', 41, 'Elqui', 4, 'De Coquimbo'),
(31, 'Coquimbo', 41, 'Elqui', 4, 'De Coquimbo'),
(32, 'Andacollo', 41, 'Elqui', 4, 'De Coquimbo'),
(33, 'La Higuera', 41, 'Elqui', 4, 'De Coquimbo'),
(34, 'Paiguano', 41, 'Elqui', 4, 'De Coquimbo'),
(35, 'Vicuña', 41, 'Elqui', 4, 'De Coquimbo'),
(36, 'Illapel', 42, 'Choapa', 4, 'De Coquimbo'),
(37, 'Canela', 42, 'Choapa', 4, 'De Coquimbo'),
(38, 'Los Vilos', 42, 'Choapa', 4, 'De Coquimbo'),
(39, 'Salamanca', 42, 'Choapa', 4, 'De Coquimbo'),
(40, 'Ovalle', 43, 'Limari', 4, 'De Coquimbo'),
(41, 'Combarbalá', 43, 'Limari', 4, 'De Coquimbo'),
(42, 'Monte Patria', 43, 'Limari', 4, 'De Coquimbo'),
(43, 'Punitaqui', 43, 'Limari', 4, 'De Coquimbo'),
(44, 'Río Hurtado', 43, 'Limari', 4, 'De Coquimbo'),
(45, 'Valparaíso', 51, 'Valparaíso  ', 5, 'De Valparaíso'),
(46, 'Casablanca', 51, 'Valparaíso  ', 5, 'De Valparaíso'),
(47, 'Concón', 51, 'Valparaíso  ', 5, 'De Valparaíso'),
(48, 'Juan Fernández', 51, 'Valparaíso  ', 5, 'De Valparaíso'),
(49, 'Puchuncaví', 51, 'Valparaíso  ', 5, 'De Valparaíso'),
(50, 'Quilpué', 58, 'Marga Marga', 5, 'De Valparaíso'),
(51, 'Quintero', 51, 'Valparaíso  ', 5, 'De Valparaíso'),
(52, 'Villa Alemana', 58, 'Marga Marga', 5, 'De Valparaíso'),
(53, 'Viña del Mar', 51, 'Valparaíso  ', 5, 'De Valparaíso'),
(54, 'Isla  de Pascua', 52, 'Isla de Pascua  ', 5, 'De Valparaíso'),
(55, 'Los Andes', 53, 'Los Andes  ', 5, 'De Valparaíso'),
(56, 'Calle Larga', 53, 'Los Andes  ', 5, 'De Valparaíso'),
(57, 'Rinconada', 53, 'Los Andes  ', 5, 'De Valparaíso'),
(58, 'San Esteban', 53, 'Los Andes  ', 5, 'De Valparaíso'),
(59, 'La Ligua', 54, 'Petorca', 5, 'De Valparaíso'),
(60, 'Cabildo', 54, 'Petorca', 5, 'De Valparaíso'),
(61, 'Papudo', 54, 'Petorca', 5, 'De Valparaíso'),
(62, 'Petorca', 54, 'Petorca', 5, 'De Valparaíso'),
(63, 'Zapallar', 54, 'Petorca', 5, 'De Valparaíso'),
(64, 'Quillota', 55, 'Quillota  ', 5, 'De Valparaíso'),
(65, 'Calera', 55, 'Quillota  ', 5, 'De Valparaíso'),
(66, 'Hijuelas', 55, 'Quillota  ', 5, 'De Valparaíso'),
(67, 'La Cruz', 55, 'Quillota  ', 5, 'De Valparaíso'),
(68, 'Limache', 58, 'Marga Marga', 5, 'De Valparaíso'),
(69, 'Nogales', 55, 'Quillota  ', 5, 'De Valparaíso'),
(70, 'Olmué', 58, 'Marga Marga', 5, 'De Valparaíso'),
(71, 'San Antonio', 56, 'San Antonio  ', 5, 'De Valparaíso'),
(72, 'Algarrobo', 56, 'San Antonio  ', 5, 'De Valparaíso'),
(73, 'Cartagena', 56, 'San Antonio  ', 5, 'De Valparaíso'),
(74, 'El Quisco', 56, 'San Antonio  ', 5, 'De Valparaíso'),
(75, 'El Tabo', 56, 'San Antonio  ', 5, 'De Valparaíso'),
(76, 'Santo Domingo', 56, 'San Antonio  ', 5, 'De Valparaíso'),
(77, 'San Felipe', 57, 'San Felipe  ', 5, 'De Valparaíso'),
(78, 'Catemu', 57, 'San Felipe  ', 5, 'De Valparaíso'),
(79, 'Llaillay', 57, 'San Felipe  ', 5, 'De Valparaíso'),
(80, 'Panquehue', 57, 'San Felipe  ', 5, 'De Valparaíso'),
(81, 'Putaendo', 57, 'San Felipe  ', 5, 'De Valparaíso'),
(82, 'Santa María', 57, 'San Felipe  ', 5, 'De Valparaíso'),
(83, 'Rancagua', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(84, 'Codegua', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(85, 'Coinco', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(86, 'Coltauco', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(87, 'Doñihue', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(88, 'Graneros', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(89, 'Las Cabras', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(90, 'Machalí', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(91, 'Malloa', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(92, 'Mostazal', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(93, 'Olivar', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(94, 'Peumo', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(95, 'Pichidegua', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(96, 'Quinta de Tilcoco', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(97, 'Rengo', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(98, 'Requínoa', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(99, 'San Vicente', 61, 'Cachapoal', 6, 'Del Libertador B. O\'Higgins'),
(100, 'Pichilemu', 62, 'Cardenal Caro', 6, 'Del Libertador B. O\'Higgins'),
(101, 'La Estrella', 62, 'Cardenal Caro', 6, 'Del Libertador B. O\'Higgins'),
(102, 'Litueche', 62, 'Cardenal Caro', 6, 'Del Libertador B. O\'Higgins'),
(103, 'Marchihue', 62, 'Cardenal Caro', 6, 'Del Libertador B. O\'Higgins'),
(104, 'Navidad', 62, 'Cardenal Caro', 6, 'Del Libertador B. O\'Higgins'),
(105, 'Paredones', 62, 'Cardenal Caro', 6, 'Del Libertador B. O\'Higgins'),
(106, 'San Fernando', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(107, 'Chépica', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(108, 'Chimbarongo', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(109, 'Lolol', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(110, 'Nancagua', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(111, 'Palmilla', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(112, 'Peralillo', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(113, 'Placilla', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(114, 'Pumanque', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(115, 'Santa Cruz', 63, 'Colchagua', 6, 'Del Libertador B. O\'Higgins'),
(116, 'Talca', 71, 'Talca', 7, 'Del Maule'),
(117, 'Constitución', 71, 'Talca', 7, 'Del Maule'),
(118, 'Curepto', 71, 'Talca', 7, 'Del Maule'),
(119, 'Empedrado', 71, 'Talca', 7, 'Del Maule'),
(120, 'Maule', 71, 'Talca', 7, 'Del Maule'),
(121, 'Pelarco', 71, 'Talca', 7, 'Del Maule'),
(122, 'Pencahue', 71, 'Talca', 7, 'Del Maule'),
(123, 'Río Claro', 71, 'Talca', 7, 'Del Maule'),
(124, 'San Clemente', 71, 'Talca', 7, 'Del Maule'),
(125, 'San Rafael', 71, 'Talca', 7, 'Del Maule'),
(126, 'Cauquenes', 72, 'Cauquenes', 7, 'Del Maule'),
(127, 'Chanco', 72, 'Cauquenes', 7, 'Del Maule'),
(128, 'Pelluhue', 72, 'Cauquenes', 7, 'Del Maule'),
(129, 'Curicó', 73, 'Curico', 7, 'Del Maule'),
(130, 'Hualañé', 73, 'Curico', 7, 'Del Maule'),
(131, 'Licantén', 73, 'Curico', 7, 'Del Maule'),
(132, 'Molina', 73, 'Curico', 7, 'Del Maule'),
(133, 'Rauco', 73, 'Curico', 7, 'Del Maule'),
(134, 'Romeral', 73, 'Curico', 7, 'Del Maule'),
(135, 'Sagrada Familia', 73, 'Curico', 7, 'Del Maule'),
(136, 'Teno', 73, 'Curico', 7, 'Del Maule'),
(137, 'Vichuquén', 73, 'Curico', 7, 'Del Maule'),
(138, 'Linares', 74, 'Linares  ', 7, 'Del Maule'),
(139, 'Colbún', 74, 'Linares  ', 7, 'Del Maule'),
(140, 'Longaví', 74, 'Linares  ', 7, 'Del Maule'),
(141, 'Parral', 74, 'Linares  ', 7, 'Del Maule'),
(142, 'Retiro', 74, 'Linares  ', 7, 'Del Maule'),
(143, 'San Javier', 74, 'Linares  ', 7, 'Del Maule'),
(144, 'Villa Alegre', 74, 'Linares  ', 7, 'Del Maule'),
(145, 'Yerbas Buenas', 74, 'Linares  ', 7, 'Del Maule'),
(146, 'Concepción', 81, 'Concepción  ', 8, 'Del Bíobío'),
(147, 'Coronel', 81, 'Concepción  ', 8, 'Del Bíobío'),
(148, 'Chiguayante', 81, 'Concepción  ', 8, 'Del Bíobío'),
(149, 'Florida', 81, 'Concepción  ', 8, 'Del Bíobío'),
(150, 'Hualqui', 81, 'Concepción  ', 8, 'Del Bíobío'),
(151, 'Lota', 81, 'Concepción  ', 8, 'Del Bíobío'),
(152, 'Penco', 81, 'Concepción  ', 8, 'Del Bíobío'),
(153, 'San Pedro de la Paz', 81, 'Concepción  ', 8, 'Del Bíobío'),
(154, 'Santa Juana', 81, 'Concepción  ', 8, 'Del Bíobío'),
(155, 'Talcahuano', 81, 'Concepción  ', 8, 'Del Bíobío'),
(156, 'Tomé', 81, 'Concepción  ', 8, 'Del Bíobío'),
(157, 'Hualpén', 81, 'Concepción  ', 8, 'Del Bíobío'),
(158, 'Lebu', 82, 'Arauco', 8, 'Del Bíobío'),
(159, 'Arauco', 82, 'Arauco', 8, 'Del Bíobío'),
(160, 'Cañete', 82, 'Arauco', 8, 'Del Bíobío'),
(161, 'Contulmo', 82, 'Arauco', 8, 'Del Bíobío'),
(162, 'Curanilahue', 82, 'Arauco', 8, 'Del Bíobío'),
(163, 'Los Álamos', 82, 'Arauco', 8, 'Del Bíobío'),
(164, 'Tirúa', 82, 'Arauco', 8, 'Del Bíobío'),
(165, 'Los Ángeles', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(166, 'Antuco', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(167, 'Cabrero', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(168, 'Laja', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(169, 'Mulchén', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(170, 'Nacimiento', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(171, 'Negrete', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(172, 'Quilaco', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(173, 'Quilleco', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(174, 'San Rosendo', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(175, 'Santa Bárbara', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(176, 'Tucapel', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(177, 'Yumbel', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(178, 'Alto Biobío', 83, 'Bío- Bío', 8, 'Del Bíobío'),
(179, 'Chillán', 161, 'Diguillín', 16, 'De Ñuble'),
(180, 'Bulnes', 161, 'Diguillín', 16, 'De Ñuble'),
(181, 'Cobquecura', 162, 'Itata', 16, 'De Ñuble'),
(182, 'Coelemu', 162, 'Itata', 16, 'De Ñuble'),
(183, 'Coihueco', 163, 'Punilla', 16, 'De Ñuble'),
(184, 'Chillán Viejo', 161, 'Diguillín', 16, 'De Ñuble'),
(185, 'El Carmen', 161, 'Diguillín', 16, 'De Ñuble'),
(186, 'Ninhue', 162, 'Itata', 16, 'De Ñuble'),
(187, 'Ñiquén', 163, 'Punilla', 16, 'De Ñuble'),
(188, 'Pemuco', 161, 'Diguillín', 16, 'De Ñuble'),
(189, 'Pinto', 161, 'Diguillín', 16, 'De Ñuble'),
(190, 'Portezuelo', 162, 'Itata', 16, 'De Ñuble'),
(191, 'Quillón', 161, 'Diguillín', 16, 'De Ñuble'),
(192, 'Quirihue', 162, 'Itata', 16, 'De Ñuble'),
(193, 'Ránquil', 162, 'Itata', 16, 'De Ñuble'),
(194, 'San Carlos', 163, 'Punilla', 16, 'De Ñuble'),
(195, 'San Fabián', 163, 'Punilla', 16, 'De Ñuble'),
(196, 'San Ignacio', 161, 'Diguillín', 16, 'De Ñuble'),
(197, 'San Nicolás', 163, 'Punilla', 16, 'De Ñuble'),
(198, 'Treguaco', 162, 'Itata', 16, 'De Ñuble'),
(199, 'Yungay', 161, 'Diguillín', 16, 'De Ñuble'),
(200, 'Temuco', 91, 'Cautín', 9, 'De La Araucanía'),
(201, 'Carahue', 91, 'Cautín', 9, 'De La Araucanía'),
(202, 'Cunco', 91, 'Cautín', 9, 'De La Araucanía'),
(203, 'Curarrehue', 91, 'Cautín', 9, 'De La Araucanía'),
(204, 'Freire', 91, 'Cautín', 9, 'De La Araucanía'),
(205, 'Galvarino', 91, 'Cautín', 9, 'De La Araucanía'),
(206, 'Gorbea', 91, 'Cautín', 9, 'De La Araucanía'),
(207, 'Lautaro', 91, 'Cautín', 9, 'De La Araucanía'),
(208, 'Loncoche', 91, 'Cautín', 9, 'De La Araucanía'),
(209, 'Melipeuco', 91, 'Cautín', 9, 'De La Araucanía'),
(210, 'Nueva Imperial', 91, 'Cautín', 9, 'De La Araucanía'),
(211, 'Padre Las Casas', 91, 'Cautín', 9, 'De La Araucanía'),
(212, 'Perquenco', 91, 'Cautín', 9, 'De La Araucanía'),
(213, 'Pitrufquén', 91, 'Cautín', 9, 'De La Araucanía'),
(214, 'Pucón', 91, 'Cautín', 9, 'De La Araucanía'),
(215, 'Saavedra', 91, 'Cautín', 9, 'De La Araucanía'),
(216, 'Teodoro Schmidt', 91, 'Cautín', 9, 'De La Araucanía'),
(217, 'Toltén', 91, 'Cautín', 9, 'De La Araucanía'),
(218, 'Vilcún', 91, 'Cautín', 9, 'De La Araucanía'),
(219, 'Villarrica', 91, 'Cautín', 9, 'De La Araucanía'),
(220, 'Cholchol', 91, 'Cautín', 9, 'De La Araucanía'),
(221, 'Angol', 92, 'Malleco', 9, 'De La Araucanía'),
(222, 'Collipulli', 92, 'Malleco', 9, 'De La Araucanía'),
(223, 'Curacautín', 92, 'Malleco', 9, 'De La Araucanía'),
(224, 'Ercilla', 92, 'Malleco', 9, 'De La Araucanía'),
(225, 'Lonquimay', 92, 'Malleco', 9, 'De La Araucanía'),
(226, 'Los Sauces', 92, 'Malleco', 9, 'De La Araucanía'),
(227, 'Lumaco', 92, 'Malleco', 9, 'De La Araucanía'),
(228, 'Purén', 92, 'Malleco', 9, 'De La Araucanía'),
(229, 'Renaico', 92, 'Malleco', 9, 'De La Araucanía'),
(230, 'Traiguén', 92, 'Malleco', 9, 'De La Araucanía'),
(231, 'Victoria', 92, 'Malleco', 9, 'De La Araucanía'),
(232, 'Valdivia', 141, 'Valdivia  ', 14, 'De Los Ríos'),
(233, 'Corral', 141, 'Valdivia  ', 14, 'De Los Ríos'),
(234, 'Futrono', 142, 'Ranco', 14, 'De Los Ríos'),
(235, 'La Unión', 142, 'Ranco', 14, 'De Los Ríos'),
(236, 'Lago Ranco', 142, 'Ranco', 14, 'De Los Ríos'),
(237, 'Lanco', 141, 'Valdivia  ', 14, 'De Los Ríos'),
(238, 'Los Lagos', 141, 'Valdivia  ', 14, 'De Los Ríos'),
(239, 'Máfil', 141, 'Valdivia  ', 14, 'De Los Ríos'),
(240, 'Mariquina', 141, 'Valdivia  ', 14, 'De Los Ríos'),
(241, 'Paillaco', 141, 'Valdivia  ', 14, 'De Los Ríos'),
(242, 'Panguipulli', 141, 'Valdivia  ', 14, 'De Los Ríos'),
(243, 'Río Bueno', 142, 'Ranco', 14, 'De Los Ríos'),
(244, 'Puerto Montt', 101, 'Llanquihue', 10, 'De Los Lagos'),
(245, 'Calbuco', 101, 'Llanquihue', 10, 'De Los Lagos'),
(246, 'Cochamó', 101, 'Llanquihue', 10, 'De Los Lagos'),
(247, 'Fresia', 101, 'Llanquihue', 10, 'De Los Lagos'),
(248, 'Frutillar', 101, 'Llanquihue', 10, 'De Los Lagos'),
(249, 'Los Muermos', 101, 'Llanquihue', 10, 'De Los Lagos'),
(250, 'Llanquihue', 101, 'Llanquihue', 10, 'De Los Lagos'),
(251, 'Maullín', 101, 'Llanquihue', 10, 'De Los Lagos'),
(252, 'Puerto Varas', 101, 'Llanquihue', 10, 'De Los Lagos'),
(253, 'Castro', 102, 'Chiloe', 10, 'De Los Lagos'),
(254, 'Ancud', 102, 'Chiloe', 10, 'De Los Lagos'),
(255, 'Chonchi', 102, 'Chiloe', 10, 'De Los Lagos'),
(256, 'Curaco de Vélez', 102, 'Chiloe', 10, 'De Los Lagos'),
(257, 'Dalcahue', 102, 'Chiloe', 10, 'De Los Lagos'),
(258, 'Puqueldón', 102, 'Chiloe', 10, 'De Los Lagos'),
(259, 'Queilén', 102, 'Chiloe', 10, 'De Los Lagos'),
(260, 'Quellón', 102, 'Chiloe', 10, 'De Los Lagos'),
(261, 'Quemchi', 102, 'Chiloe', 10, 'De Los Lagos'),
(262, 'Quinchao', 102, 'Chiloe', 10, 'De Los Lagos'),
(263, 'Osorno', 103, 'Osorno  ', 10, 'De Los Lagos'),
(264, 'Puerto Octay', 103, 'Osorno  ', 10, 'De Los Lagos'),
(265, 'Purranque', 103, 'Osorno  ', 10, 'De Los Lagos'),
(266, 'Puyehue', 103, 'Osorno  ', 10, 'De Los Lagos'),
(267, 'Río Negro', 103, 'Osorno  ', 10, 'De Los Lagos'),
(268, 'San Juan de la Costa', 103, 'Osorno  ', 10, 'De Los Lagos'),
(269, 'San Pablo', 103, 'Osorno  ', 10, 'De Los Lagos'),
(270, 'Chaitén', 104, 'Palena', 10, 'De Los Lagos'),
(271, 'Futaleufú', 104, 'Palena', 10, 'De Los Lagos'),
(272, 'Hualaihué', 104, 'Palena', 10, 'De Los Lagos'),
(273, 'Palena', 104, 'Palena', 10, 'De Los Lagos'),
(274, 'Coihaique', 111, 'Coihaique  ', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(275, 'Lago Verde', 111, 'Coihaique  ', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(276, 'Aisén', 112, 'Aisén  ', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(277, 'Cisnes', 112, 'Aisén  ', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(278, 'Guaitecas', 112, 'Aisén  ', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(279, 'Cochrane', 113, 'Capitan Prat', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(280, 'O\'Higgins', 113, 'Capitan Prat', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(281, 'Tortel', 113, 'Capitan Prat', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(282, 'Chile Chico', 114, 'General Carrera', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(283, 'Río Ibáñez', 114, 'General Carrera', 11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(284, 'Punta Arenas', 121, 'Magallanes', 12, 'De Magallanes y de La Antártica Chilena'),
(285, 'Laguna Blanca', 121, 'Magallanes', 12, 'De Magallanes y de La Antártica Chilena'),
(286, 'Río Verde', 121, 'Magallanes', 12, 'De Magallanes y de La Antártica Chilena'),
(287, 'San Gregorio', 121, 'Magallanes', 12, 'De Magallanes y de La Antártica Chilena'),
(288, 'Cabo de Hornos', 122, 'Antártica Chilena', 12, 'De Magallanes y de La Antártica Chilena'),
(289, 'Antártica', 122, 'Antártica Chilena', 12, 'De Magallanes y de La Antártica Chilena'),
(290, 'Porvenir', 123, 'Tierra del Fuego', 12, 'De Magallanes y de La Antártica Chilena'),
(291, 'Primavera', 123, 'Tierra del Fuego', 12, 'De Magallanes y de La Antártica Chilena'),
(292, 'Timaukel', 123, 'Tierra del Fuego', 12, 'De Magallanes y de La Antártica Chilena'),
(293, 'Natales', 124, 'Ultima Esperanza', 12, 'De Magallanes y de La Antártica Chilena'),
(294, 'Torres del Paine', 124, 'Ultima Esperanza', 12, 'De Magallanes y de La Antártica Chilena'),
(295, 'Santiago', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(296, 'Cerrillos', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(297, 'Cerro Navia', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(298, 'Conchalí', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(299, 'El Bosque', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(300, 'Estación Central', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(301, 'Huechuraba', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(302, 'Independencia', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(303, 'La Cisterna', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(304, 'La Florida', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(305, 'La Granja', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(306, 'La Pintana', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(307, 'La Reina', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(308, 'Las Condes', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(309, 'Lo Barnechea', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(310, 'Lo Espejo', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(311, 'Lo Prado', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(312, 'Macul', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(313, 'Maipú', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(314, 'Ñuñoa', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(315, 'Pedro Aguirre Cerda', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(316, 'Peñalolén', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(317, 'Providencia', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(318, 'Pudahuel', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(319, 'Quilicura', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(320, 'Quinta Normal', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(321, 'Recoleta', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(322, 'Renca', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(323, 'San Joaquín', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(324, 'San Miguel', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(325, 'San Ramón', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(326, 'Vitacura', 131, 'Santiago  ', 13, 'Metropolitana de Santiago'),
(327, 'Puente Alto', 132, 'Cordillera', 13, 'Metropolitana de Santiago'),
(328, 'Pirque', 132, 'Cordillera', 13, 'Metropolitana de Santiago'),
(329, 'San José de Maipo', 132, 'Cordillera', 13, 'Metropolitana de Santiago'),
(330, 'Colina', 133, 'Chacabuco', 13, 'Metropolitana de Santiago'),
(331, 'Lampa', 133, 'Chacabuco', 13, 'Metropolitana de Santiago'),
(332, 'Tiltil', 133, 'Chacabuco', 13, 'Metropolitana de Santiago'),
(333, 'San Bernardo', 134, 'Maipo', 13, 'Metropolitana de Santiago'),
(334, 'Buin', 134, 'Maipo', 13, 'Metropolitana de Santiago'),
(335, 'Calera de Tango', 134, 'Maipo', 13, 'Metropolitana de Santiago'),
(336, 'Paine', 134, 'Maipo', 13, 'Metropolitana de Santiago'),
(337, 'Melipilla', 135, 'Melipilla', 13, 'Metropolitana de Santiago'),
(338, 'Alhué', 135, 'Melipilla', 13, 'Metropolitana de Santiago'),
(339, 'Curacaví', 135, 'Melipilla', 13, 'Metropolitana de Santiago'),
(340, 'María Pinto', 135, 'Melipilla', 13, 'Metropolitana de Santiago'),
(341, 'San Pedro', 135, 'Melipilla', 13, 'Metropolitana de Santiago'),
(342, 'Talagante', 136, 'Talagante  ', 13, 'Metropolitana de Santiago'),
(343, 'El Monte', 136, 'Talagante  ', 13, 'Metropolitana de Santiago'),
(344, 'Isla de Maipo', 136, 'Talagante  ', 13, 'Metropolitana de Santiago'),
(345, 'Padre Hurtado', 136, 'Talagante  ', 13, 'Metropolitana de Santiago'),
(346, 'Peñaflor', 136, 'Talagante  ', 13, 'Metropolitana de Santiago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desis_conocimiento`
--

CREATE TABLE `desis_conocimiento` (
  `id_conocimiento` int(11) NOT NULL,
  `rut` varchar(10) NOT NULL,
  `web` int(11) NOT NULL,
  `tv` int(11) NOT NULL,
  `rrss` int(11) NOT NULL,
  `amigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `desis_conocimiento`
--

INSERT INTO `desis_conocimiento` (`id_conocimiento`, `rut`, `web`, `tv`, `rrss`, `amigo`) VALUES
(1, '13805314-8', 0, 1, 0, 1),
(2, '13805314-8', 1, 0, 1, 0),
(3, '11111111-1', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desis_votacion`
--

CREATE TABLE `desis_votacion` (
  `id_vatacion` int(11) NOT NULL,
  `rut_votante` varchar(10) NOT NULL,
  `candidato` varchar(50) NOT NULL,
  `fecha_votacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `desis_votacion`
--

INSERT INTO `desis_votacion` (`id_vatacion`, `rut_votante`, `candidato`, `fecha_votacion`) VALUES
(1, '13805314-8', 'Nombre Candidato 5', '2023-07-02 05:05:07'),
(2, '13805314-8', 'Nombre Candidato 1', '2023-07-02 05:29:17'),
(3, '11111111-1', 'Nombre Candidato 2', '2023-07-02 05:34:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desis_votante`
--

CREATE TABLE `desis_votante` (
  `id` int(11) NOT NULL,
  `rut` varchar(10) NOT NULL,
  `nomb_apel` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `comuna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `desis_votante`
--

INSERT INTO `desis_votante` (`id`, `rut`, `nomb_apel`, `alias`, `email`, `region`, `comuna`) VALUES
(1, '13805314-8', 'Marcelo Bustos', 'Mabo2011', 'hola@gmail.com', 'De La Araucanía', 'Angol'),
(2, '13805314-8', 'Marcelo Bustos', 'Mabo11', 'hola@dominio.cl', 'De Antofagasta', 'Calama'),
(3, '11111111-1', 'Pedro Juarez', 'asdf654', 'hola@dominio.cl', 'De Tarapacá', 'Alto Hospicio');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `desis_candidatos`
--
ALTER TABLE `desis_candidatos`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `desis_comunas`
--
ALTER TABLE `desis_comunas`
  ADD PRIMARY KEY (`id_comuna`);

--
-- Indices de la tabla `desis_conocimiento`
--
ALTER TABLE `desis_conocimiento`
  ADD PRIMARY KEY (`id_conocimiento`);

--
-- Indices de la tabla `desis_votacion`
--
ALTER TABLE `desis_votacion`
  ADD PRIMARY KEY (`id_vatacion`);

--
-- Indices de la tabla `desis_votante`
--
ALTER TABLE `desis_votante`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `desis_candidatos`
--
ALTER TABLE `desis_candidatos`
  MODIFY `id_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `desis_conocimiento`
--
ALTER TABLE `desis_conocimiento`
  MODIFY `id_conocimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `desis_votacion`
--
ALTER TABLE `desis_votacion`
  MODIFY `id_vatacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `desis_votante`
--
ALTER TABLE `desis_votante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
