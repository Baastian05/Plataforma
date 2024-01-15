-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2024 a las 16:16:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` int(11) NOT NULL,
  `idClase` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `idClase`, `idEstudiante`, `idCurso`, `estado`) VALUES
(34, 1, 2, 1, 1),
(35, 2, 2, 1, 1),
(36, 3, 2, 1, 1),
(37, 4, 2, 1, 1),
(39, 1, 4, 1, 1),
(40, 2, 4, 1, 2),
(41, 3, 4, 1, 1),
(42, 4, 4, 1, 1),
(43, 5, 4, 1, 2),
(44, 6, 4, 1, 1),
(45, 7, 4, 1, 1),
(46, 8, 4, 1, 2),
(47, 9, 4, 1, 1),
(48, 10, 4, 1, 1),
(49, 11, 2, 2, 1),
(50, 11, 4, 2, 1),
(51, 12, 4, 2, 2),
(52, 11, 5, 2, 1),
(53, 12, 5, 2, 2),
(54, 17, 5, 2, 1),
(55, 18, 5, 2, 2),
(56, 18, 5, 2, 2),
(57, 15, 5, 2, 2),
(58, 18, 4, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idClase` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `observacion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `idCurso`, `idClase`, `idEstudiante`, `calificacion`, `observacion`) VALUES
(1, 1, 1, 2, 9, 'Muy bien'),
(2, 1, 1, 4, 10, 'Excelente'),
(3, 2, 11, 2, 10, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `baja` int(11) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `clave`, `descripcion`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, '1', 'Software', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 02:12:39'),
(2, '2', 'Tecnolog&iacute;as de la informaci&oacute;n', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 11:42:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

CREATE TABLE `catalogos` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `clave` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catalogos`
--

INSERT INTO `catalogos` (`id`, `tipo`, `clave`, `descripcion`) VALUES
(2, 'tipoUsuario', 2, 'Profesor'),
(3, 'tipoUsuario', 3, 'Estudiante'),
(4, 'tipoSangre', 1, 'A+'),
(5, 'tipoSangre', 2, 'A-'),
(6, 'tipoSangre', 3, 'B+'),
(7, 'tipoSangre', 4, 'B-'),
(8, 'tipoSangre', 5, 'AB+'),
(9, 'tipoSangre', 6, 'AB-'),
(10, 'tipoSangre', 7, 'O+'),
(11, 'tipoSangre', 8, 'O-'),
(12, 'genero', 1, 'Masculino'),
(13, 'genero', 2, 'Femenino'),
(14, 'genero', 3, 'Otros'),
(15, 'estado', 1, 'Activo'),
(16, 'estado', 2, 'Inactivo'),
(17, 'estado', 3, 'Baja temporal'),
(20, 'tipoUsuario', 1, 'Admon'),
(21, 'dia', 1, 'Lunes'),
(22, 'dia', 2, 'Martes'),
(23, 'dia', 3, 'Mi&eacute;rcoles'),
(24, 'dia', 4, 'Jueves'),
(25, 'dia', 5, 'Viernes'),
(26, 'dia', 6, 'S&aacute;bado'),
(27, 'tipoExamen', 1, 'Examen escrito'),
(28, 'tipoExamen', 2, 'Examen oral'),
(29, 'tipoExamen', 3, 'Trabajo'),
(30, 'tipoMaterial', 1, 'Libro'),
(31, 'tipoMaterial', 2, 'Libro electrónico'),
(32, 'tipoMaterial', 3, 'Video');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(200) NOT NULL,
  `tipoExamen` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `baja` int(11) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `idCurso`, `fecha`, `observacion`, `tipoExamen`, `calificacion`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, 1, '2024-01-10', 'Primer examen del parcial', 1, 10, 0, '0000-00-00 00:00:00', '2024-01-14 13:18:40', '2024-01-14 12:56:45'),
