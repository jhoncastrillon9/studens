-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2023 a las 16:18:23
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
-- Base de datos: `studens`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Hola', 'asdas', '2023-09-22 07:12:20', '2023-09-22 07:12:20'),
(2, 'test 2', 'adasd', '2023-09-22 08:59:23', '2023-09-22 08:59:23'),
(3, 'Test profesor', 'Categoria de prueba', '2023-09-22 09:16:48', '2023-09-22 09:16:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_05_21_193811_create_categories_table', 1),
(21, '2023_05_21_204645_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(220) NOT NULL,
  `content` varchar(2200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user` varchar(2200) NOT NULL,
  `likes` int(11) NOT NULL,
  `location` varchar(2200) NOT NULL,
  `url` varchar(2200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `category_id`, `user`, `likes`, `location`, `url`, `created_at`, `updated_at`) VALUES
(1, 'La IU Digital llega a México', 'El modelo de digitalidad próxima y la estrategia de nodos subregionales, que han permitido llegar al territorio y que las personas tengan acceso a educación superior de calidad en Colombia, fueron las estrategias que más llamaron la atención en la visita realizada por el rector, Jasson Alberto de la Rosa Izasa y el vicerrector, Jorge Gómez López a diversas universidades en México.', 3, 'jhon', 2, 'Medellin, Colombia', 'https://picsum.photos/400/501', '2023-10-08 11:02:01', '2023-10-08 11:02:01'),
(2, 'Nueva Carrera de Ingeniería de Software en la Universidad Nacional de México', '¡Estamos emocionados de anunciar nuestra nueva carrera de Ingeniería de Software! En la Universidad Nacional de México, estamos comprometidos con brindar oportunidades de educación superior de calidad. ¡Infórmate más sobre esta emocionante carrera!', 3, 'unam_oficial', 120, 'Ciudad de México, México', 'https://picsum.photos/400/500', '2023-10-08 11:04:55', '2023-10-08 11:04:55'),
(3, 'Celebrando el Día del Estudiante en nuestra Universidad', 'Hoy es un día especial en nuestra universidad, ¡celebramos el Día del Estudiante! Agradecemos a todos nuestros estudiantes por su dedicación y esfuerzo. ¡Sigamos trabajando juntos para un futuro brillante!', 3, 'universidad_alegria', 85, 'Guadalajara, México', 'https://picsum.photos/400/503', '2023-10-08 11:05:02', '2023-10-08 11:05:02'),
(4, 'Entrevista exclusiva con nuestro Decano', '¡No te pierdas esta entrevista exclusiva con nuestro Decano, Dr. Carlos Pérez! Hablaremos sobre los logros recientes de nuestra universidad y nuestros planes para el próximo año académico.', 3, 'entrevistas_universidad', 42, 'Monterrey, México', 'https://picsum.photos/400/506\r\n', '2023-10-08 11:05:25', '2023-10-08 11:05:25'),
(5, 'Conferencia Gratuita sobre Inteligencia Artificial', '¡Te invitamos a nuestra conferencia gratuita sobre Inteligencia Artificial! Aprende de expertos en el campo y descubre las oportunidades que ofrece esta emocionante área de estudio.', 3, 'eventos_universidad', 60, 'Puebla, México', 'https://picsum.photos/400/507', '2023-10-08 11:05:33', '2023-10-08 11:05:33'),
(6, 'Logros Académicos de Nuestros Estudiantes', 'Estamos orgullosos de anunciar que varios de nuestros estudiantes han obtenido becas y premios académicos este trimestre. ¡Felicitaciones a todos por su arduo trabajo y dedicación!', 2, 'logros_estudiantiles', 95, 'Querétaro, México', 'https://picsum.photos/400/508', '2023-10-08 11:05:59', '2023-10-08 11:05:59'),
(7, 'Recorrido Virtual por Nuestro Campus', '¿Quieres conocer nuestro hermoso campus desde casa? ¡Te invitamos a hacer un recorrido virtual por nuestras instalaciones! Descubre todo lo que nuestra universidad tiene para ofrecer.', 2, 'recorrido_campus', 38, 'Toluca, México', 'https://picsum.photos/400/509', '2023-10-08 11:06:07', '2023-10-08 11:06:07'),
(8, 'Invitación a Nuestro Festival Cultural', '¡No te pierdas nuestro Festival Cultural anual! Disfruta de actuaciones en vivo, exposiciones de arte y mucho más. ¡Esperamos verte allí!', 1, 'cultura_universidad', 72, 'Cancún, México', 'https://picsum.photos/400/510', '2023-10-08 11:06:15', '2023-10-08 11:06:15'),
(9, 'Charla Inspiradora con un Exalumno Exitoso', 'Únete a nosotros para una charla inspiradora con uno de nuestros exalumnos más exitosos, María López. Descubre cómo logró alcanzar el éxito después de graduarse de nuestra universidad.', 1, 'exalumno_destacado', 55, 'Mérida, México', 'https://picsum.photos/400/511', '2023-10-08 11:06:24', '2023-10-08 11:06:24'),
(10, 'Conoce a Nuestros Profesores Destacados', 'Hoy destacamos a algunos de nuestros profesores más dedicados y talentosos. Agradecemos su contribución a la educación superior de calidad que ofrecemos en nuestra universidad.', 2, 'profesores_destacados', 47, 'Veracruz, México', 'https://picsum.photos/400/512', '2023-10-08 11:06:38', '2023-10-08 11:06:38'),
(11, 'Inauguración de Nuevo Laboratorio de Ciencias', 'Estamos emocionados de inaugurar nuestro nuevo laboratorio de ciencias. Este espacio de vanguardia permitirá a nuestros estudiantes realizar investigaciones de alto nivel.', 3, 'laboratorio_ciencias', 63, 'Chihuahua, México', 'https://picsum.photos/400/513', '2023-10-08 11:06:45', '2023-10-08 11:06:45'),
(12, 'Programa de Intercambio Estudiantil', '¡Anunciamos nuestro programa de intercambio estudiantil! Ahora nuestros estudiantes tienen la oportunidad de estudiar en el extranjero y enriquecer su experiencia académica.', 3, 'intercambio_estudiantil', 78, 'Tijuana, México', 'https://picsum.photos/400/514', '2023-10-08 11:06:50', '2023-10-08 11:06:50'),
(13, 'Día de la Ciencia en Nuestra Universidad', 'Hoy celebramos el Día de la Ciencia en nuestra universidad. Destacamos la importancia de la investigación y la innovación en la educación superior.', 2, 'ciencia_universitaria', 54, 'León, México', 'https://picsum.photos/400/515', '2023-10-08 11:06:57', '2023-10-08 11:06:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jhon', 'jhon@gmail.com', NULL, '$2y$10$6d6ogs7e0I95G0y9mVHMf.dPc17Q2NehGi786ODzKVH3ymgsuyr0y', NULL, '2023-09-22 08:02:01', '2023-09-22 08:02:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