(2, 1, '2024-01-12', '', 0, 0, 1, '2024-01-14 13:33:18', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(3, 1, '2024-01-15', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(4, 1, '2024-01-17', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(5, 1, '2024-01-19', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(6, 1, '2024-01-22', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(7, 1, '2024-01-24', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(8, 1, '2024-01-26', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(9, 1, '2024-01-29', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(10, 1, '2024-01-31', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:45'),
(11, 2, '2024-01-09', 'Examen primera unidad', 1, 10, 0, '0000-00-00 00:00:00', '2024-01-14 20:53:26', '2024-01-14 19:32:31'),
(12, 2, '2024-01-12', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:32:31'),
(13, 2, '2024-01-16', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:32:31'),
(14, 2, '2024-01-19', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:32:31'),
(15, 2, '2024-01-23', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:32:31'),
(16, 2, '2024-01-26', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:32:31'),
(17, 2, '2024-01-30', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:32:31'),
(18, 2, '2024-02-02', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:32:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `temario` varchar(100) NOT NULL,
  `idSalon` int(11) NOT NULL,
  `idProfesor` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `baja` int(11) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `clave`, `nombre`, `temario`, `idSalon`, `idProfesor`, `idMateria`, `fechaInicio`, `fechaFin`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, '1', 'Matem&aacute;tica - 1A', '', 1, 3, 1, '2024-01-09', '2024-01-31', 0, '0000-00-00 00:00:00', '2024-01-14 11:44:13', '2024-01-14 02:13:04'),
(2, '2', 'F&iacute;sica - 1A', '', 2, 3, 2, '2024-06-21', '2024-07-03', 0, '0000-00-00 00:00:00', '2024-01-14 19:35:22', '2024-01-14 11:44:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idSalon` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL,
  `observacion` varchar(200) NOT NULL,
  `baja` int(11) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `idCurso`, `idSalon`, `dia`, `horaInicio`, `horaFin`, `observacion`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, 1, 1, 1, '11:00:00', '13:00:00', 'Clase con portatil', 0, '2024-01-14 12:26:20', '2024-01-14 12:10:21', '2024-01-14 11:57:32'),
(2, 1, 1, 3, '14:00:00', '16:00:00', 'Prueba', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:14'),
(3, 1, 1, 5, '13:00:00', '15:00:00', 'Traer los materiales', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 12:56:39'),
(4, 2, 2, 6, '20:30:00', '21:30:00', '', 0, '0000-00-00 00:00:00', '2024-01-14 19:33:59', '2024-01-14 19:31:59'),
(5, 2, 2, 5, '20:30:00', '21:30:00', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:32:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id`, `idEstudiante`, `idCurso`, `calificacion`) VALUES
(1, 2, 1, 9),
(2, 2, 2, 10),
(3, 4, 1, 10),
(4, 5, 1, 0),
(5, 4, 2, 0),
(6, 5, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `id` int(11) NOT NULL,
  `clave` int(11) NOT NULL,
  `tipoMaterial` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `baja` int(11) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`id`, `clave`, `tipoMaterial`, `descripcion`, `referencia`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, 1, 3, 'Curso de F&iacute;sica. Tema 8: Oscilaciones. 8.4. Muelles y p&eacute;ndulos. Ejemplos', 'https://www.youtube.com/watch?v=bgyupdu9mug', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 11:45:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `clave` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `temario` varchar(100) NOT NULL,
  `baja` int(11) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `clave`, `nombre`, `idCarrera`, `temario`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, 1, 'Matematica', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 02:12:49'),
(2, 2, 'F&iacute;sica', 2, '', 0, '0000-00-00 00:00:00', '2024-01-14 21:05:38', '2024-01-14 11:43:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salones`
--

CREATE TABLE `salones` (
  `id` int(11) NOT NULL,
  `clave` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `nota` varchar(200) NOT NULL,
  `baja` int(11) NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salones`
--

INSERT INTO `salones` (`id`, `clave`, `descripcion`, `nota`, `baja`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(1, 1, 'Aula 1', '32', 0, '0000-00-00 00:00:00', '2024-01-14 11:43:43', '2024-01-14 02:12:15'),
(2, 2, 'Aula 2', '35', 0, '0000-00-00 00:00:00', '2024-01-14 21:10:49', '2024-01-14 11:43:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `clave` varchar(500) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidoPaterno` varchar(100) NOT NULL,
  `apellidoMaterno` varchar(100) NOT NULL,
  `genero` int(11) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codpos` varchar(10) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tipoSangre` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `baja` int(11) NOT NULL,
  `login_dt` datetime NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `tipo`, `correo`, `clave`, `nombres`, `apellidoPaterno`, `apellidoMaterno`, `genero`, `telefono`, `ciudad`, `codpos`, `foto`, `tipoSangre`, `estado`, `baja`, `login_dt`, `baja_dt`, `modificado_dt`, `creado_dt`, `calificacion`) VALUES
(1, 1, 'admon@escuela.com', 'e2e09a9a2d3ce79d4a82272d546b00d9c1e9dcb7163034f4f48893e43ea1c3b1e3aeda74d1581dceaa20d4c46f2f003b1a32b716fb4af18ded2121525e958e2b', 'Diego Sebastian', 'Torres', 'Caluna', 1, '0999830038', 'Ambato', '180108', 'WhatsApp Image 2024-01-13 at 19.57.27_2d9cf344.jpg', 7, 1, 0, '2023-09-05 18:32:06', '2023-09-05 18:32:06', '2024-01-15 09:32:14', '2023-09-05 18:32:06', 0),
(2, 3, 'dstc203@gmail.com', '', 'Christian Mateo', 'Granizo', 'Banda', 1, '0982339991', 'Ambato', '180108', '', 6, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 23:39:42', '2024-01-14 02:11:22', 0),
(3, 2, 'sergioramos@gmail.com', 'af82d60469ac4459d5bc58bd7310268769ef457ea124c148d71335cc3c0a87cd95ed36cefc30f4a70c530b549c7c0e7bba29cb0a432901cc72947494121a7908', 'Sergio', 'Ramos', 'Casares', 1, '0999876754', 'Ambato', '180103', '', 7, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 02:11:51', 0),
(4, 3, 'estudiante@gmail.com', 'af82d60469ac4459d5bc58bd7310268769ef457ea124c148d71335cc3c0a87cd95ed36cefc30f4a70c530b549c7c0e7bba29cb0a432901cc72947494121a7908', 'Jorge', 'Ayme', 'Salinas', 1, '0999820012', 'Ambato', '180103', '', 7, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:46:47', 0),
(5, 3, 'estudianteprueba@gmail.com', '', 'Erika', 'Camacho', 'Murcia', 2, '0989091361', 'Ambato', '180102', '', 7, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-01-14 19:47:35', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salones`
--
ALTER TABLE `salones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `salones`
--
ALTER TABLE `salones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
