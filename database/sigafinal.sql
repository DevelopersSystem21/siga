-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2023 at 12:19 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigafinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `acta_notas`
--

CREATE TABLE `acta_notas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_registro_auxiliar` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `actividads`
--

CREATE TABLE `actividads` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ambientes`
--

CREATE TABLE `ambientes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacidad` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambientes`
--

INSERT INTO `ambientes` (`id`, `nombre`, `capacidad`, `created_at`, `updated_at`, `deleted_at`) VALUES
('00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'PISCO', 23, NULL, NULL, NULL),
('10df8cd6-884a-45f2-ba11-a50de4e66597', 'CHURUP CAMARA DE COMERCIO', 18, NULL, NULL, NULL),
('2d944f17-ac48-42c0-8f94-448da18b733d', 'AULA VIRTUAL - INGLÉS AVANZADO IV', 15, NULL, NULL, NULL),
('5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'PENDIENTE', 12, NULL, NULL, NULL),
('7304c4fd-a6fb-4450-931c-976c30d33556', 'JIRISHANCA', 15, NULL, NULL, NULL),
('79d4e79d-9f89-4dc4-9014-05bcec51a2de', 'WILCACOCHA - CAMARA DE COMERCIO', 12, NULL, NULL, NULL),
('95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'HUAYHUASH', 15, NULL, NULL, NULL),
('ads12312312', 'ALPAMAYO', 18, NULL, NULL, NULL),
('asfdwr2werf2342', 'AUDITORIO', 23, NULL, NULL, NULL),
('b2a44bdb-e726-4d59-be15-95315b4028f8', 'HUANDOY', 21, NULL, NULL, NULL),
('bb89d90a-7986-4115-8090-d72110074bf2', 'AULA VIRTUAL - INGLÉS INTERMEDIO VII', 15, NULL, NULL, NULL),
('c1d92d7f-c1a7-4aa1-8c62-c9aee5d8de55', 'AULA VIRTUAL - INGLÉS INTERMEDIO IX', 15, NULL, NULL, NULL),
('c4a9eadf-86b9-4181-9e29-acec6474a03b', 'HUASCARAN', 20, NULL, NULL, NULL),
('fd624aab-0d21-4fff-927d-82f3876bce0d', 'CAYESH', 12, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apoderados`
--

CREATE TABLE `apoderados` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vinculo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_persona` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ciudad` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apoderados`
--

INSERT INTO `apoderados` (`id`, `vinculo`, `id_persona`, `id_ciudad`, `created_at`, `updated_at`, `deleted_at`) VALUES
('887a0cdc-351b-4601-b53b-082e873ee860', 'padre', '75f4fc79-3a8b-4262-8823-ed024ea5d57b', '779efb76-afe9-4274-9ec9-9b50513b314c', '2023-07-18 20:30:16', '2023-07-18 20:30:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asistencias`
--

CREATE TABLE `asistencias` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_registro_auxiliar` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `capacidad_logros`
--

CREATE TABLE `capacidad_logros` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peso` decimal(9,2) NOT NULL,
  `id_unidad_didacticas` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capacidad_logros`
--

INSERT INTO `capacidad_logros` (`id`, `nombre`, `peso`, `id_unidad_didacticas`, `created_at`, `updated_at`, `deleted_at`) VALUES
('32db4169-bf27-41d8-98ec-69405aee215d', 'Writing', '25.00', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '2023-06-20 19:02:09', '2023-06-20 19:02:09', NULL),
('357e03ca-d704-40bb-86cd-639926538d82', 'Speaking', '25.00', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', '2023-06-27 16:52:08', '2023-06-27 16:52:08', NULL),
('4e0d1807-a901-44f9-aecf-acc5f7023b83', 'Speaking', '25.00', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '2023-06-20 19:02:21', '2023-06-20 19:02:21', NULL),
('77c227da-cbb5-42bb-8dc7-3f1f62747ef8', 'Reading', '25.00', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '2023-06-20 18:59:53', '2023-06-20 19:01:49', NULL),
('7b71ba50-7873-4598-a55b-54baf469c3d3', 'listening', '25.00', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '2023-06-20 19:02:43', '2023-06-20 19:02:43', NULL),
('91c9d07e-daf3-4cd4-9ac4-d1c22a540032', 'Writing', '25.00', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', '2023-06-27 16:52:30', '2023-06-27 16:52:30', NULL),
('ab789dcd-75cc-4a31-bd9b-06ee3cea853d', 'listening', '25.00', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', '2023-06-27 16:45:04', '2023-06-27 16:51:32', NULL),
('b5e3c961-1e57-4d66-a318-32527baf043c', 'Reading', '25.00', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', '2023-06-27 16:51:56', '2023-06-27 16:51:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ciclos`
--

CREATE TABLE `ciclos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ciclos`
--

INSERT INTO `ciclos` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0eadf8da-70ce-44d6-a1fc-455458aa4f43', 'V', '2023-06-19 19:43:03', '2023-06-19 19:43:03', NULL),
('0f3dae80-7476-42d4-a4f1-75ad5c814f61', 'XII', '2023-06-19 19:43:54', '2023-06-19 19:43:54', NULL),
('39f0ce9d-4178-48b1-927c-cab3e23cfcf3', 'VI', '2023-06-19 19:43:17', '2023-06-19 19:43:17', NULL),
('3dec79bb-530f-4725-b48e-06792695821d', 'IX', '2023-06-19 19:49:00', '2023-06-19 19:49:00', NULL),
('7a1c712a-792e-4f54-b66a-d6517447fc95', 'IV', '2023-06-14 20:01:15', '2023-06-19 19:42:52', NULL),
('7b319633-1514-4d46-a668-89fe82492dd8', 'III', '2023-06-14 20:01:24', '2023-06-19 19:42:46', NULL),
('7d09a5e1-1405-4463-8431-600126d95d13', 'II', '2023-06-14 20:01:32', '2023-06-19 19:42:41', NULL),
('84e8c975-4afe-42a6-a110-9f2b87de39ab', 'I', '2023-06-14 20:01:07', '2023-06-19 19:42:35', NULL),
('89bd2006-884a-485c-b117-6932150e39a8', 'X', '2023-06-19 19:43:42', '2023-06-19 19:43:42', NULL),
('914dd2f3-78db-4124-90c4-90717911df50', 'XI', '2023-06-19 19:43:48', '2023-06-19 19:43:48', NULL),
('ae336b60-1581-48bb-b331-7daef37dd293', 'VIII', '2023-06-19 19:43:30', '2023-06-19 19:43:30', NULL),
('d6aa0707-c1a6-4e10-b02c-fcb1271b45ca', 'VII', '2023-06-19 19:43:10', '2023-06-19 19:43:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ciudades`
--

CREATE TABLE `ciudades` (
  `idCiudad` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codciud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomciu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddep` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ciudades`
--

INSERT INTO `ciudades` (`idCiudad`, `codciud`, `nomciu`, `iddep`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0cb74be9-9c0c-4195-8b75-8bdf350bc9d3', 'LI', 'LIMA', '5073c78d-722c-4fd1-9e74-ab5974083dd3', '2023-07-18 11:45:44', '2023-07-18 11:45:44', NULL),
('1d548a94-acd6-4492-a84d-f5675272bbd2', 'MT', 'METROPOLITANA', 'c6a790f3-19b4-4107-b8d0-dbef01af61ea', '2023-07-18 11:46:44', '2023-07-18 11:46:44', NULL),
('2a6ad508-dcbc-4f44-a4a4-3c546f509835', 'YU-001', 'YUNGAY', '3bf1e591-65d6-4c06-a8a8-a69c8a1d2952', '2023-06-14 20:07:49', '2023-07-18 11:48:17', NULL),
('322fa007-dddd-4b15-ab88-2f135e74dd96', 'ME', 'ENTRE RIOS', '03b79037-5277-4b05-a8c1-0dc13c84c44d', '2023-07-18 11:59:57', '2023-07-18 11:59:57', NULL),
('35a4d172-458c-494b-9530-d8b588395440', 'MG', 'MAGALLANES', '9bec8ae8-446c-4e4d-be65-f216a0e59732', '2023-07-18 11:47:27', '2023-07-18 11:47:27', NULL),
('36483706-9a4e-4570-b539-2c4dee353ffb', 'CA-001', 'HUAYLAS', '3bf1e591-65d6-4c06-a8a8-a69c8a1d2952', '2023-06-14 20:08:05', '2023-07-18 12:04:45', NULL),
('5d02cc4b-86e2-4db5-b3b9-24d9a4d3adb7', 'CAR-001', 'CARHUAZ', '3bf1e591-65d6-4c06-a8a8-a69c8a1d2952', '2023-06-14 20:08:38', '2023-07-18 11:55:56', NULL),
('637d966f-d7de-4adb-bf79-5dfbbb21bd4c', 'D-IHA', 'INDEPENDENCIA', '3bf1e591-65d6-4c06-a8a8-a69c8a1d2952', '2023-06-19 20:01:30', '2023-07-18 11:48:39', NULL),
('6b39b53b-9cf5-4427-9c24-06d850795ae5', 'DF', 'DISTRITO FEDERAL', 'd1bffd4e-16f9-4bfc-9820-0249770ea7eb', '2023-07-18 11:53:31', '2023-07-18 11:53:31', NULL),
('6d2648bc-450a-4711-ac4b-d89c1a007b91', 'ML', 'MARISCAL LUZUARIAGA', '3bf1e591-65d6-4c06-a8a8-a69c8a1d2952', '2023-07-18 12:03:52', '2023-07-18 12:03:52', NULL),
('779efb76-afe9-4274-9ec9-9b50513b314c', 'HU-001', 'HUARAZ', '3bf1e591-65d6-4c06-a8a8-a69c8a1d2952', '2023-06-14 20:07:34', '2023-07-18 11:53:46', NULL),
('9a85145a-8854-474a-96c1-cc1a9f3c7dbf', 'HUA-001', 'HUARAL', '5073c78d-722c-4fd1-9e74-ab5974083dd3', '2023-06-14 20:09:06', '2023-07-18 11:55:44', NULL),
('a40f9402-1dc5-4305-ae39-ebf4f8a6bb03', 'AN', 'ANDORA', '5f437739-158d-401d-8545-27fe1ddaffc3', '2023-06-27 17:26:58', '2023-07-18 11:56:06', NULL),
('b44dade8-5750-4d19-9b80-d1eb55b5f067', 'MP', 'MAIPO', 'c6a790f3-19b4-4107-b8d0-dbef01af61ea', '2023-07-18 11:57:13', '2023-07-18 11:57:13', NULL),
('bfc9edca-5285-41c2-9e60-b68c30192e88', 'ER', 'ENTRE RIOS', '89a370aa-90d0-4e50-b14c-b6d4da74424e', '2023-07-18 12:01:36', '2023-07-18 12:01:36', NULL),
('cd9ee1e3-95ed-4602-b3be-cb4be904b7f3', 'LE', 'LEON', 'ede64842-361c-41c2-b7ba-5f36e18a1b79', '2023-07-18 12:03:00', '2023-07-18 12:03:00', NULL),
('d97b8378-8d69-40ec-84a2-a3e265d5cbc0', 'CAN-001', 'CANTA', '5073c78d-722c-4fd1-9e74-ab5974083dd3', '2023-06-14 20:13:24', '2023-07-18 11:56:15', NULL),
('db4c5001-6307-4018-923b-c63508aeedb2', 'QE', 'QUEDEC', '9fa15155-d8f3-4549-8fc6-3a8122499632', '2023-07-18 11:55:29', '2023-07-18 11:55:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configuracions`
--

CREATE TABLE `configuracions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tolalsemana` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configuracions`
--

INSERT INTO `configuracions` (`id`, `tolalsemana`, `created_at`, `updated_at`, `deleted_at`) VALUES
('6917c7ed-26d3-4ef5-a51e-72510a7eee80', 4, '2023-06-14 20:00:28', '2023-06-14 20:00:28', NULL),
('ce877ce3-bc8d-427d-a75f-0e0dff89d299', 16, '2023-06-14 20:00:35', '2023-06-14 20:00:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `convalidaciones`
--

CREATE TABLE `convalidaciones` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_estudiante` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_unidad_academica` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `convalidaciones`
--

INSERT INTO `convalidaciones` (`id`, `id_estudiante`, `id_unidad_academica`, `nota`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0fa386f7-88cd-493f-b902-063de2f757a9', '7194e4fe-0f3e-4580-be9d-a8135e813937', '31af06d8-0f53-413d-9f6d-f037e499b88e', 14, '2023-06-29 17:02:44', '2023-06-29 17:03:20', '2023-06-29 17:03:20'),
('2f6983c6-39cc-4fe8-bb61-efc4a8d1b880', 'edafe6f5-791d-41ad-b645-5687781e1cc2', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', 12, '2023-06-29 16:19:27', '2023-06-29 16:19:42', '2023-06-29 16:19:42'),
('34b72789-a032-454c-8e70-67b0cb702431', 'edafe6f5-791d-41ad-b645-5687781e1cc2', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', 14, '2023-06-27 15:39:59', '2023-06-27 15:40:44', '2023-06-27 15:40:44'),
('4a1894bf-9124-4c80-9248-042d297ae341', '4bb8b232-9ba7-4243-88fb-84ed25cc0b62', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', 12, '2023-06-23 17:01:26', '2023-06-23 17:01:53', '2023-06-23 17:01:53'),
('4d1425dc-929c-4930-a38c-bfec49cbb456', '7194e4fe-0f3e-4580-be9d-a8135e813937', '8afd9ebb-2bc7-4ec6-91f7-e9a020842ecf', 13, '2023-07-03 14:26:22', '2023-07-03 14:26:57', '2023-07-03 14:26:57'),
('5e2a4934-58df-42e8-bb3b-b95dc1fe93c4', '4bb8b232-9ba7-4243-88fb-84ed25cc0b62', 'f9be1e8e-6038-4bb9-8fc8-cf26a036e60a', 13, '2023-06-26 16:32:12', '2023-06-26 16:32:42', '2023-06-26 16:32:42'),
('801fada9-59f8-4990-ab2b-95b3bcf9f7a4', '7194e4fe-0f3e-4580-be9d-a8135e813937', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', 13, '2023-06-29 17:02:44', '2023-06-29 17:03:20', '2023-06-29 17:03:20'),
('dc19d852-25cb-492c-a09c-82e94b7cca22', '7194e4fe-0f3e-4580-be9d-a8135e813937', '8afd9ebb-2bc7-4ec6-91f7-e9a020842ecf', 15, '2023-06-29 17:02:44', '2023-06-29 17:03:20', '2023-06-29 17:03:20'),
('fbdbb3da-3132-4fa9-9388-9cb4c99dc86c', '4bb8b232-9ba7-4243-88fb-84ed25cc0b62', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', 12, '2023-06-23 16:23:17', '2023-06-23 17:01:15', '2023-06-23 17:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `creditos`
--

CREATE TABLE `creditos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_periodo` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_estudiante` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` int NOT NULL,
  `fecha` date NOT NULL,
  `monto` double(8,2) NOT NULL,
  `pago_anticipado` double(8,2) NOT NULL,
  `fecha_primera_cuota` date NOT NULL,
  `dias_periodicidad` int NOT NULL DEFAULT '30',
  `dias_gracia` int NOT NULL,
  `interes_mora` double(8,2) NOT NULL,
  `penalizacion_mora` double(8,2) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fue_anulado` tinyint(1) NOT NULL DEFAULT '0',
  `fue_pagado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `creditos`
--

INSERT INTO `creditos` (`id`, `id_periodo`, `id_estudiante`, `numero`, `fecha`, `monto`, `pago_anticipado`, `fecha_primera_cuota`, `dias_periodicidad`, `dias_gracia`, `interes_mora`, `penalizacion_mora`, `nombre`, `observaciones`, `fue_anulado`, `fue_pagado`, `created_at`, `updated_at`, `deleted_at`) VALUES
('25f6f865-b32b-45bd-87d4-f0269a2187dc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7194e4fe-0f3e-4580-be9d-a8135e813937', 1, '2023-06-28', 0.00, 0.00, '2023-06-28', 31, 2, 1.00, 1.00, 'BAÑEZ GODOY DANIEL EVILSON - 61480353', NULL, 0, 1, '2023-06-28 22:08:55', '2023-06-30 21:49:57', NULL),
('aeb036cc-3dab-41d5-a48c-760243df0518', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4bb8b232-9ba7-4243-88fb-84ed25cc0b62', 1, '2023-06-22', 0.00, 0.00, '2023-07-12', 31, 15, 0.00, 0.00, 'PAUCAR ALVA ZARAYU VALENTINA - 61713734', NULL, 0, 0, '2023-06-22 11:28:54', '2023-06-22 11:28:54', NULL),
('cc6ae6c4-68e3-416d-9c48-69f4e19e5d9b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'edafe6f5-791d-41ad-b645-5687781e1cc2', 1, '2023-06-27', 0.00, 0.00, '2023-07-10', 31, 1, 0.00, 0.00, 'BELEN SIGUEÑAS DELICIA NOELIA - 78627359', NULL, 0, 0, '2023-06-27 16:25:33', '2023-06-27 16:25:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cuentas`
--

CREATE TABLE `cuentas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuentas`
--

INSERT INTO `cuentas` (`id`, `codigo`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('29d35164-e47f-3e51-9743-5182a0391764', 'IBK', 'Interbank', NULL, NULL, NULL),
('5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'EC', 'Efectivo - Caja', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cuotas`
--

CREATE TABLE `cuotas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_credito` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `monto` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `numero` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuotas`
--

INSERT INTO `cuotas` (`id`, `id_credito`, `fecha`, `monto`, `created_at`, `updated_at`, `deleted_at`, `numero`) VALUES
('4226f341-5530-4014-8180-2ed05c5bfca7', 'cc6ae6c4-68e3-416d-9c48-69f4e19e5d9b', '2023-07-09', 50.00, '2023-06-27 16:25:33', '2023-06-27 16:25:33', NULL, 1),
('5b5933b4-4432-492e-a5f5-eaf9e24a8cfc', '25f6f865-b32b-45bd-87d4-f0269a2187dc', '2023-06-28', 50.00, '2023-06-28 22:08:55', '2023-06-28 22:08:55', NULL, 1),
('fad8d38d-2a50-40c6-9f0e-b96a6cf76564', 'aeb036cc-3dab-41d5-a48c-760243df0518', '2023-07-11', 50.00, '2023-06-22 11:28:54', '2023-06-22 11:28:54', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departamentos`
--

CREATE TABLE `departamentos` (
  `iddep` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coddepa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomdepa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idpais` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departamentos`
--

INSERT INTO `departamentos` (`iddep`, `coddepa`, `nomdepa`, `idpais`, `created_at`, `updated_at`, `deleted_at`) VALUES
('03b79037-5277-4b05-a8c1-0dc13c84c44d', 'MEN', 'MENDOZA', '836e6fd6-743e-49d6-bc45-e855b88491e5', '2023-07-18 11:59:21', '2023-07-18 11:59:21', NULL),
('1a7988b2-1a83-4350-adf2-4ce484116d63', 'GUA', 'GUAYAS', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:44:37', '2023-07-18 11:44:37', NULL),
('31882f3d-b8b4-4aed-ad3a-f3dd2d6d96b3', 'CT', 'COTOPAXI', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:42:30', '2023-07-18 11:42:30', NULL),
('3bf1e591-65d6-4c06-a8a8-a69c8a1d2952', 'AN', 'ANCASH', '278ad2be-6721-4547-8a72-c60585db3ab6', '2023-06-14 20:06:55', '2023-07-18 11:26:42', NULL),
('474c0485-a2d2-44a8-a62a-ca651124de32', 'CH', 'CARCHI', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:40:01', '2023-07-18 11:40:01', NULL),
('5073c78d-722c-4fd1-9e74-ab5974083dd3', 'LI', 'LIMA', '278ad2be-6721-4547-8a72-c60585db3ab6', '2023-06-14 20:07:06', '2023-07-18 11:26:33', NULL),
('5f437739-158d-401d-8545-27fe1ddaffc3', 'MA', 'MADRID', '6bfe7b9e-abc0-414d-a66d-8965e72e3a79', '2023-06-27 17:26:07', '2023-07-18 11:26:24', NULL),
('893617d2-837e-4c09-9c72-4558ba5182f9', 'CA', 'CAÑAR', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:39:18', '2023-07-18 11:39:18', NULL),
('89a370aa-90d0-4e50-b14c-b6d4da74424e', 'LP', 'LA PAZ', '836e6fd6-743e-49d6-bc45-e855b88491e5', '2023-07-18 12:01:13', '2023-07-18 12:01:13', NULL),
('9bec8ae8-446c-4e4d-be65-f216a0e59732', 'PTA', 'PUNTA ARENAS', '800b4780-c6b1-45a8-82b3-c4c9527ab01b', '2023-07-18 11:47:08', '2023-07-18 11:47:08', NULL),
('9fa15155-d8f3-4549-8fc6-3a8122499632', 'MTRL', 'MONTREAL', 'd3193032-2ef8-412c-b8a2-2bd597dc2d9f', '2023-07-18 11:54:39', '2023-07-18 11:54:39', NULL),
('a303423b-37c6-40cc-b307-7e681b01f61b', 'CHM', 'CHIMBORAZO', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:42:59', '2023-07-18 11:42:59', NULL),
('a735a478-1871-4eb1-9e87-dc4cdc290053', 'ER', 'EL ORO', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:43:33', '2023-07-18 11:43:33', NULL),
('c6a790f3-19b4-4107-b8d0-dbef01af61ea', 'MT', 'METROPOLITANA', '800b4780-c6b1-45a8-82b3-c4c9527ab01b', '2023-07-18 11:46:14', '2023-07-18 11:46:14', NULL),
('cc5c1205-3aa2-4cf0-ac6d-0780e4f4e691', 'AZ', 'AZUAY', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:26:09', '2023-07-18 11:26:09', NULL),
('d1bffd4e-16f9-4bfc-9820-0249770ea7eb', 'DF', 'DISTRITO FEDERAL', 'e3be7bea-b9de-470e-b92a-56cce3c73ecc', '2023-07-18 11:53:00', '2023-07-18 11:53:00', NULL),
('dcf1fca8-f810-4360-a246-9df629fae25b', 'BL', 'BOLIVAR', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:31:24', '2023-07-18 11:31:24', NULL),
('e167f455-d5e1-4736-a275-0324818a2b8e', 'ESM', 'ESMERALDAS', '76e38f83-5629-46ee-9a30-14cbea6b8134', '2023-07-18 11:44:11', '2023-07-18 11:44:11', NULL),
('ede64842-361c-41c2-b7ba-5f36e18a1b79', 'GUN', 'GUANAJUATO', 'e3be7bea-b9de-470e-b92a-56cce3c73ecc', '2023-07-18 12:02:36', '2023-07-18 12:02:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `descuentos`
--

CREATE TABLE `descuentos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `descuentos`
--

INSERT INTO `descuentos` (`id`, `codigo`, `nombre`, `porcentaje`, `created_at`, `updated_at`, `deleted_at`) VALUES
('502edb0b-3139-37f5-a3ab-5123ca60b138', 'D1', 'Descuento 20', 20.00, NULL, NULL, NULL),
('f905457c-8abf-355b-8611-e18413534979', 'D2', 'Descuento 50', 50.00, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `det_registro_auxiliars`
--

CREATE TABLE `det_registro_auxiliars` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_unidad_aperturados` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_estudiantes` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docentes`
--

CREATE TABLE `docentes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_persona` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `docentes`
--

INSERT INTO `docentes` (`id`, `codigo`, `id_persona`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0caba9f3-6ce8-4613-8117-03705fa97fb2', 'C4FNJXFCT', '0d1f4927-3651-4c68-b388-d97c0bac8496', '2023-07-03 09:58:47', '2023-07-03 09:58:47', NULL),
('0d2450cd-4537-45f9-be14-97002755f7e5', '71981911', '9b957d6a-82f6-402c-af87-27b296c07cf5', '2023-07-03 12:35:24', '2023-07-03 12:35:24', NULL),
('0d2fcce9-b3ec-4524-bc03-b2731e1053f8', 'LUC-001', 'a5b54455-8fcd-4358-afac-cde87e460fa7', '2023-06-14 20:32:07', '2023-06-14 20:32:07', NULL),
('10ebb685-2059-4a9c-9095-3d27441204c3', '72313973', '76675ecb-41b9-4362-b382-35de49e422ca', '2023-06-23 18:40:23', '2023-06-23 18:40:23', NULL),
('25bc8b91-e8f9-4b89-a53e-03c8591163d3', '70574287', 'b6815fea-4aae-409d-84d0-e3a08f4f6d67', '2023-06-23 19:21:15', '2023-06-23 19:21:15', NULL),
('325e09a0-1ac1-4e13-be25-d5ebc434c362', '47755643', '8c2c8033-67fa-49e7-8378-9fbe4008e0a4', '2023-06-23 19:13:27', '2023-06-23 19:13:27', NULL),
('32995705-229c-494c-af24-22f75730bda2', '41407813', '17fc4642-ae38-48e4-9825-0018a0d2e718', '2023-06-23 19:11:52', '2023-06-23 19:11:52', NULL),
('48e83958-b337-47e4-8b59-11d51fe020d9', '41764739', '96dd2b35-bb01-485d-a560-bdc942729233', '2023-07-03 09:32:26', '2023-07-03 09:32:26', NULL),
('61bd8072-f6b3-4b6e-8242-393cf4221056', '42679337', 'd3715b4e-d758-45f9-aedc-235b08bbd142', '2023-07-03 12:03:14', '2023-07-03 12:03:14', NULL),
('6461600b-073c-4169-9b1b-2b66e904493c', '70603012', '18ce8a71-92d6-48a5-a319-fda865e124c8', '2023-06-23 19:23:11', '2023-06-23 19:23:11', NULL),
('8486c6aa-ceee-49ec-aef4-e285379194f1', '47731250', '8fe9e7a4-9bd9-42e6-b852-1034f967343a', '2023-06-23 19:17:24', '2023-06-23 19:17:24', NULL),
('86f2e5bf-4804-48a7-8fa8-576b37ffeb31', '71865451', 'af0e9bba-0503-4d4f-ae44-47fe92d3b7c6', '2023-07-03 15:03:05', '2023-07-03 15:03:05', NULL),
('8ce1c0cc-84d1-40ec-9d1f-3168b9c3d9c5', '44003113', 'fbb40eeb-1222-4a3d-856b-5d51773713fd', '2023-06-23 19:19:13', '2023-06-23 19:19:13', NULL),
('917cf164-8205-4d92-ae2b-e5714bb5cdc9', '45565830', 'f4850a64-5bfc-4c08-87af-7a0fe6b00c25', '2023-07-03 19:06:13', '2023-07-03 19:06:13', NULL),
('991fd93c-ca80-4e65-9703-03322ae2c946', '71446876', '708e4989-7717-471f-a390-47e497554049', '2023-07-03 12:42:57', '2023-07-03 12:42:57', NULL),
('9c5ada6c-8aca-4bb2-bcd7-a75cedbf5702', '47455321', '8f7ef1aa-7940-45b3-aa61-4a155d216486', '2023-06-23 19:03:35', '2023-06-23 19:03:35', NULL),
('9ef20777-8bca-4a13-813d-edee4afc14ca', '43160746', 'ca5b6375-dda6-4563-96fa-15faf34cf14c', '2023-06-27 16:32:44', '2023-06-27 16:32:44', NULL),
('a90ac089-7056-44c2-87a1-8b1794937ce8', '71865451', 'a48dfce8-027b-4057-b268-4830321e2f0c', '2023-06-23 19:26:21', '2023-06-23 19:26:21', NULL),
('ab6e866d-ec54-470a-8206-e107c47e020e', '02000', '32c076eb-3e21-42f7-8d9c-3f843339e6ed', '2023-06-19 06:13:00', '2023-06-19 06:13:00', NULL),
('b16d8928-bc8f-484f-be12-b04a8073525f', '75782595', '0a35d3fe-9b78-4b2b-a3c8-c7becd623530', '2023-07-03 14:58:09', '2023-07-03 14:58:09', NULL),
('b5d2e392-b981-4f20-a409-72b8dd3d21a7', '76205273', '45ded056-865b-479e-ad51-e3c667675261', '2023-07-03 15:28:23', '2023-07-03 15:28:23', NULL),
('c484d593-79ca-4eaa-a36f-210af854f1b7', '21211496', 'da1b9e2d-b655-4628-a056-a36e60b20981', '2023-07-03 09:18:49', '2023-07-03 09:18:49', NULL),
('c62b0bdb-2a58-4efe-9e02-f85cb16255bb', '49064251', '21e3fc43-13d0-4d28-8dd9-20c603334542', '2023-06-23 19:24:49', '2023-06-23 19:24:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_persona` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_apoderado` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '887a0cdc-351b-4601-b53b-082e873ee860',
  `id_programa_academico` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ciudad` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `codigo`, `birthdate`, `estado`, `id_persona`, `id_apoderado`, `id_programa_academico`, `id_ciudad`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
('004c662a-e9f3-4f55-bcab-a48d82511a72', '62287488', NULL, 'activo', '9deb9f99-4dac-47ec-89f2-263e186b9e02', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:16:40', '2023-07-04 10:16:40', NULL),
('0059f5a8-a355-4b93-bca2-a272de287872', '76028789', NULL, 'activo', 'f104815e-02c2-408e-8b9e-dbd747769e45', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:24:32', '2023-07-04 18:24:32', NULL),
('0091bf07-75ab-4250-a579-03203ed77d19', '62014979', NULL, 'activo', '3f4d28fe-5ee2-4125-9464-4c48786bba88', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:14:13', '2023-07-05 11:14:13', NULL),
('010fde2f-f8db-4864-9954-6f0d41226491', '63193384', NULL, 'activo', '5084ab7c-01c1-4d48-86f2-e6667994c255', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:28:32', '2023-07-04 15:28:32', NULL),
('015f363b-7e65-4673-97e6-488201f1e0c5', '63014038', NULL, 'activo', '967e8158-3533-4d28-ba09-9c3645e31ce4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-10 18:57:46', '2023-07-10 18:57:46', NULL),
('01c7784d-c7b7-4609-8871-be3d20d37202', '70110372', NULL, 'activo', '1786266d-90a3-4b87-9ae8-941a937233e6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:04:14', '2023-07-04 11:04:14', NULL),
('025148f9-e712-45ba-a502-75d396c50176', '61064045', NULL, 'activo', '5f900afb-0a2a-4c92-95c0-6d2c89c31f1d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-10 18:15:40', '2023-07-10 18:15:40', NULL),
('026fd00b-9cb1-4601-8e9f-7cfd703a4605', '81611066', NULL, 'activo', '3675b94a-2d63-4f4d-a1d5-e95fd6739679', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:26:48', '2023-07-04 12:26:48', NULL),
('0283d2af-4253-4399-8a3c-20d795049cb7', '90735410', NULL, 'activo', '649a1607-9c1c-49ec-8925-2155429ea7ec', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:02:03', '2023-07-05 11:02:03', NULL),
('02ba0432-4ec6-4245-82e5-fc141a22f616', '31668200', NULL, 'activo', '87b26f7c-d274-492c-94a7-18fe83819e42', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:32:13', '2023-07-04 10:32:13', NULL),
('03903241-c0eb-4f04-80c0-b7138181e069', '79320939', NULL, 'activo', '9ed3f31d-65a2-43af-88aa-5e3dcd78cdfd', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:41:57', '2023-07-04 15:41:57', NULL),
('046eba5d-31e6-44ac-ab9f-91ee3253176c', '63014017', NULL, 'activo', 'f9387680-24bf-4048-9377-6cb64b79d28f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:02:35', '2023-07-04 19:07:30', NULL),
('04a3ea6f-c910-47ab-9ec1-b06fd6036f38', '78032658', NULL, 'activo', '6fe0508d-1d3f-4d71-bfb1-08d8b22dee60', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:16:21', '2023-07-04 16:16:21', NULL),
('066467cd-6fbf-4fe2-a51d-0dc9cca369cf', '72970943', NULL, 'activo', '2308addf-e4b9-458b-a67e-615184838037', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:12:58', '2023-07-04 11:12:58', NULL),
('08592993-7eb9-4156-b689-711c1b1579ee', '75321948', NULL, 'activo', 'd7776566-bb5c-48f1-92dc-b585601c6b99', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:05:59', '2023-07-04 11:05:59', NULL),
('0947f94b-c776-4366-8381-fcb1f3733d0f', '62866822', NULL, 'activo', 'a19b96fa-06bf-4c34-bbc5-3303b011eb59', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:21:23', '2023-07-04 12:21:23', NULL),
('09e26969-2eb5-4fa1-a92b-664bf295ae83', '964937122', NULL, 'activo', 'ffe6514c-9351-4f1b-80ac-6dcd1d9f64dd', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:23:08', '2023-07-04 12:23:08', NULL),
('0a70274a-9649-4dcf-ad95-bed0878badcd', '61155677', NULL, 'activo', 'cd7cf02e-46e0-43a3-84f4-b43130fbc443', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:27:01', '2023-07-04 17:27:01', NULL),
('0acce8e0-59a8-4361-b10f-8bb92e337402', '90405088', NULL, 'activo', '7747e345-0c56-469a-981d-a677c4d7b2e0', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:25:43', '2023-07-05 10:25:43', NULL),
('0b167520-a535-41e3-8857-453e8258bffe', '77367770', NULL, 'activo', '148a6d36-9b25-4e03-b208-1245248f959f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:54:41', '2023-07-04 15:54:41', NULL),
('0bf9a6e3-3a43-4fee-980b-aee3e3d52684', '42747164', NULL, 'activo', '5185f803-8823-4cc3-b7e3-4e267a8c5555', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:15:54', '2023-07-04 12:15:54', NULL),
('0cb272f2-5240-453f-827e-a7c39bed8f82', '71578981', NULL, 'activo', '4ea4d514-133e-4ac6-8b31-3f58ab4237f5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:29:30', '2023-07-04 10:29:30', NULL),
('0d408fd5-4bd1-403b-b920-2bbcd705d955', '45529700', NULL, 'activo', 'd8bdf616-8f54-4e6c-b69d-acf4477e0950', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:51:53', '2023-07-05 10:51:53', NULL),
('0d9900a7-8707-4bc5-92ac-70dc09404aab', '81611050', NULL, 'activo', '6723c1ac-b19c-413c-b543-c9cbb66e41c2', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:16:44', '2023-07-04 16:16:44', NULL),
('0fd3ae83-491f-400c-9043-89010c027ae5', '90405088', NULL, 'activo', '84ef2cde-436e-48b1-803a-ace550c4ba03', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:23:28', '2023-07-05 10:23:28', NULL),
('1148d260-461d-407a-8c8f-99633bd99c53', '79034641', NULL, 'activo', 'd9134082-e0df-499f-8fc7-f384c365e14f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-03 18:19:42', '2023-07-03 18:19:42', NULL),
('120aeca1-ff2d-481a-bef8-7e54d7347190', '62518125', NULL, 'activo', 'f143797e-569a-4716-b8de-e4a2028979ad', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:14:23', '2023-07-04 12:14:23', NULL),
('12fec5bc-d50a-44c5-a1cf-675a638b6fd7', '77995339', NULL, 'activo', '998b4fe5-4393-4fc4-8ddc-395265975021', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:44:18', '2023-07-04 15:44:18', NULL),
('135d7ce6-d162-4028-8044-2e54021f6aff', '62837386', NULL, 'activo', 'c3f3c9f8-3934-4682-98be-13c1b6d96468', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:59:53', '2023-07-04 11:59:53', NULL),
('13c7a38f-b91b-40d4-8a0d-a5f3724b895d', '78358482', NULL, 'activo', 'fb745215-16d6-4e46-93e9-4aaff76ddbfd', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:42:51', '2023-07-04 16:42:51', NULL),
('15383159-7455-415f-a849-ff95822edadf', '79663076', NULL, 'activo', 'cbda667f-e834-470e-9fbd-0b09e78da07f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:39:29', '2023-07-04 15:39:29', NULL),
('153c86ea-ace1-4374-9700-0b0c09940a22', '61409462', NULL, 'activo', 'dc77273d-f921-4be7-825a-e3c52ea0fae6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:46:33', '2023-07-05 10:47:33', NULL),
('159a9c9f-41ab-4b42-ae6a-459a34144fa5', '62583779', NULL, 'activo', '78c52cb9-385c-4164-9259-f8431da5ed5a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-03 11:26:57', '2023-07-03 11:26:57', NULL),
('15ca67bb-79b0-4b63-ba5a-d0fd7feece74', '79434507', NULL, 'activo', '04e1396c-eece-4241-a49d-29c53537fe29', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 08:59:18', '2023-07-04 08:59:18', NULL),
('16481297-8fa2-473a-8c49-5230bbe20d75', '79391551', NULL, 'activo', 'd3786d3c-4d97-4fd9-adeb-903ba7088aad', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:29:42', '2023-07-04 15:29:42', NULL),
('170f89d8-12cb-4ab7-91a2-d2b89cb2c875', '76028790', NULL, 'activo', '60ee0e9b-6966-446c-a9b9-e0f8afd935ca', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:15:50', '2023-07-04 18:15:50', NULL),
('17b89e87-fbb4-4edd-8f3a-4db8b4c031c8', '61517309', NULL, 'activo', '356c129c-b54a-4bb5-8972-259e66504cff', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-30 19:25:32', '2023-06-30 19:25:32', NULL),
('17f68d08-ea93-41ee-b48f-67cb95ab0627', '61713675', NULL, 'activo', '12b6db68-5201-4de0-befc-bf0fbca78f0a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:36:38', '2023-07-04 11:36:38', NULL),
('1921bb71-bf43-4d27-b5e3-f90f890d3962', '63091886', NULL, 'activo', '124842af-c919-4569-9fd6-bb38d314c29e', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:57:06', '2023-07-04 18:57:06', NULL),
('19ad4f1c-f898-48e4-a704-6e04412288ef', '74671148', NULL, 'activo', '3f56cba9-8e06-41c4-9e13-7c94362ad49d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:08:11', '2023-07-04 18:08:11', NULL),
('1a505af7-8e77-4978-b2ab-1c62686e3154', '77443314', NULL, 'activo', '2821c1a7-bc71-477d-af7c-3831368074af', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-12 17:24:05', '2023-07-12 17:24:05', NULL),
('1a637b03-4809-47c0-9d89-530258e1a96e', '62552542', NULL, 'activo', 'a67fd23d-c916-4e80-935e-14f070c905e6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-06 15:44:58', '2023-07-06 15:44:58', NULL),
('1abaf8ae-b0b7-4040-bdf7-c07d5e0ab10a', '72158840', NULL, 'activo', '110c1ceb-8e7d-46b8-a06c-70a05babcf52', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:06:31', '2023-07-04 12:06:31', NULL),
('1b86c0cc-534e-4117-844f-9468cf7b27ab', '75719369', NULL, 'activo', '16e3476e-039c-4c55-aaad-f98d13f31bb5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:53:04', '2023-07-05 10:53:04', NULL),
('1c1a797f-fe54-49e9-946c-578ebacfeecc', '60425112', NULL, 'activo', '34bd3515-b5ff-405a-b96c-ff262e596be3', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:08:36', '2023-07-04 12:08:36', NULL),
('1c69b64a-fc0a-4160-b346-f7e98bfb5af3', '70388313', NULL, 'activo', '17b6f1f8-c943-421d-9d3c-a25de5cffca4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:52:15', '2023-07-04 17:52:15', NULL),
('1ca8ee1a-28ec-429d-a6bc-e9e888734ddd', '46644844', NULL, 'activo', 'd9d5892c-6571-497d-8b96-60ff81bc0eb9', '887a0cdc-351b-4601-b53b-082e873ee860', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-07 11:12:22', '2023-07-07 11:12:22', NULL),
('1d0920ef-04bb-44df-bfd4-de1e2dd4b704', '61822451', NULL, 'activo', '48636bd4-4ddf-481c-97f0-708616ba8e8f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:53:51', '2023-07-04 17:53:51', NULL),
('1ddb4765-5755-433c-9f0a-f5cf15236cf3', '71474476', NULL, 'activo', '6632adae-cf9d-4a96-a3eb-0f2a3a282009', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:42:46', '2023-07-04 16:42:46', NULL),
('1e462fab-32ec-4a84-baa8-bccb355de144', '75585939', NULL, 'activo', '409a3597-f307-4b69-84f4-86ad76187297', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-29 18:55:28', '2023-06-29 18:55:28', NULL),
('1f42b37e-8197-4ab5-9bbf-9c8972b2c27c', '81596957', NULL, 'activo', 'fe361a2f-617c-4bf4-82f3-3663308e7b6a', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:58:14', '2023-07-04 18:58:14', NULL),
('1fc12722-c977-4531-9e5a-c43887fd7d87', '63193549', NULL, 'activo', '8a94e27b-c9e4-489b-837c-d0a869306861', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:00:55', '2023-07-04 16:00:55', NULL),
('2065ea95-426e-47d0-a172-96e1d3d904d7', '78172382', NULL, 'activo', 'e3b494f5-8c03-4968-b2bc-7aadcc3a2047', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:05:53', '2023-07-04 16:05:53', NULL),
('20befc75-a03b-4b12-9bc7-d4766869c80d', '62640376', NULL, 'activo', '8fa1c1f5-e5a0-49a4-b8d2-69bb12446ce7', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:04:47', '2023-07-04 12:04:47', NULL),
('20e2d961-2e7c-4412-ad6c-57f4b2f98db1', '80948356', NULL, 'activo', '79cee2a6-d3dd-4768-86ea-1204d8ddebf1', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:31:49', '2023-07-04 12:31:49', NULL),
('20f6a072-3fdf-4811-88a7-4f89c1cddc38', '75563218', NULL, 'activo', '60c888b8-deba-4b4f-8c45-236205a5d0f8', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:47:38', '2023-07-04 18:47:38', NULL),
('2206ef5a-a284-489b-8846-95ebd4569ae1', '63688703', NULL, 'activo', '57d12366-d911-4d48-ada7-cc5841da9cb7', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:44:25', '2023-07-04 16:44:25', NULL),
('23dcc97b-ce3b-4a38-9dc5-6655d5a26f2b', '62759129', NULL, 'activo', '1325b0ad-ae62-47fb-ac77-f38e2371f0f9', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-13 18:53:03', '2023-07-13 18:53:03', NULL),
('23e6f6cf-d965-4505-846c-6543220cd0c2', '79328715', NULL, 'activo', 'd3369c20-3b75-4fd3-b710-4afde2eb9d20', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:31:22', '2023-07-04 12:31:22', NULL),
('241f37cf-1335-4d99-a5ca-2ab5f9485f07', '77368166', NULL, 'activo', '02224b4b-9f0e-4dcf-820d-ee21b6bfafa8', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:10:26', '2023-07-04 19:10:26', NULL),
('25c0fa57-78e9-4dd6-9179-6726ba5a0a4b', '90290087', NULL, 'activo', '6ef69d98-3bb7-40bd-b7c7-985aa894ce77', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:26:54', '2023-07-05 10:26:54', NULL),
('25f2b501-33b5-4647-84d9-820885576416', '63013888', NULL, 'activo', 'eee65dac-972f-4db5-82eb-a0acd56d4562', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '637d966f-d7de-4adb-bf79-5dfbbb21bd4c', NULL, '2023-07-04 17:27:40', '2023-07-04 17:27:40', NULL),
('26123574-aa8b-4f12-a25a-87dc30c21c13', '79038729', NULL, 'activo', '13ce7c78-7f0e-459e-a7a2-a84a52c29663', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-03 09:33:54', '2023-07-03 09:36:21', NULL),
('263aab28-cfd2-4f59-bc6e-fd29b8eeb1ed', '70114303', NULL, 'activo', 'b81a0e92-a4bb-44c6-9c5c-8f6d26c085c6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:55:07', '2023-07-04 17:55:07', NULL),
('263f43fd-767a-4ca8-b35b-aef8590c2ab3', '61080865', NULL, 'activo', '6b0b1dc6-48ca-48c6-bdd3-324b96892dd0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:13:50', '2023-07-04 11:13:50', NULL),
('269ac0f6-7ac4-44ec-ba54-b491e305d602', '81610837', NULL, 'activo', '28991642-c8ef-403a-8fa4-796d01239931', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:59:38', '2023-07-04 15:59:38', NULL),
('274fa94d-0cba-45dd-bfa8-c21542eac64a', '42235074', NULL, 'activo', '526da515-fb44-4a70-b86d-1e2f53c4fd8c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:41:29', '2023-07-05 11:41:29', NULL),
('27a2e75e-5459-48d5-9c99-a8e4fa69b4ba', '75247204', NULL, 'activo', 'ee18d2cb-2068-49c9-9e38-26ae617a7564', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:51:20', '2023-07-04 10:51:20', NULL),
('27b43add-a9d5-41d5-b035-e728038cdef4', '62015023', NULL, 'activo', 'a2bfb271-7597-40c1-af12-3a3016ddbfd4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-30 19:33:46', '2023-06-30 19:33:46', NULL),
('27e00b99-8c1c-4fe5-b7c9-3956435806a3', '62838152', NULL, 'activo', 'be2e3cd2-4e61-4cf9-932d-41f2ef642ec2', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:10:41', '2023-07-04 11:10:41', NULL),
('2952bc12-9da8-4b4a-bbd0-004dad8dd288', '79124074', NULL, 'activo', 'f065d98c-61b5-4a5f-8671-3b1f1c95666b', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-12 10:15:51', '2023-07-12 10:15:51', NULL),
('29c7c573-5cca-4ac1-a380-dcca958f2496', '61822327', NULL, 'activo', 'a6241145-541f-4192-be0a-1c9ea883a874', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:41:33', '2023-07-04 16:41:33', NULL),
('2a01cb3a-eb65-4808-9391-cc620273d975', '90334737', NULL, 'activo', '699ef119-61aa-4b16-a99f-a1f8e48005c8', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-06 18:08:10', '2023-07-06 18:08:10', NULL),
('2a2b1a42-df0b-4a76-b218-1978894d8626', '62656776', NULL, 'activo', 'b9dd0d49-b15f-4e47-8b67-06fe0ecb3014', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:43:29', '2023-07-05 10:43:29', NULL),
('2a67519f-5be8-4d2c-9fee-fd65fd309166', '74691430', NULL, 'activo', 'f46b2222-d22a-4a33-9ace-7b1852c8ed83', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:03:51', '2023-07-04 12:03:51', NULL),
('2a8daa9b-8396-413d-bc2f-9832d1bcd3b5', '74054141', NULL, 'activo', '7d2fa5e8-7fe2-48b1-b2fb-2813d4e0669e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:38:25', '2023-07-04 17:38:25', NULL),
('2ab10a22-0614-4434-a239-32455088bbfc', '79580349', NULL, 'activo', 'da27e068-cb27-4117-b069-7118e84014bb', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:40:48', '2023-07-04 15:40:48', NULL),
('2b002f10-a5b7-4f9b-a646-3e49f05ecd4b', '72388098', NULL, 'activo', '5d21c6cd-a434-4cd2-a099-08bd74633710', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:21:47', '2023-07-04 11:21:47', NULL),
('2b0a3c19-73ff-4d60-b019-139b5d143907', '61314725', NULL, 'activo', '2743947d-1571-4269-88cf-acf293672dd0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:22:40', '2023-07-04 11:22:40', NULL),
('2b489170-e395-4fd1-862b-59e11ea8a6ec', '41233433', NULL, 'activo', '38b9389d-267a-44f7-861b-35d1c5082543', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:06:54', '2023-07-04 18:06:54', NULL),
('2cc2d55e-d14d-4909-a27a-5a81d96831cc', '61429342', NULL, 'activo', '12d2bf35-04ae-498b-bafd-5090c07f35ca', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:28:09', '2023-07-04 10:28:09', NULL),
('2d183ae4-079e-49bb-9dfb-44ce31de2861', '78426842', NULL, 'activo', 'f8c79973-5d78-4d15-938f-2076c3e077d9', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:23:14', '2023-07-04 19:23:14', NULL),
('2d277759-fec7-4661-8d07-7aa16beebf65', '76824940', NULL, 'activo', 'e9780cb5-ca28-46e0-b3fd-1176dca72e40', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-01 11:49:45', '2023-07-03 10:13:22', NULL),
('2e8ea8ff-097e-43a7-94a2-77a330da3f34', '79338412', NULL, 'activo', '1f5c67d5-2993-4e11-a008-791a83bebf12', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:45:42', '2023-07-04 15:45:42', NULL),
('2ea2bb29-df43-4468-ae77-d6cf55160ba1', '61155396', NULL, 'activo', '70c790e3-ff2a-4479-a8b3-a436b452e3ca', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-03 09:20:45', '2023-07-03 09:20:45', NULL),
('2ec7cf25-ac32-4f75-a7cc-f9b32b0224de', '73604617', NULL, 'activo', 'de735a95-fcf9-44b6-b6bc-68ab0631a87c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:47:04', '2023-07-04 16:47:04', NULL),
('2f0d23af-bd7e-4774-87d5-8afdfe656b2b', '62423730', NULL, 'activo', '2b63e2f4-bf3a-4e57-b39c-39e013723e45', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:48:21', '2023-07-04 10:48:21', NULL),
('2f1c0333-0f41-46a7-a884-7f4f296ad03b', '62043083', NULL, 'activo', '1157d623-857e-48c6-81f7-62b117960bd7', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:02:03', '2023-07-04 11:02:03', NULL),
('2fa806c2-ba59-400f-95bd-bc04d5a0fc87', '90600968', NULL, 'activo', 'f5bd5d54-6165-4d35-805e-1cf7436a0d78', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:57:48', '2023-07-05 10:57:48', NULL),
('30690342-815c-4fac-87bf-fbf023a45964', '61191384', NULL, 'activo', 'dbec2a02-1bc6-4810-9be2-25dbd096f3e0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:56:04', '2023-07-04 17:56:04', NULL),
('317941a3-a1de-4e5a-8956-479d85b2ce3e', '77726069', NULL, 'activo', 'd3c2d6ce-872b-479e-8397-9d266ca5de84', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:38:28', '2023-07-04 12:38:28', NULL),
('31c880fb-a1e3-4713-8210-b231b6be10a6', '61314371', NULL, 'activo', '20421e18-e87d-4ec8-bb00-4c76dfe4d923', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:27:14', '2023-07-04 16:27:14', NULL),
('321b7685-8598-4e7f-b85e-8649c4395c79', '61233075', NULL, 'activo', '5cd32fdb-64f3-43c9-872d-c4b0148823c8', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:00:29', '2023-07-04 11:00:29', NULL),
('3426186e-f83c-4fde-9dcf-ccbb825f0544', '78818058', NULL, 'activo', 'f8344c99-22e2-4f81-966c-3cfcbfb4a515', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-11 18:56:30', '2023-07-11 18:56:30', NULL),
('346c5d3b-3a9e-467f-a203-caf180feedc3', '61314594', NULL, 'activo', 'e2f1cf76-d4e6-457d-ad0d-7b717cbe41b0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-13 10:56:29', '2023-07-13 10:56:29', NULL),
('35aeca80-c5c6-4483-991c-43a3ef89d5a0', '61409257', NULL, 'activo', '3f2f6c7a-a5d6-4921-812f-852aaa5ba164', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:56:14', '2023-07-04 10:56:14', NULL),
('364d9633-e941-44b7-8e3f-8a96da107112', '81046257', NULL, 'activo', '8914039a-e882-4ff8-a18f-e266885e8e5f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:31:13', '2023-07-04 15:31:13', NULL),
('36e9f3ea-fd52-4644-8bd8-af768cf875b8', '75426804', NULL, 'activo', '693fe4aa-11b8-4d4f-b129-1657d47f498f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:52:51', '2023-07-04 10:52:51', NULL),
('36ef8333-a44a-43bb-a65f-d486f839bd3f', '79228867', NULL, 'activo', '2205245f-ef4a-4756-b8b0-b9addf393097', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 09:54:42', '2023-07-05 09:54:42', NULL),
('383755f7-bc40-4028-9f1a-6da76d85247b', '61517188', NULL, 'activo', 'a4db601a-7a94-435f-b8ce-1f939934ea25', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:46:01', '2023-07-04 18:46:01', NULL),
('384f9c30-3adb-44c8-9675-6cdc5e8839ef', '71628117', NULL, 'activo', '634ca05d-a856-442b-acbf-db1931f7c48e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:12:57', '2023-07-05 10:15:49', NULL),
('38998857-0de8-49d8-a255-81f6a61ba761', '79152303', NULL, 'activo', '4e7f184d-2e3d-4176-ad6e-19b794bc2159', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:52:16', '2023-07-04 15:52:16', NULL),
('3a158f67-4e6f-4d9e-8e06-c9a8315e7f29', '72603502', NULL, 'activo', 'ad2e647a-8cad-427e-b6db-c25437867233', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:16:53', '2023-07-04 11:16:53', NULL),
('3ad99995-1675-497b-962a-06286e83c99d', '81394916', NULL, 'activo', 'f1baef24-4c10-4979-b30a-3f4007980889', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:57:15', '2023-07-04 15:57:15', NULL),
('3cf3999d-85b1-499e-b9b6-a9008ee28c0d', '61409147', NULL, 'activo', '8d29a1f3-0246-44ea-83ee-fdeeb39d225e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:59:50', '2023-07-04 18:59:50', NULL),
('3d0a6564-9d88-4c94-be65-4f3fdd14c198', '63092027', NULL, 'activo', '7a9d6ad6-aabb-4aa5-b042-bdd8d3ff82b6', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:08:42', '2023-07-04 16:08:42', NULL),
('3d284775-10e6-4b94-87c2-b9a41fdaa9d8', '62867086', NULL, 'activo', '064211b9-029b-417e-bcff-4545ee8b0342', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:44:16', '2023-07-04 17:44:16', NULL),
('3d414a38-4f40-464e-a591-62a89ba1f427', '76510665', NULL, 'activo', '9782a86c-6aa1-4cd5-8ca2-2bcdde057e2f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:50:48', '2023-07-04 16:50:48', NULL),
('3d4eeb67-1dc5-4fe3-ab0d-9f8d1e01f3c5', '43455767', NULL, 'activo', '35e4fb93-ab0e-4f52-9d59-82995d7dae4e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:49:41', '2023-07-04 10:49:41', NULL),
('3d932244-7a28-4a48-ba84-6c7704739732', '31653853', NULL, 'activo', '7d2dc991-9ffd-4eb9-9863-62a845f900cf', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:50:02', '2023-07-04 18:50:02', NULL),
('3e608e16-75b7-4c40-acd2-602cc3fe7e23', '62354493', NULL, 'activo', '7d70f299-ba55-43e4-bd30-3d7ff72bcd59', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:15:29', '2023-07-04 11:15:29', NULL),
('3ed5afa6-7bf1-4b40-ba93-d75e9549df4d', '62286958', NULL, 'activo', 'cf451608-54f7-491e-9339-1878549a2082', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:31:06', '2023-07-04 17:31:06', NULL),
('3f9d840f-2784-4923-9630-3e749ab2345f', '76243971', NULL, 'activo', '19195687-c64a-481f-9ea5-112a0b260cd2', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:50:34', '2023-07-05 10:50:34', NULL),
('40db7945-16d8-4300-9860-5bd9dc263e8e', '61191502', NULL, 'activo', 'c9d46563-9256-45ee-8959-46c6295d3aab', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:51:09', '2023-07-04 17:51:09', NULL),
('40e17583-5f90-4aff-9531-b9acaeaf407d', '75791820', NULL, 'activo', '84599c2d-3318-48f4-96e0-0e0d7abca2f3', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:48:18', '2023-07-04 10:48:18', NULL),
('414a1e04-a607-4d41-bbd7-4bf205c17986', '75632539', NULL, 'activo', '9de08a0d-6d2f-4a8a-8239-fefd948b7b61', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:11:09', '2023-07-04 17:11:09', NULL),
('4175c156-f491-4501-9dad-42a2ca676424', '61713472', NULL, 'activo', 'ee701b7d-e914-40a4-a583-39ef7fe435be', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-29 18:58:53', '2023-06-29 18:58:53', NULL),
('4191dcd6-e075-42f7-b408-5699aeeeee6b', '72659721', NULL, 'activo', '9925ccdb-5856-4793-9764-33386edfca9e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:27:09', '2023-07-04 18:27:09', NULL),
('42baad27-c008-415d-acb9-2977d31767b8', '78473581', NULL, 'activo', '7b3b47a4-7740-4dd7-a7e8-c3ee1bc63f37', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:17:42', '2023-07-04 19:17:42', NULL),
('4302c339-b40f-4fe7-9b69-e6de40b7dfef', '72867379', NULL, 'activo', '8e0adbc2-9cc9-4b88-81bd-71003a870e53', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:11:30', '2023-07-05 10:15:08', NULL),
('4396a263-15d7-413f-bc30-5dd0a753f506', '61119781', NULL, 'activo', '72d54d7c-a33f-4ce8-8704-480263346942', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-17 10:13:10', '2023-07-17 10:15:15', NULL),
('43e64e70-1d87-4caf-b07d-1e3888b79342', '71538206', NULL, 'activo', '1b6c2d0f-b6cb-4808-81df-9a928a73f4a0', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:20:10', '2023-07-04 10:20:10', NULL),
('442f7206-0389-4d9e-b2f2-3769708dffd2', '90910399', NULL, 'activo', '598ff13b-b43b-4073-b7ab-86aa05bc2ea7', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:29:46', '2023-07-05 10:29:46', NULL),
('445b0d4a-0a72-49e4-9cfa-ea8947673827', '78536957', NULL, 'activo', 'aa7f913c-26d3-4952-8a72-d82fe2f8d3c3', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:55:13', '2023-07-04 15:55:13', NULL),
('4487f60b-3d98-4690-a5ec-fbff642f5bda', '81579638', NULL, 'activo', '6ce413f8-232b-4635-ab49-3e131ac06baf', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:41:28', '2023-07-04 16:41:28', NULL),
('449cde94-ce38-4fb4-8a51-52bc22caa801', '78850422', NULL, 'activo', 'bcf10627-877f-42dc-a573-f17272b3975d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:23:26', '2023-07-04 16:23:26', NULL),
('44aeafb6-2eb5-4805-90c4-35bc95a62061', '71820033', NULL, 'activo', '258e068f-266f-4cbd-a738-fe5783d88883', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:09:05', '2023-07-05 11:09:05', NULL),
('45b0770f-df7e-4245-ba07-4481f00c573a', '76670508', NULL, 'activo', '55587c4c-6004-469a-b4bb-7c9e2a8aed9b', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:02:48', '2023-07-04 18:02:48', NULL),
('466c95cd-9748-475e-ba07-4ebbfbf448f7', '77477125', NULL, 'activo', '554d0bcf-df97-4e12-966e-9f402cebce45', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:00:59', '2023-07-04 19:00:59', NULL),
('467c3729-01e3-4b64-a85e-0fc291263534', '62230009', NULL, 'activo', 'b9cf9e11-909f-43e7-b45e-e3254d50947a', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:00:56', '2023-07-05 10:00:56', NULL),
('468a52b6-fa10-4fc8-9d67-d71373e85a42', '78317258', NULL, 'activo', '61d472ff-9204-4a3d-b005-de2e63efb1d9', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:17:58', '2023-07-04 10:17:58', NULL),
('468bb8ce-04da-4c0b-8598-a0a3b4cec26f', '78325904', NULL, 'activo', 'a2ab1e78-38ee-497e-b776-18fc8942fff6', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 09:59:17', '2023-07-05 09:59:17', NULL),
('46fb0d1e-7e9a-4b36-b3bd-3067955df189', '60983856', NULL, 'activo', '10b7d572-23b4-449c-b3d4-ef267748f101', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:15:50', '2023-07-04 17:15:50', NULL),
('4874c178-ac13-4c2e-9581-957cfbf4353d', '62656906', NULL, 'activo', 'a9235efc-cb0b-4e7e-abd5-06ef4d800afb', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:42:36', '2023-07-04 17:42:36', NULL),
('498c8578-5525-4748-b0f2-d3ccf2c24155', '75230393', NULL, 'activo', 'e5f5ec70-7b84-415d-ab1f-56e8bb6c9a79', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:54:23', '2023-07-04 18:54:23', NULL),
('499a0e05-37ab-4785-a817-2c8852e7d5f8', '71518381', NULL, 'activo', '3138bb79-dace-4c04-a55b-cce256c3de26', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:34:28', '2023-07-04 18:34:28', NULL),
('4a10e215-c439-47db-bae7-5e33f8ac3b87', '62319151', NULL, 'activo', '91ce8813-183d-4aa8-b49e-fb6c3b78d7ba', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:59:31', '2023-07-04 10:59:31', NULL),
('4bb8b232-9ba7-4243-88fb-84ed25cc0b62', '61713734', NULL, 'activo', 'a60eabdc-ffde-458a-89e6-1d3f697d1a4d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', '4bb8b232-9ba7-4243-88fb-84ed25cc0b62-1687453232.png', '2023-06-22 10:30:46', '2023-06-22 12:00:32', NULL),
('4c091eeb-3b45-4887-ba76-89dbd21de342', '79782755', NULL, 'activo', 'cc134b93-311f-4fde-b3f9-05b2622232be', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:37:06', '2023-07-05 10:37:06', NULL),
('4c10fc45-ea58-422d-b7dc-4a0fe6a25fe1', '60957479', NULL, 'activo', 'c72f2b97-e475-4457-8881-3228bf164dbe', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:43:52', '2023-07-04 16:43:52', NULL),
('4c561f25-b9fd-4ab3-b471-0f2797c23d35', '60957541', NULL, 'activo', 'ac22152d-8515-4fc7-96c5-70674244ce3c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:39:46', '2023-07-05 11:39:46', NULL),
('4c735c47-81e6-47cd-affb-f990abe79ad3', '75756658', NULL, 'activo', '6c1cc2c4-4cbf-426a-bcf5-61091254bda2', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', '4c735c47-81e6-47cd-affb-f990abe79ad3-1687328137.png', '2023-06-21 01:13:12', '2023-06-21 01:15:37', NULL),
('4c925972-18a8-42a9-89ff-02b22dcb3d24', '77882134', NULL, 'activo', '84d24923-10c4-458b-a2ed-e168a1fb6a4d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:34:21', '2023-07-04 12:34:21', NULL),
('4cb7e45d-007f-42ed-859d-613f51c56564', '60942995', NULL, 'activo', '167a62a1-c63c-4682-a4a7-900298bd7211', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:12:55', '2023-07-05 11:12:55', NULL),
('4cc1dbc8-6f90-4ea3-b5b9-551efee4acdc', '63528003', NULL, 'activo', '8f8ba1da-abfc-415a-b607-c58e9a31f6fc', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:02:09', '2023-07-04 16:02:09', NULL),
('4cc8ee27-d457-4cbf-9706-759aedd15287', '63193489', NULL, 'activo', '95981a59-aa74-4cb7-9e4f-837506237270', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:03:38', '2023-07-04 16:03:38', NULL),
('4dc8bba8-f938-43e0-b548-634dbb652ba4', '61314539', NULL, 'activo', 'ae7b194c-aa07-42f7-b9a6-ab631019a9f2', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:11:26', '2023-07-04 18:11:26', NULL),
('4e6f09b9-856f-4d54-8e4a-a4695e0646e0', '74266732', NULL, 'activo', 'd800e9f9-6781-4fdf-b590-f9841e3fa2a4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:26:01', '2023-07-04 12:26:01', NULL),
('4e91aaca-34f1-4e41-94a8-61a703c2a5f3', '62552640', NULL, 'activo', 'db98525c-584a-4485-8f45-165a405cce59', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', '4e91aaca-34f1-4e41-94a8-61a703c2a5f3-1688659672.jpg', '2023-07-04 11:48:27', '2023-07-06 11:07:52', NULL),
('4ec99758-b9be-42c3-af3a-2acf354b6c44', '81602767', NULL, 'activo', '518e1188-ae48-4394-bf2c-09e8cfe4a99b', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:39:24', '2023-07-04 15:39:24', NULL),
('4f17ad21-47f9-4917-a0b2-6c903e345cf8', '90275268', NULL, 'activo', '606ecbd1-1e27-4fcf-80e2-63e5f57d3123', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:59:12', '2023-07-05 10:59:12', NULL),
('50127271-dea9-4bcc-a4ad-f98212b1c9c9', '78122435', NULL, 'activo', '44b7777b-94fb-459a-ad72-9ed1d335f913', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:02:10', '2023-07-05 10:02:10', NULL),
('508b4022-a13e-4539-973e-6096818579e1', '91108269', NULL, 'activo', 'd06de41f-efaa-4b92-8fbb-723d0aeff41b', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:56:27', '2023-07-05 10:56:27', NULL),
('509b1865-9911-44be-8942-379709342adb', '71889500', NULL, 'activo', '9ccc246b-30ee-4a7d-879a-6ee91965d810', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:03:50', '2023-07-04 11:03:50', NULL),
('50fca020-2f72-457e-b05f-b55715d9db71', '46533557', NULL, 'activo', '6ed66600-8ec4-40ce-b70b-10a1477f7023', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:10:33', '2023-07-04 12:10:33', NULL),
('515c7a8f-bcc1-4231-9558-0544280ccfe1', '62514508', NULL, 'activo', '6912e1b9-4bac-4839-984b-65f713c887d3', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:53:47', '2023-07-04 10:53:47', NULL),
('51a8c28a-7582-4436-a695-feb5f33c7fb6', '75339125', NULL, 'activo', 'bc8b22af-c34b-41a0-8cd4-dbd4ee1f1233', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-30 19:22:23', '2023-06-30 19:22:23', NULL),
('51fdc68c-b95b-4535-b92d-1897bfb5f012', '63193450', NULL, 'activo', '2d64ea01-5fde-46cc-9dd4-78f318a18f4d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:02:59', '2023-07-04 10:02:59', NULL),
('52929329-ca45-49d0-88f0-65fa5fe27551', '40614223', NULL, 'activo', '9d252fde-eb4f-42a9-be5f-b7fdecaf6c50', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:45:00', '2023-07-04 10:45:00', NULL),
('52ae371f-b80b-4de9-8071-c1b793600a51', '74749924', NULL, 'activo', '46a6196e-4e89-4200-98eb-6feb28a5be42', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:56:36', '2023-07-04 11:56:36', NULL),
('53552e14-6d10-49f5-bd91-478e0fdd4001', '71562950', NULL, 'activo', '4ee83d91-570d-4197-81ce-41f408bfaf91', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:52:10', '2023-07-04 11:52:10', NULL),
('54027b40-f26a-4ef5-ad55-672d15418884', '78418164', NULL, 'activo', '6aceabe2-51e6-4105-a583-a50c572c3c01', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:21:46', '2023-07-04 16:21:46', NULL),
('5448608d-9d97-4d98-8bf6-9244ab3b4c41', '76346740', NULL, 'activo', '4a1a49fb-c306-4b7d-857f-6337e8b6aeb5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:08:37', '2023-07-05 10:13:46', NULL),
('546b3640-6c92-4ce2-a737-b698d7719e36', '78799886', NULL, 'activo', '0cfa0808-4fff-4573-b778-f74a3c3d779e', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:30:43', '2023-07-04 15:30:43', NULL),
('54a80c1b-48ea-4f55-8389-4c90a48e6cd2', '77553867', NULL, 'activo', '2389fe88-7191-45e7-a603-fc7bcae95c22', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:10:31', '2023-07-04 10:10:31', NULL),
('5532b755-ba8a-44e8-8c62-4272fd30a48e', '62287280', NULL, 'activo', '9fc2d8d6-c26e-47ac-9f97-a338e2fbb57a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:18:46', '2023-07-04 11:18:46', NULL),
('560f5381-5e9b-4f55-81f3-3f732b2d715e', '62896395', NULL, 'activo', 'f87d9916-ce1c-4a04-ae0f-2f45e8a1c58a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:44:54', '2023-07-04 16:44:54', NULL),
('56f44ca8-f4cc-49ed-a658-cccecbd27cb4', '72288154', NULL, 'activo', 'e7c0055c-4ed4-4a3f-8dc3-f7cd74119052', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-17 15:48:39', '2023-07-17 15:48:39', NULL),
('57125cf4-6a61-47fd-9a78-e1fd19ba11a4', '79073923', NULL, 'activo', '90b50624-8012-431d-8bb3-e4cd065f60c5', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:07:21', '2023-07-05 10:07:21', NULL),
('5815b432-2252-4533-b24a-f257f684dcd7', '62837399', NULL, 'activo', '09306e9b-2dc3-44b8-bbbf-f1d77e8f6c46', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:52:40', '2023-07-04 18:55:00', NULL),
('5866bc14-0811-4914-b70c-3c82a8afa525', '62014785', NULL, 'activo', '42c95df0-0935-45fc-b094-a451786c5a76', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:50:39', '2023-07-04 17:50:39', NULL),
('58ed5fd5-3e8e-45e1-94f6-d6a33f2dbe00', '76167742', NULL, 'activo', '6a0819a6-76a7-4f69-94b3-f4b8ef3153f9', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:29:46', '2023-07-04 10:29:46', NULL),
('59637a97-4772-4583-bb7a-7f0ca9e1f7e7', '61957899', NULL, 'activo', '9e0b2ce4-d055-4e13-8b8b-52a514aafb88', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:35:46', '2023-07-04 11:35:46', NULL);
INSERT INTO `estudiantes` (`id`, `codigo`, `birthdate`, `estado`, `id_persona`, `id_apoderado`, `id_programa_academico`, `id_ciudad`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
('5a65e57e-6ad6-435d-b9e6-d65f4199366b', '62043075', NULL, 'activo', '546a9a68-6c00-425d-acfb-e0a429fac7c5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-11 17:52:25', '2023-07-11 17:52:25', NULL),
('5a7cb309-d693-42e2-bb6b-13de5bc2d797', '73388753', NULL, 'activo', '8f887817-e84d-43ab-a787-7c5c8b454e86', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:13:35', '2023-07-04 10:13:35', NULL),
('5af73596-7f2b-4a50-844c-adb54b17d711', '61080751', NULL, 'activo', 'a6426812-84f1-4152-8183-cf40feb8a87a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:45:15', '2023-07-04 17:45:15', NULL),
('5ce13897-ee9a-4675-80aa-eb37e67ee90b', '76315668', NULL, 'activo', '9248d1d1-0692-4b8d-8cd8-23d28aaf87b1', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:05:33', '2023-07-04 12:05:33', NULL),
('5d73c77f-ec89-4971-9084-066aeb6f38c5', '60400677', NULL, 'activo', '574b18bc-43d4-4e32-bd30-0d6a1842e4e5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:20:27', '2023-07-04 12:20:27', NULL),
('5ef6f545-ac34-4507-92b8-c13e2d27c814', '79622822', NULL, 'activo', 'b3a4195c-d7d9-4a3c-89fc-15f133853344', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:38:13', '2023-07-04 15:38:13', NULL),
('5ff53c37-e51e-4b2b-89b1-8ae2b211c8ed', '62867119', NULL, 'activo', '2295a55e-7eb4-44e3-8d7d-fab386b70c9c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:59:16', '2023-07-04 17:59:16', NULL),
('6080266d-4778-49ba-b493-6eb18847a6d9', '61155729', NULL, 'activo', 'eec2e84c-c736-41ca-8ffd-0cca24ce62a1', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:52:39', '2023-07-04 18:52:39', NULL),
('608b8043-01bd-42c1-a942-1ee844211820', '63688798', NULL, 'activo', '8b05f51d-e1d7-4837-9d9c-40f279b4d268', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-12 15:41:12', '2023-07-12 15:41:12', NULL),
('60a9e7a9-7436-4212-89b6-3c56aa726219', '61298726', NULL, 'activo', '97e27954-929f-4738-91d5-d25f5f29e577', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:54:07', '2023-07-04 17:54:07', NULL),
('60e801ae-e0c1-4621-8823-c656fb754f04', '81138802', NULL, 'activo', '4f8e7168-e451-4dc9-b25c-80bcadb3b313', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:04:30', '2023-07-04 19:04:30', NULL),
('639267f2-115f-425f-99c5-6be4720022d4', '72031877', NULL, 'activo', '85722c6d-5535-4e66-8ea8-e40dbbcfb19c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:18:14', '2023-07-04 17:18:14', NULL),
('63bc4adb-61c3-498c-87f3-f8ee378e2d5f', '72570307', NULL, 'activo', '9b8b15d6-32dd-47db-9e1b-ff675aff44e2', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:24:47', '2023-07-04 12:24:47', NULL),
('6414824a-2ff9-4001-a0a4-f255afea330f', '63014040', NULL, 'activo', '66bbdcde-e8ae-4a71-a531-9223479f11ba', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:08:06', '2023-07-04 19:08:06', NULL),
('648d0e00-a926-42ce-900c-42fa8b6051d9', '81596962', NULL, 'activo', '7c0470b6-0bb0-4081-aeed-a9ac986e4557', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:59:30', '2023-07-04 18:59:30', NULL),
('64927d20-4624-495a-8638-183587f0e452', '81611073', NULL, 'activo', '7dbd2819-a9f6-49b4-a7fe-b55b9e4b917f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:53:48', '2023-07-04 18:55:48', NULL),
('651602d3-5e94-4b27-b4c0-59ed879e401e', '90256480', NULL, 'activo', 'fbd0ca63-b98b-4de6-9b5e-f3fdada2119a', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:20:59', '2023-07-05 10:20:59', NULL),
('653bff03-7ea1-4dda-858f-9423953d9907', '61461990', NULL, 'activo', '0c60de46-5a58-4624-ad80-cd361be47f23', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-18 10:04:52', '2023-07-18 10:04:52', NULL),
('6620b364-66b6-4612-b0d5-dd78216e935f', '5829604', NULL, 'activo', '6529dd01-c7e6-4b6e-8aa3-67f8604dfae0', '887a0cdc-351b-4601-b53b-082e873ee860', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-14 18:48:01', '2023-07-14 18:48:01', NULL),
('662644b6-3c18-4ced-9a9a-d330d0ab2f3b', '42559403', NULL, 'activo', '690e8106-13a3-476f-9b5f-9b115d1a2804', '887a0cdc-351b-4601-b53b-082e873ee860', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 16:41:02', '2023-07-05 16:41:02', NULL),
('663e0e85-dcee-425f-a2e3-f7227ccc2793', '79038729', NULL, 'activo', '769064c3-665c-4a66-8374-3b1e5a96a595', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:54:12', '2023-07-04 15:54:12', NULL),
('6673031d-93f2-4219-9907-2543643bc801', '78227152', NULL, 'activo', 'c2eea40d-b326-4187-84f4-e7dcf21a72ce', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:40:02', '2023-07-04 16:40:02', NULL),
('668314f5-c79c-4aaa-a8ab-f5ef3de34dd5', '78313569', NULL, 'activo', '1240422d-3af2-4651-9adb-f8bdd9638d3c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 18:30:05', '2023-07-05 18:30:05', NULL),
('670530ae-92be-4cdb-b49a-0c15676203b0', '62758909', NULL, 'activo', '0b90930f-67b0-4a45-b8c8-2a892387b322', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:33:33', '2023-07-04 17:33:33', NULL),
('6734cd53-6009-483d-a62a-67d35ddabf96', '61429260', NULL, 'activo', '5b735042-1c00-479b-891b-6a7bc0355a5a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:57:14', '2023-07-04 10:57:14', NULL),
('67a0c334-b1ea-43bc-ae26-291d5a51d7b4', '62014868', NULL, 'activo', '7db67c35-92b0-498d-b9dc-6645a27a0d21', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 15:26:50', '2023-07-05 15:26:50', NULL),
('67f7439d-8b83-4384-b6b3-fe02f8e9bcea', '75442348', NULL, 'activo', '2a96853d-b5e1-4f53-a356-0392ff45b0e1', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:18:46', '2023-07-04 17:18:46', NULL),
('6845e7ab-3448-4785-9fc5-6262e5da4303', '62354749', NULL, 'activo', 'bbd5d37e-fcb2-4b57-ac17-2b4eaf30342a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:46:01', '2023-07-04 17:46:01', NULL),
('68a309b8-32d6-48e5-a8a7-0a3aec95f98f', '70500690', NULL, 'activo', 'fa1d963b-c61c-403a-9bf7-8b53fc396c2a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:49:46', '2023-07-04 17:49:46', NULL),
('68d93b6a-da8a-4db6-b24f-eca1c6d84fb5', '61233268', NULL, 'activo', '9a546816-cc82-4f56-a393-38ea2038d3c2', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 18:52:07', '2023-07-05 18:52:07', NULL),
('68f44457-18a2-4447-b443-44c0621dbd11', '61880513', NULL, 'activo', '130b6043-b07a-4b09-9856-fd0d60d4e076', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-05 15:47:52', '2023-07-05 15:47:52', NULL),
('6a39aa6f-8f0e-436d-992d-b387415b9b85', '60517352', NULL, 'activo', '94f3e879-df5f-42d8-9b3e-7c15fbf8213a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:23:17', '2023-07-04 18:23:17', NULL),
('6a81bd99-12e5-4f36-a4ba-2bd3a0166a4e', '90378951', NULL, 'activo', '1c10a9dd-7526-4606-80c2-c0f8a7fe3fb3', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:40:52', '2023-07-05 10:40:52', NULL),
('6b1c5b41-bfe4-4f27-9b43-6c67fc0451c3', '60024995', NULL, 'activo', '8abdb58d-8522-4af2-8231-f5e5695f7bef', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:02:58', '2023-07-04 12:02:58', NULL),
('6b3aa1b2-8880-42c5-97bf-a9431f74f04c', '81046208', NULL, 'activo', '5df2a21f-54b6-431c-9bd6-3425177cb2f4', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:18:53', '2023-07-04 19:18:53', NULL),
('6bc414d6-6045-4f66-a77d-d98fd38396ed', '62014784', NULL, 'activo', '452efc75-b954-47c6-bd52-c8b6ace5230e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:49:12', '2023-07-04 17:49:12', NULL),
('6c484bf8-4ac7-4f3b-bfdb-69ddc6c00fba', '81602921', NULL, 'activo', '31e2ed81-e6ed-4481-89cf-26e7ccd1ffee', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:20:30', '2023-07-04 16:20:30', NULL),
('6c4f0358-35c3-4562-b8aa-6cc0875a12aa', '63092120', NULL, 'activo', '573fb02a-1313-4910-a737-07cc757a9f86', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:12:09', '2023-07-04 16:12:09', NULL),
('6c93e704-d9ad-4d8f-87b5-cf1d764540ba', '79192377', NULL, 'activo', 'bb00e723-7962-48de-9f7a-311ca997578b', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:53:12', '2023-07-04 15:53:12', NULL),
('6df05ccb-7864-4c0b-8c31-cacc24c37216', '76946447', NULL, 'activo', '941726d7-e0c8-478a-b015-69f53290de38', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:31:12', '2023-07-04 18:31:12', NULL),
('6e264d0a-de61-4f6d-8b27-07b65be162dc', '63193482', NULL, 'activo', '0c98dff5-f9f5-4fcb-a7f2-739f60a6554c', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:11:55', '2023-07-04 19:11:55', NULL),
('6e454871-e0be-484c-b3f0-ce5b698e1d15', '77933140', NULL, 'activo', '5afa3d13-fbcd-4347-bf8d-f0e6be8e43d1', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:47:23', '2023-07-04 15:47:23', NULL),
('6e5389e4-0425-41a5-bb27-0e80c4b2b796', '76506437', NULL, 'activo', '491c2fce-1834-4202-b3cb-1c32fa3ce773', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:26:41', '2023-07-04 11:26:41', NULL),
('6e5a4278-4448-4364-8296-0a4f11be9893', '91160639', NULL, 'activo', 'df05d44d-fcce-4327-b12d-8350f582c9df', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:04:33', '2023-07-05 11:04:33', NULL),
('6f0b1997-4283-4b48-96d7-0b7df05d489e', '61233269', NULL, 'activo', '3ed8b7e6-a311-47d7-be11-c7dd8884c800', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:20:53', '2023-07-04 11:20:53', NULL),
('6f8178a1-0723-4572-b085-29d90246ac0c', '61409348', NULL, 'activo', '1425f304-ae47-4059-9213-1d4e2f15d8a5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:15:41', '2023-07-05 11:15:41', NULL),
('6fa6670e-cd10-440c-8c38-a4a9b5ae6389', '60026763', NULL, 'activo', 'f6be3910-0a7b-4fd3-a23f-adf5fe88f887', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:37:44', '2023-07-04 11:37:44', NULL),
('6fd1b196-824b-44fd-93b3-e653e8d24bb5', '62015068', NULL, 'activo', 'beb8ed52-6b74-4e31-a289-d3859bd4609b', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:25:39', '2023-07-04 18:25:39', NULL),
('7067bda0-d146-428d-8701-0da558db438d', '61911895', NULL, 'activo', '87df4520-0b60-421d-a680-ab34404cf5bb', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-06 12:03:58', '2023-07-06 12:03:58', NULL),
('708cc38a-752a-4cd6-8611-c295f8f7237c', '72887901', NULL, 'activo', 'a24d0c0e-2ac3-440b-9ead-ce8d3949c822', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:19:40', '2023-07-04 11:19:40', NULL),
('7130f6f5-3c3c-457d-a23d-588d02e1eef9', '63193457', NULL, 'activo', 'a7586346-7ed1-4ec0-bf83-388d02f4f3e8', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-10 17:32:58', '2023-07-10 17:32:58', NULL),
('71593035-9674-4e89-bbd8-a53eeed06eb3', '78676777', NULL, 'activo', '2b0d76e1-4669-44e5-949f-063858454021', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:39:38', '2023-07-04 12:39:38', NULL),
('717c22e7-4ef2-4852-95e3-c4aa4979a359', '32592596', NULL, 'activo', '8d58347c-9dce-4441-aa62-ff8cfe2eae4e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 16:29:05', '2023-07-05 16:29:05', NULL),
('7194e4fe-0f3e-4580-be9d-a8135e813937', '61480353', NULL, 'activo', 'c18bed10-9aff-4254-8225-b545c914de08', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-28 10:44:05', '2023-06-28 10:44:05', NULL),
('7200c1ca-5088-4ac9-b453-d3ebe05c2429', '61517243', NULL, 'activo', '7b87dc09-fbd4-46e6-822e-e7e85cf6b434', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:34:34', '2023-07-04 17:34:34', NULL),
('729423f1-67f3-4a4d-b4cd-c283cc2d9d48', '61880499', NULL, 'activo', 'b193c968-4c8d-4428-a55a-4d33ddb05fd4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:04:51', '2023-07-04 18:04:51', NULL),
('72cf3a22-7ea3-498b-9bb5-e81514cc1409', '74325487', NULL, 'activo', '6f385f56-ad5f-4ef8-88ee-a51c5c36c819', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:52:06', '2023-07-04 15:52:06', NULL),
('7335d319-7fb6-42eb-8e4e-523c0005b99b', '76013359', NULL, 'activo', '6ec6984d-84e8-4105-91fd-19a27119a89c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:40:54', '2023-07-04 10:40:54', NULL),
('73e938bb-30a3-4285-a378-18391b64d240', '78956391', NULL, 'activo', '9d3b4a88-43d1-4b20-b349-aa47d1a84878', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:33:40', '2023-07-04 15:33:40', NULL),
('740f9cd9-be62-4076-ab85-1c9deeb606c5', '63688550', NULL, 'activo', '181d3fec-9da8-40f7-aa71-e23f7b83a0c7', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:13:11', '2023-07-12 17:34:19', NULL),
('7413244c-3590-4cac-ad3c-3897918894ec', '81610722', NULL, 'activo', 'bbac201b-dc12-46a5-80ca-0e3cf962aba5', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:03:31', '2023-07-05 10:03:31', NULL),
('743d1816-d71c-40c1-bab6-a755df407ced', '61411921', NULL, 'activo', '943e05c2-b9c1-4deb-a402-ef68c0e25746', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:31:58', '2023-07-04 17:31:58', NULL),
('753242bc-d4ce-4239-8829-b6550fb09b75', '61233264', NULL, 'activo', 'b8ce247f-1bfa-4529-8ecc-7c7acc9157a0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:07:21', '2023-07-04 11:07:21', NULL),
('76dcb5bf-a860-4f02-a67d-d9624f762a77', '77150592', NULL, 'activo', 'c9ee1238-8eb4-40f0-bf09-718b905a6ce5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:28:09', '2023-07-04 17:28:09', NULL),
('76f91e34-dc6b-4b17-bcce-aa615ea92c6d', '71249062', NULL, 'activo', 'a0d05b19-266c-4ba1-b477-8c31a1598809', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:46:16', '2023-07-05 10:46:16', NULL),
('77014b30-55f4-41f2-b77e-ec2a2046d266', '62759139', NULL, 'activo', '54e99c39-ee15-4d18-a4f6-e7f5193b8de9', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:46:50', '2023-07-04 10:46:50', NULL),
('77133e2e-633c-4bd0-9bc9-90a1faa981cf', '78693356', NULL, 'activo', 'c32aedf8-c7db-4103-9b12-ecfa834b9370', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-11 18:01:22', '2023-07-11 18:01:22', NULL),
('771adbe0-0f89-4380-8739-f629a2b59aec', '72138930', NULL, 'activo', 'b80fa957-e22a-4791-ac1e-10601276e49a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:37:48', '2023-07-04 16:37:48', NULL),
('7723e25d-d148-4b64-a1f7-651961473453', '61713691', NULL, 'activo', '8e0687a2-7356-4cfd-b81a-85edd6fbee7f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:32:07', '2023-07-04 17:32:07', NULL),
('773d262f-5095-47cf-8370-494e1de6f330', '77157142', NULL, 'activo', '2e9b6beb-391c-40cc-9533-47be67b40c55', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:09:27', '2023-07-04 12:09:27', NULL),
('7876c830-02f7-4f15-9776-fd7cad93a503', '78947527', NULL, 'activo', 'e7d90396-3953-485b-92ea-f0f055a79836', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:19:21', '2023-07-04 16:19:21', NULL),
('78984d85-14c2-4166-9b06-cde55959ecb2', '62657211', NULL, 'activo', 'de3db756-e8e0-4b35-a59a-34a83636a0b5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:41:17', '2023-07-04 17:41:17', NULL),
('7917c0c7-c750-4571-bd2a-fa25379085e3', '62657310', NULL, 'activo', '07b38ebb-9881-4013-9af1-783ef2c4b3cf', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:45:00', '2023-07-04 18:45:00', NULL),
('79f9f89e-b3f4-4689-a9dd-88f977d53ffd', '90636519', NULL, 'activo', 'cbec8329-ee7c-497e-bc0c-3f4daf538543', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:38:22', '2023-07-05 10:38:22', NULL),
('7adf9fa6-bf80-4055-a899-6ec8807a5969', '77078937', NULL, 'activo', '197c32d0-2e83-4e94-ab34-27cd7c3b979e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:10:06', '2023-07-05 10:14:29', NULL),
('7ae5f116-de72-46f4-9897-ba7d41011d7c', '72020227', NULL, 'activo', '7f2eff23-03ec-4025-b834-7325bc62471f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:25:53', '2023-07-04 17:25:53', NULL),
('7b29112e-a754-45cd-98e1-ff8dad81551d', '77433725', NULL, 'activo', '91824f88-8199-4119-8fc1-6fcff2bbfff7', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-12 17:15:48', '2023-07-12 17:15:48', NULL),
('7b97e93d-047a-44ab-a80f-ecdc597c2675', '61155396', NULL, 'activo', '4c59f4c7-3757-41ad-9941-bbcab24a49de', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:56:09', '2023-07-04 10:56:09', NULL),
('7c1c3971-1df5-414f-ac73-c09c0ab19008', '62014978', NULL, 'activo', '06e4f9dc-97d4-4e15-be52-c698356bc6ff', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:23:58', '2023-07-04 17:23:58', NULL),
('7c9a08c7-d0ca-40cd-a08b-dbefe4fe4964', '63092085', NULL, 'activo', 'c1953624-3183-4061-813b-71ca113f8290', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:53:15', '2023-07-04 11:53:15', NULL),
('7cb221e0-3b8c-4f59-9440-00027db10e17', '61155379', NULL, 'activo', 'dcc435ef-b602-4cf7-aade-2820c0ff5afc', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-03 11:00:41', '2023-07-03 11:00:41', NULL),
('7cc02a55-24b6-4de3-82b2-f148094bc4ee', '80141333', NULL, 'activo', '80ced0b2-ca9b-456a-a224-303ec4b2a6cd', '887a0cdc-351b-4601-b53b-082e873ee860', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:17:13', '2023-07-05 11:17:13', NULL),
('7d38e256-d6fd-465b-8fa3-b456f4c3860f', '61480216', NULL, 'activo', '0876ee31-1fac-44ef-b82b-699d01375f89', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:38:38', '2023-07-04 11:38:38', NULL),
('7df66b4a-9f48-4fb3-b9d3-fa6bf631f677', '76623416', NULL, 'activo', '2802b3c2-13e1-4560-90fa-62910db1d825', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:42:27', '2023-07-04 18:42:27', NULL),
('7ec17f3d-3034-4059-a2c8-ac782ebc8225', '75677722', NULL, 'activo', 'b58d75be-2e82-4163-ab28-b0c810fa820e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:47:40', '2023-07-04 17:47:40', NULL),
('7ff0e327-b9e7-483a-8ac5-0d536282037d', '60424993', NULL, 'activo', '15ee81d2-ce48-4b91-9e9d-524e12f54d8f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:39:55', '2023-07-04 10:39:55', NULL),
('8058aa88-0139-43a4-a7a0-7a8f4f881921', '61517320', NULL, 'activo', 'f1d63ad2-7257-4aa9-8aa6-8d55972374ca', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:40:38', '2023-07-04 18:40:38', NULL),
('806cb0a2-3a42-45f7-b4a4-54899c8b7203', '77960856', NULL, 'activo', 'edf9b246-f9f2-4b15-a15d-e969f14e45ab', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:00:36', '2023-07-04 19:00:36', NULL),
('8216f535-7474-4ca3-8afd-76ff376f70a6', '70459159', NULL, 'activo', '79083f2e-b08e-4755-885c-17e7314a871a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-11 08:45:08', '2023-07-11 08:45:08', NULL),
('82507e2a-584d-4eb6-8fcc-3ad41ff01ed9', '79575261', NULL, 'activo', '707c932f-2347-422e-9609-2246da3db1a7', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:04:34', '2023-07-04 16:04:34', NULL),
('82bb750a-aacb-4081-ae90-b2043f4fa518', '72392484', NULL, 'activo', '1cd07ab2-c2a2-4fd7-b2ca-58f8fe7e4b91', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:21:36', '2023-07-04 11:21:36', NULL),
('82e34b78-44ff-4bce-aa88-d0a7d03c5acc', '63092025', NULL, 'activo', 'e7de7364-6329-4959-b594-7f87c95c169f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:14:17', '2023-07-04 19:14:17', NULL),
('82fd4821-e8cb-4c9e-bfdf-3766dd8ee4cc', 'fiorelacastillodiaz6@gmail.com', NULL, 'activo', '3189b0db-601a-4776-a80e-11a4b9a5574e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:36:50', '2023-07-04 17:36:50', NULL),
('8380bf57-7a77-406a-a0e0-516282f5f3ad', '61822207', NULL, 'activo', '8d26dca5-10b2-4eee-ac1d-141604b293cd', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:42:27', '2023-07-04 17:42:27', NULL),
('838ef963-5c49-4b5a-9089-efac9a3d9b65', '78582991', NULL, 'activo', '20d18b84-47a0-4e19-9180-b21bfcd3946e', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:14:55', '2023-07-04 16:14:55', NULL),
('839aa6d6-b173-44f7-a33f-30934bf49d3b', '80990945', NULL, 'activo', 'd589819f-edce-4800-9221-717896e199a2', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:01:41', '2023-07-04 16:01:41', NULL),
('83a4729e-194a-4518-8a21-8ef20de79029', '61603701', NULL, 'activo', '10628c9e-814d-4e26-b206-3e4fb96756a4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:10:28', '2023-07-05 11:10:28', NULL),
('83e1ee68-1786-4e1d-8d02-824c7ecb2aaa', '42559403', NULL, 'activo', 'b4cc3281-a9b7-4c72-afba-cec7addddd80', '887a0cdc-351b-4601-b53b-082e873ee860', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:18:32', '2023-07-05 11:18:32', NULL),
('84e59df8-b3f3-4be1-a6b4-e2cc5075ff65', '71299243', NULL, 'activo', '3de62f8d-86a6-4359-a73d-4fe782189f7d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-13 11:50:13', '2023-07-13 11:50:13', NULL),
('85952dce-cc43-46d4-957e-70c4acafa9c5', '62354565', NULL, 'activo', '37235062-7f84-47d9-ad75-6e68bcf51e1a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:34:36', '2023-07-04 10:34:36', NULL),
('864e227f-1e14-40bb-8171-19b4fae69b04', '81596916', NULL, 'activo', '20990d91-2644-46c4-afc5-2305dd8e0ff2', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:13:07', '2023-07-04 19:13:07', NULL),
('86d180b5-5b08-4388-a455-42dbdbc21d80', '79260904', NULL, 'activo', '22cb758d-0c51-42d5-a07c-7cab0098a3d9', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:35:02', '2023-07-04 12:35:02', NULL),
('87373f7e-fa05-4af9-a811-9029939a379c', '62672330', NULL, 'activo', '2601b039-82ed-4fd2-b437-ff51c80fbc0e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:48:55', '2023-07-04 18:48:55', NULL),
('87ae3776-eee3-464d-ba3a-ce92943db82f', '71908969', NULL, 'activo', 'c89bc702-f072-4260-ab12-8ade898cb78d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-15 11:38:59', '2023-07-15 11:38:59', NULL),
('87bd7aea-14ca-4eab-8efe-b4bf5a0967fe', '63014139', NULL, 'activo', '6b641aef-305c-40ed-b01f-ef76348fe924', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 09:58:05', '2023-07-05 09:58:05', NULL),
('88b15277-7206-48ea-94a0-e12c2f77ecc5', '75734081', NULL, 'activo', '4a6eade6-2050-43f5-8c2a-093c53855a98', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:36:51', '2023-07-04 10:36:51', NULL),
('899c6cc7-51bf-4449-a80c-34effd061ef0', '61155361', NULL, 'activo', 'f62a799a-3147-4105-a93b-da41f034c982', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:05:55', '2023-07-04 18:05:55', NULL),
('89c339b8-ae5c-49c5-8152-11a2522b0f0c', '61314730', NULL, 'activo', '4fa3a074-a92c-462d-a35a-e203c8d3df43', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:33:38', '2023-07-04 11:33:38', NULL),
('8a69dd3a-0d68-462f-869c-fc40d12f3b35', '61717760', NULL, 'activo', 'd97e3173-e0df-4689-9030-6b2c6a307654', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:11:05', '2023-07-04 16:11:05', NULL),
('8ab45dce-3a77-4b12-bc9f-82ae5ce51e37', '81552719', NULL, 'activo', '91271cf6-59ef-4f14-b4e3-f30a7baed6bf', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:49:01', '2023-07-04 15:49:01', NULL),
('8aef8095-cfa7-4d85-b57a-7a61d89beeb0', '20668331', NULL, 'activo', 'b6dc4dcc-f909-4dff-9c10-86d9257b3f44', '887a0cdc-351b-4601-b53b-082e873ee860', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-14 11:35:17', '2023-07-14 11:35:17', NULL),
('8afe2807-8987-4570-8fd7-c3a4e586f30e', '76793694', NULL, 'activo', '444adbaa-6264-4796-9a54-381574a5de38', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:16:47', '2023-07-04 11:16:47', NULL),
('8b4f61af-3d19-4a04-8722-6879550d84a3', '40565637', NULL, 'activo', 'fa87b686-0e2a-4f87-b92f-70d7a4ab6f89', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:31:17', '2023-07-04 18:31:17', NULL),
('8b9cd768-8660-45e5-8574-e38539c1742a', '76240355', NULL, 'activo', '3c3fe1a2-72e1-46e4-8113-8c508d3f9cc4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:39:47', '2023-07-04 10:39:47', NULL),
('8c7790b8-a1d4-463b-accf-07f7952e8892', '62672333', NULL, 'activo', 'c53202fa-df51-4265-aa8d-5776bb89b8eb', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:58:16', '2023-07-04 10:58:16', NULL),
('8cabafe5-6df1-4e7c-9472-158c35c61e74', '61957938', NULL, 'activo', '977be44d-cf7b-4076-ad05-f538480a3ee7', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:54:54', '2023-07-04 10:54:54', NULL),
('8d336580-6fa8-43cb-ac8a-1b5f9da5162f', '77014774', NULL, 'activo', '41930409-6a93-4e53-8681-5488862e2529', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:49:16', '2023-07-05 10:49:16', NULL),
('8d703461-5328-48d2-bf56-a99c3f179843', '60957686', NULL, 'activo', 'e3d89d9a-873f-4bc0-872b-b5607f2958c6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:50:06', '2023-07-04 16:50:06', NULL),
('8e24331e-b1e9-49a3-8408-e5d7bcaedf38', '62672389', NULL, 'activo', 'e8ca4198-993b-4eda-8c17-5756b35693ec', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:48:36', '2023-07-04 17:48:36', NULL),
('8e2dbeb2-6d15-4091-b073-0abe5f814668', '81651805', NULL, 'activo', 'd9187cf1-e682-4cf9-adc1-d5c41e23546d', '887a0cdc-351b-4601-b53b-082e873ee860', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-13 15:54:20', '2023-07-13 15:54:20', NULL),
('8e3a060f-d1f7-4ca2-9783-c59092a2b9c6', '91851037', NULL, 'activo', 'f1a109a3-0e55-4700-b00e-b756a874802e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:20:39', '2023-07-04 17:20:39', NULL),
('8f0ca397-c4a8-4c51-8de9-7eb04742a9fd', '76022298', NULL, 'activo', 'e4b3eba2-2c0f-4648-867c-7ee202cabf56', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', '8f0ca397-c4a8-4c51-8de9-7eb04742a9fd-1687453994.png', '2023-06-19 20:03:45', '2023-06-22 12:13:14', NULL),
('8f28bdb5-f28a-4e59-af64-8df1e3396759', '71727610', NULL, 'activo', '9c171452-9fde-47b9-88d3-266f15c2a37c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-14 15:32:21', '2023-07-14 15:32:21', NULL),
('8f2f560b-5bc8-45dd-ac8b-5575fc2d376f', '48159406', NULL, 'activo', 'dec68282-8d2b-4352-a7a3-b71e3df95474', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:37:55', '2023-07-04 10:37:55', NULL),
('8f5ce7c9-f4df-47a1-a3d0-c008e3a896d6', '79859763', NULL, 'activo', '16ada647-0c28-47ee-8fe2-75f40eec9455', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:22:10', '2023-07-05 10:22:10', NULL),
('8f96c99d-43fb-4e6c-a65b-60df2682f070', '81274366', NULL, 'activo', '5afeb2ef-e5c5-458c-9d1b-d4dce577fb6f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-10 15:34:43', '2023-07-10 15:34:43', NULL),
('900ab99d-0228-4eb4-b392-977b551ec5f6', '60857769', NULL, 'activo', '20cc531a-d5cf-49f9-bec1-04c4bf7868c5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:43:43', '2023-07-04 18:43:43', NULL),
('900d10dd-f68c-41ef-a4ba-ca8fd52daec0', '61657263', NULL, 'activo', 'a6992127-28ba-4d0a-8a8c-f6845fceb824', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:57:04', '2023-07-04 18:57:04', NULL),
('90974475-fb43-46c5-92d7-e0680c3465f0', '78938307', NULL, 'activo', '1326abb3-803d-4642-9805-dc30024606a4', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-07 17:36:49', '2023-07-07 17:36:49', NULL),
('914a2b55-f841-4610-86b6-421876f1272f', '70118481', NULL, 'activo', '73beef24-da10-4298-9618-da9bbd2d425f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:30:18', '2023-07-04 11:30:18', NULL),
('91c3175b-c026-4423-908c-ef09fbfc15b4', '78188264', NULL, 'activo', 'e4211262-8e2b-4341-b29f-c84ee287f6e8', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:36:29', '2023-07-04 12:36:29', NULL),
('91d3e732-f5d6-4313-9f45-d6df865b0415', '62837577', NULL, 'activo', 'aa34024f-9406-4dd2-8d18-9a855199dfad', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:45:55', '2023-07-04 16:45:55', NULL),
('91e78c46-389f-4fd6-ba36-dcb7bbed7308', '81579552', NULL, 'activo', '186540b7-9ade-4d98-8466-668808be9e3f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 17:10:29', '2023-07-05 17:10:29', NULL),
('921d6a78-4ca3-4259-98cf-e593178b2d6c', '78323848', NULL, 'activo', '9ab56908-3234-49a8-baf2-d9cb514e301d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:33:08', '2023-07-04 12:33:08', NULL),
('9415fe4a-783d-4311-aec1-83726de532ee', '71742158', NULL, 'activo', '5cd9eac6-1860-476a-9426-6dff4ebbf06a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:39:52', '2023-07-04 16:39:52', NULL),
('9425b171-23bf-45cb-9d60-a430b105bc0d', '75703073', NULL, 'activo', 'e6074aee-4d40-44b3-8164-302c048c14ef', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:07:01', '2023-07-04 18:07:01', NULL),
('9426ce7d-5147-43e8-8000-1bf87492a88f', '62354683', NULL, 'activo', '42e85ed3-a49e-4a5a-84dc-a674399251be', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:24:24', '2023-07-04 18:24:24', NULL),
('9443fdeb-70c0-445b-8e93-9ea696da4197', '62672296', NULL, 'activo', '709fb432-8040-4130-a8ed-19db4e6ab592', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:40:30', '2023-07-04 11:40:30', NULL),
('946cb230-b7c9-49e6-9aef-cdbe37492b70', '78788447', NULL, 'activo', '17529541-2cdf-4b6d-8040-fdda74b816f6', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-11 18:45:36', '2023-07-11 18:45:36', NULL),
('95474dce-e60a-49c2-8b42-ffd7f303da4d', '79455612', NULL, 'activo', 'afab71d9-2819-434b-9cdb-b27a0c00847d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:56:18', '2023-07-04 15:56:18', NULL),
('95d411fa-536e-40d5-b5c6-7d7b06999db7', '79806792', NULL, 'activo', '01fac8f4-a53a-4645-b2cf-044cacc778bf', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:35:47', '2023-07-05 10:35:47', NULL),
('972ff5e4-eba7-4d33-a423-088c06ebdaaa', '76592276', NULL, 'activo', 'a03b848f-7f3d-45b5-9b47-a3709780f398', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:24:19', '2023-07-04 11:24:19', NULL),
('97513171-9d99-4f51-999c-0e02a2d2b948', '78254856', NULL, 'activo', 'd886116e-dab9-41b9-ae87-7c22a9c991ca', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-07 17:15:35', '2023-07-07 17:15:35', NULL),
('97ab679c-4512-4cfb-9f48-78ccee70a10a', '70956619', NULL, 'activo', 'd41a9283-5e7e-491e-9cc6-f16b160fe117', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:12:35', '2023-07-04 18:12:35', NULL),
('97c153dc-4ef5-40da-beaa-679693a5790c', '79015598', NULL, 'activo', 'fae0ab18-8892-4086-8cd7-908feae3dbdd', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 17:44:18', '2023-07-05 17:44:18', NULL),
('97e87702-95bc-4dc2-82de-1a6c479355f6', '75244115', NULL, 'activo', '6e65d33a-c5b6-472a-ad9d-1cdc10407c10', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:41:26', '2023-07-04 17:41:26', NULL),
('99fed449-05eb-466b-96ad-6581e68315ca', '79776069', NULL, 'activo', '841d47d8-4097-4538-bf7f-9f7a05900c9c', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:25:42', '2023-07-05 10:25:42', NULL),
('9a1f7c28-7c67-42bb-a7ea-850a59b4760e', '90364628', NULL, 'activo', '244fc99d-e4a1-4cd6-b367-6540f2cf179e', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 17:24:03', '2023-07-05 17:24:03', NULL),
('9a6fd041-da9c-4cae-847f-e660e453c5b3', '75755163', NULL, 'activo', '13ec911a-0092-40d4-b4c1-63fd0fd18cc0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:44:45', '2023-07-05 10:44:45', NULL),
('9ab9d019-5646-4c2b-b4ce-37d37f8f82ea', '61957869', NULL, 'activo', 'c9b413aa-e8ef-45c1-82bc-cbf80214116f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:17:19', '2023-07-04 12:17:19', NULL),
('9b2b0e7e-43c7-42a3-8008-aa5ef6fac3fd', '60957658', NULL, 'activo', 'acac4c3e-e05b-4731-96ed-471f24a49730', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:36:50', '2023-07-05 11:36:50', NULL),
('9b66079d-99ec-4254-8e03-b723fc71cbd1', '78655428', NULL, 'activo', 'fe11db0b-0c88-4651-a923-d22cd962450e', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:09:11', '2023-07-04 19:09:11', NULL),
('9b94d001-9a58-4a66-b3aa-0b94ad91bb08', '72792051', NULL, 'activo', '43eb8bd6-6faf-4d72-a74a-6dc30c3ecf97', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-03 11:46:13', '2023-07-03 11:46:13', NULL),
('9c84198e-455e-4131-8396-b65f68685b4e', '76427318', NULL, 'activo', 'edcf0484-553c-4845-a287-13fb9c81576e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:38:23', '2023-07-04 10:38:23', NULL),
('9cdc1408-5164-46d4-9623-18bb90cb14e4', '78835506', NULL, 'activo', '77e20c95-f8b8-4cd0-8489-69b11f303c9f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:49:59', '2023-07-04 15:49:59', NULL),
('9de252bb-a416-4647-a0b8-c4b98a3c07e1', '71220871', NULL, 'activo', '59c888d3-cb24-480e-aad3-275ff40a2e33', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:22:46', '2023-07-04 12:22:46', NULL),
('9e0db5d5-8eca-4783-a1af-cc56a52d98ec', '968185021', NULL, 'activo', '78d60a53-c0b9-4a15-b6d6-84d036bdaf0e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:20:08', '2023-07-04 11:20:08', NULL),
('9e10ae52-a5de-4e7a-a389-d09b50490c89', '61517261', NULL, 'activo', '84dabf35-0814-4c7f-b186-7496f1bacdf0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:33:55', '2023-07-04 18:33:55', NULL),
('9e7eb9fd-1d3a-4230-9274-34bc7f419f3b', '81046281', NULL, 'activo', '376c2a87-3d04-4515-93ac-75ae8afe21a3', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:13:29', '2023-07-04 10:13:29', NULL),
('9e9e62d4-d2bc-4527-8745-a482c2451950', '63193591', NULL, 'activo', 'c7137558-53a3-4211-9fd8-b053852adbee', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:02:07', '2023-07-04 19:02:07', NULL),
('9ee49e59-2fbe-4ae2-bf69-2c9464050ff6', '81138831', NULL, 'activo', 'fdc82d5c-8503-4b79-a15d-9f7e49e13792', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-04 15:58:22', '2023-07-04 15:58:22', NULL),
('a04a1abb-980a-4fb2-ae5c-875fd11967b0', '61957891', NULL, 'activo', 'a94f6638-07f5-48d7-9e0c-8c6b9c078730', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:57:21', '2023-07-04 17:57:21', NULL),
('a0773296-3373-46e3-bdc4-baa83b2b10a1', '76341147', NULL, 'activo', '3777b8c4-bc1f-4303-88c1-e405eb3e604f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:19:23', '2023-07-10 18:50:30', NULL),
('a0be0d3a-7b2c-4040-a2d7-a39b2e151096', '77941559', NULL, 'activo', 'a00da28d-ed6a-414d-9d7f-8ac7e39f414b', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:15:14', '2023-07-04 16:15:14', NULL),
('a1259f4e-5c42-4adc-8fbc-5661e987aa25', '79737064', NULL, 'activo', 'cc77065e-81a8-4eae-975d-453811a31a38', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:29:13', '2023-07-04 12:29:13', NULL),
('a15493a2-d6a4-4ce6-9403-8ee41039e1d3', '60927523', NULL, 'activo', 'ab3a9c88-a463-4747-8982-7bb637c2b14d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:40:26', '2023-07-04 18:40:26', NULL),
('a2694d3b-9557-4b9e-bd6a-a927430be06d', '79469898', NULL, 'activo', '0f82abfc-4a29-44c8-9a59-fcb62f8bd12f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:18:30', '2023-07-04 16:18:30', NULL),
('a2ab7553-1e13-4381-84ee-a7207dd6cb0d', '79028245', NULL, 'activo', '35e55a56-680a-4894-a195-fdf84434e429', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:19:00', '2023-07-04 19:19:00', NULL),
('a2de6e46-752c-439e-b468-9216268416a5', '76596602', NULL, 'activo', 'e3769743-31e1-4aa9-9876-1061de460a8d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-07 17:58:24', '2023-07-07 17:58:24', NULL),
('a30eac41-0d31-4f3b-82b2-889c4b088a0c', '77099938', NULL, 'activo', '9851cb1a-3521-4bb7-9e56-79c0271e28a6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:45:16', '2023-07-04 18:45:16', NULL),
('a33578df-44a6-479c-ac46-714256980335', '62423666', NULL, 'activo', '5b343bd3-9a93-4bf6-a1bf-eacb393aef43', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:55:04', '2023-07-04 10:55:04', NULL),
('a3a94e1f-0e6e-4d8c-862c-3921b9b28831', '63277311', NULL, 'activo', 'b0b14d55-4d0a-400b-94fb-2ad459e9a13a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:41:52', '2023-07-04 10:41:52', NULL),
('a4469687-bdfc-4e0d-8233-c4528459c8b5', '78385079', NULL, 'activo', '83ddad4c-24c7-45c2-8c66-7d0908175cbf', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:46:15', '2023-07-04 15:46:15', NULL);
INSERT INTO `estudiantes` (`id`, `codigo`, `birthdate`, `estado`, `id_persona`, `id_apoderado`, `id_programa_academico`, `id_ciudad`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
('a533dfd4-5998-4580-a6f1-df6a80ce40ad', '76598889', NULL, 'activo', '127774e0-bd3d-493c-8f9b-04f4791a6372', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:55:09', '2023-07-04 17:55:09', NULL),
('a54707ac-0d4f-4775-b3ca-14f95f9e15b5', '78956861', NULL, 'activo', '5fbf2ff9-fc2c-4fcb-bc7e-b35e3644ab49', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:02:38', '2023-07-04 16:02:38', NULL),
('a59014f9-141a-4ef5-8266-c6307760564a', '78523914', NULL, 'activo', '3fd46976-b59e-46b2-a76c-61226e6f179d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-07 11:49:51', '2023-07-07 11:49:51', NULL),
('a6d32a49-aa49-48f9-a878-a56b04b08401', '63091866', NULL, 'activo', '58f01807-7083-44eb-bfc5-3c4a9986b9f0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:52:25', '2023-07-04 17:52:25', NULL),
('a7dc213c-dcac-4ddb-86f2-fd9141824cc2', '75607245', NULL, 'activo', 'fae92950-46de-4adf-ad1a-c7d266b631fe', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:14:57', '2023-07-04 18:14:57', NULL),
('a7fd63dd-fed0-4906-b9b3-84b0e2b56554', '47615626', NULL, 'activo', '7c0206f0-ec69-496a-a644-a58b6b7360bc', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:02:08', '2023-07-04 18:02:08', NULL),
('a82a573c-46d7-4f4e-8bb2-390bcea6c046', '71513587', NULL, 'activo', '19497660-7a4c-4b84-8ab1-b57db36fd4dd', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:18:16', '2023-07-04 12:18:16', NULL),
('a8496828-34ce-48cd-839f-a177573e9401', '62354727', NULL, 'activo', 'fc0739d0-a67f-4d93-aa77-b9d60dfe6de3', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:25:46', '2023-07-04 16:25:46', NULL),
('a90b6a5c-3ddd-4ca8-ae8a-787f9c6a8eb8', '61155525', NULL, 'activo', '359620b4-f2db-4786-a7ed-c85e35699c8f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:21:20', '2023-07-04 17:21:20', NULL),
('aa20eb59-fb0c-495b-9e2f-a6e2efeb4825', '75591613', NULL, 'activo', '3b2729e9-ccb2-4f15-97c4-0b46349ae722', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:56:24', '2023-07-04 17:56:24', NULL),
('aa77f892-cd5c-49b6-af48-47a231622bdc', '78452212', NULL, 'activo', '7e51a78c-d073-4f73-82bd-16f637bb1818', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:15:36', '2023-07-04 19:15:36', NULL),
('ab257625-232d-436d-b51e-45ff437d9ace', '61689147', NULL, 'activo', '4070d53c-8e60-4884-90c5-b804863cf297', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:16:43', '2023-07-04 19:16:43', NULL),
('ac4ca1ee-7b75-431a-80d2-1396f48f3212', '77995334', NULL, 'activo', 'dacf586a-0b78-411e-bdc8-1769041baad1', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:43:10', '2023-07-04 15:43:10', NULL),
('ac9bd3d4-5217-4ed5-8b35-ea29bfa99e58', '61314642', NULL, 'activo', '8e9391c6-8ae6-4112-90ac-7732c811025f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:12:06', '2023-07-04 12:12:06', NULL),
('acc514cf-6e8f-4b22-aef7-68e5cda0e003', '62759148', NULL, 'activo', '65d5f4bb-b651-47f5-98d0-e7e19b22788e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-03 11:18:20', '2023-07-03 11:18:20', NULL),
('ad486a33-10dd-456f-837e-fd16748e69f3', '62837462', NULL, 'activo', 'be2a0612-be68-4937-ac6f-65a519a0a707', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:32:16', '2023-07-04 10:32:16', NULL),
('ae3c38f6-b7b2-4473-9dea-8843efce0429', '73661636', NULL, 'activo', 'c0eb5968-4611-40ca-ad89-a502b4363c39', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-10 17:35:29', '2023-07-10 17:35:29', NULL),
('ae57b71f-c943-4357-8d0f-69b7ba52158e', '70541093', NULL, 'activo', '300bdc10-04d8-4726-b8a3-a3986760a19d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:43:30', '2023-07-04 10:43:30', NULL),
('af6fbd76-03b1-41b2-b2db-9cef733364df', '70768193', NULL, 'activo', 'e58821e4-28fa-4672-a3c4-5bcf16721c27', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:36:47', '2023-07-04 16:36:47', NULL),
('b0925f14-721e-4576-9498-c7b2d8b6e583', '79278587', NULL, 'activo', '196c5acf-89d6-416f-924f-ff6dc2550f28', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:58:30', '2023-07-04 15:58:30', NULL),
('b1c93196-5791-46b1-8047-073a295e5fa5', '62354447', NULL, 'activo', '49fd874f-8967-45a1-9bf0-e2c8aaea1761', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:32:25', '2023-07-04 18:32:25', NULL),
('b3c622b1-8e7a-462a-9b13-3bfb84372ba2', '63013755', NULL, 'activo', '93f48c98-ba6b-4cf9-bbe2-7d8badc9a0af', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-04 17:58:43', '2023-07-04 17:58:43', NULL),
('b4207b3b-2808-4261-8092-dbcdb77fb0a3', '76191044', NULL, 'activo', '03c86894-ea59-4304-91d2-f15c61c7c351', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-14 18:25:57', '2023-07-14 18:25:57', NULL),
('b486f6dd-01ae-4a99-9dc0-a22a4403f36f', '78593207', NULL, 'activo', '5c7def52-c753-4b3d-9401-84b4f8aceaa4', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 09:52:18', '2023-07-05 09:52:18', NULL),
('b4a44583-f679-4fb3-b16d-2c871b6c83e0', '75720443', NULL, 'activo', 'ca24357b-2d5b-4249-b296-10d93e65235b', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-13 16:54:30', '2023-07-13 16:54:30', NULL),
('b4a9223e-88c0-4cb3-90c8-6ebd7285ae14', '62287419', NULL, 'activo', 'fbebe9b6-c79a-4206-bd7f-98907d93f6cf', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:38:54', '2023-07-04 10:38:54', NULL),
('b5c57a54-042d-4ab9-bc33-ecbfb5cb4ad3', '60411178', NULL, 'activo', '080afc27-2b37-4374-8a50-636ba2cdfdbf', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:29:51', '2023-07-04 16:29:51', NULL),
('b5f16c36-d31b-40b0-beb8-24bc474a275f', '78409778', NULL, 'activo', 'e367b9c6-9b89-41a1-a6b1-a4288ec07bd9', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-07 16:13:32', '2023-07-07 16:13:32', NULL),
('b638a307-3da3-4086-a6b7-713f61e16371', '72134972', NULL, 'activo', 'e4ac2ab4-ac75-470a-9147-51be24789361', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:07:21', '2023-07-04 12:07:21', NULL),
('b64ded90-0cc1-471e-9c18-d777cad78d4d', '61080763', NULL, 'activo', 'a1f517de-c895-4d08-aa46-f7f9e49e9533', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:16:30', '2023-07-04 10:16:30', NULL),
('b714ac66-cb0e-4418-8644-25c8edb65f3b', '62427611', NULL, 'activo', '39655966-63f5-4bc1-be11-736d6724fde6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:49:23', '2023-07-04 11:49:23', NULL),
('b715a089-a4b6-4532-9142-fa0d1f07f354', '74235630', NULL, 'activo', '710debb2-4638-4363-a025-ab4ac0930ebe', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:33:23', '2023-07-04 10:33:23', NULL),
('b7703882-2545-43cf-bb61-423c51fe338b', '60396452', NULL, 'activo', '4f35c48d-d642-43da-abde-293b35095634', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:54:18', '2023-07-04 11:54:18', NULL),
('b7e0ea0e-f094-4f2b-a7d0-2ea654b122cb', '78045274', NULL, 'activo', 'e1c74eae-b7a5-4fbb-af91-66bf94929144', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 09:53:28', '2023-07-05 09:53:28', NULL),
('b8e38c1a-7cdb-47ea-9bd8-e14170e13c44', '63193578', NULL, 'activo', 'a1cc90fb-a721-4363-af79-68bd90a77509', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 09:46:23', '2023-07-04 09:46:23', NULL),
('b9b2ffce-039a-4ac3-a3f7-4f796bce7d9a', '72838872', NULL, 'activo', '735d62c3-5649-4275-9438-fddb03f24c99', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-06 11:23:38', '2023-07-06 11:23:38', NULL),
('b9f05ded-f9d8-4222-b4da-884e0996939e', '75458922', NULL, 'activo', '69298888-e180-4336-993d-f9c14339717d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:35:45', '2023-07-04 17:35:45', NULL),
('ba0035dd-0754-4323-8724-271376ba7170', '78467481', NULL, 'activo', 'b3edf274-0a85-4fbd-855a-61e317bd7069', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:14:37', '2023-07-04 19:14:37', NULL),
('ba1dba41-67ac-47d8-8967-a8417cf705f7', '75749750', NULL, 'activo', '9036eb09-09b5-4374-887b-f68a0c93501c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:52:18', '2023-07-04 10:52:18', NULL),
('ba2f7db6-8c32-4ecb-b5c2-e37a5c7756b5', '62867005', NULL, 'activo', '77bb6a88-b5b4-4515-959c-8d7a7cfdf49f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:17:37', '2023-07-04 16:17:37', NULL),
('bad205a0-97cd-4c2b-9527-3c0be4fff462', '73631351', NULL, 'activo', '88a46b94-7541-4f38-8367-8071120d5121', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:31:04', '2023-07-04 10:31:04', NULL),
('bbd7433e-d8fe-463e-94ac-35d68a1c267d', '43609859', NULL, 'activo', '76c45e23-c85e-4121-b23c-ab5a17e4e00c', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:15:05', '2023-07-04 10:15:05', NULL),
('bc41332c-7c32-402b-9dca-7a77faa41690', '74537288', NULL, 'activo', '10ba2c16-4815-497b-9127-8b18fc8715cc', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:23:35', '2023-07-04 17:23:35', NULL),
('bcc995e1-b0fc-4ad5-b6ef-0e20b4ba3e74', '75347822', NULL, 'activo', 'ad6ea092-b403-41e4-9ec5-ad33081fc021', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:37:56', '2023-07-04 18:37:56', NULL),
('bd5cf01a-e05c-4012-bee6-f5e664d386ed', '90996380', NULL, 'activo', '9df86b1b-202d-453a-9139-146b91cb2ad0', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:00:25', '2023-07-05 11:00:25', NULL),
('bedbfa18-d9c0-4298-b63f-c1bdf055233e', '79495078', NULL, 'activo', 'f1f5461e-5624-4954-ba27-24340f7ac9ab', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:40:47', '2023-07-04 15:40:47', NULL),
('bf6e7bb9-5c0a-42c1-82c4-4738224cd137', '73642218', NULL, 'activo', 'f9eb6b7d-7d77-4b4d-898b-97f4995d3e54', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:42:17', '2023-07-04 10:42:17', NULL),
('c0c202a8-0bd1-4767-b9ec-c0b6b4ba5e9f', '81180161', NULL, 'activo', 'ee546dcf-66fa-4f9e-a177-29bae9e76177', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-11 09:42:24', '2023-07-11 09:42:24', NULL),
('c0f39504-ac52-4e28-82a7-f91f5c0a15cd', '63092090', NULL, 'activo', '5f903c21-cff0-4a37-8992-0cf7363fcd1e', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 09:56:00', '2023-07-05 09:56:00', NULL),
('c10ade8e-5d6f-45d3-8a7a-4fee7eee78e5', '62043007', NULL, 'activo', 'c4eb5060-f0d2-4087-8da2-3edf59afe308', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:36:30', '2023-07-04 17:36:30', NULL),
('c19380b1-652f-4d5a-95da-06b29d29d79e', '63158388', NULL, 'activo', '5e180977-fa5d-4da9-855e-23838011d55d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 17:12:49', '2023-07-05 17:12:49', NULL),
('c1b1a085-6e33-4ac1-bbf4-27c71ce88497', '62838116', NULL, 'activo', '4e35879f-c55d-44b3-a281-0d52b2f8fcc3', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:15:39', '2023-07-04 11:15:39', NULL),
('c1f02a5b-0084-435e-aba0-9d7564fd2ca6', '202858325', NULL, 'activo', '141791ad-d410-4ac9-92fc-87b9a75677c0', '887a0cdc-351b-4601-b53b-082e873ee860', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-10 16:15:28', '2023-07-10 16:15:28', NULL),
('c27902cd-baa3-4b77-9628-2c37a5758ca8', '76392205', NULL, 'activo', '21241a0a-e3b6-444c-ba61-24971b3e7228', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:34:48', '2023-07-04 17:34:48', NULL),
('c2f89862-ee4b-4f41-a0d8-3fd9b25e2dfc', '19677703-2', NULL, 'activo', '2348f58b-f4b7-4a79-b752-9a4a8fe5008b', '887a0cdc-351b-4601-b53b-082e873ee860', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-18 10:13:06', '2023-07-18 11:08:19', NULL),
('c362af0b-d588-4982-bee9-a2687247d711', '90840086', NULL, 'activo', 'ae8b40cd-4ddf-4111-849f-aeaea81ce7ed', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-10 11:31:04', '2023-07-10 11:31:04', NULL),
('c4d8f1ef-b392-43ba-bbee-39aa7b211822', '61191517', NULL, 'activo', '42c09b0a-e87b-45d4-9152-2de820390ca6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:44:54', '2023-07-04 10:44:54', NULL),
('c55b96a4-b901-44ae-87a6-dd8935425ee6', '61314674', NULL, 'activo', 'e402b311-4838-4468-9873-2a2a88a0d927', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:29:15', '2023-07-04 17:29:15', NULL),
('c59a6c29-105d-444a-abc4-5b0454854102', '75788337', NULL, 'activo', 'f4ce4b8f-62b9-483b-b190-ba602b4f2a1c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:01:08', '2023-07-04 12:01:08', NULL),
('c5c502ea-0a70-4d65-b569-1f184b476464', '61233168', NULL, 'activo', '0144526c-2815-449a-a30b-5afcc872ba0b', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:34:28', '2023-07-04 11:34:28', NULL),
('c5d0e7c9-da7f-4dce-a44a-aa6e1c1d15a5', '42325348', NULL, 'activo', '1b9af74a-553c-4ee3-bf02-4ee5532640c9', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:12:01', '2023-07-04 10:12:01', NULL),
('c5fa4a62-2967-4174-84d0-c550175e55ae', '75187234', NULL, 'activo', '03aaddb7-04a0-4f9a-bd8b-7b426638b19f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:05:40', '2023-07-04 11:05:40', NULL),
('c77708de-c7cf-4971-bdc9-0bcd4dfb8e1d', '10300226', NULL, 'activo', '131f6c73-962c-4228-83c5-c477ff8a2358', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:59:15', '2023-07-04 10:59:15', NULL),
('c77e1c0a-e4aa-4874-b847-c49661ff1e21', '78090139', NULL, 'activo', '02daf119-c5ac-4b99-8667-ae8c84b8bd51', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:15:00', '2023-07-04 10:15:00', NULL),
('c7e47486-cfbf-4717-8bfc-e6b02f6241a1', '71681681', NULL, 'activo', 'c189e0a3-b365-45e6-a3c0-8d4038661af1', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:28:28', '2023-07-04 18:28:28', NULL),
('c852ba20-5c6d-46ec-af1b-5ceca976f73c', '61155466', NULL, 'activo', '7ecd8e4d-ce1b-40e5-aefc-0297bbf87071', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:30:46', '2023-07-04 17:30:46', NULL),
('c8eff333-16b1-44a6-a457-fc60722e56cc', '74112852', NULL, 'activo', 'c4840c3f-b65b-4fc9-b4c8-d7d404a9243d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:55:32', '2023-07-04 18:55:32', NULL),
('c9dfde4c-6f83-4264-8d84-2096fab96a29', '75460587', NULL, 'activo', '1a0b5922-174f-4d3c-91f2-7e709c351360', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:45:44', '2023-07-04 10:45:44', NULL),
('ca5e2950-6ad7-4544-a483-df7ed526de2d', '61314621', NULL, 'activo', 'f862b876-0d6e-43a7-9335-6354901c9a1e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:48:50', '2023-07-04 18:48:50', NULL),
('ca645119-7741-4940-ad13-1bdbb9d015ab', '78283761', NULL, 'activo', 'be8ae5bd-5675-415b-a90a-42214b013e6a', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:10:27', '2023-07-04 19:10:27', NULL),
('cb7c7c25-bf1d-441e-869c-06c5b97d561b', '78465567', NULL, 'activo', 'f530c644-9bc2-42c0-8a91-faf1dd66a89f', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:03:57', '2023-07-04 19:06:51', NULL),
('cde0a7df-2fad-4509-b6eb-dc8ce7fb109d', '78347393', NULL, 'activo', 'c4e22f89-1df3-4d63-9a74-6f9c163be1b2', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:35:02', '2023-07-04 15:35:02', NULL),
('cde0b85e-67ef-4863-b1f2-a3d298fb1257', '61409245', NULL, 'activo', '5537c804-1e98-4e5a-9fab-c8ae3a670d68', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:26:58', '2023-07-04 12:26:58', NULL),
('ce082ad3-272b-490d-9173-67877ed38276', '62552517', NULL, 'activo', '2541866f-1d48-42de-8c04-0ab6c68e7da5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:23:32', '2023-07-04 11:23:32', NULL),
('cf534fe0-d610-4d4e-86a1-c1b96691747c', '70286048', NULL, 'activo', '0c423ec9-ac44-4135-9c2a-d462e8f52859', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:43:11', '2023-07-04 18:43:11', NULL),
('cf6f963c-6fdf-4450-a82b-92da98badb73', '76091611', NULL, 'activo', '4ac41da2-ab55-444d-b0ba-da3228649f4d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:17:47', '2023-07-04 11:17:47', NULL),
('d06bc773-819f-487d-bec1-aae2731552a1', '63014168', NULL, 'activo', '472272dc-8a77-4f21-aec0-f403a88ddfb0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:13:03', '2023-07-04 11:13:03', NULL),
('d0d950ca-c475-424d-b188-4439ab5ffe2b', '90579949', NULL, 'activo', 'd21b5643-28a1-4ec6-8e94-00d731d21f15', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:07:42', '2023-07-05 11:07:42', NULL),
('d1056862-8d47-4c78-bda8-633c2590cab2', '72392485', NULL, 'activo', '76929a9b-a69d-4f90-933c-ec13bd2e275b', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:25:08', '2023-07-04 11:25:08', NULL),
('d1afbc9c-ce96-4638-b2d3-fe45b50c2c2d', '82583959', NULL, 'activo', '8370ab44-bb4f-4496-ad5e-9faa87aad7a4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:41:11', '2023-07-04 10:41:11', NULL),
('d230ee90-d846-4f61-958b-d469060c6071', '60892469', NULL, 'activo', '11b34426-fff7-4f85-b194-fbe462ed7389', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:31:16', '2023-07-04 11:31:16', NULL),
('d316aa2f-6ed4-45e8-91cd-e82e2fc21627', '91010194', NULL, 'activo', '5a0042e3-4333-4a9a-b525-9eb907561da2', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:31:04', '2023-07-05 10:31:04', NULL),
('d4655639-02eb-482c-8cb0-7baea805535a', '74081473', NULL, 'activo', 'bdc987e9-eec2-41b3-be95-f5762fd4b822', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-06 15:53:03', '2023-07-06 15:53:03', NULL),
('d4961190-76f9-4c22-9b51-729aa008fed3', '63091798', NULL, 'activo', '3f07bc9c-beb0-4b08-a6dd-297eba5d9eaf', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:47:32', '2023-07-04 17:47:32', NULL),
('d5d67251-c149-4148-ba90-e5204e68b881', '61233069', NULL, 'activo', '26e566b5-f19a-4702-bb76-30b8074e368d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:37:21', '2023-07-04 17:37:21', NULL),
('d6ad50e3-d8b7-4e12-b044-5e97951c4a06', '61119774', NULL, 'activo', 'b3f3e31a-3bfd-4dbe-8d95-997b97111fa1', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:58:30', '2023-07-04 11:58:30', NULL),
('d755c952-0ef6-48f9-9407-247a18477aed', '81138481', NULL, 'activo', '1bb6b888-1844-4682-ba09-851d5a08f0e8', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:07:12', '2023-07-04 16:07:12', NULL),
('d7a19059-6024-419b-af79-179c07a1aa48', '72031873', NULL, 'activo', 'ade39312-b307-447c-8820-4da5a642c800', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:54:32', '2023-07-05 10:54:32', NULL),
('d8668c56-770b-4662-8c9c-5188b5c83ac5', '77802586', NULL, 'activo', '3921cef8-3e2e-4939-83eb-9244a5905068', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:28:45', '2023-07-04 11:28:45', NULL),
('d8bd0e0f-6110-4dad-95d7-5843ff869270', '72958187', NULL, 'activo', '8a8515c7-a060-4108-b4ab-14490032cb93', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:12:02', '2023-07-04 11:12:02', NULL),
('d8e4087f-78e3-4779-980d-494a2572007f', '72832790', NULL, 'activo', '387a6d41-cd0e-4593-be0f-bdb73d549ee9', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:39:38', '2023-07-04 11:39:38', NULL),
('d9117b4f-dac4-42ec-b974-50b5c32f7acf', '43455767', NULL, 'activo', '62f8a55f-2498-49a8-9b86-3d3d02b22aae', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:52:02', '2023-07-04 10:52:02', NULL),
('d954b952-74bc-4f64-934d-1065690712cb', '90622027', NULL, 'activo', '8b894451-6472-4fb4-b7bf-f5d0706771c6', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:18:22', '2023-07-05 10:18:22', NULL),
('d97f6489-abed-48dd-8631-89a0876306bf', '78081823', NULL, 'activo', '2a234ee5-b1dc-47eb-8a28-0ebfbf488ea3', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:11:59', '2023-07-04 19:11:59', NULL),
('d99863c1-bb0b-47c9-87fd-e9a1ae9ed964', '71573563', NULL, 'activo', 'bdfce40f-c1cf-43bd-8c5e-81a36c24a0f0', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:08:04', '2023-07-04 11:08:04', NULL),
('da0dcd72-0bcc-4c1a-ba2d-587a89bbbe80', '78056844', NULL, 'activo', '85f3a758-0b7d-42ca-a7d0-bd5f0db4b493', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:49:15', '2023-07-04 15:49:15', NULL),
('da64facd-9f0c-4933-99cc-e15e665c5575', '62423634', NULL, 'activo', '322b1c8b-d1f8-4a15-afe7-aee6ad287deb', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:48:01', '2023-07-04 16:48:01', NULL),
('da945e34-db90-4b54-8d9a-3d579bf9bb5d', '62672432', NULL, 'activo', 'c0b7cd4c-26d3-4c97-a753-bd9c4f7a830e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:39:20', '2023-07-04 18:39:20', NULL),
('daf59530-83db-4253-8e8f-0fbbe0dfe74c', '78517512', NULL, 'activo', 'd8c35003-1d7e-484c-88d2-98e47158dfd7', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:08:35', '2023-07-04 19:08:35', NULL),
('db156d3d-f525-4044-a87b-05039225ec31', '77179210', NULL, 'activo', '7925381b-f1d6-4333-b1e6-226e49237321', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:53:37', '2023-07-04 10:53:37', NULL),
('db281a1a-f98f-4edf-95e1-9c8401d4ec3f', '62014880', NULL, 'activo', '82dc64bd-07d2-4078-9c96-fe02b73564bb', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:09:56', '2023-07-04 18:09:56', NULL),
('db37f7b0-8986-4f15-9927-98a3e07f13b2', '81181447', NULL, 'activo', '0ee34739-d46b-4039-b504-0800a7efd065', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:06:06', '2023-07-04 19:06:06', NULL),
('db6c3c1e-82cb-409f-a9cf-1470fdd299a3', '47827091', NULL, 'activo', '8376fc99-1f66-43e7-a4fe-21081530b0bb', '887a0cdc-351b-4601-b53b-082e873ee860', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '9a85145a-8854-474a-96c1-cc1a9f3c7dbf', NULL, '2023-07-15 09:46:49', '2023-07-15 09:46:49', NULL),
('dc26a706-6ebf-4d94-ae8c-d1c3c343f319', '72717205', NULL, 'activo', '2188160e-dd5f-4a5a-a2fe-137db42d0506', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-30 19:32:08', '2023-06-30 19:32:08', NULL),
('ddc4d0d3-2d85-47d0-8666-49a771c42627', '62015179', NULL, 'activo', 'c89633a9-cd63-4ab7-8d6f-d352dfc87bee', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:46:46', '2023-07-04 10:46:46', NULL),
('de626afb-b99c-4b19-94fd-0deeb44c8c96', '72879047', NULL, 'activo', '8e1bbf29-53d3-4ea7-9a52-0885eb2130e4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:50:15', '2023-07-04 18:50:15', NULL),
('de65f04d-9982-4157-b2e4-d5b2a911c484', '80821932', NULL, 'activo', '37f4421e-9a9d-4e2e-8b8c-0d00203499ed', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:09:40', '2023-07-04 16:09:40', NULL),
('de9f4a35-ace0-4bbd-94e2-e98e4e3942b1', '78162449', NULL, 'activo', '47b63e97-4d98-4fac-b3ee-9d25603ab937', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:15:25', '2023-07-04 19:15:25', NULL),
('defcad62-8a36-4d9c-84fb-319d9cab1f7e', '61713550', NULL, 'activo', 'e9efd0ca-381c-4505-ada5-d6906d370cdb', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:00:41', '2023-07-04 12:00:41', NULL),
('df1fccc7-de42-48e1-9470-4580a43b122b', '72288156', NULL, 'activo', '6b509ba0-0079-4c53-93d1-ed2a66512c61', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:33:33', '2023-07-04 17:33:33', NULL),
('df855961-eda1-467a-9a1e-27d67eb07287', '73665040', NULL, 'activo', 'f72dd948-127b-4120-ac09-ea8a309aa31c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:28:23', '2023-07-04 16:28:23', NULL),
('dfaa48be-683d-4726-aac5-3c36ad59d15c', '61957652', NULL, 'activo', '7ff5c903-1620-4723-b424-3a30add63217', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:29:25', '2023-07-04 11:29:25', NULL),
('e002ddfe-900c-4216-9f42-cdf6e2ecf17b', '41998293', NULL, 'activo', 'aa14a2b6-9690-4668-a49c-e7fe9b3d7723', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:20:30', '2023-07-04 10:20:30', NULL),
('e0394252-41dc-4ea8-896d-7704c52972a9', '90125102', NULL, 'activo', '9e7b5966-cb48-4b1d-9196-1e418cdfa50e', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:05:55', '2023-07-05 11:05:55', NULL),
('e081b63b-8b46-4947-83d1-692e107049aa', '90706497', NULL, 'activo', '3acc4bed-b3b1-4004-b7cf-4d5584e651e3', '887a0cdc-351b-4601-b53b-082e873ee860', '57c808a2-97f0-45d9-86e1-945d439680b4', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:03:17', '2023-07-05 11:03:17', NULL),
('e0d1fccf-7e83-4cd6-baa2-f5c7d4950316', '79583508', NULL, 'activo', '06a49ec8-9d48-4a26-95c7-228c921d81ff', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:43:56', '2023-07-04 15:43:56', NULL),
('e1939770-1258-4726-80ae-9d865b75a3e0', '61480334', NULL, 'activo', 'c546c996-b9a6-4467-a8fe-282974f1bd15', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:05:31', '2023-07-04 18:05:31', NULL),
('e1f6858b-5da3-4d9a-817f-1dccad63e7e4', '62518255', NULL, 'activo', 'bb74bdd3-924d-4e5d-88f8-0ee8ad0e4cb9', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:04:59', '2023-07-04 11:04:59', NULL),
('e31273b3-729a-47ea-bd98-c5c33c44d952', '63588586', NULL, 'activo', 'f8327f20-513f-463f-9b7d-f1bf0c2fea98', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:11:56', '2023-07-04 10:11:56', NULL),
('e45ecedb-27e5-48a8-b075-4703d4cea0ea', '91245171', NULL, 'activo', 'a573657d-5ab2-48fb-b09a-f522ec0efd5c', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:28:29', '2023-07-05 10:28:29', NULL),
('e4818417-8da6-40a7-a022-e4c789dcfabe', '44975233', NULL, 'activo', 'bc3cd9f2-2746-450f-a0e7-083240ce5ccd', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:44:55', '2023-07-04 17:44:55', NULL),
('e60f109e-80c4-4fcd-a539-97ee0c97df08', '62043060', NULL, 'activo', '196215a9-1a54-4806-9d72-a4a0ba5ce572', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:48:13', '2023-07-04 16:48:13', NULL),
('e6269bac-ec15-4cea-b9fe-42483cf0bd18', '77575132', NULL, 'activo', '5ea2a063-5783-4a9e-bb6d-897526e5a46a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:14:44', '2023-07-04 11:14:44', NULL),
('e6404a1e-8bde-4a04-aa05-29e2b4d4b52d', '63193458', NULL, 'activo', 'ba764c4e-cde2-4989-8c43-1a3e1cfd246e', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-10 17:37:19', '2023-07-10 17:37:19', NULL),
('e71eeb57-d89c-491e-af12-fa7bf8ea9ba7', '78845452', NULL, 'activo', '62c83e2a-9013-49f7-b769-9dca55c826bb', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:56:31', '2023-07-04 15:56:31', NULL),
('e78a869e-f35d-4885-acd4-810e1d293d95', '77999372', NULL, 'activo', '7949a5d0-9ff4-4c52-8852-0c26961fb203', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '5d02cc4b-86e2-4db5-b3b9-24d9a4d3adb7', NULL, '2023-07-04 16:04:40', '2023-07-04 16:04:40', NULL),
('e79fa557-cee4-49b9-8805-7e4f6653f457', '76318776', NULL, 'activo', '861f2ff2-978f-494d-98d0-6ddb236b05db', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:19:54', '2023-07-04 17:19:54', NULL),
('e7c7f918-8b3f-4c6d-87a0-11c1d8f4f4d9', '76364726', NULL, 'activo', 'e6454ee9-7e6d-4a08-a626-95b29cd7b01f', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:46:58', '2023-07-04 18:46:58', NULL),
('e81a709f-a7c2-4473-9564-6ab260816fbd', '61409102', NULL, 'activo', '5129d4df-fc6a-46c2-b524-1d64af257d05', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:25:39', '2023-07-04 18:25:39', NULL),
('e88b6d63-c634-4fa7-b313-c244026a1fa0', '79943530', NULL, 'activo', 'bd2aba03-04ba-438c-a685-9fe1a01e3168', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:39:38', '2023-07-05 10:39:38', NULL),
('e88cf88f-592a-4aca-ae20-23d6faf7dd9e', '73352901', NULL, 'activo', '4345b828-807b-420f-9f74-1af06f73f84a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:49:21', '2023-07-04 16:49:21', NULL),
('e8fdc35e-1a40-4ce9-be05-496ba68ad090', '62672283', NULL, 'activo', '21cbcc8f-66b9-4c63-8838-ad0944c132ea', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:57:34', '2023-07-04 11:57:34', NULL),
('e925fb67-7f4b-4b0d-a4c2-05774fa65975', '61429337', NULL, 'activo', 'f5151641-4556-426c-979d-519cb10acc8c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:04:05', '2023-07-04 18:04:05', NULL),
('e97a3752-ef19-48a2-a0d3-cacc52c6859e', '90014927', NULL, 'activo', '06f3d27f-d4bc-4408-8b14-210a99d96698', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:33:21', '2023-07-05 10:33:21', NULL),
('e99a59aa-dc90-4786-b1fe-58bc9b8623dd', '61314403', NULL, 'activo', 'e9372286-06a9-44b5-bd8d-0a7377583d2d', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 10:47:58', '2023-07-05 10:47:58', NULL),
('e99c7c79-211b-44b9-a284-ac0bb298d98d', '63193578', NULL, 'activo', 'd288e096-5582-4777-b6ff-fd3bc5521f22', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:03:26', '2023-07-04 19:03:26', NULL),
('ea4417aa-af6e-470b-b0f3-e2263e6de658', '73057492', NULL, 'activo', '761fb457-9a1e-4f57-8c32-2436e3c620f8', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:28:30', '2023-07-04 10:28:30', NULL),
('ea8173d3-2824-484a-9047-fdffce9a1d5d', '62014845', NULL, 'activo', 'a21ff433-6d79-4415-bdf3-e82830b69639', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:37:27', '2023-07-04 18:37:27', NULL),
('eae15587-0dff-4f49-a189-d13c9665aed1', '61822286', NULL, 'activo', 'a7b72830-a98a-4b9f-8b70-58b0f08ab423', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:31:02', '2023-07-04 10:31:02', NULL),
('eb9c27a5-d403-4876-bcef-3086a4e8af4b', '62518155', NULL, 'activo', '37425000-e7db-40bc-a4b9-9599f7e52e66', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:39:23', '2023-07-04 18:39:23', NULL),
('ebe3630a-5817-4bc6-9ea2-14b68583646b', '71397459', NULL, 'activo', '62ba2b20-6969-4791-90e6-a5821eb6e534', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:37:01', '2023-07-04 10:37:01', NULL),
('ec13b2c5-b702-45a8-bdd3-30669010a45a', '60983930', NULL, 'activo', 'a60c3016-64b1-4449-b69e-2e11b0e03f14', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-06 18:50:51', '2023-07-06 18:50:51', NULL),
('ecfd3729-aa1c-423d-a635-7d377cafc590', '75460608', NULL, 'activo', '60a6b45e-f7ae-4642-8fc3-d3db9bcba064', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:32:26', '2023-07-04 11:32:26', NULL),
('ed39843d-dfa0-4ced-8e9d-f42ef501c614', '70466915', NULL, 'activo', '1546dcb1-c8a7-4649-b230-c189709ecb95', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:24:47', '2023-07-04 17:24:47', NULL),
('edafe6f5-791d-41ad-b645-5687781e1cc2', '78627359', NULL, 'activo', '99239282-ec2b-432f-8ae9-0383db562129', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', 'edafe6f5-791d-41ad-b645-5687781e1cc2-1687904007.png', '2023-06-27 15:35:04', '2023-06-27 17:13:27', NULL),
('eeec50df-b739-4ed6-b879-5a2db9caddfd', '61911918', NULL, 'activo', '21f0d803-7041-42dd-9ed9-962c1f38d26a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:21:08', '2023-07-04 18:21:08', NULL),
('f011de96-7392-4802-9a66-3f58cde4242d', '61911990', NULL, 'activo', '0cde7f74-d0c4-4c02-a701-61834f9ce1dd', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:35:48', '2023-07-04 10:35:48', NULL),
('f0218127-8487-4902-b919-e80162e8badd', '73133358', NULL, 'activo', 'f2063dd4-3c0d-43f8-98a6-756cdf7e79f9', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:10:20', '2023-07-04 18:10:20', NULL),
('f02fd40c-509f-4103-858d-ff1a561517f1', '75835207', NULL, 'activo', 'e9f8aff7-9050-40b7-a009-cf36197436fa', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:21:35', '2023-07-04 12:21:35', NULL),
('f0a1c25b-9ea0-4e7c-b696-90eee76aecfb', '81611043', NULL, 'activo', '8d6297ed-475f-46cf-9e78-08321c07cf74', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:13:42', '2023-07-04 16:13:42', NULL),
('f0db41af-3cab-44ca-9434-d6e5f4d39ed9', '60957578', NULL, 'activo', 'eba22aff-95e8-4183-8f93-8586a890fda4', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 11:55:16', '2023-07-04 11:55:16', NULL),
('f103152a-05df-4b09-ab6a-707a2a4dbef5', '78480856', NULL, 'activo', '6c52dc97-1cd2-431d-a53a-f388e717fda5', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 12:36:20', '2023-07-04 12:36:20', NULL),
('f389b8f8-37e6-4eb6-94ad-697b14c73c29', '78321159', NULL, 'activo', '564b5943-b9f6-469d-9e19-cfd28cf7879a', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-07 18:27:45', '2023-07-07 18:27:45', NULL),
('f4709e94-0457-472c-992d-47003d46ab00', '76343877', NULL, 'activo', '393b5b17-1f5a-42fa-8d9d-6cd876f1bf91', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2a6ad508-dcbc-4f44-a4a4-3c546f509835', NULL, '2023-07-04 18:03:44', '2023-07-04 18:03:44', NULL),
('f546dbf0-b2f6-408d-aac4-9260260837cd', '954794068', NULL, 'activo', '1d5b5a5a-91e2-4752-b2f0-5ffb06fad5f7', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-30 19:30:09', '2023-06-30 19:30:09', NULL),
('f5934953-a3a2-427b-8e87-9f61c3284b39', '78072659', NULL, 'activo', '72053f77-35c0-4825-aa7a-62a2b9867f27', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 15:47:53', '2023-07-04 15:47:53', NULL),
('f706b077-6ecc-4646-8052-2fd0ba390574', '78944051', NULL, 'activo', 'c3fd4ab1-0a2a-4f04-9940-b3b56a62a117', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:17:48', '2023-07-04 19:17:48', NULL),
('f742c499-d749-43a9-84bc-55b602e8627a', '79023995', NULL, 'activo', 'b391196a-6c59-4ec1-ab81-b40cb06af65d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:06:40', '2023-07-04 19:06:40', NULL),
('f76c2f66-2781-4185-888f-8cae4606010e', '72717266', NULL, 'activo', 'a3ff9a12-c012-4319-8611-cdf41183811c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:35:40', '2023-07-04 18:35:40', NULL),
('f7f86769-518e-4386-8b07-d8190b9236ea', '61517164', NULL, 'activo', '1c359c5e-bdb7-4f59-bd79-8a4812b34c7e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-06-29 18:57:02', '2023-06-29 18:57:02', NULL),
('f86ebc11-686b-429b-b8d4-f588ccfe9ea0', '75210230', NULL, 'activo', '815d70ef-a3d0-4f36-b3ea-6786e40b289c', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:35:31', '2023-07-04 17:35:31', NULL),
('f9aaa6ef-7003-49cf-9c02-e1ec02719f44', '61314673', NULL, 'activo', 'e4592846-9fb5-4287-8287-7cafd80988f6', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:33:23', '2023-07-04 10:33:23', NULL),
('fa7d21c5-158d-4b54-a2c3-7497caf5fc0a', '75838212', NULL, 'activo', '7034c320-7c08-46c8-8bba-081174a8aa57', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:00:13', '2023-07-04 18:00:13', NULL),
('faafbe97-950a-4e47-8792-cf08f0402f99', '71538205', NULL, 'activo', '083cd2d5-e882-4a5c-afa6-3d488592e244', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:18:59', '2023-07-04 10:18:59', NULL),
('fabb1430-bd27-4899-9101-66c851601ed8', '72340977', NULL, 'activo', '8763eb99-ee33-4432-83cd-8031833ec4cb', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 10:50:33', '2023-07-04 10:50:33', NULL),
('fb2849a2-a445-469b-8b5d-0a4723d66d44', '62518139', NULL, 'activo', '5f92ebf9-af1d-4cc5-860b-013a25dcdcb5', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:32:53', '2023-07-04 18:32:53', NULL),
('fb655f0d-259f-4905-b125-08709c6d4688', '62552409', NULL, 'activo', 'e193b4a0-9d4a-4b7f-b8d0-204369360417', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:58:24', '2023-07-04 18:58:24', NULL),
('fbafa3cf-9d67-4c54-827a-60271ed3b6f1', '61080764', NULL, 'activo', '8dd2b975-187b-4c42-a762-36c1553c0f0e', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 17:29:49', '2023-07-04 17:29:49', NULL),
('fcb627d5-874c-4083-a394-b97a750c8f9c', '91190268', NULL, 'activo', 'efe3c526-c871-45e9-a8f1-815518a58465', '887a0cdc-351b-4601-b53b-082e873ee860', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-07 16:06:29', '2023-07-07 16:19:48', NULL),
('fd413fab-395a-45b5-8eca-cb396a960cc7', '73339150', NULL, 'activo', '1619a718-818b-48c0-915a-619c07c41095', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 18:09:15', '2023-07-04 18:09:15', NULL),
('fdc30e72-771b-4ea5-b1bf-0b4f64eb24cf', '63219018', NULL, 'activo', '27c7378a-1aae-444c-9888-826228ace099', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:06:03', '2023-07-04 16:06:03', NULL),
('fe69eab5-6988-4b05-a374-6535ce4a1d0e', '63688386', NULL, 'activo', '883c74be-4ad4-4227-a22e-b5b1da65949a', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:16:37', '2023-07-04 19:16:37', NULL),
('feb0a394-ff8d-4163-b09a-e4bc48bb0a47', '77938875', NULL, 'activo', 'ddd7d46b-0031-4665-be97-50c60f383a6d', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 19:21:57', '2023-07-04 19:21:57', NULL);
INSERT INTO `estudiantes` (`id`, `codigo`, `birthdate`, `estado`, `id_persona`, `id_apoderado`, `id_programa_academico`, `id_ciudad`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
('fedd8b99-78f4-4a98-b2ba-6b3bc0af2689', '79499472', NULL, 'activo', '3ab7ad8a-3317-4140-9592-b1b902085a52', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-13 11:11:37', '2023-07-13 11:11:37', NULL),
('ff20f2fd-afef-4056-8113-c0e4b9ec0b82', '63143501', NULL, 'activo', '40c5ecbd-7cca-4257-91f5-e25201f89f69', '887a0cdc-351b-4601-b53b-082e873ee860', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-04 16:45:52', '2023-07-04 16:45:52', NULL),
('ffd9f255-d9fe-4958-b218-56c175168fdc', '75180182', NULL, 'activo', 'a5a9eaad-8a0a-4edf-9c43-5df105a0a26a', '887a0cdc-351b-4601-b53b-082e873ee860', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '779efb76-afe9-4274-9ec9-9b50513b314c', NULL, '2023-07-05 11:11:40', '2023-07-05 11:11:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grupos`
--

CREATE TABLE `grupos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grupos`
--

INSERT INTO `grupos` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1f28f3ef-3c95-4fb8-8661-7627f48bbe04', 'Grupo 1', NULL, NULL, NULL),
('3ba70566-be6b-4f54-8e48-f32287d70ac1', 'Grupo 3', NULL, NULL, NULL),
('ab1ee6fa-dcd0-423c-8145-885d8e111d52', 'Grupo 4', NULL, NULL, NULL),
('bbb47844-4b5d-4130-b387-a15405c89e83', 'Grupo 5', NULL, NULL, NULL),
('ff2acd1a-956c-435c-937e-799817a62ba0', 'Grupo 2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `horarios`
--

CREATE TABLE `horarios` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_unidad_aperturada` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ambiente` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_id` int NOT NULL,
  `inicio` time NOT NULL,
  `fin` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `horarios`
--

INSERT INTO `horarios` (`id`, `id_unidad_aperturada`, `id_ambiente`, `dia`, `dia_id`, `inicio`, `fin`, `created_at`, `updated_at`, `deleted_at`) VALUES
('01d99687-6255-4a7c-8171-0fc553822095', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', 'ads12312312', 'Miércoles', 3, '08:31:00', '10:00:00', '2023-07-03 12:44:38', '2023-07-03 12:44:38', NULL),
('02262a29-cb3c-4031-999d-30c0328a0532', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-07-03 12:17:05', '2023-07-03 12:17:05', NULL),
('023fd2d0-d199-4bcd-ba95-75ea00b9c0b9', 'd7378843-819e-4949-9240-7969019536f7', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Martes', 2, '07:00:00', '08:30:00', '2023-07-03 12:04:49', '2023-07-03 12:04:49', NULL),
('03faffde-2436-4501-abc8-3f704b43f2df', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Martes', 2, '08:31:00', '10:00:00', '2023-07-03 12:20:32', '2023-07-03 12:20:32', NULL),
('04542a88-832d-4b6e-97b6-e4b5c579a942', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Viernes', 5, '19:00:00', '20:30:00', '2023-07-03 12:46:42', '2023-07-03 12:46:42', NULL),
('05717896-1860-4cbd-8d84-4c05d948c5a7', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-07-03 12:32:22', '2023-07-03 12:32:22', NULL),
('07f02a64-a574-461b-aba9-3a122a7407c8', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Jueves', 4, '07:00:00', '08:30:00', '2023-07-03 12:28:17', '2023-07-03 12:46:12', '2023-07-03 12:46:12'),
('08b7bf02-3ead-468e-8b00-7eda4d4c24a9', '759bde85-be83-4c80-8672-7e79abe26d3c', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Miércoles', 3, '15:35:00', '17:05:00', '2023-07-03 18:47:56', '2023-07-03 18:47:56', NULL),
('099f5198-f093-4d99-ae51-d7d8e5f44d35', '6d0571b8-d44c-4c70-9445-7103f0f4155a', 'asfdwr2werf2342', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 19:09:37', '2023-07-03 19:09:37', NULL),
('0b020c46-6815-45e0-b551-e8f68d73b2a1', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Lunes', 1, '19:00:00', '20:30:00', '2023-07-03 12:22:15', '2023-07-03 12:22:15', NULL),
('0b536cf2-d16c-49d7-93fc-29a5e8952bb2', '92ad9d74-996b-4d1a-baaf-5d7f3964471e', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Lunes', 1, '15:35:00', '17:05:00', '2023-07-03 15:32:14', '2023-07-03 15:32:14', NULL),
('0c3a0d2e-bf30-48d6-bd6a-362fd988310c', 'aec4a448-356e-47ba-9660-24d6026cbeec', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 18:56:04', '2023-07-03 18:56:04', NULL),
('0e388b74-03e6-4031-8b25-7d7c7f3b0101', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', 'ads12312312', 'Lunes', 1, '07:00:00', '08:30:00', '2023-06-21 01:05:15', '2023-07-04 11:32:59', '2023-07-04 11:32:59'),
('0ebccc3a-1f08-4e78-a783-4611f696927d', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Viernes', 5, '15:35:00', '17:05:00', '2023-07-03 12:09:07', '2023-07-03 12:09:07', NULL),
('10c77ba8-6698-4bbf-9bf5-550d4ca7973b', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 11:40:13', '2023-07-03 11:50:27', '2023-07-03 11:50:27'),
('10d5ec90-6742-4994-98b4-cc1791dd3863', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Lunes', 1, '20:30:00', '22:00:00', '2023-07-03 11:48:54', '2023-07-03 11:48:54', NULL),
('11c4ba18-143f-441e-a1e3-ec79c4b1de21', '71a61e66-c7b3-4a81-ae6d-6a8a6aea4795', 'ads12312312', 'Sábado', 6, '17:10:00', '18:40:00', '2023-06-27 16:39:20', '2023-06-27 19:01:06', '2023-06-27 19:01:06'),
('12fc3460-4d04-4241-b3a7-e337bc79809e', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Martes', 2, '15:35:00', '17:05:00', '2023-07-03 18:35:48', '2023-07-03 18:35:48', NULL),
('160e7068-9f2f-4afc-9c26-d01ef75d95eb', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', 'ads12312312', 'Martes', 2, '19:00:00', '20:00:00', '2023-06-20 23:47:08', '2023-06-21 04:03:35', '2023-06-21 04:03:35'),
('184eb19f-9ada-4bec-a1b3-634b0031e402', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Viernes', 5, '08:31:00', '10:00:00', '2023-07-03 12:21:09', '2023-07-03 12:21:09', NULL),
('18710e9e-d4a5-4feb-9a74-995059f5f684', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '20:30:00', '22:00:00', '2023-07-03 11:43:42', '2023-07-03 11:48:10', '2023-07-03 11:48:10'),
('18c084ef-c987-4d3d-842c-11e78b463327', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '20:30:00', '22:00:00', '2023-07-03 11:43:42', '2023-07-03 11:48:07', '2023-07-03 11:48:07'),
('18c22fcd-1952-492f-9206-833649299604', 'f969ec62-5767-4453-bef2-468a0888330f', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Jueves', 4, '08:31:00', '10:00:00', '2023-07-03 12:30:35', '2023-07-03 12:30:35', NULL),
('19206ed3-7ca0-4e01-8f09-242517f0c947', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Martes', 2, '07:00:00', '08:30:00', '2023-07-03 12:28:17', '2023-07-03 12:46:17', '2023-07-03 12:46:17'),
('19fd1906-f2e4-41dd-8055-11b0463593a4', '03e074a7-da23-41bb-957e-4a233ec300c4', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Viernes', 5, '15:35:00', '17:05:00', '2023-07-03 15:00:01', '2023-07-03 15:00:01', NULL),
('1af17fba-5a79-4218-b386-d331b685af1a', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', 'ads12312312', 'Miércoles', 3, '17:00:00', '18:40:00', '2023-07-03 09:39:56', '2023-07-03 18:39:04', '2023-07-03 18:39:04'),
('1d8614e3-1d1c-4554-9196-c5a60ee39fa3', '7d545132-5ea7-48f1-8787-6730948133e2', '2d944f17-ac48-42c0-8f94-448da18b733d', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-07-05 17:50:38', '2023-07-05 17:50:38', NULL),
('1f5b95b5-f451-4f87-9776-5d215e4ba72a', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Sábado', 6, '15:35:00', '17:05:00', '2023-07-03 18:35:48', '2023-07-03 18:35:48', NULL),
('20bd1695-8ac7-468d-9e92-360bdb795b0b', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Martes', 2, '07:00:00', '08:30:00', '2023-07-03 12:28:11', '2023-07-03 12:28:11', NULL),
('20de5111-bc54-4e18-a5d3-eb90284afc3d', '64a41cc5-8661-488c-8624-3fcf7d34ef8a', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Jueves', 4, '08:30:00', '10:00:00', '2023-07-03 12:11:53', '2023-07-03 12:11:53', NULL),
('216d24d7-6434-41f6-88ae-44744e1cf3db', 'aec4a448-356e-47ba-9660-24d6026cbeec', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 18:56:04', '2023-07-03 18:56:04', NULL),
('230c50a8-8e9f-4631-9370-e4b503502509', '64a41cc5-8661-488c-8624-3fcf7d34ef8a', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Viernes', 5, '08:30:00', '10:00:00', '2023-07-03 12:12:00', '2023-07-03 12:12:00', NULL),
('234ca6b6-88aa-4a8a-81b2-57fbe66e5629', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Viernes', 5, '08:30:00', '10:00:00', '2023-07-03 12:25:34', '2023-07-03 12:27:34', '2023-07-03 12:27:34'),
('242cf064-c028-48c6-a955-df4f54587198', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Martes', 2, '17:10:00', '18:40:00', '2023-07-04 11:37:11', '2023-07-04 11:37:11', NULL),
('26722625-dc57-42f4-ac16-c0a5b75be8b2', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', 'ads12312312', 'Martes', 2, '19:00:00', '20:00:00', '2023-06-20 23:51:04', '2023-06-21 04:03:31', '2023-06-21 04:03:31'),
('28880947-74d2-47f9-857e-e7941b5f9763', 'f969ec62-5767-4453-bef2-468a0888330f', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Lunes', 1, '08:31:00', '10:00:00', '2023-07-03 12:30:35', '2023-07-03 12:30:35', NULL),
('291ee51b-8b25-4f00-991d-37422d6b2b0c', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Miércoles', 3, '08:31:00', '10:00:00', '2023-07-03 12:20:46', '2023-07-03 12:20:46', NULL),
('2a469543-e79a-4403-823a-f8580617f13c', '92ad9d74-996b-4d1a-baaf-5d7f3964471e', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Viernes', 5, '15:35:00', '17:05:00', '2023-07-03 15:32:14', '2023-07-03 15:32:14', NULL),
('2d2d41ae-d776-4b15-8d83-7b32cf04b71b', '046547db-3eb5-4683-8385-8901a6c432cf', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 19:08:05', '2023-07-03 19:08:05', NULL),
('307bc84d-6ee4-4007-9d91-8bae31e098c3', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-04 11:37:11', '2023-07-04 11:37:11', NULL),
('309ab73d-ba1d-4963-a9dc-9f7384da59e0', '71a61e66-c7b3-4a81-ae6d-6a8a6aea4795', 'ads12312312', 'Jueves', 4, '17:10:00', '18:40:00', '2023-06-27 16:39:20', '2023-06-27 19:01:03', '2023-06-27 19:01:03'),
('324fb8ef-9ec8-483b-abfd-8eb01cdfdc56', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 11:52:48', '2023-07-03 11:52:48', NULL),
('34abdc8b-29b6-459d-b76f-6213619708c9', '9dd74e57-5165-491d-88be-6610f721c393', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-07-03 12:39:22', '2023-07-03 12:39:22', NULL),
('34d0fc08-243c-4c0d-9057-7a2535250d80', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Jueves', 4, '08:30:00', '10:00:00', '2023-07-03 12:25:25', '2023-07-03 12:27:36', '2023-07-03 12:27:36'),
('3572e04a-8052-478a-a075-d5bd108374d7', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-07-03 12:46:42', '2023-07-03 12:46:42', NULL),
('36131bf2-54e3-4906-886f-2d7a7c5da88f', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', 'ads12312312', 'Viernes', 5, '08:31:00', '10:00:00', '2023-07-03 12:44:38', '2023-07-03 12:44:38', NULL),
('36541975-e5cb-4852-8f9c-59cd7f56e8f8', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 18:32:46', '2023-07-03 18:32:46', NULL),
('383c4d84-2b02-4696-827f-dcd226d72c82', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Sábado', 6, '17:10:00', '18:40:00', '2023-07-05 12:43:21', '2023-07-05 12:43:21', NULL),
('3896cfc9-7aad-4b2b-a680-29cf0c3bc29e', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', 'ads12312312', 'Jueves', 4, '09:00:00', '10:00:00', '2023-06-23 09:53:25', '2023-06-27 13:00:59', '2023-06-27 13:00:59'),
('3d3b6376-4c6a-48b4-8afc-c0d7d759b421', 'd7378843-819e-4949-9240-7969019536f7', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-03 12:05:00', '2023-07-03 12:05:00', NULL),
('3fcfce8d-d270-4b85-88a2-ac37da576a7f', '9dd74e57-5165-491d-88be-6610f721c393', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Martes', 2, '19:00:00', '20:30:00', '2023-07-03 12:39:22', '2023-07-03 12:39:22', NULL),
('4235e707-a003-452f-bb4c-0310d51ac9f5', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Jueves', 4, '19:00:00', '20:30:00', '2023-07-03 12:46:42', '2023-07-03 12:46:42', NULL),
('431d1c44-c7fe-4c07-98b0-8c1a586aa56a', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 11:40:13', '2023-07-03 11:50:23', '2023-07-03 11:50:23'),
('43264655-551c-40c1-ada1-aa05ce45b67f', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', 'ads12312312', 'Martes', 2, '08:31:00', '10:00:00', '2023-07-03 12:44:38', '2023-07-03 12:44:38', NULL),
('4363d84d-4fac-48ef-b3ef-10849e4b9699', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Jueves', 4, '17:10:00', '18:40:00', '2023-07-04 11:37:11', '2023-07-04 11:37:11', NULL),
('4608572c-7986-4f34-ac5f-c6a3480787c2', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Viernes', 5, '20:30:00', '22:00:00', '2023-07-03 11:49:47', '2023-07-03 11:49:47', NULL),
('48d6a44e-a65f-4120-96ef-c814d33d1204', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', 'ads12312312', 'Martes', 2, '09:00:00', '10:00:00', '2023-06-23 09:53:25', '2023-06-27 13:00:56', '2023-06-27 13:00:56'),
('499f2eb4-d4f6-4f74-b561-2c1ad91a93b1', '60fce3cf-aec6-4c85-9780-c578815be93a', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Martes', 2, '15:35:00', '17:05:00', '2023-07-03 15:05:41', '2023-07-03 15:05:41', NULL),
('49a3d39d-88c2-4752-85fe-2e377c8503bc', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', 'ads12312312', 'Jueves', 4, '19:00:00', '20:00:00', '2023-06-20 23:50:25', '2023-06-21 04:03:27', '2023-06-21 04:03:27'),
('4a3fa6c5-abf9-44b3-b60d-f86c5a6e491c', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Martes', 2, '19:00:00', '20:30:00', '2023-07-03 12:22:24', '2023-07-03 12:22:24', NULL),
('4a77bf08-4bdd-4148-8e69-87ae69437894', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', 'ads12312312', 'Viernes', 5, '15:35:00', '17:05:00', '2023-07-03 19:11:41', '2023-07-03 19:11:41', NULL),
('4d9e6ddd-50b3-4c19-a308-0e8356d23a65', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', 'bb89d90a-7986-4115-8090-d72110074bf2', 'Viernes', 5, '19:00:00', '20:30:00', '2023-07-07 12:24:45', '2023-07-07 12:24:45', NULL),
('4dfd7223-8b01-4dd9-923f-2540a227e370', 'cf40414f-040a-4177-a48d-dde4080f294d', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Jueves', 4, '15:35:00', '17:05:00', '2023-07-03 18:59:59', '2023-07-03 18:59:59', NULL),
('4e9dc0a2-92a4-44c3-ba12-f001338e9e3a', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 18:32:46', '2023-07-03 18:32:46', NULL),
('50176e7b-63cd-4768-9fef-2e027f7b5f0d', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Jueves', 4, '17:10:00', '18:40:00', '2023-07-05 12:43:21', '2023-07-05 12:43:21', NULL),
('50355cb2-b92c-4ea8-967f-d7adf538bfbc', 'f969ec62-5767-4453-bef2-468a0888330f', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Martes', 2, '08:31:00', '10:00:00', '2023-07-03 12:30:35', '2023-07-03 12:30:35', NULL),
('51ed9bb2-a2d0-48e1-a2a2-66a3f088bae1', 'cc87d80d-85ea-47d1-b43a-c491de4eed00', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Jueves', 4, '17:10:00', '06:40:00', '2023-07-03 14:51:09', '2023-07-03 14:51:09', NULL),
('552a8668-7147-4438-9d5c-b3d2e0aa6794', 'ac738cd8-c7a5-43ee-83bd-04bf3a4f3526', 'c1d92d7f-c1a7-4aa1-8c62-c9aee5d8de55', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-05 12:41:50', '2023-07-05 12:41:50', NULL),
('581e24b2-95b8-4c05-a662-206411016943', '2d350158-1427-4e18-8995-03aa84e1f9c3', '79d4e79d-9f89-4dc4-9014-05bcec51a2de', 'Jueves', 4, '17:10:00', '18:40:00', '2023-07-03 12:37:58', '2023-07-03 12:37:58', NULL),
('587d8b7b-d316-4802-abcc-2d5eab9d75f8', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 19:00:00', '2023-07-03 19:00:00', NULL),
('58b7e634-9723-443c-84e5-90c7169fdf2f', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', 'ads12312312', 'Lunes', 1, '07:00:00', '08:30:00', '2023-06-21 01:09:11', '2023-06-21 01:17:10', '2023-06-21 01:17:10'),
('5a0462de-1012-4c64-956c-3511a96f9992', '71a61e66-c7b3-4a81-ae6d-6a8a6aea4795', 'ads12312312', 'Martes', 2, '17:10:00', '18:40:00', '2023-06-27 16:39:20', '2023-06-27 19:01:00', '2023-06-27 19:01:00'),
('5a358a6d-0d29-4202-8fb7-296b47816880', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', 'ads12312312', 'Jueves', 4, '19:00:00', '20:00:00', '2023-06-20 23:48:59', '2023-06-21 03:56:17', '2023-06-21 03:56:17'),
('5b097cf8-7c12-477d-8610-4c04d2995a1a', 'd7378843-819e-4949-9240-7969019536f7', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Lunes', 1, '07:00:00', '08:30:00', '2023-07-03 12:04:38', '2023-07-03 12:04:38', NULL),
('5b57a900-1be4-40b0-b022-6d5a83e0a336', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-03 11:46:24', '2023-07-03 11:53:36', '2023-07-03 11:53:36'),
('5bdacdcc-da2f-4a6e-9333-aee1ee8697f1', 'f969ec62-5767-4453-bef2-468a0888330f', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Viernes', 5, '08:31:00', '10:00:00', '2023-07-03 12:30:35', '2023-07-03 12:30:35', NULL),
('5c2f57c9-299d-49f1-bc63-7771a986e076', '92ad9d74-996b-4d1a-baaf-5d7f3964471e', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Miércoles', 3, '15:35:00', '17:05:00', '2023-07-03 15:32:14', '2023-07-03 15:32:14', NULL),
('5ce00fa0-8c39-47df-8311-f50121504e14', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', 'bb89d90a-7986-4115-8090-d72110074bf2', 'Lunes', 1, '19:00:00', '20:30:00', '2023-07-07 12:24:45', '2023-07-07 12:24:45', NULL),
('5e27d9d7-8d83-4509-b183-c6001524c702', '7d545132-5ea7-48f1-8787-6730948133e2', '2d944f17-ac48-42c0-8f94-448da18b733d', 'Martes', 2, '19:00:00', '20:30:00', '2023-07-05 17:50:38', '2023-07-05 17:50:38', NULL),
('5f0b03fd-6176-463f-ae7f-b0023e77ccab', 'cc87d80d-85ea-47d1-b43a-c491de4eed00', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Martes', 2, '17:10:00', '06:40:00', '2023-07-03 14:51:09', '2023-07-03 14:51:09', NULL),
('61a36aea-7a95-4792-854a-2ee6576cac93', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', 'asfdwr2werf2342', 'Jueves', 4, '15:35:00', '17:05:00', '2023-07-03 18:51:00', '2023-07-03 18:51:00', NULL),
('65d88bc7-6b51-435b-a634-008dec260743', '22970759-739f-4e75-8b6e-43fa3439dc8d', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Jueves', 4, '17:10:00', '18:40:00', '2023-07-03 18:57:50', '2023-07-03 18:57:50', NULL),
('6711e8a1-9f41-49a9-8cfb-57dbc7201b98', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-03 11:46:24', '2023-07-03 11:53:33', '2023-07-03 11:53:33'),
('68d3b14b-8388-434c-bdee-9d79102b0d89', '64a41cc5-8661-488c-8624-3fcf7d34ef8a', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '08:30:00', '10:00:00', '2023-07-03 12:11:48', '2023-07-03 12:11:48', NULL),
('6904148b-0776-4800-b3b3-fccd47fa7a52', '9dd74e57-5165-491d-88be-6610f721c393', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '19:00:00', '20:00:00', '2023-07-03 12:08:23', '2023-07-03 12:11:32', '2023-07-03 12:11:32'),
('6a635d7c-bde7-4b6f-9dcd-eec278608852', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Lunes', 1, '07:00:00', '08:30:00', '2023-07-04 11:35:56', '2023-07-04 11:35:56', NULL),
('6afedc7d-7fcc-46c7-af9a-3cd32dc8b782', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Lunes', 1, '19:00:00', '20:29:00', '2023-07-03 11:58:54', '2023-07-03 11:58:54', NULL),
('6b70bda1-13e3-46f2-9f58-823e422fbfb6', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', 'ads12312312', 'Miércoles', 3, '17:00:00', '18:40:00', '2023-07-03 09:39:56', '2023-07-03 18:38:59', '2023-07-03 18:38:59'),
('6cbcb107-70f3-4161-b0eb-04b2df13b972', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-04 11:37:11', '2023-07-04 11:37:11', NULL),
('6d7989c2-41b5-48c2-8e0a-48b3cefbe7c4', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '19:00:00', '20:29:00', '2023-07-03 11:59:31', '2023-07-03 11:59:31', NULL),
('6e69f7ed-5113-4f5d-931c-5071c36d2a13', '6d0571b8-d44c-4c70-9445-7103f0f4155a', 'asfdwr2werf2342', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 19:09:37', '2023-07-03 19:09:37', NULL),
('6ee5f1c4-f909-49eb-9dd8-ef0dda26fc03', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Jueves', 4, '17:10:00', '18:40:00', '2023-07-03 11:52:25', '2023-07-03 11:52:25', NULL),
('70faa1e2-0a39-4d18-9991-3ab57d51e500', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Martes', 2, '07:00:00', '08:30:00', '2023-07-04 11:35:56', '2023-07-04 11:35:56', NULL),
('74e918d9-511b-4072-ae0d-58d541e7d369', '03e074a7-da23-41bb-957e-4a233ec300c4', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Lunes', 1, '15:35:00', '17:05:00', '2023-07-03 15:00:01', '2023-07-03 15:00:01', NULL),
('74f21a8f-ceac-4652-8216-6a21e31e0df4', 'cf40414f-040a-4177-a48d-dde4080f294d', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Sábado', 6, '15:35:00', '17:05:00', '2023-07-03 18:59:59', '2023-07-03 18:59:59', NULL),
('75106145-c7bf-4703-8d9a-156016ad693b', '64a41cc5-8661-488c-8624-3fcf7d34ef8a', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Lunes', 1, '08:30:00', '10:00:00', '2023-07-03 12:11:31', '2023-07-03 12:11:31', NULL),
('76fb8b59-6eed-49bd-b637-f22de5614b55', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Lunes', 1, '15:35:00', '17:05:00', '2023-07-03 12:07:06', '2023-07-03 12:07:06', NULL),
('77063026-f99b-4db5-b8a2-50762e336a7c', '6887e89e-edad-4b68-9010-5adb29b4f22b', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Jueves', 4, '17:10:00', '18:40:00', '2023-07-03 12:14:30', '2023-07-03 12:14:30', NULL),
('786c893d-425d-412b-8aaa-c28579604740', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', 'ads12312312', 'Lunes', 1, '17:10:00', '18:40:00', '2023-06-21 01:18:16', '2023-06-27 12:58:10', '2023-06-27 12:58:10'),
('78c81aac-29e1-4af6-9a9d-45f3c49ad32e', 'f969ec62-5767-4453-bef2-468a0888330f', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Miércoles', 3, '08:31:00', '10:00:00', '2023-07-03 12:30:35', '2023-07-03 12:30:35', NULL),
('7a042dfb-c103-48bd-b3ee-13afec1ad95b', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Martes', 2, '17:10:00', '18:40:00', '2023-07-05 12:43:21', '2023-07-05 12:43:21', NULL),
('7ba340af-8578-4dba-8fb9-3a09f58295fe', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', 'ads12312312', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 18:40:34', '2023-07-03 18:40:34', NULL),
('7bced9aa-f525-4cac-9680-384380ae773d', 'ac738cd8-c7a5-43ee-83bd-04bf3a4f3526', 'c1d92d7f-c1a7-4aa1-8c62-c9aee5d8de55', 'Martes', 2, '17:10:00', '18:40:00', '2023-07-05 12:41:50', '2023-07-05 12:41:50', NULL),
('7bda92d1-4b40-415a-8538-7565d6532673', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', 'asfdwr2werf2342', 'Martes', 2, '19:00:00', '20:30:00', '2023-07-03 12:40:41', '2023-07-03 12:40:41', NULL),
('7d02ef5d-0448-4366-b1e8-673937b3814d', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Jueves', 4, '15:35:00', '17:05:00', '2023-07-03 12:08:43', '2023-07-03 12:08:43', NULL),
('7d07588a-6002-40cb-afd0-d9cb6c800369', '6887e89e-edad-4b68-9010-5adb29b4f22b', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 12:13:33', '2023-07-03 12:13:33', NULL),
('7d171df2-30e7-4280-9409-ea5017741eba', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Martes', 2, '17:10:00', '18:40:00', '2023-07-03 11:51:49', '2023-07-03 11:51:49', NULL),
('7d75865f-d700-4788-ab58-f0e450740f52', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', 'ads12312312', 'Miércoles', 3, '09:00:00', '10:00:00', '2023-06-23 09:53:25', '2023-06-27 13:00:53', '2023-06-27 13:00:53'),
('7fac2fa1-a814-4dc6-8da4-c8667fdae965', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Martes', 2, '08:30:00', '10:00:00', '2023-07-03 12:25:06', '2023-07-03 12:27:42', '2023-07-03 12:27:42'),
('81fe4144-3a8c-4312-9b92-ed0c65695dca', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Jueves', 4, '07:00:00', '08:30:00', '2023-07-03 12:28:33', '2023-07-03 12:28:33', NULL),
('830b579b-c738-4688-afc8-4b8c38be60d2', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-03 12:28:17', '2023-07-03 12:46:14', '2023-07-03 12:46:14'),
('835ced2b-6ba8-4353-b2c9-3e95b7825b12', '759bde85-be83-4c80-8672-7e79abe26d3c', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Lunes', 1, '15:35:00', '17:05:00', '2023-07-03 18:47:56', '2023-07-03 18:47:56', NULL),
('84c865ef-7966-4326-bfbd-878f8138aefb', '6d0571b8-d44c-4c70-9445-7103f0f4155a', 'asfdwr2werf2342', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 19:09:37', '2023-07-03 19:09:37', NULL),
('84e549a1-3ef4-4777-bb5e-c59e865c23f0', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '20:30:00', '22:00:00', '2023-07-03 11:43:42', '2023-07-03 11:48:04', '2023-07-03 11:48:04'),
('865e2292-076c-43ac-8e65-435a85327fb6', '759bde85-be83-4c80-8672-7e79abe26d3c', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Viernes', 5, '15:35:00', '17:05:00', '2023-07-03 18:47:56', '2023-07-03 18:47:56', NULL),
('8663a23e-7e97-43e2-b86a-9776058f4226', '60fce3cf-aec6-4c85-9780-c578815be93a', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Sábado', 6, '15:35:00', '17:05:00', '2023-07-03 15:05:41', '2023-07-03 15:05:41', NULL),
('8981b9ac-c91a-4a97-a5ba-3b26a63b0d05', '22970759-739f-4e75-8b6e-43fa3439dc8d', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Sábado', 6, '17:10:00', '18:40:00', '2023-07-03 18:57:50', '2023-07-03 18:57:50', NULL),
('8ac46b87-27ad-4ed4-b9cf-9cbf0f61fa92', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', 'ads12312312', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-06-28 10:55:31', '2023-06-28 10:55:31', NULL),
('8bb052eb-72f8-46dd-9dce-2b0177a527fd', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-03 11:46:24', '2023-07-03 11:53:30', '2023-07-03 11:53:30'),
('8d8e871b-346e-46a6-8624-e4153f0cb248', 'ac738cd8-c7a5-43ee-83bd-04bf3a4f3526', 'c1d92d7f-c1a7-4aa1-8c62-c9aee5d8de55', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-05 12:41:50', '2023-07-05 12:41:50', NULL),
('8eacbb9d-b6f8-4cac-929f-c9410e4d9f6b', '7d545132-5ea7-48f1-8787-6730948133e2', '2d944f17-ac48-42c0-8f94-448da18b733d', 'Jueves', 4, '19:00:00', '20:30:00', '2023-07-05 17:50:38', '2023-07-05 17:50:38', NULL),
('8eb28be1-4c61-4fc2-b955-c28498ad75bd', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 19:00:00', '2023-07-03 19:00:00', NULL),
('8f672adc-0a12-401f-bf55-5de0fedaa90a', 'ac738cd8-c7a5-43ee-83bd-04bf3a4f3526', 'c1d92d7f-c1a7-4aa1-8c62-c9aee5d8de55', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-05 12:41:50', '2023-07-05 12:41:50', NULL),
('8fead2f0-9b01-4e77-a7df-bb44af8706bb', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Lunes', 1, '19:00:00', '20:30:00', '2023-07-03 12:16:44', '2023-07-03 12:16:44', NULL),
('90b3009b-1b79-4a4d-b30b-d97481d950ab', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Lunes', 1, '07:00:00', '08:30:00', '2023-07-03 12:28:05', '2023-07-03 12:28:05', NULL),
('931dd8ed-0b12-41cd-bda9-69effaa7664e', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Martes', 2, '19:00:00', '20:30:00', '2023-07-03 12:16:53', '2023-07-03 12:16:53', NULL),
('940d26a6-b0d9-4e6d-b2ba-e6a153b34fd7', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', 'bb89d90a-7986-4115-8090-d72110074bf2', 'Martes', 2, '19:00:00', '20:30:00', '2023-07-07 12:24:45', '2023-07-07 12:24:45', NULL),
('95299d1e-8da2-4275-a0fb-334145458f61', '046547db-3eb5-4683-8385-8901a6c432cf', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 19:08:05', '2023-07-03 19:08:05', NULL),
('9642351c-7ddf-4848-96e0-5bc7f0cd8f72', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Viernes', 5, '07:00:00', '08:30:00', '2023-07-04 11:35:56', '2023-07-04 11:35:56', NULL),
('964334dc-ee5b-4e8e-bfe1-622271a5f623', '9dd74e57-5165-491d-88be-6610f721c393', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '19:00:00', '20:00:00', '2023-07-03 12:08:23', '2023-07-03 12:11:29', '2023-07-03 12:11:29'),
('9643411c-7f8c-4c65-a137-f56274e4eb5e', '2d350158-1427-4e18-8995-03aa84e1f9c3', '79d4e79d-9f89-4dc4-9014-05bcec51a2de', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 12:37:58', '2023-07-03 12:37:58', NULL),
('9763d34e-f9ed-4191-9c8f-1511b0f1bc10', 'd7378843-819e-4949-9240-7969019536f7', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Viernes', 5, '07:00:00', '08:30:00', '2023-07-03 12:05:19', '2023-07-03 12:05:19', NULL),
('9a155904-97df-4da5-9b54-c32591bc52ad', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '20:30:00', '22:00:00', '2023-07-03 11:43:42', '2023-07-03 11:48:01', '2023-07-03 11:48:01'),
('9a18fd38-ea32-4006-8071-b9b17482af3d', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Jueves', 4, '19:00:00', '20:30:00', '2023-07-03 12:17:13', '2023-07-03 12:17:13', NULL),
('9d259cdf-5fe8-41d2-8642-afc2bd2b6b18', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Viernes', 5, '07:00:00', '08:30:00', '2023-07-03 12:28:17', '2023-07-03 12:46:09', '2023-07-03 12:46:09'),
('9df4de83-b8dd-4d46-881d-92fb258a5e12', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', 'asfdwr2werf2342', 'Viernes', 5, '19:00:00', '20:30:00', '2023-07-03 12:40:41', '2023-07-03 12:40:41', NULL),
('9e615b46-9d2d-463b-8bae-4b35ab0951cc', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Martes', 2, '19:00:00', '20:30:00', '2023-07-03 12:46:42', '2023-07-03 12:46:42', NULL),
('9e867497-79e4-4285-8db2-91caa7984556', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Martes', 2, '19:00:00', '20:29:00', '2023-07-03 11:59:14', '2023-07-03 11:59:14', NULL),
('9e9ee758-516d-4fe7-8204-68e4f454c479', '7d545132-5ea7-48f1-8787-6730948133e2', '2d944f17-ac48-42c0-8f94-448da18b733d', 'Viernes', 5, '19:00:00', '20:30:00', '2023-07-05 17:50:38', '2023-07-05 17:50:38', NULL),
('9ee9b80d-750a-4974-8687-2ed51f52f44c', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', 'asfdwr2werf2342', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-07-03 12:40:41', '2023-07-03 12:40:41', NULL),
('9efa7056-43ef-476c-9cdb-f8f24f81e7ed', '6887e89e-edad-4b68-9010-5adb29b4f22b', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Martes', 2, '17:10:00', '18:40:00', '2023-07-03 12:14:02', '2023-07-03 12:14:02', NULL),
('9fd8dd05-34d0-44b9-8221-0bfc611d7743', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 11:51:15', '2023-07-03 11:51:15', NULL),
('a05743a3-acff-4313-9ea5-f93b82b492c0', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Jueves', 4, '19:00:00', '20:30:00', '2023-07-03 12:32:22', '2023-07-03 12:32:22', NULL),
('a15869ed-2a4e-44ed-879d-a19e470a2c84', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '20:30:00', '22:00:00', '2023-07-03 11:43:42', '2023-07-03 11:47:56', '2023-07-03 11:47:56'),
('a182da28-a639-43f5-920a-796f3300e593', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', 'bb89d90a-7986-4115-8090-d72110074bf2', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-07-07 12:24:45', '2023-07-07 12:24:45', NULL),
('a1befb0d-14ab-4b40-8a2b-58f170813bec', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', 'ads12312312', 'Martes', 2, '19:00:00', '20:30:00', '2023-06-28 10:55:31', '2023-06-28 10:55:31', NULL),
('a2678171-bb42-4863-86c2-be40c509b904', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 18:32:46', '2023-07-03 18:32:46', NULL),
('a3399c2e-0d22-43f0-9ccb-9dbab9d7bedd', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', 'asfdwr2werf2342', 'Sábado', 6, '15:35:00', '17:05:00', '2023-07-03 18:51:00', '2023-07-03 18:51:00', NULL),
('a42089dd-060a-456e-9251-4a4c1f3ac678', '7d545132-5ea7-48f1-8787-6730948133e2', '2d944f17-ac48-42c0-8f94-448da18b733d', 'Lunes', 1, '19:00:00', '20:30:00', '2023-07-05 17:50:38', '2023-07-05 17:50:38', NULL),
('a4b253ff-c02a-49bd-b814-368f9c7ee36e', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Viernes', 5, '19:00:00', '20:30:00', '2023-07-03 12:32:22', '2023-07-03 12:32:22', NULL),
('aa770068-9020-4669-9049-900208f9bb66', '2d350158-1427-4e18-8995-03aa84e1f9c3', '79d4e79d-9f89-4dc4-9014-05bcec51a2de', 'Martes', 2, '17:10:00', '18:40:00', '2023-07-03 12:37:58', '2023-07-03 12:37:58', NULL),
('ac7efdcc-2214-4303-91ce-6ce5ae5f218c', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Viernes', 5, '19:00:00', '20:30:00', '2023-07-03 12:22:45', '2023-07-03 12:22:45', NULL),
('afff12d0-310d-443b-87c7-4cf7f411d956', '64a41cc5-8661-488c-8624-3fcf7d34ef8a', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Martes', 2, '08:30:00', '10:00:00', '2023-07-03 12:11:42', '2023-07-03 12:11:42', NULL),
('b185a973-3968-4f6b-b366-af80fecbacbb', '046547db-3eb5-4683-8385-8901a6c432cf', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 19:08:05', '2023-07-03 19:08:05', NULL),
('b29605a2-f8c0-4e80-8b40-944df2dd9350', 'cc87d80d-85ea-47d1-b43a-c491de4eed00', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Sábado', 6, '17:10:00', '06:40:00', '2023-07-03 14:51:09', '2023-07-03 14:51:09', NULL),
('b2eb682b-dfe6-4c8b-9e2e-b68a75bb1758', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-04 11:37:11', '2023-07-04 11:37:11', NULL),
('b2fa177f-ee59-4e01-9d9a-970357fd741f', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', 'ads12312312', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 18:40:34', '2023-07-03 18:40:34', NULL),
('b4bd5d81-5c82-44b4-a8ca-f57c33e3b8be', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 11:40:13', '2023-07-03 11:50:19', '2023-07-03 11:50:19'),
('b61c6ac6-9d8b-4858-9a09-d5bd24ed205c', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 11:52:10', '2023-07-03 11:52:10', NULL),
('b724e5f2-68ff-4ca4-883d-bef89091ed6a', 'cf40414f-040a-4177-a48d-dde4080f294d', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Martes', 2, '15:35:00', '17:05:00', '2023-07-03 18:59:59', '2023-07-03 18:59:59', NULL),
('ba1199bf-8ad0-485d-8125-291fc5b700b1', '6887e89e-edad-4b68-9010-5adb29b4f22b', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 12:14:16', '2023-07-03 12:14:16', NULL),
('baaa2302-49c6-4d37-8ea5-b09822954779', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', 'ads12312312', 'Lunes', 1, '08:31:00', '10:00:00', '2023-07-03 12:44:38', '2023-07-03 12:44:38', NULL),
('bbaebe43-f397-4f62-8a8a-3328c9dc0353', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', 'ads12312312', 'Martes', 2, '07:00:00', '08:30:00', '2023-06-21 01:06:08', '2023-07-04 11:32:57', '2023-07-04 11:32:57'),
('bcc98637-6293-46e7-a932-e25281f6316c', 'd7378843-819e-4949-9240-7969019536f7', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Jueves', 4, '07:00:00', '08:30:00', '2023-07-03 12:05:07', '2023-07-03 12:05:07', NULL),
('bd795185-96ba-4b81-a11c-41cb9f2ac05f', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Jueves', 4, '15:35:00', '17:05:00', '2023-07-03 18:35:48', '2023-07-03 18:35:48', NULL),
('bec8d748-38ef-46cf-8109-9017aeefe055', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', 'ads12312312', 'Jueves', 4, '19:00:00', '20:30:00', '2023-06-28 10:55:31', '2023-06-28 10:55:31', NULL),
('bf9d3621-d599-4e57-87ac-72102e0aa17e', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Miércoles', 3, '19:00:00', '20:30:00', '2023-07-03 12:22:31', '2023-07-03 12:22:31', NULL),
('bfd188ab-e650-4303-944a-722677b1f518', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', 'ads12312312', 'Lunes', 1, '19:00:00', '20:30:00', '2023-06-28 10:55:31', '2023-06-28 10:55:31', NULL),
('c083ee17-0817-4317-9a1b-719fd0624e46', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', 'asfdwr2werf2342', 'Martes', 2, '15:35:00', '17:05:00', '2023-07-03 18:51:00', '2023-07-03 18:51:00', NULL),
('c0a338da-64d8-4452-850a-93f9d471d921', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '20:30:00', '22:00:00', '2023-07-03 11:49:26', '2023-07-03 11:49:26', NULL),
('c0f65423-8905-4422-8518-5c4923adc6ba', '9dd74e57-5165-491d-88be-6610f721c393', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '19:00:00', '20:00:00', '2023-07-03 12:08:23', '2023-07-03 12:11:27', '2023-07-03 12:11:27'),
('c16d9274-8a82-47b5-94ae-bf66876062b5', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Lunes', 1, '08:31:00', '10:00:00', '2023-07-03 12:20:20', '2023-07-03 12:20:20', NULL),
('c3e0a008-862b-445c-9350-edf07989bcaf', '9dd74e57-5165-491d-88be-6610f721c393', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '19:00:00', '20:00:00', '2023-07-03 12:08:23', '2023-07-03 12:11:24', '2023-07-03 12:11:24'),
('c4473b14-4dcf-4b5b-aea6-d987480620f1', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-03 12:28:17', '2023-07-03 12:28:17', NULL),
('c4a11305-9766-4517-8a5e-d6c769c0a15a', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Jueves', 4, '19:00:00', '20:30:00', '2023-07-03 12:22:37', '2023-07-03 12:22:37', NULL),
('c5e2fe06-6617-43c6-9560-44b63107594e', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Viernes', 5, '07:00:00', '08:30:00', '2023-07-03 12:28:42', '2023-07-03 12:28:42', NULL),
('c5fc92e6-f574-46e9-bd5c-62a248f78bd2', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Martes', 2, '19:00:00', '20:30:00', '2023-07-03 12:32:22', '2023-07-03 12:32:22', NULL),
('c8007f40-cca8-47f0-9c0e-dfc06b8d49b8', '9dd74e57-5165-491d-88be-6610f721c393', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Jueves', 4, '19:00:00', '20:30:00', '2023-07-03 12:39:22', '2023-07-03 12:39:22', NULL),
('c8a68c4c-39e7-435d-ad48-de2bf67fa4ba', '9dd74e57-5165-491d-88be-6610f721c393', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Lunes', 1, '19:00:00', '20:30:00', '2023-07-03 12:39:22', '2023-07-03 12:39:22', NULL),
('c931cda3-932f-4cca-9e99-c37c270641c3', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-03 11:46:24', '2023-07-03 11:53:27', '2023-07-03 11:53:27'),
('ca87360a-6d2a-44f2-a502-b3ceef187aa7', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Lunes', 1, '07:00:00', '08:30:00', '2023-07-03 12:28:17', '2023-07-03 12:46:19', '2023-07-03 12:46:19'),
('cb49f9a2-0ba7-46d8-a682-e28c97351e91', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Viernes', 5, '19:00:00', '20:29:00', '2023-07-03 12:00:05', '2023-07-03 12:00:05', NULL),
('d174f447-4a82-4b76-901e-9f6a45e58071', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', 'ads12312312', 'Jueves', 4, '19:00:00', '20:30:00', '2023-06-20 23:49:26', '2023-06-20 23:49:49', '2023-06-20 23:49:49'),
('d2ffcb79-ef00-448a-9f37-f536dc741ecc', '9dd74e57-5165-491d-88be-6610f721c393', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '19:00:00', '20:00:00', '2023-07-03 12:08:23', '2023-07-03 12:11:21', '2023-07-03 12:11:21'),
('d503c9b1-ba1f-4a68-ae24-7e6f664e7da2', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Viernes', 5, '19:00:00', '20:30:00', '2023-07-03 12:17:22', '2023-07-03 12:17:22', NULL),
('d54f7a6f-b4aa-4e25-8908-ae544404f0b7', '60fce3cf-aec6-4c85-9780-c578815be93a', 'fd624aab-0d21-4fff-927d-82f3876bce0d', 'Jueves', 4, '15:35:00', '17:05:00', '2023-07-03 15:05:41', '2023-07-03 15:05:41', NULL),
('d68c60e7-14eb-4b6d-92dd-c528704143fb', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Miércoles', 3, '15:35:00', '17:05:00', '2023-07-03 12:08:26', '2023-07-03 12:08:26', NULL),
('d74d1d27-df05-4057-a3d1-c728c5afb462', '2d350158-1427-4e18-8995-03aa84e1f9c3', '79d4e79d-9f89-4dc4-9014-05bcec51a2de', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 12:37:58', '2023-07-03 12:37:58', NULL),
('d9e39422-1638-47a3-a9cd-9b3f838e04db', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Jueves', 4, '08:31:00', '10:00:00', '2023-07-03 12:21:00', '2023-07-03 12:21:00', NULL),
('daaca4ce-504c-41c6-8ccd-fa5c1bfe21db', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Jueves', 4, '19:00:00', '20:29:00', '2023-07-03 11:59:46', '2023-07-03 11:59:46', NULL),
('db0ff577-255b-46e0-ac26-d1a3d6c8fa42', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', 'ads12312312', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 18:40:34', '2023-07-03 18:40:34', NULL),
('db932572-d5ab-4d68-9fe0-80469146a515', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', 'ads12312312', 'Jueves', 4, '08:31:00', '10:00:00', '2023-07-03 12:44:38', '2023-07-03 12:44:38', NULL),
('df8dcbe5-281d-4be7-b530-586b846d049c', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', 'bb89d90a-7986-4115-8090-d72110074bf2', 'Jueves', 4, '19:00:00', '20:30:00', '2023-07-07 12:24:45', '2023-07-07 12:24:45', NULL),
('e1adece4-468f-4f4a-b7a4-6ba80c0ac451', '184a3f16-f726-458e-b892-ce4bb5b08695', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-03 11:46:24', '2023-07-03 11:53:24', '2023-07-03 11:53:24'),
('e1b7f1fd-a4d8-4d29-a64c-ef13f4e60caa', '2d350158-1427-4e18-8995-03aa84e1f9c3', '79d4e79d-9f89-4dc4-9014-05bcec51a2de', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 12:37:58', '2023-07-03 12:37:58', NULL),
('e1d63eb9-4bbd-4dc7-9f1d-8cac1aeb4611', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Lunes', 1, '19:00:00', '20:30:00', '2023-07-03 12:32:22', '2023-07-03 12:32:22', NULL),
('e2ee417e-3fb2-4e01-9387-721c6869a1ff', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', 'ads12312312', 'Viernes', 5, '09:00:00', '10:00:00', '2023-06-23 09:53:25', '2023-06-27 13:00:50', '2023-06-27 13:00:50'),
('e55b7776-510b-486b-9cb0-c41d825052cd', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', 'ads12312312', 'Lunes', 1, '09:00:00', '10:00:00', '2023-06-23 09:53:25', '2023-06-27 13:00:46', '2023-06-27 13:00:46'),
('e7939569-4f39-4dcc-878b-bcfe07244d12', 'ac738cd8-c7a5-43ee-83bd-04bf3a4f3526', 'c1d92d7f-c1a7-4aa1-8c62-c9aee5d8de55', 'Jueves', 4, '17:10:00', '18:40:00', '2023-07-05 12:41:50', '2023-07-05 12:41:50', NULL),
('e89c3b11-c15f-48ed-853c-f3846d475d79', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', 'ads12312312', 'Miércoles', 3, '17:00:00', '18:40:00', '2023-07-03 09:39:56', '2023-07-03 18:38:54', '2023-07-03 18:38:54'),
('e91aefbc-003b-41ce-b597-69c42c6cad99', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', 'ads12312312', 'Lunes', 1, '15:35:00', '17:05:00', '2023-07-03 19:11:41', '2023-07-03 19:11:41', NULL),
('eae1f15e-7b08-4185-9380-b7f2d6a76353', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', 'asfdwr2werf2342', 'Lunes', 1, '19:00:00', '20:30:00', '2023-07-03 12:40:41', '2023-07-03 12:40:41', NULL),
('ec517ffc-790c-4ca1-984e-f1b2c015bc19', '03e074a7-da23-41bb-957e-4a233ec300c4', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Miércoles', 3, '15:35:00', '17:05:00', '2023-07-03 15:00:01', '2023-07-03 15:00:01', NULL),
('eceaeb95-203f-4afc-bc49-a86aa88d3d42', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Miércoles', 3, '08:30:00', '10:00:00', '2023-07-03 12:25:14', '2023-07-03 12:27:39', '2023-07-03 12:27:39'),
('edf3a59d-f8d2-4d14-857d-36fd11446a3c', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Jueves', 4, '20:30:00', '22:00:00', '2023-07-03 11:49:35', '2023-07-03 11:49:35', NULL),
('ef9ceb61-d3b8-4d8f-b699-78a8450baa37', '9dd74e57-5165-491d-88be-6610f721c393', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Viernes', 5, '19:00:00', '20:30:00', '2023-07-03 12:39:22', '2023-07-03 12:39:22', NULL),
('f01281c1-43e5-4068-9744-68733801afcb', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Martes', 2, '15:35:00', '17:05:00', '2023-07-03 12:08:10', '2023-07-03 12:08:10', NULL),
('f069b7b1-916e-4900-93d6-0b55efa35d5b', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Jueves', 4, '07:00:00', '08:30:00', '2023-07-04 11:35:56', '2023-07-04 11:35:56', NULL),
('f138d269-4cdd-4b93-9c4b-e6f1cc86dd8c', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', 'asfdwr2werf2342', 'Jueves', 4, '19:00:00', '20:30:00', '2023-07-03 12:40:41', '2023-07-03 12:40:41', NULL),
('f263e954-3da1-45e3-a494-ae813e5b5e32', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '5f7b2185-afce-46cb-946f-bd8c681bd2e6', 'Miércoles', 3, '07:00:00', '08:30:00', '2023-07-04 11:35:56', '2023-07-04 11:35:56', NULL),
('f2857fcc-7c89-44e9-bf58-2bb80f9e8c4e', '1d1a1085-179e-4748-895a-cd86f6d870cd', 'c4a9eadf-86b9-4181-9e29-acec6474a03b', 'Lunes', 1, '08:30:00', '10:00:00', '2023-07-03 12:24:42', '2023-07-03 12:27:44', '2023-07-03 12:27:44'),
('f2bd5cac-ae7d-4676-a787-b53d73476442', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 11:40:13', '2023-07-03 11:50:15', '2023-07-03 11:50:15'),
('f2d6de4b-6fde-4ec7-a8be-e6fb67b78865', '22970759-739f-4e75-8b6e-43fa3439dc8d', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Martes', 2, '17:10:00', '18:40:00', '2023-07-03 18:57:50', '2023-07-03 18:57:50', NULL),
('f310034e-e19c-4532-b943-40adf35fbf27', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '7304c4fd-a6fb-4450-931c-976c30d33556', 'Martes', 2, '20:30:00', '22:00:00', '2023-07-03 11:49:12', '2023-07-03 11:49:12', NULL),
('f44f7d6d-5cc5-4d5b-9c43-0ffdb240d0dd', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Lunes', 1, '19:00:00', '20:30:00', '2023-07-03 12:46:42', '2023-07-03 12:46:42', NULL),
('f47a7800-06ae-496f-b094-2d5d84793962', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', 'ads12312312', 'Miércoles', 3, '15:35:00', '17:05:00', '2023-07-03 19:11:41', '2023-07-03 19:11:41', NULL),
('f64a47e4-327a-4f76-82a0-d6d2e12f6594', '6887e89e-edad-4b68-9010-5adb29b4f22b', '10df8cd6-884a-45f2-ba11-a50de4e66597', 'Viernes', 5, '17:10:00', '18:40:00', '2023-07-03 12:14:46', '2023-07-03 12:14:46', NULL),
('f68d2fe4-add0-4eac-ad54-9da5472b2055', 'f31dfa11-4521-46dc-8224-8313acdc3712', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Sábado', 6, '15:30:00', '18:40:00', '2023-07-03 12:51:13', '2023-07-03 12:51:13', NULL),
('f6c5ef0c-12d4-412e-bbd0-e715b9b28762', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', 'ads12312312', 'Viernes', 5, '19:00:00', '20:30:00', '2023-06-28 10:55:31', '2023-06-28 10:55:31', NULL),
('f8024ca4-2934-4fdd-9f15-4aa1553fbc07', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Martes', 2, '15:35:00', '15:05:00', '2023-07-03 12:07:36', '2023-07-03 12:07:43', '2023-07-03 12:07:43'),
('f8026f15-6ac1-4e5c-9005-82e853fc0485', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '95dcde35-5947-4d6a-b8d7-68b1033d4d7b', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 19:00:00', '2023-07-03 19:00:00', NULL),
('f81a1d1c-e4ef-48ca-84c3-a2f3059ff362', 'aec4a448-356e-47ba-9660-24d6026cbeec', '00c1cd81-24cc-47f1-9d49-df5d0c2d1c70', 'Lunes', 1, '17:10:00', '18:40:00', '2023-07-03 18:56:04', '2023-07-03 18:56:04', NULL),
('f9a610be-e3dc-4968-b397-986ecfa0b7e2', 'd009fb40-7f1e-443a-a364-573bb2823995', 'b2a44bdb-e726-4d59-be15-95315b4028f8', 'Miércoles', 3, '17:10:00', '18:40:00', '2023-07-03 11:40:13', '2023-07-03 11:50:08', '2023-07-03 11:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `inasistencias`
--

CREATE TABLE `inasistencias` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_horario` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_matricula_unidad` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semana` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `es_tardanza` tinyint(1) NOT NULL DEFAULT '0',
  `es_permiso` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inasistencias`
--

INSERT INTO `inasistencias` (`id`, `id_horario`, `id_matricula_unidad`, `codigo`, `semana`, `fecha`, `user_id`, `es_tardanza`, `es_permiso`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0397e7d5-3bb5-42fd-8c2d-22d270e76f44', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-04-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 1, '2023-07-04', 2, 1, 0, '2023-06-30 21:47:40', '2023-07-05 21:02:24', '2023-07-05 21:02:24'),
('0dea5848-e4b1-4cd6-9d2d-9331288fae85', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-25-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 4, '2023-07-25', 2, 0, 0, '2023-06-30 21:47:33', '2023-06-30 21:47:40', '2023-06-30 21:47:40'),
('0e4bbab9-8490-4752-b83d-5e6991cfaffa', '70faa1e2-0a39-4d18-9991-3ab57d51e500', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-11-70faa1e2-0a39-4d18-9991-3ab57d51e500', 2, '2023-07-11', 2, 0, 0, '2023-07-05 21:03:18', '2023-07-05 21:03:18', NULL),
('0f672050-59c8-498d-92c6-c02bcedb35b8', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-10-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 2, '2023-07-10', 2, 0, 0, '2023-06-23 09:57:57', '2023-06-23 09:57:57', NULL),
('13656fe0-c300-488f-84b2-9ae299f1b918', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-18-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 3, '2023-07-18', 2, 0, 0, '2023-06-21 01:26:25', '2023-06-21 17:51:15', '2023-06-21 17:51:15'),
('1b7a9b72-8a13-4291-9d86-f2993517840d', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-03-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 1, '2023-07-03', 2, 0, 1, '2023-06-30 21:47:17', '2023-06-30 21:47:33', '2023-06-30 21:47:33'),
('1e2cf625-2080-4c14-b461-2b91f365c7d8', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-11-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 2, '2023-07-11', 2, 0, 0, '2023-06-23 09:57:57', '2023-06-23 09:57:57', NULL),
('2256e1d8-c313-4c25-9567-6ce41e08c2ea', 'f069b7b1-916e-4900-93d6-0b55efa35d5b', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-06-f069b7b1-916e-4900-93d6-0b55efa35d5b', 1, '2023-07-06', 2, 0, 0, '2023-07-05 21:03:18', '2023-07-05 21:03:18', NULL),
('2b14e3c9-395b-4588-8184-7a07f058af32', '6a635d7c-bde7-4b6f-9dcd-eec278608852', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-10-6a635d7c-bde7-4b6f-9dcd-eec278608852', 2, '2023-07-10', 2, 0, 0, '2023-07-05 21:03:18', '2023-07-05 21:03:18', NULL),
('2f4b53d9-66b1-436d-bd94-18bd769ffc33', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-24-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 4, '2023-07-24', 2, 0, 0, '2023-06-30 21:47:33', '2023-06-30 21:47:40', '2023-06-30 21:47:40'),
('30169d18-7f0d-480e-abf7-a6ef7151def4', 'f263e954-3da1-45e3-a494-ae813e5b5e32', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-05-f263e954-3da1-45e3-a494-ae813e5b5e32', 1, '2023-07-05', 2, 0, 0, '2023-07-05 21:02:24', '2023-07-05 21:03:18', '2023-07-05 21:03:18'),
('3453d60c-54aa-4fc7-a001-52276cf2494b', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-17-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 3, '2023-07-17', 2, 0, 0, '2023-06-22 13:32:50', '2023-06-23 09:57:57', '2023-06-23 09:57:57'),
('39ed9375-58fd-4957-b37f-a8327545154d', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-04-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 1, '2023-07-04', 2, 1, 0, '2023-06-30 21:47:33', '2023-06-30 21:47:40', '2023-06-30 21:47:40'),
('3aeadbbb-d6c2-4d8e-a5da-efe4319f8339', '309ab73d-ba1d-4963-a9dc-9f7384da59e0', '5bf41298-9a5a-4f97-a19a-95ef1a79ec32', '2023-07-13-309ab73d-ba1d-4963-a9dc-9f7384da59e0', 2, '2023-07-13', 2, 0, 0, '2023-06-27 17:10:14', '2023-06-27 17:10:42', '2023-06-27 17:10:42'),
('3e76e7b9-047d-4405-b741-4e9e4347c1c5', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-11-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 2, '2023-07-11', 2, 0, 0, '2023-06-21 01:26:25', '2023-06-21 17:51:15', '2023-06-21 17:51:15'),
('3ea8e1cb-baf1-4b2f-8553-c1bde86b9e1f', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-11-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 2, '2023-07-11', 2, 1, 0, '2023-06-30 21:47:40', '2023-07-05 21:02:24', '2023-07-05 21:02:24'),
('3f74e35b-9098-46eb-ba60-d9fe9754f26b', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-24-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 4, '2023-07-24', 2, 0, 0, '2023-06-21 01:26:25', '2023-06-21 17:51:15', '2023-06-21 17:51:15'),
('419ae8a0-8e92-4322-af59-e68e33c82d22', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-03-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 1, '2023-07-03', 2, 0, 0, '2023-06-22 13:32:50', '2023-06-23 09:57:57', '2023-06-23 09:57:57'),
('41e2f69f-32a8-4f22-a12b-cc0501114c0f', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-10-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 2, '2023-07-10', 2, 0, 0, '2023-06-21 01:26:25', '2023-06-21 17:51:15', '2023-06-21 17:51:15'),
('4d193b34-407c-4439-b4a4-5f0157d7a39e', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-24-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 4, '2023-07-24', 2, 0, 0, '2023-06-30 21:47:40', '2023-07-05 21:02:24', '2023-07-05 21:02:24'),
('4f8aa0d9-9d5d-4fd0-b59b-af6221fc9a15', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-04-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 1, '2023-07-04', 2, 0, 0, '2023-06-21 01:26:25', '2023-06-21 17:51:15', '2023-06-21 17:51:15'),
('53f73b32-b9a5-4d10-9be6-4da8683b6599', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-10-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 2, '2023-07-10', 2, 1, 0, '2023-06-30 21:47:33', '2023-06-30 21:47:40', '2023-06-30 21:47:40'),
('55df0831-fb43-450e-8a9c-ca4aab902e19', '70faa1e2-0a39-4d18-9991-3ab57d51e500', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-04-70faa1e2-0a39-4d18-9991-3ab57d51e500', 1, '2023-07-04', 2, 0, 0, '2023-07-05 21:03:18', '2023-07-05 21:03:18', NULL),
('560c9ce6-605b-41da-896d-1ee1fea96448', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-17-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 3, '2023-07-17', 2, 0, 0, '2023-06-21 01:26:25', '2023-06-21 17:51:15', '2023-06-21 17:51:15'),
('5ec79f81-022b-4971-bb27-765e0a87a2f9', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-03-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 1, '2023-07-03', 2, 0, 1, '2023-06-30 21:47:40', '2023-07-05 21:02:24', '2023-07-05 21:02:24'),
('6fbaf2a0-dc97-4368-9b17-a3c35830a161', '6a635d7c-bde7-4b6f-9dcd-eec278608852', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-03-6a635d7c-bde7-4b6f-9dcd-eec278608852', 1, '2023-07-03', 2, 0, 0, '2023-07-05 21:03:18', '2023-07-05 21:03:18', NULL),
('75a91cfd-af75-40c4-9fee-27f657dac467', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-04-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 1, '2023-07-04', 1, 0, 0, '2023-06-28 22:29:59', '2023-06-28 22:30:11', '2023-06-28 22:30:11'),
('77d394df-19c5-4e77-a011-07fd01379b2d', 'f263e954-3da1-45e3-a494-ae813e5b5e32', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-05-f263e954-3da1-45e3-a494-ae813e5b5e32', 1, '2023-07-05', 2, 0, 0, '2023-07-05 21:03:18', '2023-07-05 21:03:18', NULL),
('7b562fdc-2e5e-44d5-a687-756029c8f098', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-18-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 3, '2023-07-18', 2, 0, 0, '2023-06-23 09:57:58', '2023-06-23 09:57:58', NULL),
('7c0ee387-19a9-44ed-a334-8832a8092749', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-11-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 2, '2023-07-11', 2, 1, 0, '2023-06-30 21:47:33', '2023-06-30 21:47:40', '2023-06-30 21:47:40'),
('87cd4ca5-dd4d-4059-94b1-739c4dad9de4', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-25-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 4, '2023-07-25', 2, 0, 0, '2023-06-21 01:26:25', '2023-06-21 17:51:15', '2023-06-21 17:51:15'),
('894e182b-cfb7-44f9-8505-dc5b70988e96', 'f069b7b1-916e-4900-93d6-0b55efa35d5b', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-06-f069b7b1-916e-4900-93d6-0b55efa35d5b', 1, '2023-07-06', 2, 0, 0, '2023-07-05 21:02:24', '2023-07-05 21:03:18', '2023-07-05 21:03:18'),
('8f99460d-e06b-44fa-af21-bc7d6021388a', '9642351c-7ddf-4848-96e0-5bc7f0cd8f72', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-07-9642351c-7ddf-4848-96e0-5bc7f0cd8f72', 1, '2023-07-07', 2, 0, 0, '2023-07-05 21:02:24', '2023-07-05 21:03:18', '2023-07-05 21:03:18'),
('9915bdef-488f-4f19-988f-447055bde953', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-17-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 3, '2023-07-17', 2, 0, 0, '2023-06-23 09:57:57', '2023-06-23 09:57:57', NULL),
('9b9f8ed4-9a81-4d6b-85b1-46fb422f4304', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-10-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 2, '2023-07-10', 2, 1, 0, '2023-06-30 21:47:40', '2023-07-05 21:02:24', '2023-07-05 21:02:24'),
('9bd3222b-df3c-45e8-bed2-b666b7b0aef9', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-18-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 3, '2023-07-18', 2, 0, 0, '2023-06-30 21:47:33', '2023-06-30 21:47:40', '2023-06-30 21:47:40'),
('9d8f15f7-acc5-4105-babb-441f63c277e9', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-03-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 1, '2023-07-03', 1, 0, 0, '2023-06-28 22:30:11', '2023-06-30 21:47:17', '2023-06-30 21:47:17'),
('b031e15c-3dc4-42eb-bd9a-387526b21955', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-04-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 1, '2023-07-04', 2, 1, 0, '2023-06-30 21:47:17', '2023-06-30 21:47:33', '2023-06-30 21:47:33'),
('b36c7bc9-1f9b-4bed-9e87-84ed517e7dab', '6a635d7c-bde7-4b6f-9dcd-eec278608852', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-10-6a635d7c-bde7-4b6f-9dcd-eec278608852', 2, '2023-07-10', 2, 0, 0, '2023-07-05 21:02:24', '2023-07-05 21:03:18', '2023-07-05 21:03:18'),
('bb3263e1-9c18-4291-9e73-337d60be5cbe', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-04-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 1, '2023-07-04', 2, 0, 0, '2023-06-22 13:32:50', '2023-06-23 09:57:57', '2023-06-23 09:57:57'),
('c156be1a-0aac-4d49-9130-610efeec7289', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-25-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 4, '2023-07-25', 2, 0, 0, '2023-06-30 21:47:40', '2023-07-05 21:02:24', '2023-07-05 21:02:24'),
('c2cd6c74-1afb-4368-b193-62b570f6b89a', '309ab73d-ba1d-4963-a9dc-9f7384da59e0', '5bf41298-9a5a-4f97-a19a-95ef1a79ec32', '2023-07-06-309ab73d-ba1d-4963-a9dc-9f7384da59e0', 1, '2023-07-06', 2, 0, 0, '2023-06-27 17:10:14', '2023-06-27 17:10:42', '2023-06-27 17:10:42'),
('c4218347-4860-4100-80a9-332bf2d42dd3', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-17-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 3, '2023-07-17', 2, 1, 0, '2023-06-30 21:47:17', '2023-06-30 21:47:33', '2023-06-30 21:47:33'),
('c566d69e-5873-49e3-a159-3f1acd9d1d62', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-17-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 3, '2023-07-17', 2, 1, 0, '2023-06-30 21:47:40', '2023-07-05 21:02:24', '2023-07-05 21:02:24'),
('c7c3999e-1000-4363-a657-8d35070d8cfa', '309ab73d-ba1d-4963-a9dc-9f7384da59e0', '5bf41298-9a5a-4f97-a19a-95ef1a79ec32', '2023-07-13-309ab73d-ba1d-4963-a9dc-9f7384da59e0', 2, '2023-07-13', 2, 0, 0, '2023-06-27 17:09:35', '2023-06-27 17:10:14', '2023-06-27 17:10:14'),
('c807b625-eb2d-45fe-8da0-849eaddbe2cc', '70faa1e2-0a39-4d18-9991-3ab57d51e500', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-04-70faa1e2-0a39-4d18-9991-3ab57d51e500', 1, '2023-07-04', 2, 0, 0, '2023-07-05 21:02:24', '2023-07-05 21:03:18', '2023-07-05 21:03:18'),
('cad4b569-6908-44d3-ba88-072f6ce349f2', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-03-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 1, '2023-07-03', 2, 0, 1, '2023-06-30 21:47:33', '2023-06-30 21:47:40', '2023-06-30 21:47:40'),
('ced9e515-2f96-4aaf-a699-7e90cfd4202e', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-24-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 4, '2023-07-24', 2, 0, 0, '2023-06-23 09:57:58', '2023-06-23 09:57:58', NULL),
('d3ab8562-b502-4a67-b914-b8b6885d1f06', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-18-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 3, '2023-07-18', 2, 0, 0, '2023-06-30 21:47:40', '2023-07-05 21:02:24', '2023-07-05 21:02:24'),
('d9f7c519-5cd8-4df3-ab3e-badecf0c4571', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-11-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 2, '2023-07-11', 2, 1, 0, '2023-06-30 21:47:17', '2023-06-30 21:47:33', '2023-06-30 21:47:33'),
('db668721-4497-4832-a35b-a335f1ecde72', '6a635d7c-bde7-4b6f-9dcd-eec278608852', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-03-6a635d7c-bde7-4b6f-9dcd-eec278608852', 1, '2023-07-03', 2, 0, 0, '2023-07-05 21:02:24', '2023-07-05 21:03:18', '2023-07-05 21:03:18'),
('e0b399fe-d0d9-47da-b4a7-07aac24471b5', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-03-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 1, '2023-07-03', 2, 0, 0, '2023-06-23 09:57:57', '2023-06-23 09:57:57', NULL),
('e41dd829-cfec-464c-839e-d0e2fbfc2b08', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-03-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 1, '2023-07-03', 1, 0, 0, '2023-06-28 22:29:59', '2023-06-28 22:30:11', '2023-06-28 22:30:11'),
('e45d8491-31f6-4123-8bd6-086504ca64ac', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-17-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 3, '2023-07-17', 2, 1, 0, '2023-06-30 21:47:33', '2023-06-30 21:47:40', '2023-06-30 21:47:40'),
('e54d2551-512a-4de0-9973-300e279f6922', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-03-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 1, '2023-07-03', 2, 0, 0, '2023-06-21 01:26:25', '2023-06-21 17:51:15', '2023-06-21 17:51:15'),
('e62c6e70-6c43-4b21-9e6a-6e8c4dbc6a93', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-10-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 2, '2023-07-10', 1, 0, 0, '2023-06-28 22:29:59', '2023-06-28 22:30:11', '2023-06-28 22:30:11'),
('e79cf6c8-b7b5-4a36-a5e0-e1d93969fcac', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-10-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 2, '2023-07-10', 2, 1, 0, '2023-06-30 21:47:17', '2023-06-30 21:47:33', '2023-06-30 21:47:33'),
('ecb48ad4-bc78-4dcf-8711-f0b34fd46700', '309ab73d-ba1d-4963-a9dc-9f7384da59e0', '5bf41298-9a5a-4f97-a19a-95ef1a79ec32', '2023-07-06-309ab73d-ba1d-4963-a9dc-9f7384da59e0', 1, '2023-07-06', 2, 0, 0, '2023-06-27 17:09:35', '2023-06-27 17:10:14', '2023-06-27 17:10:14'),
('ecc6538a-710b-488e-93ec-69624689749e', '9642351c-7ddf-4848-96e0-5bc7f0cd8f72', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-07-9642351c-7ddf-4848-96e0-5bc7f0cd8f72', 1, '2023-07-07', 2, 0, 0, '2023-07-05 21:03:18', '2023-07-05 21:03:18', NULL),
('f0e60990-8e75-430d-a38f-ae28bb722cc3', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-04-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 1, '2023-07-04', 2, 0, 0, '2023-06-23 09:57:57', '2023-06-23 09:57:57', NULL),
('f82df7e9-c86b-4a98-a98f-87422a3f0189', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-11-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 2, '2023-07-11', 2, 0, 0, '2023-06-22 13:32:50', '2023-06-23 09:57:57', '2023-06-23 09:57:57'),
('fd66cb60-b473-4e16-a10b-7b68f924c99c', 'bbaebe43-f397-4f62-8a8a-3328c9dc0353', '3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '2023-07-04-bbaebe43-f397-4f62-8a8a-3328c9dc0353', 1, '2023-07-04', 1, 0, 0, '2023-06-28 22:30:11', '2023-06-30 21:47:17', '2023-06-30 21:47:17'),
('ffca048f-cd2e-433e-b872-84db963d3ca5', '0e388b74-03e6-4031-8b25-7d7c7f3b0101', '42b79786-de7c-4b5f-a796-b40690741db8', '2023-07-10-0e388b74-03e6-4031-8b25-7d7c7f3b0101', 2, '2023-07-10', 2, 0, 0, '2023-06-22 13:32:50', '2023-06-23 09:57:57', '2023-06-23 09:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `indicadors`
--

CREATE TABLE `indicadors` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'I',
  `id_capacidad_logros` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indicadors`
--

INSERT INTO `indicadors` (`id`, `nombre`, `codigo`, `id_capacidad_logros`, `created_at`, `updated_at`, `deleted_at`) VALUES
('034f05b3-dfb3-4760-a24a-ada120b22996', 'WEEK 2', 'I', '7b71ba50-7873-4598-a55b-54baf469c3d3', '2023-06-20 19:03:09', '2023-06-20 19:03:09', NULL),
('08a27470-a87b-4dae-9b1a-4c2c9122753b', 'WEEK 2', 'I', 'b5e3c961-1e57-4d66-a318-32527baf043c', '2023-06-27 16:53:52', '2023-06-27 16:53:52', NULL),
('10536cd2-c071-4adc-8511-6a0a330ed5b1', 'WEEK 3', 'I', '7b71ba50-7873-4598-a55b-54baf469c3d3', '2023-06-20 19:03:18', '2023-06-20 19:03:18', NULL),
('305cad86-939a-4b87-bdca-b2d0e9438b10', 'WEEK 1', 'I', '77c227da-cbb5-42bb-8dc7-3f1f62747ef8', '2023-06-20 19:05:58', '2023-06-20 19:05:58', NULL),
('6201732f-716c-46ee-90de-d1a966529d13', 'WEEK 4', 'I', 'ab789dcd-75cc-4a31-bd9b-06ee3cea853d', '2023-06-27 16:53:37', '2023-06-27 16:53:37', NULL),
('64859e0e-5cd6-4529-8470-c0a017571191', 'WEEK 1', 'I', 'b5e3c961-1e57-4d66-a318-32527baf043c', '2023-06-27 16:53:46', '2023-06-27 16:53:46', NULL),
('6b6c71bb-a723-411d-a3a1-49697b8a187a', 'WEEK 4', 'I', '4e0d1807-a901-44f9-aecf-acc5f7023b83', '2023-06-20 19:07:21', '2023-06-20 19:07:21', NULL),
('6f0fcae0-535f-4698-90df-afd0e7179b8c', 'WEEK 1', 'I', '357e03ca-d704-40bb-86cd-639926538d82', '2023-06-27 16:54:17', '2023-06-27 16:54:17', NULL),
('6f293e0c-dc14-4045-8379-60c3edeab5aa', 'WEEK 4', 'I', '7b71ba50-7873-4598-a55b-54baf469c3d3', '2023-06-20 19:03:28', '2023-06-20 19:03:28', NULL),
('6fd1497c-359d-4b5a-8ea4-6e92fbbfe8a4', 'WEEK 2', 'I', '77c227da-cbb5-42bb-8dc7-3f1f62747ef8', '2023-06-20 19:06:08', '2023-06-20 19:06:08', NULL),
('703de474-7994-4b2f-afc8-aa90e81db26e', 'WEEK 2', 'I', '357e03ca-d704-40bb-86cd-639926538d82', '2023-06-27 16:54:24', '2023-06-27 16:54:24', NULL),
('7253123e-4c9c-4ff6-be30-eddf76d94eb3', 'WEEK 4', 'I', '77c227da-cbb5-42bb-8dc7-3f1f62747ef8', '2023-06-20 19:06:28', '2023-06-20 19:06:28', NULL),
('77b52415-aa91-41e8-8e9e-02b8e10a244d', 'WEEK 1', 'I', '4e0d1807-a901-44f9-aecf-acc5f7023b83', '2023-06-20 19:06:56', '2023-06-20 19:06:56', NULL),
('81e44ec0-f87b-4162-9d40-52b25d66731b', 'WEEK 3', 'I', 'b5e3c961-1e57-4d66-a318-32527baf043c', '2023-06-27 16:53:59', '2023-06-27 16:53:59', NULL),
('8539ce6f-42be-4bb2-a0b4-53521c744d42', 'WEEK 3', 'I', '77c227da-cbb5-42bb-8dc7-3f1f62747ef8', '2023-06-20 19:06:16', '2023-06-20 19:06:16', NULL),
('86682b5e-081d-4744-b752-670401112954', 'WEEK 3', 'I', '357e03ca-d704-40bb-86cd-639926538d82', '2023-06-27 16:54:43', '2023-06-27 16:54:43', NULL),
('8ece89a0-ee49-46d0-a2f7-bc8e54dc9a21', 'WEEK 3', 'I', 'ab789dcd-75cc-4a31-bd9b-06ee3cea853d', '2023-06-27 16:53:30', '2023-06-27 16:53:30', NULL),
('96b721fd-c4b3-42c6-a555-f576f4d06870', 'WEEK 2', 'I', 'ab789dcd-75cc-4a31-bd9b-06ee3cea853d', '2023-06-27 16:53:23', '2023-06-27 16:53:23', NULL),
('a3d8c2a4-d2fe-40ec-883c-b3034d8bc486', 'WEEK 3', 'I', '32db4169-bf27-41d8-98ec-69405aee215d', '2023-06-20 19:08:14', '2023-06-20 19:08:14', NULL),
('af22d48b-2f93-4960-922a-6acc24b4991e', 'WEEK 2', 'I', '91c9d07e-daf3-4cd4-9ac4-d1c22a540032', '2023-06-27 16:55:20', '2023-06-27 16:55:20', NULL),
('b255dfd3-3db2-451d-8669-70818162e86a', 'WEEK 1', 'I', '7b71ba50-7873-4598-a55b-54baf469c3d3', '2023-06-20 19:02:59', '2023-06-20 19:02:59', NULL),
('b48d84a6-09f4-4d33-b776-7b07410b8934', 'WEEK 2', 'I', '32db4169-bf27-41d8-98ec-69405aee215d', '2023-06-20 19:08:05', '2023-06-20 19:08:05', NULL),
('bc973f10-457c-4d04-9cfd-ba8756dc2194', 'WEEK 1', 'I', '32db4169-bf27-41d8-98ec-69405aee215d', '2023-06-20 19:07:55', '2023-06-20 19:07:55', NULL),
('c41a49a8-c3fb-44a9-8ea7-f80f5202cade', 'WEEK 2', 'I', '4e0d1807-a901-44f9-aecf-acc5f7023b83', '2023-06-20 19:07:04', '2023-06-20 19:07:04', NULL),
('c6eeb44f-fbde-499b-93f7-b3e6b638d86c', 'WEEK 1', 'I', '91c9d07e-daf3-4cd4-9ac4-d1c22a540032', '2023-06-27 16:55:03', '2023-06-27 16:55:03', NULL),
('ca86e8bd-f981-4a7b-a6d1-11b5c54e5e91', 'WEEK 4', 'I', '32db4169-bf27-41d8-98ec-69405aee215d', '2023-06-20 19:08:22', '2023-06-20 19:08:22', NULL),
('cea8827a-e7b6-4f69-9249-ab78b4aba7e7', 'WEEK 3', 'I', '4e0d1807-a901-44f9-aecf-acc5f7023b83', '2023-06-20 19:07:12', '2023-06-20 19:07:12', NULL),
('d3b3274e-6486-4753-bdaf-bbbe2257086c', 'WEEK 4', 'I', '91c9d07e-daf3-4cd4-9ac4-d1c22a540032', '2023-06-27 16:55:43', '2023-06-27 16:55:43', NULL),
('e91f980c-e099-4053-9bf0-a00f4147d160', 'WEEK 3', 'I', '91c9d07e-daf3-4cd4-9ac4-d1c22a540032', '2023-06-27 16:55:36', '2023-06-27 16:55:36', NULL),
('f45a8e3a-3afd-42b2-8fdb-3e4d748eee6b', 'WEEK 1', 'I', 'ab789dcd-75cc-4a31-bd9b-06ee3cea853d', '2023-06-27 16:53:17', '2023-06-27 16:53:17', NULL),
('f8b8385b-5cab-4279-9ba7-0b23bc4dff9b', 'WEEK 4', 'I', 'b5e3c961-1e57-4d66-a318-32527baf043c', '2023-06-27 16:54:05', '2023-06-27 16:54:05', NULL),
('fe02631d-5e20-446d-a9e9-b4491871a2ab', 'WEEK 4', 'I', '357e03ca-d704-40bb-86cd-639926538d82', '2023-06-27 16:54:50', '2023-06-27 16:54:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matriculas`
--

CREATE TABLE `matriculas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_estudiantes` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_periodo_academicos` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ciclos` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_rubro_turno` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matriculas`
--

INSERT INTO `matriculas` (`id`, `codigo`, `fecha`, `observacion`, `id_estudiantes`, `id_periodo_academicos`, `id_ciclos`, `created_at`, `updated_at`, `deleted_at`, `id_rubro_turno`, `monto`) VALUES
('00585753-c91a-45a5-b2ee-49ec178d97a4', '62552640', '2023-07-10', NULL, '4e91aaca-34f1-4e41-94a8-61a703c2a5f3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-10 18:07:54', '2023-07-10 18:08:18', '2023-07-10 18:08:18', '123asdfas21q3', 100.00),
('0062bd89-9b22-4312-b4ad-6e51be2a8939', '75835207', '2023-07-11', NULL, 'f02fd40c-509f-4103-858d-ff1a561517f1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-11 15:33:06', '2023-07-11 15:33:06', NULL, '123asdfas21q3', 100.00),
('00a62954-0ce5-4125-80c7-6417e953e69a', '75180182', '2023-07-07', NULL, 'ffd9f255-d9fe-4958-b218-56c175168fdc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 12:22:16', '2023-07-07 12:22:16', NULL, '123asdfas21q3', 100.00),
('011f746c-019f-4e54-8496-3a8c075b0529', '81602767', '2023-07-11', NULL, '4ec99758-b9be-42c3-af3a-2acf354b6c44', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 15:20:51', '2023-07-11 15:20:51', NULL, 'asdwqe12312', 100.00),
('015268a3-3784-42c0-8d4e-53d23aa93004', '76028789', '2023-07-11', NULL, '0059f5a8-a355-4b93-bca2-a272de287872', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-11 10:28:36', '2023-07-11 10:28:36', NULL, '123asdfas21q3', 100.00),
('0202d357-59b2-46aa-9ee6-178434930571', '74325487', '2023-07-10', NULL, '72cf3a22-7ea3-498b-9bb5-e81514cc1409', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-10 16:55:05', '2023-07-10 16:55:05', NULL, 'asdwqe12312', 100.00),
('025f8a77-7eca-4903-905a-f976f7faf1cc', '90706497', '2023-07-11', NULL, 'e081b63b-8b46-4947-83d1-692e107049aa', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-11 15:47:28', '2023-07-11 15:47:28', NULL, 'asdwqe12312', 100.00),
('0276fc09-bc89-41d1-aea1-4d99cffe4a35', '75244115', '2023-07-05', NULL, '97e87702-95bc-4dc2-82de-1a6c479355f6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 15:57:19', '2023-07-05 15:57:19', NULL, '123asdfas21q3', 100.00),
('034b4928-f9a0-4773-b4f8-2cc273e9a082', '61191517', '2023-07-05', NULL, 'c4d8f1ef-b392-43ba-bbee-39aa7b211822', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-05 17:01:27', '2023-07-05 17:01:27', NULL, 'asdwqe12312', 100.00),
('03c96520-689b-4810-aafb-b5769e07bd05', '77443314', '2023-07-12', NULL, '1a505af7-8e77-4978-b2ab-1c62686e3154', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-12 17:24:21', '2023-07-12 17:24:21', NULL, 'asdwqe12312', 100.00),
('047746d2-7cdc-4173-ae65-d2146d3419f7', '79124074', '2023-07-12', NULL, '2952bc12-9da8-4b4a-bbd0-004dad8dd288', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-12 10:16:18', '2023-07-12 10:16:18', NULL, 'asdwqe12312', 100.00),
('04a6f39c-bed9-46b1-aa69-c62e794d9849', '62014868', '2023-07-05', NULL, '67a0c334-b1ea-43bc-ae26-291d5a51d7b4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 15:27:33', '2023-07-05 15:27:50', '2023-07-05 15:27:50', 'asdwqe12312', 100.00),
('057c5766-91c4-4104-b150-b7ac3d6b6a8e', '61155396', '2023-07-03', 'REPITENTE', '2ea2bb29-df43-4468-ae77-d6cf55160ba1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-03 09:21:44', '2023-07-03 09:21:44', NULL, 'gfgr4335ert54', 100.00),
('05d02d5e-499c-4965-b463-4c03cc970887', '74112852', '2023-07-10', NULL, 'c8eff333-16b1-44a6-a457-fc60722e56cc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 17:18:06', '2023-07-10 17:18:06', NULL, '123asdfas21q3', 100.00),
('0659eb69-a4b0-44c8-b2af-997a26ad355f', '61080764', '2023-07-07', NULL, 'fbafa3cf-9d67-4c54-827a-60271ed3b6f1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 16:36:37', '2023-07-07 16:36:37', NULL, 'gfgr4335ert54', 100.00),
('06a9783d-5016-4868-99fe-898c8f53cef5', '62423634', '2023-07-06', NULL, 'da64facd-9f0c-4933-99cc-e15e665c5575', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-06 17:17:18', '2023-07-06 17:17:18', NULL, '123asdfas21q3', 100.00),
('06aa2ebe-a5a8-48e9-8d31-88b43e615016', '62518255', '2023-07-18', NULL, 'e1f6858b-5da3-4d9a-817f-1dccad63e7e4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-18 09:41:25', '2023-07-18 09:41:25', NULL, '123asdfas21q3', 100.00),
('0a6df95f-f9af-4072-8c66-1ac6518c3cb4', '77368166', '2023-07-07', NULL, '241f37cf-1335-4d99-a5ca-2ab5f9485f07', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-07 18:48:09', '2023-07-07 18:48:09', NULL, 'asdwqe12312', 100.00),
('0a716207-48ef-4d0b-9aac-a50bf1f76f80', '72288156', '2023-07-06', NULL, 'df1fccc7-de42-48e1-9470-4580a43b122b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-06 18:59:38', '2023-07-06 18:59:38', NULL, '123asdfas21q3', 100.00),
('0a7f107e-e1e9-47de-aa66-36504945b51f', '63193457', '2023-07-10', NULL, '7130f6f5-3c3c-457d-a23d-588d02e1eef9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-10 17:33:41', '2023-07-10 17:33:41', NULL, 'asdwqe12312', 100.00),
('0ab0af7e-2f7b-41b0-9803-1eff00548548', '62552640', '2023-07-10', NULL, '4e91aaca-34f1-4e41-94a8-61a703c2a5f3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 18:08:27', '2023-07-10 18:08:27', NULL, '123asdfas21q3', 100.00),
('0b1fd9d2-5cde-417a-bb29-c645f7a2192d', '42747164', '2023-07-06', NULL, '0bf9a6e3-3a43-4fee-980b-aee3e3d52684', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-06 19:09:17', '2023-07-06 19:09:17', NULL, '123asdfas21q3', 100.00),
('0bbcbec8-34cc-4dd4-8961-132e65ac6e0a', '79434507', '2023-07-04', NULL, '15ca67bb-79b0-4b63-ba5a-d0fd7feece74', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-04 09:00:01', '2023-07-04 09:00:01', NULL, 'asdwqe12312', 100.00),
('0c35db4a-4138-48e3-b236-fc647f8d56c4', '79260904', '2023-07-07', NULL, '86d180b5-5b08-4388-a455-42dbdbc21d80', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 11:31:39', '2023-07-07 11:31:39', NULL, 'asdwqe12312', 100.00),
('0ce6b41a-3073-48d5-b6fa-18e483a3ebd2', '61233264', '2023-07-06', NULL, '753242bc-d4ce-4239-8829-b6550fb09b75', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-06 12:34:19', '2023-07-10 18:01:19', '2023-07-10 18:01:19', 'asdwqe12312', 100.00),
('0d070f0e-c386-442a-ba56-bca68316617d', '76670508', '2023-07-13', NULL, '45b0770f-df7e-4245-ba07-4481f00c573a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-13 17:46:28', '2023-07-13 17:46:28', NULL, 'gfgr4335ert54', 100.00),
('0d1f4938-e39f-41bd-8e7d-f65ddd578b4c', '76598889', '2023-07-06', NULL, 'a533dfd4-5998-4580-a6f1-df6a80ce40ad', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-06 19:04:05', '2023-07-06 19:04:05', NULL, '123asdfas21q3', 100.00),
('0d44a178-2cb3-4cb6-8557-9b216045be85', '71628117', '2023-07-10', NULL, '384f9c30-3adb-44c8-9675-6cdc5e8839ef', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-10 18:32:40', '2023-07-10 18:32:40', NULL, 'asdwqe12312', 100.00),
('0d54ddf1-8999-4422-bd91-9abdacf823ae', '72717266', '2023-07-07', NULL, 'f76c2f66-2781-4185-888f-8cae4606010e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-07 18:34:58', '2023-07-07 18:34:58', NULL, '123asdfas21q3', 100.00),
('0e9d0552-97fd-4396-b87e-f1d65173c7a4', '61233075', '2023-07-10', NULL, '321b7685-8598-4e7f-b85e-8649c4395c79', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-10 17:57:25', '2023-07-10 17:57:25', NULL, 'gfgr4335ert54', 100.00),
('0fff363b-4327-48ee-afe9-57d1f07390e8', '81138481', '2023-07-11', NULL, 'd755c952-0ef6-48f9-9407-247a18477aed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-11 15:17:56', '2023-07-11 15:17:56', NULL, 'asdwqe12312', 100.00),
('10c61821-e5c8-4387-9742-7c8fde44c6d0', '62427611', '2023-07-05', NULL, 'b714ac66-cb0e-4418-8644-25c8edb65f3b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-05 17:57:58', '2023-07-05 17:57:58', NULL, 'gfgr4335ert54', 100.00),
('11559489-8ab3-4ca2-9e14-a67d2cc7d7fc', '78426842', '2023-07-05', NULL, '2d183ae4-079e-49bb-9dfb-44ce31de2861', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 18:13:53', '2023-07-05 18:13:53', NULL, 'asdwqe12312', 100.00),
('13cb379b-035d-44bd-8128-31a1670b3678', '61298726', '2023-07-07', NULL, '60a9e7a9-7436-4212-89b6-3c56aa726219', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:14:37', '2023-07-07 19:14:37', NULL, 'asdwqe12312', 100.00),
('14e797be-8bdf-4fac-a132-427fef2e5d3a', '77941559', '2023-07-10', NULL, 'a0be0d3a-7b2c-4040-a2d7-a39b2e151096', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 15:27:25', '2023-07-10 15:27:25', NULL, 'asdwqe12312', 100.00),
('15849eba-8e1f-46af-a26a-0aa0fa79bcfc', '62759148', '2023-07-03', NULL, 'acc514cf-6e8f-4b22-aef7-68e5cda0e003', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-03 11:19:04', '2023-07-03 11:19:04', NULL, 'asdwqe12312', 100.00),
('15e8344b-3fcd-4d5d-af47-bc70968be01c', '61429260', '2023-07-13', NULL, '6734cd53-6009-483d-a62a-67d35ddabf96', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-13 08:38:45', '2023-07-13 08:38:45', NULL, 'gfgr4335ert54', 100.00),
('17ba0095-27a7-467b-85be-494488724ff2', '74691430', '2023-07-11', NULL, '2a67519f-5be8-4d2c-9fee-fd65fd309166', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-11 15:05:38', '2023-07-11 15:05:38', NULL, 'gfgr4335ert54', 100.00),
('188a836a-b908-4e12-a1ff-b2d6549b9ebd', '61480353', '2023-06-28', NULL, '7194e4fe-0f3e-4580-be9d-a8135e813937', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-28 10:47:08', '2023-06-28 10:47:08', NULL, '123asdfas21q3', 100.00),
('19c440f1-d8e9-44b2-a4ad-09ebf577bcad', '61314673', '2023-07-18', NULL, 'f9aaa6ef-7003-49cf-9c02-e1ec02719f44', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:08:02', '2023-07-18 09:08:02', NULL, '123asdfas21q3', 100.00),
('19e39a86-1341-4179-a215-a8c5c64167e4', '77999372', '2023-07-11', NULL, 'e78a869e-f35d-4885-acd4-810e1d293d95', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-11 17:57:05', '2023-07-11 17:57:05', NULL, 'asdwqe12312', 100.00),
('1a03ebef-a0d0-4416-bd4f-da1f57adabf6', '76793694', '2023-07-06', NULL, '8afe2807-8987-4570-8fd7-c3a4e586f30e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-06 18:43:23', '2023-07-06 18:43:23', NULL, '123asdfas21q3', 100.00),
('1a98be07-6ceb-46c3-9655-a0fdf566f253', '90735410', '2023-07-11', NULL, '0283d2af-4253-4399-8a3c-20d795049cb7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-11 15:35:23', '2023-07-11 15:35:23', NULL, 'asdwqe12312', 100.00),
('1b762bdd-52bd-49f0-8791-5294e66809f4', '90600968', '2023-07-11', NULL, '2fa806c2-ba59-400f-95bd-bc04d5a0fc87', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-11 15:09:23', '2023-07-11 15:09:23', NULL, 'asdwqe12312', 100.00),
('1da1bef7-941e-4a12-a5a2-460d7870c9e6', '61713691', '2023-07-07', NULL, '7723e25d-d148-4b64-a1f7-651961473453', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 17:54:28', '2023-07-07 17:54:28', NULL, '123asdfas21q3', 100.00),
('1e319b82-ad14-4edf-91c6-aa043a0ef148', '78321159', '2023-07-07', NULL, 'f389b8f8-37e6-4eb6-94ad-697b14c73c29', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 18:30:23', '2023-07-07 18:30:23', NULL, 'asdwqe12312', 100.00),
('1e94c5bc-0757-4fd5-bdcd-1f1be319e9b8', '63193489', '2023-07-07', NULL, '4cc8ee27-d457-4cbf-9706-759aedd15287', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 10:45:56', '2023-07-07 10:45:56', NULL, 'asdwqe12312', 100.00),
('1fd028b9-17ad-45e3-947a-dddd6df2675c', '61517243', '2023-07-11', NULL, '7200c1ca-5088-4ac9-b453-d3ebe05c2429', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-11 18:09:47', '2023-07-11 18:09:47', NULL, 'gfgr4335ert54', 100.00),
('1fd4a419-571d-4179-8853-41edd70689fa', '62759129', '2023-07-13', NULL, '23dcc97b-ce3b-4a38-9dc5-6655d5a26f2b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-13 18:53:18', '2023-07-13 18:53:18', NULL, '123asdfas21q3', 100.00),
('1fd50b4c-18f3-4ce7-9b20-192a392cd5af', '202858325', '2023-07-13', NULL, 'c1f02a5b-0084-435e-aba0-9d7564fd2ca6', '6034adb2-7103-4781-8a0f-2a7b0e69a4cd', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-13 15:51:18', '2023-07-13 15:51:18', NULL, 'gfgr4335ert54', 100.00),
('20755b9b-db56-4e44-9b30-04e0eafc7d0b', '90840086', '2023-07-10', NULL, 'c362af0b-d588-4982-bee9-a2687247d711', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 11:31:44', '2023-07-10 11:31:44', NULL, 'asdwqe12312', 100.00),
('2082186b-fb65-48d9-8bae-78be2d50374d', '79943530', '2023-07-05', NULL, 'e88b6d63-c634-4fa7-b313-c244026a1fa0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-05 18:34:28', '2023-07-05 18:34:28', NULL, 'asdwqe12312', 100.00),
('211d0bad-a4ef-4a37-bffa-1288556abbb6', '77099938', '2023-07-14', NULL, 'a30eac41-0d31-4f3b-82b2-889c4b088a0c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-14 15:57:44', '2023-07-14 15:57:44', NULL, '123asdfas21q3', 100.00),
('21a31ec5-7507-4d8e-880a-7caeffa416da', '63092090', '2023-07-10', NULL, 'c0f39504-ac52-4e28-82a7-f91f5c0a15cd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 17:24:20', '2023-07-10 17:24:20', NULL, 'asdwqe12312', 100.00),
('21ef9b62-9404-4ba1-afb4-855ca856173f', '78452212', '2023-07-12', NULL, 'aa77f892-cd5c-49b6-af48-47a231622bdc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-12 17:36:01', '2023-07-12 17:36:01', NULL, 'asdwqe12312', 100.00),
('232c9a69-7a68-4045-b5c7-3671b3271aa6', '79575261', '2023-07-07', NULL, '82507e2a-584d-4eb6-8fcc-3ad41ff01ed9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 18:11:36', '2023-07-07 18:11:36', NULL, 'asdwqe12312', 100.00),
('23aefc66-dfd0-4997-9fd5-79909fef9a37', '78473581', '2023-07-05', NULL, '42baad27-c008-415d-acb9-2977d31767b8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 18:36:13', '2023-07-05 18:36:13', NULL, 'asdwqe12312', 100.00),
('23c5df40-375f-425f-a75a-57715fb0a91d', '63588586', '2023-07-07', NULL, 'e31273b3-729a-47ea-bd98-c5c33c44d952', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 18:36:35', '2023-07-07 18:36:35', NULL, 'asdwqe12312', 100.00),
('23ed8e04-ee32-46ce-9f35-b2260c4494f5', '62287488', '2023-07-07', NULL, '004c662a-e9f3-4f55-bcab-a48d82511a72', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 17:47:03', '2023-07-07 17:47:03', NULL, 'asdwqe12312', 100.00),
('24861e62-1398-456a-817e-cb51ccd401b3', '91245171', '2023-07-10', NULL, 'e45ecedb-27e5-48a8-b075-4703d4cea0ea', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 11:12:06', '2023-07-10 11:12:06', NULL, 'asdwqe12312', 100.00),
('2490db00-4710-48f4-a8ec-ca9a4d5c1a76', '90910399', '2023-07-11', NULL, '442f7206-0389-4d9e-b2f2-3769708dffd2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 17:23:16', '2023-07-11 17:23:16', NULL, 'asdwqe12312', 100.00),
('24b8fc4d-1c25-4858-a2fa-bf19a319b0d0', '90125102', '2023-07-10', NULL, 'e0394252-41dc-4ea8-896d-7704c52972a9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-10 15:25:51', '2023-07-10 15:25:51', NULL, 'asdwqe12312', 100.00),
('24ce41ec-f88f-4df7-9bf9-f1d603d288e8', '70466915', '2023-07-13', NULL, 'ed39843d-dfa0-4ced-8e9d-f42ef501c614', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-13 08:46:29', '2023-07-13 08:46:29', NULL, 'gfgr4335ert54', 100.00),
('265f431f-1157-496d-a629-102e56fd3539', '76427318', '2023-07-05', NULL, '9c84198e-455e-4131-8396-b65f68685b4e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-05 12:02:36', '2023-07-05 12:02:36', NULL, 'asdwqe12312', 100.00),
('26bb00f2-7409-4a00-b6f2-048cce39781b', '70500690', '2023-07-11', NULL, '68a309b8-32d6-48e5-a8a7-0a3aec95f98f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-11 18:52:51', '2023-07-11 18:52:51', NULL, '123asdfas21q3', 100.00),
('27626e59-f5be-4cf4-9d2b-daac5e1af20f', '72020227', '2023-07-12', NULL, '7ae5f116-de72-46f4-9897-ba7d41011d7c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-12 10:32:57', '2023-07-12 10:32:57', NULL, 'gfgr4335ert54', 100.00),
('27c29d3e-f5f7-47b8-9bea-45130cc4cfae', '76091611', '2023-07-14', NULL, 'cf6f963c-6fdf-4450-a82b-92da98badb73', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-14 18:59:18', '2023-07-14 18:59:18', NULL, '123asdfas21q3', 100.00),
('285ec74c-46a5-49a7-8450-7760046aa872', '79495078', '2023-07-11', NULL, 'bedbfa18-d9c0-4298-b63f-c1bdf055233e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 18:22:30', '2023-07-11 18:22:30', NULL, 'asdwqe12312', 100.00),
('2a33b880-73da-4706-8dca-8ee718adb841', '78523914', '2023-07-07', NULL, 'a59014f9-141a-4ef5-8266-c6307760564a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-07 11:50:47', '2023-07-07 11:50:47', NULL, 'asdwqe12312', 100.00),
('2b70e039-6778-4583-b975-94a989919b65', '75677722', '2023-07-11', NULL, '7ec17f3d-3034-4059-a2c8-ac782ebc8225', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-11 18:58:27', '2023-07-11 18:58:27', NULL, '123asdfas21q3', 100.00),
('2c3b904a-1bfd-45f0-8d79-8f5ae980a23f', '62354565', '2023-07-18', NULL, '85952dce-cc43-46d4-957e-70c4acafa9c5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:09:22', '2023-07-18 09:09:22', NULL, '123asdfas21q3', 100.00),
('2c86a3c7-91b7-4219-92d4-a789b5d7aa4e', '79038729', '2023-07-03', NULL, '26123574-aa8b-4f12-a25a-87dc30c21c13', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-03 09:34:36', '2023-07-03 09:35:11', '2023-07-03 09:35:11', 'asdwqe12312', 100.00),
('2d82fb8a-5129-482f-b413-aa8f912c9c43', '71518381', '2023-07-07', NULL, '499a0e05-37ab-4785-a817-2c8852e7d5f8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-07 19:41:16', '2023-07-07 19:41:16', NULL, '123asdfas21q3', 100.00),
('3089bb32-6dcd-41e9-b586-fce35fd6c9ac', '71474476', '2023-07-05', NULL, '1ddb4765-5755-433c-9f0a-f5cf15236cf3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 15:13:27', '2023-07-05 15:13:27', NULL, '123asdfas21q3', 100.00),
('3092f20e-6ed6-4f3c-90bf-2116370b1609', '77995339', '2023-07-05', NULL, '12fec5bc-d50a-44c5-a1cf-675a638b6fd7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 17:51:35', '2023-07-05 17:51:35', NULL, 'asdwqe12312', 100.00),
('3156cd87-b721-47da-959f-fdd27a9b0e17', '77157142', '2023-07-06', NULL, '773d262f-5095-47cf-8370-494e1de6f330', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-06 11:06:12', '2023-07-06 11:06:12', NULL, 'gfgr4335ert54', 100.00),
('31fb8a2b-16b9-46a3-b6ef-59d4a44a019f', '61822207', '2023-07-07', NULL, '8380bf57-7a77-406a-a0e0-516282f5f3ad', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:11:13', '2023-07-07 19:11:13', NULL, 'asdwqe12312', 100.00),
('33199f6f-7fea-49cc-b913-48641ddc7948', '76022298', '2023-06-19', NULL, '8f0ca397-c4a8-4c51-8de9-7eb04742a9fd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-06-19 20:33:30', '2023-06-19 20:33:30', NULL, 'gfgr4335ert54', 100.00),
('33e57413-9557-43d0-b35c-2cab5a8bc4eb', '62014845', '2023-07-17', NULL, 'ea8173d3-2824-484a-9047-fdffce9a1d5d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-17 17:08:05', '2023-07-17 17:08:05', NULL, '123asdfas21q3', 100.00),
('353c9525-b3dc-4fb0-be70-872647aeeea7', '63688798', '2023-07-12', NULL, '608b8043-01bd-42c1-a942-1ee844211820', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-12 15:41:44', '2023-07-12 15:41:44', NULL, 'asdwqe12312', 100.00),
('3550112f-0a27-4ab4-8aef-fb79fbffedc1', '72288154', '2023-07-18', NULL, '56f44ca8-f4cc-49ed-a658-cccecbd27cb4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-18 09:56:33', '2023-07-18 09:56:33', NULL, '123asdfas21q3', 100.00),
('3561a3d8-aaa1-42f9-883d-9e4962242591', '75347822', '2023-07-17', NULL, 'bcc995e1-b0fc-4ad5-b6ef-0e20b4ba3e74', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', '2023-07-17 12:03:48', '2023-07-17 12:03:48', NULL, '123asdfas21q3', 100.00),
('3589cac9-39f0-4451-87b9-0baa456b1799', '62672330', '2023-07-06', NULL, '87373f7e-fa05-4af9-a811-9029939a379c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-06 11:29:51', '2023-07-06 11:29:51', NULL, 'gfgr4335ert54', 100.00),
('35ebe6eb-fd87-4f93-823c-9188e1119357', '40565637', '2023-07-07', NULL, '8b4f61af-3d19-4a04-8722-6879550d84a3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-07 18:06:34', '2023-07-07 18:06:34', NULL, '123asdfas21q3', 100.00),
('373b0271-70d8-44b5-b303-85eab36028c0', '73133358', '2023-07-06', NULL, 'f0218127-8487-4902-b919-e80162e8badd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-06 10:03:53', '2023-07-06 10:03:53', NULL, 'gfgr4335ert54', 100.00),
('3946368e-f7f6-4474-9650-b879eef11b3d', '79499472', '2023-07-13', NULL, 'fedd8b99-78f4-4a98-b2ba-6b3bc0af2689', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-13 11:11:50', '2023-07-13 11:11:50', NULL, 'asdwqe12312', 100.00),
('3977c62e-b46e-473b-874d-a2d8937c9722', '62286958', '2023-07-07', NULL, '3ed5afa6-7bf1-4b40-ba93-d75e9549df4d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 17:51:01', '2023-07-07 17:52:28', '2023-07-07 17:52:28', 'gfgr4335ert54', 100.00),
('39e95704-69d2-4d95-8d83-f64c3611d22a', '62518139', '2023-07-10', NULL, 'fb2849a2-a445-469b-8b5d-0a4723d66d44', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-10 18:21:25', '2023-07-10 18:21:25', NULL, '123asdfas21q3', 100.00),
('3a11e799-2dc3-47be-801d-8b6a864ac091', '70459159', '2023-07-11', 'REINCORPORACIÓN, JUSTIFICÓ POR SALUD.', '8216f535-7474-4ca3-8afd-76ff376f70a6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-11 08:46:03', '2023-07-11 08:46:03', NULL, 'gfgr4335ert54', 100.00),
('3ab6fa5d-be9b-4ae6-a446-e7a4e87fe3a2', '79192377', '2023-07-05', NULL, '6c93e704-d9ad-4d8f-87b5-cf1d764540ba', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-05 16:13:40', '2023-07-05 16:13:40', NULL, 'asdwqe12312', 100.00),
('3b9f9d25-980d-4116-8ab7-45a863d0b5f7', '90636519', '2023-07-10', NULL, '79f9f89e-b3f4-4689-a9dd-88f977d53ffd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-10 18:49:01', '2023-07-10 18:49:01', NULL, 'asdwqe12312', 100.00),
('3bb91320-faf9-4056-bdc1-b4bcda188b8c', '74054141', '2023-07-17', NULL, '2a8daa9b-8396-413d-bc2f-9832d1bcd3b5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-17 17:05:16', '2023-07-17 17:05:16', NULL, 'gfgr4335ert54', 100.00),
('3bc6603c-dcfd-4534-9ed8-cdffcc06e0c6', '63193384', '2023-07-05', NULL, '010fde2f-f8db-4864-9954-6f0d41226491', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 15:52:33', '2023-07-05 15:52:33', NULL, 'asdwqe12312', 100.00),
('3d162f94-cc66-443d-a882-3d047bd63886', '60517352', '2023-07-17', NULL, '6a39aa6f-8f0e-436d-992d-b387415b9b85', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-17 09:26:32', '2023-07-17 09:26:32', NULL, 'gfgr4335ert54', 100.00),
('3d9cdf06-cbd6-427f-bb5b-d053e474f9b1', '62043007', '2023-07-05', NULL, 'c10ade8e-5d6f-45d3-8a7a-4fee7eee78e5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 16:31:54', '2023-07-05 16:31:54', NULL, 'gfgr4335ert54', 100.00),
('3ef9e5ae-884a-4cae-947d-7c868f3fecc9', '61689147', '2023-07-11', NULL, 'ab257625-232d-436d-b51e-45ff437d9ace', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 10:58:49', '2023-07-11 10:58:49', NULL, 'asdwqe12312', 100.00),
('3fee6242-c6d8-4da7-9c68-e7d9584bfdca', '75247204', '2023-07-18', NULL, '27a2e75e-5459-48d5-9c99-a8e4fa69b4ba', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:15:50', '2023-07-18 09:15:50', NULL, '123asdfas21q3', 100.00),
('42159f9d-e5c8-4cc9-aebf-b0d28db87a8a', '60400677', '2023-07-12', NULL, '5d73c77f-ec89-4971-9084-066aeb6f38c5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-12 19:02:00', '2023-07-12 19:02:00', NULL, '123asdfas21q3', 100.00),
('42e4876b-8db5-486f-914c-2c894c814544', '71628117', '2023-07-10', NULL, '384f9c30-3adb-44c8-9675-6cdc5e8839ef', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-10 18:32:10', '2023-07-10 18:32:31', '2023-07-10 18:32:31', '123asdfas21q3', 100.00),
('4310e05b-7367-4586-bacb-78bf25e669e0', '77960856', '2023-07-13', NULL, '806cb0a2-3a42-45f7-b4a4-54899c8b7203', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-13 15:12:30', '2023-07-13 15:12:30', NULL, 'asdwqe12312', 100.00),
('43f26f4b-27bd-46b9-91c1-89bdd8e9dc66', '10300226', '2023-07-18', NULL, 'c77708de-c7cf-4971-bdc9-0bcd4dfb8e1d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-18 08:42:14', '2023-07-18 08:42:14', NULL, 'gfgr4335ert54', 100.00),
('4400b0d5-b46d-4ed4-84f4-62ac1154f0dc', '63014038', '2023-07-10', NULL, '015f363b-7e65-4673-97e6-488201f1e0c5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-10 18:57:55', '2023-07-10 18:57:55', NULL, 'asdwqe12312', 100.00),
('44ef2ee6-50ec-4f15-adaf-c3a0500522e8', '62583779', '2023-07-03', NULL, '159a9c9f-41ab-4b42-ae6a-459a34144fa5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-03 11:27:25', '2023-07-03 11:27:25', NULL, 'asdwqe12312', 100.00),
('46a7bc09-d005-4680-8e4a-aac5e13c0f93', '79023995', '2023-07-12', NULL, 'f742c499-d749-43a9-84bc-55b602e8627a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-12 09:26:46', '2023-07-12 09:26:46', NULL, 'asdwqe12312', 100.00),
('484a16d4-0efb-463e-86e8-2b49b6a9c0bc', '76013359', '2023-07-11', NULL, '7335d319-7fb6-42eb-8e4e-523c0005b99b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-11 18:49:49', '2023-07-11 18:49:49', NULL, 'asdwqe12312', 100.00),
('4929b6fc-f70c-421a-bb74-746ea073c57e', '91160639', '2023-07-10', NULL, '6e5a4278-4448-4364-8296-0a4f11be9893', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-10 19:00:04', '2023-07-10 19:00:04', NULL, 'asdwqe12312', 100.00),
('493c629d-1fab-4a2b-85b2-97ed625e56dd', '77726069', '2023-07-05', NULL, '317941a3-a1de-4e5a-8956-479d85b2ce3e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-05 15:41:08', '2023-07-05 15:41:08', NULL, 'asdwqe12312', 100.00),
('4a766971-b295-4968-871e-a6bf3973e7fc', '79228867', '2023-07-11', NULL, '36ef8333-a44a-43bb-a65f-d486f839bd3f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-11 11:16:29', '2023-07-11 11:16:29', NULL, 'asdwqe12312', 100.00),
('4c097cbc-1e26-4015-95f5-31b7ae3339cd', '60425112', '2023-07-05', NULL, '1c1a797f-fe54-49e9-946c-578ebacfeecc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-05 10:08:40', '2023-07-05 10:08:40', NULL, 'gfgr4335ert54', 100.00),
('4c52158a-d323-4b43-b0aa-4987af0efcf0', '72838872', '2023-07-06', NULL, 'b9b2ffce-039a-4ac3-a3f7-4f796bce7d9a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-06 11:24:37', '2023-07-06 11:24:37', NULL, 'asdwqe12312', 100.00),
('4f1c1b21-2c94-48fa-836e-88799c32a14f', '63091798', '2023-07-07', NULL, 'd4961190-76f9-4c22-9b51-729aa008fed3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 18:54:07', '2023-07-07 18:54:07', NULL, 'asdwqe12312', 100.00),
('508faa90-9338-4e10-88de-1ce1d60bd21b', '77802586', '2023-07-04', NULL, 'd8668c56-770b-4662-8c9c-5188b5c83ac5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-04 11:30:43', '2023-07-04 11:30:43', NULL, 'asdwqe12312', 100.00),
('5104f2be-99bb-4b70-9328-9470729c460a', '75703073', '2023-07-11', NULL, '9425b171-23bf-45cb-9d60-a430b105bc0d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-11 15:03:07', '2023-07-11 15:03:07', NULL, 'gfgr4335ert54', 100.00),
('516daeac-8661-41bb-96d0-b0f8f2a9ee15', '62838116', '2023-07-11', NULL, 'c1b1a085-6e33-4ac1-bbf4-27c71ce88497', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-11 17:48:15', '2023-07-11 17:48:15', NULL, '123asdfas21q3', 100.00),
('51edbbc3-4405-4a02-98c5-133bc05112f4', '60957686', '2023-07-05', NULL, '8d703461-5328-48d2-bf56-a99c3f179843', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 10:34:58', '2023-07-05 10:34:58', NULL, 'gfgr4335ert54', 100.00),
('5275b8da-36cd-4864-be1d-e89cc5f15207', '62286958', '2023-07-07', NULL, '3ed5afa6-7bf1-4b40-ba93-d75e9549df4d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 17:52:18', '2023-07-07 17:52:18', NULL, '123asdfas21q3', 100.00),
('551dc16c-37bf-40e3-83aa-72e926f1dc33', '76824940', '2023-07-01', NULL, '2d277759-fec7-4661-8d07-7aa16beebf65', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-01 11:52:38', '2023-07-01 11:52:38', NULL, 'gfgr4335ert54', 100.00),
('5536f0c8-d439-40ba-bd60-860b4036f415', '71573563', '2023-07-06', NULL, 'd99863c1-bb0b-47c9-87fd-e9a1ae9ed964', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-06 16:41:41', '2023-07-06 16:41:41', NULL, 'gfgr4335ert54', 100.00),
('5556638b-4f76-478c-bd30-40451558899e', '78536957', '2023-07-05', NULL, '445b0d4a-0a72-49e4-9cfa-ea8947673827', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-05 15:36:02', '2023-07-05 15:36:02', NULL, 'asdwqe12312', 100.00),
('55ec03ee-a661-4365-9131-09c8a9409020', '61409462', '2023-07-05', NULL, '153c86ea-ace1-4374-9700-0b0c09940a22', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', '2023-07-05 10:48:57', '2023-07-05 10:48:57', NULL, '123asdfas21q3', 100.00),
('566095e4-b750-4b8a-a0c9-464159abd63f', '61409245', '2023-07-17', NULL, 'cde0b85e-67ef-4863-b1f2-a3d298fb1257', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-17 12:32:33', '2023-07-17 12:32:33', NULL, '123asdfas21q3', 100.00),
('5691d7d0-b3cd-4b81-89a6-e92d4f9a4878', '60957578', '2023-07-14', NULL, 'f0db41af-3cab-44ca-9434-d6e5f4d39ed9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-14 19:11:20', '2023-07-14 19:11:20', NULL, '123asdfas21q3', 100.00),
('56c8a8ed-6969-4c7d-a2b8-2afa1894c8fe', '75460608', '2023-07-07', NULL, 'ecfd3729-aa1c-423d-a635-7d377cafc590', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-07 10:22:20', '2023-07-07 10:22:20', NULL, 'gfgr4335ert54', 100.00),
('571b5a68-c25a-4ea8-87d3-ff2b568904f5', '61713472', '2023-06-30', NULL, '4175c156-f491-4501-9dad-42a2ca676424', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-30 19:20:46', '2023-06-30 19:20:46', NULL, '123asdfas21q3', 100.00),
('571e431b-16ab-4974-aadd-e04546d75c5a', '62672389', '2023-07-07', NULL, '8e24331e-b1e9-49a3-8408-e5d7bcaedf38', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 17:30:52', '2023-07-07 17:30:52', NULL, 'asdwqe12312', 100.00),
('589b22dd-0384-4dac-99cc-e3afb0d0e26f', '90405088', '2023-07-06', NULL, '0fd3ae83-491f-400c-9043-89010c027ae5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-06 17:43:19', '2023-07-06 17:43:19', NULL, 'asdwqe12312', 100.00),
('58d1f5e0-0046-4207-8cf8-ab306a52b45a', '79391551', '2023-07-17', NULL, '16481297-8fa2-473a-8c49-5230bbe20d75', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-17 11:41:04', '2023-07-17 11:41:04', NULL, 'asdwqe12312', 100.00),
('58ff7745-9ef1-45f5-9b5b-b8aecd9dd820', '81611050', '2023-07-10', NULL, '0d9900a7-8707-4bc5-92ac-70dc09404aab', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 17:07:36', '2023-07-10 17:07:36', NULL, 'asdwqe12312', 100.00),
('5915d9f4-f01d-4cf2-aebe-b4a7008897d7', '61517309', '2023-06-30', NULL, '17b89e87-fbb4-4edd-8f3a-4db8b4c031c8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-30 19:25:56', '2023-06-30 19:25:56', NULL, '123asdfas21q3', 100.00),
('5981deef-45cc-4e5e-9354-6c0cb6f0911e', '63219018', '2023-07-05', NULL, 'fdc30e72-771b-4ea5-b1bf-0b4f64eb24cf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-05 10:58:53', '2023-07-05 10:58:53', NULL, 'asdwqe12312', 100.00),
('5a043c8e-09fe-49a1-93fb-c6274e387b42', '76240355', '2023-07-18', NULL, '8b9cd768-8660-45e5-8574-e38539c1742a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:11:31', '2023-07-18 09:11:31', NULL, '123asdfas21q3', 100.00),
('5a6e1f5b-f503-41fe-bd48-32d2571efcaf', '72838872', '2023-07-06', NULL, 'b9b2ffce-039a-4ac3-a3f7-4f796bce7d9a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-06 11:24:24', '2023-07-06 11:24:24', NULL, 'asdwqe12312', 100.00),
('5b283f2e-7783-4a31-996e-dbc692c05e08', '61191502', '2023-07-07', NULL, '40db7945-16d8-4300-9860-5bd9dc263e8e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:13:06', '2023-07-07 19:13:06', NULL, 'asdwqe12312', 100.00),
('5b50857c-f710-4766-94a1-86387c5282ca', '78045274', '2023-07-05', NULL, 'b7e0ea0e-f094-4f2b-a7d0-2ea654b122cb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 16:49:01', '2023-07-05 16:49:01', NULL, 'asdwqe12312', 100.00),
('5b759d9b-40b5-4c0f-a11d-5f1cfb79fb24', '77575132', '2023-07-07', NULL, 'e6269bac-ec15-4cea-b9fe-42483cf0bd18', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 17:41:44', '2023-07-07 17:41:44', NULL, '123asdfas21q3', 100.00),
('5c2379a3-1228-4438-83f2-99727a7cf70f', '61155677', '2023-07-10', NULL, '0a70274a-9649-4dcf-ad95-bed0878badcd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 18:09:52', '2023-07-10 18:10:05', '2023-07-10 18:10:05', '123asdfas21q3', 100.00),
('5c36aced-59fe-45da-9abd-5e7bbb4b7b9a', '78172382', '2023-07-07', NULL, '2065ea95-426e-47d0-a172-96e1d3d904d7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 18:08:36', '2023-07-07 18:08:36', NULL, 'asdwqe12312', 100.00),
('5c6cbf78-58fd-4b59-a4e1-466a8634cd5c', '81579638', '2023-07-06', NULL, '4487f60b-3d98-4690-a5ec-fbff642f5bda', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-06 09:48:46', '2023-07-06 09:48:46', NULL, 'asdwqe12312', 100.00),
('5cf47a39-c4d4-48f2-869a-7b1662fe16e3', '62319151', '2023-07-18', NULL, '4a10e215-c439-47db-bae7-5e33f8ac3b87', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:16:53', '2023-07-18 09:16:53', NULL, 'asdwqe12312', 100.00),
('5d2b6be2-2a44-4b9c-8a1f-5bd7573c22f6', '72792051', '2023-07-06', 'RESERVADO PARA EL MES DE AGOSTO', '9b94d001-9a58-4a66-b3aa-0b94ad91bb08', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-06 11:43:14', '2023-07-06 11:43:14', NULL, 'asdwqe12312', 100.00),
('5d56694d-1485-48b4-9b28-c08e3e4ebed7', '78788447', '2023-07-11', NULL, '946cb230-b7c9-49e6-9aef-cdbe37492b70', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-11 18:45:47', '2023-07-11 18:45:47', NULL, 'asdwqe12312', 100.00),
('5d631842-cb56-4c30-bba8-8990591ee5f9', '63193482', '2023-07-12', NULL, '6e264d0a-de61-4f6d-8b27-07b65be162dc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-12 17:53:18', '2023-07-12 17:53:18', NULL, 'asdwqe12312', 100.00),
('5e277299-3445-45e6-8578-8363a0856e55', '76392205', '2023-07-05', NULL, 'c27902cd-baa3-4b77-9628-2c37a5758ca8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 17:54:58', '2023-07-05 17:54:58', NULL, '123asdfas21q3', 100.00),
('5e3452d4-71fa-4505-b21c-bdeb064c954a', '81180161', '2023-07-11', NULL, 'c0c202a8-0bd1-4767-b9ec-c0b6b4ba5e9f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-11 09:42:37', '2023-07-11 09:42:37', NULL, 'asdwqe12312', 100.00),
('5f0d9f04-febf-4ae6-bbcf-afeb69a64c31', '61822286', '2023-07-18', NULL, 'eae15587-0dff-4f49-a189-d13c9665aed1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:12:44', '2023-07-18 09:12:44', NULL, 'asdwqe12312', 100.00),
('602af706-894d-48d9-8f81-09806e22193e', '74749924', '2023-07-13', NULL, '52ae371f-b80b-4de9-8071-c1b793600a51', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-13 08:57:06', '2023-07-13 08:57:06', NULL, '123asdfas21q3', 100.00),
('60c39cbd-55e8-4a6d-aa81-bd195b30be72', '71820033', '2023-07-11', NULL, '44aeafb6-2eb5-4805-90c4-35bc95a62061', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-11 09:02:21', '2023-07-11 09:02:21', NULL, '123asdfas21q3', 100.00),
('6229c190-6709-4f7c-b2e1-73ba913a72d8', '62423730', '2023-07-06', NULL, '2f0d23af-bd7e-4774-87d5-8afdfe656b2b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-06 12:14:19', '2023-07-06 12:14:19', NULL, '123asdfas21q3', 100.00),
('62effe29-6cb3-4918-a2dd-c34f1e08e881', '79028245', '2023-07-05', NULL, 'a2ab7553-1e13-4381-84ee-a7207dd6cb0d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 10:32:14', '2023-07-05 10:32:14', NULL, 'asdwqe12312', 100.00),
('6327ca24-3f5c-4eac-a101-5a041f206a1d', '32592596', '2023-07-05', NULL, '717c22e7-4ef2-4852-95e3-c4aa4979a359', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-05 16:29:40', '2023-07-05 16:29:40', NULL, 'gfgr4335ert54', 100.00),
('6328f8fc-197e-44ea-b256-2882f0dd5a3b', '62354447', '2023-07-17', NULL, 'b1c93196-5791-46b1-8047-073a295e5fa5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', '2023-07-17 16:39:51', '2023-07-17 16:39:51', NULL, '123asdfas21q3', 100.00),
('63593abd-38c5-45b1-baa8-5eee1a6b965a', '61957891', '2023-07-07', NULL, 'a04a1abb-980a-4fb2-ae5c-875fd11967b0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:01:31', '2023-07-07 19:04:28', '2023-07-07 19:04:28', 'asdwqe12312', 100.00),
('63a38c3e-283d-4254-b431-9ab3a6579f1b', '79859763', '2023-07-07', NULL, '8f5ce7c9-f4df-47a1-a3d0-c008e3a896d6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-07 10:43:02', '2023-07-07 10:43:02', NULL, 'asdwqe12312', 100.00),
('63c7f76f-28a4-4d53-a28c-ff8a12680d8b', '75426804', '2023-07-18', NULL, '36e9f3ea-fd52-4644-8bd8-af768cf875b8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-18 09:04:38', '2023-07-18 09:04:38', NULL, 'gfgr4335ert54', 100.00),
('64914406-990c-499c-ac97-4a6c58cc9588', '75756658', '2023-06-21', NULL, '4c735c47-81e6-47cd-affb-f990abe79ad3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-06-21 01:16:13', '2023-06-21 01:16:13', NULL, 'asdwqe12312', 100.00),
('65a4dff2-c5ed-4e62-988b-e093f8308db7', '63014017', '2023-07-10', NULL, '046eba5d-31e6-44ac-ab9f-91ee3253176c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 17:03:35', '2023-07-10 17:03:35', NULL, 'asdwqe12312', 100.00),
('65cbe1f9-3a8d-4ae7-866b-c3a7f7cae707', '79015598', '2023-07-05', NULL, '97c153dc-4ef5-40da-beaa-679693a5790c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 17:44:49', '2023-07-05 17:44:49', NULL, 'asdwqe12312', 100.00),
('668fabb4-ecd0-4cb5-8736-7ca1004bf74e', '61713734', '2023-06-22', NULL, '4bb8b232-9ba7-4243-88fb-84ed25cc0b62', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-06-22 10:33:37', '2023-06-23 22:47:01', '2023-06-23 22:47:01', 'gfgr4335ert54', 100.00),
('66a685ac-8d6b-4d7d-8559-7f5da53b24e5', '78072659', '2023-07-05', NULL, 'f5934953-a3a2-427b-8e87-9f61c3284b39', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-05 18:39:13', '2023-07-05 18:39:13', NULL, 'asdwqe12312', 100.00),
('67b6569f-1590-485d-a75b-4d6bf604ce5b', '75180182', '2023-07-07', NULL, 'ffd9f255-d9fe-4958-b218-56c175168fdc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 12:21:35', '2023-07-07 12:21:35', NULL, '123asdfas21q3', 100.00),
('6902123b-08a5-4c59-98fe-81e212912ebb', '90364628', '2023-07-05', 'HIJO DE GUIA', '9a1f7c28-7c67-42bb-a7ea-850a59b4760e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 17:24:29', '2023-07-05 17:24:29', NULL, 'asdwqe12312', 100.00),
('697319b1-0545-4f52-936a-c4abc898dc75', '78956391', '2023-07-11', NULL, '73e938bb-30a3-4285-a378-18391b64d240', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 10:52:17', '2023-07-11 10:52:17', NULL, 'asdwqe12312', 100.00),
('69c66b9a-9323-407f-87f9-f839e3189f23', '77882134', '2023-07-07', NULL, '4c925972-18a8-42a9-89ff-02b22dcb3d24', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-07 15:07:37', '2023-07-07 15:07:37', NULL, 'asdwqe12312', 100.00),
('6b4b4974-01ab-4818-990d-c51f361b935a', '78409778', '2023-07-13', NULL, 'b5f16c36-d31b-40b0-beb8-24bc474a275f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-13 10:23:19', '2023-07-13 10:23:19', NULL, 'asdwqe12312', 100.00),
('6e8fcf7f-f3b0-45bf-b70f-96e57bf925b6', '75460587', '2023-07-10', NULL, 'c9dfde4c-6f83-4264-8d84-2096fab96a29', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-10 16:57:40', '2023-07-10 16:57:40', NULL, 'asdwqe12312', 100.00),
('707c6230-da35-4e03-b9f6-518aa3b36fd6', '73352901', '2023-07-05', NULL, 'e88cf88f-592a-4aca-ae20-23d6faf7dd9e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-05 18:41:03', '2023-07-05 18:41:03', NULL, '123asdfas21q3', 100.00),
('7083ecb0-9a66-4cf3-aa52-01ee25a316cb', '62287280', '2023-07-11', NULL, '5532b755-ba8a-44e8-8c62-4272fd30a48e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-11 17:54:11', '2023-07-11 17:54:11', NULL, '123asdfas21q3', 100.00),
('70e4d440-43e6-4564-b912-500461fc8276', '62043060', '2023-07-06', NULL, 'e60f109e-80c4-4fcd-a539-97ee0c97df08', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-06 18:13:36', '2023-07-06 18:13:36', NULL, 'gfgr4335ert54', 100.00),
('71353f6d-4db5-4ead-81d7-96fe88aab8ca', '63013755', '2023-07-07', NULL, 'b3c622b1-8e7a-462a-9b13-3bfb84372ba2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:15:55', '2023-07-07 19:15:55', NULL, 'asdwqe12312', 100.00),
('71af4a67-afe2-426b-a2b2-3fa119635e6c', '73642218', '2023-07-14', NULL, 'bf6e7bb9-5c0a-42c1-82c4-4738224cd137', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-14 17:06:37', '2023-07-14 17:06:37', NULL, '123asdfas21q3', 100.00),
('73d47379-7724-4e1a-a8bc-29608f40d030', '76022298', '2023-06-19', NULL, '8f0ca397-c4a8-4c51-8de9-7eb04742a9fd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-06-19 20:24:48', '2023-06-19 20:33:03', '2023-06-19 20:33:03', 'gfgr4335ert54', 100.00),
('7462fce2-b59d-48ec-bfae-268fac552955', '46533557', '2023-07-12', NULL, '50fca020-2f72-457e-b05f-b55715d9db71', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-12 09:43:10', '2023-07-12 09:43:10', NULL, 'gfgr4335ert54', 100.00),
('74e36b9a-243c-4372-9f7e-7cba6da8dd24', '61880499', '2023-07-17', NULL, '729423f1-67f3-4a4d-b4cd-c283cc2d9d48', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-17 10:07:00', '2023-07-17 10:07:00', NULL, 'gfgr4335ert54', 100.00),
('758557c8-1b82-45fb-9a10-88c3162af7ef', '62552517', '2023-07-05', NULL, 'ce082ad3-272b-490d-9173-67877ed38276', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-05 09:32:34', '2023-07-05 09:32:34', NULL, 'gfgr4335ert54', 100.00),
('75dabb13-3bff-43d1-80d3-14a308876ece', '73665040', '2023-07-06', NULL, 'df855961-eda1-467a-9a1e-27d67eb07287', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-06 19:10:55', '2023-07-06 19:10:55', NULL, '123asdfas21q3', 100.00),
('75fc625a-cc3e-4a42-8569-1fac95fdc1e9', '78627359', '2023-06-27', NULL, 'edafe6f5-791d-41ad-b645-5687781e1cc2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-06-27 15:38:11', '2023-06-27 16:01:15', '2023-06-27 16:01:15', 'asdwqe12312', 100.00),
('77020870-f836-481c-99fa-6edfdd4335ec', '62514508', '2023-07-18', NULL, '515c7a8f-bcc1-4231-9558-0544280ccfe1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:14:44', '2023-07-18 09:14:44', NULL, '123asdfas21q3', 100.00),
('790c7e1e-7a8e-49c9-b9ab-61f44ed48ec2', '75838212', '2023-07-10', NULL, 'fa7d21c5-158d-4b54-a2c3-7497caf5fc0a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 10:43:17', '2023-07-10 10:43:17', NULL, 'asdwqe12312', 100.00),
('792e1558-167d-446b-8265-02c0644c9288', '77995334', '2023-07-05', NULL, 'ac4ca1ee-7b75-431a-80d2-1396f48f3212', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 17:50:16', '2023-07-05 17:50:16', NULL, 'asdwqe12312', 100.00),
('799baa88-576a-408a-9f12-e748f028d812', '61314642', '2023-07-07', NULL, 'ac9bd3d4-5217-4ed5-8b35-ea29bfa99e58', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-07 12:07:07', '2023-07-07 12:07:07', NULL, '123asdfas21q3', 100.00),
('79bc80b2-9d15-48b9-984c-90b8ba70cf4f', '62552542', '2023-07-06', NULL, '1a637b03-4809-47c0-9d89-530258e1a96e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-06 15:45:13', '2023-07-06 15:45:13', NULL, 'asdwqe12312', 100.00),
('7ad30967-b2e4-4189-b78f-0a16a768d74e', '61713734', '2023-06-23', NULL, '4bb8b232-9ba7-4243-88fb-84ed25cc0b62', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-06-23 22:46:38', '2023-06-23 22:46:38', NULL, 'gfgr4335ert54', 100.00),
('7c0df8b6-caf6-4be6-852f-e5071eda724c', '91190268', '2023-07-13', NULL, 'fcb627d5-874c-4083-a394-b97a750c8f9c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-13 10:27:04', '2023-07-13 10:27:04', NULL, 'asdwqe12312', 100.00),
('7f7b94cb-52cd-48f9-a28a-9eff75017ccd', '78850422', '2023-07-06', NULL, '449cde94-ce38-4fb4-8a51-52bc22caa801', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-06 10:24:23', '2023-07-06 10:24:23', NULL, 'asdwqe12312', 100.00);
INSERT INTO `matriculas` (`id`, `codigo`, `fecha`, `observacion`, `id_estudiantes`, `id_periodo_academicos`, `id_ciclos`, `created_at`, `updated_at`, `deleted_at`, `id_rubro_turno`, `monto`) VALUES
('7f7dd0f7-9643-46fb-841b-8a16796a46bf', '61911990', '2023-07-18', NULL, 'f011de96-7392-4802-9a66-3f58cde4242d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:10:30', '2023-07-18 09:10:30', NULL, '123asdfas21q3', 100.00),
('806fb611-47ee-4d47-912a-dbcd6cbf0655', '78317258', '2023-07-07', NULL, '468a52b6-fa10-4fc8-9d67-d71373e85a42', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 17:37:02', '2023-07-07 17:37:02', NULL, 'asdwqe12312', 100.00),
('848e5dc8-495c-4769-a684-04d2df9cbd1f', '61064045', '2023-07-10', NULL, '025148f9-e712-45ba-a502-75d396c50176', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 18:16:03', '2023-07-10 18:16:03', NULL, 'gfgr4335ert54', 100.00),
('84f94309-3b31-413c-aea8-4eb7c5409023', '61155677', '2023-07-10', NULL, '0a70274a-9649-4dcf-ad95-bed0878badcd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 18:10:15', '2023-07-10 18:10:15', NULL, 'gfgr4335ert54', 100.00),
('850420d3-6022-4f93-b150-30a775d7983b', '90910399', '2023-07-11', NULL, '442f7206-0389-4d9e-b2f2-3769708dffd2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-11 17:22:38', '2023-07-11 17:22:54', '2023-07-11 17:22:54', 'asdwqe12312', 100.00),
('86f47fa9-0002-4217-872a-22e6824ec695', '90256480', '2023-07-11', NULL, '651602d3-5e94-4b27-b4c0-59ed879e401e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 11:14:03', '2023-07-11 11:14:03', NULL, 'asdwqe12312', 100.00),
('8710964a-63a8-4ef9-a667-237eda2b834c', '61314674', '2023-07-12', NULL, 'c55b96a4-b901-44ae-87a6-dd8935425ee6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-12 10:03:34', '2023-07-12 10:03:34', NULL, 'gfgr4335ert54', 100.00),
('876de1c5-bd80-4981-a281-7b4f5d85297c', '74081473', '2023-07-06', NULL, 'd4655639-02eb-482c-8cb0-7baea805535a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-06 15:54:43', '2023-07-06 15:54:43', NULL, '123asdfas21q3', 100.00),
('886ffb4f-9d83-40e6-b86e-09dc37657532', '61480334', '2023-07-07', NULL, 'e1939770-1258-4726-80ae-9d865b75a3e0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-07 12:23:42', '2023-07-07 12:23:42', NULL, '123asdfas21q3', 100.00),
('892548a2-69fd-41b0-882f-4233345f4497', '78938307', '2023-07-14', NULL, '90974475-fb43-46c5-92d7-e0680c3465f0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-14 17:09:41', '2023-07-14 17:09:41', NULL, 'asdwqe12312', 100.00),
('8925e10b-794a-4bd4-80d8-9cc631ba2b1e', '62286958', '2023-07-07', NULL, '3ed5afa6-7bf1-4b40-ba93-d75e9549df4d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 17:52:38', '2023-07-07 17:52:38', NULL, '123asdfas21q3', 100.00),
('8bc23f64-5aed-4f2f-a3f7-53a300d42cb8', '91851037', '2023-07-13', NULL, '8e3a060f-d1f7-4ca2-9783-c59092a2b9c6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-13 09:59:00', '2023-07-13 09:59:00', NULL, 'gfgr4335ert54', 100.00),
('8c217d90-e24d-420d-8a9d-7297633ce3f1', '31653853', '2023-07-12', NULL, '3d932244-7a28-4a48-ba84-6c7704739732', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-12 11:47:30', '2023-07-12 11:47:30', NULL, '123asdfas21q3', 100.00),
('8eb3df9f-4b21-48c0-abf5-b6a7564d35bc', '81552719', '2023-07-05', NULL, '8ab45dce-3a77-4b12-bc9f-82ae5ce51e37', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-05 16:56:40', '2023-07-05 16:56:40', NULL, 'asdwqe12312', 100.00),
('9025b70e-c709-4501-ac3d-0f43cfe6155b', '62014785', '2023-07-07', NULL, '5866bc14-0811-4914-b70c-3c82a8afa525', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 10:16:20', '2023-07-07 10:16:20', NULL, '123asdfas21q3', 100.00),
('90a695c7-9ee8-4408-8c33-f78a72894279', '61314539', '2023-07-10', NULL, '4dc8bba8-f938-43e0-b548-634dbb652ba4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-10 09:20:54', '2023-07-10 09:20:54', NULL, 'gfgr4335ert54', 100.00),
('90b52712-cd64-43ea-96f0-3c06a2a4fd96', '78418164', '2023-07-17', NULL, '54027b40-f26a-4ef5-ad55-672d15418884', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-17 16:42:46', '2023-07-17 16:42:46', NULL, 'asdwqe12312', 100.00),
('9117deae-2d28-41e9-b759-44ee816702a1', '61880513', '2023-07-05', NULL, '68f44457-18a2-4447-b443-44c0621dbd11', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 15:48:17', '2023-07-05 15:48:17', NULL, 'asdwqe12312', 100.00),
('91505cb5-f19e-4068-992d-43c18cc7eeb5', '62043083', '2023-07-10', NULL, '2f1c0333-0f41-46a7-a884-7f4f296ad03b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-10 17:41:51', '2023-07-10 17:41:51', NULL, 'gfgr4335ert54', 100.00),
('91f8a4e9-bda0-4a66-995f-2d49b68e50a1', '72158840', '2023-07-13', NULL, '1abaf8ae-b0b7-4040-bdf7-c07d5e0ab10a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-13 09:11:05', '2023-07-13 09:11:05', NULL, 'gfgr4335ert54', 100.00),
('91ff88a3-d4e1-4f44-b10d-723908bd98d6', '61409102', '2023-07-10', NULL, 'e81a709f-a7c2-4473-9564-6ab260816fbd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-10 08:42:11', '2023-07-10 08:42:11', NULL, 'gfgr4335ert54', 100.00),
('92ef01dd-ba0f-4828-bf6a-3d653e2257ed', '62518155', '2023-07-10', NULL, 'eb9c27a5-d403-4876-bcef-3086a4e8af4b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-10 19:09:54', '2023-07-10 19:09:54', NULL, '123asdfas21q3', 100.00),
('936d4454-ddf9-4253-b879-fe2a89d7c0a7', '79782755', '2023-07-05', NULL, '4c091eeb-3b45-4887-ba76-89dbd21de342', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-05 16:59:15', '2023-07-05 16:59:15', NULL, 'asdwqe12312', 100.00),
('93966b46-92ab-418e-aca7-c3001a3709d7', '61713675', '2023-07-05', NULL, '17f68d08-ea93-41ee-b48f-67cb95ab0627', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 19:28:10', '2023-07-05 19:28:10', NULL, 'asdwqe12312', 100.00),
('93e8c1d9-2e31-4645-9fed-ccaedba2b052', '78283761', '2023-07-07', NULL, 'ca645119-7741-4940-ad13-1bdbb9d015ab', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-07 18:39:54', '2023-07-07 18:39:54', NULL, 'asdwqe12312', 100.00),
('9437f49c-93d0-4c24-b8dc-ac2f9b60a6ea', '63014139', '2023-07-05', NULL, '87bd7aea-14ca-4eab-8efe-b4bf5a0967fe', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 16:45:39', '2023-07-05 16:45:39', NULL, 'asdwqe12312', 100.00),
('948ddcc4-3424-4578-882b-a930f94c7f70', '78627359', '2023-06-27', NULL, 'edafe6f5-791d-41ad-b645-5687781e1cc2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-06-27 16:01:32', '2023-06-27 16:01:32', NULL, 'asdwqe12312', 100.00),
('94a80cd4-e4c8-4e7d-a7ce-59a708978612', '63092085', '2023-07-05', NULL, '7c9a08c7-d0ca-40cd-a08b-dbefe4fe4964', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 19:01:37', '2023-07-05 19:01:37', NULL, 'asdwqe12312', 100.00),
('951ebc3b-1bf2-4609-805f-157ba66748da', '80948356', '2023-07-07', NULL, '20e2d961-2e7c-4412-ad6c-57f4b2f98db1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-07 17:09:49', '2023-07-07 17:09:49', NULL, 'asdwqe12312', 100.00),
('96345c83-97e3-4720-9edc-8885756352ab', '62014784', '2023-07-07', NULL, '6bc414d6-6045-4f66-a77d-d98fd38396ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 10:12:52', '2023-07-07 10:12:52', NULL, '123asdfas21q3', 100.00),
('963aa8f7-03a3-4ec6-9527-e3b38372d28a', '75791820', '2023-07-12', NULL, '40e17583-5f90-4aff-9531-b9acaeaf407d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-12 19:10:27', '2023-07-12 19:10:27', NULL, '123asdfas21q3', 100.00),
('96aa9d73-9d74-445a-8e7d-6fbcca0a0c57', '75458922', '2023-07-12', NULL, 'b9f05ded-f9d8-4222-b4da-884e0996939e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-12 18:55:27', '2023-07-12 18:55:27', NULL, '123asdfas21q3', 100.00),
('97265d6e-b75d-41e7-9d15-419ac612e62e', '72134972', '2023-07-12', NULL, 'b638a307-3da3-4086-a6b7-713f61e16371', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-12 10:10:23', '2023-07-12 10:10:23', NULL, 'gfgr4335ert54', 100.00),
('98a1a1a9-0ecd-4497-a5ac-b513c4ac4365', '61155729', '2023-07-11', NULL, '6080266d-4778-49ba-b493-6eb18847a6d9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 15:58:32', '2023-07-11 15:58:32', NULL, '123asdfas21q3', 100.00),
('9a874be4-0419-4949-b34b-9fbc30def0f1', '76510665', '2023-07-12', NULL, '3d414a38-4f40-464e-a591-62a89ba1f427', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-12 18:26:46', '2023-07-12 18:26:46', NULL, '123asdfas21q3', 100.00),
('a0773166-63db-41eb-8625-5eafa118dcee', '81181447', '2023-07-05', NULL, 'db37f7b0-8986-4f15-9927-98a3e07f13b2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 11:12:43', '2023-07-05 11:12:43', NULL, 'asdwqe12312', 100.00),
('a0e98d73-1c66-4045-b5bc-901eac9ca542', '63092027', '2023-07-05', NULL, '3d0a6564-9d88-4c94-be65-4f3fdd14c198', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 15:54:34', '2023-07-05 15:54:34', NULL, 'asdwqe12312', 100.00),
('a0f2bb98-09f0-4a08-8ba1-746d4d0025aa', '75321948', '2023-07-06', NULL, '08592993-7eb9-4156-b689-711c1b1579ee', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-06 19:05:40', '2023-07-06 19:05:40', NULL, '123asdfas21q3', 100.00),
('a1574d31-3f7a-499a-a7a7-bb84b4b359a5', '62043075', '2023-07-11', NULL, '5a65e57e-6ad6-435d-b9e6-d65f4199366b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-11 17:52:56', '2023-07-11 17:52:56', NULL, '123asdfas21q3', 100.00),
('a158098a-9a98-48d8-b774-44d8be635bfc', '60411178', '2023-07-10', NULL, 'b5c57a54-042d-4ab9-bc33-ecbfb5cb4ad3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-10 17:55:30', '2023-07-10 17:55:30', NULL, '123asdfas21q3', 100.00),
('a20b4472-10e1-4f59-856e-f62faf91ec18', '81611073', '2023-07-06', NULL, '64927d20-4624-495a-8638-183587f0e452', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-06 15:52:58', '2023-07-06 15:52:58', NULL, 'asdwqe12312', 100.00),
('a2930ea4-d469-4324-8277-3485e6d4d780', '81138831', '2023-07-11', NULL, '9ee49e59-2fbe-4ae2-bf69-2c9464050ff6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-11 15:38:18', '2023-07-11 15:38:18', NULL, 'asdwqe12312', 100.00),
('a372c86b-b454-4ba1-9e36-e26f475ac135', '78676777', '2023-07-05', NULL, '71593035-9674-4e89-bbd8-a53eeed06eb3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-05 15:32:46', '2023-07-05 15:32:46', NULL, 'asdwqe12312', 100.00),
('a3a6dfbe-bbd7-4277-b6b6-bb124df1f41e', '71681681', '2023-07-10', NULL, 'c7e47486-cfbf-4717-8bfc-e6b02f6241a1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', '2023-07-10 17:48:51', '2023-07-10 17:48:51', NULL, '123asdfas21q3', 100.00),
('a42ae21c-72cf-4e1d-bccb-c3a56e760eae', '47615626', '2023-07-11', NULL, 'a7fd63dd-fed0-4906-b9b3-84b0e2b56554', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-11 19:01:53', '2023-07-11 19:01:53', NULL, '123asdfas21q3', 100.00),
('a51e73ca-0fed-4558-948b-2cc96d7eb148', '77938875', '2023-07-05', NULL, 'feb0a394-ff8d-4163-b09a-e4bc48bb0a47', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 15:43:52', '2023-07-05 15:43:52', NULL, 'asdwqe12312', 100.00),
('a5adeabc-1585-4bca-904d-dd797779dd6d', '61517164', '2023-06-30', NULL, 'f7f86769-518e-4386-8b07-d8190b9236ea', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-30 19:18:35', '2023-06-30 19:18:35', NULL, '123asdfas21q3', 100.00),
('a5e754d3-574b-4310-bb81-01a8915fd893', '62354749', '2023-07-12', NULL, '6845e7ab-3448-4785-9fc5-6262e5da4303', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-12 18:58:28', '2023-07-12 18:58:28', NULL, '123asdfas21q3', 100.00),
('a71c54b1-8b75-48f2-a63c-2d7b105c2aaf', '81610837', '2023-07-10', NULL, '269ac0f6-7ac4-44ec-ba54-b491e305d602', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 09:29:48', '2023-07-10 09:29:48', NULL, 'asdwqe12312', 100.00),
('a73e34fd-8c65-4157-9714-d14ff79f89a4', '63014168', '2023-07-07', NULL, 'd06bc773-819f-487d-bec1-aae2731552a1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 11:29:41', '2023-07-07 11:29:41', NULL, 'asdwqe12312', 100.00),
('a8173077-04fc-44dc-a99e-908074a810d6', '61657263', '2023-07-10', NULL, '900d10dd-f68c-41ef-a4ba-ca8fd52daec0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 18:39:26', '2023-07-10 18:39:26', NULL, '123asdfas21q3', 100.00),
('a82fa4c9-8bc0-4887-9053-22ca727476d6', '79806792', '2023-07-07', NULL, '95d411fa-536e-40d5-b5c6-7d7b06999db7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-07 17:32:28', '2023-07-07 17:32:28', NULL, 'asdwqe12312', 100.00),
('a8aa6245-6b54-401d-b949-808cfed3379b', '63193458', '2023-07-10', NULL, 'e6404a1e-8bde-4a04-aa05-29e2b4d4b52d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-10 17:37:36', '2023-07-10 17:37:36', NULL, 'asdwqe12312', 100.00),
('aa14761f-ad27-4cac-a0df-deae74f48541', '63013888', '2023-07-04', NULL, '25f2b501-33b5-4647-84d9-820885576416', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-04 17:38:53', '2023-07-04 17:38:53', NULL, 'asdwqe12312', 100.00),
('abf67b57-8ffc-4ca8-9c36-cdea0e8e2810', '61233269', '2023-07-17', NULL, '6f0b1997-4283-4b48-96d7-0b7df05d489e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-17 10:05:11', '2023-07-17 10:05:11', NULL, 'gfgr4335ert54', 100.00),
('ac9fb664-cbed-471b-98a4-148edd2c53d3', '60942995', '2023-07-13', NULL, '4cb7e45d-007f-42ed-859d-613f51c56564', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-13 16:42:18', '2023-07-13 16:42:18', NULL, '123asdfas21q3', 100.00),
('ad3e5d3d-b381-4d5b-9697-9225b67ebc21', '78835506', '2023-07-05', NULL, '9cdc1408-5164-46d4-9623-18bb90cb14e4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-05 16:10:43', '2023-07-05 16:10:43', NULL, 'asdwqe12312', 100.00),
('adc54e8f-e64d-4305-8cb7-9896a79c35c6', '62015179', '2023-07-06', NULL, 'ddc4d0d3-2d85-47d0-8666-49a771c42627', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-06 09:14:08', '2023-07-06 09:14:08', NULL, 'gfgr4335ert54', 100.00),
('aeb1fe31-0c3e-43c9-9ffa-354d51c6eaf6', '74537288', '2023-07-10', NULL, 'bc41332c-7c32-402b-9dca-7a77faa41690', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 08:44:46', '2023-07-10 08:44:46', NULL, 'gfgr4335ert54', 100.00),
('af7020b8-f684-4f4d-8c63-4410a38a40b9', '72717205', '2023-06-30', NULL, 'dc26a706-6ebf-4d94-ae8c-d1c3c343f319', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-30 19:32:35', '2023-06-30 19:32:35', NULL, '123asdfas21q3', 100.00),
('af7e5a07-cab3-4138-ab6c-2efeb27954df', '61233268', '2023-07-05', NULL, '68d93b6a-da8a-4db6-b24f-eca1c6d84fb5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', '2023-07-05 18:52:33', '2023-07-05 18:52:33', NULL, '123asdfas21q3', 100.00),
('b04738df-a8ea-449c-bcf4-711f84c10104', '62837462', '2023-07-18', NULL, 'ad486a33-10dd-456f-837e-fd16748e69f3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-18 09:07:02', '2023-07-18 09:07:02', NULL, '123asdfas21q3', 100.00),
('b0750861-1cc2-4d5d-b9cc-e2f499084088', '81596916', '2023-07-13', NULL, '864e227f-1e14-40bb-8171-19b4fae69b04', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-13 10:19:35', '2023-07-13 10:19:35', NULL, 'asdwqe12312', 100.00),
('b36de1e0-faef-4cfa-a9c7-0d86c18518cb', '939919450', '2023-07-17', NULL, '4396a263-15d7-413f-bc30-5dd0a753f506', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-17 10:14:16', '2023-07-17 10:14:16', NULL, 'gfgr4335ert54', 100.00),
('b3743e94-c3b4-4b74-8817-00d08706b2df', '76346740', '2023-07-05', NULL, '5448608d-9d97-4d98-8bf6-9244ab3b4c41', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-05 12:37:19', '2023-07-05 12:37:19', NULL, 'asdwqe12312', 100.00),
('b5ec2bff-2516-4b16-820b-2b89ca500994', '71727610', '2023-07-14', NULL, '8f28bdb5-f28a-4e59-af64-8df1e3396759', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-14 15:32:34', '2023-07-14 15:32:34', NULL, 'gfgr4335ert54', 100.00),
('b72ed023-28fc-4ac9-9dd3-70236dbdba6f', '75585939', '2023-06-30', NULL, '1e462fab-32ec-4a84-baa8-bccb355de144', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-06-30 19:17:41', '2023-06-30 19:19:22', '2023-06-30 19:19:22', '123asdfas21q3', 100.00),
('b85ac4cf-ebcf-4350-86d8-806c5fd783a7', '70118481', '2023-07-06', NULL, '914a2b55-f841-4610-86b6-421876f1272f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-06 10:06:07', '2023-07-06 10:06:07', NULL, 'gfgr4335ert54', 100.00),
('b8c39d7e-cb82-469e-ab4e-81b0cd2b803e', '79034641', '2023-07-03', NULL, '1148d260-461d-407a-8c8f-99633bd99c53', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-03 18:20:11', '2023-07-03 18:20:11', NULL, 'asdwqe12312', 100.00),
('b9195509-dfa2-4d65-a447-526b78f754fb', '61155379', '2023-07-03', NULL, '7cb221e0-3b8c-4f59-9440-00027db10e17', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-03 11:01:07', '2023-07-03 11:01:07', NULL, 'gfgr4335ert54', 100.00),
('b946070a-684a-4a65-8400-894e748f6bca', '81046281', '2023-07-07', NULL, '9e7eb9fd-1d3a-4230-9274-34bc7f419f3b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 10:35:50', '2023-07-07 10:35:50', NULL, 'asdwqe12312', 100.00),
('b9a22fe7-834e-4976-880d-d1c0829d8cba', '76028790', '2023-07-11', NULL, '170f89d8-12cb-4ab7-91a2-d2b89cb2c875', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-11 10:26:08', '2023-07-11 10:26:08', NULL, '123asdfas21q3', 100.00),
('b9cbcb32-c44d-4da6-9a09-75a9853518f5', '61119774', '2023-07-07', NULL, 'd6ad50e3-d8b7-4e12-b044-5e97951c4a06', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-07 17:39:36', '2023-07-07 17:39:36', NULL, '123asdfas21q3', 100.00),
('ba823047-cd22-4998-9cf3-7e4ba4f96fab', '80821932', '2023-07-10', NULL, 'de65f04d-9982-4157-b2e4-d5b2a911c484', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 15:43:35', '2023-07-10 15:43:35', NULL, 'asdwqe12312', 100.00),
('ba8fc3e4-e3dd-4206-a991-0411f1dd1854', '61314621', '2023-07-10', NULL, 'ca5e2950-6ad7-4544-a483-df7ed526de2d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 19:07:41', '2023-07-10 19:07:41', NULL, '123asdfas21q3', 100.00),
('bbe5ead6-bca2-42d3-a70d-7842396338de', '72792051', '2023-07-03', NULL, '9b94d001-9a58-4a66-b3aa-0b94ad91bb08', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-03 11:46:39', '2023-07-06 11:41:39', '2023-07-06 11:41:39', 'asdwqe12312', 100.00),
('bc1c69ea-706c-4b77-b474-83d6b94936fb', '78956861', '2023-07-14', NULL, 'a54707ac-0d4f-4775-b3ca-14f95f9e15b5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-14 15:22:39', '2023-07-14 15:22:39', NULL, 'asdwqe12312', 100.00),
('be3a5396-ee68-4bf4-aa5a-a57a0d317fdb', '90334737', '2023-07-06', NULL, '2a01cb3a-eb65-4808-9391-cc620273d975', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-06 18:08:47', '2023-07-06 18:08:47', NULL, 'asdwqe12312', 100.00),
('bf52a1ed-b1c1-4ae3-9e80-1d30ef2afd84', '90290087', '2023-07-05', NULL, '25c0fa57-78e9-4dd6-9179-6726ba5a0a4b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 12:30:28', '2023-07-05 12:30:28', NULL, 'asdwqe12312', 100.00),
('bf73e9de-9958-4858-96ce-3769289320b2', '61409147', '2023-07-06', NULL, '3cf3999d-85b1-499e-b9b6-a9008ee28c0d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-06 19:07:02', '2023-07-06 19:07:02', NULL, '123asdfas21q3', 100.00),
('bf800a17-497c-4414-b1e2-a13a69d8bcf3', '60424993', '2023-07-06', NULL, '7ff0e327-b9e7-483a-8ac5-0d536282037d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-06 09:01:54', '2023-07-06 09:01:54', NULL, 'asdwqe12312', 100.00),
('bfca225f-8126-4158-baeb-f407683985dc', '77367770', '2023-07-11', NULL, '0b167520-a535-41e3-8857-453e8258bffe', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-11 17:55:51', '2023-07-11 17:55:51', NULL, 'asdwqe12312', 100.00),
('c05938d7-c2f1-4e2d-ae30-9748ec03dfea', '75187234', '2023-07-10', NULL, 'c5fa4a62-2967-4174-84d0-c550175e55ae', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-10 17:59:04', '2023-07-10 17:59:04', NULL, 'asdwqe12312', 100.00),
('c0c753d1-8a9e-4a7d-b423-2c17125020f1', '71578981', '2023-07-05', NULL, '0cb272f2-5240-453f-827e-a7c39bed8f82', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-05 17:25:39', '2023-07-05 17:25:39', NULL, '123asdfas21q3', 100.00),
('c12fd2ea-305e-4539-8afc-b49bfe5d3ad3', '74671148', '2023-07-10', NULL, '19ad4f1c-f898-48e4-a704-6e04412288ef', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-10 17:50:48', '2023-07-10 17:50:48', NULL, 'gfgr4335ert54', 100.00),
('c150608b-ed58-47e8-a3f5-4030a8457477', '60858235', '2023-07-10', NULL, 'a0773296-3373-46e3-bdc4-baa83b2b10a1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-10 18:46:39', '2023-07-10 18:46:39', NULL, '123asdfas21q3', 100.00),
('c16f8931-aaef-4df9-bb13-c13a90460243', '78517512', '2023-07-07', NULL, 'daf59530-83db-4253-8e8f-0fbbe0dfe74c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-07 18:46:30', '2023-07-07 18:46:30', NULL, 'asdwqe12312', 100.00),
('c45facbe-808d-45fd-965d-1e005c83b43c', '61957938', '2023-07-10', NULL, '8cabafe5-6df1-4e7c-9472-158c35c61e74', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-10 17:01:58', '2023-07-10 17:01:58', NULL, 'gfgr4335ert54', 100.00),
('c57f18ac-a136-49f2-8ead-1b957a4d2fde', '77575132', '2023-07-07', NULL, 'e6269bac-ec15-4cea-b9fe-42483cf0bd18', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-07 17:41:26', '2023-07-07 17:41:32', '2023-07-07 17:41:32', 'asdwqe12312', 100.00),
('c5890bbf-dea9-47d3-8b22-22e83b597e03', '81274366', '2023-07-10', NULL, '8f96c99d-43fb-4e6c-a65b-60df2682f070', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-10 15:34:57', '2023-07-10 15:34:57', NULL, 'asdwqe12312', 100.00),
('c619e31b-e17c-40d2-b9fa-ea2b048142ae', '61822327', '2023-07-06', NULL, '29c7c573-5cca-4ac1-a380-dcca958f2496', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-06 18:58:07', '2023-07-06 18:58:07', NULL, '123asdfas21q3', 100.00),
('c6706ac6-0d1c-4e28-bf37-cb461aa6cf48', '61603701', '2023-07-11', NULL, '83a4729e-194a-4518-8a21-8ef20de79029', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-11 09:04:16', '2023-07-11 09:04:16', NULL, '123asdfas21q3', 100.00),
('c6b060f7-7066-421c-989e-bb233208b480', '61409245', '2023-07-06', NULL, 'cde0b85e-67ef-4863-b1f2-a3d298fb1257', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-06 12:29:25', '2023-07-06 12:29:25', NULL, '123asdfas21q3', 100.00),
('c7723f91-9099-4662-8091-1baff7a5efe0', '79152303', '2023-07-05', NULL, '38998857-0de8-49d8-a255-81f6a61ba761', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-05 11:30:14', '2023-07-05 11:30:14', NULL, 'asdwqe12312', 100.00),
('ca83ecf3-2b35-47ef-a81f-36ef55bfacb2', '62014868', '2023-07-05', NULL, '67a0c334-b1ea-43bc-ae26-291d5a51d7b4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 15:28:07', '2023-07-05 15:28:07', NULL, 'asdwqe12312', 100.00),
('cba9f329-a98c-4c7a-8053-36ce10c9e2b2', '75591613', '2023-07-10', NULL, 'aa20eb59-fb0c-495b-9e2f-a6e2efeb4825', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 18:17:49', '2023-07-10 18:17:49', NULL, '123asdfas21q3', 100.00),
('cd82690c-3cab-4a7c-92a1-a5ea89edbcae', '60957658', '2023-07-14', NULL, '9b2b0e7e-43c7-42a3-8008-aa5ef6fac3fd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-14 19:07:40', '2023-07-14 19:07:40', NULL, 'asdwqe12312', 100.00),
('cdfe6207-6f49-43fe-ace9-1aae04fec56f', '78385079', '2023-07-11', NULL, 'a4469687-bdfc-4e0d-8233-c4528459c8b5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 15:25:33', '2023-07-11 15:25:33', NULL, 'asdwqe12312', 100.00),
('cec9e26c-dda9-4509-9f3e-65bbcdc3b7fd', '90378951', '2023-07-17', NULL, '6a81bd99-12e5-4f36-a4ba-2bd3a0166a4e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-17 16:57:47', '2023-07-17 16:57:47', NULL, 'asdwqe12312', 100.00),
('cf0d6657-36b3-44b8-ad4d-e35ebd5f0383', '75788337', '2023-07-04', NULL, 'c59a6c29-105d-444a-abc4-5b0454854102', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-04 12:04:21', '2023-07-04 12:04:21', NULL, 'asdwqe12312', 100.00),
('cf4e1ac6-50ce-42e4-ab5b-bdfa1a1fd2ee', '77933140', '2023-07-05', NULL, '6e454871-e0be-484c-b3f0-ce5b698e1d15', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 09:41:47', '2023-07-05 09:41:47', NULL, 'asdwqe12312', 100.00),
('cf714032-c03a-439a-98d7-4c3e46839213', '80141333', '2023-07-12', NULL, '7cc02a55-24b6-4de3-82b2-f148094bc4ee', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-12 18:30:42', '2023-07-12 18:30:42', NULL, '123asdfas21q3', 100.00),
('d069217a-e0b1-4df3-9568-e4d33c65f78f', '70114303', '2023-07-07', NULL, '263aab28-cfd2-4f59-bc6e-fd29b8eeb1ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:15:14', '2023-07-07 19:15:14', NULL, 'asdwqe12312', 100.00),
('d1e03dc6-bdf1-4dd9-970b-3a59f4e24bad', '79338412', '2023-07-10', NULL, '2e8ea8ff-097e-43a7-94a2-77a330da3f34', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 19:01:32', '2023-07-10 19:01:32', NULL, 'asdwqe12312', 100.00),
('d216a013-f88b-49e4-8aab-62a67f010327', '79455612', '2023-07-07', NULL, '95474dce-e60a-49c2-8b42-ffd7f303da4d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-07 18:41:48', '2023-07-07 18:41:48', NULL, 'asdwqe12312', 100.00),
('d2682022-ab1e-4f73-8aa3-a3992cc97585', '62867086', '2023-07-07', NULL, '3d284775-10e6-4b94-87c2-b9a41fdaa9d8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:12:15', '2023-07-07 19:12:15', NULL, 'asdwqe12312', 100.00),
('d2aebf06-aedd-4ce8-a2ea-70a4d8b7d313', '62837386', '2023-07-10', NULL, '135d7ce6-d162-4028-8044-2e54021f6aff', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-10 18:04:48', '2023-07-10 18:04:48', NULL, 'asdwqe12312', 100.00),
('d321cfbe-bcdf-4572-a950-296ceda87f4c', '79580349', '2023-07-11', NULL, '2ab10a22-0614-4434-a239-32455088bbfc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 15:24:22', '2023-07-11 15:24:22', NULL, 'asdwqe12312', 100.00),
('d40dc836-a2fe-4311-af33-3c3c14f9fc17', '78818058', '2023-07-11', NULL, '3426186e-f83c-4fde-9dcf-ccbb825f0544', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-11 18:56:41', '2023-07-11 18:56:41', NULL, 'asdwqe12312', 100.00),
('d46251e4-d024-4fd5-bc93-42d70e26ce13', '61717760', '2023-07-10', NULL, '8a69dd3a-0d68-462f-869c-fc40d12f3b35', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 16:10:55', '2023-07-10 16:10:55', NULL, 'asdwqe12312', 100.00),
('d544be15-b75c-4fa0-bf72-17ce9e5e1f42', '79737064', '2023-07-11', NULL, 'a1259f4e-5c42-4adc-8fbc-5661e987aa25', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-11 15:37:08', '2023-07-11 15:37:08', NULL, 'asdwqe12312', 100.00),
('d6673d4e-dbdc-4eff-8a89-9c1c8ac1b748', '78032658', '2023-07-17', NULL, '04a3ea6f-c910-47ab-9ec1-b06fd6036f38', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-17 17:12:35', '2023-07-17 17:12:35', NULL, 'asdwqe12312', 100.00),
('d7354fef-9626-4511-a58e-026d92ebeb70', '75339125', '2023-06-30', NULL, '51a8c28a-7582-4436-a695-feb5f33c7fb6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-30 19:22:49', '2023-06-30 19:22:49', NULL, '123asdfas21q3', 100.00),
('d8ee5606-c53a-466e-be7b-02aa541bea82', '60983930', '2023-07-06', NULL, 'ec13b2c5-b702-45a8-bdd3-30669010a45a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-06 18:51:11', '2023-07-06 18:51:11', NULL, '123asdfas21q3', 100.00),
('d9205efd-dcbb-40dc-9fad-8b841e28eefe', '61191384', '2023-07-05', NULL, '30690342-815c-4fac-87bf-fbf023a45964', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 11:34:48', '2023-07-05 11:34:48', NULL, 'asdwqe12312', 100.00),
('d97cdcf7-a3c9-401a-a0c3-0c58901f0259', '62866822', '2023-07-17', NULL, '0947f94b-c776-4366-8381-fcb1f3733d0f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-17 12:40:54', '2023-07-17 12:40:54', NULL, '123asdfas21q3', 100.00),
('d9ba7a07-512e-4624-8e6e-4240280e8567', '61517320', '2023-07-07', NULL, '8058aa88-0139-43a4-a7a0-7a8f4f881921', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dec79bb-530f-4725-b48e-06792695821d', '2023-07-07 18:32:45', '2023-07-07 18:32:45', NULL, '123asdfas21q3', 100.00),
('d9bcfe50-9780-4f52-91b7-e8678f2fbe57', '61233264', '2023-07-10', NULL, '753242bc-d4ce-4239-8829-b6550fb09b75', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-10 18:01:28', '2023-07-10 18:01:28', NULL, 'asdwqe12312', 100.00),
('daebe8dc-c671-4e35-82c9-1b9cab49eba1', '63092120', '2023-07-05', NULL, '6c4f0358-35c3-4562-b8aa-6cc0875a12aa', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 15:50:26', '2023-07-05 15:50:26', NULL, 'asdwqe12312', 100.00),
('dcdc20bf-d090-46be-a59e-4edb90fa6201', '73665040', '2023-07-06', NULL, 'df855961-eda1-467a-9a1e-27d67eb07287', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-06 19:02:33', '2023-07-06 19:10:46', '2023-07-06 19:10:46', '123asdfas21q3', 100.00),
('dd30cb96-181b-47c4-bffb-c39af45527ed', '61957899', '2023-07-14', NULL, '59637a97-4772-4583-bb7a-7f0ca9e1f7e7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-14 17:04:08', '2023-07-14 17:04:08', NULL, 'asdwqe12312', 100.00),
('dd7d7f4e-2509-4a13-bf0f-4f46edf9c4a7', '70388313', '2023-07-12', NULL, '1c69b64a-fc0a-4160-b346-f7e98bfb5af3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-12 19:07:30', '2023-07-12 19:07:30', NULL, '123asdfas21q3', 100.00),
('e0581127-8ea5-4c89-bc08-be82d0222dcd', '62518125', '2023-07-06', NULL, '120aeca1-ff2d-481a-bef8-7e54d7347190', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-06 17:40:22', '2023-07-06 17:40:22', NULL, '123asdfas21q3', 100.00),
('e10207a6-3ea7-4b0b-871a-f7e39a22ba2f', '72392484', '2023-07-10', NULL, '82bb750a-aacb-4081-ae90-b2043f4fa518', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-10 18:03:10', '2023-07-10 18:03:10', NULL, 'asdwqe12312', 100.00),
('e122c1fb-3786-4e49-9845-65102c868ae3', '75585939', '2023-06-30', NULL, '1e462fab-32ec-4a84-baa8-bccb355de144', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-30 19:19:42', '2023-06-30 19:19:42', NULL, '123asdfas21q3', 100.00),
('e1831548-d774-45cc-b71a-8f7f28c43d18', '63193549', '2023-07-13', NULL, '1fc12722-c977-4531-9e5a-c43887fd7d87', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-13 15:42:20', '2023-07-13 15:42:20', NULL, 'asdwqe12312', 100.00),
('e2010e8b-50cb-42d1-8ddb-e55aa099a5f2', '63014040', '2023-07-05', NULL, '6414824a-2ff9-4001-a0a4-f255afea330f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-05 11:44:46', '2023-07-05 11:44:46', NULL, 'asdwqe12312', 100.00),
('e23d5e56-7288-447b-9179-81265642136b', '78467481', '2023-07-05', NULL, 'ba0035dd-0754-4323-8724-271376ba7170', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 17:38:41', '2023-07-05 17:38:41', NULL, 'asdwqe12312', 100.00),
('e2aa076d-391d-4a0a-bf78-90ce8f856bc7', '90275268', '2023-07-06', NULL, '4f17ad21-47f9-4917-a0b2-6c903e345cf8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-06 17:14:26', '2023-07-06 17:14:26', NULL, 'asdwqe12312', 100.00),
('e2ad60bd-6123-4d25-8c34-e105a6b3f153', '62354683', '2023-07-05', NULL, '9426ce7d-5147-43e8-8000-1bf87492a88f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-05 18:25:21', '2023-07-05 18:25:21', NULL, 'gfgr4335ert54', 100.00),
('e32cb6cd-71b7-443b-ae25-b0e13430b04a', '78188264', '2023-07-06', NULL, '91c3175b-c026-4423-908c-ef09fbfc15b4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-06 18:38:48', '2023-07-06 18:38:48', NULL, 'asdwqe12312', 100.00),
('e387dea7-e8ee-4da1-9357-c9c2bfcd422d', '61233069', '2023-07-05', NULL, 'd5d67251-c149-4148-ba90-e5204e68b881', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 16:34:31', '2023-07-05 16:34:31', NULL, 'gfgr4335ert54', 100.00),
('e413a718-1d2b-44dc-a0d6-cd25cd4e0bd1', '61517261', '2023-07-10', NULL, '9e10ae52-a5de-4e7a-a389-d09b50490c89', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', '2023-07-10 17:47:23', '2023-07-10 17:47:23', NULL, '123asdfas21q3', 100.00),
('e41cc525-93c7-43ad-8691-83d3e4215e4b', '77179210', '2023-07-18', NULL, 'db156d3d-f525-4044-a87b-05039225ec31', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-18 09:05:39', '2023-07-18 09:05:39', NULL, 'gfgr4335ert54', 100.00),
('e5e029aa-7571-420f-8b7c-975e866f206e', '61080865', '2023-07-06', NULL, '263f43fd-767a-4ca8-b35b-aef8590c2ab3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7b319633-1514-4d46-a668-89fe82492dd8', '2023-07-06 18:56:11', '2023-07-06 18:56:11', NULL, '123asdfas21q3', 100.00),
('e60ca070-5f34-466b-a79a-0c28ee26ba45', '77477125', '2023-07-18', NULL, '466c95cd-9748-475e-ba07-4ebbfbf448f7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-18 10:06:24', '2023-07-18 10:06:24', NULL, '123asdfas21q3', 100.00),
('e617058e-be5c-4d03-88e1-8a4a76385713', '78693356', '2023-07-11', NULL, '77133e2e-633c-4bd0-9bc9-90a1faa981cf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-11 18:01:33', '2023-07-11 18:01:33', NULL, 'asdwqe12312', 100.00),
('e67de1d1-8f32-409d-ae16-eb3d963f1245', '79038729', '2023-07-03', NULL, '26123574-aa8b-4f12-a25a-87dc30c21c13', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-03 09:36:50', '2023-07-03 09:36:50', NULL, 'asdwqe12312', 100.00),
('e735c05d-731d-454e-a47a-f18ffc625598', '76596602', '2023-07-07', NULL, 'a2de6e46-752c-439e-b468-9216268416a5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-07 18:02:14', '2023-07-07 18:02:14', NULL, 'asdwqe12312', 100.00),
('e80f09ea-00c4-459d-97f0-f381f1810eba', '79776069', '2023-07-05', NULL, '99fed449-05eb-466b-96ad-6581e68315ca', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-05 10:26:22', '2023-07-05 10:26:22', NULL, 'asdwqe12312', 100.00),
('e928a6e4-bc6f-4ba1-8af6-69986fc9117e', '62896395', '2023-07-13', NULL, '560f5381-5e9b-4f55-81f3-3f732b2d715e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '2023-07-13 18:56:27', '2023-07-13 18:56:27', NULL, '123asdfas21q3', 100.00),
('e97d5fc8-aa48-434f-b426-118bd1297aef', '75230393', '2023-07-11', NULL, '498c8578-5525-4748-b0f2-d3ccf2c24155', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-11 18:51:23', '2023-07-11 18:51:23', NULL, '123asdfas21q3', 100.00),
('e9c4529c-c778-48a8-92a1-8124028961ea', '78465567', '2023-07-10', NULL, 'cb7c7c25-bf1d-441e-869c-06c5b97d561b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-10 17:05:03', '2023-07-10 17:05:03', NULL, 'asdwqe12312', 100.00),
('e9c87778-7fd8-43e5-9fcb-baed79ff0476', '60957541', '2023-07-05', NULL, '4c561f25-b9fd-4ab3-b471-0f2797c23d35', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-05 17:36:53', '2023-07-05 17:36:53', NULL, 'asdwqe12312', 100.00),
('e9e17642-bda4-4388-938b-c78476931939', '63091866', '2023-07-07', NULL, 'a6d32a49-aa49-48f9-a878-a56b04b08401', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:13:56', '2023-07-07 19:13:56', NULL, 'asdwqe12312', 100.00),
('ec198241-aa51-4b58-9d94-67ffa7ade451', '62552409', '2023-07-12', NULL, 'fb655f0d-259f-4905-b125-08709c6d4688', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-12 19:00:13', '2023-07-12 19:00:13', NULL, '123asdfas21q3', 100.00),
('eec23cc7-a514-46c4-960c-476d34612b0a', '63688550', '2023-07-12', NULL, '740f9cd9-be62-4076-ab85-1c9deeb606c5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-07-12 17:31:39', '2023-07-12 17:31:39', NULL, 'asdwqe12312', 100.00),
('f2edf8a1-a11f-4220-9d0c-230143fbfadc', '61409257', '2023-07-13', NULL, '35aeca80-c5c6-4483-991c-43a3ef89d5a0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '2023-07-13 08:44:12', '2023-07-13 08:44:12', NULL, 'gfgr4335ert54', 100.00),
('f3361e72-54de-4968-8dd7-a0a07fa01dab', '62015023', '2023-06-30', NULL, '27b43add-a9d5-41d5-b035-e728038cdef4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-30 19:34:13', '2023-06-30 19:34:13', NULL, '123asdfas21q3', 100.00),
('f446a3a2-2749-478f-bd22-dec694aba952', '63193578', '2023-07-04', NULL, 'b8e38c1a-7cdb-47ea-9bd8-e14170e13c44', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7d09a5e1-1405-4463-8431-600126d95d13', '2023-07-04 09:47:58', '2023-07-04 09:47:58', NULL, 'asdwqe12312', 100.00),
('f69c9744-f23d-42e9-9f67-d14c8f37c0e8', '61461990', '2023-07-18', NULL, '653bff03-7ea1-4dda-858f-9423953d9907', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89bd2006-884a-485c-b117-6932150e39a8', '2023-07-18 10:05:14', '2023-07-18 10:05:14', NULL, '123asdfas21q3', 100.00),
('f7882be8-8770-43c9-8047-aeef43ba946d', '62867005', '2023-07-05', NULL, 'ba2f7db6-8c32-4ecb-b5c2-e37a5c7756b5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 15:15:52', '2023-07-05 15:15:52', NULL, 'asdwqe12312', 100.00),
('f9467875-63b0-48a1-b115-ed900794a95a', '61155361', '2023-07-05', NULL, '899c6cc7-51bf-4449-a80c-34effd061ef0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '914dd2f3-78db-4124-90c4-90717911df50', '2023-07-05 10:05:25', '2023-07-05 10:05:25', NULL, 'gfgr4335ert54', 100.00),
('fa013e3d-0d94-43c5-a0a8-9770ded57c69', '63143501', '2023-07-06', NULL, 'ff20f2fd-afef-4056-8113-c0e4b9ec0b82', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-06 16:59:55', '2023-07-06 16:59:55', NULL, 'asdwqe12312', 100.00),
('fb3f1f75-dbeb-4858-a0d7-064aca867080', '61155466', '2023-07-11', NULL, 'c852ba20-5c6d-46ec-af1b-5ceca976f73c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-11 15:16:01', '2023-07-11 15:16:01', NULL, 'gfgr4335ert54', 100.00),
('fe93a00f-7133-4eee-92e6-076f2f56dab1', '77433725', '2023-07-12', NULL, '7b29112e-a754-45cd-98e1-ff8dad81551d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '2023-07-12 17:16:46', '2023-07-12 17:16:46', NULL, 'asdwqe12312', 100.00),
('fefa2767-e23e-414e-afd7-1e4ef643c2f9', '954794068', '2023-06-30', NULL, 'f546dbf0-b2f6-408d-aac4-9260260837cd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a1c712a-792e-4f54-b66a-d6517447fc95', '2023-06-30 19:30:39', '2023-06-30 19:30:39', NULL, '123asdfas21q3', 100.00),
('ffcffc4a-ef0e-4972-b904-0314819a8b1c', '77150592', '2023-07-10', NULL, '76dcb5bf-a860-4f02-a67d-d9624f762a77', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-10 09:03:02', '2023-07-10 09:03:02', NULL, 'gfgr4335ert54', 100.00),
('ffd85469-57bb-49bc-b202-97afff55b156', '81610722', '2023-07-05', NULL, '7413244c-3590-4cac-ad3c-3897918894ec', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-05 17:47:56', '2023-07-05 17:47:56', NULL, 'asdwqe12312', 100.00),
('ffede15d-0762-464d-a28c-dbdbf81a6426', '61957891', '2023-07-07', NULL, 'a04a1abb-980a-4fb2-ae5c-875fd11967b0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '2023-07-07 19:05:13', '2023-07-07 19:05:13', NULL, 'asdwqe12312', 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `matricula_unidad`
--

CREATE TABLE `matricula_unidad` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_matricula` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_unidad_aperturada` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `esta_inhabilitado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matricula_unidad`
--

INSERT INTO `matricula_unidad` (`id`, `id_matricula`, `id_unidad_aperturada`, `created_at`, `updated_at`, `deleted_at`, `esta_inhabilitado`) VALUES
('00ad3122-4e33-4690-9621-ac72d62cabd8', 'b9cbcb32-c44d-4da6-9a09-75a9853518f5', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', '2023-07-07 17:39:50', '2023-07-07 17:39:50', NULL, 0),
('01bf1bbc-76ee-43c7-8c85-7c182bb014ab', '806fb611-47ee-4d47-912a-dbcd6cbf0655', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '2023-07-07 17:37:08', '2023-07-07 17:37:08', NULL, 0),
('03fe4b02-6b21-42e0-bf80-c0d263d534b9', '211d0bad-a4ef-4a37-bffa-1288556abbb6', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-14 15:57:51', '2023-07-14 15:57:51', NULL, 0),
('05b075c8-80b1-4413-ab03-0ccb14e40cae', '848e5dc8-495c-4769-a684-04d2df9cbd1f', 'f969ec62-5767-4453-bef2-468a0888330f', '2023-07-10 18:16:11', '2023-07-10 18:16:11', NULL, 0),
('07ca198b-223a-4215-b5b2-93b552f798f2', '71af4a67-afe2-426b-a2b2-3fa119635e6c', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-14 17:06:39', '2023-07-14 17:06:39', NULL, 0),
('08a5c34d-fbc2-4d65-990a-869cdffd1c9a', 'c05938d7-c2f1-4e2d-ae30-9748ec03dfea', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', '2023-07-10 17:59:06', '2023-07-10 17:59:06', NULL, 0),
('091eb7a3-fba6-4dfa-8864-62292bbf82bf', '19e39a86-1341-4179-a215-a8c5c64167e4', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', '2023-07-11 17:57:08', '2023-07-11 17:57:08', NULL, 0),
('0a3a5814-41ca-4175-94f2-632f2d23dbc8', '5d56694d-1485-48b4-9b28-c08e3e4ebed7', 'fc9c8761-2723-456c-b8d7-7a4765e6f1fe', '2023-07-11 18:45:51', '2023-07-11 18:45:51', NULL, 0),
('0b5b9c5d-5de1-48ff-bca3-acc382a3f43a', '84f94309-3b31-413c-aea8-4eb7c5409023', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-10 18:10:20', '2023-07-10 18:10:20', NULL, 0),
('0ca68dbe-67cc-4fe8-acb9-b12ce5e00363', '20755b9b-db56-4e44-9b30-04e0eafc7d0b', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-10 11:31:47', '2023-07-10 11:31:47', NULL, 0),
('0d79a45f-1645-45ad-b8cc-64b58e741cde', '44ef2ee6-50ec-4f15-adaf-c3a0500522e8', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-03 11:28:11', '2023-07-03 11:28:11', NULL, 0),
('0da28f98-6dca-4d40-815a-70582dc2528a', 'ffcffc4a-ef0e-4972-b904-0314819a8b1c', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-10 09:03:06', '2023-07-10 09:03:06', NULL, 0),
('0e5c0053-ca4e-49e6-9749-a5e3d03090d1', '4f1c1b21-2c94-48fa-836e-88799c32a14f', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 18:54:10', '2023-07-07 18:54:10', NULL, 0),
('0e8e7ec7-4884-4815-97b8-f6a40ffd1c26', '35ebe6eb-fd87-4f93-823c-9188e1119357', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-07 18:06:37', '2023-07-07 18:06:37', NULL, 0),
('0eecb0ff-5aee-4239-9005-150062759164', '00585753-c91a-45a5-b2ee-49ec178d97a4', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-10 18:07:57', '2023-07-10 18:08:13', '2023-07-10 18:08:13', 0),
('0efbef30-922b-4248-88f4-aec3eb65dfd6', '0d070f0e-c386-442a-ba56-bca68316617d', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-13 17:46:31', '2023-07-13 17:46:31', NULL, 0),
('0fa5dabb-3281-4162-9d31-956fe61f2317', 'd46251e4-d024-4fd5-bc93-42d70e26ce13', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-10 16:11:04', '2023-07-10 16:11:04', NULL, 0),
('100c81c4-b721-4d3f-94b7-326a5b5815cb', '188a836a-b908-4e12-a1ff-b2d6549b9ebd', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-03 12:57:37', '2023-07-03 14:34:54', '2023-07-03 14:34:54', 0),
('115c0183-d70c-45da-b955-2b3bca8966de', '42159f9d-e5c8-4cc9-aebf-b0d28db87a8a', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-12 19:02:03', '2023-07-12 19:02:03', NULL, 0),
('119e004e-52d8-4c7b-8bb4-3ea96eadd0ca', '0202d357-59b2-46aa-9ee6-178434930571', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-10 16:55:09', '2023-07-10 16:55:09', NULL, 0),
('13addea9-6d54-4d0a-92ed-1dbd2235a075', '4c097cbc-1e26-4015-95f5-31b7ae3339cd', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '2023-07-05 10:08:45', '2023-07-05 10:08:45', NULL, 0),
('13bd5407-6fa2-409c-99fd-ac748a8bfba4', '00a62954-0ce5-4125-80c7-6417e953e69a', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', '2023-07-07 12:25:02', '2023-07-07 12:25:02', NULL, 0),
('13df01b5-7805-4662-bc5f-45df32a3091e', 'e9e17642-bda4-4388-938b-c78476931939', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:13:59', '2023-07-07 19:13:59', NULL, 0),
('154f0db3-c93d-4975-9ee5-824460628de7', 'f3361e72-54de-4968-8dd7-a0a07fa01dab', 'f31dfa11-4521-46dc-8224-8313acdc3712', '2023-07-05 18:00:07', '2023-07-05 18:00:07', NULL, 0),
('155c8765-0076-4172-96da-346eb4ecc959', '60c39cbd-55e8-4a6d-aa81-bd195b30be72', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', '2023-07-11 09:02:28', '2023-07-11 09:02:28', NULL, 0),
('177071bd-9953-4181-8654-ff4cd085d645', 'a1574d31-3f7a-499a-a7a7-bb84b4b359a5', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-11 17:53:00', '2023-07-11 17:53:00', NULL, 0),
('18f72734-b0ef-405d-83e1-7fd92b28bae4', '2d82fb8a-5129-482f-b413-aa8f912c9c43', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-07 19:41:19', '2023-07-07 19:41:19', NULL, 0),
('1a6ed462-1df3-4db3-99af-b7b1e31f1b2c', '06aa2ebe-a5a8-48e9-8d31-88b43e615016', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-18 09:41:28', '2023-07-18 09:41:28', NULL, 0),
('1aeca006-1575-4ad9-995f-b5e3e7e3f5a3', 'c0c753d1-8a9e-4a7d-b423-2c17125020f1', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-05 17:25:42', '2023-07-05 17:25:42', NULL, 0),
('1bc95a76-759f-467d-a0db-4987b8706566', '4c52158a-d323-4b43-b0aa-4987af0efcf0', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-06 11:24:50', '2023-07-06 11:24:50', NULL, 0),
('1cc7ee01-5602-479f-a121-bfa72780b9e9', 'a372c86b-b454-4ba1-9e36-e26f475ac135', '92ad9d74-996b-4d1a-baaf-5d7f3964471e', '2023-07-05 15:33:03', '2023-07-05 15:33:03', NULL, 0),
('1d4e70c0-60cb-4e9b-8057-bdded0df45a7', 'b9a22fe7-834e-4976-880d-d1c0829d8cba', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-11 10:26:38', '2023-07-11 10:26:38', NULL, 0),
('1dcae498-27bc-4b39-86d5-d6772b0907b1', '047746d2-7cdc-4173-ae65-d2146d3419f7', '03e074a7-da23-41bb-957e-4a233ec300c4', '2023-07-12 10:16:25', '2023-07-12 10:16:25', NULL, 0),
('1ee38088-6a49-4c3a-a9f7-e2725d0bddff', '5b50857c-f710-4766-94a1-86387c5282ca', '046547db-3eb5-4683-8385-8901a6c432cf', '2023-07-05 16:49:07', '2023-07-05 16:49:07', NULL, 0),
('1f17725b-a29b-48d3-9815-671debc65a32', '24b8fc4d-1c25-4858-a2fa-bf19a319b0d0', '60fce3cf-aec6-4c85-9780-c578815be93a', '2023-07-10 15:25:54', '2023-07-10 15:25:54', NULL, 0),
('1ff339c1-3d93-415d-b258-ab177530d006', '2082186b-fb65-48d9-8bae-78be2d50374d', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', '2023-07-05 18:34:32', '2023-07-05 18:34:32', NULL, 0),
('2032b1eb-453a-444c-a2a9-56fe8b324aea', '6328f8fc-197e-44ea-b256-2882f0dd5a3b', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '2023-07-17 16:39:54', '2023-07-17 16:39:54', NULL, 0),
('207ea602-9d19-475f-941c-56f8fc1ccdeb', '10c61821-e5c8-4387-9742-7c8fde44c6d0', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-05 17:58:01', '2023-07-05 17:58:01', NULL, 0),
('2269fe03-8caf-4f0d-bc9f-5d5a8d3b8b05', '1a03ebef-a0d0-4416-bd4f-da1f57adabf6', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-06 18:43:27', '2023-07-06 18:43:27', NULL, 0),
('2324978c-a737-4369-933f-8d1da3cc5dd4', '4310e05b-7367-4586-bacb-78bf25e669e0', 'cf40414f-040a-4177-a48d-dde4080f294d', '2023-07-13 15:12:44', '2023-07-13 15:12:44', NULL, 0),
('24bf39f3-e005-449f-80a5-3f2cc6c01698', '0ce6b41a-3073-48d5-b6fa-18e483a3ebd2', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', '2023-07-06 12:34:23', '2023-07-10 18:01:19', '2023-07-10 18:01:19', 0),
('265cd7a6-c6cb-40d8-930f-b2db2f254608', '0fff363b-4327-48ee-afe9-57d1f07390e8', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', '2023-07-11 15:17:59', '2023-07-11 15:17:59', NULL, 0),
('275cd384-3c65-4542-8021-70c441e129b9', '0a716207-48ef-4d0b-9aac-a50bf1f76f80', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-06 18:59:40', '2023-07-06 18:59:40', NULL, 0),
('27d04edd-1b99-4805-bc72-60fefecfdaa8', 'e60ca070-5f34-466b-a79a-0c28ee26ba45', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-18 10:06:34', '2023-07-18 10:06:34', NULL, 0),
('27db333e-3d81-4b27-8c95-b5e769ea589c', '23c5df40-375f-425f-a75a-57715fb0a91d', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '2023-07-07 18:36:45', '2023-07-07 18:36:45', NULL, 0),
('28217e21-ca79-40aa-8538-45cf24c490ff', '0d44a178-2cb3-4cb6-8557-9b216045be85', 'ac738cd8-c7a5-43ee-83bd-04bf3a4f3526', '2023-07-10 18:32:44', '2023-07-10 18:32:44', NULL, 0),
('28908d1c-f4b1-4452-ab69-00e00acb18a4', 'aa14761f-ad27-4cac-a0df-deae74f48541', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-04 17:38:57', '2023-07-04 17:38:57', NULL, 0),
('2966f4a7-ae63-489c-99a6-b234b06de4f3', 'e2ad60bd-6123-4d25-8c34-e105a6b3f153', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-05 18:25:25', '2023-07-05 18:25:25', NULL, 0),
('29b4a69d-cb93-40ea-9d85-8e879b66f1fa', 'd544be15-b75c-4fa0-bf72-17ce9e5e1f42', '92ad9d74-996b-4d1a-baaf-5d7f3964471e', '2023-07-11 15:37:13', '2023-07-11 15:37:13', NULL, 0),
('2a2da7f2-0d05-4dcd-b461-f8aa0168ad1d', 'd1e03dc6-bdf1-4dd9-970b-3a59f4e24bad', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-10 19:01:37', '2023-07-10 19:01:37', NULL, 0),
('2ac1a19c-3b5a-4210-a592-10351a526fdc', 'c150608b-ed58-47e8-a3f5-4030a8457477', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-10 18:46:42', '2023-07-10 18:46:42', NULL, 0),
('2ad0a9f2-8399-470b-af6e-46edd1e220ae', 'fefa2767-e23e-414e-afd7-1e4ef643c2f9', '7d545132-5ea7-48f1-8787-6730948133e2', '2023-07-10 18:26:29', '2023-07-10 18:26:29', NULL, 0),
('2bc099fc-3513-44d6-8d04-8a4143269610', '3d9cdf06-cbd6-427f-bb5b-d053e474f9b1', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-05 16:32:00', '2023-07-05 16:32:00', NULL, 0),
('2be6064f-42eb-4781-a122-6bb27e9b71c2', '23ed8e04-ee32-46ce-9f35-b2260c4494f5', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '2023-07-07 17:47:07', '2023-07-07 17:47:07', NULL, 0),
('2c8e076c-8afe-4b89-aa79-49f11056262c', '56c8a8ed-6969-4c7d-a2b8-2afa1894c8fe', '64a41cc5-8661-488c-8624-3fcf7d34ef8a', '2023-07-07 10:22:22', '2023-07-07 10:22:22', NULL, 0),
('2cadf51a-fbe2-4551-938d-b6b15455648e', '0e9d0552-97fd-4396-b87e-f1d65173c7a4', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-10 17:57:31', '2023-07-10 17:57:31', NULL, 0),
('2de1f310-487d-46e7-9461-b7f8acc3b9f2', 'a0773166-63db-41eb-8625-5eafa118dcee', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-05 11:12:59', '2023-07-05 11:12:59', NULL, 0),
('2e207f95-5cb1-4c42-b2c2-6ff3e122fe52', 'bbe5ead6-bca2-42d3-a70d-7842396338de', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-03 11:46:44', '2023-07-06 11:38:27', '2023-07-06 11:38:27', 0),
('2e65f50e-9ef3-47a0-b0c3-2daf6ccbd83d', '51edbbc3-4405-4a02-98c5-133bc05112f4', 'f969ec62-5767-4453-bef2-468a0888330f', '2023-07-05 10:35:04', '2023-07-05 10:35:04', NULL, 0),
('2e6c45fd-e752-45b9-9fc3-33107e01f955', '1da1bef7-941e-4a12-a5a2-460d7870c9e6', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-07 17:54:32', '2023-07-07 17:54:32', NULL, 0),
('2ebcc23d-2f30-4a36-bac8-80a6cf0f58f7', 'bc1c69ea-706c-4b77-b474-83d6b94936fb', '22970759-739f-4e75-8b6e-43fa3439dc8d', '2023-07-14 15:22:45', '2023-07-14 15:22:45', NULL, 0),
('2ec8a4ee-4772-43a1-8eb9-ce6f67fe2f37', 'd97cdcf7-a3c9-401a-a0c3-0c58901f0259', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-17 12:40:57', '2023-07-17 12:40:57', NULL, 0),
('30aaab59-6064-403c-9eca-71e8be5fce35', '232c9a69-7a68-4045-b5c7-3671b3271aa6', '22970759-739f-4e75-8b6e-43fa3439dc8d', '2023-07-07 18:11:41', '2023-07-07 18:11:41', NULL, 0),
('31077a54-f8ed-4af0-9f1e-9d364cf0602a', '91f8a4e9-bda0-4a66-995f-2d49b68e50a1', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '2023-07-13 09:11:07', '2023-07-13 09:11:07', NULL, 0),
('312ad487-cbe1-4d15-b3ef-9a3047afe507', '0a6df95f-f9af-4072-8c66-1ac6518c3cb4', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-07 18:48:14', '2023-07-07 18:48:14', NULL, 0),
('335eb8a8-278d-4fe0-8425-4114712f65f4', '892548a2-69fd-41b0-882f-4233345f4497', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-14 17:09:53', '2023-07-14 17:09:53', NULL, 0),
('337fca88-577c-4368-b3af-d83c26204342', '1fd028b9-17ad-45e3-947a-dddd6df2675c', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-11 18:09:51', '2023-07-11 18:09:51', NULL, 0),
('339aeaa9-d6ea-459e-a4a9-c497363a5895', '8bc23f64-5aed-4f2f-a3f7-53a300d42cb8', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-13 09:59:03', '2023-07-13 09:59:03', NULL, 0),
('34dcfcb5-2f03-43f7-bb26-cecfca1dc4f0', '6902123b-08a5-4c59-98fe-81e212912ebb', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-05 17:24:32', '2023-07-05 17:24:32', NULL, 0),
('35d768bf-5bd0-48b6-8751-f886dc751673', '2a33b880-73da-4706-8dca-8ee718adb841', 'fc9c8761-2723-456c-b8d7-7a4765e6f1fe', '2023-07-07 11:50:53', '2023-07-07 11:50:53', NULL, 0),
('36647c61-8f44-4287-934d-be41080f5d8e', '188a836a-b908-4e12-a1ff-b2d6549b9ebd', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-03 14:35:06', '2023-07-03 14:42:12', '2023-07-03 14:42:12', 0),
('37301ba2-a332-4b66-9022-ba454b3a1059', 'dd7d7f4e-2509-4a13-bf0f-4f46edf9c4a7', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-12 19:07:33', '2023-07-12 19:07:33', NULL, 0),
('3737c81e-1e8e-4f1e-9559-5d4d888247ca', '285ec74c-46a5-49a7-8450-7760046aa872', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-11 18:22:38', '2023-07-11 18:22:38', NULL, 0),
('382ebdd8-3089-42de-9c59-c18fafcc9998', 'dd30cb96-181b-47c4-bffb-c39af45527ed', '6887e89e-edad-4b68-9010-5adb29b4f22b', '2023-07-14 17:04:12', '2023-07-14 17:04:12', NULL, 0),
('38d3e925-41be-4fac-bd9f-86b267a60b5c', 'abf67b57-8ffc-4ca8-9c36-cdea0e8e2810', '64a41cc5-8661-488c-8624-3fcf7d34ef8a', '2023-07-17 10:05:14', '2023-07-17 10:05:14', NULL, 0),
('39ca326c-755d-4a16-b274-348a56b515df', '33e57413-9557-43d0-b35c-2cab5a8bc4eb', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-17 17:08:08', '2023-07-17 17:08:08', NULL, 0),
('3a63eea6-75a3-409e-aff8-0d03497190f1', 'd6673d4e-dbdc-4eff-8a89-9c1c8ac1b748', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-17 17:12:46', '2023-07-17 17:12:46', NULL, 0),
('3a9d9b3f-29c8-46b9-90e6-3aba78115c8e', '79bc80b2-9d15-48b9-984c-90b8ba70cf4f', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-06 15:45:16', '2023-07-06 15:45:16', NULL, 0),
('3bdb1c71-b182-455f-80a2-2397065e2be9', 'bf800a17-497c-4414-b1e2-a13a69d8bcf3', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-06 09:02:01', '2023-07-06 09:02:01', NULL, 0),
('3cee9c4d-7255-4f85-b44e-11e05d62533d', '936d4454-ddf9-4253-b879-fe2a89d7c0a7', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', '2023-07-05 16:59:19', '2023-07-05 16:59:19', NULL, 0),
('3d9cfa8f-5c83-4c70-8cf7-2b14223187b1', 'ac9fb664-cbed-471b-98a4-148edd2c53d3', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', '2023-07-13 16:42:27', '2023-07-13 16:42:27', NULL, 0),
('3df7945f-9baf-4bfc-bc72-f74b8a01dc3d', '7ad30967-b2e4-4189-b78f-0a16a768d74e', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-06-27 11:48:48', '2023-06-27 11:48:48', NULL, 0),
('3e256548-970e-49d7-b01b-8c3fbde3be55', 'e10207a6-3ea7-4b0b-871a-f7e39a22ba2f', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', '2023-07-10 18:03:13', '2023-07-10 18:03:13', NULL, 0),
('3eb499af-fca9-4a48-a311-88805b4848b2', '876de1c5-bd80-4981-a281-7b4f5d85297c', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', '2023-07-06 15:54:52', '2023-07-06 15:54:52', NULL, 0),
('3ef8e482-3353-4e59-aaa8-d82b51402f82', 'd9205efd-dcbb-40dc-9fad-8b841e28eefe', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-05 11:34:53', '2023-07-05 11:34:53', NULL, 0),
('3fb052a0-20fd-4150-b010-6a791e6c9fae', 'f3361e72-54de-4968-8dd7-a0a07fa01dab', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', '2023-07-05 18:17:42', '2023-07-05 18:17:48', '2023-07-05 18:17:48', 0),
('40be94e5-80e7-4988-913f-ab6a525ec696', '13cb379b-035d-44bd-8128-31a1670b3678', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:14:39', '2023-07-07 19:14:39', NULL, 0),
('42b36d68-869b-4cb3-9560-6d03cae68fda', 'd9ba7a07-512e-4624-8e6e-4240280e8567', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-07 18:32:48', '2023-07-07 18:32:48', NULL, 0),
('42b79786-de7c-4b5f-a796-b40690741db8', '33199f6f-7fea-49cc-b913-48641ddc7948', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-06-20 18:43:22', '2023-06-27 12:44:45', '2023-06-27 12:44:45', 0),
('42ee0f4f-726b-4eac-bd82-792711bf052f', 'b04738df-a8ea-449c-bcf4-711f84c10104', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-18 09:07:05', '2023-07-18 09:07:05', NULL, 0),
('4387e480-58a5-44d0-b07a-bd815aa46236', '4400b0d5-b46d-4ed4-84f4-62ac1154f0dc', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-10 18:57:58', '2023-07-10 18:57:58', NULL, 0),
('43be69ff-6c1c-4ffd-aa4e-37bf2b08c225', '9117deae-2d28-41e9-b759-44ee816702a1', '6887e89e-edad-4b68-9010-5adb29b4f22b', '2023-07-05 15:48:25', '2023-07-05 15:48:25', NULL, 0),
('43cb6ed1-0f85-40f1-b79c-27a62e4485d9', 'bf52a1ed-b1c1-4ae3-9e80-1d30ef2afd84', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-05 12:39:09', '2023-07-05 12:39:09', NULL, 0),
('43e8d91e-8e33-4d01-9d68-7440a4494729', 'd9bcfe50-9780-4f52-91b7-e8678f2fbe57', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', '2023-07-10 18:01:30', '2023-07-10 18:01:30', NULL, 0),
('4466ffd5-dfaf-468f-a3e1-3032f5afdbc5', 'f446a3a2-2749-478f-bd22-dec694aba952', 'cf40414f-040a-4177-a48d-dde4080f294d', '2023-07-04 09:48:07', '2023-07-04 09:48:07', NULL, 0),
('45343088-fbf4-42ee-b27e-60261d54e95e', 'e97d5fc8-aa48-434f-b426-118bd1297aef', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-11 18:51:30', '2023-07-11 18:51:30', NULL, 0),
('457bccd0-7ee1-42a6-9e06-444ad93325ff', '4a766971-b295-4968-871e-a6bf3973e7fc', '22970759-739f-4e75-8b6e-43fa3439dc8d', '2023-07-11 11:16:35', '2023-07-11 11:16:35', NULL, 0),
('45ff3087-04f6-4473-b292-272416c53ea8', '5536f0c8-d439-40ba-bd60-860b4036f415', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-06 16:41:47', '2023-07-06 16:41:47', NULL, 0),
('46216f05-cda0-4363-9952-69b465ff26a5', 'a71c54b1-8b75-48f2-a63c-2d7b105c2aaf', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-10 09:30:04', '2023-07-10 09:30:04', NULL, 0),
('46509418-0984-4373-b6e3-666ae26002e0', 'a51e73ca-0fed-4558-948b-2cc96d7eb148', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', '2023-07-05 15:43:59', '2023-07-05 15:43:59', NULL, 0),
('47651830-2feb-4a55-8de7-75fc40971962', '93e8c1d9-2e31-4645-9fed-ccaedba2b052', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', '2023-07-07 18:40:09', '2023-07-07 18:40:09', NULL, 0),
('4970ad63-f49b-4843-ae75-c38e23f85266', 'c7723f91-9099-4662-8091-1baff7a5efe0', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-05 11:30:20', '2023-07-05 11:30:20', NULL, 0),
('4a61f604-8160-42b6-9c2e-e9b9a6989698', '707c6230-da35-4e03-b9f6-518aa3b36fd6', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '2023-07-05 18:41:08', '2023-07-05 18:41:08', NULL, 0),
('4a6ee35e-f4b6-4d4f-93ea-5193acd444f3', '6229c190-6709-4f7c-b2e1-73ba913a72d8', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-06 12:14:30', '2023-07-06 12:14:30', NULL, 0),
('4d6f377c-f87b-4eec-9f49-d672871e88af', 'f2edf8a1-a11f-4220-9d0c-230143fbfadc', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '2023-07-13 08:44:17', '2023-07-13 08:44:17', NULL, 0),
('4fd89de2-25b3-46ec-acef-42cd004b3c0f', '589b22dd-0384-4dac-99cc-e3afb0d0e26f', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-06 17:43:22', '2023-07-06 17:43:22', NULL, 0),
('4ff8247f-4493-4b73-8848-dcb174004d79', '265f431f-1157-496d-a629-102e56fd3539', 'd009fb40-7f1e-443a-a364-573bb2823995', '2023-07-05 12:02:43', '2023-07-05 12:02:43', NULL, 0),
('500baabc-fcfb-44c2-88e9-238b3bd626be', '98a1a1a9-0ecd-4497-a5ac-b513c4ac4365', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-11 15:58:38', '2023-07-11 15:58:38', NULL, 0),
('50ed0ba5-cdd8-405f-999c-895d6f717e90', '0062bd89-9b22-4312-b4ad-6e51be2a8939', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-11 15:33:09', '2023-07-11 15:33:09', NULL, 0),
('50f0f235-c067-4c46-a283-c4f3301fd8e5', '3089bb32-6dcd-41e9-b586-fce35fd6c9ac', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-05 15:13:31', '2023-07-05 15:13:31', NULL, 0),
('5169f08e-1a23-4768-9f62-e137bd938c3c', '7f7dd0f7-9643-46fb-841b-8a16796a46bf', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-18 09:10:33', '2023-07-18 09:10:33', NULL, 0),
('51805f84-8b42-430f-b12e-0767a7f00fee', '05d02d5e-499c-4965-b463-4c03cc970887', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-10 17:18:18', '2023-07-10 17:18:18', NULL, 0),
('527be20c-c67c-4084-a603-39dfaf289a8a', '5c36aced-59fe-45da-9abd-5e7bbb4b7b9a', '22970759-739f-4e75-8b6e-43fa3439dc8d', '2023-07-07 18:09:24', '2023-07-07 18:09:24', NULL, 0),
('53651af3-9c3d-404f-a8c5-081dbf6cb986', 'e1831548-d774-45cc-b71a-8f7f28c43d18', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', '2023-07-13 15:42:24', '2023-07-13 15:42:24', NULL, 0),
('54b56208-a2d4-4c48-983d-f7303f8d475d', '5f0d9f04-febf-4ae6-bbcf-afeb69a64c31', 'd009fb40-7f1e-443a-a364-573bb2823995', '2023-07-18 09:12:47', '2023-07-18 09:12:47', NULL, 0),
('559baafd-4fc5-4985-8cc3-9c62a78a69ac', '5104f2be-99bb-4b70-9328-9470729c460a', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-11 15:03:10', '2023-07-11 15:03:10', NULL, 0),
('570e54d5-5eb1-4034-9a4c-da83612d11af', '3bb91320-faf9-4056-bdc1-b4bcda188b8c', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-17 17:05:20', '2023-07-17 17:05:20', NULL, 0),
('582764f7-13c3-4fc0-875b-558b27541cd7', 'e41cc525-93c7-43ad-8691-83d3e4215e4b', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-18 09:05:45', '2023-07-18 09:05:45', NULL, 0),
('585eb500-a731-449e-bd03-1d4b28e388e1', '21a31ec5-7507-4d8e-880a-7caeffa416da', '046547db-3eb5-4683-8385-8901a6c432cf', '2023-07-10 17:24:33', '2023-07-10 17:24:33', NULL, 0),
('58c55a37-3fbc-4ccc-8774-c1c6f9bfe968', '55ec03ee-a661-4365-9131-09c8a9409020', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '2023-07-05 10:49:01', '2023-07-05 10:49:01', NULL, 0),
('58fdbc0b-8416-42d6-9fbc-61cfc943acb6', '188a836a-b908-4e12-a1ff-b2d6549b9ebd', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', '2023-07-03 14:42:05', '2023-07-03 14:42:17', '2023-07-03 14:42:17', 0),
('597d199b-b04c-4737-95c8-04d3a553640c', '6b4b4974-01ab-4818-990d-c51f361b935a', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', '2023-07-13 10:23:37', '2023-07-13 10:23:37', NULL, 0),
('599f83f8-ad96-4fcb-8882-f051367f6dc5', 'b85ac4cf-ebcf-4350-86d8-806c5fd783a7', '64a41cc5-8661-488c-8624-3fcf7d34ef8a', '2023-07-06 10:06:11', '2023-07-06 10:06:11', NULL, 0),
('5b2be38d-37e1-4ae0-94c5-0e65f3dab41d', '551dc16c-37bf-40e3-83aa-72e926f1dc33', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-07-01 11:52:45', '2023-07-01 11:52:45', NULL, 0),
('5b7d953e-6666-4213-b2bc-0cc31ea41aca', '5e277299-3445-45e6-8578-8363a0856e55', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-05 17:55:02', '2023-07-05 17:55:02', NULL, 0),
('5bdbff87-1275-40d9-9086-8ea105bb1498', 'fb3f1f75-dbeb-4858-a0d7-064aca867080', 'f969ec62-5767-4453-bef2-468a0888330f', '2023-07-11 15:16:11', '2023-07-11 15:16:11', NULL, 0),
('5bf41298-9a5a-4f97-a19a-95ef1a79ec32', '948ddcc4-3424-4578-882b-a930f94c7f70', '71a61e66-c7b3-4a81-ae6d-6a8a6aea4795', '2023-06-27 16:01:47', '2023-06-27 19:00:36', '2023-06-27 19:00:36', 0),
('5d47aa1c-9f4b-477a-a87b-c03592f9deed', 'cdfe6207-6f49-43fe-ace9-1aae04fec56f', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '2023-07-11 15:25:39', '2023-07-11 15:25:39', NULL, 0),
('5f2ae850-25af-4dc8-a481-ff6ae7a32651', 'b36de1e0-faef-4cfa-a9c7-0d86c18518cb', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-17 10:14:19', '2023-07-17 10:14:19', NULL, 0),
('5fcd5241-33bf-4e4b-9ae7-2ef76d37ae1c', '3550112f-0a27-4ab4-8aef-fb79fbffedc1', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-18 09:56:36', '2023-07-18 09:56:36', NULL, 0),
('60008be2-f394-4603-b7fd-fc2d27b954d6', 'd2aebf06-aedd-4ce8-a2ea-70a4d8b7d313', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', '2023-07-10 18:04:51', '2023-07-10 18:04:51', NULL, 0),
('60dc0388-6d05-4ae1-bacd-196224a09ccb', 'e928a6e4-bc6f-4ba1-8af6-69986fc9117e', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '2023-07-13 18:56:30', '2023-07-13 18:56:30', NULL, 0),
('6122aeec-462f-42a6-9a52-9b0eb83fd721', '7083ecb0-9a66-4cf3-aa52-01ee25a316cb', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-11 17:54:14', '2023-07-11 17:54:14', NULL, 0),
('613af2e8-68ac-4dc9-bfab-83294e0757cb', 'f3361e72-54de-4968-8dd7-a0a07fa01dab', '7d545132-5ea7-48f1-8787-6730948133e2', '2023-07-05 18:00:04', '2023-07-05 18:00:04', NULL, 0),
('61b27ec8-e5c9-4871-b622-6ac821b7c9a3', '03c96520-689b-4810-aafb-b5769e07bd05', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '2023-07-12 17:24:25', '2023-07-12 17:24:25', NULL, 0),
('61c5e0f4-047a-48b2-8d8d-f19f8684b142', '5e3452d4-71fa-4505-b21c-bdeb064c954a', 'fc9c8761-2723-456c-b8d7-7a4765e6f1fe', '2023-07-11 09:42:41', '2023-07-11 09:42:41', NULL, 0),
('64e6ac88-9714-4ed7-8247-39672b04f427', 'cd82690c-3cab-4a7c-92a1-a5ea89edbcae', '6887e89e-edad-4b68-9010-5adb29b4f22b', '2023-07-14 19:07:43', '2023-07-14 19:07:50', '2023-07-14 19:07:50', 0),
('6570921e-8146-49c7-943e-a7ab0d628415', 'eec23cc7-a514-46c4-960c-476d34612b0a', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-12 17:35:07', '2023-07-12 17:35:07', NULL, 0),
('666e1124-b2b9-4de5-9b0c-5abc3ba08e1c', 'd321cfbe-bcdf-4572-a950-296ceda87f4c', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '2023-07-11 15:24:27', '2023-07-11 15:24:27', NULL, 0),
('66efee47-019e-48d9-b4d5-9a8c51f5bf82', '75fc625a-cc3e-4a42-8569-1fac95fdc1e9', '71a61e66-c7b3-4a81-ae6d-6a8a6aea4795', '2023-06-27 15:58:04', '2023-06-27 16:01:12', '2023-06-27 16:01:12', 0),
('6775f3e5-c426-4296-8eea-8edf967ba65a', 'a73e34fd-8c65-4157-9714-d14ff79f89a4', 'fcfda4ef-114a-46d1-afe4-b2c76b93edb3', '2023-07-07 11:29:54', '2023-07-07 11:29:54', NULL, 0),
('682f8920-0237-4351-858e-545d52120fdf', '91505cb5-f19e-4068-992d-43c18cc7eeb5', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-10 17:41:58', '2023-07-10 17:41:58', NULL, 0),
('6aa9d06b-8e4a-41ad-b688-757643c91f99', '5b283f2e-7783-4a31-996e-dbc692c05e08', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:13:09', '2023-07-07 19:13:09', NULL, 0),
('6b49a443-0760-4557-8c68-b3f1587a8c9e', 'a8173077-04fc-44dc-a99e-908074a810d6', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-10 18:39:33', '2023-07-10 18:39:33', NULL, 0),
('6bb66592-56d9-4b11-a73a-1ec672fff091', '3ef9e5ae-884a-4cae-947d-7c868f3fecc9', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-11 10:59:02', '2023-07-11 10:59:02', NULL, 0),
('6d41d2e6-e8ca-4f87-9d0f-14a6f570981d', 'aeb1fe31-0c3e-43c9-9ffa-354d51c6eaf6', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-10 08:44:51', '2023-07-10 08:44:51', NULL, 0),
('6d6ff5e6-6e3d-4b83-9653-a3c8da4a486b', 'b9195509-dfa2-4d65-a447-526b78f754fb', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-07-03 11:01:52', '2023-07-03 11:01:52', NULL, 0),
('6d829e17-7337-4faa-a2a9-f19b031791a6', '951ebc3b-1bf2-4609-805f-157ba66748da', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-07 17:10:00', '2023-07-07 17:10:00', NULL, 0),
('6f5043a0-349d-490b-a269-477c88452354', 'e23d5e56-7288-447b-9179-81265642136b', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-05 17:39:24', '2023-07-05 17:39:24', NULL, 0),
('6ff91882-32c0-4148-8a7d-dea44aad427c', '0c35db4a-4138-48e3-b236-fc647f8d56c4', '92ad9d74-996b-4d1a-baaf-5d7f3964471e', '2023-07-07 11:32:05', '2023-07-07 11:32:05', NULL, 0),
('711b889c-8849-49d3-8076-af8529ce2824', '792e1558-167d-446b-8265-02c0644c9288', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-05 17:50:27', '2023-07-05 17:50:27', NULL, 0),
('7208726d-feb8-4099-aca0-6e40495159b9', '9025b70e-c709-4501-ac3d-0f43cfe6155b', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-07 10:16:28', '2023-07-07 10:16:28', NULL, 0),
('720e193c-fda4-41fa-9c39-d1fa6ebea16e', 'f7882be8-8770-43c9-8047-aeef43ba946d', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-05 15:16:04', '2023-07-05 15:16:04', NULL, 0),
('72781f55-f2e8-47ce-bffc-efae7311a7af', '7c0df8b6-caf6-4be6-852f-e5071eda724c', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-13 10:27:08', '2023-07-13 10:27:08', NULL, 0),
('737bce8a-07e4-4886-9b42-ca8c90a6f140', '75dabb13-3bff-43d1-80d3-14a308876ece', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '2023-07-06 19:10:58', '2023-07-06 19:10:58', NULL, 0),
('738ca062-f860-406e-836a-a579dfc5352d', '886ffb4f-9d83-40e6-b86e-09dc37657532', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-07 12:23:44', '2023-07-07 12:23:44', NULL, 0),
('75802a40-04be-4fe3-b581-dc6ae1bd7dd1', 'a158098a-9a98-48d8-b774-44d8be635bfc', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '2023-07-10 17:55:33', '2023-07-10 17:55:33', NULL, 0),
('75cf55b5-baaa-4a3c-95f7-935f40def5ae', '0ab0af7e-2f7b-41b0-9803-1eff00548548', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', '2023-07-10 18:08:36', '2023-07-10 18:08:36', NULL, 0),
('76f35a65-4ca4-4670-8c43-cb25b7ce533e', 'eec23cc7-a514-46c4-960c-476d34612b0a', '6887e89e-edad-4b68-9010-5adb29b4f22b', '2023-07-12 17:31:51', '2023-07-12 17:31:51', NULL, 0),
('780a7842-8d81-4470-abcb-8d1663f7d0f5', 'cf0d6657-36b3-44b8-ad4d-e35ebd5f0383', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-04 12:04:26', '2023-07-04 12:04:26', NULL, 0),
('782f6bc7-56af-43cf-b3f5-429a45564876', 'e617058e-be5c-4d03-88e1-8a4a76385713', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', '2023-07-11 18:01:35', '2023-07-11 18:01:35', NULL, 0),
('78cddffb-fdb1-4cd7-8493-0983255bda3d', '92ef01dd-ba0f-4828-bf6a-3d653e2257ed', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-10 19:10:04', '2023-07-10 19:10:04', NULL, 0),
('79235a61-7b95-4c63-bc16-da3aa2e6e2ce', '8eb3df9f-4b21-48c0-abf5-b6a7564d35bc', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-05 16:56:44', '2023-07-05 16:56:44', NULL, 0),
('7b3ca284-7b4a-4e74-9bb0-f895ff480751', 'e122c1fb-3786-4e49-9845-65102c868ae3', '7d545132-5ea7-48f1-8787-6730948133e2', '2023-07-10 18:29:03', '2023-07-10 18:29:03', NULL, 0),
('7cefcdc2-3403-43be-acee-36e19fb714ff', 'c6b060f7-7066-421c-989e-bb233208b480', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-06 12:29:28', '2023-07-06 12:29:28', NULL, 0),
('7d13f58d-930a-41c4-8fbc-477211350cfb', '758557c8-1b82-45fb-9a10-88c3162af7ef', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-05 09:32:51', '2023-07-05 09:32:51', NULL, 0),
('7d91df39-0985-4c01-8a1d-f58aca881b9f', 'f69c9744-f23d-42e9-9f67-d14c8f37c0e8', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-18 10:05:20', '2023-07-18 10:05:20', NULL, 0),
('7dd66b4b-f74f-4fb6-af59-fbdffabc9c55', '31fb8a2b-16b9-46a3-b6ef-59d4a44a019f', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:11:16', '2023-07-07 19:11:16', NULL, 0),
('7e2a9e75-9f0c-4ca1-b20a-39cfac51ad33', 'b3743e94-c3b4-4b74-8817-00d08706b2df', 'ac738cd8-c7a5-43ee-83bd-04bf3a4f3526', '2023-07-05 12:40:52', '2023-07-05 12:40:52', NULL, 0),
('7e86df42-3646-48bc-848a-2cb73c2f1b21', '39e95704-69d2-4d95-8d83-f64c3611d22a', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-10 18:21:28', '2023-07-10 18:21:28', NULL, 0),
('7eaa1565-14a3-492b-bcce-da58cefcd6e8', '0a7f107e-e1e9-47de-aa66-36504945b51f', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-10 19:18:37', '2023-07-10 19:18:37', NULL, 0),
('7fb9c214-0fc6-4609-8a0e-4f61dda1360e', '0276fc09-bc89-41d1-aea1-4d99cffe4a35', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-05 15:57:24', '2023-07-05 15:57:24', NULL, 0),
('810cfe61-bd6f-4a27-ba08-79357d6d37ac', '58ff7745-9ef1-45f5-9b5b-b8aecd9dd820', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-10 17:07:47', '2023-07-10 17:07:47', NULL, 0),
('8118e7d1-4229-469b-8144-6659e5b1f7d8', '668fabb4-ecd0-4cb5-8736-7ca1004bf74e', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-06-22 10:39:07', '2023-06-23 22:47:01', '2023-06-23 22:47:01', 0),
('81cdf7b8-c37e-4160-9a25-10a2f678062f', '963aa8f7-03a3-4ec6-9527-e3b38372d28a', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-12 19:10:30', '2023-07-12 19:10:30', NULL, 0),
('81e828d3-f8f3-4e7b-a6e6-172c72ceae28', '011f746c-019f-4e54-8496-3a8c075b0529', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '2023-07-11 15:21:08', '2023-07-11 15:21:08', NULL, 0),
('8296a419-8349-4595-9a72-3c66de316c55', 'daebe8dc-c671-4e35-82c9-1b9cab49eba1', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-05 15:50:37', '2023-07-05 15:50:37', NULL, 0),
('82ca469b-4132-4cdb-9721-0551cacba2b0', 'e9c87778-7fd8-43e5-9fcb-baed79ff0476', 'f31dfa11-4521-46dc-8224-8313acdc3712', '2023-07-05 17:36:59', '2023-07-05 17:36:59', NULL, 0),
('8504b5c3-3ca5-4ecb-b212-e8a216516b4c', '7462fce2-b59d-48ec-bfae-268fac552955', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-12 09:43:15', '2023-07-12 09:43:15', NULL, 0),
('8633c46c-83ac-4c15-9de7-3602a81d059b', '5cf47a39-c4d4-48f2-869a-7b1662fe16e3', 'd009fb40-7f1e-443a-a364-573bb2823995', '2023-07-18 09:16:56', '2023-07-18 09:16:56', NULL, 0),
('8642c4a9-03c5-4347-a9a1-ffabfbf89d85', 'c6706ac6-0d1c-4e28-bf37-cb461aa6cf48', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', '2023-07-11 09:04:25', '2023-07-11 09:04:25', NULL, 0),
('8699b7bc-0d90-448f-9f6a-6d6fa2ee1af1', 'a8aa6245-6b54-401d-b949-808cfed3379b', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-10 19:17:17', '2023-07-10 19:17:17', NULL, 0),
('882e64e7-a574-46b8-a39b-8e150dbb8ac7', 'b946070a-684a-4a65-8400-894e748f6bca', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '2023-07-07 10:35:54', '2023-07-07 10:35:54', NULL, 0),
('88523178-58d5-4543-b2e2-ff7b957a9207', '3946368e-f7f6-4474-9650-b879eef11b3d', 'fc9c8761-2723-456c-b8d7-7a4765e6f1fe', '2023-07-13 11:11:53', '2023-07-13 11:11:53', NULL, 0),
('88a1c4be-bced-49d7-8e4e-5bcef58e95e3', '63a38c3e-283d-4254-b431-9ab3a6579f1b', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-07 10:43:06', '2023-07-07 10:43:06', NULL, 0),
('89168fca-9d7c-4731-9644-59520933aff5', '67b6569f-1590-485d-a75b-4d6bf604ce5b', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-07 12:21:38', '2023-07-07 12:21:46', '2023-07-07 12:21:46', 0),
('893a5a5e-1f6b-42db-8d04-0e0b0182d120', '66a685ac-8d6b-4d7d-8559-7f5da53b24e5', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-05 18:39:16', '2023-07-05 18:39:16', NULL, 0),
('89548419-4e05-4423-a8b6-ee628f2f2965', 'a0f2bb98-09f0-4a08-8ba1-746d4d0025aa', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-06 19:05:44', '2023-07-06 19:05:44', NULL, 0),
('89d330aa-fce9-4aea-bf25-99b836740c62', '2b70e039-6778-4583-b975-94a989919b65', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-11 18:58:31', '2023-07-11 18:58:31', NULL, 0),
('89ec045a-4d01-40b5-bedb-8f2882212b0e', '3d162f94-cc66-443d-a882-3d047bd63886', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-17 09:26:35', '2023-07-17 09:26:35', NULL, 0),
('8ab77ce4-4816-487b-86e7-e5f67aec9acc', 'ba823047-cd22-4998-9cf3-7e4ba4f96fab', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-10 15:43:41', '2023-07-10 15:43:41', NULL, 0),
('8b4df90f-3525-42ea-94bf-3bcd7f6ccff8', '46a7bc09-d005-4680-8e4a-aac5e13c0f93', 'cf40414f-040a-4177-a48d-dde4080f294d', '2023-07-12 09:26:52', '2023-07-12 09:26:52', NULL, 0),
('8b5bc4ee-65c7-472c-867f-38f5a0108c99', 'c5890bbf-dea9-47d3-8b22-22e83b597e03', '03e074a7-da23-41bb-957e-4a233ec300c4', '2023-07-10 15:35:04', '2023-07-10 15:35:04', NULL, 0),
('8c0905e9-f08f-4289-9faf-b64e1232e0c9', '057c5766-91c4-4104-b150-b7ac3d6b6a8e', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-07-03 09:22:16', '2023-07-03 09:22:16', NULL, 0),
('8c9a957b-4d3d-4cba-b756-7cce8fd190af', '6e8fcf7f-f3b0-45bf-b70f-96e57bf925b6', 'd009fb40-7f1e-443a-a364-573bb2823995', '2023-07-10 16:57:43', '2023-07-10 16:57:43', NULL, 0),
('8d5f6ea3-4c85-4568-8143-786fc7aae243', 'ec198241-aa51-4b58-9d94-67ffa7ade451', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', '2023-07-12 19:00:17', '2023-07-12 19:00:17', NULL, 0),
('8e34e767-2da7-45df-b558-ad7ccc168517', '23aefc66-dfd0-4997-9fd5-79909fef9a37', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', '2023-07-05 18:36:24', '2023-07-05 18:36:24', NULL, 0),
('90144ff3-3392-4c18-9c59-85c76c6adab1', '58d1f5e0-0046-4207-8cf8-ab306a52b45a', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-17 11:41:13', '2023-07-17 11:41:13', NULL, 0),
('920c43c8-d18a-426a-9b0c-680be3fd910c', '1e94c5bc-0757-4fd5-bdcd-1f1be319e9b8', '22970759-739f-4e75-8b6e-43fa3439dc8d', '2023-07-07 10:46:01', '2023-07-07 10:46:01', NULL, 0),
('920e29b5-7eb8-423e-a6cb-1fd6a2cdf019', 'e387dea7-e8ee-4da1-9357-c9c2bfcd422d', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-05 16:34:39', '2023-07-05 16:34:39', NULL, 0),
('921b18c0-13c7-48fe-89d6-cbeb93a61d79', '015268a3-3784-42c0-8d4e-53d23aa93004', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-11 10:28:42', '2023-07-11 10:28:42', NULL, 0),
('9404b353-c48e-4e13-8fa0-cec2d00d9c53', '70e4d440-43e6-4564-b912-500461fc8276', 'f969ec62-5767-4453-bef2-468a0888330f', '2023-07-06 18:13:43', '2023-07-06 18:13:43', NULL, 0),
('9470a062-cc07-4fab-84f6-a8893fb603c6', 'a5e754d3-574b-4310-bb81-01a8915fd893', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-12 18:58:33', '2023-07-12 18:58:33', NULL, 0),
('951ee192-f488-4236-90ce-74899e2408d1', 'ffede15d-0762-464d-a28c-dbdbf81a6426', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:05:16', '2023-07-07 19:05:16', NULL, 0),
('953c352b-bede-47f6-9915-1d7415a61e10', '63593abd-38c5-45b1-baa8-5eee1a6b965a', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:01:34', '2023-07-07 19:04:15', '2023-07-07 19:04:15', 0),
('957a18ab-3b01-4710-acda-9c37f7e861ef', '0bbcbec8-34cc-4dd4-8961-132e65ac6e0a', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-07 19:06:09', '2023-07-07 19:06:09', NULL, 0),
('95901942-9009-44ec-844b-0c23252a06fc', '19c440f1-d8e9-44b2-a4ad-09ebf577bcad', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-18 09:08:05', '2023-07-18 09:08:05', NULL, 0),
('95dbb199-a69d-4323-a28b-fcaeb41e2636', '4929b6fc-f70c-421a-bb74-746ea073c57e', '60fce3cf-aec6-4c85-9780-c578815be93a', '2023-07-10 19:00:07', '2023-07-10 19:00:07', NULL, 0),
('969ae3ee-f18f-4f1a-9407-a108eebdfbe3', '0b1fd9d2-5cde-417a-bb29-c645f7a2192d', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-06 19:09:19', '2023-07-06 19:09:19', NULL, 0),
('96a254c1-4dfd-4eea-b731-80c1b2c28eb7', '9437f49c-93d0-4c24-b8dc-ac2f9b60a6ea', '046547db-3eb5-4683-8385-8901a6c432cf', '2023-07-05 16:45:48', '2023-07-05 16:45:48', NULL, 0),
('96c31430-8ce5-4c86-aaea-d8d36969db1f', '5a043c8e-09fe-49a1-93fb-c6274e387b42', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-18 09:11:34', '2023-07-18 09:11:34', NULL, 0),
('97828b15-0766-4e4a-b021-7f9d5439651b', '025f8a77-7eca-4903-905a-f976f7faf1cc', '60fce3cf-aec6-4c85-9780-c578815be93a', '2023-07-11 15:47:33', '2023-07-11 15:47:33', NULL, 0),
('9788a416-379c-4f88-8072-23095c70ae82', 'd8ee5606-c53a-466e-be7b-02aa541bea82', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-06 18:51:14', '2023-07-06 18:51:14', NULL, 0),
('97d56a6a-f1f8-42d2-8586-ff027fa3d104', '14e797be-8bdf-4fac-a132-427fef2e5d3a', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-10 15:27:30', '2023-07-10 15:27:30', NULL, 0),
('97e3616c-ff9b-42c3-aa13-b91e586e511f', 'bf73e9de-9958-4858-96ce-3769289320b2', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-06 19:07:08', '2023-07-06 19:07:08', NULL, 0),
('98703674-3c2f-43cf-8731-b13668992db6', 'c45facbe-808d-45fd-965d-1e005c83b43c', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-10 17:02:06', '2023-07-10 17:02:06', NULL, 0),
('987f6a71-47df-4d7f-afb7-86a39e81a61c', '697319b1-0545-4f52-936a-c4abc898dc75', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '2023-07-11 10:52:22', '2023-07-11 10:52:22', NULL, 0),
('98deac85-fa85-41d5-9194-e73f10109378', 'a0e98d73-1c66-4045-b5bc-901eac9ca542', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-05 15:54:44', '2023-07-05 15:54:44', NULL, 0),
('995c6174-5ab9-474b-afbd-77e7472e93d5', '24861e62-1398-456a-817e-cb51ccd401b3', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-10 11:12:09', '2023-07-10 11:12:09', NULL, 0),
('99909317-0a3e-406a-940d-6c61dc1573d8', 'f9467875-63b0-48a1-b115-ed900794a95a', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-05 10:05:29', '2023-07-05 10:05:29', NULL, 0),
('9af2711f-1fd8-4d58-aa49-c4a8c4c9322f', 'ffd85469-57bb-49bc-b202-97afff55b156', '046547db-3eb5-4683-8385-8901a6c432cf', '2023-07-05 17:48:10', '2023-07-05 17:48:10', NULL, 0),
('9bc3bd04-01e1-4076-a09a-c7ff69a46843', '8710964a-63a8-4ef9-a667-237eda2b834c', 'f969ec62-5767-4453-bef2-468a0888330f', '2023-07-12 10:03:39', '2023-07-12 10:03:39', NULL, 0),
('9d38ef31-5050-4f75-b057-999da6c71ef6', '3156cd87-b721-47da-959f-fdd27a9b0e17', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '2023-07-06 11:06:28', '2023-07-06 11:06:28', NULL, 0),
('9d5d7efd-5f9b-4a00-90c4-4a09156c7222', '65a4dff2-c5ed-4e62-988b-e093f8308db7', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-10 17:03:41', '2023-07-10 17:03:41', NULL, 0),
('9d71b8d8-d138-4e3b-a080-d66f674a013f', '63c7f76f-28a4-4d53-a28c-ff8a12680d8b', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-18 09:04:42', '2023-07-18 09:04:42', NULL, 0),
('9e5f128f-1169-410c-8c11-b365548caec6', '90b52712-cd64-43ea-96f0-3c06a2a4fd96', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-17 16:42:50', '2023-07-17 16:42:50', NULL, 0),
('9fda3a72-ac15-4f56-9993-d82056e2326c', '188a836a-b908-4e12-a1ff-b2d6549b9ebd', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-03 14:42:14', '2023-07-03 14:42:14', NULL, 0),
('9febf06c-23cf-4ca4-8d29-e579ba8791b0', '1e319b82-ad14-4edf-91c6-aa043a0ef148', 'bc0bcfaa-0f08-4dcd-a964-fef70b349209', '2023-07-07 18:30:27', '2023-07-07 18:30:27', NULL, 0),
('a0baa0e2-0890-40da-a6b5-08b2a065cb7b', '73d47379-7724-4e1a-a8bc-29608f40d030', '0515686f-006d-4f40-a7b7-dd5b83c4e655', '2023-06-19 20:28:34', '2023-06-19 20:33:02', '2023-06-19 20:33:02', 0),
('a0e1d90d-10e1-4ae3-83db-a9a02949c3e1', 'a5adeabc-1585-4bca-904d-dd797779dd6d', 'f31dfa11-4521-46dc-8224-8313acdc3712', '2023-07-10 18:36:09', '2023-07-10 18:36:09', NULL, 0),
('a1462092-b5ab-4cc3-97ad-492938c3a71a', 'c619e31b-e17c-40d2-b9fa-ea2b048142ae', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '2023-07-06 18:58:10', '2023-07-06 18:58:10', NULL, 0),
('a1fbb746-0c4b-479d-842b-dff32ab49a05', 'a3a6dfbe-bbd7-4277-b6b6-bb124df1f41e', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '2023-07-10 17:48:54', '2023-07-10 17:48:54', NULL, 0),
('a2a98e04-53a4-41d8-85c2-ddd7ee4049b5', '96345c83-97e3-4720-9edc-8885756352ab', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-07 10:12:55', '2023-07-07 10:12:55', NULL, 0),
('a3528593-d2e4-45db-8f3d-57ac1f42773e', 'e2aa076d-391d-4a0a-bf78-90ce8f856bc7', '60fce3cf-aec6-4c85-9780-c578815be93a', '2023-07-06 17:14:30', '2023-07-06 17:14:30', NULL, 0),
('a4673055-1b11-4d29-87a1-14f264001229', 'cba9f329-a98c-4c7a-8053-36ce10c9e2b2', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-10 18:17:53', '2023-07-10 18:17:53', NULL, 0),
('a5e8fae4-ecf8-447e-997b-1d812652b1fa', '27c29d3e-f5f7-47b8-9bea-45130cc4cfae', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-14 18:59:31', '2023-07-14 18:59:31', NULL, 0),
('a712c045-f5b9-4cbc-8666-13d316043662', 'b8c39d7e-cb82-469e-ab4e-81b0cd2b803e', '03e074a7-da23-41bb-957e-4a233ec300c4', '2023-07-03 18:20:24', '2023-07-03 18:20:24', NULL, 0),
('a76d0aa8-8ace-49da-ba12-1e96f9a70dcb', 'af7e5a07-cab3-4138-ab6c-2efeb27954df', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '2023-07-05 18:52:37', '2023-07-05 18:52:37', NULL, 0),
('a7fca762-c010-4aa4-b249-9ab3b385fb4a', '06a9783d-5016-4868-99fe-898c8f53cef5', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '2023-07-06 17:17:21', '2023-07-06 17:17:21', NULL, 0),
('a8cf1a47-67b5-4820-aef3-11fe5ed8986c', 'e9c4529c-c778-48a8-92a1-8124028961ea', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-10 17:05:08', '2023-07-10 17:05:08', NULL, 0),
('a8dc788a-8cda-4512-b236-83db1baa49fd', 'b5ec2bff-2516-4b16-820b-2b89ca500994', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-07-14 15:32:36', '2023-07-14 15:32:36', NULL, 0),
('ac6bf7c3-cc25-489f-81b5-1cbef4ad8428', '74e36b9a-243c-4372-9f7e-7cba6da8dd24', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-17 10:07:02', '2023-07-17 10:07:02', NULL, 0),
('ad24dc91-06d9-4bff-8b6f-5cce3b161ce6', 'ca83ecf3-2b35-47ef-a81f-36ef55bfacb2', '6887e89e-edad-4b68-9010-5adb29b4f22b', '2023-07-05 15:34:40', '2023-07-05 15:34:40', NULL, 0),
('ad92ff74-6277-4486-95e3-4dca48cedebd', '93966b46-92ab-418e-aca7-c3001a3709d7', '6887e89e-edad-4b68-9010-5adb29b4f22b', '2023-07-05 19:28:14', '2023-07-05 19:28:14', NULL, 0),
('ae55c427-712e-4c8b-a0fb-2253dd7e2c9a', '24ce41ec-f88f-4df7-9bf9-f1d603d288e8', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-13 08:46:34', '2023-07-13 08:46:34', NULL, 0),
('ae564342-b120-4110-90f4-d426be868fa0', '33199f6f-7fea-49cc-b913-48641ddc7948', '0515686f-006d-4f40-a7b7-dd5b83c4e655', '2023-06-20 06:51:59', '2023-06-20 06:51:59', NULL, 0),
('b2b78a8d-9fd3-4bc7-b555-f88249f8399e', 'c12fd2ea-305e-4539-8afc-b49bfe5d3ad3', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-10 17:50:50', '2023-07-10 17:50:50', NULL, 0),
('b4453373-0075-467c-8ac6-17043555c397', 'bfca225f-8126-4158-baeb-f407683985dc', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', '2023-07-11 17:55:54', '2023-07-11 17:55:54', NULL, 0),
('b4ff693d-c2ea-40e8-9413-066cbac85002', '1a98be07-6ceb-46c3-9655-a0fdf566f253', '60fce3cf-aec6-4c85-9780-c578815be93a', '2023-07-11 15:35:32', '2023-07-11 15:35:32', NULL, 0),
('b568c509-c58b-4940-a603-c1c470e20141', 'adc54e8f-e64d-4305-8cb7-9896a79c35c6', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-07-06 09:14:13', '2023-07-06 09:14:13', NULL, 0),
('b6a64530-4756-44a3-b9f1-f9e8823985d8', 'd216a013-f88b-49e4-8aab-62a67f010327', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-07 18:41:51', '2023-07-07 18:41:51', NULL, 0),
('b762b4cd-9f79-40e6-a9ce-66bcc18ba3c8', '5c6cbf78-58fd-4b59-a4e1-466a8634cd5c', '22970759-739f-4e75-8b6e-43fa3439dc8d', '2023-07-06 09:49:00', '2023-07-06 09:49:00', NULL, 0),
('b7de8422-34f7-461b-8947-ca79896ed486', 'e735c05d-731d-454e-a47a-f18ffc625598', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-07 18:02:17', '2023-07-07 18:02:17', NULL, 0),
('b8f43a84-4e38-4eac-b372-0ba1eaefa569', '3092f20e-6ed6-4f3c-90bf-2116370b1609', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-05 17:51:44', '2023-07-05 17:51:44', NULL, 0),
('ba1cd288-7b3e-4a48-b00e-355d72e229cf', '3561a3d8-aaa1-42f9-883d-9e4962242591', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '2023-07-17 12:03:51', '2023-07-17 12:03:51', NULL, 0),
('ba9ec9c8-26c3-4ef6-88b9-4a6a1ed1e22d', '86f47fa9-0002-4217-872a-22e6824ec695', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-11 11:14:05', '2023-07-11 11:14:05', NULL, 0),
('bde6172a-548f-4f22-bfaa-00437863e3c8', '188a836a-b908-4e12-a1ff-b2d6549b9ebd', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-06-28 10:58:19', '2023-07-03 12:57:33', '2023-07-03 12:57:33', 0),
('bdfffded-a913-40e1-9f53-1b0cd2847a2b', 'a82fa4c9-8bc0-4887-9053-22ca727476d6', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', '2023-07-07 17:32:31', '2023-07-07 17:32:31', NULL, 0),
('bf118fce-ebbc-4e8b-99a5-abdf18a2bb50', '571e431b-16ab-4974-aadd-e04546d75c5a', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 17:30:55', '2023-07-07 17:30:55', NULL, 0),
('bfeff2f0-f2fc-4e3e-93be-c53b7b39d9ba', '77020870-f836-481c-99fa-6edfdd4335ec', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-18 09:14:47', '2023-07-18 09:14:47', NULL, 0),
('c0b47845-442c-4454-a696-9bf28ebb16cc', '71353f6d-4db5-4ead-81d7-96fe88aab8ca', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:15:57', '2023-07-07 19:15:57', NULL, 0),
('c21d1ae3-9858-419d-bd70-f4278572c004', '15e8344b-3fcd-4d5d-af47-bc70968be01c', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-13 08:38:55', '2023-07-13 08:38:55', NULL, 0),
('c2f394a5-50c9-4351-8acd-1d6f871ae069', '5915d9f4-f01d-4cf2-aebe-b4a7008897d7', '7d545132-5ea7-48f1-8787-6730948133e2', '2023-07-13 16:33:38', '2023-07-13 16:33:38', NULL, 0),
('c45c8206-2950-4f82-9b34-e1191620da3f', 'a20b4472-10e1-4f59-856e-f62faf91ec18', 'cf40414f-040a-4177-a48d-dde4080f294d', '2023-07-06 15:53:03', '2023-07-06 15:53:03', NULL, 0),
('c466a067-8345-4b86-bf85-80dc01f4f1dc', 'd2682022-ab1e-4f73-8aa3-a3992cc97585', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:12:18', '2023-07-07 19:12:18', NULL, 0),
('c4c19c53-4e9c-4c8f-925d-08cb47c67b5a', '5d631842-cb56-4c30-bba8-8990591ee5f9', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', '2023-07-12 17:53:37', '2023-07-12 17:53:37', NULL, 0),
('c513f9aa-07ee-4c00-8f8d-1e4716a8e72c', '0659eb69-a4b0-44c8-b2af-997a26ad355f', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-07 16:36:45', '2023-07-07 16:36:45', NULL, 0),
('c51cbdb6-cd38-4e0c-99af-f8abd20ce28f', '42e4876b-8db5-486f-914c-2c894c814544', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-10 18:32:13', '2023-07-10 18:32:19', '2023-07-10 18:32:19', 0),
('c66fc510-df3c-4ddd-a24d-1574bb98356f', '799baa88-576a-408a-9f12-e748f028d812', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-07 12:07:10', '2023-07-07 12:07:10', NULL, 0),
('c80ead61-ea37-470d-9aff-b8357d05db9c', '0d54ddf1-8999-4422-bd91-9abdacf823ae', '9dd74e57-5165-491d-88be-6610f721c393', '2023-07-07 18:35:02', '2023-07-07 18:35:02', NULL, 0),
('c8c8c043-d814-4cb1-91b3-d8184beb8f8c', '948ddcc4-3424-4578-882b-a930f94c7f70', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-06-28 21:47:29', '2023-06-28 21:47:29', NULL, 0),
('c9bfeb77-7a39-4d69-a0ed-b3818021a529', '790c7e1e-7a8e-49c9-b9ab-61f44ed48ec2', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-10 10:43:20', '2023-07-10 10:43:20', NULL, 0),
('cb0e914c-dcb0-478d-a4bd-d99e685ab568', '516daeac-8661-41bb-96d0-b0f8f2a9ee15', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-11 17:48:18', '2023-07-11 17:48:18', NULL, 0),
('cb23483f-9a3c-4e55-9f38-a9d0a43bd654', '493c629d-1fab-4a2b-85b2-97ed625e56dd', '92ad9d74-996b-4d1a-baaf-5d7f3964471e', '2023-07-05 15:41:18', '2023-07-05 15:41:18', NULL, 0),
('cb7f54b8-f878-4e84-a63a-cf9d39fa6fc9', '508faa90-9338-4e10-88de-1ce1d60bd21b', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-04 11:30:48', '2023-07-04 11:30:48', NULL, 0),
('cbbce22b-6ace-46c2-9312-6745b95ce781', '353c9525-b3dc-4fb0-be70-872647aeeea7', '03e074a7-da23-41bb-957e-4a233ec300c4', '2023-07-12 15:41:50', '2023-07-12 15:41:50', NULL, 0),
('cc2795ee-9d77-4e38-8c70-44cf1fc3b764', 'ba8fc3e4-e3dd-4206-a991-0411f1dd1854', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-10 19:07:47', '2023-07-10 19:07:47', NULL, 0),
('cc3f5258-4160-484a-8355-a346b14f552c', '1b762bdd-52bd-49f0-8791-5294e66809f4', '60fce3cf-aec6-4c85-9780-c578815be93a', '2023-07-11 15:09:26', '2023-07-11 15:09:26', NULL, 0),
('cd78271a-2197-4252-8f5a-897cbc63212c', '90a695c7-9ee8-4408-8c33-f78a72894279', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-10 09:20:57', '2023-07-10 09:20:57', NULL, 0),
('cda7efb2-bd74-4457-ab75-10dadccc81b9', '21ef9b62-9404-4ba1-afb4-855ca856173f', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-12 17:36:08', '2023-07-12 17:36:08', NULL, 0),
('cdc34648-7eba-4fbf-9255-1f7677e23080', 'cec9e26c-dda9-4509-9f3e-65bbcdc3b7fd', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', '2023-07-17 16:57:50', '2023-07-17 16:57:50', NULL, 0),
('cdc5cd17-4b37-4224-85d4-da223cdfdb9f', '96aa9d73-9d74-445a-8e7d-6fbcca0a0c57', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-12 18:55:32', '2023-07-12 18:55:32', NULL, 0),
('cdd0e988-0192-483d-a09f-883762b643a3', 'cf4e1ac6-50ce-42e4-ab5b-bdfa1a1fd2ee', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '2023-07-05 09:42:17', '2023-07-05 09:42:17', NULL, 0);
INSERT INTO `matricula_unidad` (`id`, `id_matricula`, `id_unidad_aperturada`, `created_at`, `updated_at`, `deleted_at`, `esta_inhabilitado`) VALUES
('d10ecf7f-220a-4bba-bbdb-652341f9b689', '43f26f4b-27bd-46b9-91c1-89bdd8e9dc66', 'd7378843-819e-4949-9240-7969019536f7', '2023-07-18 08:42:19', '2023-07-18 08:42:19', NULL, 0),
('d1517ecd-4905-4e3b-b58b-154e90dc96e7', '9a874be4-0419-4949-b34b-9fbc30def0f1', 'e763b71d-51c7-440c-a802-d1d9f46106ce', '2023-07-12 18:26:49', '2023-07-12 18:26:49', NULL, 0),
('d16132f3-7981-4b18-b46c-5d494fd110f8', 'e5e029aa-7571-420f-8b7c-975e866f206e', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-06 18:56:14', '2023-07-06 18:56:14', NULL, 0),
('d20eb6ff-114f-4807-b16a-08708d6f76cf', '2c3b904a-1bfd-45f0-8d79-8f5ae980a23f', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-18 09:09:25', '2023-07-18 09:09:25', NULL, 0),
('d3bf56dd-5be6-4ef5-9df9-35d9ec9ca829', 'e32cb6cd-71b7-443b-ae25-b0e13430b04a', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-06 18:39:00', '2023-07-06 18:39:00', NULL, 0),
('d62e0baa-c5ad-4bf9-b1b7-c4ac72c66548', 'be3a5396-ee68-4bf4-aa5a-a57a0d317fdb', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-06 18:08:50', '2023-07-06 18:08:50', NULL, 0),
('d7f7b7d5-b340-45a9-af13-8d7c0a67b65c', 'a2930ea4-d469-4324-8277-3485e6d4d780', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', '2023-07-11 15:38:22', '2023-07-11 15:38:22', NULL, 0),
('d909d06c-93cb-4797-937a-8b0bc61d80d1', '91ff88a3-d4e1-4f44-b10d-723908bd98d6', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-10 08:42:15', '2023-07-10 08:42:15', NULL, 0),
('d9df2e39-345b-4cb1-9ec9-7d1b340bfbd9', '3ab6fa5d-be9b-4ae6-a446-e7a4e87fe3a2', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-05 16:13:44', '2023-07-05 16:13:44', NULL, 0),
('dae363df-0e64-4543-862b-71acda003851', '65cbe1f9-3a8d-4ae7-866b-c3a7f7cae707', '76be60c7-dd73-410b-ac66-fec29cab9ed5', '2023-07-05 17:45:02', '2023-07-05 17:45:02', NULL, 0),
('db3e957d-565f-4466-a826-2e662b9c2ffb', '3b9f9d25-980d-4116-8ab7-45a863d0b5f7', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', '2023-07-10 18:49:04', '2023-07-10 18:49:04', NULL, 0),
('dba27653-3057-45cb-b4c9-58cbe2872568', 'd7354fef-9626-4511-a58e-026d92ebeb70', '7d545132-5ea7-48f1-8787-6730948133e2', '2023-07-10 18:22:49', '2023-07-10 18:22:49', NULL, 0),
('dc549553-bf2d-4175-8e15-5faa4266c821', '5556638b-4f76-478c-bd30-40451558899e', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-05 15:36:07', '2023-07-05 15:36:07', NULL, 0),
('dcef6026-6fb1-4f8f-a5dd-0464079a9cb8', '7f7b94cb-52cd-48f9-a28a-9eff75017ccd', '759bde85-be83-4c80-8672-7e79abe26d3c', '2023-07-06 10:24:31', '2023-07-06 10:24:31', NULL, 0),
('de62d394-05cf-4ecd-a6c8-5c0c57df7a03', '3fee6242-c6d8-4da7-9c68-e7d9584bfdca', 'c09f3c4a-b836-45d2-a421-708fd3156c28', '2023-07-18 09:15:53', '2023-07-18 09:15:53', NULL, 0),
('df23aecf-6cae-4394-8441-ebe3e04e628c', '3589cac9-39f0-4451-87b9-0baa456b1799', 'ddc2a558-b069-406f-bd60-ae60b7c4e1f0', '2023-07-06 11:30:42', '2023-07-06 11:30:42', NULL, 0),
('df488e4c-5b70-4c76-81ce-0a9578276bc5', '0d1f4938-e39f-41bd-8e7d-f65ddd578b4c', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-06 19:04:08', '2023-07-06 19:04:08', NULL, 0),
('e09d9b73-4c56-44f7-992f-b306cce07e71', '27626e59-f5be-4cf4-9d2b-daac5e1af20f', '1d1a1085-179e-4748-895a-cd86f6d870cd', '2023-07-12 10:33:00', '2023-07-12 10:33:00', NULL, 0),
('e0a2d48e-d252-4ff4-988d-63b4462d10dd', 'd40dc836-a2fe-4311-af33-3c3c14f9fc17', 'fc9c8761-2723-456c-b8d7-7a4765e6f1fe', '2023-07-11 18:56:44', '2023-07-11 18:56:44', NULL, 0),
('e0e7b3d8-0e72-44c7-a86f-d91f5bd773c1', '2490db00-4710-48f4-a8ec-ca9a4d5c1a76', 'aa3417d9-c064-4c7e-b498-4c2f70edd7dd', '2023-07-11 17:23:19', '2023-07-11 17:23:19', NULL, 0),
('e43027f9-0b08-45fc-98fa-2c8129d4eb92', '3a11e799-2dc3-47be-801d-8b6a864ac091', 'f969ec62-5767-4453-bef2-468a0888330f', '2023-07-11 08:46:10', '2023-07-11 08:46:10', NULL, 0),
('e439c2b1-5133-4d61-8073-d457bc53b790', '373b0271-70d8-44b5-b303-85eab36028c0', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-06 10:03:57', '2023-07-06 10:03:57', NULL, 0),
('e4ad0b60-be6d-4085-a536-4170769f622a', 'fe93a00f-7133-4eee-92e6-076f2f56dab1', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-07-12 17:16:49', '2023-07-12 17:16:49', NULL, 0),
('e5927799-6330-4eb5-a69c-5f0ff617311b', 'c16f8931-aaef-4df9-bb13-c13a90460243', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-07 18:46:37', '2023-07-07 18:46:37', NULL, 0),
('e5c085a5-2b4e-407d-9892-86013969ee22', '17ba0095-27a7-467b-85be-494488724ff2', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '2023-07-11 15:05:51', '2023-07-11 15:05:51', NULL, 0),
('e5db54be-4125-40c9-ae02-1abc5d4fdca4', '8c217d90-e24d-420d-8a9d-7297633ce3f1', 'dd7f0840-0903-4391-8fc9-fb0522e435e8', '2023-07-12 11:47:36', '2023-07-12 11:47:36', NULL, 0),
('e6861c31-d65e-4ded-a1b3-029156802d24', 'e67de1d1-8f32-409d-ae16-eb3d963f1245', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-03 09:40:46', '2023-07-03 09:40:46', NULL, 0),
('e6c74060-4d59-4089-aa04-ee34b7028b05', '11559489-8ab3-4ca2-9e14-a67d2cc7d7fc', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', '2023-07-05 18:14:11', '2023-07-05 18:14:11', NULL, 0),
('e6e4ecaa-8945-4a4e-8997-6e16610ad986', '602af706-894d-48d9-8f81-09806e22193e', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', '2023-07-13 08:57:20', '2023-07-13 08:57:20', NULL, 0),
('e7b10b51-079a-4e18-8236-fbfa63b83839', '62effe29-6cb3-4918-a2dd-c34f1e08e881', '516bbfd0-6126-4d6e-9a29-c6bd093843c6', '2023-07-05 10:32:30', '2023-07-05 10:32:30', NULL, 0),
('e7f04c19-0214-46b5-b305-916a9875292e', 'fa013e3d-0d94-43c5-a0a8-9770ded57c69', '22970759-739f-4e75-8b6e-43fa3439dc8d', '2023-07-06 17:00:07', '2023-07-06 17:00:07', NULL, 0),
('ea606e6d-8999-498a-950d-424b97c6bf7a', '1fd50b4c-18f3-4ce7-9b20-192a392cd5af', 'e4cc8dde-567f-49bf-b0ae-e82d3d3e5b4b', '2023-07-13 15:51:36', '2023-07-13 15:51:36', NULL, 0),
('eaaaae2e-20aa-4672-9aa7-033dc15086ab', '5981deef-45cc-4e5e-9354-6c0cb6f0911e', '0acd4e42-6a00-433b-9f8d-39a2a8835fee', '2023-07-05 10:59:03', '2023-07-05 10:59:03', NULL, 0),
('ec02edc8-9e13-46eb-b4a7-04aa72a012b0', '034b4928-f9a0-4773-b4f8-2cc273e9a082', 'd009fb40-7f1e-443a-a364-573bb2823995', '2023-07-05 17:01:31', '2023-07-05 17:01:31', NULL, 0),
('ed1b609d-97be-4a3e-b875-8728c425f8cf', '97265d6e-b75d-41e7-9d15-419ac612e62e', '41e51e75-11ac-4ff7-a95e-8d403b34bb11', '2023-07-12 10:10:25', '2023-07-12 10:10:25', NULL, 0),
('ed34738c-4ca1-48fa-a161-95784825c714', '484a16d4-0efb-463e-86e8-2b49b6a9c0bc', 'd009fb40-7f1e-443a-a364-573bb2823995', '2023-07-11 18:49:52', '2023-07-11 18:49:52', NULL, 0),
('ee7628d8-e0d3-4633-bd60-f64bb1981425', '5691d7d0-b3cd-4b81-89a6-e92d4f9a4878', 'c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', '2023-07-14 19:11:28', '2023-07-14 19:11:28', NULL, 0),
('ef32ed78-2226-4aba-a914-3b18e1502b19', 'dcdc20bf-d090-46be-a59e-4edb90fa6201', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-06 19:02:35', '2023-07-06 19:10:42', '2023-07-06 19:10:42', 0),
('f01a48c3-8198-4b63-b219-f7350df93699', '5275b8da-36cd-4864-be1d-e89cc5f15207', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-07 17:52:49', '2023-07-07 17:52:49', NULL, 0),
('f0253d24-11db-4e05-befd-e8d8f6f149a5', '3bc6603c-dcfd-4534-9ed8-cdffcc06e0c6', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-05 15:52:46', '2023-07-05 15:52:46', NULL, 0),
('f083be0a-6da8-4949-9105-7dc7dda1b872', '566095e4-b750-4b8a-a0c9-464159abd63f', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-17 12:32:37', '2023-07-17 12:32:37', NULL, 0),
('f1058e96-6195-4034-9c99-ae1d30437f96', '6b4b4974-01ab-4818-990d-c51f361b935a', '6d0571b8-d44c-4c70-9445-7103f0f4155a', '2023-07-13 10:23:25', '2023-07-13 10:23:30', '2023-07-13 10:23:30', 0),
('f11850dc-4cf5-4b6d-b396-46c4b1335301', '1fd4a419-571d-4179-8853-41edd70689fa', '7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', '2023-07-13 18:53:24', '2023-07-13 18:53:24', NULL, 0),
('f5c77406-e5bc-46ab-b0ff-2df5090cb9bc', '5b759d9b-40b5-4c0f-a11d-5f1cfb79fb24', '184a3f16-f726-458e-b892-ce4bb5b08695', '2023-07-07 17:41:54', '2023-07-07 17:41:54', NULL, 0),
('f70f6528-4091-4476-90b7-3bb235e83b0a', 'e80f09ea-00c4-459d-97f0-f381f1810eba', 'b79d05dd-c8c9-491e-b6db-401ab6119f6b', '2023-07-05 10:26:29', '2023-07-05 10:26:29', NULL, 0),
('f7899ab7-5b3c-42d9-bc6a-8c0a817649b2', 'e0581127-8ea5-4c89-bc08-be82d0222dcd', 'ae53e433-3e53-42dc-beb0-c9da4daa8a43', '2023-07-06 17:40:25', '2023-07-06 17:40:25', NULL, 0),
('f875968f-94e4-4e78-933f-174636179beb', '64914406-990c-499c-ac97-4a6c58cc9588', 'a0311f7d-f426-4841-9a8a-8bd633af7d1b', '2023-06-21 01:16:40', '2023-06-21 01:16:40', NULL, 0),
('fadcfdbb-d2d4-4729-9181-ae1af66bbd1d', '94a80cd4-e4c8-4e7d-a7ce-59a708978612', '6887e89e-edad-4b68-9010-5adb29b4f22b', '2023-07-05 19:01:41', '2023-07-05 19:01:41', NULL, 0),
('fb53d7c0-83d3-4013-be12-ad1ae50f95f7', 'e413a718-1d2b-44dc-a0d6-cd25cd4e0bd1', 'e1a17c4a-80e0-4739-b344-085262e7fc85', '2023-07-10 17:47:26', '2023-07-10 17:47:26', NULL, 0),
('fbee4db2-d519-4de1-95ba-2470119038d0', 'ad3e5d3d-b381-4d5b-9697-9225b67ebc21', 'a1614ced-5f80-4cdd-9247-e16ae8d456de', '2023-07-05 16:10:49', '2023-07-05 16:10:49', NULL, 0),
('fc180aa0-299e-45aa-be2d-a7694806a4c4', '69c66b9a-9323-407f-87f9-f839e3189f23', 'aec4a448-356e-47ba-9660-24d6026cbeec', '2023-07-07 15:07:53', '2023-07-07 15:07:53', NULL, 0),
('fd134186-f1c6-4442-bc9c-47173247fda9', '26bb00f2-7409-4a00-b6f2-048cce39781b', '552fc68c-3c42-474a-a42e-7cbc61f0ef1c', '2023-07-11 18:52:57', '2023-07-11 18:52:57', NULL, 0),
('fd277e31-7754-4d38-9015-ff8bd9bd8f78', '6327ca24-3f5c-4eac-a101-5a041f206a1d', 'eef9c353-6d8e-474c-aa21-29eccc6a9102', '2023-07-05 16:29:44', '2023-07-05 16:29:44', NULL, 0),
('fe1b1ec5-b95d-40e2-ace0-79e0f16a8859', 'd069217a-e0b1-4df3-9568-e4d33c65f78f', '2d350158-1427-4e18-8995-03aa84e1f9c3', '2023-07-07 19:15:17', '2023-07-07 19:15:17', NULL, 0),
('fec94a32-3ea5-49a6-9929-d175280a8791', '33199f6f-7fea-49cc-b913-48641ddc7948', 'c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', '2023-06-27 12:45:05', '2023-06-27 12:45:05', NULL, 0),
('ff03208e-38d4-4214-948d-5e44039143b3', 'e2010e8b-50cb-42d1-8ddb-e55aa099a5f2', 'cf40414f-040a-4177-a48d-dde4080f294d', '2023-07-05 11:44:59', '2023-07-05 11:44:59', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_04_153251_create_periodo_academicos_table', 1),
(7, '2023_05_04_153922_create_actividads_table', 1),
(8, '2023_05_04_165322_create_tipo_modulos_table', 1),
(9, '2023_05_04_165724_create_programa_academicos_table', 1),
(10, '2023_05_04_172023_create_modulo_academicos_table', 1),
(11, '2023_05_08_012541_create_pais_table', 1),
(12, '2023_05_08_015152_create_departamentos_table', 1),
(13, '2023_05_08_021825_create_ciudads_table', 1),
(14, '2023_05_08_024934_create_sessions_table', 1),
(15, '2023_05_22_163833_create_configuracions_table', 1),
(16, '2023_05_22_180131_create_ciclos_table', 1),
(17, '2023_05_22_212128_create_aulas_table', 1),
(18, '2023_05_22_235610_create_turnos_table', 1),
(19, '2023_05_23_002932_create_servicios_table', 1),
(20, '2023_05_29_155737_create_tipo_identificacions_table', 1),
(21, '2023_05_29_160306_create_personas_table', 1),
(22, '2023_05_29_161250_create_estudiantes_table', 1),
(23, '2023_05_29_161855_create_unidad_didacticas_table', 1),
(24, '2023_05_31_203939_create_docentes_table', 1),
(25, '2023_06_03_175922_create_tipo_calificacions_table', 1),
(26, '2023_06_09_184857_create_grupos_table', 1),
(27, '2023_06_14_030336_create_unidad_aperturados_table', 1),
(28, '2023_06_14_032340_create_det_registro_auxiliars_table', 1),
(29, '2023_06_14_124413_create_acta_notas_table', 1),
(30, '2023_06_14_124459_create_asistencias_table', 1),
(31, '2023_06_14_131817_create_matriculas_table', 1),
(46, '2023_06_14_163515_create_matriculas_table', 2),
(47, '2023_06_14_204350_create_capacidad_logros_table', 2),
(48, '2023_06_14_204407_create_indicadors_table', 2),
(49, '2023_06_15_064418_create_cursos_table', 2),
(56, '2023_06_16_172941_create_horarios_table', 3),
(57, '2023_06_16_150335_add_fields_to_matriculas_table', 4),
(58, '2023_06_16_154423_create_matricula_unidades_table', 5),
(60, '2023_06_17_012114_create_productos_table', 6),
(64, '2023_06_17_032200_create_descuentos_table', 7),
(88, '2023_06_17_030249_create_cuentas_table', 8),
(89, '2023_06_17_032222_create_recibos_table', 8),
(90, '2023_06_17_032333_create_pagos_table', 8),
(97, '2023_06_17_052646_create_creditos_table', 9),
(98, '2023_06_17_053124_create_cuotas_table', 9),
(99, '2023_06_18_034500_add_foto_field_to_estudiantes_table', 10),
(100, '2023_06_18_044944_add_grupo_id_to_cursos_table', 11),
(101, '2023_06_19_142846_add_nombre_completo_field_to_users_table', 12),
(102, '2023_06_20_001435_create_notas_table', 13),
(103, '2023_06_20_013813_add_codigo_field_to_indicadors_table', 13),
(104, '2023_06_20_152143_create_inasistencias_table', 14),
(105, '2023_06_23_034328_create_convalidacions_table', 15),
(106, '2023_06_29_185521_create_producto_programa_table', 16),
(107, '2023_06_30_200414_add_fue_anulado_field_to_creditos_table', 17),
(108, '2023_06_30_201654_add_fue_pagado_field_to_creditos_table', 17),
(109, '2023_06_30_204834_add_es_tardanza_field_to_inasistencias_table', 17),
(110, '2023_07_04_022056_create_producto_programas_table', 18),
(111, '2023_07_06_025945_add_inhabilitado_field_to_matriculas_table', 19),
(112, '2023_07_10_131421_create_apoderados_table', 20),
(113, '2023_07_13_092533_add_birthdate_to_estudiantes', 21);

-- --------------------------------------------------------

--
-- Table structure for table `modulo_academicos`
--

CREATE TABLE `modulo_academicos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tipo_modulos` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_programa_academico` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modulo_academicos`
--

INSERT INTO `modulo_academicos` (`id`, `nombre`, `id_tipo_modulos`, `id_programa_academico`, `created_at`, `updated_at`, `deleted_at`) VALUES
('07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', 'INGLÉS KIDS AVANZADO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-06-26 19:28:16', '2023-06-26 19:28:16', NULL),
('178b65a8-345c-4462-ad55-9f803c5dae90', 'INGLÉS BÁSICO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-06-14 19:58:25', '2023-06-26 19:22:53', NULL),
('1d08651c-dccb-4994-8702-18403fa5976d', 'INGLÉS AVANZADO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-06-26 18:45:10', '2023-06-26 19:23:03', NULL),
('4cbc5cf1-d481-4be1-9c4a-476b009215a0', 'INGLÉS PRE KIDS AVANZADO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-06-26 19:26:12', '2023-06-26 19:26:12', NULL),
('4f9c7d3a-93c9-4c2e-93f0-af33c68957c5', 'EXAMEN DE ADMISIÓN', 'ab7b9e97-c5f7-45c7-be07-f5e7c954981e', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-13 15:44:43', '2023-07-13 15:44:43', NULL),
('796dc5d7-7efa-437e-a22a-1efa26cfc2d8', 'INGLÉS KIDS INTERMEDIO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-06-26 19:27:59', '2023-06-26 19:27:59', NULL),
('937bc3fc-b190-4222-943c-f960af9423b6', 'INGLÉS PRE KIDS BÁSICO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-06-26 19:24:08', '2023-06-26 19:25:47', NULL),
('b9aea007-ef1f-478c-b0b7-589a4f9ab4a6', 'FRANCÉS BÁSICO', '21eacf16-83db-4a32-ad3f-89c314ac5e26', '990b32bc-7178-4c79-a399-030fa0fa330c', '2023-06-27 17:17:37', '2023-06-27 17:17:37', NULL),
('bcf4b405-78ad-4392-aa1d-bbf8056af2e0', 'INGLÉS KIDS BÁSICO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-06-26 19:27:33', '2023-06-26 19:27:33', NULL),
('c14f3aa6-c042-4a05-8b1c-8817501f2d7f', 'SPEAKING', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-03 12:46:14', '2023-07-03 12:46:14', NULL),
('c64212eb-3800-4b14-bfea-4debb43d93d1', 'INGLÉS PRE KIDS INTERMEDIO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-06-26 19:24:46', '2023-06-26 19:25:38', NULL),
('e25b3b66-def7-4765-8931-01834e247883', 'INGLÉS INTERMEDIO', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-06-14 19:58:47', '2023-06-26 19:23:17', NULL),
('e9a98ec4-dd4d-4d73-afe4-925780952619', 'INGLÉS TPR PRE KIDS', 'ce047a16-f7a3-4de0-b797-eb8ccb4f32af', '57c808a2-97f0-45d9-86e1-945d439680b4', '2023-06-26 19:22:00', '2023-06-26 19:25:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

CREATE TABLE `notas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_matricula_unidad` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_indicador` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` double(8,2) NOT NULL DEFAULT '0.00',
  `valor_recuperacion` double(8,2) DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notas`
--

INSERT INTO `notas` (`id`, `id_matricula_unidad`, `id_indicador`, `valor`, `valor_recuperacion`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('10caeb59-8285-4f2e-94f2-dc94daaee5fb', '42b79786-de7c-4b5f-a796-b40690741db8', '6fd1497c-359d-4b5a-8ea4-6e92fbbfe8a4', 12.00, NULL, 1, '2023-06-20 21:21:19', '2023-06-22 13:33:21', '2023-06-22 13:33:21'),
('2c2dfbf4-9a19-42d1-8d2b-2adc9a15cb5e', '42b79786-de7c-4b5f-a796-b40690741db8', '7253123e-4c9c-4ff6-be30-eddf76d94eb3', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('2ea93d06-58e6-407a-be30-885739c466b7', '42b79786-de7c-4b5f-a796-b40690741db8', '6f293e0c-dc14-4045-8379-60c3edeab5aa', 12.00, NULL, 2, '2023-06-22 13:33:21', '2023-06-23 09:57:22', '2023-06-23 09:57:22'),
('3178a395-c3e3-4ad9-bf17-76a04c0d45c7', '42b79786-de7c-4b5f-a796-b40690741db8', '305cad86-939a-4b87-bdca-b2d0e9438b10', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('3681fd5a-1cfc-4b59-a2f6-31f38e0b89c7', '42b79786-de7c-4b5f-a796-b40690741db8', '6f293e0c-dc14-4045-8379-60c3edeab5aa', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('38f56cee-f7db-4ff9-ba70-7dcfc7fbde5e', '42b79786-de7c-4b5f-a796-b40690741db8', '7253123e-4c9c-4ff6-be30-eddf76d94eb3', 12.00, NULL, 2, '2023-06-22 13:33:21', '2023-06-23 09:57:22', '2023-06-23 09:57:22'),
('3dbee0a9-0488-441b-afea-4046989503b6', '5bf41298-9a5a-4f97-a19a-95ef1a79ec32', 'f45a8e3a-3afd-42b2-8fdb-3e4d748eee6b', 12.00, NULL, 2, '2023-06-27 17:05:27', '2023-06-27 17:05:27', NULL),
('3df8dcd4-ff2b-46e7-86c1-97d3c209900c', '42b79786-de7c-4b5f-a796-b40690741db8', 'a3d8c2a4-d2fe-40ec-883c-b3034d8bc486', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('3ebcaee4-2368-4943-ac59-3d555a8ab484', '42b79786-de7c-4b5f-a796-b40690741db8', '6fd1497c-359d-4b5a-8ea4-6e92fbbfe8a4', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('41097fda-410d-49e6-b23b-6ae0e0420559', '5bf41298-9a5a-4f97-a19a-95ef1a79ec32', '6201732f-716c-46ee-90de-d1a966529d13', 13.00, NULL, 2, '2023-06-27 17:05:27', '2023-06-27 17:05:27', NULL),
('4fbb2ccd-f1d1-4f1d-9bc3-9cb3457c32ec', '42b79786-de7c-4b5f-a796-b40690741db8', '77b52415-aa91-41e8-8e9e-02b8e10a244d', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('5a077990-29cd-471f-a5a8-b902e8836134', '42b79786-de7c-4b5f-a796-b40690741db8', '7253123e-4c9c-4ff6-be30-eddf76d94eb3', 12.00, NULL, 1, '2023-06-20 21:21:19', '2023-06-22 13:33:21', '2023-06-22 13:33:21'),
('62ea146c-e979-449e-8f73-ca79b24a05f2', '42b79786-de7c-4b5f-a796-b40690741db8', '034f05b3-dfb3-4760-a24a-ada120b22996', 12.00, NULL, 2, '2023-06-22 13:33:21', '2023-06-23 09:57:22', '2023-06-23 09:57:22'),
('6bdba59d-c01d-43a9-bb73-a6f401f1c969', '42b79786-de7c-4b5f-a796-b40690741db8', 'bc973f10-457c-4d04-9cfd-ba8756dc2194', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('a06d74ec-3951-407c-a6cc-1692bd3c9bfd', '42b79786-de7c-4b5f-a796-b40690741db8', '8539ce6f-42be-4bb2-a0b4-53521c744d42', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('ac4c4736-65b3-4db2-9240-c7199a1417a8', '42b79786-de7c-4b5f-a796-b40690741db8', '10536cd2-c071-4adc-8511-6a0a330ed5b1', 12.00, NULL, 2, '2023-06-22 13:33:21', '2023-06-23 09:57:22', '2023-06-23 09:57:22'),
('b613f513-2e65-4d43-bdf8-790617a7f872', '42b79786-de7c-4b5f-a796-b40690741db8', 'cea8827a-e7b6-4f69-9249-ab78b4aba7e7', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('bf3c8203-e578-44e6-912b-ac63b6fc25ed', '42b79786-de7c-4b5f-a796-b40690741db8', '10536cd2-c071-4adc-8511-6a0a330ed5b1', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('c7415cb0-90aa-47e3-b43b-02c7bd8a21b9', '42b79786-de7c-4b5f-a796-b40690741db8', 'b255dfd3-3db2-451d-8669-70818162e86a', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('c9d90f5c-66d1-46fe-842f-9d685327bf63', '5bf41298-9a5a-4f97-a19a-95ef1a79ec32', '8ece89a0-ee49-46d0-a2f7-bc8e54dc9a21', 13.00, NULL, 2, '2023-06-27 17:05:27', '2023-06-27 17:05:27', NULL),
('ceb5eb12-ed43-4073-8ba8-5e530c71ea53', '5bf41298-9a5a-4f97-a19a-95ef1a79ec32', '96b721fd-c4b3-42c6-a555-f576f4d06870', 15.00, NULL, 2, '2023-06-27 17:05:27', '2023-06-27 17:05:27', NULL),
('d82f5c7e-71be-4861-a333-5e911df43662', '42b79786-de7c-4b5f-a796-b40690741db8', 'b48d84a6-09f4-4d33-b776-7b07410b8934', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('da7579cb-5de2-4df8-aeb3-bb927767cc78', '42b79786-de7c-4b5f-a796-b40690741db8', '6fd1497c-359d-4b5a-8ea4-6e92fbbfe8a4', 12.00, NULL, 2, '2023-06-22 13:33:21', '2023-06-23 09:57:22', '2023-06-23 09:57:22'),
('e4890d2f-6351-4811-b852-243b2803c0f2', '42b79786-de7c-4b5f-a796-b40690741db8', '6b6c71bb-a723-411d-a3a1-49697b8a187a', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('f008eca4-1834-4ee2-bce3-31425206cd1b', '42b79786-de7c-4b5f-a796-b40690741db8', 'c41a49a8-c3fb-44a9-8ea7-f80f5202cade', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('f16b4e81-faf5-4439-a830-f921243d1414', '42b79786-de7c-4b5f-a796-b40690741db8', 'ca86e8bd-f981-4a7b-a6d1-11b5c54e5e91', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL),
('fca8c7de-314f-48ff-b5ce-87519c96a39c', '42b79786-de7c-4b5f-a796-b40690741db8', '034f05b3-dfb3-4760-a24a-ada120b22996', 12.00, NULL, 2, '2023-06-23 09:57:22', '2023-06-23 09:57:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_periodo` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_recibo` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_descuento` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` int NOT NULL,
  `monto` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagos`
--

INSERT INTO `pagos` (`id`, `id_periodo`, `id_recibo`, `id_producto`, `id_descuento`, `cantidad`, `monto`, `created_at`, `updated_at`, `deleted_at`) VALUES
('005e8119-0d42-4771-b89d-6dd781a1f424', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd48aa434-bd6f-4070-a3d8-ae93b8bd1a6d', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-11 17:53:15', '2023-07-11 17:53:15', NULL),
('00950035-ed35-414a-8434-9cdabf2b884f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd00d9ee0-505f-427b-bf4d-e873f76cd11a', '4e66fdd1-05c0-4741-9215-6f531cd2d412', NULL, 1, 120.00, '2023-07-10 17:55:49', '2023-07-10 17:55:49', NULL),
('00a54358-7bea-452c-8974-d5b585f8de2d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '823f24c6-19d8-48b9-ad2e-281575cf4f67', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-12 17:17:34', '2023-07-12 17:17:34', NULL),
('00c99092-c7fa-4bf4-a19c-7e027f2e80ba', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '885dbf36-51c5-46ce-81a3-d9bb4c226cca', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 96.00, '2023-07-07 18:06:56', '2023-07-07 18:06:56', NULL),
('019bfa2b-8324-475d-8a24-e497b1e3f239', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dd22c80d-033b-416b-b2b4-8c5b134be04d', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-10 16:58:01', '2023-07-10 16:58:01', NULL),
('01e6056d-77ad-45da-b076-346a7e7fedde', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4bbaa1bb-725d-4773-8ab7-720a4f3c424f', '956ed2ec-ae6b-449b-825c-179592116c6b', NULL, 1, 110.00, '2023-07-14 17:10:22', '2023-07-14 17:10:22', NULL),
('02044380-9b57-46ae-9047-333c5c84a9dc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'cd341994-8296-4b2e-a8aa-d843bf4643f5', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-17 10:07:16', '2023-07-17 10:07:16', NULL),
('02776a8f-34ca-44b3-9db6-ddddd9b91816', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '75b89c20-d8d8-409b-b038-e0254b79a564', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-06 08:58:45', '2023-07-06 08:58:45', NULL),
('02a64d66-fb39-4e70-92a6-ba50c8749c2f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '04c3f098-99ba-4794-835a-a815fcfa65bd', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-06 16:42:04', '2023-07-06 16:42:04', NULL),
('03990f7c-642c-46fd-ae0d-5be0f177d8c9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'eabb1aa0-d615-4fee-a3df-a9d41ac96579', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 120.00, '2023-07-05 15:36:32', '2023-07-05 15:36:32', NULL),
('03a21483-8577-4c07-abaa-88c2552476eb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5a1767ec-e223-426c-be9a-07282556789e', 'f6996f60-91c3-4014-be8b-d0e45a3b3c9d', NULL, 1, 130.00, '2023-07-05 11:31:59', '2023-07-05 11:31:59', NULL),
('03b34df1-523c-4897-92fe-0e71645812eb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6013c242-1a6a-40ba-bbb6-310e2627aa18', 'fd46a93e-3200-4338-86dd-44bd07da12a3', NULL, 1, 140.00, '2023-07-11 15:09:40', '2023-07-11 15:09:40', NULL),
('05f1c52f-dd07-4af0-8c99-d880b1869284', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '71de7b45-3b87-4572-b523-dca25bd7a493', '344c7156-015a-4e67-9b9d-e3641766ad62', NULL, 1, 140.00, '2023-07-07 12:25:24', '2023-07-07 12:25:24', NULL),
('0647e7c8-5804-416e-8079-4159d3d959f6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'fb524ca4-3685-48c1-b67e-adc039ded335', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-06 10:04:29', '2023-07-06 10:04:29', NULL),
('08276940-e246-4caf-9c59-32d8dd23d3e7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'febebf43-0d1a-4fc3-b497-9909816b3be4', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 110.00, '2023-07-11 10:28:58', '2023-07-11 10:28:58', NULL),
('09e5e3b3-9fc0-40f2-b753-e2be827b6a14', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '010a5e77-2dcd-4ac8-87a8-13a55b168a75', '7ba2cc21-dc5b-42f8-b542-baaeb41443f1', NULL, 1, 140.00, '2023-07-07 17:48:01', '2023-07-07 17:48:01', NULL),
('0a5e4126-eec7-4f7d-a3e6-af3876657918', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8b5d143d-f03b-4907-be46-9052544650c5', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-18 09:17:10', '2023-07-18 09:17:10', NULL),
('0abe045a-08f4-4d0c-a6a4-c943301b8ac5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '345717f8-9416-4508-b069-ae6a17223621', '393c3bb1-5d52-4c0f-a645-56dc4663ad63', NULL, 1, 140.00, '2023-07-07 17:32:48', '2023-07-07 17:32:48', NULL),
('0b38e40b-2c48-47c9-ac58-cba3dbbf32ea', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a7e9bc67-190d-4bfe-a5f0-1e881f0d6b05', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-06 18:43:45', '2023-07-06 18:43:45', NULL),
('0bea2795-5a29-4659-885a-9c8fbf7caa39', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8eecd831-ffbb-4f3c-a251-db0174aa2cce', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-07 12:07:37', '2023-07-07 12:07:37', NULL),
('0caf53e7-0f6f-4dda-b325-a3457bce596f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd6a752ee-4bbe-40e5-92b7-532045f42448', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 130.00, '2023-07-05 17:39:50', '2023-07-05 17:39:50', NULL),
('0cbb6fa5-d426-4c10-a346-fafb59068def', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b2694f32-1645-4bb5-80ad-6a542de40092', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-11 18:58:56', '2023-07-11 18:58:56', NULL),
('0f18b055-154b-4047-993e-8d0c6e97eb84', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '806601a5-61de-49be-a7a4-5690879aed32', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-12 10:33:14', '2023-07-12 10:33:14', NULL),
('0f5253c0-b07b-4e50-a9cc-98265fbf1871', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0e2e10cd-4c60-409a-a20a-130bdad989e2', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-14 18:31:14', '2023-07-14 18:31:14', NULL),
('10d2d915-5a83-4864-b701-6c304b966055', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3dfa276e-d3b6-4911-bd32-9c4bc0be21ed', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 130.00, '2023-07-04 09:06:37', '2023-07-04 09:06:37', NULL),
('1103fed7-37a7-4563-a0d2-84fc7a5bf922', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '259c3710-0352-4b0c-883d-e6ed4eba1979', 'fd46a93e-3200-4338-86dd-44bd07da12a3', NULL, 1, 140.00, '2023-07-11 15:36:05', '2023-07-11 15:36:05', NULL),
('12371dfd-c38a-4613-af56-ff919b64f538', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dfe48138-3e4c-40be-9515-8e0eaf8b12ac', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-14 15:33:13', '2023-07-14 15:33:13', NULL),
('123a8d69-7673-4254-a6f0-433edf532d60', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5db0a588-0312-4ba3-97f0-94041dd5bedb', 'dd433473-19fd-4f2d-b271-315c726da358', NULL, 1, 130.00, '2023-07-10 15:35:25', '2023-07-10 15:35:25', NULL),
('12c4a52d-f4b0-40b3-ab35-8b9f8ca0f261', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '211c8988-f388-473f-b198-523ad84d3a3a', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-05 17:02:04', '2023-07-05 17:02:04', NULL),
('12d7a29f-fab3-4ffd-821d-141262ee6834', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7f6f78fc-3c5a-4a51-bb9f-f04628a4e479', 'fd750b2e-54a0-4cd7-a0e9-092cafd6aa16', NULL, 1, 120.00, '2023-07-10 17:47:41', '2023-07-10 17:47:41', NULL),
('12fed364-563b-4388-b996-c1d3b07ff24f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '960ff6ca-6c41-4b23-930f-97019d2f3f1c', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-05 15:14:02', '2023-07-05 15:14:02', NULL),
('130d2baf-6086-469d-ba0c-d1c121a06124', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3b40d2cb-a55f-487c-a9bd-ca3d2ee7acfb', 'dc46e13b-d0c2-4acc-96ce-985952c69f22', NULL, 1, 120.00, '2023-07-05 10:59:26', '2023-07-05 10:59:26', NULL),
('130d565d-0954-4600-ac13-0fba05e416c8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4fd07512-5eac-4c3d-8e69-7020e4023b43', '16271707-80af-458b-8326-bfe1545b3635', NULL, 1, 25.00, '2023-07-15 09:48:43', '2023-07-15 09:48:43', NULL),
('13d78dfd-dbb4-41fb-9969-897d8f4f3645', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a4916544-2f64-4d06-99cc-55aea376ace5', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 120.00, '2023-07-07 18:35:15', '2023-07-07 18:35:15', NULL),
('14559d3d-a1b6-420c-8d5d-51df948b464d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c4908672-b86f-48b3-8f18-abdc51a72ab0', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-18 09:04:58', '2023-07-18 09:04:58', NULL),
('145e7a79-dacc-4dcb-b6dd-f260a12a17cf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '05d620ca-df16-40ae-aa0e-28595405be6a', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-11 18:50:05', '2023-07-11 18:50:05', NULL),
('14e5d5a6-fe34-405c-a9cc-4b91ef97a86b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '383e5582-2a88-4348-9825-356264211926', '393c3bb1-5d52-4c0f-a645-56dc4663ad63', NULL, 1, 140.00, '2023-07-05 18:35:10', '2023-07-05 18:35:10', NULL),
('14fb9add-488c-4e0d-9377-4bb3a41009a7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '20402192-f310-46be-adb3-6bb735ce476f', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-05 15:53:08', '2023-07-05 15:53:08', NULL),
('16c658e2-70de-49f3-af7e-3da5d073955b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '14fd854a-b06b-44f6-9a39-3aac5d9d06da', '7ba2cc21-dc5b-42f8-b542-baaeb41443f1', NULL, 1, 160.00, '2023-07-07 18:37:38', '2023-07-07 18:37:38', NULL),
('1746fd33-84b0-470a-a5ce-f885dae2744e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0629c91a-6fa8-4359-b8ed-3795746c7b90', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 60.00, '2023-07-12 09:43:36', '2023-07-12 09:43:36', NULL),
('1761b143-47ff-4247-9a67-45ee2c4579a8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ff376470-7ead-48c5-aa4a-a94c0908de97', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 120.00, '2023-07-05 16:12:10', '2023-07-05 16:12:10', NULL),
('17a07c13-3763-40c5-bef2-c714097639d7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f243a4b9-787d-4db0-8f20-2f7374ab9503', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 120.00, '2023-07-11 10:27:21', '2023-07-11 10:27:21', NULL),
('180a7654-c865-4763-9e2e-0d4f7071c07a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b62697bf-4e88-47c4-9d02-d0cd3aace012', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-17 16:43:09', '2023-07-17 16:43:09', NULL),
('1852b11d-ed31-4528-a8df-7065a0d0ff7a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1bb0d3c3-e7bf-44b5-b719-a4c3f41b6dc9', '2921d90f-dced-4056-8904-10a4812b4716', NULL, 1, 140.00, '2023-07-06 17:45:02', '2023-07-06 17:45:02', NULL),
('197d9ac1-4946-4ca0-85b3-ce4aac3657a3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c132dde7-eb2d-4d49-82d7-ea93ee01345e', '2921d90f-dced-4056-8904-10a4812b4716', NULL, 1, 140.00, '2023-07-10 11:12:36', '2023-07-10 11:12:36', NULL),
('1a241e92-e47c-464c-8a1b-fe6dd46cf7fd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd276d8df-cfd6-4caa-af86-e0c8ece18b55', '75ffe702-9e09-4545-99df-5b76b176aaee', NULL, 1, 130.00, '2023-07-05 16:46:18', '2023-07-05 16:46:18', NULL),
('1adf240f-df77-40db-b7da-3b5c375aaa2c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c7291c49-67af-4189-ad62-e687049acb29', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-13 18:53:42', '2023-07-13 18:53:42', NULL),
('1bff4b82-f1d8-4532-a69f-7527252b3a7d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8d8a7f81-54ba-4403-9228-94b8943d7668', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-11 18:53:16', '2023-07-11 18:53:16', NULL),
('1c29b63e-dfd9-4fef-ad08-c0fbc00c0568', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c26c3548-fbb8-4651-a7bf-ef38d02ebeba', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-05 16:35:10', '2023-07-05 16:35:10', NULL),
('1e4efd14-1f22-4579-ae64-c81bcfa3978f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'db5cdc22-c97d-455b-a8ad-d655911ce3ce', 'fd750b2e-54a0-4cd7-a0e9-092cafd6aa16', NULL, 1, 120.00, '2023-07-05 18:52:56', '2023-07-05 18:52:56', NULL),
('1ed5048f-5c35-4095-b22e-d732acd38cc9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ddb5b810-1c63-4191-84be-255c562b11ff', '8b2df53f-10a4-4d0a-85ed-eb2a72c986e4', NULL, 1, 140.00, '2023-07-07 16:24:04', '2023-07-07 16:24:04', NULL),
('1fb99d4f-51c2-44a2-985f-e1147e666044', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '443cc023-a9ba-4fe0-8aa5-9dd3bd737ce5', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-11 15:58:59', '2023-07-11 15:58:59', NULL),
('22bf42eb-dd36-46e7-a963-dea7fe2fbf99', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '752de1ef-7fa0-4359-9051-b994eb02711f', '956ed2ec-ae6b-449b-825c-179592116c6b', NULL, 1, 120.00, '2023-07-11 09:42:59', '2023-07-11 09:42:59', NULL),
('2322d987-af8a-44d9-a679-e65318324df1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '77ceb489-dcc4-4e10-a67e-d22aed21a2d3', 'c76a2668-0764-40f4-ba23-78e18e5cedd2', NULL, 1, 120.00, '2023-07-11 15:37:28', '2023-07-11 15:37:28', NULL),
('23ad0288-7af6-4ad1-a78c-170dfd942dcb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '29b9170b-5be7-4f4c-8593-c7207a2abdf8', 'a150455a-7664-4019-aba3-968d378e6405', NULL, 1, 60.00, '2023-07-14 19:08:28', '2023-07-14 19:08:28', NULL),
('23f82a8b-25ff-4a73-a2b5-bdcafce48f07', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'df04c7f9-296b-4b79-a3d4-6e7c0cd08c58', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-10 17:44:30', '2023-07-10 17:44:30', NULL),
('23fc8229-4372-46c5-8cf8-6fee8ca3a045', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '63508291-b7f0-4eaf-bfb4-1eb025b62f3d', 'fd46a93e-3200-4338-86dd-44bd07da12a3', NULL, 1, 140.00, '2023-07-11 15:47:46', '2023-07-11 15:47:46', NULL),
('24780db0-01de-48b1-993f-bba2711f01f0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0c1e61a1-13cb-4017-a385-505260aa7ba3', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-10 17:51:44', '2023-07-10 17:51:44', NULL),
('24e6e55a-6bf0-49e8-990f-e1bd394528e0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '75b89c20-d8d8-409b-b038-e0254b79a564', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-06 08:58:45', '2023-07-06 08:58:45', NULL),
('257d21e1-d9ed-497f-94ee-9777464016ce', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e28294ec-b619-4dfb-8e1b-53797a08f246', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-12 17:32:17', '2023-07-12 17:32:17', NULL),
('2594def3-d2eb-4e1d-a12c-e328f3fa463a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e87feac8-c36d-4c6d-a32c-8f8bae6d50ce', '210f04fb-bb4f-4627-9fab-2116ee57e5b3', NULL, 1, 130.00, '2023-07-07 16:15:45', '2023-07-07 16:15:45', NULL),
('25cb318e-d3b8-489e-895d-9535dd8f358a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0a1ab5c7-7505-4cb2-b872-13bd52685d4b', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 110.00, '2023-07-07 17:55:07', '2023-07-07 17:55:07', NULL),
('26cbd887-1404-465e-9785-6fc91da70a17', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c91c8245-ee3e-488b-8488-b778d1e0c7d7', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 120.00, '2023-07-05 18:39:37', '2023-07-05 18:39:37', NULL),
('26fce85c-98d6-4438-af58-6e00957b8536', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '024d04fb-a1f4-41fd-b39f-bec1a889f6a6', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-11 19:23:11', '2023-07-11 19:23:11', NULL),
('2733cdf6-5324-4b13-b590-85a1e1cad2fd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '185216ab-53c4-4de7-a9dc-51fd6bd3c97a', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-07 17:50:20', '2023-07-07 17:50:20', NULL),
('277ff8cc-c22b-4b7f-815e-47555ae8d752', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '75966e01-f26e-44c3-911b-7a9cf7ba0f44', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-07 16:37:38', '2023-07-07 16:37:38', NULL),
('27f1f04e-4911-4ac8-bb29-0898507ff717', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b2694f32-1645-4bb5-80ad-6a542de40092', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-11 18:58:56', '2023-07-11 18:58:56', NULL),
('28496e62-13ee-4b81-a821-64a889f49db1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6ab51d0f-2ec3-49aa-993d-514a09b1966f', '4e66fdd1-05c0-4741-9215-6f531cd2d412', NULL, 1, 120.00, '2023-07-13 18:56:41', '2023-07-13 18:56:41', NULL),
('29d77895-e9fd-4a96-b59d-5ab8aa60e9e5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'fde6fa9d-c9d1-4793-b432-8e4c33b200b6', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 110.00, '2023-07-18 09:08:32', '2023-07-18 09:08:32', NULL),
('2ae967e1-a2ea-4c0a-a43b-d18de0d5b7cb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a968f85a-2d32-4649-9ac1-abb30eac5868', '2921d90f-dced-4056-8904-10a4812b4716', NULL, 1, 140.00, '2023-07-13 10:27:32', '2023-07-13 10:27:32', NULL),
('2b9b708b-01ab-422e-8ab9-590d80e0a83f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8d38d7ab-a1f2-4c0a-9494-5315bc5a6851', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-22 11:11:55', '2023-06-22 11:11:55', NULL),
('2c0e6235-b52e-48d9-944f-3ba304f94220', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3cf09cc9-6546-4421-9290-6dbd26ec909f', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-06 19:07:21', '2023-07-06 19:07:21', NULL),
('2c5f68e5-7dd6-42d5-abdc-8b2fa2c3a4d8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd85d0af5-a583-4f46-a26e-af924b6a56f1', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-10 10:44:24', '2023-07-10 10:44:24', NULL),
('2c827678-9162-4f7c-9603-224a5a485e15', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '9ca7df4d-3ab9-4a57-8405-dcd9d4134763', 'c76a2668-0764-40f4-ba23-78e18e5cedd2', NULL, 1, 120.00, '2023-07-07 11:32:29', '2023-07-07 11:32:29', NULL),
('2d2a8a5f-a58c-463d-9f71-e5f029730b23', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '26af218b-cd54-454b-b44c-10b62e2500d2', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-06 11:26:19', '2023-07-06 11:26:19', NULL),
('2df0e54a-7a62-4ea8-a04b-4398d52d502f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '91840012-017e-4d88-b3fd-0e3e52f416f6', 'a150455a-7664-4019-aba3-968d378e6405', NULL, 1, 120.00, '2023-07-05 17:34:30', '2023-07-05 17:34:30', NULL),
('2eddf8cc-4aae-4058-8e44-29a9fc769b59', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'def296a1-1f82-40f2-9e97-e346b8d890d3', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-12 19:00:49', '2023-07-12 19:00:49', NULL),
('2efa701f-d704-4ab2-a50d-3f88581d433d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '09097111-9a04-4f6e-8e2d-d11000974ff2', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 150.00, '2023-07-14 15:58:11', '2023-07-14 15:58:11', NULL),
('2fa3b94e-549f-4180-a8a2-3577c261e663', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'be2ad905-a86c-415a-ad1b-e5a396d999ad', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-10 19:01:50', '2023-07-10 19:01:50', NULL),
('2fd03cad-fe1f-4418-9829-b2f1d1e9e723', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '075a9b25-8fa3-4fbf-8eff-090498a7f5d7', '2921d90f-dced-4056-8904-10a4812b4716', NULL, 1, 140.00, '2023-07-11 17:23:38', '2023-07-11 17:23:38', NULL),
('3066c132-be4a-4ebe-a640-f96b80364b6b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd62be0bb-409a-479b-af5f-6147b108d303', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-19 20:30:19', '2023-06-19 20:30:19', NULL),
('31c01ef7-0d6a-4593-95f3-8a8738774088', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '744f526d-ae0c-4660-a5d2-7e9e3d81bfdf', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-12 19:07:57', '2023-07-12 19:07:57', NULL),
('333bc79c-6e8e-497e-a2f2-4ff8307cc5a4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '43ea2675-8f87-4818-b460-13e9c72870df', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-11 15:26:12', '2023-07-11 15:26:12', NULL),
('33467948-b417-4290-a01c-5dce69c259d5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '21e1ef99-6f3a-4a8a-8037-f011eb0998be', '344c7156-015a-4e67-9b9d-e3641766ad62', NULL, 1, 140.00, '2023-07-13 16:43:11', '2023-07-13 16:43:11', NULL),
('33d86188-8690-4966-ae62-71ed9231d346', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd1e45907-920d-47cd-80df-502e08c2dc5d', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-07 17:19:28', '2023-07-07 17:19:28', NULL),
('3407907d-6fda-4c46-9764-8d254992629a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5d3b9fa6-cc59-4acc-ba9d-e60e5d199526', '2921d90f-dced-4056-8904-10a4812b4716', NULL, 1, 140.00, '2023-07-06 18:09:15', '2023-07-06 18:09:15', NULL),
('34c227f8-be4a-4190-b277-30a9503e5374', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '14b9b57f-67f1-4247-9099-42d20747f083', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-10 18:18:06', '2023-07-10 18:18:06', NULL),
('37f3279e-217a-4792-a7a2-a82416c6ece1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dc79e9e2-8e4b-46d3-8c12-ea11ee10c610', 'dd433473-19fd-4f2d-b271-315c726da358', NULL, 1, 130.00, '2023-07-10 15:41:36', '2023-07-10 15:41:36', NULL),
('38d54543-f44d-4ef0-87eb-44f5598f5cba', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b76eeb67-20a2-456b-8b85-54fdb5018fdb', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 130.00, '2023-07-14 18:59:56', '2023-07-14 18:59:56', NULL),
('3922d76d-9735-4545-bb9f-8fb94dc3a4ad', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a51e0cfe-b44b-4d40-b399-b5da211bc99e', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 19:01:58', '2023-07-07 19:01:58', NULL),
('39d33bf6-9a1c-43a4-979a-b772171b7a76', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8ba0e6b4-7137-47bc-b39b-5c34afd9cace', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-06 17:20:03', '2023-07-06 17:20:03', NULL),
('3a0889da-f2c3-4d56-9a17-b9a2e025a266', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '705dbabf-1e90-46e0-820e-740934c5e6b5', '795852e6-b984-4ea4-afca-d757bcc8a102', 'f905457c-8abf-355b-8611-e18413534979', 1, 96.00, '2023-06-28 11:36:55', '2023-06-28 11:36:55', NULL),
('3aaaee09-3181-46cf-94a4-ae553b950e60', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b1285fd9-e204-4754-b126-ff226872a508', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-05 18:33:08', '2023-07-05 18:33:08', NULL),
('3b7c2680-fa3e-48ab-b50d-f1abbf80d78e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e26ffdeb-6cb5-4cf6-8674-6cfafe3593a0', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 130.00, '2023-07-13 10:20:02', '2023-07-13 10:20:02', NULL),
('3bbb28ac-3fc4-4087-a8a2-c2ccb6d07e02', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '64c804bc-a82c-46cf-acf1-64a41de71fb7', '1e16b1e8-aff9-47a9-af02-a61a436d08a8', NULL, 1, 20.00, '2023-07-15 11:40:20', '2023-07-15 11:40:20', NULL),
('3d49073f-4f88-4418-9126-11ee0cfe7717', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8ce7eae0-5947-4728-aeae-1d3e69063af6', '75ffe702-9e09-4545-99df-5b76b176aaee', NULL, 1, 130.00, '2023-07-05 16:49:37', '2023-07-05 16:49:37', NULL),
('3d9d1182-2b3e-4caf-af74-b3bcc6edf899', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7279605e-6e2c-4f2b-89a3-5b0417b00392', 'dc46e13b-d0c2-4acc-96ce-985952c69f22', NULL, 1, 120.00, '2023-07-11 17:56:09', '2023-07-11 17:56:09', NULL),
('3e727d71-6e6a-4467-bd47-2fc65c36a31d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '9cdd8eda-8c30-427d-8195-a8a296fabb01', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-10 18:05:07', '2023-07-10 18:05:07', NULL),
('3f818046-ecba-4015-9d3e-52ee49bd3b2f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8dbc5dec-9fb9-4c0c-b55c-1e436634e288', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-11 15:16:26', '2023-07-11 15:16:26', NULL),
('41918bb5-c47b-4c36-82c2-96088558628c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b842a4a8-9784-4ede-9390-59ff0a72f14f', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-06 18:51:43', '2023-07-06 18:51:43', NULL),
('41ddc904-b988-47c8-a51f-fcf109629481', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b2085533-7bc0-4043-9940-7c55925e213e', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-10 10:43:47', '2023-07-10 10:43:47', NULL),
('424c61c7-6f30-42ee-bb53-6612ff3f136b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dfe48138-3e4c-40be-9515-8e0eaf8b12ac', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-14 15:33:13', '2023-07-14 15:33:13', NULL),
('42a7f59e-12fa-4a2c-99fb-1da4eb5b11cc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a7c1c4b0-5990-4fbb-baf2-4b353d37a313', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-05 17:55:25', '2023-07-05 17:55:25', NULL),
('42ca918a-f543-4208-9fd8-3fa063762306', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c1e910e5-2da0-4286-a674-9d1995ae35d7', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 110.00, '2023-07-10 15:27:54', '2023-07-10 15:27:54', NULL),
('45619ee7-afd7-4ee5-a80a-eca8b0db3e06', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ff54dee1-3f41-40fa-a7d7-e3a5adc63991', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-05 10:06:38', '2023-07-05 10:06:38', NULL),
('459e1f8c-762b-4a8d-9cda-39527741d737', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3b0e2de4-09a5-405b-8d79-fbfa8f837384', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-15 13:02:07', '2023-07-15 13:02:07', NULL),
('460870cc-c61e-4531-b844-7b0065ea9b0a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '691062ce-21b8-4fde-8e78-df1683f14aff', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-06 17:40:41', '2023-07-06 17:40:41', NULL),
('47592802-5581-4343-86f6-0297ed68cef8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c9c230bd-0854-4240-ab60-bf93e081beaf', 'd2acf8d7-55bf-418d-b0be-cb5a815343c7', NULL, 1, 170.00, '2023-07-10 18:33:27', '2023-07-10 18:33:27', NULL),
('497887d1-c33e-44ac-8c0e-c63e5f7f273d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '242ca063-6633-46a3-826c-f8de8daf61bc', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-07 18:03:09', '2023-07-07 18:03:09', NULL),
('4b018378-b66c-4a64-a536-e648016148fa', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1359340c-894b-4df3-ad41-87272ba49e38', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-06 18:56:29', '2023-07-06 18:56:29', NULL),
('4b2fc422-5c60-433d-8089-cff5bbdd34bf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'eb816f3c-1109-492c-a8d0-5068f0d6d9cc', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-11 12:11:47', '2023-07-11 12:11:47', NULL),
('4c271baa-7e72-46d2-9be3-4eb51071ea64', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c37975d7-71fe-4807-8db2-3d9e43c8290d', 'e96c5407-a14b-4a47-9812-78d0aac537e8', NULL, 1, 30.00, '2023-07-14 10:02:25', '2023-07-14 10:02:25', NULL),
('4c2d02cd-9f89-413d-a9cf-8794dd4e62e0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c27b8ef1-a4e9-4248-bd85-b91cc454cec8', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-18 09:06:07', '2023-07-18 09:06:07', NULL),
('4d4930c3-c9f8-457f-b999-a2da0b290480', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f81d0e6b-10f6-428f-8c56-96e302a641a6', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-10 18:58:45', '2023-07-10 18:58:45', NULL),
('4dc7c8e4-d9cb-4f7e-9b45-d767ffee270c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0760802e-f555-4eb4-99ce-45e2348adb02', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-12 10:03:54', '2023-07-12 10:03:54', NULL),
('4e35686b-bebe-48d7-938a-3e974f577268', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '33628b1d-4ce4-4f99-9f3f-cb8f7b4c37bb', '5bf55309-ccfc-4fb3-9e8e-fef8ef6bbc0c', NULL, 1, 130.00, '2023-07-05 15:37:32', '2023-07-05 15:37:32', NULL),
('4e56ecd9-85c8-4cae-a980-49877351ef7d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5a07e1fc-ec4f-43a4-9cd5-f49893f0e82c', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 110.00, '2023-07-13 10:25:05', '2023-07-13 10:25:05', NULL),
('4f0cc585-a83d-4711-8256-e93e3be45c83', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a4c10a0a-c96e-4f41-907b-d8be466b007e', 'fd750b2e-54a0-4cd7-a0e9-092cafd6aa16', NULL, 1, 120.00, '2023-07-05 10:49:27', '2023-07-05 10:49:27', NULL),
('4f81bf05-c014-493e-8f97-c21551c9c89c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '095e21f3-1312-4fdb-8f4e-c3f5716d5f3c', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-19 23:50:44', '2023-06-19 23:50:44', NULL),
('4fada5bc-8a85-4e07-b8f2-b4cd305a4e3b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5a78f087-725f-4cfb-8300-d8a81ab600c4', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 130.00, '2023-07-05 18:14:41', '2023-07-05 18:14:41', NULL),
('4fd99054-591e-4778-97dc-c6188657d30b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '242ca063-6633-46a3-826c-f8de8daf61bc', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-07 18:03:09', '2023-07-07 18:03:09', NULL),
('4fe286bb-987d-4df8-9e7e-4f85e2cdd1fe', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b9d3199f-b04a-49a5-b634-6c3de2ae87fa', 'f6996f60-91c3-4014-be8b-d0e45a3b3c9d', NULL, 1, 130.00, '2023-07-10 18:45:19', '2023-07-10 18:45:19', NULL),
('5043a838-2cb1-4d88-bcf5-9199253ab45b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4bbaa1bb-725d-4773-8ab7-720a4f3c424f', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 110.00, '2023-07-14 17:10:22', '2023-07-14 17:10:22', NULL),
('505e263b-de65-4bde-859f-671eb9b7e55e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '9002bb9c-179c-492e-9a5d-4becfd4b5b18', 'dc46e13b-d0c2-4acc-96ce-985952c69f22', NULL, 1, 110.00, '2023-07-11 15:38:35', '2023-07-11 15:38:35', NULL),
('50722aec-ebaf-4a1d-a62d-610151dad70c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'bf3cfef6-681f-41a2-9640-1ffbfb5753e1', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 110.00, '2023-07-05 15:31:06', '2023-07-05 15:31:06', NULL),
('50eb80fb-03ad-4b8c-b91d-307bad62837f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f2ea6dae-45ac-4c7f-8f43-a752fa388daa', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-17 12:41:14', '2023-07-17 12:41:14', NULL),
('513795d8-408d-4ac9-8917-1b4576020500', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1da9b6be-f9d0-40ac-9afc-337c88568588', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-11 15:24:49', '2023-07-11 15:24:49', NULL),
('516cbd41-4b79-4207-b0c7-79bdb4e8cc65', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5a0ce290-ab9c-426c-a614-20583496c0b6', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-05 15:50:57', '2023-07-05 15:50:57', NULL),
('516fbf15-2cd8-4db3-a588-166bd6060037', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '30ed27e9-1657-4288-b5d9-43ea3fc2799f', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 110.00, '2023-07-18 09:09:45', '2023-07-18 09:09:45', NULL),
('52826717-2c0d-42a8-a2a0-4ae994e73d83', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6f30ec9e-2e2b-4576-a6b4-4d7b92ca3b5b', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 120.00, '2023-07-07 18:42:04', '2023-07-07 18:42:04', NULL),
('53456709-12d1-4850-bea8-ffd4a0d3aa8b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '057a069c-18d0-4d8b-9f18-30aae9a0fa54', '7ba2cc21-dc5b-42f8-b542-baaeb41443f1', NULL, 1, 160.00, '2023-07-07 17:49:02', '2023-07-07 17:49:02', NULL),
('540d716a-4827-42dd-8c86-a085061030cc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '34afdefd-d22b-47a9-8b7e-4334ad81d3a0', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 110.00, '2023-07-05 09:48:40', '2023-07-05 09:48:40', NULL),
('54d3c623-7991-47ad-ac45-b1836b79c897', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c8ed2c84-e626-4a95-8287-6315f43d4335', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-11 17:48:32', '2023-07-11 17:48:32', NULL),
('553141fc-b83b-4d16-a33f-16da1c6a9af6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3f1ef205-ce4d-4109-a5c4-2b10c99e22da', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 10:13:27', '2023-07-07 10:13:27', NULL),
('5579c783-d9b2-48df-8b7a-53aa4d65ac12', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b9f82f9d-dd2a-4b61-9971-117de3fbefcc', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-10 17:02:20', '2023-07-10 17:02:20', NULL),
('55a732d0-095c-49a1-a8a2-1ea91d9032a8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'bc15c82b-7477-419e-b5bf-6776673d5bb7', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-10 09:30:18', '2023-07-10 09:30:18', NULL),
('5678389d-726c-449f-9fa4-7b0f178a147d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4f1f2022-7abf-40f1-82d4-d2f356b6d470', '6657dd11-3a99-41e0-97fa-9a27ce60243d', NULL, 1, 150.00, '2023-07-10 18:28:24', '2023-07-10 18:28:24', NULL),
('570fe21f-ed48-4a7e-9bfc-b48eea9095d0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'cb350c03-06e4-4c55-b4a7-575b8d66da14', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-13 17:46:51', '2023-07-13 17:46:51', NULL),
('5765fbb0-5a1e-4b0f-a7aa-66218aef642d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '06c2e684-ff9e-49c6-8bc9-21131fd76971', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-17 15:49:13', '2023-07-17 15:49:13', NULL),
('57a001e7-6548-484e-b01e-ab9339035337', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '568c3df5-d26f-475f-b8da-af832ee51d28', '45047fbe-d7a7-4d5e-8a99-38b335721f85', NULL, 1, 120.00, '2023-07-05 10:09:14', '2023-07-05 10:09:14', NULL),
('57a85eac-e2d8-4cd2-a4a1-5d735a04939e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a3b7dc6b-4762-4967-b4e6-d96ed1e9f588', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-10 11:47:32', '2023-07-10 11:47:32', NULL),
('5814cbd4-8687-4e2a-8c65-664c0068dbeb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ffa89ade-3e3a-4277-8324-37d32ee85242', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-11 18:51:43', '2023-07-11 18:51:43', NULL),
('58eec528-6ccb-4d59-9ac3-517ea4eeaf2a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd1f7bd78-eec5-47eb-a260-20dc395ecb85', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-13 08:57:49', '2023-07-13 08:57:49', NULL),
('593d3efb-79f9-4d76-9018-c9fe22c2bd1e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b3b1ed23-0849-4dbd-853a-96899a9a4405', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-10 17:18:37', '2023-07-10 17:18:37', NULL),
('5a3871a9-ffb5-463a-b729-69c64cfaf48e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '49f0676a-3d57-4e28-adcd-a2598129252a', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 130.00, '2023-07-07 18:40:29', '2023-07-07 18:40:29', NULL),
('5a50dc44-a0cc-40fa-b8dc-a37cdddb12ff', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8e0e6154-c9c5-4aef-8a07-1ecabab42ae7', 'a150455a-7664-4019-aba3-968d378e6405', NULL, 1, 100.00, '2023-07-13 11:50:30', '2023-07-13 11:50:30', NULL),
('5a87fcd2-5747-43f4-9964-901790f8ca20', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd1e45907-920d-47cd-80df-502e08c2dc5d', 'c76a2668-0764-40f4-ba23-78e18e5cedd2', NULL, 1, 120.00, '2023-07-07 17:19:28', '2023-07-07 17:19:28', NULL),
('5daa9691-2e81-44d0-bf9a-b347bf55df39', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '963ae159-5749-4cac-9053-902ac57dab50', 'cf9b3bfd-9171-4539-bc17-7a9decba2c38', NULL, 1, 850.00, '2023-07-18 10:13:29', '2023-07-18 10:13:29', NULL),
('5e1db654-a741-45fe-bcab-dd6ab7d08c26', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd03533c0-ea9f-4ca8-bcac-b8bbc22f0d8f', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 120.00, '2023-07-07 18:33:00', '2023-07-07 18:33:00', NULL),
('5ecb92e7-a7cd-4c4a-8068-cb3609703288', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '540d57a1-427b-4a67-b284-c192fdd17dfb', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 120.00, '2023-07-05 16:57:10', '2023-07-05 16:57:10', NULL),
('5f53f4e8-93a9-42a0-aac6-163fd7b4382f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8e97ae07-3f23-418d-b94c-53c65ab08f13', '210f04fb-bb4f-4627-9fab-2116ee57e5b3', NULL, 1, 130.00, '2023-07-13 15:13:44', '2023-07-13 15:13:44', NULL),
('5fa5f482-30d7-4a1c-b413-e770cb29433e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ce35367e-b006-49b4-a325-53a52971130b', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-10 17:07:59', '2023-07-10 17:07:59', NULL),
('603664e9-2e27-4786-9496-533bb25d6af3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b5d56936-f308-47ad-9f0b-d7f5ca8b88d0', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-06 17:00:41', '2023-07-06 17:00:41', NULL),
('61717eb2-29ad-4c9f-a53b-d08682d5179e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dae2e888-1cb5-4c34-99b4-68f64c2761e5', '210f04fb-bb4f-4627-9fab-2116ee57e5b3', NULL, 1, 130.00, '2023-07-05 11:45:36', '2023-07-05 11:45:36', NULL),
('62414000-9950-4181-ba08-eba246231cf7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '878f4796-b3cb-4c16-85ef-0e87a61a605d', 'e96c5407-a14b-4a47-9812-78d0aac537e8', NULL, 1, 30.00, '2023-07-05 16:23:29', '2023-07-05 16:23:29', NULL),
('6274a9ee-503c-4e89-a415-f7af851825d8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '26af218b-cd54-454b-b44c-10b62e2500d2', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-06 11:26:19', '2023-07-06 11:26:19', NULL),
('6307a74e-14e3-4bbd-a97d-dfb60e41ec1c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a94785ec-1919-4547-bf6f-7bcd3680d54a', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 120.00, '2023-07-12 17:36:24', '2023-07-12 17:36:24', NULL),
('63887264-1a4b-49f5-b808-7ed479519dc2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '29880952-892b-481e-b0ed-d86bacda12e1', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-06 19:04:32', '2023-07-06 19:04:32', NULL),
('63e3ec04-9fce-4080-bf84-b288b8e75ebd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '75b89c20-d8d8-409b-b038-e0254b79a564', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-06 08:58:45', '2023-07-06 08:58:45', NULL),
('640dd8a6-b651-48e6-a906-f8e01a7d58e5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '87c3c0b4-bf99-490d-abdc-4a1b653772f5', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-18 10:06:55', '2023-07-18 10:06:55', NULL),
('649b5551-7acb-43df-ba3c-4670b3ec50a8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '082fab18-ac72-4b13-8ac6-4276e4209030', '45047fbe-d7a7-4d5e-8a99-38b335721f85', NULL, 1, 110.00, '2023-07-11 15:06:32', '2023-07-11 15:06:32', NULL),
('657fd8e0-cfc6-4701-9bdf-c5667d9df6c9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3466dfd9-ac6b-4fab-8ec5-c4861fa1bc32', '6657dd11-3a99-41e0-97fa-9a27ce60243d', NULL, 1, 160.00, '2023-07-13 16:33:54', '2023-07-13 16:33:54', NULL),
('65838951-895e-4f87-8e96-258a76a5bb09', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c28b6125-5e99-41a3-bbaf-363e7caa417c', '75ffe702-9e09-4545-99df-5b76b176aaee', NULL, 1, 130.00, '2023-07-10 17:24:48', '2023-07-10 17:24:48', NULL),
('6598654b-90e8-466f-af07-146d4d664be0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1a6d6832-efb9-426c-be61-c637aa40686a', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-18 09:15:02', '2023-07-18 09:15:02', NULL),
('659f5eb2-6a75-4c5d-aa24-1652571ff021', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '15470ce0-5059-4e91-b9e0-8c66eca24755', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-07 11:30:14', '2023-07-07 11:30:14', NULL),
('667f9fba-f804-4c7b-af58-cf91d1219212', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd896086f-4d3e-4239-bdad-eb6b49323977', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-05 09:38:11', '2023-07-05 09:38:11', NULL),
('676cdfe0-4194-4692-8874-7acfa72843bd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '68f55138-968b-4ce0-b90c-1953e6f32a3a', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-05 15:57:52', '2023-07-05 15:57:52', NULL),
('6777a332-1354-4957-a2b2-f347cde17352', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '9eb08d88-4a15-44ec-b268-c721b576e013', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 130.00, '2023-07-10 17:04:06', '2023-07-10 17:04:06', NULL),
('67823372-4fa4-4299-b4aa-f387c63c48c5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'cdde7566-1939-4453-89e1-b45a0f4726b0', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 130.00, '2023-07-13 08:44:37', '2023-07-13 08:44:37', NULL),
('67c84680-69bb-4d39-8788-226341ade198', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '62f09ae5-a046-48d7-904f-3671f5438658', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-10 18:47:00', '2023-07-10 18:47:00', NULL),
('67ce2bd8-2e2b-489d-b26a-a76c7b3cbb18', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '238f4502-d1fd-4050-97f5-44ccd971d076', 'c76a2668-0764-40f4-ba23-78e18e5cedd2', NULL, 1, 120.00, '2023-07-05 15:41:40', '2023-07-05 15:41:40', NULL),
('6941e831-f72d-4973-be23-25f72b723dfe', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7ea4e92e-dc4c-48ac-a919-adc8ff044ead', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-05 19:28:32', '2023-07-05 19:28:32', NULL),
('6b2d503e-e3ce-4819-b5dd-4830e696fe2e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5d5f3502-0ad7-4e7d-b064-210ff6b1f0ad', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-12 19:02:15', '2023-07-12 19:02:15', NULL),
('6b41a76e-00ff-44e3-99f8-8e603b0f6912', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0e2e10cd-4c60-409a-a20a-130bdad989e2', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-14 18:31:14', '2023-07-14 18:31:14', NULL),
('6b788c65-eaf1-4227-8845-31c04ef0446d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5041fa37-0a90-4a21-86c3-c6a8e55e1ed8', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-15 13:03:40', '2023-07-15 13:03:40', NULL),
('6bb0e6ec-cce2-45e7-b9e3-51e29918df30', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b36e0270-641c-4159-b979-fc1b9691c03d', '4f5eea9c-0126-455b-afc9-f33c56629ccc', NULL, 1, 290.00, '2023-07-05 16:43:04', '2023-07-05 16:43:04', NULL),
('6bfe654e-3047-4274-b9f6-20066843ac27', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f81d0e6b-10f6-428f-8c56-96e302a641a6', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-10 18:58:45', '2023-07-10 18:58:45', NULL),
('6c4cdc3e-eb1e-4e20-8c81-bdaed8081e70', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '83d70a6e-fbe7-4161-98fa-087070e1287e', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-11 17:54:26', '2023-07-11 17:54:26', NULL),
('6c748b15-e992-4207-bb01-e56c976a6aac', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8d8366e6-3319-41c5-8d2e-c200e0335478', 'dc46e13b-d0c2-4acc-96ce-985952c69f22', NULL, 1, 290.00, '2023-07-07 15:36:09', '2023-07-07 15:36:09', NULL),
('6caf80f8-8888-4b2e-9bb5-ffba87773680', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a8d7a284-fe05-45f9-91d6-489be450fca9', '45047fbe-d7a7-4d5e-8a99-38b335721f85', NULL, 1, 120.00, '2023-07-06 11:09:01', '2023-07-06 11:09:01', NULL),
('6ddeef64-768c-4902-bf4d-7721a88c5961', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '10b05a2c-44b4-4376-88d9-60c0827563df', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 120.00, '2023-07-11 19:02:05', '2023-07-11 19:02:05', NULL),
('6e1b10ba-2705-45fc-a415-a8a664c41d7d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5fbaa4da-22c9-403f-9f0c-1cc1eaa84045', '75ffe702-9e09-4545-99df-5b76b176aaee', NULL, 1, 130.00, '2023-07-11 11:16:50', '2023-07-11 11:16:50', NULL),
('6e73a397-06f5-4628-b839-ad50966ee7bb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a24f9843-de69-443a-bafb-2204550d7697', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 120.00, '2023-07-10 19:10:16', '2023-07-10 19:10:16', NULL),
('6eb28a3a-6224-4e46-8593-a5d80baae30c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c75daeb5-ffa7-4192-b755-348209ddffb8', '60a220a4-f647-4523-b1be-610ea7badc1e', NULL, 1, 80.00, '2023-07-10 16:30:33', '2023-07-10 16:30:33', NULL),
('6f8bc035-09f9-4d99-a425-76ef95b5d697', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1e5c73d1-847f-4109-9a08-f731ea5b0aab', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-10 16:11:19', '2023-07-10 16:11:19', NULL),
('6fd2b724-ea56-444a-9906-96077ab1c3ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ee32f921-8683-4413-a4bb-819abe6dd056', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-12 18:58:46', '2023-07-12 18:58:46', NULL),
('70835458-2151-44c5-8856-e3fb073a6e86', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'fd373663-1247-4ffa-bce2-23cd7685fa2b', '344c7156-015a-4e67-9b9d-e3641766ad62', NULL, 1, 140.00, '2023-07-11 09:02:57', '2023-07-11 09:02:57', NULL),
('70e7bdb7-62fb-4299-9b19-72cdc5b7c830', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '403527a0-b698-426b-9f0b-3794e3960276', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 110.00, '2023-07-07 18:10:00', '2023-07-07 18:10:00', NULL),
('714013bc-66ee-4863-b604-3d130c7ec2e4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ff376470-7ead-48c5-aa4a-a94c0908de97', 'f6996f60-91c3-4014-be8b-d0e45a3b3c9d', NULL, 1, 130.00, '2023-07-05 16:12:10', '2023-07-05 16:12:10', NULL),
('71c562d0-9c8b-450d-95a3-e7d5940c2d42', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '49773236-1476-4816-8812-0df44a8cb00f', '956ed2ec-ae6b-449b-825c-179592116c6b', NULL, 1, 120.00, '2023-07-13 11:12:22', '2023-07-13 11:12:22', NULL),
('72189016-8ce7-4c6e-b529-fc80f29177b0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '242ca063-6633-46a3-826c-f8de8daf61bc', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-07 18:03:09', '2023-07-07 18:03:09', NULL),
('72b57520-c99b-453d-9983-fe2b5dc36436', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f1ce8422-5cdc-4657-9503-8e210102bb1b', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-10 09:21:21', '2023-07-10 09:21:21', NULL),
('72de3ac2-bb9b-45d4-8752-0938bd01cda3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e4c6aaae-8fe5-4c6d-9e95-b7e6e304306d', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-05 17:26:03', '2023-07-05 17:26:03', NULL),
('7316e1db-3752-4efe-91f8-00b7176d055f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a0aab820-7fc6-4291-adb4-8a03d16fb332', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 110.00, '2023-07-05 16:30:10', '2023-07-05 16:30:10', NULL),
('741c6d49-dc2a-4e41-beca-690c6ca59496', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '17b19982-1c9a-4e0c-b1be-49007e9aee35', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 120.00, '2023-07-11 10:59:29', '2023-07-11 10:59:29', NULL),
('74bdd699-bb4b-4271-b9c7-295b19a7ae19', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '101167ed-c7f9-4d12-abf8-2b9c87ec0c18', 'a150455a-7664-4019-aba3-968d378e6405', NULL, 1, 120.00, '2023-07-05 17:37:31', '2023-07-05 17:37:31', NULL),
('74e5add1-09ed-46d0-a7ad-27fab7b1644a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '85902545-67bf-4ca7-9419-70aec0eb499b', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-10 17:59:17', '2023-07-10 17:59:17', NULL),
('75e49d5e-9ba6-4326-a00f-503e178cba51', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c21e3c74-1e07-4069-86b9-2e6d6d6654c4', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 120.00, '2023-07-07 19:41:35', '2023-07-07 19:41:35', NULL),
('76a5db9f-0f76-4401-8d40-a4990335d295', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'cfff1905-0929-4c7c-8ca6-6b5f1e0602c9', '201fde81-729c-4179-90dc-b1b945757010', NULL, 1, 250.00, '2023-07-06 11:32:34', '2023-07-06 11:32:34', NULL),
('76cd865f-492f-4f8a-8cb3-9d055c125a7e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '29880952-892b-481e-b0ed-d86bacda12e1', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-06 19:04:32', '2023-07-06 19:04:32', NULL),
('773b239a-6fce-40c5-8bcb-13bee5e4018f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '963ae159-5749-4cac-9053-902ac57dab50', '60a220a4-f647-4523-b1be-610ea7badc1e', NULL, 1, 80.00, '2023-07-18 10:13:29', '2023-07-18 10:13:29', NULL),
('77b7a199-c1ca-4dbb-b5df-4c1bd3817ff5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '86fcade6-cd36-4ec3-86dd-bfe30a95bbbb', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-07 17:10:15', '2023-07-07 17:10:15', NULL),
('78a1369d-743f-4c43-a99c-ee4e7b08f4ba', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a23c137e-5d54-4e34-ae64-59e3f8744550', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 130.00, '2023-07-05 11:13:31', '2023-07-05 11:13:31', NULL),
('78f47620-37a9-416a-9bea-5ea023185e40', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e7d89dcf-6a3b-49cf-a723-05fff6201ce8', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', NULL, 1, 30.00, '2023-07-11 17:24:58', '2023-07-11 17:24:58', NULL),
('797b41c8-0744-4be0-a58e-ba0cafd45669', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5d508f97-d4cb-4c3c-99cb-1469fc008682', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 130.00, '2023-07-14 17:06:57', '2023-07-14 17:06:57', NULL),
('799d8084-9748-4c90-ad83-91fdff861b61', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '77a6e290-4f55-487c-a542-71067856648f', '0ca90bfc-0ec6-11ee-be56-0242ac120002', '502edb0b-3139-37f5-a3ab-5123ca60b138', 1, 40.00, '2023-06-20 23:35:32', '2023-06-20 23:35:32', NULL),
('7a4c43a8-a9b0-4754-93ce-c087ee5f16de', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c969bd2a-7d73-4760-97af-bade43099ba9', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-10 08:45:11', '2023-07-10 08:45:11', NULL),
('7ac75af2-fddd-43ac-ac74-118c99d3544b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '630ce700-6ac7-4189-a214-f7b994095512', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-14 19:10:47', '2023-07-14 19:10:47', NULL),
('7b00d824-fd6f-426f-bc8f-0c674640930a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '890ad0a5-b370-428b-877f-8642072b6c15', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 10:16:54', '2023-07-07 10:16:54', NULL),
('7b3323c0-c883-40c8-a531-cbc4c72072b3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '383070df-f5a9-4d3f-9768-c90d1e6d971b', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-10 17:57:55', '2023-07-10 17:57:55', NULL),
('7d6bf825-482e-4dcd-98b7-8d07a55b32f9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8d38d7ab-a1f2-4c0a-9494-5315bc5a6851', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-06-22 11:11:55', '2023-06-22 11:11:55', NULL),
('7e61ca35-cc2c-4326-93af-3531484f1639', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd3afb8e4-6d3f-4977-89fa-b79183c05cf9', 'a150455a-7664-4019-aba3-968d378e6405', NULL, 1, 120.00, '2023-07-10 18:38:11', '2023-07-10 18:38:11', NULL),
('80256f15-7496-4414-9a33-7cc098fc83ba', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0a1ab5c7-7505-4cb2-b872-13bd52685d4b', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-07 17:55:07', '2023-07-07 17:55:07', NULL),
('80aba9ad-443c-4686-8167-765f636f1f17', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e7dc9905-bc7a-401c-b790-45b107d9e193', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 110.00, '2023-07-05 16:32:34', '2023-07-05 16:32:34', NULL),
('81ae2080-570c-4f16-ac5e-02902b940c5e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1454cdb0-f9bf-4347-a27c-691aac1d015a', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 120.00, '2023-07-07 18:48:31', '2023-07-07 18:48:31', NULL),
('829f2d99-7bcb-4068-8c2f-741341462365', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5a1767ec-e223-426c-be9a-07282556789e', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 120.00, '2023-07-05 11:31:59', '2023-07-05 11:31:59', NULL),
('82e4d187-c669-420c-a3ac-c7c4e9020594', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3af7105f-cf05-4a47-be21-768b1f2e14fc', '956ed2ec-ae6b-449b-825c-179592116c6b', NULL, 1, 120.00, '2023-07-07 11:51:14', '2023-07-07 11:51:14', NULL);
INSERT INTO `pagos` (`id`, `id_periodo`, `id_recibo`, `id_producto`, `id_descuento`, `cantidad`, `monto`, `created_at`, `updated_at`, `deleted_at`) VALUES
('84914c03-9296-4313-905d-95a5b53db18a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5b63e2a2-b8ef-4798-8066-b78024a71ae4', 'fd46a93e-3200-4338-86dd-44bd07da12a3', NULL, 1, 140.00, '2023-07-06 17:15:06', '2023-07-06 17:15:06', NULL),
('849574de-a3c9-46b2-9648-0feeab2b395d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '36ca7419-720a-4e0f-bb0d-d5e6b1408154', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-10 19:08:00', '2023-07-10 19:08:00', NULL),
('8576797f-b23d-4c7d-8df6-1c9eed899364', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1f3d522e-68e9-47c9-9f74-2018984c4db8', '210f04fb-bb4f-4627-9fab-2116ee57e5b3', NULL, 1, 130.00, '2023-07-12 09:27:10', '2023-07-12 09:27:10', NULL),
('85c6011f-5c1e-46bb-b480-08e5fbb24610', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '987d3c59-2f15-4a40-b7bf-6f393b5fc968', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-10 18:18:32', '2023-07-10 18:18:32', NULL),
('85f19b20-671b-45bd-99a7-f26d58a98579', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '2f491c04-3ebd-4090-89aa-ec97df619d26', '956ed2ec-ae6b-449b-825c-179592116c6b', NULL, 1, 120.00, '2023-07-11 18:46:13', '2023-07-11 18:46:13', NULL),
('86403922-4ed0-4a13-9500-203f0c7eea69', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dc81659e-b304-49fd-904e-c1e0fa06dae8', 'fd46a93e-3200-4338-86dd-44bd07da12a3', NULL, 1, 140.00, '2023-07-10 19:00:28', '2023-07-10 19:00:28', NULL),
('87233ff9-5651-46cd-8201-443bd4148d82', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c49e0beb-69ab-417b-9513-36d3eae2088b', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-06 12:34:43', '2023-07-06 12:34:43', NULL),
('872c2126-13ad-479f-8044-e07c5a3a1edf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '43e40469-ba05-46d7-ade3-95fd20245d81', '393c3bb1-5d52-4c0f-a645-56dc4663ad63', NULL, 1, 140.00, '2023-07-10 18:49:19', '2023-07-10 18:49:19', NULL),
('879a7a93-d365-4ede-a863-c703cf95de6d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4edf2fe8-76db-49db-8028-99eaf22405bc', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-11 18:22:53', '2023-07-11 18:22:53', NULL),
('87e2ac45-1956-4d1d-a9f2-1ef0dc1dd08c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ca5a79cb-90cd-42af-9c3b-5880c138f2eb', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 130.00, '2023-07-17 11:41:42', '2023-07-17 11:41:42', NULL),
('87ece03d-34bc-4911-9f06-a89b2ebd28fd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '52efcd20-121c-42f7-8ab6-37ff8f03cd6d', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-17 12:32:55', '2023-07-17 12:32:55', NULL),
('8966a133-791e-4f69-81d5-04f88fc9b0dc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e70c03c7-d812-43ab-a650-5b6381c4176e', '45047fbe-d7a7-4d5e-8a99-38b335721f85', NULL, 1, 120.00, '2023-07-12 10:10:44', '2023-07-12 10:10:44', NULL),
('8a0746de-7fa9-416e-ba7c-44c3839c1b6b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8831af4f-be2a-412a-b4ff-abf9f3a4db6b', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-05 17:58:29', '2023-07-05 17:58:29', NULL),
('8bc4f0b4-64a4-4328-a380-383e4e4de3db', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7a65b25e-8ca4-4cd5-be90-a98b8a401fbe', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', NULL, 1, 40.00, '2023-07-05 17:06:02', '2023-07-05 17:06:02', NULL),
('8cb0dfcb-fd52-4ab2-81b1-844cb95ac7dc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '558eb233-a281-446b-be17-c909674762a9', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-06 10:24:53', '2023-07-06 10:24:53', NULL),
('8d5f98d4-0ae9-480c-bee4-d39a56efafba', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8c3e5134-a28b-4f18-b98d-802793096e73', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-07 16:51:38', '2023-07-07 16:51:38', NULL),
('8e3c15af-c652-49be-88b5-c9dc5af88965', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3f277c27-2ea3-4b85-9a57-10acb157ad57', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-10 08:42:36', '2023-07-10 08:42:36', NULL),
('8e48cbf2-954b-4906-ab9e-552aa829e448', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '181f97ad-ae1b-41ed-9852-dfb110331448', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-12 19:06:14', '2023-07-12 19:06:14', NULL),
('8f8e0db0-3440-4f33-b692-e672ec7d14af', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3a753682-7e71-47e2-aca8-f16ab20794f2', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-05 15:22:33', '2023-07-05 15:22:33', NULL),
('901e28ca-cc23-4972-92a0-986b38101bc7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '2dc74c79-9cb7-4bf7-b999-8e5d19caad96', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-06 15:55:06', '2023-07-06 15:55:06', NULL),
('917fc849-8444-4468-9d8f-69f3ec21434c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '842e5780-382b-415e-8e1a-96aef7ecd55e', 'c76a2668-0764-40f4-ba23-78e18e5cedd2', NULL, 1, 120.00, '2023-07-05 15:34:21', '2023-07-05 15:34:21', NULL),
('93c061e9-8c8a-4a60-8df9-f14d6ceec22f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0e571d21-cf07-4522-8236-ec25b7dd0aff', '7ba2cc21-dc5b-42f8-b542-baaeb41443f1', NULL, 1, 160.00, '2023-07-07 10:36:16', '2023-07-07 10:36:16', NULL),
('9412e7ba-8042-4e74-897c-de5451cf11c9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'fb29b010-1773-4dad-8f20-d9c0e5bf7770', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 60.00, '2023-07-13 09:59:26', '2023-07-13 09:59:26', NULL),
('95996e6d-20b9-465b-a975-c7d9d252f270', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '719e4fbb-071c-4cea-afb6-4596f84c66a5', 'cbf0a77e-850d-47ea-9829-e3b27cf23df7', NULL, 1, 1600.00, '2023-07-14 11:41:18', '2023-07-14 11:41:18', NULL),
('96b984dd-2110-4ad3-9c06-8b5b2e520a8e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '72db36c3-3e04-402d-ab14-9c0aefaba51b', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-07 18:12:04', '2023-07-07 18:12:04', NULL),
('96bc869e-4741-47c6-b78c-fe4b200d7790', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '84028519-81b1-4e88-9262-60d15e267f7f', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-05 10:35:32', '2023-07-05 10:35:32', NULL),
('988b0618-1834-4d88-972a-1aebc2a93df4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6358d22b-7cb7-4462-b2e0-bda5195bdd9e', 'e96c5407-a14b-4a47-9812-78d0aac537e8', NULL, 1, 30.00, '2023-07-17 10:15:33', '2023-07-17 10:15:33', NULL),
('990eab26-08f2-434c-bc54-1b2ccabc65aa', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8c3e5134-a28b-4f18-b98d-802793096e73', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-07 16:51:38', '2023-07-07 16:51:38', NULL),
('99b58388-f824-4214-992c-61f5ed2ab437', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b7211b0f-5012-4e77-aefa-50973a046f7b', '4e66fdd1-05c0-4741-9215-6f531cd2d412', NULL, 1, 120.00, '2023-07-06 18:58:26', '2023-07-06 18:58:26', NULL),
('99e23fb5-06ae-4624-84b7-0b5d00d49669', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '030e1680-a841-47f9-b561-5c8437f418aa', '0ca90bfc-0ec6-11ee-be56-0242ac120002', 'f905457c-8abf-355b-8611-e18413534979', 1, 25.00, '2023-07-04 00:18:14', '2023-07-04 00:18:14', NULL),
('9d26bd20-f833-4af1-bbd2-1ed2444482b1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6f44a617-db37-47f6-9367-9b29eb4a8432', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-06 15:46:27', '2023-07-06 15:46:27', NULL),
('9fd89db6-3066-4d88-beb7-9a6cd73f4c12', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e964e03f-5734-43ef-85bc-52028a2cbd4b', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 120.00, '2023-07-12 17:35:23', '2023-07-12 17:35:23', NULL),
('9fe3e17f-3350-494e-b02b-06b253709c1b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '898e460f-3890-4127-9849-199a1b002c5e', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-10 18:36:16', '2023-07-10 18:36:16', NULL),
('a0001d6d-1678-4b72-9bff-ea3bebbd596f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8ce8d3a6-2f5f-4c93-a973-d0cc91ac37e8', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-06 18:14:03', '2023-07-06 18:14:03', NULL),
('a0178b88-754c-4aa5-a50c-b1471907c7a0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6fc57073-f7e2-4b1f-95dd-319d8478960c', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 130.00, '2023-07-18 08:42:58', '2023-07-18 08:42:58', NULL),
('a0d562b0-e567-4b74-839e-4aaf4ee85433', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '75821ee9-ae8f-46b6-8bb6-852bc935afa3', '6657dd11-3a99-41e0-97fa-9a27ce60243d', NULL, 1, 160.00, '2023-07-10 18:23:07', '2023-07-10 18:23:07', NULL),
('a14d9a86-b10f-4e4e-95f4-cee3e702de9e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '64c3f202-3487-4548-b853-470b50a6585e', 'dc46e13b-d0c2-4acc-96ce-985952c69f22', NULL, 1, 120.00, '2023-07-13 15:42:41', '2023-07-13 15:42:41', NULL),
('a206eb77-adbf-478c-9a30-58da8adf7493', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'fe7ed414-ca0c-4395-a7fa-074bb68e01f5', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-05 19:01:59', '2023-07-05 19:01:59', NULL),
('a2939085-da7f-4f5f-bb01-4685ba9f8acb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c75daeb5-ffa7-4192-b755-348209ddffb8', 'cf9b3bfd-9171-4539-bc17-7a9decba2c38', NULL, 1, 850.00, '2023-07-10 16:30:33', '2023-07-10 16:30:33', NULL),
('a29ce29b-b849-4ca0-ad71-c593616d0ea6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '26af218b-cd54-454b-b44c-10b62e2500d2', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-06 11:26:19', '2023-07-06 11:26:19', NULL),
('a3350e22-3a27-4065-ac88-4270ef8eb57a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'bb00eecd-090c-4b23-a76f-03dc10bf5381', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-05 15:55:04', '2023-07-05 15:55:04', NULL),
('a59d264e-7b65-495a-a594-69fc087f68d3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '08f11545-bf26-4fd1-abc0-c0b84f04f1a7', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-18 09:16:09', '2023-07-18 09:16:09', NULL),
('a6a5e43d-75ea-4ec8-b147-bff23ecb685c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5e031cd0-1538-427e-bf1e-87c1f26311d8', 'dc46e13b-d0c2-4acc-96ce-985952c69f22', NULL, 1, 120.00, '2023-07-11 17:57:22', '2023-07-11 17:57:22', NULL),
('a749ffc4-a0f0-412c-86ab-8301b66a308e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1020d100-d48d-43cd-ae02-9633c860d5aa', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-06 10:06:32', '2023-07-06 10:06:32', NULL),
('a756e15f-1b6a-404b-842e-7725e4958529', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4e814039-1e95-464c-836b-a37ff8d08814', '974f2c1a-1f30-4757-908b-eb165c32db0b', NULL, 1, 140.00, '2023-07-05 16:59:49', '2023-07-05 16:59:49', NULL),
('a7c9302a-b3c1-4edb-91b6-c89a7a475911', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '16074408-1685-4773-aa72-831c675aaae4', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-07 19:10:08', '2023-07-07 19:10:08', NULL),
('a90d7bfa-d0ba-471b-8cc5-967a01bd2548', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1f151123-f538-4546-a28d-617750dbea8b', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-12 19:10:49', '2023-07-12 19:10:49', NULL),
('a926c8b6-2591-4a91-b9bd-2c6e59c20938', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '565a9ce2-077b-4e1d-9a0c-b990dec21f30', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-06 08:55:17', '2023-07-06 08:55:17', NULL),
('a98922f9-5b59-484c-b8a6-7287d00bb1b0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '565a9ce2-077b-4e1d-9a0c-b990dec21f30', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-06 08:55:17', '2023-07-06 08:55:17', NULL),
('a9c0d8bd-efd8-437b-9958-a1cc1a47483f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '639f67de-ed3f-461b-ae46-6c464371dbdb', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 130.00, '2023-07-14 17:04:27', '2023-07-14 17:04:27', NULL),
('ab39669c-1b1d-49bb-8a41-9d1855aadd03', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '96449254-0422-45ec-997b-7957c8177b8d', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-18 09:13:38', '2023-07-18 09:13:38', NULL),
('abccdef8-cedd-495a-b703-469092d3f0b9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8a9a76d9-e024-415e-9c53-0df322c6de29', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 130.00, '2023-07-17 17:05:36', '2023-07-17 17:05:36', NULL),
('ac226705-59bb-47e1-917b-97bd96974e60', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '535d0762-e3b3-46db-a14d-7a9f5b210692', '4e66fdd1-05c0-4741-9215-6f531cd2d412', NULL, 1, 120.00, '2023-07-12 18:27:07', '2023-07-12 18:27:07', NULL),
('adad44a6-9e22-4efc-b1f7-c4fb825ef8eb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'db401414-ef43-492d-a9fb-303d2eec6e31', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-07 10:23:09', '2023-07-07 10:23:09', NULL),
('adaff208-ede6-48c6-b2ed-ded9d03801c5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dfe48138-3e4c-40be-9515-8e0eaf8b12ac', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-14 15:33:13', '2023-07-14 15:33:13', NULL),
('adef0859-45fa-49c4-a1c6-dad928dac66b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b3a026fa-3cbe-49c9-bfce-a7041d73b77b', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-13 08:39:19', '2023-07-13 08:39:19', NULL),
('adef5242-8aa9-4075-9e1e-ed4bcb629f6a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '2dd38ef6-53be-4cdd-9ca0-b6fb463c0019', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-11 15:21:29', '2023-07-11 15:21:29', NULL),
('aedcdc9f-5cec-4a68-b3ad-6fb0935637cc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '9059d0d7-3672-4e73-8e9e-01678e8f7a20', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 18:54:45', '2023-07-07 18:54:45', NULL),
('af8d3c1b-e17c-4d0e-be90-c718c3a374ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '9117238e-1e74-493a-86a7-8c0bb565a7da', '956ed2ec-ae6b-449b-825c-179592116c6b', NULL, 1, 240.00, '2023-07-11 18:57:16', '2023-07-11 18:57:16', NULL),
('b0c147e5-f307-4494-9d19-c4d7924f45ab', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5a431f22-fe26-445b-a636-e54a3cbe893b', 'fd46a93e-3200-4338-86dd-44bd07da12a3', NULL, 1, 140.00, '2023-07-10 15:26:12', '2023-07-10 15:26:12', NULL),
('b1141f76-a638-4fdc-9c6b-8794f26d8de2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b955d106-41e1-48e3-a938-6cdd074dd49d', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-11 18:15:08', '2023-07-11 18:15:08', NULL),
('b15ceebd-b3c8-44d5-9020-382112515009', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '75966e01-f26e-44c3-911b-7a9cf7ba0f44', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 16:37:38', '2023-07-07 16:37:38', NULL),
('b1654f2a-f20a-4289-ae6c-f82a56174491', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '580569a1-4b68-479f-8737-031b4cd6d170', '2921d90f-dced-4056-8904-10a4812b4716', NULL, 1, 140.00, '2023-07-10 11:32:23', '2023-07-10 11:32:23', NULL),
('b3403df8-1b47-4ee5-9456-34d16585061c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7439a19a-ca18-453a-9a43-13cd9ce10850', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-10 18:16:31', '2023-07-10 18:16:31', NULL),
('b4f3976c-8016-4886-b12f-4a52435b0dd8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4164aa28-2757-473f-b08c-81aaed19e8f8', 'b5143990-fb6f-4eed-86bc-b63e4f849088', NULL, 1, 150.00, '2023-07-13 10:57:12', '2023-07-13 10:57:12', NULL),
('b589943e-9764-4ed2-9d66-18153389605a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a9c49536-d73d-42b9-b902-ed9a4e33213f', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 110.00, '2023-07-07 10:18:37', '2023-07-07 10:18:37', NULL),
('b651eb15-9d13-4216-9989-a922827a156c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8c3e5134-a28b-4f18-b98d-802793096e73', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-07 16:51:38', '2023-07-07 16:51:38', NULL),
('b660c6df-6fbd-47bb-b429-f1a4268f53f4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6f44a617-db37-47f6-9367-9b29eb4a8432', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-06 15:46:27', '2023-07-06 15:46:27', NULL),
('b6db68d4-9bf7-4aa3-a67e-b014c1db739b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5bf274ca-9255-4a12-9c49-ba99bccb4cf1', '16804df8-f4d0-44b7-ab02-43ce4a68761f', NULL, 1, 1950.00, '2023-07-07 11:20:00', '2023-07-07 11:20:00', NULL),
('b81d5077-e4cd-42dc-9501-d0bf0f3fcb8b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'c97fd50e-d2f5-4058-873d-d4bf7d08a48c', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-18 09:10:49', '2023-07-18 09:10:49', NULL),
('b8ac9f63-531a-4772-b657-915b1e802423', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7c00cf80-9fa5-444c-827f-427b561a54e3', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-07 10:19:10', '2023-07-07 10:19:10', NULL),
('ba68ceae-fe77-465b-9102-f80f8e810fc0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '18b1a4fd-c3b0-499b-88fc-2105430424de', '7ba2cc21-dc5b-42f8-b542-baaeb41443f1', NULL, 1, 160.00, '2023-07-12 17:24:38', '2023-07-12 17:24:38', NULL),
('ba9bed8d-38fc-4fdb-8914-6bae0c7c23b2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4227ace8-8a1c-49d1-bd20-b4cc7a06e574', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-11 18:10:13', '2023-07-11 18:10:13', NULL),
('baaa77b9-29ec-4321-abc0-10d67899863f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'bc96165f-61a5-45bb-8bd4-158904e744a4', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 110.00, '2023-07-05 17:52:11', '2023-07-05 17:52:11', NULL),
('bb4ba017-8819-4526-9c59-0de62fe9c8d5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '070cf5d2-46d3-4d06-aefa-b5bac95b2c89', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-10 17:42:11', '2023-07-10 17:42:11', NULL),
('bb684cf8-f8fb-4d9a-9369-41acd638eb2d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'd5dcaae2-d4ec-4e3c-8d21-619b7c5dbccc', '344c7156-015a-4e67-9b9d-e3641766ad62', NULL, 1, 70.00, '2023-07-11 09:04:49', '2023-07-11 09:04:49', NULL),
('bb8e363c-40c3-4dd5-872c-26716e1f57cb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '65c4ee61-1707-4232-a8d2-403d2ef6f827', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 140.00, '2023-07-10 18:39:49', '2023-07-10 18:39:49', NULL),
('bbf9da0b-1c74-4354-8d92-14b528b6fcef', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8aca66ac-4f55-4870-a61c-cbdf98e608fa', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-05 15:14:02', '2023-07-05 15:14:02', NULL),
('bd1300c5-b9bf-49aa-956b-9bab0c83e290', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e89b57c9-21d5-4e77-9831-98d4c25ce92a', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 130.00, '2023-07-07 18:47:02', '2023-07-07 18:47:02', NULL),
('bd9acaad-a255-4151-a07d-32da7f8d056d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dfa2f65c-f58a-4a5f-b5bb-8a47de23e0c1', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-18 09:11:51', '2023-07-18 09:11:51', NULL),
('bfd03f0a-0590-4b5c-987c-9ecd79d1db5a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6f44a617-db37-47f6-9367-9b29eb4a8432', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-06 15:46:27', '2023-07-06 15:46:27', NULL),
('bff4d440-961e-4098-a886-fbb380318cdc', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b2c852e8-0536-4b60-976e-5a2a6e9c5cab', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 120.00, '2023-07-10 19:17:33', '2023-07-10 19:17:33', NULL),
('c059a417-82b6-4e19-bd60-b6a4e5b7c2bb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f81d0e6b-10f6-428f-8c56-96e302a641a6', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-10 18:58:45', '2023-07-10 18:58:45', NULL),
('c30b5c64-eb79-469f-a460-be742ccd7035', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '490f4775-3c8f-462d-b1eb-e301d263cbc8', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-17 10:04:41', '2023-07-17 10:04:41', NULL),
('c38bc7af-5fd0-43fa-9b35-2e3e11214eac', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '36fee341-9d7b-4309-84e2-b862084f5a5f', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-06 19:06:00', '2023-07-06 19:06:00', NULL),
('c5047a55-e222-41aa-9ed5-56cc36320fd0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5f0c3895-9504-4584-8ee6-bde59b64731c', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-18 09:57:08', '2023-07-18 09:57:08', NULL),
('c55031a0-9df8-4e8f-b99e-c6c7674992d0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'dcf846d3-c4ea-4858-ae45-6aca1dce0269', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 120.00, '2023-07-05 18:36:46', '2023-07-05 18:36:46', NULL),
('c59fb0f2-7f1c-41c3-bbe7-5431213a4556', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '597c3550-f58b-4f36-84a7-b3187a1df060', '2921d90f-dced-4056-8904-10a4812b4716', NULL, 1, 140.00, '2023-07-05 12:32:48', '2023-07-05 12:32:48', NULL),
('c774d16f-49cc-4db0-af6d-0786e10f4542', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f6f2991b-dd57-4b48-b77c-e3a871d346a6', 'd7925fd0-fffe-4991-b51f-2eb3158eba31', NULL, 1, 1750.00, '2023-07-07 11:16:19', '2023-07-07 11:16:19', NULL),
('c7d4a9ef-bdb1-4690-8577-625299772dc1', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ef46e5e0-1985-44e7-bcce-af4b823298f0', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 60.00, '2023-07-05 12:04:07', '2023-07-05 12:04:07', NULL),
('c81db522-42c8-4ea0-b623-234339e2ed5d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6bf256be-9a51-4dd6-93f4-2e609a40f6f6', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', NULL, 1, 70.00, '2023-07-12 11:47:56', '2023-07-12 11:47:56', NULL),
('c996fae5-27c3-4c1c-b0a1-dbe58d36e8bd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f5068ae6-72a1-4f8d-9ae0-2070adbb5176', '45047fbe-d7a7-4d5e-8a99-38b335721f85', NULL, 1, 120.00, '2023-07-13 09:11:25', '2023-07-13 09:11:25', NULL),
('c9a5e47b-51f1-4e33-9a5f-855b4bd61167', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6b0b4a6a-db14-41d5-bbe0-179ab91aafd7', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-06 12:30:08', '2023-07-06 12:30:08', NULL),
('cacc57ab-27fe-41e1-b8d3-6e98787a5801', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89e0a66f-7374-43f9-af31-347fae246ad2', '7ba2cc21-dc5b-42f8-b542-baaeb41443f1', NULL, 1, 160.00, '2023-07-07 17:38:08', '2023-07-07 17:38:08', NULL),
('cba5e1e3-cc9c-4970-a542-78a1aa54b8d3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0f8c94ec-d235-4306-b770-3d65c014a57f', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-11 15:34:04', '2023-07-11 15:34:04', NULL),
('cc92f675-2a82-4e0b-bf48-c9d310e62a93', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '2792f1e1-c913-4e09-aa5a-81d8397e9e55', 'eaa357de-25f9-41b0-81ba-65129516aaab', NULL, 1, 130.00, '2023-07-05 15:44:23', '2023-07-05 15:44:23', NULL),
('cd768ef9-4051-439d-ae78-fb86c57d90ad', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e13727c2-e22a-4e97-9271-3996ae19fd0f', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-06 18:39:20', '2023-07-06 18:39:20', NULL),
('ce79de70-324f-4718-980f-5e4db49107fd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '72e12bb8-dc34-4aeb-8f3f-99f96f72cee1', '26d915dc-7d68-4139-8c6b-ab74d11d5b70', NULL, 1, 320.00, '2023-07-13 16:55:39', '2023-07-13 16:55:39', NULL),
('d0907048-27b9-4cdb-905e-3e77ad2236d9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'ef02f0a5-da40-4472-869c-f68b9c4df4d4', '4f5eea9c-0126-455b-afc9-f33c56629ccc', NULL, 1, 290.00, '2023-07-12 18:29:57', '2023-07-12 18:29:57', NULL),
('d101fe39-f187-4cd3-824d-f27de0e52d07', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f9f19fd8-c145-4523-b32f-64f6b4f48b53', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-11 10:52:37', '2023-07-11 10:52:37', NULL),
('d2ca6d88-a680-42eb-8daf-908845804abd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1b53da75-d2ca-4c51-8686-a9e2dfb11bfb', 'fd750b2e-54a0-4cd7-a0e9-092cafd6aa16', NULL, 1, 130.00, '2023-07-17 16:40:22', '2023-07-17 16:40:22', NULL),
('d4e8e697-ce54-42fe-9499-10a8f1f9fa96', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e87feac8-c36d-4c6d-a32c-8f8bae6d50ce', 'eaa357de-25f9-41b0-81ba-65129516aaab', NULL, 1, 130.00, '2023-07-07 16:15:45', '2023-07-07 16:15:45', NULL),
('d4eb693e-95ea-4df3-941b-4fcf27e5ab81', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e09aabb6-c08f-44d0-b163-48df855fd6d3', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-12 18:55:51', '2023-07-12 18:55:51', NULL),
('d5f69fb8-6730-4da5-b22c-f0161fa3fd96', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e4992736-df23-41ce-a8d9-8c2f19b196f9', '6657dd11-3a99-41e0-97fa-9a27ce60243d', NULL, 1, 160.00, '2023-07-10 18:30:56', '2023-07-10 18:30:56', NULL),
('d6e62b8c-18eb-4f53-b877-4507e9d95de3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '79b77a27-ae80-4a55-87f0-16e1030b17f2', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-06 09:54:35', '2023-07-06 09:54:35', NULL),
('d6eba053-4bc9-443c-8968-eee96378c9f2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b842a4a8-9784-4ede-9390-59ff0a72f14f', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-06 18:51:43', '2023-07-06 18:51:43', NULL),
('d838f31a-03df-4afa-8612-446ec79e2397', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6df54894-45f5-47f5-8164-0fda3783a30f', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-05 17:45:32', '2023-07-05 17:45:32', NULL),
('d93b22db-32d8-4414-9bf8-c1fcd0330810', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b82b4e8e-4115-42c8-8213-09a94026425b', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-07-04 00:27:40', '2023-07-04 00:27:40', NULL),
('d949375e-6cfb-4169-ab45-86524fa10c48', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '04a4c751-5e6f-4508-8991-3894d1e8b3de', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-10 18:01:40', '2023-07-10 18:01:40', NULL),
('d961e482-b1ef-47a4-b07a-9d2c36adedb2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f6b62fd4-1f5d-488b-a915-f664600b24ac', '4e66fdd1-05c0-4741-9215-6f531cd2d412', NULL, 1, 120.00, '2023-07-06 17:17:34', '2023-07-06 17:17:34', NULL),
('d9854137-e02e-47dc-b5ea-575dce8c091c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'deb2a59a-638a-4bdb-aca6-77591fe64ca6', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 17:31:13', '2023-07-07 17:31:13', NULL),
('d9943a87-4fbb-45b4-a899-f02988d3cea0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '58b8797b-1b71-42b4-8ffb-c4cb3579a944', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-06 19:00:11', '2023-07-06 19:00:11', NULL),
('da1b9a97-39cc-4c11-9964-f0f74e3d2c0c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '866b57f0-a341-4c50-8837-1c56e28ae3e4', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-10 18:37:19', '2023-07-10 18:37:19', NULL),
('da53b61e-07d5-4d6d-96b7-8a33a80f5f8c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e5ae070a-e4cd-4f4d-9d79-3be6d5d051f1', 'fd750b2e-54a0-4cd7-a0e9-092cafd6aa16', NULL, 1, 130.00, '2023-07-17 12:04:10', '2023-07-17 12:04:10', NULL),
('dace2aac-efe8-469e-8039-01064363426c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '9b978ada-be92-4e5b-afe5-9381789a4d0c', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 110.00, '2023-07-10 19:03:39', '2023-07-10 19:03:39', NULL),
('db35c373-5cfc-4c84-af50-8802f7dd213a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'bbe800ef-f8a5-4c1f-abc1-bddebeaf65f4', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', NULL, 1, 26.00, '2023-07-17 19:22:10', '2023-07-17 19:22:10', NULL),
('db4fdd8c-43c4-461f-9726-619a98416e5c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5ca9d217-d619-4ff9-89e4-e86f35720330', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-10 18:03:30', '2023-07-10 18:03:30', NULL),
('dba2d2c9-b2ad-4148-b96d-9a50d1195724', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5041fa37-0a90-4a21-86c3-c6a8e55e1ed8', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-15 13:03:40', '2023-07-15 13:03:40', NULL),
('dbbd4240-af23-47f2-b42b-c4c5ddbcd0bb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '461b0648-5fec-47a2-b07b-9b40800405cd', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-05 18:25:45', '2023-07-05 18:25:45', NULL),
('dc4b08da-7599-4bf3-8b77-b477e8b70892', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1b31fdfd-a0c5-40fa-a350-040a3be4a33f', '4e66fdd1-05c0-4741-9215-6f531cd2d412', NULL, 1, 120.00, '2023-07-05 18:41:30', '2023-07-05 18:41:30', NULL),
('dd182676-569a-4949-95a7-03036f3f4f4b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '89d9022d-f004-4522-b3bd-01da569afcaf', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 130.00, '2023-07-17 17:08:23', '2023-07-17 17:08:23', NULL),
('df30b46b-55ab-4ca6-b9fd-36048c0686a3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '672d1000-03be-4490-9660-eaf12072b7d8', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 110.00, '2023-07-10 19:19:06', '2023-07-10 19:19:06', NULL),
('df88f197-bfeb-4031-8589-ea1c940a3099', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '2692ff57-1a37-48b7-97a8-5594a981199c', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 130.00, '2023-07-12 17:53:57', '2023-07-12 17:53:57', NULL),
('df934610-1600-49eb-8cf6-c10c9a425bb6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '19d33504-cc21-4951-8324-91ecd81bbf9c', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-17 17:13:00', '2023-07-17 17:13:00', NULL),
('e0dce665-2b92-4e5b-8fed-260420716464', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a4dcf9d2-9a14-42e3-814e-efe634c22a4c', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 17:53:23', '2023-07-07 17:53:23', NULL),
('e19b15b5-d8f3-4b32-b042-ab4820b5eecb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f1ff880a-4384-4c16-a204-827ff4e00eab', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 120.00, '2023-07-10 18:21:45', '2023-07-10 18:21:45', NULL),
('e1cad879-fabb-4a5a-a755-028582fc18bb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '37183f15-ce16-491d-a307-77b10dc83408', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-29 10:55:47', '2023-06-29 10:55:47', NULL),
('e247e956-18a3-4b62-b37c-f2b169e62c13', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3be337dc-b090-4ea5-9dd5-c03954bfda86', '60a220a4-f647-4523-b1be-610ea7badc1e', NULL, 1, 80.00, '2023-07-13 16:02:59', '2023-07-13 16:02:59', NULL),
('e253bfcd-dbcb-4471-800e-a99e1b8676b5', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '58b8797b-1b71-42b4-8ffb-c4cb3579a944', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-06 19:00:11', '2023-07-06 19:00:11', NULL),
('e28b06fe-e29f-42cd-a220-9bb1016fb6ff', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '645f928d-f4c1-42a4-aba9-afa0f2630a0a', '75ffe702-9e09-4545-99df-5b76b176aaee', NULL, 1, 130.00, '2023-07-05 17:48:48', '2023-07-05 17:48:48', NULL),
('e359911b-5c19-4d12-8cd9-bf395fc7da4a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '823f24c6-19d8-48b9-ad2e-281575cf4f67', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-12 17:17:34', '2023-07-12 17:17:34', NULL),
('e3aac8e7-436a-4d61-8114-a0c84d16bc97', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5041fa37-0a90-4a21-86c3-c6a8e55e1ed8', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-15 13:03:40', '2023-07-15 13:03:40', NULL),
('e3f97652-0658-4a72-9521-901ca23e5a89', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4034111e-102c-4e37-a6af-491f4ed3e313', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 130.00, '2023-07-13 08:46:52', '2023-07-13 08:46:52', NULL),
('e4491f39-5b0b-4513-96d3-07db84eee6bf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '94d22eb1-e882-4db6-8740-f333059ac5ea', '4e66fdd1-05c0-4741-9215-6f531cd2d412', NULL, 1, 120.00, '2023-07-06 19:11:37', '2023-07-06 19:11:37', NULL),
('e4626f21-bd5e-4b8d-bec1-da91e968c78d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '90938862-f056-433c-99f6-8a13c16aded4', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-07 15:08:26', '2023-07-07 15:08:26', NULL),
('e53aa948-c04a-461a-8907-2da3ba67686f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8994d3b3-329d-49f1-96c5-2babb000895d', '027f35e7-7f5f-414c-8543-e8b7e5de5846', NULL, 1, 120.00, '2023-07-07 12:23:59', '2023-07-07 12:23:59', NULL),
('e54bbd62-449f-48b3-9450-282dd6acbf7d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4186c322-ee26-41fb-84a3-6fcbdceb1659', 'dc46e13b-d0c2-4acc-96ce-985952c69f22', NULL, 1, 120.00, '2023-07-11 15:18:14', '2023-07-11 15:18:14', NULL),
('e5bc4a0c-73d4-41e2-bdc9-de7ae749635b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '565a9ce2-077b-4e1d-9a0c-b990dec21f30', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-07-06 08:55:17', '2023-07-06 08:55:17', NULL),
('e5ca9899-5040-46c6-91db-c35694201afa', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'bc3c9cf0-9e88-4813-8150-755a4d1afe8f', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-06 12:18:17', '2023-07-06 12:18:17', NULL),
('e7b41a5d-3721-4884-bb11-945b787fc462', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'e214b616-09ab-4cd5-b636-3992666b1fb6', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-06 19:02:51', '2023-07-06 19:02:51', NULL),
('e81caffe-ded2-4f4f-aa73-7027df2abb1a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'cea4da1e-f57d-4604-8883-adcb28d9e331', 'dd433473-19fd-4f2d-b271-315c726da358', NULL, 1, 130.00, '2023-06-27 16:12:21', '2023-06-27 16:12:21', NULL),
('e858539c-f413-4f95-8e2d-362b704cbc8a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b7e04b55-03c6-4577-ba37-1f4929b87fb9', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', NULL, 1, 120.00, '2023-07-05 17:50:50', '2023-07-05 17:50:50', NULL),
('e915e364-291f-4ee3-b3d8-3ade4338214b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7ca4f2ac-2b0e-4851-bb28-0e87d7c9e6b4', '2921d90f-dced-4056-8904-10a4812b4716', NULL, 1, 140.00, '2023-07-11 11:14:20', '2023-07-11 11:14:20', NULL),
('e9b22f63-97db-4cfd-b1d6-ff19470a8640', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '358d04c2-3fce-4a46-8739-528292a93f6f', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-07 18:49:31', '2023-07-07 18:49:31', NULL),
('e9d705a8-6bb0-4f71-9b68-5365785879bf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '32d0de9d-64b8-4f93-99bc-3f30cece688f', '974f2c1a-1f30-4757-908b-eb165c32db0b', NULL, 1, 140.00, '2023-07-05 10:26:56', '2023-07-05 10:26:56', NULL),
('ea41de2a-5a46-4d1e-9dac-02efe0c23c45', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '91840012-017e-4d88-b3fd-0e3e52f416f6', '6657dd11-3a99-41e0-97fa-9a27ce60243d', NULL, 1, 160.00, '2023-07-05 17:34:30', '2023-07-05 17:34:30', NULL),
('eb1840c2-c486-43ac-9541-b6402689a5ac', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8e3dd7dd-9d19-427d-a814-ad88d2c92cad', '7ba2cc21-dc5b-42f8-b542-baaeb41443f1', NULL, 1, 160.00, '2023-07-07 18:31:20', '2023-07-07 18:31:20', NULL),
('ebe76846-8fab-4f6d-83a7-598a8d327b46', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a7d1b1ae-b59e-43f6-9ae4-fbd1e7ad763a', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-18 10:05:37', '2023-07-18 10:05:37', NULL),
('ec5de17e-76a0-4335-b36f-ff0a0d872cba', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '2a3f0d55-ff28-4e51-86c7-3e86a9cbcd65', '79b797b4-3426-4e54-b39b-f25154046925', NULL, 1, 120.00, '2023-07-18 09:07:21', '2023-07-18 09:07:21', NULL),
('ec74134b-dd8e-48e7-a146-bf0a55265ef8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0387552e-90c8-40f5-ae24-b31569df48f7', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 96.00, '2023-07-06 09:02:56', '2023-07-06 09:02:56', NULL),
('ee18a84d-54a7-4551-977b-6f24794e068e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'a8febe96-d998-4792-ac39-fa4bc9ec5a54', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 18:52:42', '2023-07-07 18:52:42', NULL),
('eec95e7e-fc84-4c35-a38c-680b41c868b3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'f57a8e71-b776-4677-b674-07d1838ba73d', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-07 17:40:04', '2023-07-07 17:40:04', NULL),
('efb8f5ba-252d-4d95-b193-768e9eb47aa2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5635d4ad-b8c9-433d-b836-019fc8405179', '363a5def-adab-4c2a-bf1c-eae46fa65aed', NULL, 1, 120.00, '2023-07-05 16:14:02', '2023-07-05 16:14:02', NULL),
('efdb93f9-8baa-4e6d-acb6-0785649e535b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'cea4da1e-f57d-4604-8883-adcb28d9e331', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-27 16:12:21', '2023-06-27 16:12:21', NULL),
('f0b90c23-56c0-40c4-867a-38f515539263', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '0e2e10cd-4c60-409a-a20a-130bdad989e2', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', NULL, 1, 120.00, '2023-07-14 18:31:14', '2023-07-14 18:31:14', NULL),
('f12e8292-89e4-49f2-97db-70bbd38478de', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '02223148-92f6-4c85-82b4-af4fc91b859b', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', NULL, 1, 140.00, '2023-06-21 18:58:29', '2023-06-21 18:58:29', NULL),
('f13f9e6a-98a8-43cc-875a-1144cdee7fc4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '754917ae-5958-43e9-ad3e-7c4d7f8d62a1', '974f2c1a-1f30-4757-908b-eb165c32db0b', NULL, 1, 140.00, '2023-07-17 16:58:15', '2023-07-17 16:58:15', NULL),
('f1b3c275-50f8-4203-bd77-ffa73a9f2934', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '21e1ef99-6f3a-4a8a-8037-f011eb0998be', '8e6d9ebb-86c2-4ef8-8c9a-77f4e1e1d85b', NULL, 1, 160.00, '2023-07-13 16:43:11', '2023-07-13 16:43:11', NULL),
('f1c1f920-38a0-43e0-9994-f7ac1d04782a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '2f2351fa-3e1c-4500-a95a-aac815e34afd', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-07 17:42:07', '2023-07-07 17:42:07', NULL),
('f254e6e9-b3b0-44a5-8daf-3bfda690c2e2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '40f3f91b-f510-4c38-a8cd-992ce7930d91', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 97.00, '2023-07-05 10:33:09', '2023-07-05 10:33:09', NULL),
('f260c5a4-f76d-407d-a6e6-6def5308ba02', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '58226847-f165-46c0-97af-1c663b2bb09e', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', NULL, 1, 120.00, '2023-07-18 09:41:42', '2023-07-18 09:41:42', NULL),
('f3008472-087c-4eba-8879-c58a2bae98d9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'fed07cd6-18b4-4354-93fd-98c5a7c49ae2', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 130.00, '2023-07-14 15:23:01', '2023-07-14 15:23:01', NULL),
('f326cdd3-fca2-4961-bb1b-00d553cce0ea', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '23dbcaf5-20f4-435a-a307-6f7ad806c01a', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-10 18:10:46', '2023-07-10 18:10:46', NULL),
('f4710f9c-e067-4eab-9579-84fc3d699a3e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1169bd33-432a-4497-aafd-cd7b786cc55d', 'e96c5407-a14b-4a47-9812-78d0aac537e8', NULL, 1, 30.00, '2023-07-17 10:13:33', '2023-07-17 10:13:33', NULL),
('f54ab434-0db2-44cf-b674-e947dc3218cb', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '43559a49-2449-4bf7-99f6-cd600c662237', '210f04fb-bb4f-4627-9fab-2116ee57e5b3', NULL, 1, 130.00, '2023-07-06 15:53:39', '2023-07-06 15:53:39', NULL),
('f74d9993-1d08-4c6f-ae32-ed600880e6d4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '5af8cd8a-f469-4dd8-b5e8-87a829060cf0', 'fd750b2e-54a0-4cd7-a0e9-092cafd6aa16', NULL, 1, 120.00, '2023-07-10 17:49:12', '2023-07-10 17:49:12', NULL),
('f76cc229-0858-4afb-ab7d-1aa96e84c09f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '6b45dd94-6e1c-4082-9644-4cfeb1a72d0d', '91b9362d-e5e1-4524-ba3b-07bb782b9300', NULL, 1, 120.00, '2023-07-06 19:09:35', '2023-07-06 19:09:35', NULL),
('f7b75cd8-0aef-434c-8599-9ecf424e4c07', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '7022e623-f2d0-4bc8-b965-dc044540b068', '43b1ef72-b158-49ec-8827-66917c8964ea', NULL, 1, 120.00, '2023-07-10 17:05:52', '2023-07-10 17:05:52', NULL),
('f8368040-980a-4f4f-9fa9-63c47bf23339', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '8e98589b-9c10-4f53-922d-52276455d2d6', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-10 09:05:27', '2023-07-10 09:05:27', NULL),
('f94579ec-dd0d-4fc6-b655-33b914d4a044', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '51684c72-7d57-41f2-a09d-0daf4f8859e9', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', NULL, 1, 120.00, '2023-07-05 15:48:47', '2023-07-05 15:48:47', NULL),
('f9c42685-2e9b-47d3-b352-c2e7359167b3', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'b5038438-33ad-453e-a8de-475d2a79dd60', '1e16b1e8-aff9-47a9-af02-a61a436d08a8', NULL, 1, 20.00, '2023-07-10 17:39:17', '2023-07-10 17:39:17', NULL),
('fb1328f5-5617-43ff-ad3a-1bba92f8ff43', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '91f909a6-bbb2-499c-af28-ea34b83f8a59', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', NULL, 1, 120.00, '2023-07-10 15:43:51', '2023-07-10 15:43:51', NULL),
('fbf96ecf-b0f8-4260-926e-c3ef42270065', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '4f21f7a3-bdcf-4f23-9fe6-a9ea0c7e4f96', '657ba856-f6a5-4ef3-9688-866aed747f13', NULL, 1, 140.00, '2023-07-15 12:59:50', '2023-07-15 12:59:50', NULL),
('fc012202-24b2-4a62-a135-76d1e23ceae8', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3be337dc-b090-4ea5-9dd5-c03954bfda86', 'cf9b3bfd-9171-4539-bc17-7a9decba2c38', NULL, 1, 850.00, '2023-07-13 16:02:59', '2023-07-13 16:02:59', NULL),
('fc521b1a-d01b-44e4-a5b6-ba6414242a0a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'fe6937f6-bd9e-4e99-b584-58da33efd0b9', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 60.00, '2023-07-05 11:36:07', '2023-07-05 11:36:07', NULL),
('fc70045e-4122-494e-96c5-3d81fbc722c2', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '81018daa-ef55-41c8-b2bd-f5073be4c594', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-29 10:55:54', '2023-06-29 10:55:54', NULL),
('fcead92a-880f-4a24-8fcf-6abf4e9dd83b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '21a5126f-5d16-409e-aaef-b651c6021faf', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-10 09:03:25', '2023-07-10 09:03:25', NULL),
('fd2a1b93-f58a-46f0-b226-78fb95c2b259', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '1dd0b92e-33de-4cd5-9227-7061802f2520', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', NULL, 1, 120.00, '2023-07-07 10:17:46', '2023-07-07 10:17:46', NULL),
('fd7e3447-b57a-4240-b92e-ed09f08bc34e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '3016dcbc-a604-47c3-a1f4-0ca0b277e40a', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-17 09:26:58', '2023-07-17 09:26:58', NULL),
('fe7a2aec-3677-49b7-878f-2c41b8239c25', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '02223148-92f6-4c85-82b4-af4fc91b859b', '0ca90bfc-0ec6-11ee-be56-0242ac120002', '502edb0b-3139-37f5-a3ab-5123ca60b138', 1, 40.00, '2023-06-21 18:58:29', '2023-06-21 18:58:29', NULL),
('ff9b5c48-bcae-4261-95ea-290a06d301dd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '9716aa1f-316a-4fec-ac38-718aea4469d1', '7b78b5ba-60e6-4010-972a-18fdab8c366c', NULL, 1, 120.00, '2023-07-11 15:03:28', '2023-07-11 15:03:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pagos_credito`
--

CREATE TABLE `pagos_credito` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_periodo` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_credito` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_descuento` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` int NOT NULL,
  `monto` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagos_credito`
--

INSERT INTO `pagos_credito` (`id`, `id_periodo`, `id_credito`, `id_producto`, `id_descuento`, `cantidad`, `monto`, `created_at`, `updated_at`, `deleted_at`) VALUES
('176db9a8-bc1a-4564-8514-9208bcc1a2c6', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '25f6f865-b32b-45bd-87d4-f0269a2187dc', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-28 22:08:55', '2023-06-28 22:08:55', NULL),
('8e5974d0-162c-4305-85dc-5e97d71bd20d', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'cc6ae6c4-68e3-416d-9c48-69f4e19e5d9b', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-27 16:25:33', '2023-06-27 16:25:33', NULL),
('f8971463-13ac-4184-8776-44ea08bbbabf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'aeb036cc-3dab-41d5-a48c-760243df0518', '0ca90bfc-0ec6-11ee-be56-0242ac120002', NULL, 1, 50.00, '2023-06-22 11:28:54', '2023-06-22 11:28:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE `paises` (
  `idpais` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigopais` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nompais` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paises`
--

INSERT INTO `paises` (`idpais`, `codigopais`, `nompais`, `created_at`, `updated_at`, `deleted_at`) VALUES
('278ad2be-6721-4547-8a72-c60585db3ab6', 'PE', 'PERÚ', '2023-06-14 20:06:08', '2023-07-18 11:09:53', NULL),
('6bfe7b9e-abc0-414d-a66d-8965e72e3a79', 'ES', 'ESPAÑA', '2023-06-27 17:25:31', '2023-07-18 11:09:42', NULL),
('76b0e9ce-c753-4b20-8976-c592194fa3e0', 'EU', 'ESTADOS UNIDOS', '2023-06-14 20:06:23', '2023-07-18 11:09:33', NULL),
('76e38f83-5629-46ee-9a30-14cbea6b8134', 'EC', 'ECUADOR', '2023-07-18 11:10:26', '2023-07-18 11:10:26', NULL),
('800b4780-c6b1-45a8-82b3-c4c9527ab01b', 'CH', 'CHILE', '2023-07-18 11:09:23', '2023-07-18 11:09:23', NULL),
('836e6fd6-743e-49d6-bc45-e855b88491e5', 'ARG', 'ARGENTINA', '2023-07-18 11:10:43', '2023-07-18 11:10:43', NULL),
('86f4a301-97dc-4234-b985-dee1347073dc', 'CO', 'COLOMBIA', '2023-07-18 11:10:06', '2023-07-18 11:10:06', NULL),
('d3193032-2ef8-412c-b8a2-2bd597dc2d9f', 'CNDA', 'CANADA', '2023-07-18 11:54:04', '2023-07-18 11:54:04', NULL),
('e3be7bea-b9de-470e-b92a-56cce3c73ecc', 'ME', 'MEXICO', '2023-07-18 11:10:16', '2023-07-18 11:10:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periodo_academicos`
--

CREATE TABLE `periodo_academicos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periodo_academicos`
--

INSERT INTO `periodo_academicos` (`id`, `nombre`, `fecha_inicio`, `fecha_fin`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0abd2fbe-94e2-4650-8713-245ce76f6e39', 'JULIO - 2023', '2023-07-03', '2023-07-26', 'activo', '2023-06-19 19:40:19', '2023-07-03 09:11:10', NULL),
('6034adb2-7103-4781-8a0f-2a7b0e69a4cd', 'ADMISIÓN 2023 - II', '2023-02-13', '2023-08-15', 'activo', '2023-07-13 15:48:07', '2023-07-13 15:48:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personas`
--

CREATE TABLE `personas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numiden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tipo_identificacion` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellidos`, `sexo`, `direccion`, `telefono`, `email`, `numiden`, `id_tipo_identificacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0144526c-2815-449a-a30b-5afcc872ba0b', 'BENAZIR ARIANA', 'VALENZUELA LAZARO', 'femenino', 'HUARAZ', '921648218', 'jvalenzucar@hotmail.com', '61233168', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:34:28', '2023-07-04 11:34:28', NULL),
('01fac8f4-a53a-4645-b2cf-044cacc778bf', 'PEDRO VALENTINO', 'DEXTRE HUAMAN', 'masculino', 'HUARAZ', '943090408', 'pedrodextreboceta@gamail.com', '79806792', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:35:47', '2023-07-05 10:35:47', NULL),
('02224b4b-9f0e-4dcf-820d-ee21b6bfafa8', 'SERGIO RICARDO', 'POMA TORRES', 'masculino', 'HUARAZ', '967760956', 'helen_tc37@hotmail.com', '77368166', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:10:26', '2023-07-04 19:10:26', NULL),
('02daf119-c5ac-4b99-8667-ae8c84b8bd51', 'ANDREW JOAQUIN', 'MORALES GARCIA', 'masculino', 'HUARAZ', '943515528', 'NAHUM533@HOTMAIL.COM', '78090139', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:15:00', '2023-07-04 10:15:00', NULL),
('03aaddb7-04a0-4f9a-bd8b-7b426638b19f', 'RENATO SEBASTIAN', 'COLLAS VERA', 'masculino', 'HUARAZ', '971246721', 'casmenrveraleon37@gmail.com', '75187234', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:05:40', '2023-07-04 11:05:40', NULL),
('03c86894-ea59-4304-91d2-f15c61c7c351', 'ANIBAL ORLANDO', 'VARGAS MILLA', 'masculino', 'AV. INTERNACIONAL S/N - NUEVA FLORIDA', '998716013', 'anibalvargasmilla113@gmail.com', '76191044', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-14 18:25:57', '2023-07-14 18:26:54', NULL),
('04e1396c-eece-4241-a49d-29c53537fe29', 'FLAVIA MORGANA', 'RAMIREZ REYES', 'femenino', 'HUARAZ', '943854388', 'fernandez@gmail.com', '79434507', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 08:59:18', '2023-07-04 08:59:18', NULL),
('064211b9-029b-417e-bcff-4545ee8b0342', 'JOAQUIN FRANCISCO', 'CALDERON ROMERO', 'masculino', 'HUARAZ', '952211432', 'JOLICAWA@GMAIL.COM', '62867086', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:44:16', '2023-07-04 17:44:16', NULL),
('06a49ec8-9d48-4a26-95c7-228c921d81ff', 'SALVADOR MOISES', 'HUARAC LLICAHUA', 'masculino', 'HUARAZ', '943478318', 'MOISESLLICAHUA@GMAIL.COM', '79583508', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:43:56', '2023-07-04 15:43:56', NULL),
('06e4f9dc-97d4-4e15-be52-c698356bc6ff', 'CIELO YAHAIRA', 'INOCENTE CASQUIN', 'femenino', 'HUARAZ', '948269004', 'JESSINOCENTECASQUIN@GMAIL.COM', '62014978', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:23:58', '2023-07-04 17:23:58', NULL),
('06f3d27f-d4bc-4408-8b14-210a99d96698', 'NATHALIA VICTORIA', 'DEXTRE CAMONES', 'femenino', 'HUARAZ', '989319263', 'fiorella.camonesg@gmail.com', '90014927', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:33:21', '2023-07-05 10:33:21', NULL),
('072f6829-921d-41e7-98f7-8ee1e058056c', 'JUAN', 'ROSALES REYES', 'masculino', 'YUNGAR', '914930060', 'carlos@hotmail.com', '45693305', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-19 05:12:48', '2023-06-19 05:12:48', NULL),
('07b38ebb-9881-4013-9af1-783ef2c4b3cf', 'SACHA MALLKO', 'GARRAGATE GUERRERO', 'femenino', 'HUARAZ', '989327337', 'paulatgs2@gmail.com', '62657310', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:45:00', '2023-07-04 18:45:00', NULL),
('080afc27-2b37-4374-8a50-636ba2cdfdbf', 'NATALY CIELO', 'CADILLO TORRE', 'femenino', 'HUARAZ', '968829427', 'NATALY26TK@GMAIL.COM', '60411178', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:29:51', '2023-07-04 16:29:51', NULL),
('083cd2d5-e882-4a5c-afa6-3d488592e244', 'ISAAC MELANIO', 'VILLANUEVA MARCOS', 'masculino', 'HUARAZ', '931236655', 'isaac19751996@gmail.com', '71538205', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:18:59', '2023-07-04 10:18:59', NULL),
('0876ee31-1fac-44ef-b82b-699d01375f89', 'AIRA AKEMI', 'RODRIGUEZ GOMEZ S', 'femenino', 'HUARAZ', '990386048', 'chinitashrg1234@gmail.com', '61480216', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:38:38', '2023-07-04 11:38:38', NULL),
('09306e9b-2dc3-44b8-bbbf-f1d77e8f6c46', 'THALYA VALENTINA', 'CHAVEZ ESPINOZA', 'femenino', 'HUARAZ', '929200749', 'yoselyespinoza92@gmail.com', '62837399', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:52:40', '2023-07-04 18:52:40', NULL),
('0a35d3fe-9b78-4b2b-a3c8-c7becd623530', 'CLEIDY', 'CAMELIN', 'femenino', 'HUARAZ', '917369153', 'camelincruzos@gmail.com', '75782595', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 14:58:09', '2023-07-03 14:58:09', NULL),
('0b90930f-67b0-4a45-b8c8-2a892387b322', 'MARIANA SOFIA', 'LEYVA FLORES', 'femenino', 'HUARAZ', '955918241', 'mariolc0205@hotmail.com', '62758909', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:33:33', '2023-07-04 17:33:33', NULL),
('0c423ec9-ac44-4135-9c2a-d462e8f52859', 'ABIGAIL VIVIANA', 'VALCARCEL COCHACHIN', 'femenino', 'HUARAZ', '970088491', 'cviviana22v@gmail.com', '70286048', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:43:11', '2023-07-04 18:43:11', NULL),
('0c60de46-5a58-4624-ad80-cd361be47f23', 'DANITSA ABIGAIL', 'PALACIOS FIGUEROA', 'femenino', 'HUARAZ', '968445755', 'patyfigueroasalas@gmail.com', '61461990', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-18 10:04:52', '2023-07-18 10:04:52', NULL),
('0c98dff5-f9f5-4fcb-a7f2-739f60a6554c', 'RODOLFO LUIS', 'CANDACHO BUSTAMANTE', 'masculino', 'HUARAZ', '942628781', 'rossybr83@hotmail.com', '63193482', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:11:55', '2023-07-04 19:11:55', NULL),
('0cde7f74-d0c4-4c02-a701-61834f9ce1dd', 'ALEX RAFAEL', 'PAUCAR MALLQUI', 'masculino', 'HUARAZ', '933170224', 'ABG.MIRIAM.PAUCAR@GMAIL.COM', '61911990', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:35:48', '2023-07-04 10:35:48', NULL),
('0cfa0808-4fff-4573-b778-f74a3c3d779e', 'ADRIAN EMILIANO', 'GARAY JULCA', 'masculino', 'HUARAZ', '968373579', 'kjulcamamani@gmail.com', '78799886', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:30:43', '2023-07-04 15:30:43', NULL),
('0d1f4927-3651-4c68-b388-d97c0bac8496', 'IVAN HOSEA', 'NAVAJA', 'masculino', 'HUARAZ', '914418304', 'TAMIATARAZONA1219@GMAIL.COM', 'C4FNJXFCT', 'c45f2392-98ff-4646-86e8-72f0bd83ef94', '2023-07-03 09:58:47', '2023-07-03 09:58:47', NULL),
('0ee34739-d46b-4039-b504-0800a7efd065', 'RODRIGO ALONSO', 'EGUSQUIZA BALDEON', 'masculino', 'HUARAZ', '966359312', 'nroxanabg1@gmail.com', '81181447', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:06:06', '2023-07-04 19:06:06', NULL),
('0f82abfc-4a29-44c8-9a59-fcb62f8bd12f', 'RODRIGO LIAM', 'GONZALES RAMOS', 'masculino', 'HUARAZ', '79469898', 'YESSE.RA270289@GMAIL.COM', '79469898', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:18:30', '2023-07-04 16:18:30', NULL),
('10628c9e-814d-4e26-b206-3e4fb96756a4', 'EMER MERVYN', 'CAMONES VEGA', 'masculino', 'HUARAZ', '940174624', 'vegahilda@hotmail.com', '61603701', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:10:28', '2023-07-05 11:10:28', NULL),
('10b7d572-23b4-449c-b3d4-ef267748f101', 'ALONDRA ARELY MARISSA', 'ESTRADA OSORIO', 'femenino', 'HUARAZ', '980980582', 'cristel_margaret@hotmail.com', '60983856', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:15:50', '2023-07-04 17:15:50', NULL),
('10ba2c16-4815-497b-9127-8b18fc8715cc', 'ROMMEL HANSEN', 'CORONEL VILCA', 'masculino', 'HUARAZ', '992715701', 'HANSENCORVIL@GMAIL.COM', '74537288', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:23:35', '2023-07-04 17:23:35', NULL),
('110c1ceb-8e7d-46b8-a06c-70a05babcf52', 'SUNY YADINA', 'PAREDES RAMIREZ', 'femenino', 'HUARAZ', '977742397', 'sunyparedes2020@gmail.com', '72158840', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:06:31', '2023-07-04 12:06:31', NULL),
('1157d623-857e-48c6-81f7-62b117960bd7', 'ALERY NOELY', 'YAURI ORTIZ V', 'femenino', 'HUARAZ', '945873131', 'ortizalerifernadez25@gmail.com', '62043083', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:02:03', '2023-07-04 11:02:03', NULL),
('11b34426-fff7-4f85-b194-fbe462ed7389', 'JANNET ELIZABETH', 'SANCHEZ MACEDO', 'femenino', 'HUARAZ', '942019390', 'jalumafo21@gmail.com', '60892469', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:31:16', '2023-07-04 11:31:16', NULL),
('1240422d-3af2-4651-9adb-f8bdd9638d3c', 'MIZUMI KARELL', 'FIGUEROA MALDONADO', 'femenino', 'HUARAZ', '957468326', 'notiene_12@gmail.com', '78313569', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 18:30:05', '2023-07-05 18:32:20', NULL),
('124842af-c919-4569-9fd6-bb38d314c29e', 'ERICK DAVID SANTIAGO', 'DEPAZ RODRIGUEZ', 'masculino', 'HUARAZ', '945202550', 'ERIKSON.DEPAZ@GMAIL.COM', '63091886', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:57:06', '2023-07-04 18:57:06', NULL),
('127774e0-bd3d-493c-8f9b-04f4791a6372', 'CRISTINA FERNANDA', 'VILLANUEVA QUIÑONES', 'femenino', 'HUARAZ', '914171332', 'CRISTINAFBQ@GMAIL.COM', '76598889', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:55:09', '2023-07-04 17:55:09', NULL),
('12b6db68-5201-4de0-befc-bf0fbca78f0a', 'JAIRO ESTEFANO', 'LEMUS MORENO', 'masculino', 'HUARAZ', '962804267', 'ildithabeatriz7@gmail.com', '61713675', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:36:38', '2023-07-04 11:36:38', NULL),
('12d2bf35-04ae-498b-bafd-5090c07f35ca', 'RAFAEL GONZALO', 'ANAYA QUISPE', 'masculino', 'HUARAZ', '943103320', 'SECHINTOURS@HOTMAIL.COM', '61429342', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:28:09', '2023-07-04 10:28:09', NULL),
('130b6043-b07a-4b09-9856-fd0d60d4e076', 'YARIT SOLANGE', 'RURUSH HUAMAN', 'femenino', 'HUARAZ', '0', 'S@GMAIL.COM', '61880513', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 15:47:52', '2023-07-05 15:47:52', NULL),
('131f6c73-962c-4228-83c5-c477ff8a2358', 'FREDY TOMAS', 'ONCOY VALVERDE', 'masculino', 'HUARAZ', '943984024', 'neoinfnityhz@gmail.com', '10300226', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:59:15', '2023-07-04 10:59:15', NULL),
('1325b0ad-ae62-47fb-ac77-f38e2371f0f9', 'ZAMIRA ALEXANDRA', 'MEJIA OSORIO', 'femenino', 'AV: CONFRATERNIDAD INTERNCIONL OESTE 471', '943420493', 'escorpion1968789@gmail.com', '62759129', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-13 18:53:03', '2023-07-13 18:53:03', NULL),
('1326abb3-803d-4642-9805-dc30024606a4', 'SHANIA VALERY', 'LEYVA OLIVEROS', 'femenino', 'HUARAZ', '969652521', 'SHANIA@GMAIL.COM', '78938307', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-07 17:36:49', '2023-07-14 18:30:29', NULL),
('1349f067-d23f-4719-b9b9-d9935aefce4f', 'Abigail Carolina', 'Roque Valentín', 'femenino', 'jr. Tarma 352', '956743289', 'maria@gmail.com', '76984325', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-14 20:30:11', '2023-06-18 08:12:36', NULL),
('13ce7c78-7f0e-459e-a7a2-a84a52c29663', 'DENALY BROTANY', 'FLORES CHAVEZ', 'femenino', 'AV. AGUSTIN GAMARRA 424', '988017200', 'gutiflores24@gmail.com', '79038729', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 09:33:54', '2023-07-03 09:33:54', NULL),
('13ec911a-0092-40d4-b4c1-63fd0fd18cc0', 'DANY FERNANDO', 'CARO GUERRERO', 'masculino', 'HUARAZ', '956672307', 'DANYCARO2017@GMAIL.COM', '75755163', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:44:45', '2023-07-05 10:44:45', NULL),
('141791ad-d410-4ac9-92fc-87b9a75677c0', 'SEBASTIAN ANDRES', 'MUSALEM SCHWARTZ', 'masculino', 'CHILE', '+56 9 6895 1427', 'smas1999@gmail.com', '202858325', 'c45f2392-98ff-4646-86e8-72f0bd83ef94', '2023-07-10 16:15:27', '2023-07-10 16:15:27', NULL),
('1425f304-ae47-4059-9213-1d4e2f15d8a5', 'SUSIE NICOLLE', 'ROSALES JAMANCA', 'femenino', 'HUARAZ', '920719946', 'jhony_001_8@hotmail.com', '61409348', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:15:41', '2023-07-05 11:15:41', NULL),
('148a6d36-9b25-4e03-b208-1245248f959f', 'GIANELLA NOHOMY', 'BERNUY ALVA MIA', 'femenino', 'HUARAZ', '969618909', 'kederli@hotmail.com', '77367770', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:54:41', '2023-07-04 15:54:41', NULL),
('1546dcb1-c8a7-4649-b230-c189709ecb95', 'VERONICA ALEJANDRA', 'DURAN LAZARO', 'femenino', 'HUARAZ', '939206568', 'veronicadeula@gmail.com', '70466915', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:24:47', '2023-07-04 17:24:47', NULL),
('15ee81d2-ce48-4b91-9e9d-524e12f54d8f', 'SALOME CATTY', 'MORALES CALDUA', 'femenino', 'HUARAZ', '996373238', 'mhabranruben@gmail.com', '60424993', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:39:55', '2023-07-04 10:39:55', NULL),
('1619a718-818b-48c0-915a-619c07c41095', 'JOSELO RUBEN', 'JAMANCA MORENO', 'masculino', 'HUARAZ', '944556290', 'MARCIALJE@HOTMAIL.COM', '73339150', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:09:15', '2023-07-04 18:09:15', NULL),
('167a62a1-c63c-4682-a4a7-900298bd7211', 'GIANELLA PATRICIA', 'GUTIERREZ MAGUIÑA', 'femenino', 'HUARAZ', '936125214', 'almojhftr@gmail.com', '60942995', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:12:55', '2023-07-05 11:12:55', NULL),
('16ada647-0c28-47ee-8fe2-75f40eec9455', 'ANDREA EMILY', 'JAMANCA MORALES', 'femenino', 'HUARAZ', '943248785', 'JOHNJAMANCAA@HOTMAIL.COM', '79859763', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:22:10', '2023-07-05 10:22:10', NULL),
('16e3476e-039c-4c55-aaad-f98d13f31bb5', 'RENZO FRANCISCO', 'QUIÑONES SORIANO', 'masculino', 'HUARAZ', '948985114', 'rquinonessoriano27@gmail.com', '75719369', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:53:04', '2023-07-05 10:53:04', NULL),
('17529541-2cdf-4b6d-8040-fdda74b816f6', 'POLO SALAZAR', 'LUIS FERNANDO SEBASTIAN', 'masculino', 'HUARAZ', '994532359', 'pamelita_18_t@gmail.com', '78788447', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-11 18:45:36', '2023-07-11 18:45:36', NULL),
('1786266d-90a3-4b87-9ae8-941a937233e6', 'RUBY JULYSSA', 'CANO TINOCO', 'masculino', 'HUARAZ', '974478583', 'ruby123cano@gmai.com', '70110372', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:04:14', '2023-07-04 11:04:14', NULL),
('17b6f1f8-c943-421d-9d3c-a25de5cffca4', 'VICTOR ROGER', 'SANCHEZ NERI', 'masculino', 'HUARAZ', '941469700', 'rogerneri49@gmail.com', '70388313', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:52:15', '2023-07-04 17:52:15', NULL),
('17fc4642-ae38-48e4-9825-0018a0d2e718', 'KARINA', 'FLOREZ CORTES', 'femenino', 'HUARAZ', '943571989', 'plaguita@msn.com', '41407813', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:11:52', '2023-06-23 19:11:52', NULL),
('181d3fec-9da8-40f7-aa71-e23f7b83a0c7', 'ADRIANO DANILO', 'RODRIGUEZ SILVANO', 'masculino', 'HUARAZ', '935948397', 'hdtedl@gmail.com', '63688550', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:13:11', '2023-07-04 19:13:11', NULL),
('186540b7-9ade-4d98-8466-668808be9e3f', 'ANDREA CAROLINA ZAMARA', 'PEREZ SIERRA', 'femenino', 'HUARAZ', '998557044', 'stefanysierra70@gmail.com', '81579552', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 17:10:29', '2023-07-05 17:10:29', NULL),
('18ce8a71-92d6-48a5-a319-fda865e124c8', 'JHONATAN', 'GOMEZ LAZARO', 'masculino', 'HUARAZ', '957503039', 'freako1915@gmail.com', '70603012', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:23:11', '2023-06-23 19:23:11', NULL),
('19195687-c64a-481f-9ea5-112a0b260cd2', 'JENY MILAGROS', 'LLIUYA AREVALO', 'femenino', 'HUARAZ', '900891157', 'LLIUYAAREVALOJENYMILAGROS@GMAIL.COM', '76243971', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:50:34', '2023-07-05 10:50:34', NULL),
('19497660-7a4c-4b84-8ab1-b57db36fd4dd', 'JHOSALIN', 'ESPINOZA SILVA', 'femenino', 'HUARAZ', '999544995', 'espinoza8silva@gmail.com', '71513587', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:18:16', '2023-07-04 12:18:16', NULL),
('196215a9-1a54-4806-9d72-a4a0ba5ce572', 'RELY XIMENA', 'BARRETO AGUILAR', 'femenino', 'HUARAZ', '961638114', 'shely6434@gmail.com', '62043060', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:48:13', '2023-07-04 16:48:13', NULL),
('196c5acf-89d6-416f-924f-ff6dc2550f28', 'ANGIE GERALDINE', 'CACHA ALMENDRADES', 'femenino', 'HUARAZ', '943 051 909', 'CARMENYANGIE46@GMAIL.COM', '79278587', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:58:30', '2023-07-04 15:58:30', NULL),
('197c32d0-2e83-4e94-ab34-27cd7c3b979e', 'KARINA GERALDINE', 'COCHACHIN ESPADA', 'femenino', 'HUARAZ', '992437172', 'KARINACOCHACHINESPADA@GMAIL.COM', '77078937', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:10:06', '2023-07-05 10:10:06', NULL),
('1a0b5922-174f-4d3c-91f2-7e709c351360', 'SOFIA ROSALINDA', 'ROSALES HUAMAN', 'femenino', 'HUARAZ', '948540679', 'sofiarosaleshuaman72@gmail.com', '75460587', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:45:44', '2023-07-04 10:45:44', NULL),
('1b6c2d0f-b6cb-4808-81df-9a928a73f4a0', 'ROSA ISABEL', 'VILLANUEVA MARCOS', 'femenino', 'HUARAZ', '939514834', 'rvillanuevamarcos@gmail.com', '71538206', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:20:10', '2023-07-04 10:20:10', NULL),
('1b9af74a-553c-4ee3-bf02-4ee5532640c9', 'MELINA MAGALY', 'NORABUENA ROSALES', 'femenino', 'HUARAZ', '943704776', 'melinanorabuena@gmail.com', '42325348', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:12:01', '2023-07-04 10:12:01', NULL),
('1bb6b888-1844-4682-ba09-851d5a08f0e8', 'ASHLEY CRISTHEL', 'RIOS ALVARADO', 'femenino', 'HUARAZ', '922132369', 'alvaradorosangela123@gmail.com', '81138481', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:07:12', '2023-07-04 16:07:12', NULL),
('1c10a9dd-7526-4606-80c2-c0f8a7fe3fb3', 'EYAL SAMIN', 'OBREGON VALDERRAMA', 'masculino', 'HUARAZ', '956993585', 'patriciavl4@hotmail.com', '90378951', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:40:52', '2023-07-05 10:40:52', NULL),
('1c359c5e-bdb7-4f59-bd79-8a4812b34c7e', 'DIEGO JOAQUIN', 'CORCINO CASTILLO', 'masculino', 'HUARAZ', '998887421', 'diegocc208@gmail.com', '61517164', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-29 18:57:02', '2023-07-10 18:46:10', NULL),
('1cd07ab2-c2a2-4fd7-b2ca-58f8fe7e4b91', 'ESTEFANO PALERMO', 'RIVERA MONTES', 'masculino', 'HUARAZ', '937511150', 'ranyers153d@gmail.com', '72392484', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:21:36', '2023-07-04 11:21:36', NULL),
('1d5b5a5a-91e2-4752-b2f0-5ffb06fad5f7', 'GONZALO SEBASTIAN', 'LEON SALAZAR', 'masculino', 'HURAZ', '954794068', 'herberta_13@hotmail.com', '954794068', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-30 19:30:09', '2023-06-30 19:30:09', NULL),
('1f5c67d5-2993-4e11-a008-791a83bebf12', 'KEYSY MITSUKO', 'ONCOY LEON', 'femenino', 'HUARAZ', '948481679', 'abril950_12@hotmail.com', '79338412', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:45:42', '2023-07-04 15:45:42', NULL),
('20421e18-e87d-4ec8-bb00-4c76dfe4d923', 'PERCY MANUEL', 'BELTRAN MORENO', 'masculino', 'HUARAZ', '952363755', 'PERCYBELTRANMORENO@GMAIL.COM', '61314371', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:27:14', '2023-07-04 16:27:14', NULL),
('20990d91-2644-46c4-afc5-2305dd8e0ff2', 'ALEJANDRA VALERIA', 'CASTRO VIDAL', 'femenino', 'HUARAZ', '994364589', 'camuu015@gmail.com', '81596916', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:13:07', '2023-07-04 19:13:07', NULL),
('20cc531a-d5cf-49f9-bec1-04c4bf7868c5', 'JOSUE ALEJANDRO', 'FLORES DIONICIO', 'masculino', 'HUARAZ', '983212847', 'jafa1976m@gmail.com', '60857769', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:43:43', '2023-07-04 18:43:43', NULL),
('20d18b84-47a0-4e19-9180-b21bfcd3946e', 'DYANA LOURDES', 'BAÑEZ CUEVA', 'femenino', 'HUARAZ', '941896087', 'NOBRINDO@GMAIL.COM', '78582991', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:14:55', '2023-07-04 16:14:55', NULL),
('21241a0a-e3b6-444c-ba61-24971b3e7228', 'EVELYN ANGELICA', 'ANGELES CABANA', 'femenino', 'HUARAZ', '996706649', 'angelesevelin882@gmail.com', '76392205', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:34:48', '2023-07-04 17:34:48', NULL),
('2188160e-dd5f-4a5a-a2fe-137db42d0506', 'DANICZA SOLEDAD', 'LLIUYA BARRETO', 'femenino', 'HUARAZ', '985405926', 'daniczaslb@gmail.com', '72717205', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-30 19:32:08', '2023-06-30 19:32:08', NULL),
('21cbcc8f-66b9-4c63-8838-ad0944c132ea', 'LUCIANA THAIS', 'ROJAS JARAMILLO', 'femenino', 'HUARAZ', '959017117', 'maht@gmail.com', '62672283', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:57:34', '2023-07-04 11:57:34', NULL),
('21e3fc43-13d0-4d28-8dd9-20c603334542', 'PAUL KENNETH', 'SCHULZE', 'masculino', 'HUARAZ', '1111', 'paul.k.schulze@gmail.com', '49064251', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:24:49', '2023-06-23 19:24:49', NULL),
('21f0d803-7041-42dd-9ed9-962c1f38d26a', 'NICOLE ANAHI MARYORITH', 'RAVELLO BRUNO', 'femenino', 'HUARAZ', '967163124', 'libra_love2010@hotmail.com', '61911918', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:21:08', '2023-07-04 18:21:08', NULL),
('2205245f-ef4a-4756-b8b0-b9addf393097', 'GABRIEL STEFANO', 'CERVANTES PEREZ', 'masculino', 'HUARAZ', '963297084', 'josecervantesromero@gmail.com', '79228867', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 09:54:42', '2023-07-05 09:54:42', NULL),
('2295a55e-7eb4-44e3-8d7d-fab386b70c9c', 'LEANDRO STHEFANO', 'ACUÑA MELENDEZ', 'masculino', 'HUARAZ', '997762650', 'roxi_115@hotmail.com', '62867119', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:59:16', '2023-07-04 17:59:16', NULL),
('22cb758d-0c51-42d5-a07c-7cab0098a3d9', 'ZOE VALENTINA', 'LAZARO BLAS', 'femenino', 'HUARAZ', '975552622', 'jhonlazarobernuy1@gmail.com', '79260904', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:35:02', '2023-07-04 12:35:02', NULL),
('2308addf-e4b9-458b-a67e-615184838037', 'ESTEFANI FIORELA', 'MALLQUI ESPINOZA', 'femenino', 'HUARAZ', '901624569', 'STEFANIMALLQUI14@GMAIL.COM', '72970943', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:12:58', '2023-07-04 11:12:58', NULL),
('2348f58b-f4b7-4a79-b752-9a4a8fe5008b', 'GUILLERMO ORLANDO', 'SAEZ ALTAMIRANO', 'masculino', 'CHILE', '+56991710820', 'fuillermo.orlando.saez@gmail.com', '19677703-2', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-18 10:13:06', '2023-07-18 11:08:19', NULL),
('2389fe88-7191-45e7-a603-fc7bcae95c22', 'MEJIA DIAZ', 'ADRIAN LEONARDO', 'masculino', 'HUARAZ', '980201701', 'mejia_2004@hotmail.com', '77553867', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:10:31', '2023-07-04 10:10:31', NULL),
('244fc99d-e4a1-4cd6-b367-6540f2cf179e', 'ETHAN MARK', 'LLIUYA GUILLEN', 'masculino', 'HUARAZ', '998657095', 'PHIGHSUMMITPERU@GMAIL.COM', '90364628', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 17:24:03', '2023-07-05 17:24:03', NULL),
('2541866f-1d48-42de-8c04-0ab6c68e7da5', 'CAMILA ARIANA', 'OSORIO ARAMBURU', 'femenino', 'HUARAZ', '930121800', 'dunia_303@hotmail.com', '62552517', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:23:32', '2023-07-04 11:23:32', NULL),
('258e068f-266f-4cbd-a738-fe5783d88883', 'EFRAIN ELEAZAR', 'CAMONES VEGA', 'masculino', 'HUARAZ', '915039658', 'vegahilda18@hotmail.com', '71820033', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:09:05', '2023-07-05 11:09:05', NULL),
('2601b039-82ed-4fd2-b437-ff51c80fbc0e', 'MAURICIO MARTIN', 'TINOCO USUA', 'masculino', 'HUARAZ', '992 757 906', 'ariana6928@hotmail.com', '62672330', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:48:55', '2023-07-04 18:48:55', NULL),
('26e566b5-f19a-4702-bb76-30b8074e368d', 'MATHEO SAMIR', 'TOLEDO GONZALES', 'masculino', 'HUARAZ', '943232758', 'margoncri@gmail.com', '61233069', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:37:21', '2023-07-04 17:37:21', NULL),
('2743947d-1571-4269-88cf-acf293672dd0', 'MARIOLY ESLI', 'HUANCA ISIDRO', 'femenino', 'HUARAZ', '961197560', 'marioruf@gmail.com', '61314725', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:22:40', '2023-07-04 11:22:40', NULL),
('27c7378a-1aae-444c-9888-826228ace099', 'MARIA PAULA', 'PAREDES RAMIREZ', 'femenino', 'HUARAZ', '980583654', 'fraz_887@hotmail.com', '63219018', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:06:03', '2023-07-04 16:06:03', NULL),
('2802b3c2-13e1-4560-90fa-62910db1d825', 'LUCERO MERCEDES', 'CORIMANYA PEREZ', 'femenino', 'HUARAZ', '935886192', 'corymanya17@gmail.com', '76623416', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:42:27', '2023-07-04 18:42:27', NULL),
('2821c1a7-bc71-477d-af7c-3831368074af', 'Akim Alessandro', 'Picon Hermenergildo', 'masculino', 'HUARAZ', '982 116 642', 'miran26528@gmail.com', '77443314', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-12 17:24:05', '2023-07-12 17:24:05', NULL),
('28991642-c8ef-403a-8fa4-796d01239931', 'ARIANA VALENTINA', 'CACHA DIAZ', 'femenino', 'HUARAZ', '923288243', 'dabicitha17@gmail.com', '81610837', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:59:38', '2023-07-04 15:59:38', NULL),
('2a234ee5-b1dc-47eb-8a28-0ebfbf488ea3', 'NATHALY MARIÉ', 'RAMIREZ ESPINOZA', 'femenino', 'HUARAZ', '944441809', 'MARIANYORAI@GMAIL.COM', '78081823', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:11:59', '2023-07-04 19:11:59', NULL),
('2a96853d-b5e1-4f53-a356-0392ff45b0e1', 'CESAR MIGUEL', 'FIGUEROA PANAIFO', 'masculino', 'HUARAZ', '97386104', 'cm059975@gmail.com', '75442348', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:18:46', '2023-07-04 17:18:46', NULL),
('2b0d76e1-4669-44e5-949f-063858454021', 'RENATO RICARDO', 'USUA TARAZONA', 'masculino', 'leslietarazona1@gmail.com', '926693054', 'leslietarazona1@gmail.com', '78676777', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:39:38', '2023-07-04 12:39:38', NULL),
('2b63e2f4-bf3a-4e57-b39c-39e013723e45', 'DAVID SANTIAGO', 'REEVES GONZALES', 'masculino', 'HUARAZ', '961613890', 'guibanacrisoston1@gmail.com', '62423730', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:48:21', '2023-07-04 10:48:21', NULL),
('2d64ea01-5fde-46cc-9dd4-78f318a18f4d', 'LUANA RAFAELA', 'ALVARO ALFARO', 'femenino', 'HUARAZ', '943171216', 'jaas2978@gmail.com', '63193450', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:02:59', '2023-07-04 10:02:59', NULL),
('2e9b6beb-391c-40cc-9533-47be67b40c55', 'ALEXANDRA SHIRLY', 'RAMIREZ MORALES', 'femenino', 'HUARAZ', '961371515', 'ramirezshirley048@gmailc.com', '77157142', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:09:27', '2023-07-04 12:09:27', NULL),
('300bdc10-04d8-4726-b8a3-a3986760a19d', 'ANDRES ESTEBAN', 'RAMOS FERNANDEZ', 'masculino', 'HUARAZ', '996451835', 'antoniaf@hotmail.com', '70541093', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:43:30', '2023-07-04 10:43:30', NULL),
('3138bb79-dace-4c04-a55b-cce256c3de26', 'VILMA LUZMILA', 'PALMADERA MILLA', 'femenino', 'HUARAZ', '944969971', 'VILMALUZMILA.94@GMAIL.COM', '71518381', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:34:28', '2023-07-04 18:34:28', NULL),
('3189b0db-601a-4776-a80e-11a4b9a5574e', 'MAGDALENA FIORELA', 'CASTILLO DIAZ', 'femenino', 'HUARAZ', '981951457', 'fiorelacastillodiaz6@gmail.com', '47843630', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:36:50', '2023-07-04 17:36:50', NULL),
('31e2ed81-e6ed-4481-89cf-26e7ccd1ffee', 'THIAGO ANDRES', 'ROSAS POMA', 'masculino', 'HUARAZ', '947642896', 'maryspomapinto@gmail.com', '81602921', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:20:30', '2023-07-04 16:20:30', NULL),
('322b1c8b-d1f8-4a15-afe7-aee6ad287deb', 'MARICEL ANDREA', 'SHISHCO SIVINCHA', 'femenino', 'HUARAZ', '930136245', 'nancy_csr13@hotmail.com', '62423634', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:48:01', '2023-07-04 16:48:01', NULL),
('32c076eb-3e21-42f7-8d9c-3f843339e6ed', 'NAVAL EMILIANO', 'APOLIN DE LA CRUZ', 'masculino', 'HUARAZ', '995115799', 'apolinnaval@hotmail.com', '31651583', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-19 06:13:00', '2023-06-19 06:13:00', NULL),
('34bd3515-b5ff-405a-b96c-ff262e596be3', 'LINDA NADINE', 'PUJAY RODRIGUEZ', 'femenino', 'HUARAZ', '939233841', 'lindanadinepr10@gmail.com', '60425112', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:08:36', '2023-07-04 12:08:36', NULL),
('356c129c-b54a-4bb5-8972-259e66504cff', 'ABIGAIL CAMILA', 'HUAYANEY HUERTA', 'femenino', 'HURAZ', '943983701', 'CAMILA@GMAIL.COM', '61517309', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-30 19:25:32', '2023-06-30 19:25:32', NULL),
('359620b4-f2db-4786-a7ed-c85e35699c8f', 'ALVARO DIEGO', 'HERRERA SALAZAR', 'masculino', 'HUARAZ', '925489667', 'ALVARODIEGOHERRERASALAZAR@GMAIL.COM', '61155525', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:21:20', '2023-07-04 17:21:20', NULL),
('35e4fb93-ab0e-4f52-9d59-82995d7dae4e', 'ELIZABETH', 'DUAREZ CHAVEZ', 'masculino', 'HUARAZ', '900698069', 'abog.eliduarez@gmail.com', '43455767', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:49:41', '2023-07-04 10:49:41', NULL),
('35e55a56-680a-4894-a195-fdf84434e429', 'ANTHONELLA GUADALUPE', 'PEREZ MEZA', 'femenino', 'HUARAZ', '920239490', 'lilianamj12br@gmail.com', '79028245', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:19:00', '2023-07-04 19:19:00', NULL),
('3675b94a-2d63-4f4d-a1d5-e95fd6739679', 'ARELIE NATHANIEL', 'CALDERON SOTO', 'femenino', 'HUARAZ', '945253583', 'alizbethsr10@gmail.com', '81611066', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:26:48', '2023-07-04 12:26:48', NULL),
('37235062-7f84-47d9-ad75-6e68bcf51e1a', 'LUCIANA TANIA', 'FLORES COCHA', 'femenino', 'HUARAZ', '977710377', 'pedrofloreszapata@gmail.com', '62354565', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:34:36', '2023-07-04 10:34:36', NULL),
('37425000-e7db-40bc-a4b9-9599f7e52e66', 'SAYURI MARIEL', 'SOTO ESPIRITU', 'femenino', 'HUARAZ', '9920072746', 'medallanegra@hotmail.com', '62518155', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:39:23', '2023-07-04 18:39:23', NULL),
('376c2a87-3d04-4515-93ac-75ae8afe21a3', 'ALEJANDRA LEA', 'MALLQUI CORREA', 'femenino', 'HUARAZ', '944990070', 'Carlosmallquichinchay@gmail.com', '81046281', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:13:29', '2023-07-04 10:13:29', NULL),
('3777b8c4-bc1f-4303-88c1-e405eb3e604f', 'JEMIMA REBECA', 'FLORES ABREGO', 'femenino', 'HUARAZ', '944965013', 'FANNY_SET@HOTMAIL.COM', '76341147', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:19:23', '2023-07-10 18:50:30', NULL),
('37f4421e-9a9d-4e2e-8b8c-0d00203499ed', 'ANA', 'MOSQUERA DAMIAN', 'femenino', 'HUARAZ', '918973605', 'drvidalmosda2016@gmail.com', '80821932', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:09:40', '2023-07-04 16:09:40', NULL),
('387a6d41-cd0e-4593-be0f-bdb73d549ee9', 'MARCIA ISABEL', 'TAPIA GRAZA', 'femenino', 'HUARAZ', '957918002', 'agraza.2018@gmail.com', '72832790', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:39:38', '2023-07-04 11:39:38', NULL),
('38b9389d-267a-44f7-861b-35d1c5082543', 'MAYTE', 'ESTRADA VEGA', 'femenino', 'HUARAZ', '926790239', 'maytees27@gmail.com', '41233433', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:06:54', '2023-07-04 18:06:54', NULL),
('3921cef8-3e2e-4939-83eb-9244a5905068', 'LORENA PATRICIA', 'LAZO MELGAREJO', 'femenino', 'AV. ATUSPARIA BARRIO VILLON ALTO', '945566014', 'lazomelgarejolorena@gmail.com', '77802586', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:28:45', '2023-07-04 11:28:45', NULL),
('393b5b17-1f5a-42fa-8d9d-6cd876f1bf91', 'JESUS MANUEL', 'CAMONES TORRE', 'masculino', 'HUARAZ', '938104770', 'astefd@gmail.com', '76343877', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:03:44', '2023-07-04 18:03:44', NULL),
('39655966-63f5-4bc1-be11-736d6724fde6', 'VALERY ADRIANA', 'GOMEZ MANTILLA', 'femenino', 'HUARAZ', '985288779', 'manti3110@gmail.com', '62427611', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:49:23', '2023-07-04 11:49:23', NULL),
('3ab7ad8a-3317-4140-9592-b1b902085a52', 'MARK GELACIO', 'PINEDA REGALADO', 'masculino', 'JR: DANIEL VILLAYZAN NRO 435 URB. BUCRUPAMPA', '943256353', 'gelacio.prg@gmail.com', '79499472', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-13 11:11:37', '2023-07-13 11:11:37', NULL),
('3acc4bed-b3b1-4004-b7cf-4d5584e651e3', 'CAMILA LUCIANA', 'JIMENEZ LEGUA', 'femenino', 'HUARAZ', '945857414', 'mleguacastillo@gmail.com', '90706497', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:03:17', '2023-07-05 11:03:17', NULL),
('3b2729e9-ccb2-4f15-97c4-0b46349ae722', 'BRIGITTE STEFANNY', 'ZAPANA LLALLIHUAMAN', 'femenino', 'HUARAZ', '977823706', 'brigittezapana7@gmail.com', '75591613', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:56:24', '2023-07-04 17:56:24', NULL),
('3c3fe1a2-72e1-46e4-8113-8c508d3f9cc4', 'OMAYRA ESTEFANI', 'SILVA MALAVER', 'femenino', 'HUARAZ', '945122829', 'julioc3sarheenandez@gmail.com', '76240355', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:39:47', '2023-07-04 10:39:47', NULL),
('3de62f8d-86a6-4359-a73d-4fe782189f7d', 'BRANDON YOSEP', 'LUCIANO LOLI', 'masculino', 'HUARAZ', '923697695', 'blucianololi@gmail.cpm', '71299243', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-13 11:50:13', '2023-07-13 11:50:13', NULL),
('3ed8b7e6-a311-47d7-be11-c7dd8884c800', 'FERNANDO DANIEL', 'BLAS TUTACANO', 'masculino', 'HUARAZ', '963505016', 'blasfernand568@gmail.com', '61233269', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:20:53', '2023-07-04 11:20:53', NULL),
('3f07bc9c-beb0-4b08-a6dd-297eba5d9eaf', 'JHON MARCELO', 'DE LA CRUZ MINAYA', 'masculino', 'HUARAZ', '943687772', 'ELIZABETH0552@HOTMAIL.COM', '63091798', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:47:32', '2023-07-04 17:47:32', NULL),
('3f2f6c7a-a5d6-4921-812f-852aaa5ba164', 'MATHIAS JHAIR', 'MUÑOZ BARRIOS', 'masculino', 'HUARAZ', '941174232', 'nisella@hotmail.com', '61409257', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:56:14', '2023-07-04 10:56:14', NULL),
('3f4d28fe-5ee2-4125-9464-4c48786bba88', 'ARIANA CAMILA', 'HARO CRUZ', 'femenino', 'HUARAZ', '98749544', 'haro.abogado1@gmail.com', '62014979', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:14:13', '2023-07-05 11:14:13', NULL),
('3f56cba9-8e06-41c4-9e13-7c94362ad49d', 'PIERO ANTON', 'CORDOVA ROMERO', 'masculino', 'HUARAZ', '941336371', 'ROMERO1@HOTMAIL.COM', '74671148', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:08:11', '2023-07-04 18:08:11', NULL),
('3fd46976-b59e-46b2-a76c-61226e6f179d', 'Luana Sophia', 'Rivera Vidal', 'femenino', 'Jr. Fidel Olivas Escudero#937 La soledad', '950 902 735', 'milagrosvidal0114@gmail.com', '78523914', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-07 11:49:51', '2023-07-07 11:49:51', NULL),
('4070d53c-8e60-4884-90c5-b804863cf297', 'XIMENA DEL PILAR', 'VALENZUELA RODRIGUEZ', 'femenino', 'HUARAZ', '921551037', 'pilarrodriguez111@hotmail.com', '61689147', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:16:43', '2023-07-04 19:16:43', NULL),
('409a3597-f307-4b69-84f4-86ad76187297', 'ADA CRISTINA', 'BARBUDO CHUQUI', 'femenino', 'HUARAZ', '952593715', 'ada18barbudo@gmail.com', '75585939', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-29 18:55:28', '2023-06-29 18:55:28', NULL),
('40c5ecbd-7cca-4257-91f5-e25201f89f69', 'LIONEL DANTES', 'TRAVERSI SALAZAR', 'masculino', 'HUARAZ', '974 991 155', 'travesti54@gmail.com', '63143501', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:45:52', '2023-07-04 16:45:52', NULL),
('41930409-6a93-4e53-8681-5488862e2529', 'EDGAR EDWIN', 'ESPINOZA SOLIS', 'masculino', 'HUARAZ', '910991497', 'edgar.edwin31@gmail.com', '77014774', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:49:16', '2023-07-05 10:49:16', NULL),
('42c09b0a-e87b-45d4-9152-2de820390ca6', 'ALEXANDRA KRISTEL', 'RODRIGUEZ ZORRILA', 'femenino', 'HUARAZ', '939988675', 'alexandrakristelrodriguez@gmail.com', '61191517', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:44:54', '2023-07-04 10:44:54', NULL),
('42c95df0-0935-45fc-b094-a451786c5a76', 'YIDID KARLA', 'ROSALES LUCIANO', 'femenino', 'HUARAZ', '943240010', 'RONALDROSALES@HOTMAIL.COM', '62014785', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:50:39', '2023-07-04 17:50:39', NULL),
('42e85ed3-a49e-4a5a-84dc-a674399251be', 'KENNETH AMIR ANGELO', 'SANCHEZ ROMERO', 'masculino', 'HUARAZ', '966596901', 'LUZMILA1830@HOTMAIL.COM', '62354683', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:24:24', '2023-07-04 18:24:24', NULL),
('4345b828-807b-420f-9f74-1af06f73f84a', 'RODRIGO ROMEO', 'SOTO MENDOZA', 'masculino', 'HUARAZ', '921 584 166', 'sotomendozarodrigo22@gmail.com', '73352901', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:49:21', '2023-07-04 16:49:21', NULL),
('43eb8bd6-6faf-4d72-a74a-6dc30c3ecf97', 'YESSENIA SOLEDAD', 'IBAÑEZ BRAVO', 'femenino', 'A. CANCARIACO S/N BARR, VICHAY', '945979548', 'yese.soledad.ibanez@gmail.com', '72792051', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 11:46:13', '2023-07-03 11:46:13', NULL),
('444adbaa-6264-4796-9a54-381574a5de38', 'MARIANA EMELY', 'ORE HUAMAN', 'femenino', 'HUARAZ', '963904366', 'marianaorionhuaman@gmail.com', '76793694', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:16:47', '2023-07-04 11:16:47', NULL),
('44b7777b-94fb-459a-ad72-9ed1d335f913', 'DAFNE XIOMARA', 'SAMANEZ OCROSPOMA', 'femenino', 'HUARAZ', '964630969', 'ocrospomanazario@gmail.com', '78122435', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:02:10', '2023-07-05 10:02:10', NULL),
('452efc75-b954-47c6-bd52-c8b6ace5230e', 'YEDID VANESA', 'ROSALES LUCIANO', 'femenino', 'HUARAZ', '943240010', 'VANESAROSALESLUCIANO@GMAIL.COM', '62014784', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:49:12', '2023-07-04 17:49:12', NULL),
('45ded056-865b-479e-ad51-e3c667675261', 'YIMI ALEX', 'GARCIA SANCHEZ', 'masculino', 'HUARAZ', '900677142', 'yimialex01@gmail.com', '76205273', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 15:28:23', '2023-07-03 15:28:23', NULL),
('46a6196e-4e89-4200-98eb-6feb28a5be42', 'DIANA CAROLINA', 'ROJAS FARFAN', 'femenino', 'HUARAZ', '950104390', 'dianaro.0722@gmail.com', '74749924', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:56:36', '2023-07-04 11:56:36', NULL),
('472272dc-8a77-4f21-aec0-f403a88ddfb0', 'RODRIGO VALENTINO', 'LAZARO BLAS', 'masculino', 'HUARAZ', '975552622', 'jhonlazarobernuy@gmail.com', '63014168', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:13:03', '2023-07-04 11:13:03', NULL),
('47b63e97-4d98-4fac-b3ee-9d25603ab937', 'MELISSA NICOL', 'GUERRA REYES', 'femenino', 'HUARAZ', '942842480', 'delinareyessalazar@gmail.com', '78162449', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:15:25', '2023-07-04 19:15:25', NULL),
('48636bd4-4ddf-481c-97f0-708616ba8e8f', 'ARIHANA CRISTINA', 'VASQUEZ MAUTINO', 'femenino', 'HUARAZ', '944495289', 'milymaut05@gmail.com', '61822451', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:53:51', '2023-07-17 16:35:05', NULL),
('491c2fce-1834-4202-b3cb-1c32fa3ce773', 'JEREMY AIMAR', 'RONDAN MAGUIÑA', 'masculino', 'HUARAZ', '930393105', 'rondanjeremy7@gmail.com', '76506437', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:26:41', '2023-07-04 11:26:41', NULL),
('49fd874f-8967-45a1-9bf0-e2c8aaea1761', 'JULIAN MATHIAS', 'ROSAS ROSALES', 'masculino', 'HUARAZ', '964854546', 'MARLENEROSALESALVA@GMAIL.COM', '62354447', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:32:25', '2023-07-04 18:32:25', NULL),
('4a1a49fb-c306-4b7d-857f-6337e8b6aeb5', 'ANYELA MERY', 'ARAUCANO YAÑEZ', 'femenino', 'HUARAZ', '976340297', 'magali_myl@hotmail.com', '76346740', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:08:37', '2023-07-05 10:08:37', NULL),
('4a6eade6-2050-43f5-8c2a-093c53855a98', 'MARCIA GERALDINE', 'CASTILLO SIFUENTES', 'femenino', 'HUARAZ', '935518676', 'caastilllsifuentesmarcia@gmail.com', '75734081', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:36:51', '2023-07-04 10:36:51', NULL),
('4ac41da2-ab55-444d-b0ba-da3228649f4d', 'DINA EVELINA', 'ROSALES YANAC', 'femenino', 'HUARAZ', '975085060', 'eve_2015_14@gmail.com', '76091611', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:17:47', '2023-07-04 11:17:47', NULL),
('4c59f4c7-3757-41ad-9941-bbcab24a49de', 'MILAYDI LISETH', 'LUNA MAGUIÑA', 'femenino', 'HUARAZ', '918404368', 'sindicore1236@gmail.com', '61155396', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:56:09', '2023-07-04 10:56:09', NULL),
('4e35879f-c55d-44b3-a281-0d52b2f8fcc3', 'VALENTINA ROUSSE', 'OBREGON SAAVEDRA', 'femenino', 'HUARAZ', '999981224', 'kattysr.08@gmail.com', '62838116', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:15:39', '2023-07-04 11:15:39', NULL),
('4e7f184d-2e3d-4176-ad6e-19b794bc2159', 'ANDRE ALEXANDER', 'BOCANEGRA ROSALES', 'masculino', 'HUARAZ', '958663105', 'bety03573@gmail.com', '79152303', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:52:16', '2023-07-04 15:52:16', NULL),
('4ea4d514-133e-4ac6-8b31-3f58ab4237f5', 'MERCEDES NATALY', 'ASENCIO HUERTA', 'femenino', 'HUARAZ', '940252714', 'mechita09@gmail.com', '71578981', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:29:30', '2023-07-04 10:29:30', NULL),
('4ee83d91-570d-4197-81ce-41f408bfaf91', 'JAZMIN NAZARETH', 'GUILLEN MENDOZA', 'femenino', 'HUARAZ', '943179793', 'jazminguillenmendoza@gmail.com', '71562950', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:52:10', '2023-07-04 11:52:10', NULL),
('4f35c48d-d642-43da-abde-293b35095634', 'KEVIN JAIR', 'LOPEZ CARDENAS', 'masculino', 'HUARAZ', '931871768', 'PABLO10_672@HOTMAIL.COM', '60396452', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:54:18', '2023-07-04 11:54:18', NULL),
('4f8e7168-e451-4dc9-b25c-80bcadb3b313', 'BRITTANY BRIGITTE', 'LLIUYA FALCON', 'femenino', 'HUARAZ', '928603848', 'buenaaventuraperuexpeditions@gmail.com', '81138802', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:04:30', '2023-07-04 19:04:30', NULL),
('4fa3a074-a92c-462d-a35a-e203c8d3df43', 'ROY ALEXANDRO DEL PIERO', 'SANTA ATUSPARIA', 'masculino', 'HUARAZ', '970073649', 'zoilaatusparia@gmail.com', '61314730', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:33:38', '2023-07-04 11:33:38', NULL),
('5084ab7c-01c1-4d48-86f2-e6667994c255', 'SERGIO SANTIAGO', 'BARRETO VILLAVICENCIO', 'masculino', 'HUARAZ', '970301687', 'fvillavicencios@hotmail.com', '63193384', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:28:32', '2023-07-04 15:28:32', NULL),
('5129d4df-fc6a-46c2-b524-1d64af257d05', 'JEISON XAVIER', 'VILLACORTA SANCHEZ', 'masculino', 'HUARAZ', '944941091', 'villacortajavier70@gmail.com', '61409102', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:25:39', '2023-07-04 18:25:39', NULL),
('5185f803-8823-4cc3-b7e3-4e267a8c5555', 'LISST MARIA', 'BERNUY GUERRERO', 'femenino', 'HUARAZ', '925403093', 'LISSTBERNUY@GMAIL.COM', '42747164', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:15:54', '2023-07-04 12:15:54', NULL),
('518e1188-ae48-4394-bf2c-09e8cfe4a99b', 'JORGE DANIEL', 'FALCON GRANADOS', 'masculino', 'HUARAZ', '920995206', 'jfalcon1702@gmail.com', '81602767', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:39:24', '2023-07-04 15:39:24', NULL),
('526da515-fb44-4a70-b86d-1e2f53c4fd8c', 'ZENAIDA NOEMI', 'PACPAC ZAMBRANO', 'femenino', 'HUARAZ', '976311154', 'zenaidapacpacz@gmail.com', '42235074', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:41:29', '2023-07-05 11:41:29', NULL),
('546a9a68-6c00-425d-acfb-e0a429fac7c5', 'GARCIA HUAMAN', 'JANDRO LESMES', 'masculino', 'HUARAZ', '943639568', 'ynotengo@gmail.com', '62043075', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-11 17:52:25', '2023-07-11 17:52:25', NULL),
('54e99c39-ee15-4d18-a4f6-e7f5193b8de9', 'MAYLIN IRENE', 'TRUJILLO PIMENTEL', 'femenino', 'HUARAZ', '966273104', 'livita3pb@gmail.com', '62759139', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:46:50', '2023-07-04 10:46:50', NULL),
('5537c804-1e98-4e5a-9fab-c8ae3a670d68', 'JESUS ADRIAN', 'RAMIREZ ROMERO', 'masculino', 'HUARAZ', '938278921', 'ramirez_010168@hotmail.com', '61409245', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:26:58', '2023-07-04 12:26:58', NULL),
('554d0bcf-df97-4e12-966e-9f402cebce45', 'GERALDINE MICAELA', 'TREJO RODRIGUEZ', 'femenino', 'HUARAZ', '961146034', 'gemiracaledila@gmail.com', '77477125', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:00:59', '2023-07-04 19:00:59', NULL),
('55587c4c-6004-469a-b4bb-7c9e2a8aed9b', 'JERIMOT GABRIEL', 'CABALLERO NIETO', 'masculino', 'HUARAZ', '997839456', 'jerimotcaballeronieto@gmail.com', '76670508', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:02:48', '2023-07-04 18:02:48', NULL),
('564b5943-b9f6-469d-9e19-cfd28cf7879a', 'IVANNA ALEJANDRA', 'LOPEZ RIMAC', 'femenino', 'HUARAZ', '988572300', 'homeroame@gmail.com', '78321159', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-07 18:27:45', '2023-07-07 18:27:45', NULL),
('573fb02a-1313-4910-a737-07cc757a9f86', 'SAJHURY MILEYDI', 'OBREGON DIAZ', 'femenino', 'HUARAZ', '962988101', 'juanluisobregon74@gmail.com', '63092120', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:12:09', '2023-07-04 16:12:09', NULL),
('574b18bc-43d4-4e32-bd30-0d6a1842e4e5', 'GIULIANA JEANELLA', 'LAVADO GUEVARA', 'femenino', 'HUARAZ', '941127297', 'JJCESAR19@HOTMAIL.COM', '60400677', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:20:27', '2023-07-04 12:20:27', NULL),
('57d12366-d911-4d48-ada7-cc5841da9cb7', 'ZOE CAMILA', 'TOLEDO HUAMAN', 'femenino', 'HUARAZ', '971093020', 'evangelinarehuaman@gmail.com', '63688703', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:44:25', '2023-07-04 16:44:25', NULL),
('58f01807-7083-44eb-bfc5-3c4a9986b9f0', 'SEBASTIAN MATHIAS', 'HUERTA ORTIZ', 'masculino', 'HUARAZ', '927483574', 'nosedabe@gmail.com', '63091866', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:52:25', '2023-07-04 17:52:25', NULL),
('598ff13b-b43b-4073-b7ab-86aa05bc2ea7', 'LIAN SATOSHI', 'SUCASACA ARANDA', 'masculino', 'HUARAZ', '950428517', 'SUCASACA@OUTLOOK.COM', '90910399', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:29:46', '2023-07-05 10:29:46', NULL),
('59c888d3-cb24-480e-aad3-275ff40a2e33', 'VANESA MELISSA', 'MAGUIÑA MOLINA', 'femenino', 'HUARAZ', '918919818', 'vanesa_9501@hotmail.com', '71220871', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:22:46', '2023-07-04 12:22:46', NULL),
('5a0042e3-4333-4a9a-b525-9eb907561da2', 'YENNIBER HALIE', 'YABAR DIAZ', 'femenino', 'HUARAZ', '944410096', 'ruben.yaba10r@gmail.com', '91010194', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:31:04', '2023-07-05 10:31:04', NULL),
('5afa3d13-fbcd-4347-bf8d-f0e6be8e43d1', 'GIOVANNI AARON', 'OSORIO ARAMBURU', 'masculino', 'HUARAZ', '930121800', 'dunia.303.25@gmail.com', '77933140', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:47:23', '2023-07-04 15:47:23', NULL),
('5afeb2ef-e5c5-458c-9d1b-d4dce577fb6f', 'DANIELA ASTRID', 'SALVADOR LOPEZ', 'femenino', 'JR: VICTORIA S/N CENT SAN MARCOS', '938400415', 'aydeblancalopeztorrez@gmail.com', '81274366', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-10 15:34:43', '2023-07-10 15:34:43', NULL),
('5b343bd3-9a93-4bf6-a1bf-eacb393aef43', 'JENNIFER MANUELA', 'LOPEZ LLIUYA', 'masculino', 'HUARAZ', '977381456', 'gonzalesmorales@gmail.com', '62423666', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:55:04', '2023-07-04 10:55:04', NULL),
('5b735042-1c00-479b-891b-6a7bc0355a5a', 'JIMENA KIARA', 'OBREGON REYNALTE', 'femenino', 'HUARAZ', '998033699', 'jimenaobregonreynalte@gmail.com', '61429260', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:57:14', '2023-07-04 10:57:14', NULL),
('5c7def52-c753-4b3d-9401-84b4f8aceaa4', 'RENZO LEONEL', 'ALVA GARCIA', 'masculino', 'HUARAZ', '948179010', 'merida.maritza.garcia.rodriguez@gmail.com', '78593207', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 09:52:18', '2023-07-05 09:52:18', NULL),
('5cd32fdb-64f3-43c9-872d-c4b0148823c8', 'JUAN LIONEL', 'TACO ROJAS', 'masculino', 'HUARAZ', '943569714', 'NORKAROJAS12978@GMAIL.COM', '61233075', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:00:29', '2023-07-04 11:00:29', NULL),
('5cd9eac6-1860-476a-9426-6dff4ebbf06a', 'KATHERIN NANCY', 'JULCA YANAC', 'masculino', 'HUARAZ', '957438000', 'FREDYJULCA@HOTMAIL.COM', '71742158', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:39:52', '2023-07-04 16:39:52', NULL),
('5d21c6cd-a434-4cd2-a099-08bd74633710', 'MILAGRITOS YADIRA', 'CADILLO GOMEZ', 'femenino', 'HUARAZ', '955374302', 'milagritoscadillogomez@gmail.com', '72388098', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:21:47', '2023-07-04 11:21:47', NULL),
('5df2a21f-54b6-431c-9bd6-3425177cb2f4', 'SAMIR LEONARDO', 'VILLAFUERTE BLAS', 'masculino', 'HUARAZ', '943196076', 'jvillafuertealvaro@gmail.com', '81046208', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:18:53', '2023-07-04 19:18:53', NULL),
('5e180977-fa5d-4da9-855e-23838011d55d', 'VALENTINA', 'PEREZ SIERRA', 'femenino', 'HUARAZ', '998557044', 'estefanifortunay@gmail.com', '63158388', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 17:12:49', '2023-07-05 17:12:49', NULL),
('5ea2a063-5783-4a9e-bb6d-897526e5a46a', 'ELENCIO YOMED', 'MEJIA ESPADA', 'masculino', 'HUARAZ', '981838558', 'elebnmjia@4hotmail.com', '77575132', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:14:44', '2023-07-04 11:14:44', NULL),
('5f900afb-0a2a-4c92-95c0-6d2c89c31f1d', 'LUCIA ANGELICA', 'GAMARRA ROLLER', 'masculino', 'HUARAZ', '991975796', 'Roberluis45@hotmail.com', '61064045', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-10 18:15:40', '2023-07-10 18:15:40', NULL),
('5f903c21-cff0-4a37-8992-0cf7363fcd1e', 'JAIME LEONARDO', 'COLLAS BERNUI', 'masculino', 'HUARAZ', '943181279', 'eribernuirosales@gmail.com', '63092090', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 09:56:00', '2023-07-05 09:56:00', NULL),
('5f92ebf9-af1d-4cc5-860b-013a25dcdcb5', 'MATIAS ANDRE', 'MUÑOZ RAMIREZ', 'masculino', 'HUARAZ', '930763423', 'hcmm10@hotmail.com', '62518139', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:32:53', '2023-07-04 18:32:53', NULL),
('5fbf2ff9-fc2c-4fcb-bc7e-b35e3644ab49', 'GONZALO', 'GUTIERREZ GARCIA', 'masculino', 'HUARAZ', '951357240', 'HABYGARCIA.13@HOTMAIL.COM', '78956861', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:02:38', '2023-07-04 16:02:38', NULL),
('606ecbd1-1e27-4fcf-80e2-63e5f57d3123', 'MATHIAS JESUS', 'CASIMIRO DOLORES', 'masculino', 'HUARAZ', '968515101', 'SABINADOLORESC@GMAIL.COM', '90275268', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:59:12', '2023-07-05 10:59:12', NULL),
('60a6b45e-f7ae-4642-8fc3-d3db9bcba064', 'RUBEN WILDER', 'SANCHEZ SANCHEZ', 'masculino', 'HUARAZ', '930458344', 'rubensasaz@gmail.com', '75460608', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:32:26', '2023-07-04 11:32:26', NULL);
INSERT INTO `personas` (`id`, `nombre`, `apellidos`, `sexo`, `direccion`, `telefono`, `email`, `numiden`, `id_tipo_identificacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
('60c888b8-deba-4b4f-8c45-236205a5d0f8', 'CRISTHIAN JESUS', 'ROSALES ACUÑA', 'masculino', 'HUARAZ', '973 117 819', 'cr182183@gmail.com', '75563218', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:47:38', '2023-07-04 18:47:38', NULL),
('60ee0e9b-6966-446c-a9b9-e0f8afd935ca', 'ARINNA NAYELY', 'GONZALES SILVESTRE', 'femenino', 'HUARAZ', '921279902', 'gonzaleshaiannah20018@gmail.com', '76028790', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:15:50', '2023-07-04 18:15:50', NULL),
('61d472ff-9204-4a3d-b005-de2e63efb1d9', 'LUCA ADRIANO', 'VILCHEZ MILLA', 'masculino', 'HUARAZ', '947504419', 'sheseykiroto31@gmail.com', '78317258', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:17:58', '2023-07-04 10:17:58', NULL),
('62ba2b20-6969-4791-90e6-a5821eb6e534', 'ADRIAN ROBERTO', 'PEREZ VERGARA', 'masculino', 'HUARAZ', '945669580', 'perezvergaradrian@gmail.com', '71397459', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:37:01', '2023-07-04 10:37:01', NULL),
('62c83e2a-9013-49f7-b769-9dca55c826bb', 'ADRIANA ANTONELLA', 'CASTILLO HUAMAN', 'femenino', 'HUARAZ', '959654908', 'yamilj_cm@hotmail.com', '78845452', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:56:31', '2023-07-04 15:56:31', NULL),
('62f8a55f-2498-49a8-9b86-3d3d02b22aae', 'ELIZABETH', 'DUAREZ CHAVEZ', 'femenino', 'HUARAZ', '900698069', 'abog.eliduarez@gmail.com', '43455767', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:52:02', '2023-07-04 10:52:02', NULL),
('634ca05d-a856-442b-acbf-db1931f7c48e', 'KARY DEL ROSARIO', 'RODRIGUEZ SALAS', 'femenino', 'HUARAZ', '931678996', 'karirodriguez957@gmail.com', '71628117', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:12:57', '2023-07-05 10:12:57', NULL),
('649a1607-9c1c-49ec-8925-2155429ea7ec', 'GUADALUPE BETHANIE', 'GUERRERO RAMIREZ', 'femenino', 'HUARAZ', '940180013', 'darrlisita@gmail.com', '90735410', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:02:03', '2023-07-05 11:02:03', NULL),
('6529dd01-c7e6-4b6e-8aa3-67f8604dfae0', 'HECTOR FABIAN', 'GUZMAN RODRIGUEZ', 'masculino', 'HUARAZ', '+573183777521', 'guzmanrodriguezhector@gmail.com', '5829604', 'c45f2392-98ff-4646-86e8-72f0bd83ef94', '2023-07-14 18:48:01', '2023-07-14 18:48:01', NULL),
('65d5f4bb-b651-47f5-98d0-e7e19b22788e', 'JAVIER JESUS', 'CABELLO MAGUIÑA', 'masculino', 'JR.DAMAZO ANTUNEZ 749', '968603093', 'eldamaguinamilla@gmail.com', '62759148', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 11:18:20', '2023-07-03 11:18:20', NULL),
('6632adae-cf9d-4a96-a3eb-0f2a3a282009', 'YOMIRA ALLISON', 'MOSQUERA MELLISHO', 'femenino', 'HUARAZ', '932844808', 'yomira134@gmail.com', '71474476', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:42:46', '2023-07-04 16:42:46', NULL),
('66bbdcde-e8ae-4a71-a531-9223479f11ba', 'DIEGO FABRIZIO', 'MORALES FIGUEROA', 'masculino', 'HUARAZ', '943866609', 'OESLA@HOTMAIL.COM', '63014040', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:08:06', '2023-07-04 19:08:06', NULL),
('6723c1ac-b19c-413c-b543-c9cbb66e41c2', 'YEREMI ALDAHIR', 'CHILENO POMA', 'masculino', 'HUARAZ', '935407784', 'pomamaytte05@gmail.com', '81611050', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:16:44', '2023-07-04 16:16:44', NULL),
('690e8106-13a3-476f-9b5f-9b115d1a2804', 'RUTH ROXANA', 'ROBLES RODRIGUEZ', 'femenino', 'HUARAZ', '961325403', 'ROSARUTHROXANA@GMAIL.COM', '42559403', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 16:41:02', '2023-07-17 16:29:59', NULL),
('6912e1b9-4bac-4839-984b-65f713c887d3', 'IVAN SEBASTIAN', 'SANCHEZ MATOS', 'masculino', 'HUARAZ', '923327697', 'MAGA_989@HOTMAIL.COM', '62514508', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:53:47', '2023-07-04 10:53:47', NULL),
('69298888-e180-4336-993d-f9c14339717d', 'LADY ELENA', 'CASTILLEJO MEZA', 'femenino', 'HUARAZ', '934666548', 'LADY.CASTILLEJO.MEZA@GMAIL.COM', '75458922', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:35:45', '2023-07-04 17:35:45', NULL),
('693fe4aa-11b8-4d4f-b129-1657d47f498f', 'ANGEL DAVID', 'HENOSTROZA LEON', 'masculino', 'HUARAZ', '949809659', 'davidhenostroza@hotmail.com', '75426804', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:52:51', '2023-07-04 10:52:51', NULL),
('699ef119-61aa-4b16-a99f-a1f8e48005c8', 'ZOE BRUNELLA', 'HUERTA BECERRA', 'Select Option', 'HUARAZ', '938244881', 'robinson2284@hotmail.com', '90334737', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-06 18:08:10', '2023-07-06 18:08:10', NULL),
('6a0819a6-76a7-4f69-94b3-f4b8ef3153f9', 'DALIA KARISIA', 'CONTRERAS MONTES', 'femenino', 'HUARAZ', '977249739', 'daliacaricia@gmail.com', '76167742', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:29:46', '2023-07-04 10:29:46', NULL),
('6aceabe2-51e6-4105-a583-a50c572c3c01', 'NAOMI ROSE', 'ROSAS ROSALES', 'femenino', 'HUARAZ', '964854546', 'AMARLENEROSALESALVA@GMAIL.COM', '78418164', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:21:46', '2023-07-04 16:21:46', NULL),
('6b0b1dc6-48ca-48c6-bdd3-324b96892dd0', 'RODRIGO YAIR', 'MEDINA SALVADOR', 'masculino', 'HUARAZ', '920900771', 'medinaclaudioELISEO@gmail.com', '61080865', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:13:50', '2023-07-04 11:13:50', NULL),
('6b509ba0-0079-4c53-93d1-ed2a66512c61', 'LEIDY MAGALY', 'ALBINO ALVA', 'femenino', 'HUARAZ', '931278359', 'leydyal25@gmail.com', '72288156', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:33:33', '2023-07-04 17:33:33', NULL),
('6b641aef-305c-40ed-b01f-ef76348fe924', 'CESAR ANDRES', 'GARCIA CAMINO', 'masculino', 'HUARAZ', '960238133', 'gargut.2927@gmail.com', '63014139', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 09:58:05', '2023-07-05 09:58:05', NULL),
('6c1cc2c4-4cbf-426a-bcf5-61091254bda2', 'ERIKA CARMEN', 'PARIAMACHI LLIUYA', 'masculino', 'Huaraz', '971337126', 'erikapariamachi@cll-edu.pe', '75756658', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-21 01:13:12', '2023-06-21 01:13:12', NULL),
('6c52dc97-1cd2-431d-a53a-f388e717fda5', 'DOMINIC GILMER', 'PEREZ TORRE ANGELO', 'masculino', 'torrelirion@gmail.com', '995109400', 'torrelirion@gmail.com', '78480856', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:36:20', '2023-07-04 12:36:20', NULL),
('6ce413f8-232b-4635-ab49-3e131ac06baf', 'NILMAR YAEL', 'NIETO MATIAS', 'masculino', 'HUARAZ', '973851137', 'YAQUELINMATIAS32@GMAIL.COM', '81579638', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:41:28', '2023-07-04 16:41:28', NULL),
('6e65d33a-c5b6-472a-ad9d-1cdc10407c10', 'HAYLEY REICHEL', 'DUEÑAS LAGUNA', 'masculino', 'HUARAZ', '933542070', 'REICHELDUENAS1309@GMAIL.COM', '75244115', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:41:26', '2023-07-04 17:41:26', NULL),
('6ec6984d-84e8-4105-91fd-19a27119a89c', 'YELY DELMI', 'MORILLO MACHADO', 'femenino', 'HUARAZ', '968172919', 'yelymorrilo2020@gmail.com', '76013359', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:40:54', '2023-07-04 10:40:54', NULL),
('6ed66600-8ec4-40ce-b70b-10a1477f7023', 'CLYVER ROSSE', 'HUERTA CHAVEZ', 'masculino', 'HUARAZ', '967071131', 'AYUTOPLEASE@GMAIL.COM', '46533557', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:10:33', '2023-07-04 12:10:33', NULL),
('6ef69d98-3bb7-40bd-b7c7-985aa894ce77', 'MIA VIOLETA SASKIA', 'SOLIS RODRIGUEZ', 'femenino', 'HUARAZ', '941441760', 'eliza.2912@hotmail.com', '90290087', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:26:54', '2023-07-05 10:26:54', NULL),
('6f385f56-ad5f-4ef8-88ee-a51c5c36c819', 'MAYRA LINA', 'ZAVALA CARRILLO', 'femenino', 'JR. CANDELARARI VILLAR 320', '959327195', 'mayrazavlacarrillo25@gmail.com', '74325487', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:52:06', '2023-07-04 15:52:06', NULL),
('6fe0508d-1d3f-4d71-bfb1-08d8b22dee60', 'MATEO ILLIMANI', 'RAMIREZ RODRIGUEZ', 'masculino', 'HUARAZ', '943482564', 'zhumayha@gmail.com', '78032658', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:16:21', '2023-07-04 16:16:21', NULL),
('7034c320-7c08-46c8-8bba-081174a8aa57', 'YORDAN YENERSON', 'YAURI TOLENTINO', 'masculino', 'HUARAZ', '97899656', 'yordanyauri4@gmail.com', '75838212', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:00:13', '2023-07-04 18:00:13', NULL),
('707c932f-2347-422e-9609-2246da3db1a7', 'ALVARO TITZHAK', 'LAZARO HORNA', 'masculino', 'HUARAZ', '943047885', 'Heyner_red@hotmail.com', '79575261', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:04:34', '2023-07-04 16:04:34', NULL),
('708e4989-7717-471f-a390-47e497554049', 'ALESSANDRA', 'ANTUNEZ FIGUEROA', 'femenino', 'HUARAZ', '913075565', 'aleantunezfigueroa@gmail.com', '71446876', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 12:42:57', '2023-07-03 12:42:57', NULL),
('709fb432-8040-4130-a8ed-19db4e6ab592', 'JHOJANE ARIANE', 'VILLAVICENCIO GONZALES', 'femenino', 'HUARAZ', '964937122', 'gonxales.erika1205@gmail.com', '62672296', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:40:30', '2023-07-04 11:40:30', NULL),
('70c790e3-ff2a-4479-a8b3-a436b452e3ca', 'MILAYDI LISETH', 'LUNA MAGUIÑA', 'femenino', 'BA. UTUSHCAN.PAJ. B BARRIO', '918404368', 'SINDICORE123@GMAIL.COM', '61155396', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 09:20:45', '2023-07-03 09:20:45', NULL),
('710debb2-4638-4363-a025-ab4ac0930ebe', 'NAYELI DEYSI', 'JAVIER FLORES', 'femenino', 'HUARAZ', '970545772', 'JJcaldua09@gmail.com', '74235630', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:33:23', '2023-07-04 10:33:23', NULL),
('72053f77-35c0-4825-aa7a-62a2b9867f27', 'LUCERO VALENTINA', 'ANGELES JAMANCA', 'femenino', 'HUARAZ', '937643162', 'yanik_4444@hotmail.com', '78072659', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:47:53', '2023-07-04 15:47:53', NULL),
('72d54d7c-a33f-4ce8-8704-480263346942', 'RIVERA MELGAREJO', 'SAMUEL ELIEL', 'masculino', 'HUARAZ', '939919450', 'nelvamelgarejomejia@gmail.com', '61119781', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-17 10:13:10', '2023-07-17 10:15:15', NULL),
('735d62c3-5649-4275-9438-fddb03f24c99', 'ANGIE NAYELY', 'MANRIQUE VEZLAQUES', 'femenino', 'HUARAZ', '965903332', 'angiemanriquevelasquez@gmail.com', '72838872', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-06 11:23:38', '2023-07-06 11:23:38', NULL),
('73beef24-da10-4298-9618-da9bbd2d425f', 'RUTH DANIELA', 'ROJAS POLO', 'femenino', 'HUARAZ', '962177538', 'rrojaspolo@gmail.com', '70118481', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:30:18', '2023-07-04 11:30:18', NULL),
('75f4fc79-3a8b-4262-8823-ed024ea5d57b', 'Padre', 'Familia', 'masculino', 'Huaraz Peru', '945321987', 'giraldo.apol@gmail.com', '94536785', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-18 20:30:16', '2023-07-18 20:30:16', NULL),
('761fb457-9a1e-4f57-8c32-2436e3c620f8', 'LUIS ANGEL', 'CELESTINO CISNEROS', 'masculino', 'HUARAZ', '916818745', 'hardcarry2000@gmail.com', '73057492', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:28:30', '2023-07-04 10:28:30', NULL),
('76675ecb-41b9-4362-b382-35de49e422ca', 'DAVID ORLANDO', 'ARMIJO CARDENAS', 'masculino', 'HUARZ', '971623384', 'david.armijo@outlook.com', '72313973', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 18:40:23', '2023-06-23 18:40:23', NULL),
('769064c3-665c-4a66-8374-3b1e5a96a595', 'DENALY BRITANY', 'FLORES CHAVEZ', 'femenino', 'HUARAZ', '953603503', 'leslichavezseptimo@gmail.com', '79038729', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:54:12', '2023-07-04 15:54:12', NULL),
('76929a9b-a69d-4f90-933c-ec13bd2e275b', 'THALIA AMELY', 'RIVERA MONTES', 'femenino', 'HUARAZ', '996786508', 'thaliariveramon@gmail.com', '72392485', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:25:08', '2023-07-04 11:25:08', NULL),
('76c45e23-c85e-4121-b23c-ab5a17e4e00c', 'ANA', 'SUEJIRO ROJAS', 'femenino', 'HUARAZ', '932617914', 'anasuejiro@gmail.com', '43609859', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:15:05', '2023-07-04 10:15:05', NULL),
('7747e345-0c56-469a-981d-a677c4d7b2e0', 'FATIMA JHULIA', 'PACHAS ROMERO', 'femenino', 'HUARAZ', '989612545', 'denisse_mariana@hotmail.com', '90405088', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:25:43', '2023-07-05 10:25:43', NULL),
('77bb6a88-b5b4-4515-959c-8d7a7cfdf49f', 'ANNA CAMILA', 'RODRIGUEZ VALDERRAMA', 'femenino', 'HUARAZ', '952210359', 'LILYANNALAZOVALDERRAMA@GMAIL.COM', '62867005', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:17:37', '2023-07-04 16:17:37', NULL),
('77e20c95-f8b8-4cd0-8489-69b11f303c9f', 'LETIZIA SOFIA', 'ARAUJO CANO', 'femenino', 'HUARAZ', '945975630', 'natalmer@hotmail.com', '78835506', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:49:59', '2023-07-04 15:49:59', NULL),
('78c52cb9-385c-4164-9259-f8431da5ed5a', 'ROGGER MARTIN', 'MEJIA HUERTA', 'masculino', 'JR. JUAN DE LA CRUZ ROMERO 1131 / BELEN', '942639752', 'luzh258@hotmail.com', '62583779', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 11:26:57', '2023-07-03 11:26:57', NULL),
('78d60a53-c0b9-4a15-b6d6-84d036bdaf0e', 'FLOR DE MARIA', 'QUISPE FLORES', 'femenino', 'HUARAZ', '968185021', 'juanquispeyma@gmail.com', '968185021', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:20:08', '2023-07-04 11:20:08', NULL),
('79083f2e-b08e-4755-885c-17e7314a871a', 'KARINA DEYSI', 'CHICO LUNAREJO', 'femenino', 'MATACOTO S/N', '978249708', 'deysichicolunarejok@gmail.com', '70459159', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-11 08:45:08', '2023-07-11 08:45:08', NULL),
('7925381b-f1d6-4333-b1e6-226e49237321', 'ANGYE NICOLE', 'HURTADO ESPINOZA', 'femenino', 'HUARAZ', '903482763', 'angyinicoleh@gmail.com', '77179210', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:53:37', '2023-07-04 10:53:37', NULL),
('7949a5d0-9ff4-4c52-8852-0c26961fb203', 'JAZMIN YARITH', 'MILLA NORIEGA', 'femenino', 'kellyfiorella.g9@hotmail.com', '935820710', 'kellyfiorella.g9@hotmail.com', '77999372', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:04:40', '2023-07-04 16:04:40', NULL),
('79cee2a6-d3dd-4768-86ea-1204d8ddebf1', 'JHAMIR JOSHUA', 'ALBA GARCIA', 'masculino', 'HUARAZ', '983079135', 'noteiern@gmil.com', '80948356', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:31:49', '2023-07-04 12:31:49', NULL),
('7a9d6ad6-aabb-4aa5-b042-bdd8d3ff82b6', 'ELIANA GABRIEL', 'LEON TADEO', 'femenino', 'HUARAZ', '929364165', 'EVELYNTJ10@HOTMAIL.COM', '63092027', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:08:42', '2023-07-04 16:08:42', NULL),
('7b3b47a4-7740-4dd7-a7e8-c3ee1bc63f37', 'OZIL VLADIMIR', 'MEZA BRICEÑO', 'masculino', 'HUARAZ', '956548601', 'bfhgte@gmil.com', '78473581', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:17:42', '2023-07-04 19:17:42', NULL),
('7b87dc09-fbd4-46e6-822e-e7e85cf6b434', 'YANELY ROSMERY', 'MAYPU MANCILLA', 'femenino', 'HUARAZ', '963725522', 'FLORDEMARIAMANCILLAGUISANO@GMAIL.COM', '61517243', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:34:34', '2023-07-04 17:34:34', NULL),
('7c0206f0-ec69-496a-a644-a58b6b7360bc', 'EMER', 'ALBORNOZ GONZALES', 'masculino', 'HUARAZ', '952905420', 'albemer28@gmail.com', '47615626', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:02:08', '2023-07-04 18:02:08', NULL),
('7c0470b6-0bb0-4081-aeed-a9ac986e4557', 'DAVID RODRIGO', 'ESPINOZA GRANADOS', 'masculino', 'HUARAZ', '943 478 318', 'carmenllicahua@grupocellch.pe', '81596962', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:59:30', '2023-07-04 18:59:30', NULL),
('7d2dc991-9ffd-4eb9-9863-62a845f900cf', 'ANA MARIA', 'HENOSTROZA GLORIA', 'femenino', 'HUARAZ', '916220107', 'anamariahenostroza@gmail.com', '31653853', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:50:02', '2023-07-04 18:50:02', NULL),
('7d2fa5e8-7fe2-48b1-b2fb-2813d4e0669e', 'YAQUELIN YANCEN', 'VILLANUEVA CACHA', 'femenino', 'HUARAZ', '918949051', 'YAQUELINEBC.04@GMAIL.COM', '74054141', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:38:25', '2023-07-04 17:38:25', NULL),
('7d70f299-ba55-43e4-bd30-3d7ff72bcd59', 'ANDREA JIMENA', 'MENDEZ ESPINOZA', 'femenino', 'HUARAZ', '996872001', 'gdeysi@hotmail.com', '62354493', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:15:29', '2023-07-17 16:34:09', NULL),
('7db67c35-92b0-498d-b9dc-6645a27a0d21', 'ESTEBAN RUBEN', 'RODRIGUEZ VALDERRAMA', 'masculino', 'HUARAZ', '952210359', 'MARCO0286@GMAIL.COM', '62014868', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 15:26:50', '2023-07-05 15:26:50', NULL),
('7dbd2819-a9f6-49b4-a7fe-b55b9e4b917f', 'VALENTINA VICTORIA', 'COLONIA JULCA', 'femenino', 'HUARAZ', '990849615', 'julcavaneza@gmail.com', '81611073', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:53:48', '2023-07-04 18:53:48', NULL),
('7e51a78c-d073-4f73-82bd-16f637bb1818', 'THIAGO MILAN', 'TOLENTINO RODRIGUEZ', 'masculino', 'HUARZ', '9305941512', 'hdgte@gmail.com', '78452212', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:15:36', '2023-07-04 19:15:36', NULL),
('7ecd8e4d-ce1b-40e5-aefc-0297bbf87071', 'KRYSTEL GIMENA', 'PAUCAR RODRIGUEZ', 'femenino', 'HUARAZ', '987444798', 'JOHNLAIVE24@GMAIL.COM', '61155466', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:30:46', '2023-07-04 17:30:46', NULL),
('7f2eff23-03ec-4025-b834-7325bc62471f', 'LUIS DAVID', 'ESPINOZA CABELLO', 'masculino', 'HUARAZ', '918533177', 'dalubis2001@gmail.com', '72020227', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:25:53', '2023-07-04 17:25:53', NULL),
('7ff5c903-1620-4723-b424-3a30add63217', 'MATHIAS LUCIANO', 'ROJAS JARAMILLO', 'masculino', 'HUARAZ', '959017117', 'marielljg@gmail.com', '61957652', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:29:25', '2023-07-04 11:29:25', NULL),
('80ced0b2-ca9b-456a-a224-303ec4b2a6cd', 'BERTHILA MARGARITA', 'AMBROCIO CHINCHAY', 'femenino', 'HUARAZ', '947494654', 'tila02@hotmail.com', '80141333', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:17:13', '2023-07-05 11:17:13', NULL),
('815d70ef-a3d0-4f36-b3ea-6786e40b289c', 'ALEXANDRA NATALLE', 'PALACIOS ALBINCO', 'femenino', 'HUARAZ', '920087523', 'paaciosalexandra@gmail.com', '75210230', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:35:31', '2023-07-04 17:35:31', NULL),
('82dc64bd-07d2-4078-9c96-fe02b73564bb', 'HANS ALDAIR', 'GONZALES DIAZ', 'masculino', 'HUARAZ', '971036221', 'chavelita0104@hotmail.com', '62014880', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:09:56', '2023-07-04 18:09:56', NULL),
('8370ab44-bb4f-4496-ad5e-9faa87aad7a4', 'HELEN JANNETTE', 'SILVESTRE JAMANCA', 'femenino', 'HUARAZ', '941280679', 'norebto@gmail.com', '82583959', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:41:11', '2023-07-17 17:00:41', NULL),
('8376fc99-1f66-43e7-a4fe-21081530b0bb', 'BRYAN KEVIN', 'ALLENDE RODRIGUEZ', 'masculino', 'LIMA', '918590097', 'kevin.allende.rodriguez@gmail.com', '47827091', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-15 09:46:49', '2023-07-15 09:46:49', NULL),
('83ddad4c-24c7-45c2-8c66-7d0908175cbf', 'CAMILA NICOL', 'JOVE QUISPE', 'femenino', 'HUARAZ', '956910055', 'armida76_1@hotmail.com', '78385079', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:46:15', '2023-07-04 15:46:15', NULL),
('841d47d8-4097-4538-bf7f-9f7a05900c9c', 'MATEO CRISTIANO', 'MEZA DAMIAN', 'masculino', 'HUARAZ', '988550097', 'denely045@gmail.com', '79776069', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:25:42', '2023-07-05 10:25:42', NULL),
('84599c2d-3318-48f4-96e0-0e0d7abca2f3', 'CYNTHIA ISABEL', 'ASIS VARGAS', 'femenino', 'HUARAZ', '948595044', 'isbaelasisvargas@gmail.com', '75791820', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:48:18', '2023-07-17 17:01:57', NULL),
('84d24923-10c4-458b-a2ed-e168a1fb6a4d', 'FABIO STEPHANO', 'ANTUNEZ QUIROZ', 'masculino', 'HUARAZ', '935136806', 'keyla_2409@hotmail.com', '77882134', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:34:21', '2023-07-17 16:38:50', NULL),
('84dabf35-0814-4c7f-b186-7496f1bacdf0', 'NAYSHA ARIANA', 'SABINO FIGUEROA', 'femenino', 'HUARAZ', '945860174', 'tania_fo@hotmail.com', '61517261', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:33:55', '2023-07-04 18:33:55', NULL),
('84ef2cde-436e-48b1-803a-ace550c4ba03', 'ARIANA DENISE', 'MALLQUI RAMIREZ', 'femenino', 'HUARAZ', '989612545', 'denisse_mariana@hotmail.com', '90405088', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:23:28', '2023-07-05 10:23:28', NULL),
('85722c6d-5535-4e66-8ea8-e40dbbcfb19c', 'JUAN ALEXIS', 'TITO LOPEZ', 'masculino', 'HUARAZ', '988460168', 'tito.lopez.juan@gmail.com', '72031877', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:18:14', '2023-07-04 17:18:14', NULL),
('85f3a758-0b7d-42ca-a7d0-bd5f0db4b493', 'CAMILA DEL CARMEN', 'RAMIREZ FERNANDEZ', 'femenino', 'HUARAZ', '917828250', 'erikafernandezvuilca@gmail.com', '78056844', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:49:15', '2023-07-04 15:49:15', NULL),
('861f2ff2-978f-494d-98d0-6ddb236b05db', 'BIGAIL GRISEL', 'FLORES HUANEY', 'femenino', 'HUARAZ', '981633305', 'josselinemhm@hotmail.com', '76318776', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:19:54', '2023-07-04 17:19:54', NULL),
('8763eb99-ee33-4432-83cd-8031833ec4cb', 'ADRIANNOEL CIRO', 'BENDEZU VILLAFANA', 'masculino', 'HUARAZ', '996166701', '4rvillafana.89@gmail.com', '72340977', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:50:33', '2023-07-04 10:50:33', NULL),
('87b26f7c-d274-492c-94a7-18fe83819e42', 'HEIDELINE DIANE', 'HENOSTROZA BARRENECHEA', 'femenino', 'HUARAZ', '977501093', 'BARRETENECHE@GMAIL.COM', '31668200', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:32:13', '2023-07-04 10:32:13', NULL),
('87df4520-0b60-421d-a680-ab34404cf5bb', 'VALERIE NADINE', 'HUERTA CALIXTO', 'femenino', 'CARRE. CENTRAL S/N BARRIO ANTAOCO', '949836061', 'cuchoficunasam@hotmail.com', '61911895', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-06 12:03:58', '2023-07-06 12:03:58', NULL),
('883c74be-4ad4-4227-a22e-b5b1da65949a', 'DANIEL RODRIGO', 'LUCERO TORRES', 'masculino', 'HUARAZ', '974078794', 'munaykim@hotmail.com', '63688386', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:16:37', '2023-07-04 19:16:37', NULL),
('88a46b94-7541-4f38-8367-8071120d5121', 'SHARON VAL', 'BEDON CCENTE', 'femenino', 'HUARAZ', '+51 924 013 042', 'sharonbedonccente.15@gmail.com', '73631351', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:31:04', '2023-07-04 10:31:04', NULL),
('8914039a-e882-4ff8-a18f-e266885e8e5f', 'KHIARA ANGHELA', 'ABARCA GUILLERMO', 'femenino', 'HUARAZ', '923797450', 'yoly1_29@hotmail.com', '81046257', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:31:13', '2023-07-04 15:31:13', NULL),
('8a8515c7-a060-4108-b4ab-14490032cb93', 'BRAIYAN ANTONIO', 'ISASI CAJALEON', 'masculino', 'HUARAZ', '959053639', 'antonioisasic2003@gmail.com', '72958187', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:12:02', '2023-07-04 11:12:02', NULL),
('8a94e27b-c9e4-489b-837c-d0a869306861', 'CAMILA LUCERO', 'GAMARRA BRITTO', 'femenino', 'HUARAZ', '921098679', 'britosnx@gmail.com', '63193549', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:00:55', '2023-07-17 16:37:14', NULL),
('8abdb58d-8522-4af2-8231-f5e5695f7bef', 'CIELO DSLEWSKA', 'ALBA GARCIA', 'femenino', 'HUARAZ', '920225705', 'roberth.ace2011@gmail.com', '60024995', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:02:58', '2023-07-04 12:02:58', NULL),
('8b05f51d-e1d7-4837-9d9c-40f279b4d268', 'JOAQUIN JUSTINO', 'CHAMANA QUIÑONEZ', 'masculino', 'HUARAZ', '9797575339', 'jaquidayanari2@gmail.com', '63688798', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-12 15:41:12', '2023-07-12 15:41:12', NULL),
('8b894451-6472-4fb4-b7bf-f5d0706771c6', 'SAMANTHA ARLET', 'CACHA ALMENDRADES', 'femenino', 'HUARAZ', '943051909', 'CARMENAC2107@HOTMAIL.COM', '90622027', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:18:22', '2023-07-05 10:18:22', NULL),
('8c2c8033-67fa-49e7-8378-9fbe4008e0a4', 'DANILO', 'SIMEON AVALOS', 'masculino', 'Distrito Independencia', '948729532', 'dtravel06@gmail.com', '47755643', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:13:27', '2023-06-23 19:13:27', NULL),
('8d26dca5-10b2-4eee-ac1d-141604b293cd', 'CAMILA FATIMA', 'CALDERON ROMERO', 'femenino', 'HUARAZ', '952211433', 'notengo1415@gmail.com', '61822207', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:42:27', '2023-07-04 17:42:27', NULL),
('8d29a1f3-0246-44ea-83ee-fdeeb39d225e', 'MARIA FERNANDA XIMENA', 'SOLIS REYES', 'femenino', 'HUARAZ', '927 720 751', 'timlabclinic@hotmail.com', '61409147', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:59:50', '2023-07-17 16:33:03', NULL),
('8d58347c-9dce-4441-aa62-ff8cfe2eae4e', 'GABRIEL ALEXANDER', 'PEREZ CASTRO', 'masculino', 'HUARAZ', '975442061', 'gabrielpc434@gmail.com', '32592596', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 16:29:05', '2023-07-17 16:28:58', NULL),
('8d6297ed-475f-46cf-9e78-08321c07cf74', 'GUSTAVO GABRIEL', 'OLIVAS MALPICA', 'masculino', 'HUARAZ', '943917063', 'moisess265@gmail.com', '81611043', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:13:42', '2023-07-04 16:13:42', NULL),
('8dd2b975-187b-4c42-a762-36c1553c0f0e', 'ROMINA ALEXANDRA', 'HUERTA RAMIREZ', 'femenino', 'HUARAZ', '959453438', 'rominaccoso8@gmail.com', '61080764', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:29:49', '2023-07-04 17:29:49', NULL),
('8e0687a2-7356-4cfd-b81a-85edd6fbee7f', 'NAOMI JATZURY', 'LAZARO HORNA', 'femenino', 'HUARAZ', '943 047 885', 'esrayis@hotmail.com', '61713691', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:32:07', '2023-07-04 17:32:07', NULL),
('8e0adbc2-9cc9-4b88-81bd-71003a870e53', 'STYVEN MIHAIL EDGAR', 'MORALES TARAZONA', 'masculino', 'HUARAZ', '943617455', 'yhadi10.24@gmail.com', '72867379', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:11:30', '2023-07-05 10:11:30', NULL),
('8e1bbf29-53d3-4ea7-9a52-0885eb2130e4', 'ANDREA JHERALDY', 'VILLAFUERTE GUERRERO', 'femenino', 'HUARAZ', '928677041', 'andreajheraldy0204@gmail.com', '72879047', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:50:15', '2023-07-04 18:50:15', NULL),
('8e9391c6-8ae6-4112-90ac-7732c811025f', 'ISAAC ALEJANDRO', 'AGUILAR RAMIREZ', 'masculino', 'HUARAZ', '943420000', 'lisbth.dr@gmail.com', '61314642', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:12:06', '2023-07-04 12:12:06', NULL),
('8f7ef1aa-7940-45b3-aa61-4a155d216486', 'EDIN RUSWEL', 'CORNELIO COTRINA', 'masculino', 'HUARAZ', '916545004', 'ecorneliocotrina@gmail.com', '47455321', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:03:35', '2023-06-23 19:03:35', NULL),
('8f887817-e84d-43ab-a787-7c5c8b454e86', 'FLORCITA BLANCA', 'SANCHEZ LOPEZ', 'femenino', 'HUARAZ', '972540750', 'LOPEZLOVSAN97@GMAIL.COM', '73388753', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:13:35', '2023-07-17 16:36:23', NULL),
('8f8ba1da-abfc-415a-b607-c58e9a31f6fc', 'FABRICIO FERNANDO', 'JAMANCA SALAZAR', 'masculino', 'HUARAZ', '916680385', 'lady_vsr@hotmail.com', '63528003', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:02:09', '2023-07-04 16:02:09', NULL),
('8fa1c1f5-e5a0-49a4-b8d2-69bb12446ce7', 'ESTEBAN DARIO', 'FLORES DIONICIO', 'masculino', 'HUARAZ', '955618060', 'jafa1976@gmail.com', '62640376', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:04:47', '2023-07-04 12:04:47', NULL),
('8fe9e7a4-9bd9-42e6-b852-1034f967343a', 'JHONATAN LUIS', 'IBARRA OLIVEROS', 'masculino', 'HUARAZ', '930552046', 'ibarra_jio@hotmail.com', '47731250', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:17:24', '2023-06-23 19:17:24', NULL),
('9036eb09-09b5-4374-887b-f68a0c93501c', 'ROYER ANTONIO', 'HUANE HUAMAN', 'masculino', 'HUARAZ', '938634439', 'ROYERHUANE49@GMAIL.COM', '75749750', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:52:18', '2023-07-17 17:08:52', NULL),
('90b50624-8012-431d-8bb3-e4cd065f60c5', 'LIAM TYLER TONHINO', 'YABAR DIAZ', 'masculino', 'HUARAZ', '043615712', 'geoneladiazmedina@gmail.com', '79073923', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:07:21', '2023-07-05 10:07:21', NULL),
('91271cf6-59ef-4f14-b4e3-f30a7baed6bf', 'ISABEL MERCEDES', 'APOLINARIO CANCAN', 'femenino', 'HUARAZ', '986049983', 'NATY11_4@HOTMAIL.COM', '81552719', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:49:01', '2023-07-04 15:49:01', NULL),
('9147fc49-fcdb-4005-8329-bcd0877f7cbd', 'ZUNMI LUNA ALEJANDRA', 'PEREZ CAMONES', 'femenino', 'HUARAZ', '920620106', 'girasol8004@gmail.com', '63092061', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-06 19:22:57', '2023-07-06 19:22:57', NULL),
('91824f88-8199-4119-8fc1-6fcff2bbfff7', 'MARCO JHONATAN', 'LLIUYA TAIPE', 'masculino', 'AYLLUPAMPA S/N', '969656653', 'Marcoxplorejh@gmail.com', '77433725', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-12 17:15:48', '2023-07-12 17:15:48', NULL),
('91ce8813-183d-4aa8-b49e-fb6c3b78d7ba', 'JOAB JOEL', 'ROSALES CALHUA', 'masculino', 'HUARAZ', '948825107', 'ndhdu@gmail.com', '62319151', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:59:31', '2023-07-04 11:00:39', NULL),
('9248d1d1-0692-4b8d-8cd8-23d28aaf87b1', 'MILENA YERALDIN', 'PAJUELO VILLACORTA', 'femenino', 'HUARAZ', '917 776 479', 'Pajuelomilena@hotmail.com', '76315668', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:05:33', '2023-07-04 12:05:33', NULL),
('93f48c98-ba6b-4cf9-bbe2-7d8badc9a0af', 'ALESSANDRO GABRIEL', 'VILLANUEVA CASTRO', 'masculino', 'HUARAZ', '966390262', 'BVIDELCA@GMAIL.COM', '63013755', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:58:43', '2023-07-04 17:58:43', NULL),
('941726d7-e0c8-478a-b015-69f53290de38', 'ANYHELO YORSETH', 'FLORES NORIEGA', 'masculino', 'HUARAZ', '920576224', 'FLORESNORIEGA0530@HOTMAIL.COM', '76946447', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:31:12', '2023-07-04 18:31:12', NULL),
('943e05c2-b9c1-4deb-a402-ef68c0e25746', 'FRANCESCA GUADALUPE', 'SANCHEZ NAVARRO', 'femenino', 'HUARAZ', '928603747', 'csanchez6414@gmail.com', '61411921', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:31:58', '2023-07-04 17:31:58', NULL),
('94f3e879-df5f-42d8-9b3e-7c15fbf8213a', 'DIOZALINDA NORMA', 'SALAZAR FERNANDEZ', 'femenino', 'HUARAZ', '979277557', 'FRANKSALAZARF@GMAIL.COM', '60517352', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:23:17', '2023-07-04 18:23:17', NULL),
('95981a59-aa74-4cb7-9e4f-837506237270', 'IBETH ROCIO', 'JAMANCA MORALES', 'femenino', 'HUARAZ', '943248785', 'JOHNJAMANCA@HOTMAIL.COM', '63193489', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:03:38', '2023-07-04 16:03:38', NULL),
('967e8158-3533-4d28-ba09-9c3645e31ce4', 'ACUÑA TOLEDO', 'CAMILA MARELY', 'femenino', 'PASAJE SAN CRSTOBAL 8 CONO ALUVIONICO OESTE', '945570089', 'norka.toledo@gmail.com', '63014038', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-10 18:57:45', '2023-07-10 18:57:45', NULL),
('96dd2b35-bb01-485d-a560-bdc942729233', 'MILAGROS GIOVANNA', 'FLORES LEIVA', 'femenino', 'HUARAZ', '975184472', 'milagrosfloresleiva@gmail.com', '41764739', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 09:32:26', '2023-07-03 09:32:26', NULL),
('977be44d-cf7b-4076-ad05-f538480a3ee7', 'SOFIA AMABEL', 'MATOS ORTIZ', 'femenino', 'HUARAZ', '941 860 503', 'nieotiene@mail.com', '61957938', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:54:54', '2023-07-04 10:54:54', NULL),
('9782a86c-6aa1-4cd5-8ca2-2bcdde057e2f', 'SOLMARIA NICOLE', 'VIDAL CORONEL', 'femenino', 'HUARAZ', '974133384', 'mariavidal27@gmail.com', '76510665', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:50:48', '2023-07-04 16:50:48', NULL),
('97e27954-929f-4738-91d5-d25f5f29e577', 'CLAUDIA YUNICE', 'JULCA NIVIN', 'femenino', 'HUARAZ', '938347062', 'LAURANIVIN@YAHOO.ES', '61298726', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:54:07', '2023-07-04 17:54:07', NULL),
('9851cb1a-3521-4bb7-9e56-79c0271e28a6', 'FLOR YOSELINA', 'CELESTINO RAMIREZ', 'femenino', 'HUARAZ', '938910799', 'yoselina.celestinoramirez@gmail.com', '77099938', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:45:16', '2023-07-04 18:45:16', NULL),
('99239282-ec2b-432f-8ae9-0383db562129', 'DELICIA NOELIA', 'BELEN SIGUEÑAS', 'femenino', 'HUARAZ', '990896375', 'estrellamia2004@hotmail.com', '78627359', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-27 15:35:04', '2023-06-27 15:49:08', NULL),
('9925ccdb-5856-4793-9764-33386edfca9e', 'GABRIELJESUS EDDY', 'BENDEZU VILLAFANA', 'masculino', 'HUARAZ', '943025543', 'gabenvillatarea@gmail.com', '72659721', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:27:09', '2023-07-04 18:27:09', NULL),
('998b4fe5-4393-4fc4-8ddc-395265975021', 'ESTEFANO KOVAC', 'OCROSPOMA ZIMIC', 'masculino', 'HUARAZ', '942041150', 'katyusca925@hotmail.com', '77995339', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:44:18', '2023-07-04 15:44:18', NULL),
('9a546816-cc82-4f56-a393-38ea2038d3c2', 'NELSON FRANCISCO', 'MEJIA CHAVEZ', 'masculino', 'HUARAZ', '917164006', 'nelsoncm700@gmail.com', '61233268', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 18:52:07', '2023-07-05 18:52:07', NULL),
('9a929c15-0bb2-4927-bda6-fa05ce13a6be', 'qweqwe123', 'wqeqwasdasd', 'masculino', '123123123', '123123123', 'sgcadmin@unasam.edu.pe', '12312312', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-18 08:27:50', '2023-06-18 08:27:50', NULL),
('9ab56908-3234-49a8-baf2-d9cb514e301d', 'EVOLETH EVANGELIN', 'GUTIERREZ QUIÑONES', 'femenino', 'HUARAZ', '953 833 451', 'noteine@gmail.com', '78323848', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:33:08', '2023-07-04 12:33:08', NULL),
('9b8b15d6-32dd-47db-9e1b-ff675aff44e2', 'JHANDY ROMINA', 'NEYRA CERNA', 'femenino', 'HUARAZ', '973939301', 'rominaneyracerna97@gmail.com', '72570307', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:24:47', '2023-07-04 12:24:47', NULL),
('9b957d6a-82f6-402c-af87-27b296c07cf5', 'JHON JAIRO', 'RAMIREZ MORALES', 'masculino', 'HUARAZ', '981325082', 'jhonramirez37@gmail.com', '71981911', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 12:35:24', '2023-07-05 17:56:57', NULL),
('9c171452-9fde-47b9-88d3-266f15c2a37c', 'SAUL EDER', 'AGUILAR CASTROMONTE', 'masculino', 'HUARAZ', '943218189', 'saul.ace_95@outlook.com', '71727610', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-14 15:32:21', '2023-07-14 15:32:21', NULL),
('9ccc246b-30ee-4a7d-879a-6ee91965d810', 'DEYVI ALEXIS', 'ACOSTA LEYVA', 'masculino', 'HUARAZ', '997212599', 'DEYVI-CARAZ1000@hotmail.com', '71889500', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:03:50', '2023-07-04 11:03:50', NULL),
('9d252fde-eb4f-42a9-be5f-b7fdecaf6c50', 'VILMA REGINA', 'QUIÑONEZ CARREÑO', 'femenino', 'HUARAZ', '943687779', 'reginaquinonez@hotmail.com', '40614223', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:45:00', '2023-07-04 10:45:00', NULL),
('9d3b4a88-43d1-4b20-b349-aa47d1a84878', 'JAMES ISRAEL', 'COPITAN ACUÑA', 'masculino', 'HUARAZ', '935059673', 'milagros-1207@hotmail.com', '78956391', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:33:40', '2023-07-04 15:33:40', NULL),
('9de08a0d-6d2f-4a8a-8239-fefd948b7b61', 'NATALY ARIANA', 'BENDEZU VILLAFANA', 'femenino', 'HUARAZ', '996166701', 'rvillafana.89@gmail.com', '75632539', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:11:09', '2023-07-04 17:11:09', NULL),
('9deb9f99-4dac-47ec-89f2-263e186b9e02', 'AVRIL ISABELA', 'ROSALES MILLA', 'femenino', 'HUARAZ', '992989326', 'yasinaidamilla@gamil.com', '62287488', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:16:40', '2023-07-04 10:16:40', NULL),
('9df86b1b-202d-453a-9139-146b91cb2ad0', 'SERGIO MATEO', 'DONGO HUMBO', 'masculino', 'HUARAZ', '949682619', 'pamesh260203@gmail.com', '90996380', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:00:25', '2023-07-05 11:00:25', NULL),
('9e0b2ce4-d055-4e13-8b8b-52a514aafb88', 'LUHANA MARLENE', 'GONZALES GAYTAN', 'femenino', 'HUARAZ', '921693390', 'amnergonfer@gmail.com', '61957899', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:35:46', '2023-07-04 11:35:46', NULL),
('9e7b5966-cb48-4b1d-9196-1e418cdfa50e', 'SANDER SANTIAGO', 'PAREDEZ GUERRERO', 'masculino', 'HUARAZ', '983132660', 'yessyguerrero03@gmail.com', '90125102', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:05:55', '2023-07-05 11:05:55', NULL),
('9ed3f31d-65a2-43af-88aa-5e3dcd78cdfd', 'MARIA FERNANDA NELSY', 'JAMANCA HUANE', 'femenino', 'HUARAZ', '969664517', 'yudyhuane22@gmail.com', '79320939', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:41:57', '2023-07-04 15:41:57', NULL),
('9fc2d8d6-c26e-47ac-9f97-a338e2fbb57a', 'CAMILA VALENTINA', 'TAMARA CHAVEZ', 'femenino', 'HUARAZ', '921581490', 'EROCIO_63@HOTMAIL.COM', '62287280', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:18:46', '2023-07-04 11:18:46', NULL),
('a00da28d-ed6a-414d-9d7f-8ac7e39f414b', 'ALEX JAIR', 'PAREDEZ GUERRERO', 'masculino', 'HUARAZ', '983132660', 'yessyguerrero_01@hotmail.com', '77941559', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:15:14', '2023-07-04 16:15:14', NULL),
('a03b848f-7f3d-45b5-9b47-a3709780f398', 'BRANDOM WILLIS', 'OSORIO JULCA', 'masculino', 'HUARAZ', '945388940', 'osoriobando@gmail.com', '76592276', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:24:19', '2023-07-04 11:24:19', NULL),
('a0d05b19-266c-4ba1-b477-8c31a1598809', 'ABIGAIL STEFFANY', 'CARRILLO CONDOR', 'femenino', 'HUARAZ', '932990302', 'abyga_2000@hotmail.com', '71249062', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:46:16', '2023-07-05 10:46:16', NULL),
('a19b96fa-06bf-4c34-bbc5-3303b011eb59', 'MARIANA ALLISON', 'LEON SALAZAR', 'femenino', 'HUARAZ', '966238395', 'JNSP_A@HOTMAIL.COM', '62866822', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:21:23', '2023-07-04 12:21:23', NULL),
('a1cc90fb-a721-4363-af79-68bd90a77509', 'LUCETTE ELIANA', 'JULCA CHAVEZ', 'femenino', 'HUARAZ', '957438000', 'fredyjulca@gmail.com', '63193578', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 09:46:23', '2023-07-04 09:46:23', NULL),
('a1f517de-c895-4d08-aa46-f7f9e49e9533', 'MIA GRAZZIA', 'VALERIO AGUEDO', 'femenino', 'HUARAZ', '957678541', 'mia.grazzia.2019@gmail.com', '61080763', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:16:30', '2023-07-04 10:16:30', NULL),
('a21ff433-6d79-4415-bdf3-e82830b69639', 'JHOJAN RAÚL', 'SHUAN RODRIGUEZ', 'masculino', 'HUARAZ', '962461610', 'JHOJANRAULRODRIGUEZ@GMAIL.COM', '62014845', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:37:27', '2023-07-04 18:37:27', NULL),
('a24d0c0e-2ac3-440b-9ead-ce8d3949c822', 'RICARDO ARTURO', 'TARAZONA HUERTA', 'masculino', 'HUARAZ', '943243372', 'jtlarturo@yahoo.es', '72887901', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:19:40', '2023-07-04 11:19:40', NULL),
('a2ab1e78-38ee-497e-b776-18fc8942fff6', 'DANIELA BRENDA', 'RAMIREZ GAYTAN', 'femenino', 'HUARAZ', '970050742', 'alichita22@hotmail.com', '78325904', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 09:59:17', '2023-07-05 09:59:17', NULL),
('a2bfb271-7597-40c1-af12-3a3016ddbfd4', 'MATIAS IGNACIO', 'TERRAZAS HUERTA', 'masculino', 'HUARAZ', '900267308', 'vrhuertah@gmail.com', '62015023', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-30 19:33:46', '2023-06-30 19:33:46', NULL),
('a3ff9a12-c012-4319-8611-cdf41183811c', 'SHANTALL NATALY', 'RAMIREZ LOPEZ', 'femenino', 'HUARAZ', '937462850', 'SHANTRAMIREZLOPEZ@GMAIL.COM', '72717266', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:35:40', '2023-07-04 18:35:40', NULL),
('a48dfce8-027b-4057-b268-4830321e2f0c', 'GABRIELA ROSARIO', 'CORREA SIVINCHA', 'femenino', 'HUARAZ - INDEPENDENCIA', '930136245', 'gabbrielacorrea@gmail.com', '71865451', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:26:21', '2023-06-23 19:26:21', NULL),
('a4db601a-7a94-435f-b8ce-1f939934ea25', 'JOSE LUIS', 'PALOMINO ALVARADO', 'masculino', 'HUARAZ', '985761521', 'jhpalomino0519@gmail.com', '61517188', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:46:01', '2023-07-04 18:46:01', NULL),
('a573657d-5ab2-48fb-b09a-f522ec0efd5c', 'VALENTINA ALONDRA', 'SPETALE RIOS', 'femenino', 'HUARAZ', '943788830', 'yriosortiz8@gmail.com', '91245171', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:28:29', '2023-07-05 10:28:29', NULL),
('a5a9eaad-8a0a-4edf-9c43-5df105a0a26a', 'PALOMA DAYRAL', 'CORAL MALLQUI', 'femenino', 'HUARAZ', '912968464', 'paulaterazh@gmail.com', '75180182', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:11:40', '2023-07-05 11:11:40', NULL),
('a5b54455-8fcd-4358-afac-cde87e460fa7', 'Lucas', 'Garcia', 'masculino', 'Av. Centenario 574', '934587542', 'lucas@gmail.com', '78942374', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-14 20:32:06', '2023-06-14 20:32:06', NULL),
('a60c3016-64b1-4449-b69e-2e11b0e03f14', 'DIEGO JESUSEDUARDO', 'GARCIA RIVERO', 'masculino', 'JR. SUCRE 12 48', '943441814', 'dentalhuaraz@hotmail.com', '60983930', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-06 18:50:51', '2023-07-06 18:50:51', NULL),
('a60eabdc-ffde-458a-89e6-1d3f697d1a4d', 'ZARAYU VALENTINA', 'PAUCAR ALVA', 'femenino', 'HUARAZ', '951426004', 'RROBELESALVA@GMAIL.COM', '61713734', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-22 10:30:46', '2023-06-22 10:30:46', NULL),
('a6241145-541f-4192-be0a-1c9ea883a874', 'ALONDRA JOYCE', 'LOPEZ OSORIO', 'femenino', 'HUARAZ', '943616966', 'ROXFRIDA666@GMAIL.COM', '61822327', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:41:33', '2023-07-04 16:41:33', NULL),
('a6426812-84f1-4152-8183-cf40feb8a87a', 'GIMENA GRACIA', 'CAMACHO ESCUDERO', 'femenino', 'HUARAZ', '935908056', 'VERONICAGUISELA7219@GMAIL.COM', '61080751', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:45:15', '2023-07-04 17:45:15', NULL),
('a67fd23d-c916-4e80-935e-14f070c905e6', 'STEVEN JEANDETH', 'OSORIO ALBINO', 'masculino', 'DISTRITO TARICÁ', '992239462', 'chavocaro@gmail.com', '62552542', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-06 15:44:58', '2023-07-06 15:44:58', NULL),
('a6992127-28ba-4d0a-8a8c-f6845fceb824', 'CRIS DEKER', 'RAMIREZ GAYTAN', 'masculino', 'HUARAZ', '970050742', 'ALICHITA22Y@HOTMAIL.COM', '61657263', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:57:04', '2023-07-04 18:57:04', NULL),
('a7586346-7ed1-4ec0-bf83-388d02f4f3e8', 'SOFIA CRISTINA', 'FIGUEROA LAZARO', 'femenino', 'HUARAZ', '954658670', 'karol16_6@hotmail.com', '63193457', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-10 17:32:58', '2023-07-10 17:32:58', NULL),
('a7b72830-a98a-4b9f-8b70-58b0f08ab423', 'FABIAN YAZID', 'DEXTRE GOMEZ', 'masculino', 'HUARAZ', '981644045', 'COOLIVAN2@HOTMAIL.COM', '61822286', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:31:02', '2023-07-04 10:31:02', NULL),
('a9235efc-cb0b-4e7e-abd5-06ef4d800afb', 'ADRIANO MATEO', 'HUAMAN LAZARO', 'masculino', 'HUARAZ', '943615788', 'STARBLACK61@HOTMAIL.COM', '62656906', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:42:36', '2023-07-04 17:42:36', NULL),
('a94f6638-07f5-48d7-9e0c-8c6b9c078730', 'SEBASTIAN HERWIN', 'VALDIVIA GONZALES', 'masculino', 'HUARAZ', '975797633', 'CRISTAL6666@HOTMAIL.COM', '61957891', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:57:21', '2023-07-04 17:57:21', NULL),
('aa14a2b6-9690-4668-a49c-e7fe9b3d7723', 'JULIAN OCTAVIO', 'CARRION RAPREY', 'masculino', 'HUARAZ', '976439628', 'carrionjulian218@gmail.com', '41998293', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:20:30', '2023-07-04 10:20:30', NULL),
('aa34024f-9406-4dd2-8d18-9a855199dfad', 'VALERIA APRIL', 'ROJAS COCHACHIN', 'femenino', 'HUARAZ', '945123203', 'milena.cochachin@gmail.com', '62837577', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:45:55', '2023-07-04 16:45:55', NULL),
('aa7f913c-26d3-4952-8a72-d82fe2f8d3c3', 'RAFAELA KILLARI', 'GARAY SALVADOR', 'femenino', 'HUARAZ', '972932824', 'emiliasalvadorbalabarca@gmail.com', '78536957', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:55:13', '2023-07-04 15:55:13', NULL),
('ab3a9c88-a463-4747-8982-7bb637c2b14d', 'ALEXANDER ALDAIR', 'CARRION FUENTES', 'masculino', 'HUARAZ', '988958304', 'FUENTESMARZANO1984@GMAIL.COM', '60927523', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:40:26', '2023-07-04 18:40:26', NULL),
('ac22152d-8515-4fc7-96c5-70674244ce3c', 'JOSE FABRICIO', 'CRUZ TREJO', 'masculino', 'HUARAZ', '915247913', 'JOSELUIS81CRUZRODRIGUEZ@GMAIL.COM', '60957541', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:39:46', '2023-07-05 11:39:46', NULL),
('acac4c3e-e05b-4731-96ed-471f24a49730', 'TATIANA ALISON', 'ANICETO RAMIREZ', 'femenino', 'HUARAZ', '985462381', 'BIOMEDMEDICALEIRL@HOTMAIL.COM', '60957658', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:36:50', '2023-07-05 11:36:50', NULL),
('ad2e647a-8cad-427e-b6db-c25437867233', 'YAMINA MAYRA', 'PINEDA BIGUEÑAS', 'femenino', 'HUARAZ', '918931538', 'mairapiendasiguenas@gmail.com', '72603502', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:16:53', '2023-07-17 16:58:47', NULL),
('ad6ea092-b403-41e4-9ec5-ad33081fc021', 'HELEN ROXANA', 'TRUJILLO ROBLES', 'femenino', 'HUARAZ', '965382087', 'helentrujillo624@gmail.com', '75347822', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:37:56', '2023-07-04 18:37:56', NULL),
('ade39312-b307-447c-8820-4da5a642c800', 'AZUCENA KATHERIN', 'VARGAS MONTENEGRO', 'femenino', 'HUARAZ', '996736647', 'azhu22314@gmail.com', '72031873', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:54:32', '2023-07-05 10:54:32', NULL),
('ae7b194c-aa07-42f7-b9a6-ab631019a9f2', 'ANTUANETH NIKOLE', 'MORENO REYES', 'femenino', 'HUARAZ', '954130676', 'REYESNIKOLE462@GMAIL.COM', '61314539', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:11:26', '2023-07-04 18:11:26', NULL),
('ae8b40cd-4ddf-4111-849f-aeaea81ce7ed', 'Fatima Jhulia', 'Pachas Romero', 'femenino', 'HUARAZ', '32913161', 'wendy_romero11@hotmail.com', '90840086', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-10 11:31:04', '2023-07-10 11:31:04', NULL),
('af0e9bba-0503-4d4f-ae44-47fe92d3b7c6', 'GABRIELA ROSARIO', 'CORREA SIVINCHA', 'femenino', 'HUARAZ', '930136245', 'gabbrielacorrea@gmail.com', '71865451', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 15:03:05', '2023-07-03 15:03:05', NULL),
('afab71d9-2819-434b-9cdb-b27a0c00847d', 'ARELI GUADALUPE', 'HUERTA BUSTAMANTE', 'femenino', 'HUARAZ', '952070592', 'ingjesus56@gmail.com', '79455612', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:56:18', '2023-07-04 15:56:18', NULL),
('b0b14d55-4d0a-400b-94fb-2ad459e9a13a', 'LOUIS DAVID', 'ONCOY HENOSTROZA', 'masculino', 'HUARAZ', '977501093', 'haydehenostroza3@gmail.com', '63277311', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:41:52', '2023-07-04 10:41:52', NULL),
('b1427486-c1b4-493f-9a89-39870302aa1e', 'asdasd', 'qweqweq', 'femenino', 'qwe213', '123123qwe', 'sgcadmin@unasam.edu.pe', '12312312', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-18 23:37:18', '2023-06-18 23:37:18', NULL),
('b193c968-4c8d-4428-a55a-4d33ddb05fd4', 'LUCIANA CAMILA', 'CAMONES ZAPATA', 'femenino', 'HUARAZ', '981 807 454', 'willicamo@gmail.com', '61880499', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:04:51', '2023-07-04 18:04:51', NULL),
('b391196a-6c59-4ec1-ab81-b40cb06af65d', 'VALENTINO OCTAVIO', 'MENACHO CRUZ', 'masculino', 'HUARAZ', '971018034', 'inversionesimcvalentinosac@gmail.com', '79023995', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:06:40', '2023-07-04 19:06:40', NULL),
('b3a4195c-d7d9-4a3c-89fc-15f133853344', 'ARLETH ROUSE', 'ESPINOZA POPAYAN', 'femenino', 'HUARAZ', '930425475', 'lilipopayan93@gmail.com', '79622822', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:38:13', '2023-07-04 15:38:13', NULL),
('b3edf274-0a85-4fbd-855a-61e317bd7069', 'ALEX FABIANO', 'SALAZAR CASTRO', 'masculino', 'HUARAZ', '943934740', 'geobanacr@hotmail.com', '78467481', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:14:37', '2023-07-04 19:14:37', NULL),
('b3f3e31a-3bfd-4dbe-8d95-997b97111fa1', 'CRIHSTOFER NOEL', 'ROJAS RODRIGUEZ', 'masculino', 'HUARAZ', '950423826', 'cristofer9052@gmail.com', '61119774', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:58:30', '2023-07-04 11:58:30', NULL),
('b4cc3281-a9b7-4c72-afba-cec7addddd80', 'RUTH ROXANA', 'ROBLES RODRIGUEZ', 'femenino', 'HUARAZ', '961325403', 'ROSARUTHROXANA@GMAIL.COM', '42559403', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:18:32', '2023-07-05 11:18:32', NULL),
('b58d75be-2e82-4163-ab28-b0c810fa820e', 'MIGUEL ANTONIO', 'ROMERO ALBORNOZ', 'masculino', 'HUARAZ', '993092690', 'miguelantonioromeroalbornoz@gmail.com', '75677722', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:47:40', '2023-07-04 17:47:40', NULL),
('b6815fea-4aae-409d-84d0-e3a08f4f6d67', 'CHRISS DNILSON', 'CASTRO CONTRERAS', 'masculino', 'HUARAZ', '922181605', 'chrisscc1999@gmail.com', '70574287', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:21:15', '2023-06-23 19:21:15', NULL),
('b6dc4dcc-f909-4dff-9c10-86d9257b3f44', 'ARENAS BERRIOS', 'MAXIMILIANO ANDRES', 'femenino', 'CHILE', '+59171484574', 'maxcliving2001@gmail.com', '20668331', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-14 11:35:17', '2023-07-14 11:35:17', NULL),
('b80fa957-e22a-4791-ac1e-10601276e49a', 'LUIS NICOLAS', 'HERENCIA ROJAS', 'masculino', 'HUARAZ', '929200393', 'LUNIHER_0806@HOTMAIL.COM', '72138930', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:37:48', '2023-07-04 16:37:48', NULL),
('b81a0e92-a4bb-44c6-9c5c-8f6d26c085c6', 'JOSUE DANIEL', 'ROJAS POLO', 'masculino', 'HUARAZ', '930140003', 'JOSUEDANIELROJASPOLO@GMAIL.COM', '70114303', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:55:07', '2023-07-04 17:55:07', NULL),
('b8ce247f-1bfa-4529-8ecc-7c7acc9157a0', 'LINDSAY SHAROL', 'DAMIAN GAYTAN', 'femenino', 'HUARAZ', '946782103', 'notebdjs@gmail.com', '61233264', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:07:21', '2023-07-17 16:30:56', NULL),
('b9cf9e11-909f-43e7-b45e-e3254d50947a', 'IAN PEDRO', 'RAMIREZ GAYTAN', 'masculino', 'HUARAZ', '970050742', 'ALICHITASD@HOTMAOL.COM', '62230009', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:00:56', '2023-07-05 10:00:56', NULL),
('b9dd0d49-b15f-4e47-8b67-06fe0ecb3014', 'FABIANA ALESSANDRA', 'CARBAJAL PAUCAR', 'femenino', 'HUARAZ', '996749577', 'YANETTSANDRAPC28@GMAIL.COM', '62656776', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:43:29', '2023-07-05 10:43:29', NULL),
('ba764c4e-cde2-4989-8c43-1a3e1cfd246e', 'FIGUEROA LAZARO', 'Joffre Alvaro', 'masculino', 'HUARAZ', '995481862', 'ingjoffrefial@gmail.com', '63193458', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-10 17:37:19', '2023-07-10 17:37:19', NULL);
INSERT INTO `personas` (`id`, `nombre`, `apellidos`, `sexo`, `direccion`, `telefono`, `email`, `numiden`, `id_tipo_identificacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
('bb00e723-7962-48de-9f7a-311ca997578b', 'CRISTINA ISABEL', 'DAMIAN CANO', 'femenino', 'HUARAZ', '956136179', 'damianroblesneptalirey@gmail.com', '79192377', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:53:12', '2023-07-04 15:53:12', NULL),
('bb74bdd3-924d-4e5d-88f8-0ee8ad0e4cb9', 'MARIANA ALMENDRA', 'CACHA SALCEDO', 'femenino', 'HUARAZ', '986387151', 'j.cachamhd@gmail.com', '62518255', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:04:59', '2023-07-04 11:04:59', NULL),
('bbac201b-dc12-46a5-80ca-0e3cf962aba5', 'GAURI SAMANTHA', 'VARGAS COJAL', 'femenino', 'HUARAZ', '943431212', 'YANELISSA_7@HOTMAIL.COM', '81610722', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:03:31', '2023-07-05 10:03:31', NULL),
('bbd5d37e-fcb2-4b57-ac17-2b4eaf30342a', 'GIANFRANCO ROMULO', 'ROJO PEREZ', 'masculino', 'HUARAZ', '965971392', 'KARENPEREZ1@HOTMAIL.COM', '62354749', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:46:01', '2023-07-04 17:46:01', NULL),
('bc3cd9f2-2746-450f-a0e7-083240ce5ccd', 'AYMAR ALEXANDER', 'LEON UGARTE', 'masculino', 'HUARAZ', '914975268', 'notireegs@gmail.com', '44975233', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:44:55', '2023-07-04 17:44:55', NULL),
('bc8b22af-c34b-41a0-8cd4-dbd4ee1f1233', 'ANGIE VIVIANA', 'FLORES CASTILLO', 'femenino', 'HUARAZ', '958 468 567', 'ANGIE@HOTMAIL.COM', '75339125', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-30 19:22:23', '2023-06-30 19:22:23', NULL),
('bcf10627-877f-42dc-a573-f17272b3975d', 'MARIA ALEJANDRA', 'VASQUEZ ROSALES', 'femenino', 'HUARAZ', '945747487', 'MECHERM1903@GMAIL.COM', '78850422', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:23:26', '2023-07-04 16:23:26', NULL),
('bd2aba03-04ba-438c-a685-9fe1a01e3168', 'ADRIANO LUCAS', 'MEZA BRICEÑO', 'masculino', 'HUARAZ', '956548601', 'vladimirmezao@gmail.com', '79943530', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:39:38', '2023-07-05 10:39:38', NULL),
('bdc987e9-eec2-41b3-be95-f5762fd4b822', 'LUIS MIGUEL', 'DIAZ ROBLES', 'masculino', 'V. LAS CASUARINAS 129', '920900681', 'DIAZROBLESLUISMIGUEL@GMAIL.COM', '74081473', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-06 15:53:03', '2023-07-06 15:53:03', NULL),
('bdfce40f-c1cf-43bd-8c5e-81a36c24a0f0', 'GIANPIER RAUL ALEXANDER', 'DEPAZ SANDON', 'masculino', 'HUARAZ', '975793050', 'gianpierdepaz@gmail.com', '71573563', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:08:04', '2023-07-04 11:08:04', NULL),
('be2a0612-be68-4937-ac6f-65a519a0a707', 'ERICK AARON', 'COAQUIRA HERNANDEZ', 'masculino', 'HUARAZ', '920 515 787', 'HERNADEZ123@GMAIL.COM', '62837462', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:32:16', '2023-07-04 10:32:16', NULL),
('be2e3cd2-4e61-4cf9-932d-41f2ef642ec2', 'FABRIZZIO WILLIAMS', 'INFANTES ESPINOZA', 'masculino', 'HUARAZ', '920363917', 'infante4480@gmail.com', '62838152', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:10:41', '2023-07-04 11:10:41', NULL),
('be8ae5bd-5675-415b-a90a-42214b013e6a', 'FABRIZIO GARETH', 'CAMONES CORDOVA', 'masculino', 'HUARAZ', '985600486', 'lenelyn.ca@hotmail.com', '78283761', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:10:27', '2023-07-04 19:10:27', NULL),
('beb8ed52-6b74-4e31-a289-d3859bd4609b', 'GISSEL EVA', 'GUILLEN EMILIANO', 'femenino', 'HUARAZ', '990096930', 'guillrn20@mail.com', '62015068', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:25:39', '2023-07-04 18:25:39', NULL),
('c0b7cd4c-26d3-4c97-a753-bd9c4f7a830e', 'SAMIR WILL', 'ALVARADO HENOSTROZA', 'masculino', 'HUARAZ', '51943976631', 'samir.henostroza@gmail.com', '62672432', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:39:20', '2023-07-04 18:39:20', NULL),
('c0eb5968-4611-40ca-ad89-a502b4363c39', 'MARIA LUCIANA', 'TEJADA COTRINA', 'femenino', 'HUARAZ', '941154091', 'a20146983@pucp.pe', '73661636', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-10 17:35:29', '2023-07-10 17:35:29', NULL),
('c189e0a3-b365-45e6-a3c0-8d4038661af1', 'OLIVER YUE', 'CAMPOS AVILA', 'masculino', 'HUARAZ', '992628686', 'AVILAIRENE88@HOTMAIL.COM', '71681681', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:28:28', '2023-07-04 18:28:28', NULL),
('c18bed10-9aff-4254-8225-b545c914de08', 'DANIEL EVILSON', 'BAÑEZ GODOY', 'masculino', 'PINAR S/N', '974123126', 'gcarimariela@gmail.com', '61480353', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-28 10:44:05', '2023-06-28 10:44:05', NULL),
('c1953624-3183-4061-813b-71ca113f8290', 'VALENTINA', 'HIDALGO DE LA CRUZ', 'femenino', 'HUARAZ', '910326053', 'HIDALGO@HOTMAIL.COM', '63092085', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:53:15', '2023-07-04 11:53:15', NULL),
('c2eea40d-b326-4187-84f4-e7dcf21a72ce', 'YERETZY MEREDITH', 'LOPEZ QUISPE', 'femenino', 'HUARAZ', '964738457', 'licesita_@hotmail.com', '78227152', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:40:02', '2023-07-04 16:40:02', NULL),
('c32aedf8-c7db-4103-9b12-ecfa834b9370', 'PEREZ BAZAN', 'ALESSANDRA PAOLA', 'masculino', 'HUARAZ', '949374917', 'paola24_30@hmao.com', '78693356', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-11 18:01:22', '2023-07-11 18:01:22', NULL),
('c3f3c9f8-3934-4682-98be-13c1b6d96468', 'ROMINA DAYANA', 'ROLDAN LAZARO', 'femenino', 'HUARAZ', '974123126', 'eliz08.05@gmail.com', '62837386', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:59:53', '2023-07-04 11:59:53', NULL),
('c3fd4ab1-0a2a-4f04-9940-b3b56a62a117', 'DYLAN VALENTINO', 'VILLAFUERTE BLAS', 'masculino', 'HUARAZ', '992561728', 'Jjvillafuertealvaro@gmail.com', '78944051', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:17:48', '2023-07-04 19:17:48', NULL),
('c4840c3f-b65b-4fc9-b4c8-d7d404a9243d', 'RODRIGO GABRIEL', 'LLAGUNO SALAZAR', 'masculino', 'HUARAZ', '943830834', 'yselablanco@gmail.com', '74112852', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:55:32', '2023-07-04 18:55:32', NULL),
('c4e22f89-1df3-4d63-9a74-6f9c163be1b2', 'CAMILA LEONELA', 'HUERTA ROJAS', 'femenino', 'HUARAZ', '970309466', 'elidayrq@gmail.com', '78347393', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:35:02', '2023-07-04 15:35:02', NULL),
('c4eb5060-f0d2-4087-8da2-3edf59afe308', 'DIANA ZOE', 'TOLEDO GONZALES', 'femenino', 'HUARAZ', '943232758', 'dianasortoledog@gmail.com', '62043007', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:36:30', '2023-07-04 17:36:30', NULL),
('c53202fa-df51-4265-aa8d-5776bb89b8eb', 'LUANA LUVI', 'MELCHOR FLORES', 'masculino', 'HUARAZ', '989816849', 'LUZMI171110@GMAIL.COM', '62672333', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:58:16', '2023-07-04 10:58:16', NULL),
('c546c996-b9a6-4467-a8fe-282974f1bd15', 'ORIANA INGRID', 'CHAVEZ CARRILLO', 'femenino', 'HUARAZ', '943864368', 'mjchavezabogado@gmil.com', '61480334', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:05:31', '2023-07-04 18:05:31', NULL),
('c7137558-53a3-4211-9fd8-b053852adbee', 'ANTHONY EMMANUEL', 'HUARAC LLICAHUA', 'masculino', 'HUARAZ', '943478318', 'antonyhuarac@gmail.com', '63193591', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:02:07', '2023-07-04 19:02:07', NULL),
('c72f2b97-e475-4457-8881-3228bf164dbe', 'SOFIA ARIANA', 'PURIZAGA BELTRAN', 'femenino', 'HUARAZ', '948809072', 'minesmey@hotamial.com', '60957479', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:43:52', '2023-07-04 16:43:52', NULL),
('c89633a9-cd63-4ab7-8d6f-d352dfc87bee', 'EFREN ALEJANDRO', 'ARANDA MARQUEZ', 'masculino', 'HUARAZ', '943712377', 'castilloan767@gmail.com', '62015179', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:46:46', '2023-07-04 10:46:46', NULL),
('c89bc702-f072-4260-ab12-8ade898cb78d', 'KELLY MELISSA', 'PERALTA CHAVEZ', 'femenino', 'CALLE EMILIANO NIÑO 353 - 9 DE OCTUBRE', '943499551', 'melipcha.27@gmail.com', '71908969', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-15 11:38:59', '2023-07-15 11:38:59', NULL),
('c9b413aa-e8ef-45c1-82bc-cbf80214116f', 'YEREMHY SEBASTIAN', 'ESPINOZA PEREZ', 'masculino', 'HUARAZ', '948657905', 'ross.perez.31@gmail.com', '61957869', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:17:19', '2023-07-04 12:17:19', NULL),
('c9d46563-9256-45ee-8959-46c6295d3aab', 'RHAZIEL LEONARDO', 'FLORES NIEVES', 'masculino', 'HUARAZ', '935622524', 'SEVERINOFP2015@GMAIL.COM', '61191502', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:51:09', '2023-07-04 17:51:09', NULL),
('c9ee1238-8eb4-40f0-bf09-718b905a6ce5', 'CAMILA ELIANA', 'GOMERO CASTILLO', 'femenino', 'HUARAZ', '943010123', 'percygc@hotmail.com', '77150592', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:28:09', '2023-07-04 17:28:09', NULL),
('ca24357b-2d5b-4249-b296-10d93e65235b', 'LUZ VANESSA', 'PAGOLA HUERTA', 'femenino', 'HAURAZ', '952698033', 'travelagencias02@gmail.com', '75720443', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-13 16:54:30', '2023-07-13 16:54:30', NULL),
('ca5b6375-dda6-4563-96fa-15faf34cf14c', 'MABEL', 'CANDIOTI NORABUENA', 'femenino', 'HUARAZ', '982617920', 'mabelcandioti@gmail.com', '43160746', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-27 16:32:44', '2023-06-27 16:32:44', NULL),
('cbda667f-e834-470e-9fbd-0b09e78da07f', 'DILAN ANTHONY', 'HUERTA ROJAS', 'masculino', 'HUARAZ', '970309466', 'huertasac@hotmail.com', '79663076', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:39:29', '2023-07-04 15:39:29', NULL),
('cbec8329-ee7c-497e-bc0c-3f4daf538543', 'KARLA ALEJANDRA', 'MELENDEZ PONTE', 'femenino', 'HUARAZ', '943629904', 'dianalizbeth@gmail.com', '90636519', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:38:22', '2023-07-05 10:38:22', NULL),
('cc134b93-311f-4fde-b3f9-05b2622232be', 'SEBASTIAN LEONARDO', 'MARTIN DONGO', 'masculino', 'HUARAZ', '978377724', 'ROSADP15@HOTMAIL.COM', '79782755', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:37:06', '2023-07-05 10:37:06', NULL),
('cc77065e-81a8-4eae-975d-453811a31a38', 'ROSALY ALEXANDRA', 'DAVILA BERMUDEZ', 'femenino', 'HUARAZ', '944984734', 'jina_analy@gmail.com', '79737064', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:29:13', '2023-07-17 17:10:04', NULL),
('cd7cf02e-46e0-43a3-84f4-b43130fbc443', 'AROM STEVEN', 'FIGUEROA LUCIANO', 'masculino', 'HUARAZ', '957415588', 'LFLOR1203@HOTMAIL.COM', '61155677', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:27:01', '2023-07-04 17:27:01', NULL),
('cf451608-54f7-491e-9339-1878549a2082', 'JEREMY ADRIAN', 'LAZARO HORNA', 'masculino', 'HUARAZ', '943 047 885', 'NAOLHYT2020@GMAIL.COM', '62286958', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:31:06', '2023-07-04 17:31:06', NULL),
('d06de41f-efaa-4b92-8fbb-723d0aeff41b', 'KATE RIANNA', 'BALTAZAR GUZMAN', 'femenino', 'HUARAZ', '926142033', 'katiaguzmandiaz22@gmail.com', '91108269', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:56:27', '2023-07-05 10:56:27', NULL),
('d21b5643-28a1-4ec6-8e94-00d731d21f15', 'ADRIANO VALENTINO', 'VEGA CORREA', 'masculino', 'HUARAZ', '970 946 878', 'correaayalar@gmail.com', '90579949', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:07:42', '2023-07-05 11:07:42', NULL),
('d288e096-5582-4777-b6ff-fd3bc5521f22', 'LUCETTE ELIANA', 'JULCA CHAVEZ', 'femenino', 'HUARAZ', '957438000', 'fredyjulca@gmail.com', '63193578', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:03:26', '2023-07-04 19:03:26', NULL),
('d3369c20-3b75-4fd3-b710-4afde2eb9d20', 'ROSAURA CARMELA', 'GONZALES CHAVEZ', 'femenino', 'HUARAZ', '913385602', 'gonzalevalverdejhon@gmail.com', '79328715', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:31:22', '2023-07-04 12:31:22', NULL),
('d3715b4e-d758-45f9-aedc-235b08bbd142', 'RUBY', 'FIGUEROA INCHICAQUI', 'femenino', 'HUARAZ', '00', 'rubyf12@hotmail.com', '42679337', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 12:03:14', '2023-07-03 12:03:14', NULL),
('d3786d3c-4d97-4fd9-adeb-903ba7088aad', 'SOFIA SILVANA', 'BUENO AREVALO', 'femenino', 'HUARAZ', '930858103', 'margaretarevalo7@gmail.com', '79391551', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:29:42', '2023-07-04 15:29:42', NULL),
('d3c2d6ce-872b-479e-8397-9d266ca5de84', 'MIGUEL MATIAS', 'SANCHEZ ROJAS', 'masculino', 'HUARAZ', '900887969', 'puwito13@gmail.com', '77726069', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:38:28', '2023-07-04 12:38:28', NULL),
('d41a9283-5e7e-491e-9cc6-f16b160fe117', 'NEYZER JEFFREY', 'ONCOY ORDOÑEZ', 'masculino', 'HUARAZ', '952444290', 'glenda250280@gmail.com', '70956619', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:12:35', '2023-07-04 18:12:35', NULL),
('d589819f-edce-4800-9221-717896e199a2', 'CARLOS ANDRES', 'GONZALES RAMOS', 'masculino', 'HUARAZ', '952273234', 'CARLOSGR291288@GMAIL.COM', '80990945', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:01:41', '2023-07-04 16:01:41', NULL),
('d7776566-bb5c-48f1-92dc-b585601c6b99', 'GRECIA AZUCENA', 'CORDERO VASQUEZ', 'femenino', 'HUARAZ', '916460995', 'greciacordero150@gmail.com', '75321948', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:05:59', '2023-07-04 11:05:59', NULL),
('d800e9f9-6781-4fdf-b590-f9841e3fa2a4', 'MIKHAIL TEDDY', 'ONCOY ORDOÑEZ', 'femenino', 'HUARAZ', '941871058', 'glenda2250280@gmail.com', '74266732', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:26:01', '2023-07-04 12:26:01', NULL),
('d886116e-dab9-41b9-ae87-7c22a9c991ca', 'RUSSELL MANUEL', 'LEYVA OLIVEROS', 'Select Option', 'huaraz', '969652521', 'russdlg40@hotmail.com', '78254856', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-07 17:15:35', '2023-07-07 17:15:35', NULL),
('d8bdf616-8f54-4e6c-b69d-acf4477e0950', 'MARIO REYNALDO', 'MIGO HUIZA', 'masculino', 'HUARAZ', '981828831', 'mariomigoh.8792@gmail.com', '45529700', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:51:53', '2023-07-05 10:51:53', NULL),
('d8c35003-1d7e-484c-88d2-98e47158dfd7', 'ALEX PAOLO', 'POMA TORRES', 'masculino', 'huaraz', '943679460', 'rialpom@hotmail.com', '78517512', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:08:35', '2023-07-04 19:08:35', NULL),
('d9134082-e0df-499f-8fc7-f384c365e14f', 'SAMIR EDUARDO', 'ANAYA FLORES', 'masculino', 'JR. RUIZ DE HUIDOBRO 673 BARRIO SAN FRANCISCO', '952650406', 'rosfloresv@hotmail.com', '79034641', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 18:19:42', '2023-07-03 18:19:42', NULL),
('d9187cf1-e682-4cf9-adc1-d5c41e23546d', 'CESAR', 'KHALFA OCAMPO', 'masculino', 'C/ TURO DE LA TRINITAT 32.3-1 C.P.08033', '967590978', 'cesarkhalfa99@gmail.com', '81651805', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-13 15:54:20', '2023-07-13 15:54:20', NULL),
('d97e3173-e0df-4689-9030-6b2c6a307654', 'JHANELA XIMENA', 'NIEVES VARGAS', 'femenino', 'HUARAZ', '947531846', 'FRIDAVA1448@GMAIL.COM', '61717760', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:11:05', '2023-07-04 16:11:05', NULL),
('d9d5892c-6571-497d-8b96-60ff81bc0eb9', 'FLORENTINO FLORIAN', 'CALDUA MILLA', 'masculino', 'CENTRO POBLADO LLUPA', '943212391', 'calduamillaflorentino@gmail.com', '46644844', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-07 11:12:22', '2023-07-07 11:12:22', NULL),
('da1b9e2d-b655-4628-a056-a36e60b20981', 'MARTHA', 'WESTON', 'femenino', 'HUARAZ', '959806601', 'westonmartha@hotmail.com', '21211496', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 09:18:49', '2023-07-03 09:18:49', NULL),
('da27e068-cb27-4117-b069-7118e84014bb', 'JEMIMA KAREN', 'GUERRA GUILLEN JEMIMA KAREN', 'femenino', 'HUARAZ', '944486225', 'mirthaguillenmedina@gmail.com', '79580349', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:40:48', '2023-07-04 15:40:48', NULL),
('dacf586a-0b78-411e-bdc8-1769041baad1', 'CAMILA KATHERINE', 'OCROSPOMA ZIMIC', 'femenino', 'HUARAZ', '942041150', 'zimic123@gmail.com', '77995334', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:43:10', '2023-07-04 15:43:10', NULL),
('db98525c-584a-4485-8f45-165a405cce59', 'XAVI PUYOL', 'GARCIA HUAMAN', 'masculino', 'HUARAZ', '943639568', 'Tobhdyel@hmail.com', '62552640', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:48:27', '2023-07-04 11:48:27', NULL),
('dbec2a02-1bc6-4810-9be2-25dbd096f3e0', 'ALEXANDRA ROMINA', 'SANDOVAL VEGA', 'femenino', 'HUARAZ', '942 636 230', 'emmavesh.2010@gmail.com', '61191384', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:56:04', '2023-07-04 17:56:04', NULL),
('dc77273d-f921-4be7-825a-e3c52ea0fae6', 'ALISON TATIANA', 'ROSALES VILLANUEVA', 'femenino', 'HUARAZ', '925805720', 'javecorazon2@gmail.com', '61409462', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:46:33', '2023-07-05 10:46:33', NULL),
('dcc435ef-b602-4cf7-aade-2820c0ff5afc', 'VICTOR ALFREDO', 'CABELLO MAGUIÑA', 'masculino', 'JR. DAMAZO ANTUNEZ 749', '968603093', 'eldamaguinamilla@gmail.com', '61155379', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 11:00:41', '2023-07-03 11:00:41', NULL),
('ddd7d46b-0031-4665-be97-50c60f383a6d', 'DAYIRO ANGHELO', 'RURUSH HUAMAN', 'masculino', 'HUARAZ', '999444378', 'CARLOSRURUSH@HOTMAIL.COM', '77938875', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:21:57', '2023-07-04 19:21:57', NULL),
('de3db756-e8e0-4b35-a59a-34a83636a0b5', 'DOMINIC JOSEF', 'AURELIO MORALES', 'masculino', 'HUARAZ', '943693985', 'yeti-consulting@hotmail.com', '62657211', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:41:17', '2023-07-04 17:41:17', NULL),
('de735a95-fcf9-44b6-b6bc-68ab0631a87c', 'LUIS ENRIQUE', 'ROMERO MEJIA', 'masculino', 'HUARAZ', '979370993', 'LERM242003@GMAIL.COM', '73604617', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:47:04', '2023-07-04 16:47:04', NULL),
('dec68282-8d2b-4352-a7a3-b71e3df95474', 'KAREN SANDRA', 'MARZANO CORRALES', 'femenino', 'HUARAZ', '992195526', 'kasandra_1608@hotmail.com', '48159406', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:37:55', '2023-07-04 10:37:55', NULL),
('df05d44d-fcce-4327-b12d-8350f582c9df', 'SAMANTHA FATIMA', 'ONCOY LEON', 'femenino', 'HUARAZ', '948481679', 'abril_12@hotmail.com', '91160639', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 11:04:33', '2023-07-05 11:04:33', NULL),
('e193b4a0-9d4a-4b7f-b8d0-204369360417', 'MARIA FERNANDA', 'SHUAN LEON DULCE', 'femenino', 'HUARAZ', '947411441', 'cristyleon1@hotmail.com', '62552409', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:58:24', '2023-07-04 18:58:24', NULL),
('e1c74eae-b7a5-4fbb-af91-66bf94929144', 'SAYURI VIVIANA', 'BAÑEZ ESPINOZA', 'femenino', 'HUARAZ', '961465161', 'yeff_120@hotmail.com', '78045274', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 09:53:28', '2023-07-05 09:53:28', NULL),
('e2f1cf76-d4e6-457d-ad0d-7b717cbe41b0', 'XIMENA LUCIA', 'QUISPE CAMONES', 'femenino', 'HUARAZ', '922841083', 'CHRISTIAMANGELES@GMAIL.COM', '61314594', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-13 10:56:29', '2023-07-13 10:56:29', NULL),
('e367b9c6-9b89-41a1-a6b1-a4288ec07bd9', 'Julioagustin David', 'Aguedo Miranda', 'masculino', 'HUARAZ', '994386503', 'davida138@hotmail.com', '78409778', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-07 16:13:32', '2023-07-07 16:13:32', NULL),
('e3769743-31e1-4aa9-9876-1061de460a8d', 'INGRID MIRELLA', 'MACEDO AGUEDO', 'femenino', 'JR. ALBERTO GRIDILLA S/N', '943060586', 'inmacedo.a@gmail.com', '76596602', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-07 17:58:24', '2023-07-07 17:58:24', NULL),
('e3b494f5-8c03-4968-b2bc-7aadcc3a2047', 'CAMILA ESTHER', 'LAZARO HORNA', 'femenino', 'HUARAZ', '943047885', 'RUTHHORNA2016@GMAIL.COM', '78172382', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:05:53', '2023-07-04 16:05:53', NULL),
('e3d89d9a-873f-4bc0-872b-b5607f2958c6', 'SOFIA BELEN', 'BAYONA FIGUEROA', 'femenino', 'HUARAZ', '927977312', 'RTERESAFIGUEROA@HOTMAIL.COM', '60957686', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:50:06', '2023-07-04 16:50:06', NULL),
('e402b311-4838-4468-9873-2a2a88a0d927', 'MISKI PAOLA', 'CELMI GOMEZ', 'femenino', 'HUARAZ', '943495098', 'merhay-80@hotmail.com', '61314674', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:29:15', '2023-07-04 17:29:15', NULL),
('e4211262-8e2b-4341-b29f-c84ee287f6e8', 'GABRIEL ORLANDO NICOLAS', 'APOLIN NINAQUISPE', 'masculino', 'HUARAZ', '937647246', 'juliacha1102@hotmail.com', '78188264', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:36:29', '2023-07-04 12:36:29', NULL),
('e4592846-9fb5-4287-8287-7cafd80988f6', 'PIERO ALEXANDER', 'COAQUIRA HERNANDEZ', 'masculino', 'HUARAZ', '920 515 787', 'coaquira123@gmail.com', '61314673', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:33:23', '2023-07-04 10:33:23', NULL),
('e4ac2ab4-ac75-470a-9147-51be24789361', 'ANDRE DEMETRIO', 'PARI BAUTISTA', 'masculino', 'HUARAZ', '900438162', 'andrepari.12345@gmail.com', '72134972', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:07:21', '2023-07-04 12:07:21', NULL),
('e4b3eba2-2c0f-4648-867c-7ee202cabf56', 'ZALETH JESUS', 'PAUCAR ALVA', 'femenino', 'Huaraz', '951426004', 'ralvarobles@gmail.com', '76022298', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-19 20:03:45', '2023-06-19 20:03:45', NULL),
('e58821e4-28fa-4672-a3c4-5bcf16721c27', 'CESAR CHRISTIAN', 'CIRIACO SAL Y ROSAS', 'masculino', 'HUARAZ', '913920014', 'CESARCIRIACOSALYROSAS@GMAIL.COM', '70768193', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:36:47', '2023-07-04 16:36:47', NULL),
('e5f5ec70-7b84-415d-ab1f-56e8bb6c9a79', 'RICHARD IVAN', 'LEON LOPEZ', 'masculino', 'HUARAZ', '955619373', 'r75230393@gmail.com', '75230393', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:54:23', '2023-07-04 18:54:23', NULL),
('e6074aee-4d40-44b3-8164-302c048c14ef', 'ANDREA ALEXANDRA', 'CHECA VASQUEZ', 'femenino', 'HUARAZ', '953511131', 'ANDREACHECA05@GMAIL.COM', '75703073', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:07:01', '2023-07-04 18:07:01', NULL),
('e6454ee9-7e6d-4a08-a626-95b29cd7b01f', 'GUILLERMO RENATO', 'CERNA DURAND', 'masculino', 'HUARAZ', '943167594', 'renatoguillermo123@gmail.com', '76364726', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:46:58', '2023-07-04 18:46:58', NULL),
('e7c0055c-4ed4-4a3f-8dc3-f7cd74119052', 'DAHANA MARITZA', 'TREJO ALVA', 'femenino', 'JR. DANIEL BALDIALI S/R', '956098871', 'maritzatrejoalva@gmail.com', '72288154', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-17 15:48:39', '2023-07-17 15:48:39', NULL),
('e7d90396-3953-485b-92ea-f0f055a79836', 'EDRIAN LEONEL', 'ROSALES VILLACORTA', 'masculino', 'HUARAZ', '984802022', 'carloshz20144@gmail.com', '78947527', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:19:21', '2023-07-04 16:19:21', NULL),
('e7de7364-6329-4959-b594-7f87c95c169f', 'ANGEL GABRIEL LEONARDO', 'GORDILLO ARRIETA', 'masculino', 'HUARAZ', '954782298', 'sol_cjj@hotmail.com', '63092025', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:14:17', '2023-07-04 19:14:17', NULL),
('e8ca4198-993b-4eda-8c17-5756b35693ec', 'ANDREA MARISSA', 'ESCUDERO ESPINOZA', 'femenino', 'HUARAZ', '957849554', 'SILEDIESCA@GMAIL.COM', '62672389', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:48:36', '2023-07-04 17:48:36', NULL),
('e9372286-06a9-44b5-bd8d-0a7377583d2d', 'YHAMELI MARYTHXEL', 'DE LA CRUZ LOLI', 'femenino', 'HUARAZ', '947908496', 'hdelacruzt2020@gmail.com', '61314403', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:47:58', '2023-07-05 10:47:58', NULL),
('e9780cb5-ca28-46e0-b3fd-1176dca72e40', 'TIFFANY LUANA', 'HUAYTA QUISPE', 'femenino', 'AV. CONFRATERNIDAD INTERNACIONAL 2930', '976376497', 'elianaquispelopez1@gmail.com', '76824940', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-01 11:49:45', '2023-07-01 11:49:45', NULL),
('e9efd0ca-381c-4505-ada5-d6906d370cdb', 'ANGELICA VALENTINA', 'VALENZUELA LAZARO', 'femenino', 'HUARAZ', '921648218', 'jvalenzugar@hotmail.com', '61713550', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:00:41', '2023-07-04 12:00:41', NULL),
('e9f8aff7-9050-40b7-a009-cf36197436fa', 'YAMILE NOEMI', 'RURUSH POMA', 'femenino', 'HUARAZ', '995431511', 'pomayamile7@gmil.com', '75835207', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:21:35', '2023-07-04 12:21:35', NULL),
('eba22aff-95e8-4183-8f93-8586a890fda4', 'JHOSEP ANDREI', 'REYES LIÑAN', 'masculino', 'HUARAZ', '929705875', 'wilderrevela@gmail.com', '60957578', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:55:16', '2023-07-04 11:55:16', NULL),
('edcf0484-553c-4845-a287-13fb9c81576e', 'STEEVEN ISAAC', 'SANCHEZ HUERTO', 'masculino', 'HUARAZ', '922680344', 'sanchezhuertostiven@gmail.com', '76427318', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:38:23', '2023-07-04 10:38:23', NULL),
('edf9b246-f9f2-4b15-a15d-e969f14e45ab', 'JHASIEL FABIAN', 'HARO RICRA', 'masculino', 'HUARAZ', '954862280', 'chavelita_ra@hotmail.com', '77960856', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:00:36', '2023-07-04 19:00:36', NULL),
('ee18d2cb-2068-49c9-9e38-26ae617a7564', 'SHEYLA CAMILA', 'GUILLERMO FIGUEROA', 'femenino', 'HUARAZ', '917626985', 'camiguillermo2015@gmail.com', '75247204', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:51:20', '2023-07-04 10:51:20', NULL),
('ee546dcf-66fa-4f9e-a177-29bae9e76177', 'FABRICIO', 'CERNA CAMONES', 'masculino', 'HUARAZ', '949568205', 'jaquelineccm5@gmail.com', '81180161', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-11 09:42:24', '2023-07-11 09:42:24', NULL),
('ee701b7d-e914-40a4-a583-39ef7fe435be', 'ANGELA MILAGROS', 'FERNANDEZ LEYVA', 'femenino', 'HUARAZ', '951959818', 'gayleyva274@gmail.com', '61713472', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-29 18:58:53', '2023-06-29 18:58:53', NULL),
('eec2e84c-c736-41ca-8ffd-0cca24ce62a1', 'AVRIL AMY', 'HUANE MORENO', 'femenino', 'HUARAZ', '944028062', 'MARILU_8716E@HOTMAIL.COM', '61155729', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:52:39', '2023-07-04 18:52:39', NULL),
('eee65dac-972f-4db5-82eb-a0acd56d4562', 'JATMY ANA PATRICIA', 'TORRE MORALES', 'femenino', 'PJ. SIERRA HERMOSA URB. SIERRA HERMOSA', '978696273', 'TORRRE440@HOTMAIL.COM', '63013888', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:27:40', '2023-07-04 17:27:40', NULL),
('efe3c526-c871-45e9-a8f1-815518a58465', 'Valery Sophya Sahori', 'Aguedo Miranda', 'masculino', 'HUARAZ', '994 386 503', 'aguedomia@gmail.com', '91190268', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-07 16:06:29', '2023-07-07 16:06:29', NULL),
('f065d98c-61b5-4a5f-8671-3b1f1c95666b', 'FABIO ADRIANO', 'DURAN FIGUEROA', 'masculino', 'AV: CONFRATERNIDAD INTERNCIONAL ESTE SN', '959009674', 'rubyf12@hotmail.com', '79124074', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-12 10:15:51', '2023-07-12 10:15:51', NULL),
('f104815e-02c2-408e-8b9e-dbd747769e45', 'FRABRICIO FRANCISCO', 'GONZALES SILVESTRE', 'masculino', 'HUARAZ', '960369998', 'Henish_7183@hotmail.com', '76028789', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:24:32', '2023-07-04 18:24:32', NULL),
('f143797e-569a-4716-b8de-e4a2028979ad', 'YAGO ALONSO', 'APARICIO CERNA', 'masculino', 'HUARAZ', '943683858', 'carmenc_03@hotmail.com', '62518125', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:14:23', '2023-07-04 12:14:23', NULL),
('f1a109a3-0e55-4700-b00e-b756a874802e', 'THOMAS ENRIQUE', 'ALDANA TOVAR', 'masculino', 'HUARAZ', '973289987', 'caroto0324@hotmail.com', '91851037', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:20:39', '2023-07-04 17:20:39', NULL),
('f1baef24-4c10-4979-b30a-3f4007980889', 'CAMIL LORENA', 'LOPEZ CARDENAS', 'femenino', 'HUARAZ', '931871768', 'PALO10_672@HOTMAIL.COM', '81394916', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:57:15', '2023-07-04 15:57:15', NULL),
('f1d63ad2-7257-4aa9-8aa6-8d55972374ca', 'TOMIKO NATHALIE', 'TANABE MAGUIÑA', 'femenino', 'HUARAZ', '925866334', 'DANITZAMAGUINAROCA@GMAIL.COM', '61517320', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:40:38', '2023-07-04 18:40:38', NULL),
('f1f5461e-5624-4954-ba27-24340f7ac9ab', 'JOETHSSEY SAMANTHA', 'HUERTA TARAZONA', 'femenino', 'HUARAZ', '994 654 259', 'celiatarazonanorabuena@gmail.com', '79495078', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:40:47', '2023-07-04 15:40:47', NULL),
('f2063dd4-3c0d-43f8-98a6-756cdf7e79f9', 'VALENTINA DAIRA', 'MEDINA HERRERA', 'femenino', 'HUARAZ', '942448330', 'maritza.hhgg@gmail.com', '73133358', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:10:20', '2023-07-04 18:10:20', NULL),
('f425e43e-6531-4149-8a5d-6cb43ea816b1', 'Giraldo', 'Apolinario', 'masculino', 'jr. Atahualpa 154', '973456987', 'giraldo@gmail.com', '87456798', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-14 20:28:29', '2023-06-14 20:28:29', NULL),
('f46b2222-d22a-4a33-9ace-7b1852c8ed83', 'ROSMEL JHENSEN', 'CORONEL VILCA', 'masculino', 'HUARAZ', '946633771', 'DEATHINGAMES009@GMAIL.COM', '74691430', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:03:51', '2023-07-04 12:03:51', NULL),
('f4850a64-5bfc-4c08-87af-7a0fe6b00c25', 'NOHELY MARIA', 'SANCHEZ CARRION', 'femenino', 'HUARAZ', '929032342', 'mariana.nehelysc@gmail.com', '45565830', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-03 19:06:13', '2023-07-03 19:06:13', NULL),
('f4ce4b8f-62b9-483b-b190-ba602b4f2a1c', 'CLAUDIA ELIZABETH', 'DE LA CRUZ ELIZABETH', 'femenino', 'JR. SAN CRISTOBAL 1117 HUARAZ', '943965105', 'claudiadelcruzm@gmail.com', '75788337', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:01:08', '2023-07-04 12:01:08', NULL),
('f5151641-4556-426c-979d-519cb10acc8c', 'FERNANDA GUADALUPE', 'ALTAMIRANO GOÑEZ', 'femenino', 'HUARAZ', '987864610', 'jackelinezgd_@hotmail.com', '61429337', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:04:05', '2023-07-04 18:04:05', NULL),
('f530c644-9bc2-42c0-8a91-faf1dd66a89f', 'BRIHANA JASMINE', 'ASENCIOS ROMERO', 'femenino', 'HUARAZ', '954650732', 'anderson_09-07@hotmail.com', '78465567', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:03:57', '2023-07-04 19:03:57', NULL),
('f5bd5d54-6165-4d35-805e-1cf7436a0d78', 'EVAN ANTONIO', 'CACERES RUBINA', 'masculino', 'HUARAZ', '937057441', 'doristrujillo916@gmail.com', '90600968', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:57:48', '2023-07-05 10:57:48', NULL),
('f62a799a-3147-4105-a93b-da41f034c982', 'CAMILA DE JESUS', 'CERMEÑO PALACIOS', 'femenino', 'HUARAZ', '938611768', 'camila.cermeno02@gmail.com', '61155361', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:05:55', '2023-07-04 18:05:55', NULL),
('f6be3910-0a7b-4fd3-a23f-adf5fe88f887', 'TATIANA CUSICUYLLUR', 'MORALES NIETO', 'femenino', 'HUARAZ', '928524912', 'elimoralesh17@gmail.com', '60026763', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 11:37:44', '2023-07-04 11:37:44', NULL),
('f72dd948-127b-4120-ac09-ea8a309aa31c', 'JOSTIN RICARDO', 'BRONCANO RÍOS', 'masculino', 'HUARAZ', '933661641', 'jast09br@gmail.com', '73665040', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:28:23', '2023-07-04 16:28:23', NULL),
('f8327f20-513f-463f-9b7d-f1bf0c2fea98', 'NICOLAS CRISTHOFER', 'ANICETO RAMIREZ', 'masculino', 'HUARAZ', '932322338', 'crat_1965@hotmail.com', '63588586', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:11:56', '2023-07-04 10:11:56', NULL),
('f8344c99-22e2-4f81-966c-3cfcbfb4a515', 'DIAZ ESCALENTE', 'KRISTEN LUCIA', 'femenino', 'HUARAZ', '930649990', 'CRISLYESCALANTE@GMAIL.COM', '78818058', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-11 18:56:30', '2023-07-11 18:56:30', NULL),
('f862b876-0d6e-43a7-9335-6354901c9a1e', 'LUIS DANIEL', 'FORONDA MAGUIÑA', 'masculino', 'HUARAZ', '945937683', 'kuandss@gmail.com', '61314621', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:48:50', '2023-07-04 18:48:50', NULL),
('f87d9916-ce1c-4a04-ae0f-2f45e8a1c58a', 'MARIACRISTINA MILAGROS', 'RAMIREZ MUÑOZ', 'femenino', 'HUARAZ', '992500906', 'kitimu2502@gmail.com', '62896395', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:44:54', '2023-07-04 16:44:54', NULL),
('f8c79973-5d78-4d15-938f-2076c3e077d9', 'LUCIANA KAORI', 'YAURIVILCA DOIG', 'femenino', 'HUARAZ', '943112753', 'rvds110@gmail.com', '78426842', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:23:14', '2023-07-04 19:23:14', NULL),
('f9387680-24bf-4048-9377-6cb64b79d28f', 'BENYAMIN ANGELO', 'ASENCIOS ROMERO', 'masculino', 'HUARAZ', '954650732', 'anderson.aar.09@gmail.com', '63014017', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:02:35', '2023-07-04 19:02:35', NULL),
('f9eb6b7d-7d77-4b4d-898b-97f4995d3e54', 'ROGER ROBERT', 'TORRES MAYTA GIANFRANCO', 'masculino', 'HUARAZ', '947310220', 'torresgianfranco0@gmail.com', '73642218', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:42:17', '2023-07-04 10:42:17', NULL),
('fa1d963b-c61c-403a-9bf7-8b53fc396c2a', 'BEYSI MAYUMI', 'ESPINOZA PERNIA', 'femenino', 'HUARAZ', '998363996', 'beysimayumy07@gmail.com', '70500690', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 17:49:46', '2023-07-04 17:49:46', NULL),
('fa87b686-0e2a-4f87-b92f-70d7a4ab6f89', 'SISSEL LIANA', 'LOAIZA DOMINGUEZ', 'femenino', 'HUARAZ', '942009393', 'LIANALOAIZA@GMAIL.COM', '40565637', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:31:17', '2023-07-04 18:31:17', NULL),
('fae0ab18-8892-4086-8cd7-908feae3dbdd', 'ALESSANDRO DEL PIERO', 'REY CASTRO', 'masculino', 'HUARAZ', '938807853', 'pamelitacastro1@hotmil.com', '79015598', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 17:44:18', '2023-07-05 17:44:18', NULL),
('fae92950-46de-4adf-ad1a-c7d266b631fe', 'VALERIA ANDREA', 'PAJUELO FERNANDEZ', 'femenino', 'HUARAZ', '990130807', 'valeriaandrea13477@gmail.com', '75607245', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:14:57', '2023-07-04 18:14:57', NULL),
('fb745215-16d6-4e46-93e9-4aaff76ddbfd', 'LUCIANA MARIEN', 'TAFUR VALERIO', 'femenino', 'HUARAZ', '995872121', 'dorisvalerio@hotmail.com', '78358482', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:42:51', '2023-07-04 16:42:51', NULL),
('fbb40eeb-1222-4a3d-856b-5d51773713fd', 'ZULITA FLORHIELA', 'MINAYA OBREGON', 'masculino', 'HUARAZ', '948065960', 'nibickmellz@hotmail.com', '44003113', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-06-23 19:19:13', '2023-06-23 19:19:13', NULL),
('fbd0ca63-b98b-4de6-9b5e-f3fdada2119a', 'FATIMA DANIELA', 'DE LA CRUZ BARRETO', 'masculino', 'HUARAZ', '952891219', 'gissel.barreto.r@gmail.com', '90256480', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-05 10:20:59', '2023-07-05 10:20:59', NULL),
('fbebe9b6-c79a-4206-bd7f-98907d93f6cf', 'ELIAS FAUSTINO', 'MILLA RODRIGUEZ', 'masculino', 'HUARAZ', '931702490', 'andesexpedishon@gmail.com', '62287419', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 10:38:54', '2023-07-04 10:38:54', NULL),
('fc0739d0-a67f-4d93-aa77-b9d60dfe6de3', 'KAORI NAIARA', 'ALVA GARCIA', 'femenino', 'HUARAZ', '948179010', 'marcoalva26@gmail.com', '62354727', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 16:25:46', '2023-07-04 16:25:46', NULL),
('fdc82d5c-8503-4b79-a15d-9f7e49e13792', 'JEYKOB AXHEL', 'DAVILA BERMUDEZ', 'masculino', 'HUARAZ', '944984734', 'GINA_ANALY@HOTMAIL.COM', '81138831', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 15:58:22', '2023-07-04 15:58:22', NULL),
('fe11db0b-0c88-4651-a923-d22cd962450e', 'MATHS YOSHUA', 'ROSALES JAMANCA', 'masculino', 'HUARAZ', '990158057', 'rubi383@hotmail.com', '78655428', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 19:09:11', '2023-07-04 19:09:11', NULL),
('fe361a2f-617c-4bf4-82f3-3663308e7b6a', 'ESTEBAN ANDES PATRICIO', 'DEPAZ RODRIGUEZ', 'masculino', 'HUARAZ', '945202550', 'ERIKSON.DEPAZ@GMAIL.COM', '81596957', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 18:58:14', '2023-07-04 18:58:14', NULL),
('ffe6514c-9351-4f1b-80ac-6dcd1d9f64dd', 'SEBASTIAN MATIAS', 'VILLAVICENCIO GONZALES', 'masculino', 'HUARAZ', '964937122', 'gonzales.alfaroerika@gmail.com', '61880258', '5875ce6b-2a48-4bde-8338-ddd8ce391730', '2023-07-04 12:23:08', '2023-07-04 12:23:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `monto`, `created_at`, `updated_at`, `deleted_at`) VALUES
('027f35e7-7f5f-414c-8543-e8b7e5de5846', 'I', 'INGLES BASICO IX', 120.00, '2023-07-04 08:39:21', '2023-07-04 09:38:00', NULL),
('03ed5f0f-f0b4-4059-b3ee-63cb5516588d', 'I', 'INGLES AVANZADO KIDS VII', 140.00, '2023-07-05 16:47:09', '2023-07-05 16:47:09', NULL),
('04204b3c-7b50-4515-ad36-2c09bab5fd1f', 'I', 'INGLES PRE KIDS INTERMEDIO III', 140.00, '2023-07-05 16:38:18', '2023-07-06 18:11:44', NULL),
('0471c827-0e55-470d-a9e2-a17aa71af8c6', 'C', 'SEMESTRE ACADEMICO 2023 II - CICLO III', 1600.00, '2023-07-14 12:28:36', '2023-07-14 12:28:36', NULL),
('0a4aa375-a467-49d7-8889-6617a3cabc35', 'I', 'QUECHUA PERSONALIZADO BASICO I', 290.00, '2023-07-05 16:43:22', '2023-07-05 16:43:22', NULL),
('0b33ade7-9c0c-48ea-9b68-3b4587d96e75', 'I', 'INGLES PRE KIDS BASICO I', 140.00, NULL, '2023-07-04 09:38:08', NULL),
('0c1a6c18-09f7-415a-bdaf-fdb370fbc472', 'I', 'INGLES BASICO KIDS IV', 120.00, '2023-07-04 09:05:59', '2023-07-04 09:38:18', NULL),
('0ca90bfc-0ec6-11ee-be56-0242ac120002', 'I', 'MATRICULA INGLES BASICO', 50.00, NULL, '2023-07-04 09:38:34', NULL),
('0eaeda35-47b0-4ad9-a7cb-5e439f78190e', 'I', 'INGLES BASICO KIDS VIII', 120.00, '2023-07-05 16:44:45', '2023-07-05 16:44:45', NULL),
('0f54dd44-a58f-4c7c-aed5-edaea3f9e045', 'I', 'INGLES PRE KIDS AVANZADO VI', 140.00, '2023-07-05 16:42:38', '2023-07-06 18:07:15', NULL),
('0ff310e0-85e3-4438-b389-aadc11fe6c30', 'I', 'INGLES AVANZADO III', 160.00, '2023-07-05 16:28:25', '2023-07-05 16:28:25', NULL),
('1080e025-2146-4a91-96c4-3c869565ee1c', 'I', 'SHARE IT! 5', 180.00, '2023-07-05 10:28:44', '2023-07-05 10:28:44', NULL),
('16271707-80af-458b-8326-bfe1545b3635', 'C', 'CARNET ESTUDIANTIL - CEAM', 25.00, '2023-07-15 09:47:36', '2023-07-15 09:48:08', NULL),
('16804df8-f4d0-44b7-ab02-43ce4a68761f', 'C', 'ASPIRANTE III', 1950.00, '2023-07-07 11:13:53', '2023-07-07 11:13:53', NULL),
('1a29eaf0-6ba5-4b1c-9de8-73fbe07ac700', 'I', 'FERRIS WHEEL 3', 150.00, '2023-07-05 10:32:29', '2023-07-05 10:32:29', NULL),
('1ac47240-1142-425c-a86d-86dc824e46c8', 'I', 'INGLES AVANZADO VI', 160.00, '2023-07-05 16:29:17', '2023-07-05 16:29:17', NULL),
('1e16b1e8-aff9-47a9-af02-a61a436d08a8', 'I', 'EXAMEN DE CLASIFICACION', 20.00, '2023-07-10 17:37:59', '2023-07-10 17:37:59', NULL),
('201fde81-729c-4179-90dc-b1b945757010', 'I', 'INGLES PERSONALIZADO INTERMEDIO', 320.00, '2023-07-06 11:25:49', '2023-07-06 11:25:49', NULL),
('210f04fb-bb4f-4627-9fab-2116ee57e5b3', 'I', 'INGLES INTERMEDIO KIDS II', 130.00, '2023-07-04 09:21:35', '2023-07-04 09:38:45', NULL),
('243d9706-85d7-469b-89b5-a2f160129a4c', 'I', 'INGLES PRE KIDS AVANZADO I', 140.00, '2023-07-05 16:41:39', '2023-07-06 18:04:02', NULL),
('25eaf903-010b-41d6-8527-64be5eede2d7', 'I', 'MATRICULA INTERMEDIO KIDS', 50.00, '2023-07-04 09:40:08', '2023-07-04 09:40:08', NULL),
('26430d0f-83d3-4eec-a309-f5676f5000e0', 'C', 'SEMESTRE ACADEMICO 2023 II - CICLO II', 1600.00, '2023-07-14 12:28:26', '2023-07-14 12:28:26', NULL),
('2651e65d-9c9a-417b-9b4d-d1193ad0efc1', 'I', 'INGLES PERSONALIZADO TPR KIDS', 290.00, '2023-07-06 11:44:21', '2023-07-06 17:50:56', NULL),
('26d915dc-7d68-4139-8c6b-ab74d11d5b70', 'I', 'INGLES INTERMEDIO II', 140.00, '2023-07-05 16:24:44', '2023-07-05 16:24:44', NULL),
('2834da6c-9d6c-47bc-ba8d-6d56945c3063', 'I', 'INGLES BASICO VIII', 120.00, '2023-07-04 08:38:00', '2023-07-04 09:38:55', NULL),
('2921d90f-dced-4056-8904-10a4812b4716', 'I', 'INGLES PRE KIDS BASICO IV', 140.00, '2023-07-04 09:25:21', '2023-07-06 18:09:34', NULL),
('2a7d82d7-4dd1-45b2-b454-84d1eb4decf8', 'I', 'INGLES PRE KIDS BASICO I', 140.00, '2023-07-05 16:35:23', '2023-07-06 18:07:58', NULL),
('2b5d2f96-736f-478f-bd9d-03739ef0dd53', 'I', 'INGLES PERSONALIZADO AVANZADO', 350.00, '2023-07-06 11:26:17', '2023-07-06 11:26:17', NULL),
('2b62e04b-7c32-4b3a-a946-938e08170c2d', 'I', 'INGLES BASICO KIDS I', 120.00, '2023-07-04 09:12:23', '2023-07-04 09:39:39', NULL),
('2c927180-23f5-459e-9ca7-870c0fc4ff2d', 'I', 'INGLES BASICO IV', 120.00, '2023-07-04 08:34:44', '2023-07-04 09:39:52', NULL),
('2df38f92-a24b-4421-bba5-3de51a3f6e23', 'C', 'SEMESTRE ACADEMICO 2023 II - CICLO VI', 1600.00, '2023-07-14 12:29:04', '2023-07-14 12:29:04', NULL),
('3279888c-f8d0-4d6c-a41b-df762fa84953', 'I', 'INGLES PRE KIDS BASICO II', 140.00, '2023-07-05 16:35:51', '2023-07-06 18:08:33', NULL),
('333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', 'I', 'INGLES BASICO III', 120.00, '2023-07-04 08:34:08', '2023-07-04 09:40:04', NULL),
('344c7156-015a-4e67-9b9d-e3641766ad62', 'I', 'INGLES INTERMEDIO VII', 140.00, '2023-07-05 16:26:10', '2023-07-05 16:26:10', NULL),
('363a5def-adab-4c2a-bf1c-eae46fa65aed', 'I', 'INGLES BASICO KIDS V', 120.00, '2023-07-04 09:16:01', '2023-07-04 09:40:17', NULL),
('3682dae7-acd7-4330-a11f-77442f13bd7a', 'I', 'SHARE IT! 6', 180.00, '2023-07-05 10:29:26', '2023-07-05 10:29:26', NULL),
('393c3bb1-5d52-4c0f-a645-56dc4663ad63', 'I', 'INGLES PRE KIDS INTERMEDIO VI', 140.00, '2023-07-05 16:38:54', '2023-07-06 18:12:50', NULL),
('3a513509-f572-4f7e-b250-0bbd0ddfedd0', 'I', 'INGLES AVANZADO VII', 160.00, '2023-07-05 16:29:26', '2023-07-05 16:29:26', NULL),
('3a9de07d-3d4e-48d8-893a-aad9d75ecdfc', 'I', 'INGLES INTERMEDIO I', 140.00, '2023-07-05 16:24:27', '2023-07-05 16:24:27', NULL),
('43b1ef72-b158-49ec-8827-66917c8964ea', 'I', 'INGLES INTERMEDIO KIDS IV', 130.00, '2023-07-04 09:22:12', '2023-07-04 09:40:30', NULL),
('45047fbe-d7a7-4d5e-8a99-38b335721f85', 'I', 'INGLES BASICO V', 120.00, '2023-07-04 08:35:20', '2023-07-04 09:40:44', NULL),
('47ed2a9e-9b7b-4921-a03b-ac1a32432cb1', 'I', 'INGLES AVANZADO KIDS VI', 140.00, '2023-07-05 16:46:59', '2023-07-05 16:46:59', NULL),
('48d8401c-730a-47c7-88f4-53d3163198d1', 'I', 'INGLES AVANZADO XII', 160.00, '2023-07-05 16:30:23', '2023-07-05 16:30:23', NULL),
('4bb775e3-9e72-49ee-9435-2ddf1e669698', 'I', 'SKILLFUL 4: LISTENING AND SPEAKING', 250.00, NULL, '2023-07-04 09:41:47', NULL),
('4e66fdd1-05c0-4741-9215-6f531cd2d412', 'I', 'INGLES BASICO VI', 120.00, '2023-07-04 08:36:28', '2023-07-04 09:42:12', NULL),
('4eebe7e9-cad4-47cb-b800-1272b5139496', 'C', 'SEMESTRE ACADEMICO 2023 I - CICLO IV', 1600.00, '2023-07-14 12:27:34', '2023-07-14 12:27:34', NULL),
('4f5eea9c-0126-455b-afc9-f33c56629ccc', 'I', 'QUECHUA PERSONALIZADO BASICO V', 290.00, '2023-07-05 16:42:15', '2023-07-05 16:43:05', NULL),
('518ba82b-94f4-4168-99b9-2ccbb9f23a16', 'I', 'INGLES AVANZADO KIDS IV', 140.00, '2023-07-05 16:46:37', '2023-07-05 16:46:37', NULL),
('56aa2235-babe-4f6b-9ecd-fc589370cc0c', 'I', 'INGLES AVANZADO IX', 160.00, '2023-07-05 16:29:44', '2023-07-05 16:29:44', NULL),
('570fda55-20d2-4ee7-94c2-fed9b68f9c1f', 'I', 'INGLES INTERMEDIO XI', 140.00, '2023-07-05 16:27:25', '2023-07-05 16:27:25', NULL),
('5a96ed4e-7f4d-4673-b262-2d15a68d5726', 'I', 'COME ON IV', 130.00, NULL, '2023-07-05 11:32:17', NULL),
('5bf55309-ccfc-4fb3-9e8e-fef8ef6bbc0c', 'I', 'COME ON III', 130.00, NULL, '2023-07-05 11:32:30', NULL),
('5e5b02f5-0299-41b3-874b-2d3dbde87458', 'I', 'INGLES INTERMEDIO V', 140.00, '2023-07-05 16:25:47', '2023-07-05 16:25:47', NULL),
('60a220a4-f647-4523-b1be-610ea7badc1e', 'C', 'FONDO DE AYUDA MUTUA (FAM)', 80.00, '2023-07-10 16:21:50', '2023-07-10 16:24:06', NULL),
('60cebcdb-ab57-4259-b708-f21cb719b0fa', 'I', 'INGLES TPR KIDS I', 140.00, '2023-07-05 16:43:13', '2023-07-05 16:43:13', NULL),
('6183f5b0-c135-4289-8d5e-0a9d0395b4b1', 'I', 'INGLES AVANZADO KIDS VIII', 140.00, '2023-07-05 16:47:19', '2023-07-05 16:47:19', NULL),
('623133f2-9559-4021-ac93-3121f9d079eb', 'C', 'SEMESTRE ACADEMICO 2023 II - CICLO IV', 1600.00, '2023-07-14 12:28:46', '2023-07-14 12:28:46', NULL),
('630dedc1-ca05-41cd-ad43-ba31455be3d4', 'I', 'INGLES PRE KIDS BASICO VI', 140.00, '2023-07-05 16:36:41', '2023-07-06 18:11:06', NULL),
('64773585-ee35-4ef7-8cf4-042e00586515', 'I', 'INGLES PERSONALIZADO TPR PRE KIDS', 290.00, '2023-07-06 11:43:17', '2023-07-06 17:50:39', NULL),
('657ba856-f6a5-4ef3-9688-866aed747f13', 'I', 'AMERICAN LEARNING HUB LEVEL 2', 140.00, NULL, '2023-07-04 09:42:48', NULL),
('6657dd11-3a99-41e0-97fa-9a27ce60243d', 'I', 'INGLES AVANZADO IV', 160.00, '2023-07-05 16:28:36', '2023-07-05 16:28:36', NULL),
('687a431d-8e01-45f0-a0ce-4e72a0fc7420', 'I', 'INGLES PRE KIDS AVANZADO III', 140.00, '2023-07-05 16:42:05', '2023-07-06 18:04:54', NULL),
('6b5c65f9-db86-4531-a066-c4a0cba23c32', 'I', 'SKILLFUL 4: READING AND WRITING', 250.00, NULL, '2023-07-04 09:43:41', NULL),
('7070f0ad-7b60-4174-8e52-a5d759f66b45', 'I', 'MATRICULA INGLÉS AVANZADO', 50.00, NULL, '2023-07-04 09:52:30', NULL),
('70fd97db-a240-4689-bf09-c9e4930735f9', 'I', 'INGLES AVANZADO X', 160.00, '2023-07-05 16:30:02', '2023-07-05 16:30:02', NULL),
('7140b57a-bf21-4ff7-92f5-d718742b9271', 'I', 'SKILLFUL 4: LISTENING AND SPEAKING', 250.00, NULL, '2023-07-04 09:44:34', NULL),
('72ca9bd4-0ae5-4b8f-ad35-528bc5ccefb9', 'I', 'QUECHUA PERSONALIZADO BASICO VI', 29.00, '2023-07-05 16:44:52', '2023-07-05 16:44:52', NULL),
('73924afa-ab6e-4220-9937-629bedd6b466', 'I', 'INGLES PRE KIDS BASICO V', 140.00, '2023-07-05 16:36:30', '2023-07-06 18:10:20', NULL),
('747c948e-70b0-477c-a209-8a0115e93a4d', 'I', 'INGLES INTERMEDIO KIDS V', 130.00, '2023-07-05 16:45:18', '2023-07-05 16:45:18', NULL),
('75ffe702-9e09-4545-99df-5b76b176aaee', 'I', 'INGLES INTERMEDIO KIDS VII', 130.00, '2023-07-04 09:22:37', '2023-07-04 09:44:53', NULL),
('76acb468-a1e0-4cd3-9b98-619c53091941', 'I', 'INGLES AVANZADO VIII', 160.00, '2023-07-05 16:29:34', '2023-07-05 16:29:34', NULL),
('77077dc4-de87-4e57-9776-0298ff294957', 'I', 'INGLES PERSONALIZADO PRE KIDS AVANZADO', 350.00, '2023-07-06 11:43:58', '2023-07-06 17:49:56', NULL),
('77111985-0d16-4bc5-95d3-ebe58fb75303', 'I', 'INGLES TPR KIDS III', 140.00, '2023-07-05 16:43:33', '2023-07-05 16:43:33', NULL),
('77d9dba0-9d3c-4a4e-bb26-89b5a6d90439', 'I', 'AMERICAN LEARNING HUB LEVEL 4', 160.00, NULL, '2023-07-04 09:45:33', NULL),
('77e548c3-6c39-4a3e-a25f-60010fa39535', 'CP10', 'COME ON VI', 130.00, NULL, '2023-07-05 11:32:43', NULL),
('795852e6-b984-4ea4-afca-d757bcc8a102', 'I', 'PENSION INGLES INTERMEDIO', 160.00, NULL, '2023-07-04 09:46:15', NULL),
('79b797b4-3426-4e54-b39b-f25154046925', 'I', 'INGLES BASICO II', 120.00, '2023-07-04 08:33:40', '2023-07-04 09:46:37', NULL),
('7b59d6df-dd5c-412e-a5d3-092663c9734e', 'I', 'INGLES BASICO PRE KIDS IV', 140.00, '2023-07-05 12:31:23', '2023-07-06 17:48:20', NULL),
('7b78b5ba-60e6-4010-972a-18fdab8c366c', 'I', 'INGLES BASICO XI', 120.00, '2023-07-04 08:40:24', '2023-07-04 09:46:49', NULL),
('7ba2cc21-dc5b-42f8-b542-baaeb41443f1', 'I', 'INGLES AVANZADO KIDS III', 140.00, '2023-07-04 09:23:22', '2023-07-05 17:33:19', NULL),
('7e306dcc-f720-49af-b42d-09e8d8d53b74', 'I', 'MATRICULA PRE KIDS INTERMEDIO', 50.00, '2023-07-06 10:10:34', '2023-07-06 18:15:31', NULL),
('7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', 'I', 'INGLES BASICO KIDS VII', 120.00, '2023-07-04 09:20:04', '2023-07-04 09:47:35', NULL),
('8239b4e5-1047-4255-804d-0a818f44dde0', 'I', 'INGLES PERSONALIZADO AVANZADO KIDS', 350.00, '2023-07-06 11:44:59', '2023-07-06 11:44:59', NULL),
('86ce4f37-4897-499d-a72a-48ba313a5bba', 'I', 'MATRICULA PRE KIDS BASICO', 50.00, '2023-07-06 10:10:17', '2023-07-06 18:16:08', NULL),
('885c4d14-1377-440d-95fe-bc1666e538cd', 'I', 'INGLES TPR PRE KIDS I', 140.00, '2023-07-05 16:33:22', '2023-07-06 18:17:36', NULL),
('89dc0a40-717c-431f-a596-ab05ccb15300', 'C', 'SEMESTRE ACADEMICO 2023 I - CICLO II', 1600.00, '2023-07-14 12:26:36', '2023-07-14 12:26:36', NULL),
('8b2df53f-10a4-4d0a-85ed-eb2a72c986e4', 'I', 'INGLES PRE KIDS BASICO III', 140.00, '2023-07-05 16:36:03', '2023-07-06 18:09:19', NULL),
('8bc7e00a-f512-4294-be8e-452c7dc15c5c', 'C', 'SEMESTRE ACADEMICO 2023 II - CICLO V', 1600.00, '2023-07-14 12:28:55', '2023-07-14 12:28:55', NULL),
('8c3d11d2-c97b-4721-ad56-321273c20a20', 'I', 'INGLES PRE KIDS AVANZADO II', 140.00, '2023-07-05 16:41:53', '2023-07-06 18:04:28', NULL),
('8cbf240e-9498-40cf-86a3-e3645f25aa95', 'I', 'INGLES PERSONALIZADO BASICO', 290.00, '2023-07-06 11:25:33', '2023-07-06 11:25:33', NULL),
('8d08384d-6135-45be-901e-54436142f059', 'I', 'INGLES PRE KIDS INTERMEDIO II', 140.00, '2023-07-05 16:38:07', '2023-07-06 18:11:27', NULL),
('8d9cf967-46c0-4760-b943-2e48561a1f9a', 'I', 'INGLES PRE KIDS INTERMEDIO I', 140.00, '2023-07-05 16:37:54', '2023-07-06 17:52:16', NULL),
('8e6d9ebb-86c2-4ef8-8c9a-77f4e1e1d85b', 'CP13', 'AMERICAN LEARNING HUB LEVEL 3', 160.00, NULL, '2023-07-04 09:48:26', NULL),
('90bdd217-7440-4a03-bffd-0965de342b60', 'I', 'MATRICULA TPR KIDS', 50.00, '2023-07-04 09:37:11', '2023-07-06 18:14:04', NULL),
('90f9f4d9-6beb-4592-9a3b-2d0892b6933c', 'CP15', 'AMERICAN LEARNING HUB LEVEL 5', 180.00, NULL, '2023-07-04 09:50:38', NULL),
('91b9362d-e5e1-4524-ba3b-07bb782b9300', 'I', 'INGLES BASICO X', 120.00, '2023-07-04 08:39:45', '2023-07-04 09:51:07', NULL),
('94716c84-a1ea-489e-a2f8-c20c56f5dc1e', 'I', 'INGLES INTERMEDIO XII', 140.00, '2023-07-05 16:27:39', '2023-07-05 16:27:39', NULL),
('956ed2ec-ae6b-449b-825c-179592116c6b', 'I', 'INGLES BASICO KIDS II', 120.00, '2023-07-04 09:12:57', '2023-07-04 09:51:26', NULL),
('9681bfa5-816f-4ced-ad06-4f62f5b56a3f', 'I', 'INGLES PERSONALIZADO PRE KIDS BASICO', 290.00, '2023-07-06 11:43:30', '2023-07-06 17:50:23', NULL),
('96b40937-0174-4773-81ea-ec175d30d6ef', 'C', 'SEMESTRE ACADEMICO 2023 II - CICLO I', 1600.00, '2023-07-14 12:28:17', '2023-07-14 12:28:17', NULL),
('974f2c1a-1f30-4757-908b-eb165c32db0b', 'I', 'INGLES PRE KIDS INTERMEDIO VI', 140.00, '2023-07-04 09:26:24', '2023-07-06 18:13:12', NULL),
('992814c8-f55d-4690-83fb-415d9fd61e28', 'I', 'INGLES INTERMEDIO KIDS I', 130.00, '2023-07-05 16:45:05', '2023-07-05 16:45:05', NULL),
('9cfe69fb-d9af-450c-9c95-8b9ccec68006', 'I', 'MATRICULA INGLES INTERMEDIO', 50.00, NULL, '2023-07-04 09:33:57', NULL),
('9fa8205f-a378-4bd3-8b62-5610ec662338', 'I', 'INGLES PRE KIDS INTERMEDIO IV', 140.00, '2023-07-05 16:38:27', '2023-07-06 18:12:05', NULL),
('9fb15152-22ab-40d5-9630-8c1dd1ff0c92', 'I', 'SHARE IT! 1', 180.00, '2023-07-05 10:21:02', '2023-07-05 10:21:02', NULL),
('a150455a-7664-4019-aba3-968d378e6405', 'I', 'INGLES SPEAKING IV', 120.00, '2023-07-04 09:21:03', '2023-07-04 09:49:33', NULL),
('a3e7ce1e-cdcf-44d6-bb9e-24303798fd1f', 'I', 'QUECHUA PERSONALIZADO BASICO III', 290.00, '2023-07-05 16:44:02', '2023-07-05 16:44:02', NULL),
('a4025765-2906-4307-87b7-95afd053e9c9', 'C', 'SEMESTRE ACADEMICO 2023 I - CICLO V', 1600.00, '2023-07-14 12:27:45', '2023-07-14 12:27:45', NULL),
('a8898d04-f68c-48ac-9860-f9bb12a03453', 'I', 'INGLES PRE KIDS INTERMEDIO V', 140.00, '2023-07-05 16:38:37', '2023-07-06 18:12:24', NULL),
('a9ce0470-3028-4b12-9cd2-cf19107a164e', 'I', 'INGLES AVANZADO V', 160.00, '2023-07-05 16:28:45', '2023-07-05 16:28:45', NULL),
('aa7921df-8874-4b59-9279-1d6f4ea4b6b7', 'I', 'INGLES PRE KIDS AVANZADO IV', 140.00, '2023-07-05 16:42:16', '2023-07-06 18:05:26', NULL),
('abcdd9af-d2a8-4817-ab68-5432d5426886', 'I', 'SHARE IT! 2', 180.00, '2023-07-05 10:21:51', '2023-07-05 10:21:51', NULL),
('ae87d49b-8a67-4b4b-a88c-3ee9256be430', 'I', 'INGLES PRE KIDS AVANZADO V', 140.00, '2023-07-05 16:42:26', '2023-07-06 18:06:27', NULL),
('af08d621-c2c8-4de4-9e13-5c8df0632a87', 'CP09', 'COME ON V', 130.00, NULL, '2023-07-05 11:33:23', NULL),
('b0a7236e-6de7-4b68-8a6c-ef4fe0cd246b', 'I', 'INGLES AVANZADO KIDS V', 140.00, '2023-07-05 16:46:48', '2023-07-05 16:46:48', NULL),
('b5143990-fb6f-4eed-86bc-b63e4f849088', 'I', 'INGLES INTERMEDIO III', 140.00, '2023-07-05 16:25:06', '2023-07-05 16:25:06', NULL),
('b5a865d7-1216-4a26-8b13-70a5bb95e41e', 'CP11', 'AMERICAN LEARNING HUB LEVEL 1', 140.00, NULL, '2023-07-04 09:52:01', NULL),
('b6b1b774-a6b0-4b60-9b75-bba403497a2a', 'I', 'INGLES INTERMEDIO X', 140.00, '2023-07-05 16:27:09', '2023-07-05 16:27:09', NULL),
('b713d7df-8a54-4375-974a-75f04f2bd99e', 'I', 'INGLES PERSONALIZADO INTERMEDIO  II', 320.00, '2023-07-13 16:54:14', '2023-07-13 16:57:15', NULL),
('b7c609ea-f136-489c-b249-85e007a47620', 'I', 'INGLES PERSONALIZADO BASICO KIDS', 290.00, '2023-07-06 11:44:34', '2023-07-06 11:44:34', NULL),
('b87d9ee8-3169-4e91-b715-86e89eeee6fe', 'I', 'REFORZAMIENTO', 20.00, '2023-07-05 17:04:06', '2023-07-05 17:04:06', NULL),
('b9468522-cd1e-46f9-9c03-f71a81f53b16', 'I', 'INGLES AVANZADO I', 160.00, '2023-07-05 16:28:02', '2023-07-05 16:28:02', NULL),
('baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', 'I', 'INGLES BASICO I', 120.00, NULL, '2023-07-04 09:52:19', NULL),
('bb059569-1af8-46fe-9b21-3fcbe8e7ae18', 'I', 'INGLES INTERMEDIO IV', 140.00, '2023-07-04 09:20:15', '2023-07-04 09:52:48', NULL),
('bc020e49-8073-4d09-9643-fb3af46bf07c', 'I', 'INGLES INTERMEDIO KIDS VIII', 130.00, '2023-07-05 16:45:47', '2023-07-05 16:45:47', NULL),
('bc0aca29-a3b1-467c-8421-0623a44d67c9', 'C', 'SEMESTRE ACADEMICO 2023 I - CICLO VI', 1600.00, '2023-07-14 12:27:58', '2023-07-14 12:27:58', NULL),
('bdf7ed6d-a310-4ada-a66b-003a2df730c1', 'I', 'FERRIS WHEEL 2', 150.00, '2023-07-05 10:31:32', '2023-07-05 10:31:32', NULL),
('bf2a9ee6-3612-4315-b6ab-c73b754a78a0', 'I', 'INGLES INTERMEDIO VI', 140.00, '2023-07-05 16:25:58', '2023-07-05 16:25:58', NULL),
('c2abf333-cf1f-45dd-92e8-2a97812d0cb1', 'I', 'INGLES INTERMEDIO VIII', 140.00, '2023-07-05 16:26:36', '2023-07-05 16:26:36', NULL),
('c76a2668-0764-40f4-ba23-78e18e5cedd2', 'I', 'INGLES BASICO KIDS III', 120.00, '2023-07-04 09:13:15', '2023-07-04 09:53:08', NULL),
('c92d4c39-db54-46bf-b4d1-d51413b81532', 'I', 'QUECHUA PERSONALIZADO BASICO IV', 290.00, '2023-07-05 16:44:14', '2023-07-05 16:44:14', NULL),
('c9eceb55-2e5c-406c-9f2a-55b0e93d027a', 'I', 'INGLES TPR KIDS II', 140.00, '2023-07-05 16:43:21', '2023-07-05 16:43:21', NULL),
('ca988e16-18ab-499b-ab10-53577bca6105', 'I', 'MATRICULA TPR PRE KIDS', 50.00, '2023-07-06 10:09:47', '2023-07-06 18:14:59', NULL),
('cb109f52-53e5-4633-b4d4-07477cd59c29', 'I', 'MATRICULA PRE KIDS AVANZADO', 50.00, '2023-07-06 10:11:23', '2023-07-06 18:16:40', NULL),
('cbf0a77e-850d-47ea-9829-e3b27cf23df7', 'C', 'SEMESTRE ACADEMICO 2023 I - CICLO I', 1600.00, '2023-07-14 11:39:18', '2023-07-14 11:39:18', NULL),
('cc978ba2-e246-4da0-8111-68ffbe58c0ca', 'I', 'INGLES AVANZADO XI', 160.00, '2023-07-05 16:30:12', '2023-07-05 16:30:12', NULL),
('cf9b3bfd-9171-4539-bc17-7a9decba2c38', 'C', 'EXAMEN DE ADMISION 2023 II - CEAM', 850.00, '2023-07-10 16:21:05', '2023-07-10 16:21:05', NULL),
('d14822fd-23c3-42b3-9553-668ab0f6a4de', 'I', 'SHARE IT! 4', 180.00, '2023-07-05 10:23:26', '2023-07-05 10:23:26', NULL),
('d2acf8d7-55bf-418d-b0be-cb5a815343c7', 'I', 'INGLES INTERMEDIO IX', 140.00, '2023-07-05 16:26:57', '2023-07-05 16:26:57', NULL),
('d5bbdf8f-f092-4e3e-b53b-dbbeea82d7fc', 'CP21', 'SKILLFUL 4: LISTENING AND SPEAKING', 250.00, NULL, '2023-07-04 09:53:51', NULL),
('d7925fd0-fffe-4991-b51f-2eb3158eba31', 'C', 'ASPIRANTE II', 1750.00, '2023-07-07 11:13:37', '2023-07-07 11:13:37', NULL),
('d7fb944c-fa3c-467d-bb06-69b11e24a659', 'I', 'INGLES TPR PRE KIDS III', 140.00, '2023-07-05 16:34:18', '2023-07-06 18:32:20', NULL),
('dac8258e-b025-4e0e-92f3-0d3de00ccb34', 'I', 'MATRICULA BASICO KIDS', 50.00, '2023-07-04 09:39:42', '2023-07-04 09:39:42', NULL),
('db2302d3-0fa4-4900-b04b-d20f62f4cf91', 'I', 'QUECHUA PERSONALIZADO BASICO II', 290.00, '2023-07-05 16:43:47', '2023-07-05 16:43:47', NULL),
('dc46e13b-d0c2-4acc-96ce-985952c69f22', 'I', 'INGLES BASICO KIDS VI', 120.00, '2023-07-04 09:18:15', '2023-07-04 09:54:20', NULL),
('dd433473-19fd-4f2d-b271-315c726da358', 'CP05', 'COME ON I', 130.00, NULL, '2023-07-05 11:32:59', NULL),
('df0739ae-a9c8-4522-aa18-8e199b2a0b0e', 'I', 'FERRIS WHEEL 1', 150.00, '2023-07-05 10:30:40', '2023-07-05 10:30:40', NULL),
('e0f6aa59-92ad-417f-b034-1f8f94481626', 'I', 'INGLES AVANZADO KIDS I', 140.00, '2023-07-05 16:46:07', '2023-07-05 16:46:07', NULL),
('e372a50a-cae6-4352-ba1a-fbefcff7e9a1', 'I', 'SHARE IT! 3', 180.00, '2023-07-05 10:22:44', '2023-07-05 10:22:44', NULL),
('e7380298-1830-41fb-8b3a-2ba88e4044bf', 'I', 'INGLES PERSONALIZADO PRE KIDS INTERMEDIO', 320.00, '2023-07-06 11:43:43', '2023-07-06 17:51:48', NULL),
('e7cd03e8-cd21-4548-a89e-85be0f115d51', 'C', 'SEMESTRE ACADEMICO 2023 I - CICLO III', 1600.00, '2023-07-14 12:27:06', '2023-07-14 12:27:06', NULL),
('e93d4a93-c23a-4a74-970f-cad5c69242df', 'I', 'MATRICULA AVANZADO KIDS', 50.00, '2023-07-04 09:41:24', '2023-07-04 09:41:24', NULL),
('e96c5407-a14b-4a47-9812-78d0aac537e8', 'I', 'EXAMEN EXTEMPORANEO', 30.00, '2023-07-05 16:22:57', '2023-07-05 16:22:57', NULL),
('eaa357de-25f9-41b0-81ba-65129516aaab', 'I', 'INGLES INTERMEDIO KIDS III', 130.00, '2023-07-05 11:46:51', '2023-07-05 16:20:08', NULL),
('edea7070-8236-4726-8564-48f0a33f8a97', 'I', 'INGLES AVANZADO KIDS II', 140.00, '2023-07-05 16:46:18', '2023-07-05 16:46:18', NULL),
('ef65ac8d-ba8e-47fa-af6e-e73eca13ea88', 'CP17', 'SKILLFUL 3: READING AND WRITING', 250.00, NULL, '2023-07-04 09:55:43', NULL),
('f1fa873d-3fc6-4bb1-9d81-6d95725c5204', 'I', 'INGLES BASICO VII', 120.00, '2023-07-04 08:37:31', '2023-07-04 09:55:57', NULL),
('f5909489-8f73-45f2-a5b9-731faf497011', 'I', 'INGLES AVANZADO II', 160.00, '2023-07-05 16:28:11', '2023-07-05 16:28:11', NULL),
('f6996f60-91c3-4014-be8b-d0e45a3b3c9d', 'CP06', 'COME ON II', 130.00, NULL, '2023-07-05 11:33:40', NULL),
('f78a45d6-e1b6-4d10-aa05-694f483d097d', 'CP16', 'SKILLFUL 3: READING AND WRITING', 250.00, NULL, '2023-07-04 09:57:00', NULL),
('f9b7e51b-4e6b-4012-bb0a-2e31314934b9', 'I', 'INGLES INTERMEDIO KIDS VI', 130.00, '2023-07-05 16:45:33', '2023-07-05 16:45:33', NULL),
('faa63a46-30a8-4182-8a56-bdae528b3e0f', 'I', 'INGLES PERSONALIZADO INTERMEDIO KIDS', 320.00, '2023-07-06 11:44:47', '2023-07-06 11:44:47', NULL),
('fd46a93e-3200-4338-86dd-44bd07da12a3', 'I', 'INGLES TPR PRE KIDS II', 140.00, '2023-07-04 09:27:26', '2023-07-06 18:17:11', NULL),
('fd750b2e-54a0-4cd7-a0e9-092cafd6aa16', 'I', 'INGLES BASICO XII', 120.00, '2023-07-04 08:40:50', '2023-07-04 09:57:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producto_programa`
--

CREATE TABLE `producto_programa` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_programa_academico` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producto_programa`
--

INSERT INTO `producto_programa` (`id`, `id_producto`, `id_programa_academico`, `created_at`, `updated_at`, `deleted_at`) VALUES
('02204f70-c457-40fd-b2a2-50c9365ad3b6', '7ba2cc21-dc5b-42f8-b542-baaeb41443f1', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-04 09:35:12', '2023-07-04 09:35:12', NULL),
('03ce02a0-d1df-417c-a3fd-af43781a6b2b', 'd7925fd0-fffe-4991-b51f-2eb3158eba31', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-07 11:15:02', '2023-07-07 11:15:02', NULL),
('03cfb12d-0f7e-46ae-bd99-470f6a170b0d', '7fec364b-6f0b-42c4-8b8d-bcd3fa2703cd', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 15:22:05', '2023-07-05 15:22:05', NULL),
('0441e66b-6057-417f-841a-9e89bae2a534', '8bc7e00a-f512-4294-be8e-452c7dc15c5c', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 16:16:30', '2023-07-14 16:16:30', NULL),
('05104b7a-f77d-47b7-b336-bf6dedc1aa84', 'dc46e13b-d0c2-4acc-96ce-985952c69f22', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:31:28', '2023-07-05 18:31:28', NULL),
('058d964e-edce-4e4d-870d-8ce802f8242c', '2df38f92-a24b-4421-bba5-3de51a3f6e23', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 16:16:44', '2023-07-14 16:16:44', NULL),
('066f78c8-3e8a-4db2-abf4-6bf74f54eaaf', '0f54dd44-a58f-4c7c-aed5-edaea3f9e045', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 17:58:09', '2023-07-05 17:58:09', NULL),
('0a6e8770-ab22-46a9-bb0b-85a301b24c79', '64773585-ee35-4ef7-8cf4-042e00586515', '57c808a2-97f0-45d9-86e1-945d439680b4', '2023-07-06 11:47:59', '2023-07-06 11:47:59', NULL),
('0b3a1280-4a88-4374-b3f6-4aaab6f680e7', '363a5def-adab-4c2a-bf1c-eae46fa65aed', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-04 09:31:26', '2023-07-04 09:31:26', NULL),
('106c8bae-c460-49c2-aedb-2f8028697ce6', 'bdf7ed6d-a310-4ada-a66b-003a2df730c1', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 10:31:46', '2023-07-05 10:31:46', NULL),
('134cf75f-1e14-4f6b-b9bc-950e556da253', 'dd433473-19fd-4f2d-b271-315c726da358', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:35:49', '2023-07-05 10:35:49', NULL),
('134fae7c-59cd-4a36-8cff-9cf08f51480d', '4e66fdd1-05c0-4741-9215-6f531cd2d412', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:43:41', '2023-07-04 08:43:41', NULL),
('13cd3358-80d3-4d0d-9bfa-9a8b1c967022', '027f35e7-7f5f-414c-8543-e8b7e5de5846', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:44:31', '2023-07-04 08:44:31', NULL),
('14bd67ea-e9aa-443f-a6ac-0c5d6e7b802a', 'e96c5407-a14b-4a47-9812-78d0aac537e8', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 16:23:06', '2023-07-05 16:23:06', NULL),
('176e239f-9cb3-436e-9b76-a0fbe8a74bf6', 'a4025765-2906-4307-87b7-95afd053e9c9', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 15:19:53', '2023-07-14 15:19:53', NULL),
('1793717e-e2b7-491f-8f8f-d586e3065317', '0471c827-0e55-470d-a9e2-a17aa71af8c6', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 16:16:04', '2023-07-14 16:16:04', NULL),
('188bb125-a19d-4ce9-91ef-378e8060ce78', 'b7c609ea-f136-489c-b249-85e007a47620', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-06 11:50:54', '2023-07-06 11:50:54', NULL),
('1a84af5e-a070-4748-b1f7-540a687c0f44', 'f6996f60-91c3-4014-be8b-d0e45a3b3c9d', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:36:24', '2023-07-05 10:36:24', NULL),
('1c123a34-6d60-4627-829e-6f397afe7de7', '56aa2235-babe-4f6b-9ecd-fc589370cc0c', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:52:42', '2023-07-05 17:52:42', NULL),
('1c5bc435-a501-47be-bbfe-476355765c90', '8b2df53f-10a4-4d0a-85ed-eb2a72c986e4', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:03:39', '2023-07-05 18:03:39', NULL),
('1cd742ea-836e-4798-b987-f31ec77803aa', '333ec4a8-e2f1-40e2-8497-8b6290ba8cfe', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:42:27', '2023-07-04 08:42:27', NULL),
('1f3b4036-4410-43cf-8cc6-fcf65d61c833', 'fd46a93e-3200-4338-86dd-44bd07da12a3', '57c808a2-97f0-45d9-86e1-945d439680b4', '2023-07-04 09:36:13', '2023-07-04 09:36:13', NULL),
('200e1ed4-12e1-4ac0-bcbb-3e819cda2c17', '25eaf903-010b-41d6-8527-64be5eede2d7', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-04 09:57:46', '2023-07-04 09:57:46', NULL),
('211baa2f-9e56-4767-b0d1-1cb53557c4a9', '0b33ade7-9c0c-48ea-9b68-3b4587d96e75', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-04 08:41:41', '2023-07-04 08:41:41', NULL),
('2179bef4-3849-401e-a7fa-ddb056e776bf', '210f04fb-bb4f-4627-9fab-2116ee57e5b3', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-04 09:34:02', '2023-07-04 09:34:02', NULL),
('21c0051b-a22e-4237-8be5-00e251d25f61', 'b713d7df-8a54-4375-974a-75f04f2bd99e', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-13 16:57:44', '2023-07-13 16:57:44', NULL),
('22476864-658e-4f4c-b13f-80ccdbd5b0c6', '6657dd11-3a99-41e0-97fa-9a27ce60243d', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:47:33', '2023-07-05 17:47:33', NULL),
('23b9ad56-1c9f-4c4e-b56b-34e9f92edbd5', 'd2acf8d7-55bf-418d-b0be-cb5a815343c7', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:40:31', '2023-07-05 17:40:31', NULL),
('24f1d059-e7ed-46ce-a8d5-54f6f8897519', '0ca90bfc-0ec6-11ee-be56-0242ac120002', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 02:35:06', '2023-07-04 02:35:06', NULL),
('2abea28e-33bf-404e-bf49-ba3dd41de2b8', 'b6b1b774-a6b0-4b60-9b75-bba403497a2a', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:41:33', '2023-07-05 17:41:33', NULL),
('2bbe3d35-7bc3-4f55-9505-6d0e7bb15fcd', 'eaa357de-25f9-41b0-81ba-65129516aaab', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 11:47:33', '2023-07-05 11:47:33', NULL),
('2c4e07f6-a0d1-4736-94cd-e75a38c8e6cc', '70fd97db-a240-4689-bf09-c9e4930735f9', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:53:19', '2023-07-05 17:53:19', NULL),
('2fa19add-0600-4e22-aa77-de5f93c3c917', '2b62e04b-7c32-4b3a-a946-938e08170c2d', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:34:50', '2023-07-05 18:34:50', NULL),
('2fb0deb9-8a9d-4591-82c7-608733f2f602', '201fde81-729c-4179-90dc-b1b945757010', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-06 11:26:42', '2023-07-06 11:26:42', NULL),
('326be8c1-9965-4746-b4a6-b013f3587eee', '570fda55-20d2-4ee7-94c2-fed9b68f9c1f', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:38:16', '2023-07-05 17:38:16', NULL),
('3965017a-304e-4f1a-805a-4d7d7a2fffa6', 'e96c5407-a14b-4a47-9812-78d0aac537e8', '57c808a2-97f0-45d9-86e1-945d439680b4', '2023-07-05 16:24:00', '2023-07-05 16:24:00', NULL),
('39ca33e6-95bd-4a0d-8665-38d079126c2b', '623133f2-9559-4021-ac93-3121f9d079eb', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 16:16:16', '2023-07-14 16:16:16', NULL),
('3b77f574-2cb4-4e7e-9544-f4bee8f7adb0', '8239b4e5-1047-4255-804d-0a818f44dde0', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-06 11:49:50', '2023-07-06 11:49:50', NULL),
('3c71805a-2c5d-40ff-a11c-29c51b50d000', 'c76a2668-0764-40f4-ba23-78e18e5cedd2', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:28:58', '2023-07-05 18:28:58', NULL),
('3c8f1711-6dbc-4374-825c-ae1220fc851a', '7070f0ad-7b60-4174-8e52-a5d759f66b45', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 09:55:53', '2023-07-04 09:55:53', NULL),
('3cfce604-4f46-46b2-856b-0497a00c80b5', 'ae87d49b-8a67-4b4b-a88c-3ee9256be430', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:12:24', '2023-07-05 18:12:24', NULL),
('3ec07df2-3db2-4145-b0ce-f271f2991c69', '885c4d14-1377-440d-95fe-bc1666e538cd', '57c808a2-97f0-45d9-86e1-945d439680b4', '2023-07-05 17:56:12', '2023-07-05 17:56:12', NULL),
('3ff4538b-e755-453a-9c1a-af94b8bb9391', '4f5eea9c-0126-455b-afc9-f33c56629ccc', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '2023-07-05 16:42:31', '2023-07-05 16:42:31', NULL),
('418657f3-7c3f-4f65-ac50-52e1dabab6cb', '8d9cf967-46c0-4760-b943-2e48561a1f9a', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:02:46', '2023-07-05 18:02:46', NULL),
('41a41763-7e3b-4d65-a9b8-409fb6b9f3d4', '04204b3c-7b50-4515-ad36-2c09bab5fd1f', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 17:57:53', '2023-07-05 17:57:53', NULL),
('42f4ba3c-e6af-431e-8b61-7d38b4f1f62f', 'b0a7236e-6de7-4b68-8a6c-ef4fe0cd246b', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:33:13', '2023-07-05 18:33:13', NULL),
('4680f58e-f370-4f94-bdd2-2427b0e49780', '76acb468-a1e0-4cd3-9b98-619c53091941', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:53:37', '2023-07-05 17:53:37', NULL),
('46905c97-3e8e-472d-ae8b-4f7c2a09efe0', '4eebe7e9-cad4-47cb-b800-1272b5139496', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 15:19:31', '2023-07-14 15:19:31', NULL),
('48067184-a655-41aa-a6f8-0936739ceb5b', '243d9706-85d7-469b-89b5-a2f160129a4c', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 17:58:38', '2023-07-05 17:58:38', NULL),
('4843c1f0-8fe7-4936-a69b-0eb10efcc767', '96b40937-0174-4773-81ea-ec175d30d6ef', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 16:15:43', '2023-07-14 16:15:43', NULL),
('484fda23-a2d8-424c-b14e-677a51f0e871', 'f9b7e51b-4e6b-4012-bb0a-2e31314934b9', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:42:54', '2023-07-05 18:42:54', NULL),
('4876b320-90ff-448f-96cc-d3145d9d852d', '657ba856-f6a5-4ef3-9688-866aed747f13', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 10:02:24', '2023-07-05 10:02:24', NULL),
('488a73c9-8e31-4758-bd3e-ba1ece12f102', 'af08d621-c2c8-4de4-9e13-5c8df0632a87', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:37:20', '2023-07-05 10:37:20', NULL),
('49452b15-2015-4697-8047-33fcbc7e5069', 'e372a50a-cae6-4352-ba1a-fbefcff7e9a1', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:22:59', '2023-07-05 10:22:59', NULL),
('4ac1247d-9a46-465f-ab79-1dfee6803065', '2c927180-23f5-459e-9ca7-870c0fc4ff2d', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:42:36', '2023-07-04 08:42:36', NULL),
('4c68999e-85cd-4057-96ce-2eb85db28a42', '77077dc4-de87-4e57-9776-0298ff294957', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-06 11:49:06', '2023-07-06 11:49:06', NULL),
('4cb063ad-8eca-4c66-8fe7-72449029621a', 'baeadcfa-30a8-4db4-8f2d-de5d16ebecc7', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:42:03', '2023-07-04 08:42:03', NULL),
('4d28eaa0-d20a-490a-9742-1d2972c34df3', '3a513509-f572-4f7e-b250-0bbd0ddfedd0', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:46:31', '2023-07-05 17:46:31', NULL),
('4f374e4e-fd96-4bf4-8133-3cdc009fd1a2', '6183f5b0-c135-4289-8d5e-0a9d0395b4b1', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:27:12', '2023-07-05 18:27:12', NULL),
('5237b7ef-98f1-4e65-94df-1affe9e6e2e6', 'e7380298-1830-41fb-8b3a-2ba88e4044bf', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-06 11:52:39', '2023-07-06 11:52:39', NULL),
('53cd9b19-7bf0-49a8-9683-a4347fa2ad01', '344c7156-015a-4e67-9b9d-e3641766ad62', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:37:52', '2023-07-05 17:37:52', NULL),
('543baa0c-7975-4a52-bbf5-4708c9491893', '9cfe69fb-d9af-450c-9c95-8b9ccec68006', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 09:24:19', '2023-07-04 09:24:19', NULL),
('54fb3770-d30f-4f98-8143-5493d20979be', '2651e65d-9c9a-417b-9b4d-d1193ad0efc1', 'c16f9ef7-3deb-46ac-a0bd-cbca87002b03', '2023-07-06 11:56:53', '2023-07-06 11:56:53', NULL),
('5870d3ba-1104-40a9-982d-55599aa3f256', '5a96ed4e-7f4d-4673-b262-2d15a68d5726', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:37:01', '2023-07-05 10:37:01', NULL),
('59c78f1b-a6c3-4f01-ab75-fbe60a47affb', '1e16b1e8-aff9-47a9-af02-a61a436d08a8', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-10 17:38:14', '2023-07-10 17:38:14', NULL),
('5ce9ce8c-8108-4a63-bbb6-141e1d231960', 'd7fb944c-fa3c-467d-bb06-69b11e24a659', '57c808a2-97f0-45d9-86e1-945d439680b4', '2023-07-05 17:57:16', '2023-07-05 17:57:16', NULL),
('5e53da9b-b462-4e83-9adc-3c3bded781b5', '48d8401c-730a-47c7-88f4-53d3163198d1', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:47:09', '2023-07-05 17:47:09', NULL),
('60708c95-88ce-41dd-9d94-0d2c7de989c9', '9681bfa5-816f-4ced-ad06-4f62f5b56a3f', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-06 11:52:18', '2023-07-06 11:52:18', NULL),
('613a1f55-5bd1-4c9b-8e3a-460e159d2658', '518ba82b-94f4-4168-99b9-2ccbb9f23a16', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:26:41', '2023-07-05 18:26:41', NULL),
('61e76942-b65e-4c9d-a42d-c031c08b7101', '91b9362d-e5e1-4524-ba3b-07bb782b9300', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:44:49', '2023-07-04 08:44:49', NULL),
('635a5cdb-3eaf-4cf2-a218-8379ccd0dd4a', 'e7cd03e8-cd21-4548-a89e-85be0f115d51', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 15:18:00', '2023-07-14 15:18:00', NULL),
('638376dd-cb06-4b5a-8ec7-ee5aa6f8c677', 'b5143990-fb6f-4eed-86bc-b63e4f849088', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:03:31', '2023-07-05 17:03:31', NULL),
('647183b1-2083-4e19-8156-337a8533972d', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 17:04:32', '2023-07-05 17:04:32', NULL),
('659c853d-9417-4bbd-8925-884cd80685e6', '0c1a6c18-09f7-415a-bdaf-fdb370fbc472', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-04 09:06:11', '2023-07-04 09:06:11', NULL),
('66f7f2c7-498e-472d-a2eb-658361875ed9', '9fa8205f-a378-4bd3-8b62-5610ec662338', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:05:00', '2023-07-05 18:05:00', NULL),
('6ca562c8-d4a8-4374-9204-50c66a41d467', '60cebcdb-ab57-4259-b708-f21cb719b0fa', 'c16f9ef7-3deb-46ac-a0bd-cbca87002b03', '2023-07-05 18:17:05', '2023-07-05 18:17:05', NULL),
('70c52a3a-54d3-4521-affd-1b68cd9fc1dc', '8cbf240e-9498-40cf-86a3-e3645f25aa95', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-06 11:28:05', '2023-07-06 11:28:05', NULL),
('716fdd25-dc4f-4cef-a367-f1729b09ec40', '77d9dba0-9d3c-4a4e-bb26-89b5a6d90439', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-07 17:42:18', '2023-07-07 17:42:18', NULL),
('72efc51a-0aa6-488e-a0ef-4e87412cc3df', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:04:23', '2023-07-05 17:04:23', NULL),
('73a01a97-fa85-4309-b119-a0c2963f4bf9', '3a9de07d-3d4e-48d8-893a-aad9d75ecdfc', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 16:54:07', '2023-07-05 16:54:07', NULL),
('74685bf1-2e41-4c6d-b990-a0b394ef3bb3', '73924afa-ab6e-4220-9937-629bedd6b466', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:03:06', '2023-07-05 18:03:06', NULL),
('77275cdf-d108-476a-b31e-7e3c55889140', '79b797b4-3426-4e54-b39b-f25154046925', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:42:18', '2023-07-04 08:42:18', NULL),
('776fc002-276f-4fb6-acd1-7409d8dc6445', '75ffe702-9e09-4545-99df-5b76b176aaee', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:35:49', '2023-07-05 18:35:49', NULL),
('7810dfa5-5200-4c96-aad8-ab8ae2025ae5', 'ca988e16-18ab-499b-ab10-53577bca6105', '57c808a2-97f0-45d9-86e1-945d439680b4', '2023-07-06 10:12:36', '2023-07-06 10:12:36', NULL),
('7a4d3e28-a064-420a-bc91-f2aa14dd47f7', '393c3bb1-5d52-4c0f-a645-56dc4663ad63', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:00:20', '2023-07-05 18:00:20', NULL),
('7b4f622a-5bc6-4e6a-83db-7933e2fd382d', 'ef65ac8d-ba8e-47fa-af6e-e73eca13ea88', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 10:07:44', '2023-07-05 10:07:44', NULL),
('82b5af42-f953-442f-9957-ff65f42e9697', '3279888c-f8d0-4d6c-a41b-df762fa84953', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 17:59:46', '2023-07-05 17:59:46', NULL),
('82da6a2e-3885-4790-8f8a-a809a645e634', '7e306dcc-f720-49af-b42d-09e8d8d53b74', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-06 10:12:06', '2023-07-06 10:12:06', NULL),
('84cd22b8-7793-48f6-a2a8-870de2bf9b9e', 'cc978ba2-e246-4da0-8111-68ffbe58c0ca', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:49:52', '2023-07-05 17:49:52', NULL),
('85e9cb45-ff6b-4122-b06e-58a258c90ebf', '9fb15152-22ab-40d5-9630-8c1dd1ff0c92', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:21:23', '2023-07-05 10:21:23', NULL),
('86547fc8-7dc6-4876-ab99-6e2ab242c422', '8e6d9ebb-86c2-4ef8-8c9a-77f4e1e1d85b', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 10:03:17', '2023-07-05 10:03:17', NULL),
('870e1cf1-39c8-46c4-85c5-cec88f7dc0f5', 'df0739ae-a9c8-4522-aa18-8e199b2a0b0e', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 10:31:08', '2023-07-05 10:31:08', NULL),
('875154d2-67d2-4fff-8919-beffb6182edd', '16804df8-f4d0-44b7-ab02-43ce4a68761f', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-07 11:14:20', '2023-07-07 11:14:20', NULL),
('875f34d6-01c2-4ab4-81cf-adb27b6a5e91', '2921d90f-dced-4056-8904-10a4812b4716', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-04 09:36:41', '2023-07-04 09:36:41', NULL),
('88c96a0a-a137-43d8-b29f-e1062718381a', '45047fbe-d7a7-4d5e-8a99-38b335721f85', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:42:49', '2023-07-04 08:42:49', NULL),
('899954d0-539c-4858-bdb7-aebf3e3afed8', '86ce4f37-4897-499d-a72a-48ba313a5bba', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-06 10:13:48', '2023-07-06 10:13:48', NULL),
('8a41eeb5-99ad-4782-9c6e-d18815a24919', '72ca9bd4-0ae5-4b8f-ad35-528bc5ccefb9', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '2023-07-05 16:47:33', '2023-07-05 16:47:33', NULL),
('8b1c37b8-1292-4b44-b113-6f48dbb9f899', '03ed5f0f-f0b4-4059-b3ee-63cb5516588d', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:37:48', '2023-07-05 18:37:48', NULL),
('8e915708-f025-4646-a794-c635b2f7e7c4', '956ed2ec-ae6b-449b-825c-179592116c6b', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-04 09:29:38', '2023-07-04 09:29:38', NULL),
('953087c9-70e2-435b-88d3-0058a8e7a546', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', '990b32bc-7178-4c79-a399-030fa0fa330c', '2023-07-05 17:05:25', '2023-07-05 17:05:25', NULL),
('95cd347c-2e1b-44bd-ac76-07e79fe50de3', 'a9ce0470-3028-4b12-9cd2-cf19107a164e', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:54:07', '2023-07-05 17:54:07', NULL),
('9611a105-4ecb-42f2-8d73-e1917723c4e8', '1080e025-2146-4a91-96c4-3c869565ee1c', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:29:01', '2023-07-05 10:29:01', NULL),
('983f515b-88a2-46e3-bb19-995d17c1d36b', '2a7d82d7-4dd1-45b2-b454-84d1eb4decf8', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 17:59:29', '2023-07-05 17:59:29', NULL),
('99d98f4e-a591-4f1c-a6bb-10a9711f339f', '0a4aa375-a467-49d7-8889-6617a3cabc35', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '2023-07-05 16:45:30', '2023-07-05 16:45:30', NULL),
('9a091f58-0ada-43e2-aff8-55c49064330a', 'bb059569-1af8-46fe-9b21-3fcbe8e7ae18', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 09:31:04', '2023-07-04 09:31:04', NULL),
('9dc8c223-8992-4de7-bd85-dccce09a9b3d', 'faa63a46-30a8-4182-8a56-bdae528b3e0f', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-06 11:50:15', '2023-07-06 11:50:15', NULL),
('9e8cb073-1327-42ee-a1d6-e4e4962e4fbe', '77111985-0d16-4bc5-95d3-ebe58fb75303', 'c16f9ef7-3deb-46ac-a0bd-cbca87002b03', '2023-07-05 18:17:24', '2023-07-05 18:17:24', NULL),
('a02f86a7-e912-4c4e-8fc3-a82623debde1', 'cbf0a77e-850d-47ea-9829-e3b27cf23df7', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 11:40:17', '2023-07-14 11:40:17', NULL),
('a2ffe67f-8254-4e28-b387-2edada04cff2', '89dc0a40-717c-431f-a596-ab05ccb15300', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 15:17:32', '2023-07-14 15:17:32', NULL),
('a43e67a9-9824-4fcf-b988-4536b383bfdf', 'fd750b2e-54a0-4cd7-a0e9-092cafd6aa16', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:45:32', '2023-07-04 08:45:32', NULL),
('a52c5db8-6126-45d2-a195-2dd2a71487a1', '2834da6c-9d6c-47bc-ba8d-6d56945c3063', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:44:20', '2023-07-04 08:44:20', NULL),
('a83e850d-7e52-4014-97b4-2b163e388d5e', '43b1ef72-b158-49ec-8827-66917c8964ea', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-04 09:34:24', '2023-07-04 09:34:24', NULL),
('ac7a5bbe-1748-44a4-8ea6-1c9c5833d1d9', 'db2302d3-0fa4-4900-b04b-d20f62f4cf91', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '2023-07-05 16:45:54', '2023-07-05 16:45:54', NULL),
('b181a0b9-c05c-49e1-9a36-ba32f576c64f', 'bf2a9ee6-3612-4315-b6ab-c73b754a78a0', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:39:03', '2023-07-05 17:39:03', NULL),
('b18b2a06-e7a6-46c9-958f-2579f48f90ab', '8d08384d-6135-45be-901e-54436142f059', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:10:48', '2023-07-05 18:10:48', NULL),
('b33ef91b-7b46-4648-9868-5ac706c2cbcb', 'bc020e49-8073-4d09-9643-fb3af46bf07c', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:28:27', '2023-07-05 18:28:27', NULL),
('b3faa886-93db-4688-ab6e-ba34cd1b790c', 'f9b7e51b-4e6b-4012-bb0a-2e31314934b9', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:32:05', '2023-07-05 18:32:05', NULL),
('b4ff9ba0-263b-4514-912f-ea0f603027aa', 'f1fa873d-3fc6-4bb1-9d81-6d95725c5204', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:43:57', '2023-07-04 08:43:57', NULL),
('b6b3af8b-343d-458e-ba03-1ba192a7a786', 'f5909489-8f73-45f2-a5b9-731faf497011', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:47:53', '2023-07-05 17:47:53', NULL),
('b74351a4-a947-4aba-bdd5-7a1e2988cd2d', '687a431d-8e01-45f0-a0ce-4e72a0fc7420', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:02:23', '2023-07-05 18:02:23', NULL),
('bb9fd259-6b75-4145-8121-d0e68a657432', '1ac47240-1142-425c-a86d-86dc824e46c8', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:45:57', '2023-07-05 17:45:57', NULL),
('bf26f6e7-c67d-4119-915c-ea6a5a777a0c', '0eaeda35-47b0-4ad9-a7cb-5e439f78190e', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:19:09', '2023-07-05 18:19:09', NULL),
('bf85361a-5b5b-41a2-9e66-0294fbb8ddb2', 'b9468522-cd1e-46f9-9c03-f71a81f53b16', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:50:13', '2023-07-05 17:50:13', NULL),
('c4607275-87cd-49b6-9241-39e979f1cc2c', '974f2c1a-1f30-4757-908b-eb165c32db0b', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-04 09:37:25', '2023-07-04 09:37:25', NULL),
('c506d1a5-3774-473f-bfac-d0e2f5633988', '26430d0f-83d3-4eec-a309-f5676f5000e0', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-14 16:15:55', '2023-07-14 16:15:55', NULL),
('c56d5785-eaee-4f3d-be40-31da27ebf06a', 'edea7070-8236-4726-8564-48f0a33f8a97', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:32:31', '2023-07-05 18:32:31', NULL),
('c5bd6181-bd88-4206-858e-68f37691fa28', 'a150455a-7664-4019-aba3-968d378e6405', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 09:33:06', '2023-07-04 09:33:06', NULL),
('c790acd4-d1c8-4c15-97e2-04c3bb44e975', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '2023-07-05 17:05:04', '2023-07-05 17:05:04', NULL),
('c9632e12-8559-40f5-b5c5-35205e859216', 'd14822fd-23c3-42b3-9553-668ab0f6a4de', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:23:56', '2023-07-05 10:27:33', NULL),
('c9d2df8a-ff35-4bdc-894a-f6a18075d999', '60a220a4-f647-4523-b1be-610ea7badc1e', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-10 16:23:55', '2023-07-10 16:23:55', NULL),
('cae7aa71-7f23-4c05-a282-cf04f667b529', '77e548c3-6c39-4a3e-a25f-60010fa39535', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:37:38', '2023-07-05 10:37:38', NULL),
('caeb8624-d870-4eab-81c1-d2821aaa0727', '0ff310e0-85e3-4438-b389-aadc11fe6c30', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:45:44', '2023-07-05 17:45:44', NULL),
('cb8041fa-f506-40be-8341-ce310368d399', 'e96c5407-a14b-4a47-9812-78d0aac537e8', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 16:24:15', '2023-07-05 16:24:15', NULL),
('cc69e1d2-a84a-4f76-8479-c95789f1ddcb', 'c2abf333-cf1f-45dd-92e8-2a97812d0cb1', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:39:44', '2023-07-05 17:39:44', NULL),
('ce156804-b096-439d-8aa6-b954fa27b8df', 'e0f6aa59-92ad-417f-b034-1f8f94481626', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:41:14', '2023-07-05 18:41:14', NULL),
('d03b15a1-a108-469a-9e5f-d8826f84399c', '94716c84-a1ea-489e-a2f8-c20c56f5dc1e', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:45:20', '2023-07-05 17:45:20', NULL),
('d042a9a3-4d47-471a-aa2c-7656859dd12f', 'cf9b3bfd-9171-4539-bc17-7a9decba2c38', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-10 16:23:14', '2023-07-10 16:23:14', NULL),
('d20df8bf-f953-4166-b4d7-7f5ce1f6cad6', '747c948e-70b0-477c-a209-8a0115e93a4d', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:27:51', '2023-07-05 18:27:51', NULL),
('d2462e4f-2fc0-44c2-89ae-479094386e79', '3682dae7-acd7-4330-a11f-77442f13bd7a', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:29:45', '2023-07-05 10:29:45', NULL),
('d2ffff96-5968-4199-b7bf-d1f410df5eb1', '1a29eaf0-6ba5-4b1c-9de8-73fbe07ac700', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 10:33:07', '2023-07-05 10:33:07', NULL),
('d392571d-dd91-4886-990c-b367e32a7156', 'abcdd9af-d2a8-4817-ab68-5432d5426886', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:22:11', '2023-07-05 10:22:11', NULL),
('d8a8a625-e9af-4e2c-a84a-8ae4626be9f7', 'e96c5407-a14b-4a47-9812-78d0aac537e8', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 16:23:19', '2023-07-05 16:23:19', NULL),
('dba14791-b848-4822-9630-0d44dbf7bc2f', '4bb775e3-9e72-49ee-9435-2ddf1e669698', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 10:08:01', '2023-07-05 10:08:01', NULL),
('de7bdbf3-7ca1-443b-960e-fcf059592474', '7b78b5ba-60e6-4010-972a-18fdab8c366c', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-04 08:45:15', '2023-07-04 08:45:15', NULL),
('dfe56b4a-ed27-4bea-8796-927e764ea2f0', '8c3d11d2-c97b-4721-ad56-321273c20a20', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:04:24', '2023-07-05 18:04:24', NULL),
('e119525e-7bdb-4c27-b959-344200f4506b', '630dedc1-ca05-41cd-ad43-ba31455be3d4', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:01:26', '2023-07-05 18:01:26', NULL),
('e5893636-ca67-4043-87c9-6c34b4e8b8e0', '90f9f4d9-6beb-4592-9a3b-2d0892b6933c', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 10:03:30', '2023-07-05 10:03:30', NULL),
('e60709f5-ab03-45e6-a612-1cbdca4df338', '47ed2a9e-9b7b-4921-a03b-ac1a32432cb1', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:26:00', '2023-07-05 18:26:00', NULL),
('e917311c-2afe-4a3f-9650-c816ab1526ba', 'a8898d04-f68c-48ac-9860-f9bb12a03453', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:05:22', '2023-07-05 18:05:22', NULL),
('e93dfa26-24f8-4144-b481-d72d11b7ced1', '5e5b02f5-0299-41b3-874b-2d3dbde87458', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 17:36:17', '2023-07-05 17:36:17', NULL),
('eb27c97a-2f89-4c96-8f37-74d5f9b86b54', '2b5d2f96-736f-478f-bd9d-03739ef0dd53', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-06 11:26:58', '2023-07-06 11:26:58', NULL),
('eb2eb9a7-1c70-44da-a3e3-a9dce6c9fb62', '43b1ef72-b158-49ec-8827-66917c8964ea', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 18:25:33', '2023-07-05 18:25:33', NULL),
('ebac6adb-f45d-4733-89ea-743be9249b81', '16271707-80af-458b-8326-bfe1545b3635', 'd6eb4b9b-d6eb-40d2-a979-1f7663feefd7', '2023-07-15 09:48:17', '2023-07-15 09:48:17', NULL),
('ed3b4b02-bee6-4e31-a0c1-27aa50bf95ba', 'a3e7ce1e-cdcf-44d6-bb9e-24303798fd1f', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '2023-07-05 16:46:07', '2023-07-05 16:46:07', NULL),
('edda8932-6db0-4060-8199-95d5cbca88f9', 'aa7921df-8874-4b59-9279-1d6f4ea4b6b7', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 18:12:09', '2023-07-05 18:12:09', NULL),
('ee019ab4-ad2f-4183-af32-bc0bcc692b81', 'cb109f52-53e5-4633-b4d4-07477cd59c29', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-06 10:13:16', '2023-07-06 10:13:16', NULL),
('ef2ca547-1b71-4749-b08d-aa17eee09a55', 'c92d4c39-db54-46bf-b4d1-d51413b81532', '7279d30e-0bdf-45bd-b64c-80937b4aa3fc', '2023-07-05 16:47:01', '2023-07-05 16:47:01', NULL),
('eff080ac-f07b-4201-8d05-44970bb49745', '5bf55309-ccfc-4fb3-9e8e-fef8ef6bbc0c', '21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', '2023-07-05 10:36:48', '2023-07-05 10:36:48', NULL),
('f06fe3fb-0e80-48f4-852d-5e0be8fc20f4', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', '57c808a2-97f0-45d9-86e1-945d439680b4', '2023-07-05 17:04:48', '2023-07-05 17:04:48', NULL),
('f3dd9773-aa53-40f4-9ff0-abeb7923e64d', 'b87d9ee8-3169-4e91-b715-86e89eeee6fe', '864bdc4e-7c50-4a89-a63d-6477aca1a884', '2023-07-05 17:05:15', '2023-07-05 17:05:15', NULL),
('f515adc9-b5d2-458d-8706-0668fb5084f6', '26d915dc-7d68-4139-8c6b-ab74d11d5b70', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 16:59:42', '2023-07-05 16:59:42', NULL),
('f6774c81-a34c-495e-8ff8-14572e24c272', 'b5a865d7-1216-4a26-8b13-70a5bb95e41e', 'dc413901-9c7c-47e3-bed4-f5e12929a292', '2023-07-05 10:01:54', '2023-07-05 10:01:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `programa_academicos`
--

CREATE TABLE `programa_academicos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programa_academicos`
--

INSERT INTO `programa_academicos` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('21cb947d-1a63-4dea-bc97-1ee92d4bdc3a', 'INGLÉS KIDS', '2023-06-26 19:10:21', '2023-06-26 19:10:21', NULL),
('57c808a2-97f0-45d9-86e1-945d439680b4', 'INGLÉS TPR PRE KIDS', '2023-06-26 19:10:06', '2023-06-26 19:13:09', NULL),
('7279d30e-0bdf-45bd-b64c-80937b4aa3fc', 'QUECHUA', '2023-06-26 19:11:31', '2023-06-26 19:11:31', NULL),
('864bdc4e-7c50-4a89-a63d-6477aca1a884', 'INGLÉS PRE KIDS', '2023-06-26 19:13:33', '2023-06-26 19:26:29', NULL),
('990b32bc-7178-4c79-a399-030fa0fa330c', 'FRÁNCES', '2023-06-27 17:14:48', '2023-06-27 17:14:48', NULL),
('c16f9ef7-3deb-46ac-a0bd-cbca87002b03', 'INGLES TPR KIDS', '2023-07-05 18:15:46', '2023-07-05 18:15:46', NULL),
('d6eb4b9b-d6eb-40d2-a979-1f7663feefd7', 'GUÍA OFICIAL DE MONTAÑA', '2023-06-26 19:04:11', '2023-06-26 19:04:11', NULL),
('dc413901-9c7c-47e3-bed4-f5e12929a292', 'INGLÉS', '2023-06-14 19:57:10', '2023-06-19 19:41:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recibos`
--

CREATE TABLE `recibos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_serie` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tipo` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cuenta` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_estudiante` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fue_anulado` tinyint(1) NOT NULL DEFAULT '0',
  `obervaciones` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recibos`
--

INSERT INTO `recibos` (`id`, `id_serie`, `id_tipo`, `id_cuenta`, `id_estudiante`, `numero`, `nombre`, `fue_anulado`, `obervaciones`, `created_at`, `updated_at`, `deleted_at`) VALUES
('010a5e77-2dcd-4ac8-87a8-13a55b168a75', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '004c662a-e9f3-4f55-bcab-a48d82511a72', 14875, 'ROSALES MILLA AVRIL ISABELA', 1, NULL, '2023-07-07 17:48:01', '2023-07-07 17:48:25', NULL),
('02223148-92f6-4c85-82b4-af4fc91b859b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4c735c47-81e6-47cd-affb-f990abe79ad3', 4, 'APODERADO', 0, NULL, '2023-06-21 18:58:29', '2023-06-21 18:58:29', NULL),
('024d04fb-a1f4-41fd-b39f-bec1a889f6a6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b9f05ded-f9d8-4222-b4da-884e0996939e', 14997, 'CASTILLEJO MEZA LADY ELENA', 0, NULL, '2023-07-11 19:23:11', '2023-07-11 19:23:11', NULL),
('030e1680-a841-47f9-b561-5c8437f418aa', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7194e4fe-0f3e-4580-be9d-a8135e813937', 1, 'BAÑEZ GODOY DANIEL EVILSON - 61480353', 0, NULL, '2023-07-04 00:18:14', '2023-07-04 00:18:14', NULL),
('0387552e-90c8-40f5-ae24-b31569df48f7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7ff0e327-b9e7-483a-8ac5-0d536282037d', 14815, 'MORALES CALDUA SALOME CATTY - 60424993', 0, NULL, '2023-07-06 09:02:56', '2023-07-06 09:02:56', NULL),
('04a4c751-5e6f-4508-8991-3894d1e8b3de', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '753242bc-d4ce-4239-8829-b6550fb09b75', 6, 'DAMIAN GAYTAN LINDSAY SHAROL', 1, NULL, '2023-07-10 18:01:40', '2023-07-10 18:02:13', NULL),
('04c3f098-99ba-4794-835a-a815fcfa65bd', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', 'd99863c1-bb0b-47c9-87fd-e9a1ae9ed964', 14828, 'DEPAZ SANDON GIANPIER RAUL ALEXANDER', 0, NULL, '2023-07-06 16:42:04', '2023-07-06 16:42:04', NULL),
('057a069c-18d0-4d8b-9f18-30aae9a0fa54', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '004c662a-e9f3-4f55-bcab-a48d82511a72', 14876, 'ROSALES MILLA AVRIL ISABELA', 0, NULL, '2023-07-07 17:49:02', '2023-07-07 17:49:02', NULL),
('05d620ca-df16-40ae-aa0e-28595405be6a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7335d319-7fb6-42eb-8e4e-523c0005b99b', 14992, 'MORILLO MACHADO YELY DELMI', 0, NULL, '2023-07-11 18:50:05', '2023-07-11 18:50:05', NULL),
('0629c91a-6fa8-4359-b8ed-3795746c7b90', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '50fca020-2f72-457e-b05f-b55715d9db71', 14999, 'HUERTA CHAVEZ CLYVER ROSSE', 0, NULL, '2023-07-12 09:43:36', '2023-07-12 09:43:36', NULL),
('06c2e684-ff9e-49c6-8bc9-21131fd76971', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '56f44ca8-f4cc-49ed-a658-cccecbd27cb4', 15063, 'TREJO ALVA DAHANA MARITZA', 0, NULL, '2023-07-17 15:49:13', '2023-07-17 15:49:13', NULL),
('070cf5d2-46d3-4d06-aefa-b5bac95b2c89', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2f1c0333-0f41-46a7-a884-7f4f296ad03b', 14923, 'YAURI ORTIZ V ALERY NOELY', 0, NULL, '2023-07-10 17:42:11', '2023-07-10 17:42:11', NULL),
('075a9b25-8fa3-4fbf-8eff-090498a7f5d7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '442f7206-0389-4d9e-b2f2-3769708dffd2', 14981, 'SUCASACA ARANDA LIAN SATOSHI', 0, NULL, '2023-07-11 17:23:38', '2023-07-11 17:23:38', NULL),
('0760802e-f555-4eb4-99ce-45e2348adb02', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c55b96a4-b901-44ae-87a6-dd8935425ee6', 15000, 'CELMI GOMEZ MISKI PAOLA', 0, NULL, '2023-07-12 10:03:54', '2023-07-12 10:03:54', NULL),
('082fab18-ac72-4b13-8ac6-4276e4209030', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2a67519f-5be8-4d2c-9fee-fd65fd309166', 14968, 'CORONEL VILCA ROSMEL JHENSEN', 0, NULL, '2023-07-11 15:06:32', '2023-07-11 15:06:32', NULL),
('08f11545-bf26-4fd1-abc0-c0b84f04f1a7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '27a2e75e-5459-48d5-9c99-a8e4fa69b4ba', 15079, 'GUILLERMO FIGUEROA SHEYLA CAMILA', 0, NULL, '2023-07-18 09:16:09', '2023-07-18 09:16:09', NULL),
('09097111-9a04-4f6e-8e2d-d11000974ff2', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a30eac41-0d31-4f3b-82b2-889c4b088a0c', 15043, 'CELESTINO RAMIREZ FLOR YOSELINA', 0, NULL, '2023-07-14 15:58:11', '2023-07-14 15:58:11', NULL),
('095e21f3-1312-4fdb-8f4e-c3f5716d5f3c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '8f0ca397-c4a8-4c51-8de9-7eb04742a9fd', 2, 'PAUCAR ALVA ZALETH JESUS - 76022298', 0, NULL, '2023-06-19 23:50:43', '2023-06-19 23:50:43', NULL),
('0a1ab5c7-7505-4cb2-b872-13bd52685d4b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7723e25d-d148-4b64-a1f7-651961473453', 14879, 'LAZARO HORNA NAOMI JATZURY', 0, NULL, '2023-07-07 17:55:07', '2023-07-07 17:55:07', NULL),
('0c1e61a1-13cb-4017-a385-505260aa7ba3', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '19ad4f1c-f898-48e4-a704-6e04412288ef', 14927, 'CORDOVA ROMERO PIERO ANTON', 0, NULL, '2023-07-10 17:51:44', '2023-07-10 17:51:44', NULL),
('0e2e10cd-4c60-409a-a20a-130bdad989e2', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b4207b3b-2808-4261-8092-dbcdb77fb0a3', 15046, 'VARGAS MILLA ANIBAL ORLANDO', 0, NULL, '2023-07-14 18:31:14', '2023-07-14 18:31:14', NULL),
('0e571d21-cf07-4522-8236-ec25b7dd0aff', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '9e7eb9fd-1d3a-4230-9274-34bc7f419f3b', 14854, 'MALLQUI CORREA ALEJANDRA LEA', 0, NULL, '2023-07-07 10:36:16', '2023-07-07 10:36:16', NULL),
('0f8c94ec-d235-4306-b770-3d65c014a57f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f02fd40c-509f-4103-858d-ff1a561517f1', 14975, 'RURUSH POMA YAMILE NOEMI', 0, NULL, '2023-07-11 15:34:04', '2023-07-11 15:34:04', NULL),
('101167ed-c7f9-4d12-abf8-2b9c87ec0c18', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4c561f25-b9fd-4ab3-b471-0f2797c23d35', 14795, '-', 0, NULL, '2023-07-05 17:37:31', '2023-07-05 17:37:31', NULL),
('1020d100-d48d-43cd-ae02-9633c860d5aa', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '914a2b55-f841-4610-86b6-421876f1272f', 14818, 'ROJAS POLO RUTH DANIELA - 70118481', 0, NULL, '2023-07-06 10:06:32', '2023-07-06 10:06:32', NULL),
('10b05a2c-44b4-4376-88d9-60c0827563df', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a7fd63dd-fed0-4906-b9b3-84b0e2b56554', 14996, 'ALBORNOZ GONZALES EMER', 0, NULL, '2023-07-11 19:02:05', '2023-07-11 19:02:05', NULL),
('1169bd33-432a-4497-aafd-cd7b786cc55d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4396a263-15d7-413f-bc30-5dd0a753f506', 15057, 'SAMUEL ELIEL RIVERA MELGAREJO', 0, NULL, '2023-07-17 10:13:33', '2023-07-17 10:13:33', NULL),
('1359340c-894b-4df3-ad41-87272ba49e38', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '263f43fd-767a-4ca8-b35b-aef8590c2ab3', 14840, 'MEDINA SALVADOR RODRIGO YAIR', 0, NULL, '2023-07-06 18:56:29', '2023-07-06 18:56:29', NULL),
('1454cdb0-f9bf-4347-a27c-691aac1d015a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '241f37cf-1335-4d99-a5ca-2ab5f9485f07', 14890, 'POMA TORRES SERGIO RICARDO', 0, NULL, '2023-07-07 18:48:31', '2023-07-07 18:48:31', NULL),
('14b9b57f-67f1-4247-9099-42d20747f083', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'aa20eb59-fb0c-495b-9e2f-a6e2efeb4825', 14935, 'ZAPANA LLALLIHUAMAN BRIGITTE STEFANNY', 0, NULL, '2023-07-10 18:18:06', '2023-07-10 18:18:06', NULL),
('14fd854a-b06b-44f6-9a39-3aac5d9d06da', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '29d35164-e47f-3e51-9743-5182a0391764', 'e31273b3-729a-47ea-bd98-c5c33c44d952', 5, 'ANICETO RAMIREZ NICOLAS CRISTHOFER', 0, NULL, '2023-07-07 18:37:38', '2023-07-07 18:37:38', NULL),
('15470ce0-5059-4e91-b9e0-8c66eca24755', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'd06bc773-819f-487d-bec1-aae2731552a1', 14857, 'LAZARO BLAS RODRIGO VALENTINO', 0, NULL, '2023-07-07 11:30:14', '2023-07-07 11:30:14', NULL),
('16074408-1685-4773-aa72-831c675aaae4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '15ca67bb-79b0-4b63-ba5a-d0fd7feece74', 14895, 'RAMIREZ REYES FLAVIA MORGANA', 0, NULL, '2023-07-07 19:10:08', '2023-07-07 19:10:08', NULL),
('17b19982-1c9a-4e0c-b1be-49007e9aee35', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ab257625-232d-436d-b51e-45ff437d9ace', 14963, 'VALENZUELA RODRIGUEZ XIMENA DEL PILAR', 0, NULL, '2023-07-11 10:59:29', '2023-07-11 10:59:29', NULL),
('181f97ad-ae1b-41ed-9852-dfb110331448', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6845e7ab-3448-4785-9fc5-6262e5da4303', 15016, 'ROJO PEREZ GIANFRANCO ROMULO', 0, NULL, '2023-07-12 19:06:14', '2023-07-12 19:06:14', NULL),
('185216ab-53c4-4de7-a9dc-51fd6bd3c97a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '3ed5afa6-7bf1-4b40-ba93-d75e9549df4d', 14877, 'LAZARO HORNA JEREMY ADRIAN', 0, NULL, '2023-07-07 17:50:20', '2023-07-07 17:50:20', NULL),
('18b1a4fd-c3b0-499b-88fc-2105430424de', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1a505af7-8e77-4978-b2ab-1c62686e3154', 15005, 'Picon Hermenergildo Akim Alessandro', 0, NULL, '2023-07-12 17:24:38', '2023-07-12 17:24:38', NULL),
('19d33504-cc21-4951-8324-91ecd81bbf9c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '04a3ea6f-c910-47ab-9ec1-b06fd6036f38', 15068, 'RAMIREZ RODRIGUEZ MATEO ILLIMANI', 0, NULL, '2023-07-17 17:13:00', '2023-07-17 17:13:00', NULL),
('1a6d6832-efb9-426c-be61-c637aa40686a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '515c7a8f-bcc1-4231-9558-0544280ccfe1', 15078, 'SANCHEZ MATOS IVAN SEBASTIAN', 0, NULL, '2023-07-18 09:15:02', '2023-07-18 09:15:02', NULL),
('1b31fdfd-a0c5-40fa-a350-040a3be4a33f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e88cf88f-592a-4aca-ae20-23d6faf7dd9e', 14809, 'SOTO MENDOZA RODRIGO ROMEO - 73352901', 0, NULL, '2023-07-05 18:41:30', '2023-07-05 18:41:30', NULL),
('1b53da75-d2ca-4c51-8686-a9e2dfb11bfb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b1c93196-5791-46b1-8047-073a295e5fa5', 15064, 'ROSAS ROSALES JULIAN MATHIAS', 0, NULL, '2023-07-17 16:40:22', '2023-07-17 16:40:22', NULL),
('1bb0d3c3-e7bf-44b5-b719-a4c3f41b6dc9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '0fd3ae83-491f-400c-9043-89010c027ae5', 14834, 'MALLQUI RAMIREZ ARIANA DENISE', 0, NULL, '2023-07-06 17:45:02', '2023-07-06 17:45:02', NULL),
('1da9b6be-f9d0-40ac-9afc-337c88568588', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2ab10a22-0614-4434-a239-32455088bbfc', 14973, 'GUERRA GUILLEN JEMIMA KAREN JEMIMA KAREN', 0, NULL, '2023-07-11 15:24:49', '2023-07-11 15:24:49', NULL),
('1dd0b92e-33de-4cd5-9227-7061802f2520', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5866bc14-0811-4914-b70c-3c82a8afa525', 14850, 'ROSALES LUCIANO YIDID KARLA', 1, NULL, '2023-07-07 10:17:46', '2023-07-07 10:18:10', NULL),
('1e5c73d1-847f-4109-9a08-f731ea5b0aab', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8a69dd3a-0d68-462f-869c-fc40d12f3b35', 14913, 'NIEVES VARGAS JHANELA XIMENA', 0, NULL, '2023-07-10 16:11:19', '2023-07-10 16:11:19', NULL),
('1f151123-f538-4546-a28d-617750dbea8b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '40e17583-5f90-4aff-9531-b9acaeaf407d', 15018, 'ASIS VARGAS CYNTHIA ISABEL', 0, NULL, '2023-07-12 19:10:49', '2023-07-12 19:10:49', NULL),
('1f3d522e-68e9-47c9-9f74-2018984c4db8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f742c499-d749-43a9-84bc-55b602e8627a', 14998, 'MENACHO CRUZ VALENTINO OCTAVIO', 0, NULL, '2023-07-12 09:27:10', '2023-07-12 09:27:10', NULL),
('20402192-f310-46be-adb3-6bb735ce476f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '010fde2f-f8db-4864-9954-6f0d41226491', 14777, '-', 0, NULL, '2023-07-05 15:53:08', '2023-07-05 15:53:08', NULL),
('211c8988-f388-473f-b198-523ad84d3a3a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c4d8f1ef-b392-43ba-bbee-39aa7b211822', 14791, '-', 0, NULL, '2023-07-05 17:02:04', '2023-07-05 17:02:04', NULL),
('21a5126f-5d16-409e-aaef-b651c6021faf', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '76dcb5bf-a860-4f02-a67d-d9624f762a77', 14899, 'GOMERO CASTILLO CAMILA ELIANA', 0, NULL, '2023-07-10 09:03:25', '2023-07-10 09:03:25', NULL),
('21e1ef99-6f3a-4a8a-8037-f011eb0998be', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4cb7e45d-007f-42ed-859d-613f51c56564', 15035, 'GUTIERREZ MAGUIÑA GIANELLA PATRICIA', 0, NULL, '2023-07-13 16:43:11', '2023-07-13 16:43:11', NULL),
('238f4502-d1fd-4050-97f5-44ccd971d076', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '317941a3-a1de-4e5a-8956-479d85b2ce3e', 14773, '-', 0, NULL, '2023-07-05 15:41:40', '2023-07-05 15:41:40', NULL),
('23dbcaf5-20f4-435a-a307-6f7ad806c01a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '0a70274a-9649-4dcf-ad95-bed0878badcd', 14933, 'FIGUEROA LUCIANO AROM STEVEN', 0, NULL, '2023-07-10 18:10:46', '2023-07-10 18:10:46', NULL),
('242ca063-6633-46a3-826c-f8de8daf61bc', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a2de6e46-752c-439e-b468-9216268416a5', 14880, 'MACEDO AGUEDO INGRID MIRELLA', 0, NULL, '2023-07-07 18:03:09', '2023-07-07 18:03:09', NULL),
('259c3710-0352-4b0c-883d-e6ed4eba1979', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '0283d2af-4253-4399-8a3c-20d795049cb7', 14976, 'GUERRERO RAMIREZ GUADALUPE BETHANIE', 0, NULL, '2023-07-11 15:36:05', '2023-07-11 15:36:05', NULL),
('2692ff57-1a37-48b7-97a8-5594a981199c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6e264d0a-de61-4f6d-8b27-07b65be162dc', 15009, 'CANDACHO BUSTAMANTE RODOLFO LUIS', 0, NULL, '2023-07-12 17:53:57', '2023-07-12 17:53:57', NULL),
('26af218b-cd54-454b-b44c-10b62e2500d2', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b9b2ffce-039a-4ac3-a3f7-4f796bce7d9a', 14821, 'MANRIQUE VEZLAQUES ANGIE NAYELY', 0, NULL, '2023-07-06 11:26:19', '2023-07-06 11:26:19', NULL),
('2792f1e1-c913-4e09-aa5a-81d8397e9e55', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'feb0a394-ff8d-4163-b09a-e4bc48bb0a47', 14774, '-', 0, NULL, '2023-07-05 15:44:23', '2023-07-05 15:44:23', NULL),
('29880952-892b-481e-b0ed-d86bacda12e1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a533dfd4-5998-4580-a6f1-df6a80ce40ad', 14844, 'VILLANUEVA QUIÑONES CRISTINA FERNANDA', 0, NULL, '2023-07-06 19:04:32', '2023-07-06 19:04:32', NULL),
('29b9170b-5be7-4f4c-8593-c7207a2abdf8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '9b2b0e7e-43c7-42a3-8008-aa5ef6fac3fd', 15048, 'ANICETO RAMIREZ TATIANA ALISON', 0, NULL, '2023-07-14 19:08:28', '2023-07-14 19:08:28', NULL),
('2a3f0d55-ff28-4e51-86c7-3e86a9cbcd65', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ad486a33-10dd-456f-837e-fd16748e69f3', 15072, 'COAQUIRA HERNANDEZ ERICK AARON', 0, NULL, '2023-07-18 09:07:21', '2023-07-18 09:07:21', NULL),
('2dc74c79-9cb7-4bf7-b999-8e5d19caad96', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', 'd4655639-02eb-482c-8cb0-7baea805535a', 14827, 'DIAZ ROBLES LUIS MIGUEL', 0, NULL, '2023-07-06 15:55:06', '2023-07-06 15:55:06', NULL),
('2dd38ef6-53be-4cdd-9ca0-b6fb463c0019', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4ec99758-b9be-42c3-af3a-2acf354b6c44', 14972, 'FALCON GRANADOS JORGE DANIEL', 0, NULL, '2023-07-11 15:21:29', '2023-07-11 15:21:29', NULL),
('2f2351fa-3e1c-4500-a95a-aac815e34afd', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e6269bac-ec15-4cea-b9fe-42483cf0bd18', 14874, 'MEJIA ESPADA ELENCIO YOMED', 0, NULL, '2023-07-07 17:42:07', '2023-07-07 17:42:07', NULL),
('2f491c04-3ebd-4090-89aa-ec97df619d26', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '946cb230-b7c9-49e6-9aef-cdbe37492b70', 14991, 'LUIS FERNANDO SEBASTIAN POLO SALAZAR', 0, NULL, '2023-07-11 18:46:13', '2023-07-11 18:46:13', NULL),
('3016dcbc-a604-47c3-a1f4-0ca0b277e40a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '29d35164-e47f-3e51-9743-5182a0391764', '6a39aa6f-8f0e-436d-992d-b387415b9b85', 10, 'SALAZAR FERNANDEZ DIOZALINDA NORMA', 0, NULL, '2023-07-17 09:26:58', '2023-07-17 09:26:58', NULL),
('30ed27e9-1657-4288-b5d9-43ea3fc2799f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '85952dce-cc43-46d4-957e-70c4acafa9c5', 15074, 'FLORES COCHA LUCIANA TANIA', 0, NULL, '2023-07-18 09:09:45', '2023-07-18 09:09:45', NULL),
('32d0de9d-64b8-4f93-99bc-3f30cece688f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '99fed449-05eb-466b-96ad-6581e68315ca', 14755, '--', 0, NULL, '2023-07-05 10:26:56', '2023-07-05 10:26:56', NULL),
('33628b1d-4ce4-4f99-9f3f-cb8f7b4c37bb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '445b0d4a-0a72-49e4-9cfa-ea8947673827', 14772, '-', 0, NULL, '2023-07-05 15:37:32', '2023-07-05 15:37:32', NULL),
('345717f8-9416-4508-b069-ae6a17223621', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '95d411fa-536e-40d5-b5c6-7d7b06999db7', 14871, 'DEXTRE HUAMAN PEDRO VALENTINO', 0, NULL, '2023-07-07 17:32:48', '2023-07-07 17:32:48', NULL),
('3466dfd9-ac6b-4fab-8ec5-c4861fa1bc32', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '17b89e87-fbb4-4edd-8f3a-4db8b4c031c8', 15034, 'HUAYANEY HUERTA ABIGAIL CAMILA', 0, NULL, '2023-07-13 16:33:54', '2023-07-13 16:33:54', NULL),
('34afdefd-d22b-47a9-8b7e-4334ad81d3a0', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6e454871-e0be-484c-b3f0-ce5b698e1d15', 14752, '------', 0, NULL, '2023-07-05 09:48:40', '2023-07-05 09:48:40', NULL),
('358d04c2-3fce-4a46-8739-528292a93f6f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5af73596-7f2b-4a50-844c-adb54b17d711', 14891, 'CAMACHO ESCUDERO GIMENA GRACIA', 0, NULL, '2023-07-07 18:49:31', '2023-07-07 18:49:31', NULL),
('36ca7419-720a-4e0f-bb0d-d5e6b1408154', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ca5e2950-6ad7-4544-a483-df7ed526de2d', 14953, 'FORONDA MAGUIÑA LUIS DANIEL', 0, NULL, '2023-07-10 19:08:00', '2023-07-10 19:08:00', NULL),
('36fee341-9d7b-4309-84e2-b862084f5a5f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '08592993-7eb9-4156-b689-711c1b1579ee', 14845, 'CORDERO VASQUEZ GRECIA AZUCENA', 0, NULL, '2023-07-06 19:06:00', '2023-07-06 19:06:00', NULL),
('37183f15-ce16-491d-a307-77b10dc83408', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7194e4fe-0f3e-4580-be9d-a8135e813937', 8, 'BAÑEZ GODOY DANIEL EVILSON - 61480353', 0, NULL, '2023-06-29 10:55:47', '2023-06-29 10:55:47', NULL),
('383070df-f5a9-4d3f-9768-c90d1e6d971b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '321b7685-8598-4e7f-b85e-8649c4395c79', 14929, 'TACO ROJAS JUAN LIONEL', 0, NULL, '2023-07-10 17:57:55', '2023-07-10 17:57:55', NULL),
('383e5582-2a88-4348-9825-356264211926', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e88b6d63-c634-4fa7-b313-c244026a1fa0', 14806, '-', 0, NULL, '2023-07-05 18:35:10', '2023-07-05 18:35:10', NULL),
('3a753682-7e71-47e2-aca8-f16ab20794f2', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ba2f7db6-8c32-4ecb-b5c2-e37a5c7756b5', 14768, '-', 0, NULL, '2023-07-05 15:22:33', '2023-07-05 15:22:33', NULL),
('3af7105f-cf05-4a47-be21-768b1f2e14fc', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a59014f9-141a-4ef5-8266-c6307760564a', 14859, 'Rivera Vidal Luana Sophia', 0, NULL, '2023-07-07 11:51:14', '2023-07-07 11:51:14', NULL),
('3b0e2de4-09a5-405b-8d79-fbfa8f837384', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '87ae3776-eee3-464d-ba3a-ce92943db82f', 15053, 'PERALTA CHAVEZ KELLY MELISSA', 1, NULL, '2023-07-15 13:02:07', '2023-07-15 13:05:02', NULL),
('3b40d2cb-a55f-487c-a9bd-ca3d2ee7acfb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'fdc30e72-771b-4ea5-b1bf-0b4f64eb24cf', 14759, '-', 0, NULL, '2023-07-05 10:59:26', '2023-07-05 10:59:26', NULL),
('3be337dc-b090-4ea5-9dd5-c03954bfda86', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8e2dbeb2-6d15-4091-b073-0abe5f814668', 15033, 'KHALFA OCAMPO CESAR', 0, NULL, '2023-07-13 16:02:59', '2023-07-13 16:02:59', NULL),
('3cf09cc9-6546-4421-9290-6dbd26ec909f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '3cf3999d-85b1-499e-b9b6-a9008ee28c0d', 14846, 'SOLIS REYES MARIA FERNANDA XIMENA', 0, NULL, '2023-07-06 19:07:21', '2023-07-06 19:07:21', NULL),
('3dfa276e-d3b6-4911-bd32-9c4bc0be21ed', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '15ca67bb-79b0-4b63-ba5a-d0fd7feece74', 14750, '-----', 1, NULL, '2023-07-04 09:06:37', '2023-07-07 19:09:12', NULL),
('3f1ef205-ce4d-4109-a5c4-2b10c99e22da', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6bc414d6-6045-4f66-a77d-d98fd38396ed', 14849, 'ROSALES LUCIANO YEDID VANESA', 0, NULL, '2023-07-07 10:13:27', '2023-07-07 10:13:27', NULL),
('3f277c27-2ea3-4b85-9a57-10acb157ad57', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e81a709f-a7c2-4473-9564-6ab260816fbd', 14897, 'VILLACORTA SANCHEZ JEISON XAVIER', 0, NULL, '2023-07-10 08:42:36', '2023-07-10 08:42:36', NULL),
('4034111e-102c-4e37-a6af-491f4ed3e313', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ed39843d-dfa0-4ced-8e9d-f42ef501c614', 15021, 'DURAN LAZARO VERONICA ALEJANDRA', 0, NULL, '2023-07-13 08:46:52', '2023-07-13 08:46:52', NULL),
('403527a0-b698-426b-9f0b-3794e3960276', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2065ea95-426e-47d0-a172-96e1d3d904d7', 14882, 'LAZARO HORNA CAMILA ESTHER', 0, NULL, '2023-07-07 18:10:00', '2023-07-07 18:10:00', NULL),
('40f3f91b-f510-4c38-a8cd-992ce7930d91', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', 'a2ab7553-1e13-4381-84ee-a7207dd6cb0d', 14756, '-', 0, NULL, '2023-07-05 10:33:09', '2023-07-05 10:33:09', NULL),
('4164aa28-2757-473f-b08c-81aaed19e8f8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '346c5d3b-3a9e-467f-a203-caf180feedc3', 15028, 'QUISPE CAMONES XIMENA LUCIA', 0, 'EL PAGO CORRESPONDE AL MES DE JUNIO DEL INTEMEDIO III', '2023-07-13 10:57:12', '2023-07-13 10:57:12', NULL),
('4186c322-ee26-41fb-84a3-6fcbdceb1659', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'd755c952-0ef6-48f9-9407-247a18477aed', 14971, 'RIOS ALVARADO ASHLEY CRISTHEL', 0, NULL, '2023-07-11 15:18:14', '2023-07-11 15:18:14', NULL),
('4227ace8-8a1c-49d1-bd20-b4cc7a06e574', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7200c1ca-5088-4ac9-b453-d3ebe05c2429', 14988, 'MAYPU MANCILLA YANELY ROSMERY', 0, NULL, '2023-07-11 18:10:13', '2023-07-11 18:10:13', NULL),
('43559a49-2449-4bf7-99f6-cd600c662237', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '29d35164-e47f-3e51-9743-5182a0391764', '64927d20-4624-495a-8638-183587f0e452', 2, 'COLONIA JULCA VALENTINA VICTORIA', 0, NULL, '2023-07-06 15:53:39', '2023-07-06 15:53:39', NULL),
('43e40469-ba05-46d7-ade3-95fd20245d81', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '79f9f89e-b3f4-4689-a9dd-88f977d53ffd', 14948, 'MELENDEZ PONTE KARLA ALEJANDRA', 0, NULL, '2023-07-10 18:49:19', '2023-07-10 18:49:19', NULL),
('43ea2675-8f87-4818-b460-13e9c72870df', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a4469687-bdfc-4e0d-8233-c4528459c8b5', 14974, 'JOVE QUISPE CAMILA NICOL', 0, NULL, '2023-07-11 15:26:12', '2023-07-11 15:26:12', NULL),
('443cc023-a9ba-4fe0-8aa5-9dd3bd737ce5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6080266d-4778-49ba-b493-6eb18847a6d9', 14980, 'HUANE MORENO AVRIL AMY', 0, NULL, '2023-07-11 15:58:59', '2023-07-11 15:58:59', NULL),
('461b0648-5fec-47a2-b07b-9b40800405cd', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '9426ce7d-5147-43e8-8000-1bf87492a88f', 14804, '-', 0, NULL, '2023-07-05 18:25:45', '2023-07-05 18:25:45', NULL),
('490f4775-3c8f-462d-b1eb-e301d263cbc8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6f0b1997-4283-4b48-96d7-0b7df05d489e', 15055, 'BLAS TUTACANO FERNANDO DANIEL', 0, NULL, '2023-07-17 10:04:41', '2023-07-17 10:04:41', NULL),
('49773236-1476-4816-8812-0df44a8cb00f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'fedd8b99-78f4-4a98-b2ba-6b3bc0af2689', 15029, 'PINEDA REGALADO MARK GELACIO', 0, NULL, '2023-07-13 11:12:22', '2023-07-13 11:12:22', NULL),
('49f0676a-3d57-4e28-adcd-a2598129252a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ca645119-7741-4940-ad13-1bdbb9d015ab', 14887, 'CAMONES CORDOVA FABRIZIO GARETH', 0, NULL, '2023-07-07 18:40:29', '2023-07-07 18:40:29', NULL),
('4bbaa1bb-725d-4773-8ab7-720a4f3c424f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '90974475-fb43-46c5-92d7-e0680c3465f0', 15045, 'LEYVA OLIVEOS SHANIA VALERY', 0, NULL, '2023-07-14 17:10:22', '2023-07-14 17:10:22', NULL),
('4e814039-1e95-464c-836b-a37ff8d08814', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4c091eeb-3b45-4887-ba76-89dbd21de342', 14790, '-', 0, NULL, '2023-07-05 16:59:49', '2023-07-05 16:59:49', NULL),
('4edf2fe8-76db-49db-8028-99eaf22405bc', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'bedbfa18-d9c0-4298-b63f-c1bdf055233e', 14990, 'HUERTA TARAZONA JOETHSSEY SAMANTHA', 0, NULL, '2023-07-11 18:22:53', '2023-07-11 18:22:53', NULL),
('4f1f2022-7abf-40f1-82d4-d2f356b6d470', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f546dbf0-b2f6-408d-aac4-9260260837cd', 14939, 'LEON SALAZAR GONZALO SEBASTIAN', 0, NULL, '2023-07-10 18:28:24', '2023-07-10 18:28:24', NULL),
('4f21f7a3-bdcf-4f23-9fe6-a9ea0c7e4f96', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '76dcb5bf-a860-4f02-a67d-d9624f762a77', 15052, 'GOMERO CASTILLO CAMILA ELIANA', 0, NULL, '2023-07-15 12:59:50', '2023-07-15 12:59:50', NULL),
('4fd07512-5eac-4c3d-8e69-7020e4023b43', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'db6c3c1e-82cb-409f-a9cf-1470fdd299a3', 15050, 'ALLENDE RODRIGUEZ BRYAN KEVIN', 0, NULL, '2023-07-15 09:48:43', '2023-07-15 09:48:43', NULL),
('5041fa37-0a90-4a21-86c3-c6a8e55e1ed8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '87ae3776-eee3-464d-ba3a-ce92943db82f', 15054, 'PERALTA CHAVEZ KELLY MELISSA', 0, NULL, '2023-07-15 13:03:40', '2023-07-15 13:03:40', NULL),
('51684c72-7d57-41f2-a09d-0daf4f8859e9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '68f44457-18a2-4447-b443-44c0621dbd11', 14775, '-', 0, NULL, '2023-07-05 15:48:47', '2023-07-05 15:48:47', NULL),
('52efcd20-121c-42f7-8ab6-37ff8f03cd6d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'cde0b85e-67ef-4863-b1f2-a3d298fb1257', 15061, 'RAMIREZ ROMERO JESUS ADRIAN', 1, NULL, '2023-07-17 12:32:55', '2023-07-18 09:58:37', NULL),
('535d0762-e3b3-46db-a14d-7a9f5b210692', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '3d414a38-4f40-464e-a591-62a89ba1f427', 15010, 'VIDAL CORONEL SOLMARIA NICOLE', 0, NULL, '2023-07-12 18:27:07', '2023-07-12 18:27:07', NULL),
('540d57a1-427b-4a67-b284-c192fdd17dfb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8ab45dce-3a77-4b12-bc9f-82ae5ce51e37', 14789, '-', 0, NULL, '2023-07-05 16:57:10', '2023-07-05 16:57:10', NULL),
('558eb233-a281-446b-be17-c909674762a9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '449cde94-ce38-4fb4-8a51-52bc22caa801', 14819, 'VASQUEZ ROSALES MARIA ALEJANDRA - 78850422', 0, NULL, '2023-07-06 10:24:53', '2023-07-06 10:24:53', NULL),
('5635d4ad-b8c9-433d-b836-019fc8405179', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6c93e704-d9ad-4d8f-87b5-cf1d764540ba', 14781, '-', 0, NULL, '2023-07-05 16:14:02', '2023-07-05 16:14:02', NULL),
('565a9ce2-077b-4e1d-9a0c-b990dec21f30', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '159a9c9f-41ab-4b42-ae6a-459a34144fa5', 14813, '-', 0, NULL, '2023-07-06 08:55:17', '2023-07-06 08:55:17', NULL),
('568c3df5-d26f-475f-b8da-af832ee51d28', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1c1a797f-fe54-49e9-946c-578ebacfeecc', 14754, '--', 0, NULL, '2023-07-05 10:09:14', '2023-07-05 10:09:14', NULL),
('580569a1-4b68-479f-8737-031b4cd6d170', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c362af0b-d588-4982-bee9-a2687247d711', 14906, 'Pachas Romero Fatima Jhulia', 0, NULL, '2023-07-10 11:32:23', '2023-07-10 11:32:23', NULL),
('58226847-f165-46c0-97af-1c663b2bb09e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e1f6858b-5da3-4d9a-817f-1dccad63e7e4', 15081, 'CACHA SALCEDO MARIANA ALMENDRA', 0, NULL, '2023-07-18 09:41:42', '2023-07-18 09:41:42', NULL),
('58b8797b-1b71-42b4-8ffb-c4cb3579a944', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'df1fccc7-de42-48e1-9470-4580a43b122b', 14842, 'ALBINO ALVA LEIDY MAGALY', 0, NULL, '2023-07-06 19:00:11', '2023-07-06 19:00:11', NULL),
('597c3550-f58b-4f36-84a7-b3187a1df060', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '25c0fa57-78e9-4dd6-9179-6726ba5a0a4b', 14765, '-', 0, NULL, '2023-07-05 12:32:48', '2023-07-05 12:32:48', NULL),
('5a07e1fc-ec4f-43a4-9cd5-f49893f0e82c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b5f16c36-d31b-40b0-beb8-24bc474a275f', 15026, 'Aguedo Miranda Julioagustin David', 0, NULL, '2023-07-13 10:25:05', '2023-07-13 10:25:05', NULL),
('5a0ce290-ab9c-426c-a614-20583496c0b6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6c4f0358-35c3-4562-b8aa-6cc0875a12aa', 14776, '-', 0, NULL, '2023-07-05 15:50:57', '2023-07-05 15:50:57', NULL),
('5a1767ec-e223-426c-be9a-07282556789e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '38998857-0de8-49d8-a255-81f6a61ba761', 14761, '-', 0, NULL, '2023-07-05 11:31:58', '2023-07-05 11:31:58', NULL),
('5a431f22-fe26-445b-a636-e54a3cbe893b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e0394252-41dc-4ea8-896d-7704c52972a9', 14908, 'PAREDEZ GUERRERO SANDER SANTIAGO', 0, NULL, '2023-07-10 15:26:12', '2023-07-10 15:26:12', NULL),
('5a78f087-725f-4cfb-8300-d8a81ab600c4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2d183ae4-079e-49bb-9dfb-44ce31de2861', 14803, '-', 0, NULL, '2023-07-05 18:14:41', '2023-07-05 18:14:41', NULL),
('5af8cd8a-f469-4dd8-b5e8-87a829060cf0', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c7e47486-cfbf-4717-8bfc-e6b02f6241a1', 14926, 'CAMPOS AVILA OLIVER YUE', 0, NULL, '2023-07-10 17:49:12', '2023-07-10 17:49:12', NULL),
('5b63e2a2-b8ef-4798-8066-b78024a71ae4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '4f17ad21-47f9-4917-a0b2-6c903e345cf8', 14830, 'CASIMIRO DOLORES MATHIAS JESUS', 0, NULL, '2023-07-06 17:15:06', '2023-07-06 17:15:06', NULL),
('5bf274ca-9255-4a12-9c49-ba99bccb4cf1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '1ca8ee1a-28ec-429d-a6bc-e9e888734ddd', 14856, 'CALDUA MILLA FLORENTINO FLORIAN', 0, NULL, '2023-07-07 11:20:00', '2023-07-07 11:20:00', NULL),
('5ca9d217-d619-4ff9-89e4-e86f35720330', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '82bb750a-aacb-4081-ae90-b2043f4fa518', 14931, 'RIVERA MONTES ESTEFANO PALERMO', 0, NULL, '2023-07-10 18:03:30', '2023-07-10 18:03:30', NULL),
('5d3b9fa6-cc59-4acc-ba9d-e60e5d199526', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '2a01cb3a-eb65-4808-9391-cc620273d975', 14835, 'HUERTA BECERRA ZOE BRUNELLA', 0, NULL, '2023-07-06 18:09:15', '2023-07-06 18:09:15', NULL),
('5d508f97-d4cb-4c3c-99cb-1469fc008682', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'bf6e7bb9-5c0a-42c1-82c4-4738224cd137', 15044, 'TORRES MAYTA GIANFRANCO ROGER ROBERT', 0, NULL, '2023-07-14 17:06:57', '2023-07-14 17:06:57', NULL),
('5d5f3502-0ad7-4e7d-b064-210ff6b1f0ad', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5d73c77f-ec89-4971-9084-066aeb6f38c5', 15015, 'LAVADO GUEVARA GIULIANA JEANELLA', 0, NULL, '2023-07-12 19:02:15', '2023-07-12 19:02:15', NULL),
('5db0a588-0312-4ba3-97f0-94041dd5bedb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8f96c99d-43fb-4e6c-a65b-60df2682f070', 14910, 'SALVADOR LOPEZ DANIELA ASTRID', 0, NULL, '2023-07-10 15:35:25', '2023-07-10 15:35:25', NULL),
('5e031cd0-1538-427e-bf1e-87c1f26311d8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e78a869e-f35d-4885-acd4-810e1d293d95', 14987, 'MILLA NORIEGA JAZMIN YARITH', 0, NULL, '2023-07-11 17:57:22', '2023-07-11 17:57:22', NULL),
('5f0c3895-9504-4584-8ee6-bde59b64731c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '56f44ca8-f4cc-49ed-a658-cccecbd27cb4', 15082, 'TREJO ALVA DAHANA MARITZA', 0, NULL, '2023-07-18 09:57:08', '2023-07-18 09:57:08', NULL),
('5fbaa4da-22c9-403f-9f0c-1cc1eaa84045', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '36ef8333-a44a-43bb-a65f-d486f839bd3f', 14965, 'CERVANTES PEREZ GABRIEL STEFANO', 0, NULL, '2023-07-11 11:16:50', '2023-07-11 11:16:50', NULL),
('6013c242-1a6a-40ba-bbb6-310e2627aa18', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2fa806c2-ba59-400f-95bd-bc04d5a0fc87', 14969, 'CACERES RUBINA EVAN ANTONIO', 0, NULL, '2023-07-11 15:09:40', '2023-07-11 15:09:40', NULL),
('62f09ae5-a046-48d7-904f-3671f5438658', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a0773296-3373-46e3-bdc4-baa83b2b10a1', 14947, 'FLORES ABREGON ABIGAIL', 0, NULL, '2023-07-10 18:47:00', '2023-07-10 18:47:00', NULL),
('630ce700-6ac7-4189-a214-f7b994095512', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f0db41af-3cab-44ca-9434-d6e5f4d39ed9', 15049, 'REYES LIÑAN JHOSEP ANDREI', 0, NULL, '2023-07-14 19:10:47', '2023-07-14 19:10:47', NULL),
('63508291-b7f0-4eaf-bfb4-1eb025b62f3d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e081b63b-8b46-4947-83d1-692e107049aa', 14979, 'JIMENEZ LEGUA CAMILA LUCIANA', 0, NULL, '2023-07-11 15:47:46', '2023-07-11 15:47:46', NULL),
('6358d22b-7cb7-4462-b2e0-bda5195bdd9e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '45b0770f-df7e-4245-ba07-4481f00c573a', 15058, 'CABALLERO NIETO JERIMOT GABRIEL', 0, NULL, '2023-07-17 10:15:33', '2023-07-17 10:15:33', NULL),
('639f67de-ed3f-461b-ae46-6c464371dbdb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '29d35164-e47f-3e51-9743-5182a0391764', '59637a97-4772-4583-bb7a-7f0ca9e1f7e7', 9, 'GONZALES GAYTAN LUHANA MARLENE', 0, NULL, '2023-07-14 17:04:27', '2023-07-14 17:04:27', NULL),
('645f928d-f4c1-42a4-aba9-afa0f2630a0a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7413244c-3590-4cac-ad3c-3897918894ec', 14798, '-', 0, NULL, '2023-07-05 17:48:48', '2023-07-05 17:48:48', NULL),
('64c3f202-3487-4548-b853-470b50a6585e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1fc12722-c977-4531-9e5a-c43887fd7d87', 15032, 'GAMARRA BRITTO CAMILA LUCERO', 0, NULL, '2023-07-13 15:42:41', '2023-07-13 15:42:41', NULL),
('64c804bc-a82c-46cf-acf1-64a41de71fb7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '87ae3776-eee3-464d-ba3a-ce92943db82f', 15051, 'PERALTA CHAVEZ KELLY MELISSA', 0, NULL, '2023-07-15 11:40:20', '2023-07-15 11:40:20', NULL),
('65c4ee61-1707-4232-a8d2-403d2ef6f827', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '900d10dd-f68c-41ef-a4ba-ca8fd52daec0', 14945, 'RAMIREZ GAYTAN CRIS DEKER', 0, NULL, '2023-07-10 18:39:49', '2023-07-10 18:39:49', NULL),
('672d1000-03be-4490-9660-eaf12072b7d8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7130f6f5-3c3c-457d-a23d-588d02e1eef9', 14956, 'FIGUEROA LAZARO SOFIA CRISTINA', 0, NULL, '2023-07-10 19:19:06', '2023-07-10 19:19:06', NULL),
('68f55138-968b-4ce0-b90c-1953e6f32a3a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '97e87702-95bc-4dc2-82de-1a6c479355f6', 14779, '-', 0, NULL, '2023-07-05 15:57:52', '2023-07-05 15:57:52', NULL),
('691062ce-21b8-4fde-8e78-df1683f14aff', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '120aeca1-ff2d-481a-bef8-7e54d7347190', 14833, 'APARICIO CERNA YAGO ALONSO', 0, NULL, '2023-07-06 17:40:41', '2023-07-06 17:40:41', NULL),
('6ab51d0f-2ec3-49aa-993d-514a09b1966f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '560f5381-5e9b-4f55-81f3-3f732b2d715e', 15038, 'RAMIREZ MUÑOZ MARIACRISTINA MILAGROS', 0, NULL, '2023-07-13 18:56:41', '2023-07-13 18:56:41', NULL),
('6b0b4a6a-db14-41d5-bbe0-179ab91aafd7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'cde0b85e-67ef-4863-b1f2-a3d298fb1257', 14824, 'RAMIREZ ROMERO JESUS ADRIAN', 0, NULL, '2023-07-06 12:30:08', '2023-07-06 12:30:08', NULL),
('6b45dd94-6e1c-4082-9644-4cfeb1a72d0d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '0bf9a6e3-3a43-4fee-980b-aee3e3d52684', 14847, 'BERNUY GUERRERO LISST MARIA', 0, NULL, '2023-07-06 19:09:35', '2023-07-06 19:09:35', NULL),
('6bf256be-9a51-4dd6-93f4-2e609a40f6f6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '3d932244-7a28-4a48-ba84-6c7704739732', 15003, 'HENOSTROZA GLORIA ANA MARIA', 0, NULL, '2023-07-12 11:47:56', '2023-07-12 11:47:56', NULL),
('6df54894-45f5-47f5-8164-0fda3783a30f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '97c153dc-4ef5-40da-beaa-679693a5790c', 14797, '-', 0, NULL, '2023-07-05 17:45:32', '2023-07-05 17:45:32', NULL),
('6f30ec9e-2e2b-4576-a6b4-4d7b92ca3b5b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '95474dce-e60a-49c2-8b42-ffd7f303da4d', 14888, 'HUERTA BUSTAMANTE ARELI GUADALUPE', 0, NULL, '2023-07-07 18:42:04', '2023-07-07 18:42:04', NULL),
('6f44a617-db37-47f6-9367-9b29eb4a8432', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1a637b03-4809-47c0-9d89-530258e1a96e', 14826, 'OSORIO ALBINO STEVEN JEANDETH', 0, NULL, '2023-07-06 15:46:27', '2023-07-06 15:46:27', NULL),
('6fc57073-f7e2-4b1f-95dd-319d8478960c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c77708de-c7cf-4971-bdc9-0bcd4dfb8e1d', 15069, 'ONCOY VALVERDE FREDY TOMAS', 0, NULL, '2023-07-18 08:42:58', '2023-07-18 08:42:58', NULL),
('7022e623-f2d0-4bc8-b965-dc044540b068', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'cb7c7c25-bf1d-441e-869c-06c5b97d561b', 14918, 'ASENCIOS ROMERO BRIHANA JASMINE', 0, NULL, '2023-07-10 17:05:52', '2023-07-10 17:05:52', NULL),
('705dbabf-1e90-46e0-820e-740934c5e6b5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7194e4fe-0f3e-4580-be9d-a8135e813937', 7, 'CARI MARIELA GODOY PERNIA - 44034717', 1, NULL, '2023-06-28 11:36:55', '2023-06-28 22:13:18', NULL),
('719e4fbb-071c-4cea-afb6-4596f84c66a5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8aef8095-cfa7-4d85-b57a-7a61d89beeb0', 15040, 'MAXIMILIANO ANDRES ARENAS BERRIOS', 0, 'CANCELADO DEL SEMESTRE ACADEMICO 2023 I - CICLO I / QUE REPITIÓ.', '2023-07-14 11:41:18', '2023-07-14 11:41:18', NULL),
('71de7b45-3b87-4572-b523-dca25bd7a493', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ffd9f255-d9fe-4958-b218-56c175168fdc', 14862, 'CORAL MALLQUI PALOMA DAYRAL', 0, NULL, '2023-07-07 12:25:24', '2023-07-07 12:25:24', NULL),
('7279605e-6e2c-4f2b-89a3-5b0417b00392', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '0b167520-a535-41e3-8857-453e8258bffe', 14986, 'BERNUY ALVA MIA GIANELLA NOHOMY', 0, NULL, '2023-07-11 17:56:09', '2023-07-11 17:56:09', NULL),
('72db36c3-3e04-402d-ab14-9c0aefaba51b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '82507e2a-584d-4eb6-8fcc-3ad41ff01ed9', 14883, 'LAZARO HORNA ALVARO TITZHAK', 0, NULL, '2023-07-07 18:12:04', '2023-07-07 18:12:04', NULL),
('72e12bb8-dc34-4aeb-8f3f-99f96f72cee1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '29d35164-e47f-3e51-9743-5182a0391764', 'b4a44583-f679-4fb3-b16d-2c871b6c83e0', 8, 'PAGOLA HUERTA LUZ VANESSA', 0, 'CLASES PRIVADAS DE 14 HORAS/ INICIO DE CLASES  LUNES 17 HORA 9 AM', '2023-07-13 16:55:39', '2023-07-13 16:55:39', NULL),
('7439a19a-ca18-453a-9a43-13cd9ce10850', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '025148f9-e712-45ba-a502-75d396c50176', 14934, 'GAMARRA ROLLER LUCIA ANGELICA', 0, NULL, '2023-07-10 18:16:31', '2023-07-10 18:16:31', NULL),
('744f526d-ae0c-4660-a5d2-7e9e3d81bfdf', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1c69b64a-fc0a-4160-b346-f7e98bfb5af3', 15017, 'SANCHEZ NERI VICTOR ROGER', 0, NULL, '2023-07-12 19:07:57', '2023-07-12 19:07:57', NULL),
('752de1ef-7fa0-4359-9051-b994eb02711f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c0c202a8-0bd1-4767-b9ec-c0b6b4ba5e9f', 14959, 'CERNA CAMONES FABRICIO', 0, NULL, '2023-07-11 09:42:59', '2023-07-11 09:42:59', NULL);
INSERT INTO `recibos` (`id`, `id_serie`, `id_tipo`, `id_cuenta`, `id_estudiante`, `numero`, `nombre`, `fue_anulado`, `obervaciones`, `created_at`, `updated_at`, `deleted_at`) VALUES
('754917ae-5958-43e9-ad3e-7c4d7f8d62a1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6a81bd99-12e5-4f36-a4ba-2bd3a0166a4e', 15066, 'OBREGON VALDERRAMA EYAL SAMIN', 0, NULL, '2023-07-17 16:58:15', '2023-07-17 16:58:15', NULL),
('75821ee9-ae8f-46b6-8bb6-852bc935afa3', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '51a8c28a-7582-4436-a695-feb5f33c7fb6', 14938, 'FLORES CASTILLO ANGIE VIVIANA', 0, NULL, '2023-07-10 18:23:07', '2023-07-10 18:23:07', NULL),
('75966e01-f26e-44c3-911b-7a9cf7ba0f44', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'fbafa3cf-9d67-4c54-827a-60271ed3b6f1', 14866, 'HUERTA RAMIREZ ROMINA ALEXANDRA', 0, NULL, '2023-07-07 16:37:38', '2023-07-07 16:37:38', NULL),
('75b89c20-d8d8-409b-b038-e0254b79a564', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '9b94d001-9a58-4a66-b3aa-0b94ad91bb08', 14814, 'IBAÑEZ BRAVO YESSENIA SOLEDAD - 72792051', 0, NULL, '2023-07-06 08:58:45', '2023-07-06 08:58:45', NULL),
('77a6e290-4f55-487c-a542-71067856648f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8f0ca397-c4a8-4c51-8de9-7eb04742a9fd', 3, 'PAUCAR ALVA ZALETH JESUS - 76022298', 1, NULL, '2023-06-20 23:35:32', '2023-06-20 23:36:27', NULL),
('77ceb489-dcc4-4e10-a67e-d22aed21a2d3', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a1259f4e-5c42-4adc-8fbc-5661e987aa25', 14977, 'DAVILA BERMUDEZ ROSALY ALEXANDRA', 0, NULL, '2023-07-11 15:37:28', '2023-07-11 15:37:28', NULL),
('79b77a27-ae80-4a55-87f0-16e1030b17f2', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4487f60b-3d98-4690-a5ec-fbff642f5bda', 14816, 'NIETO MATIAS NILMAR YAEL - 81579638', 0, NULL, '2023-07-06 09:54:35', '2023-07-06 09:54:35', NULL),
('7a65b25e-8ca4-4cd5-be90-a98b8a401fbe', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '04a3ea6f-c910-47ab-9ec1-b06fd6036f38', 14792, '-', 0, NULL, '2023-07-05 17:06:02', '2023-07-05 17:06:02', NULL),
('7c00cf80-9fa5-444c-827f-427b561a54e3', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5866bc14-0811-4914-b70c-3c82a8afa525', 14852, 'ROSALES LUCIANO YIDID KARLA', 0, NULL, '2023-07-07 10:19:10', '2023-07-07 10:19:10', NULL),
('7ca4f2ac-2b0e-4851-bb28-0e87d7c9e6b4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '651602d3-5e94-4b27-b4c0-59ed879e401e', 14964, 'DE LA CRUZ BARRETO FATIMA DANIELA', 0, NULL, '2023-07-11 11:14:20', '2023-07-11 11:14:20', NULL),
('7ea4e92e-dc4c-48ac-a919-adc8ff044ead', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '17f68d08-ea93-41ee-b48f-67cb95ab0627', 14812, 'LEMUS MORENO JAIRO ESTEFANO - 61713675', 0, NULL, '2023-07-05 19:28:32', '2023-07-05 19:28:32', NULL),
('7f6f78fc-3c5a-4a51-bb9f-f04628a4e479', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '9e10ae52-a5de-4e7a-a389-d09b50490c89', 14925, 'SABINO FIGUEROA NAYSHA ARIANA', 0, NULL, '2023-07-10 17:47:41', '2023-07-10 17:47:41', NULL),
('806601a5-61de-49be-a7a4-5690879aed32', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7ae5f116-de72-46f4-9897-ba7d41011d7c', 15002, 'ESPINOZA CABELLO LUIS DAVID', 0, NULL, '2023-07-12 10:33:14', '2023-07-12 10:33:14', NULL),
('81018daa-ef55-41c8-b2bd-f5073be4c594', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7194e4fe-0f3e-4580-be9d-a8135e813937', 9, 'BAÑEZ GODOY DANIEL EVILSON - 61480353', 1, NULL, '2023-06-29 10:55:54', '2023-06-29 16:14:45', NULL),
('823f24c6-19d8-48b9-ad2e-281575cf4f67', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7b29112e-a754-45cd-98e1-ff8dad81551d', 15004, 'LLIUYA TAIPE MARCO JHONATAN', 0, 'HIJO DE GUÍA', '2023-07-12 17:17:34', '2023-07-12 17:17:34', NULL),
('83d70a6e-fbe7-4161-98fa-087070e1287e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5532b755-ba8a-44e8-8c62-4272fd30a48e', 14985, 'TAMARA CHAVEZ CAMILA VALENTINA', 0, NULL, '2023-07-11 17:54:26', '2023-07-11 17:54:26', NULL),
('84028519-81b1-4e88-9262-60d15e267f7f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8d703461-5328-48d2-bf56-a99c3f179843', 14757, '-', 0, NULL, '2023-07-05 10:35:32', '2023-07-05 10:35:32', NULL),
('842e5780-382b-415e-8e1a-96aef7ecd55e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '71593035-9674-4e89-bbd8-a53eeed06eb3', 14770, '-', 0, NULL, '2023-07-05 15:34:21', '2023-07-05 15:34:21', NULL),
('85902545-67bf-4ca7-9419-70aec0eb499b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c5fa4a62-2967-4174-84d0-c550175e55ae', 14930, 'COLLAS VERA RENATO SEBASTIAN', 0, NULL, '2023-07-10 17:59:17', '2023-07-10 17:59:17', NULL),
('866b57f0-a341-4c50-8837-1c56e28ae3e4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '91d3e732-f5d6-4313-9f45-d6df865b0415', 14943, 'ROJAS COCHACHIN VALERIA APRIL', 0, NULL, '2023-07-10 18:37:19', '2023-07-10 18:37:19', NULL),
('86fcade6-cd36-4ec3-86dd-bfe30a95bbbb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '20e2d961-2e7c-4412-ad6c-57f4b2f98db1', 14868, 'ALBA GARCIA JHAMIR JOSHUA', 0, NULL, '2023-07-07 17:10:15', '2023-07-07 17:10:15', NULL),
('878f4796-b3cb-4c16-85ef-0e87a61a605d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '04a3ea6f-c910-47ab-9ec1-b06fd6036f38', 14782, '-', 0, NULL, '2023-07-05 16:23:29', '2023-07-05 16:23:29', NULL),
('87c3c0b4-bf99-490d-abdc-4a1b653772f5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '466c95cd-9748-475e-ba07-4ebbfbf448f7', 15084, 'TREJO RODRIGUEZ GERALDINE MICAELA', 0, NULL, '2023-07-18 10:06:55', '2023-07-18 10:06:55', NULL),
('8831af4f-be2a-412a-b4ff-abf9f3a4db6b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b714ac66-cb0e-4418-8644-25c8edb65f3b', 14802, '-', 0, NULL, '2023-07-05 17:58:29', '2023-07-05 17:58:29', NULL),
('885dbf36-51c5-46ce-81a3-d9bb4c226cca', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8b4f61af-3d19-4a04-8722-6879550d84a3', 14881, 'LOAIZA DOMINGUEZ SISSEL LIANA', 0, NULL, '2023-07-07 18:06:56', '2023-07-07 18:06:56', NULL),
('890ad0a5-b370-428b-877f-8642072b6c15', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5866bc14-0811-4914-b70c-3c82a8afa525', 3, 'ROSALES LUCIANO YIDID KARLA', 1, NULL, '2023-07-07 10:16:54', '2023-07-07 10:17:20', NULL),
('898e460f-3890-4127-9849-199a1b002c5e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c27902cd-baa3-4b77-9628-2c37a5758ca8', 14942, 'ANGELES CABANA EVELYN ANGELICA', 0, NULL, '2023-07-10 18:36:16', '2023-07-10 18:36:16', NULL),
('8994d3b3-329d-49f1-96c5-2babb000895d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e1939770-1258-4726-80ae-9d865b75a3e0', 14861, 'CHAVEZ CARRILLO ORIANA INGRID', 0, NULL, '2023-07-07 12:23:59', '2023-07-07 12:23:59', NULL),
('89d9022d-f004-4522-b3bd-01da569afcaf', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ea8173d3-2824-484a-9047-fdffce9a1d5d', 15067, 'SHUAN RODRIGUEZ JHOJAN RAÚL', 0, NULL, '2023-07-17 17:08:23', '2023-07-17 17:08:23', NULL),
('89e0a66f-7374-43f9-af31-347fae246ad2', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '468a52b6-fa10-4fc8-9d67-d71373e85a42', 14872, 'VILCHEZ MILLA LUCA ADRIANO', 0, NULL, '2023-07-07 17:38:08', '2023-07-07 17:38:08', NULL),
('8a9a76d9-e024-415e-9c53-0df322c6de29', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '29d35164-e47f-3e51-9743-5182a0391764', '2a8daa9b-8396-413d-bc2f-9832d1bcd3b5', 11, 'VILLANUEVA CACHA YAQUELIN YANCEN', 0, NULL, '2023-07-17 17:05:36', '2023-07-17 17:05:36', NULL),
('8aca66ac-4f55-4870-a61c-cbdf98e608fa', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1ddb4765-5755-433c-9f0a-f5cf15236cf3', 14767, '-', 0, NULL, '2023-07-05 15:14:02', '2023-07-05 15:14:02', NULL),
('8b5d143d-f03b-4907-be46-9052544650c5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4a10e215-c439-47db-bae7-5e33f8ac3b87', 15080, 'ROSALES CALHUA JOAB JOEL', 0, NULL, '2023-07-18 09:17:10', '2023-07-18 09:17:10', NULL),
('8ba0e6b4-7137-47bc-b39b-5c34afd9cace', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '68a309b8-32d6-48e5-a8a7-0a3aec95f98f', 14832, 'ESPINOZA PERNIA BEYSI MAYUMI', 0, NULL, '2023-07-06 17:20:03', '2023-07-06 17:20:03', NULL),
('8c3e5134-a28b-4f18-b98d-802793096e73', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2d277759-fec7-4661-8d07-7aa16beebf65', 14867, 'HUAYTA QUISPE TIFFANY LUANA', 0, NULL, '2023-07-07 16:51:38', '2023-07-07 16:51:38', NULL),
('8ce7eae0-5947-4728-aeae-1d3e69063af6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b7e0ea0e-f094-4f2b-a7d0-2ea654b122cb', 14788, '-', 0, NULL, '2023-07-05 16:49:37', '2023-07-05 16:49:37', NULL),
('8ce8d3a6-2f5f-4c93-a973-d0cc91ac37e8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e60f109e-80c4-4fcd-a539-97ee0c97df08', 14836, 'BARRETO AGUILAR RELY XIMENA', 0, NULL, '2023-07-06 18:14:03', '2023-07-06 18:14:03', NULL),
('8d38d7ab-a1f2-4c0a-9494-5315bc5a6851', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4bb8b232-9ba7-4243-88fb-84ed25cc0b62', 5, 'ALVA ROBLES ROSALY - 40759054', 1, NULL, '2023-06-22 11:11:55', '2023-06-22 11:16:03', NULL),
('8d8366e6-3319-41c5-8d2e-c200e0335478', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '7876c830-02f7-4f15-9776-fd7cad93a503', 14864, 'ROSALES VILLACORTA EDRIAN LEONEL', 0, NULL, '2023-07-07 15:36:09', '2023-07-07 15:36:09', NULL),
('8d8a7f81-54ba-4403-9228-94b8943d7668', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '68a309b8-32d6-48e5-a8a7-0a3aec95f98f', 14994, 'ESPINOZA PERNIA BEYSI MAYUMI', 0, NULL, '2023-07-11 18:53:16', '2023-07-11 18:53:16', NULL),
('8dbc5dec-9fb9-4c0c-b55c-1e436634e288', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c852ba20-5c6d-46ec-af1b-5ceca976f73c', 14970, 'PAUCAR RODRIGUEZ KRYSTEL GIMENA', 0, NULL, '2023-07-11 15:16:26', '2023-07-11 15:16:26', NULL),
('8e0e6154-c9c5-4aef-8a07-1ecabab42ae7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '84e59df8-b3f3-4be1-a6b4-e2cc5075ff65', 15030, 'LUCIANO LOLI BRANDON YOSEP', 0, NULL, '2023-07-13 11:50:30', '2023-07-13 11:50:30', NULL),
('8e3dd7dd-9d19-427d-a814-ad88d2c92cad', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f389b8f8-37e6-4eb6-94ad-697b14c73c29', 14884, 'LOPEZ RIMAC IVANNA ALEJANDRA', 0, NULL, '2023-07-07 18:31:20', '2023-07-07 18:31:20', NULL),
('8e97ae07-3f23-418d-b94c-53c65ab08f13', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '806cb0a2-3a42-45f7-b4a4-54899c8b7203', 15031, 'HARO RICRA JHASIEL FABIAN', 0, NULL, '2023-07-13 15:13:44', '2023-07-13 15:13:44', NULL),
('8e98589b-9c10-4f53-922d-52276455d2d6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '67f7439d-8b83-4384-b6b3-fe02f8e9bcea', 14900, 'FIGUEROA PANAIFO CESAR MIGUEL', 0, NULL, '2023-07-10 09:05:27', '2023-07-10 09:05:27', NULL),
('8eecd831-ffbb-4f3c-a251-db0174aa2cce', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ac9bd3d4-5217-4ed5-8b35-ea29bfa99e58', 14860, 'AGUILAR RAMIREZ ISAAC ALEJANDRO', 0, NULL, '2023-07-07 12:07:37', '2023-07-07 12:07:37', NULL),
('9002bb9c-179c-492e-9a5d-4becfd4b5b18', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '9ee49e59-2fbe-4ae2-bf69-2c9464050ff6', 14978, 'DAVILA BERMUDEZ JEYKOB AXHEL', 0, NULL, '2023-07-11 15:38:35', '2023-07-11 15:38:35', NULL),
('9059d0d7-3672-4e73-8e9e-01678e8f7a20', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'd4961190-76f9-4c22-9b51-729aa008fed3', 14893, 'DE LA CRUZ MINAYA JHON MARCELO', 0, NULL, '2023-07-07 18:54:45', '2023-07-07 18:54:45', NULL),
('90938862-f056-433c-99f6-8a13c16aded4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4c925972-18a8-42a9-89ff-02b22dcb3d24', 14863, 'ANTUÑEZ QUIROZ FAVIO STEPHANO', 0, NULL, '2023-07-07 15:08:26', '2023-07-07 15:08:26', NULL),
('9117238e-1e74-493a-86a7-8c0bb565a7da', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '3426186e-f83c-4fde-9dcf-ccbb825f0544', 7, 'KRISTEN LUCIA DIAZ ESCALENTE', 0, 'EL PAGO LO REALIZÓ DE DOS MESES, JUNIO Y JULIO', '2023-07-11 18:57:16', '2023-07-11 18:57:16', NULL),
('91840012-017e-4d88-b3fd-0e3e52f416f6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '27b43add-a9d5-41d5-b035-e728038cdef4', 14794, '-', 0, NULL, '2023-07-05 17:34:30', '2023-07-05 17:34:30', NULL),
('91f909a6-bbb2-499c-af28-ea34b83f8a59', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'de65f04d-9982-4157-b2e4-d5b2a911c484', 14912, 'MOSQUERA DAMIAN ANA', 0, NULL, '2023-07-10 15:43:51', '2023-07-10 15:43:51', NULL),
('94d22eb1-e882-4db6-8740-f333059ac5ea', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'df855961-eda1-467a-9a1e-27d67eb07287', 14848, 'BRONCANO RÍOS JOSTIN RICARDO', 0, NULL, '2023-07-06 19:11:37', '2023-07-06 19:11:37', NULL),
('960ff6ca-6c41-4b23-930f-97019d2f3f1c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1ddb4765-5755-433c-9f0a-f5cf15236cf3', 14766, '-', 0, NULL, '2023-07-05 15:14:02', '2023-07-05 15:14:02', NULL),
('963ae159-5749-4cac-9053-902ac57dab50', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c2f89862-ee4b-4f41-a0d8-3fd9b25e2dfc', 15085, 'SAENZ ALTAMIRANO GUILLERMO ORLANDO', 0, NULL, '2023-07-18 10:13:29', '2023-07-18 10:13:29', NULL),
('96449254-0422-45ec-997b-7957c8177b8d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'eae15587-0dff-4f49-a189-d13c9665aed1', 15077, 'DEXTRE GOMEZ FABIAN YAZID', 0, NULL, '2023-07-18 09:13:38', '2023-07-18 09:13:38', NULL),
('9716aa1f-316a-4fec-ac38-718aea4469d1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '9425b171-23bf-45cb-9d60-a430b105bc0d', 14967, 'CHECA VASQUEZ ANDREA ALEXANDRA', 0, NULL, '2023-07-11 15:03:28', '2023-07-11 15:03:28', NULL),
('987d3c59-2f15-4a40-b7bf-6f393b5fc968', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'aa20eb59-fb0c-495b-9e2f-a6e2efeb4825', 14936, 'ZAPANA LLALLIHUAMAN BRIGITTE STEFANNY', 0, NULL, '2023-07-10 18:18:32', '2023-07-10 18:18:32', NULL),
('9b978ada-be92-4e5b-afe5-9381789a4d0c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2e8ea8ff-097e-43a7-94a2-77a330da3f34', 14952, 'ONCOY LEON KEYSY MITSUKO', 0, NULL, '2023-07-10 19:03:39', '2023-07-10 19:03:39', NULL),
('9ca7df4d-3ab9-4a57-8405-dcd9d4134763', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '86d180b5-5b08-4388-a455-42dbdbc21d80', 14858, 'LAZARO BLAS ZOE VALENTINA', 0, NULL, '2023-07-07 11:32:29', '2023-07-07 11:32:29', NULL),
('9cdd8eda-8c30-427d-8195-a8a296fabb01', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '135d7ce6-d162-4028-8044-2e54021f6aff', 14932, 'ROLDAN LAZARO ROMINA DAYANA', 0, NULL, '2023-07-10 18:05:07', '2023-07-10 18:05:07', NULL),
('9eb08d88-4a15-44ec-b268-c721b576e013', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '046eba5d-31e6-44ac-ab9f-91ee3253176c', 14917, 'ASENCIOS ROMERO BENYAMIN ANGELO', 0, NULL, '2023-07-10 17:04:06', '2023-07-10 17:04:06', NULL),
('a0aab820-7fc6-4291-adb4-8a03d16fb332', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '717c22e7-4ef2-4852-95e3-c4aa4979a359', 14783, '-', 0, NULL, '2023-07-05 16:30:10', '2023-07-05 16:30:10', NULL),
('a23c137e-5d54-4e34-ae64-59e3f8744550', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'db37f7b0-8986-4f15-9927-98a3e07f13b2', 14760, '-', 0, NULL, '2023-07-05 11:13:31', '2023-07-05 11:13:31', NULL),
('a24f9843-de69-443a-bafb-2204550d7697', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'eb9c27a5-d403-4876-bcef-3086a4e8af4b', 14954, 'SOTO ESPIRITU SAYURI MARIEL', 0, NULL, '2023-07-10 19:10:16', '2023-07-10 19:10:16', NULL),
('a3b7dc6b-4762-4967-b4e6-d96ed1e9f588', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '40db7945-16d8-4300-9860-5bd9dc263e8e', 14907, 'FLORES NIEVES RHAZIEL LEONARDO', 0, NULL, '2023-07-10 11:47:32', '2023-07-10 11:47:32', NULL),
('a4916544-2f64-4d06-99cc-55aea376ace5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f76c2f66-2781-4185-888f-8cae4606010e', 14886, 'RAMIREZ LOPEZ SHANTALL NATALY', 0, NULL, '2023-07-07 18:35:15', '2023-07-07 18:35:15', NULL),
('a4c10a0a-c96e-4f41-907b-d8be466b007e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '153c86ea-ace1-4374-9700-0b0c09940a22', 14758, '-', 0, NULL, '2023-07-05 10:49:27', '2023-07-05 10:49:27', NULL),
('a4dcf9d2-9a14-42e3-814e-efe634c22a4c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '3ed5afa6-7bf1-4b40-ba93-d75e9549df4d', 14878, 'LAZARO HORNA JEREMY ADRIAN', 0, NULL, '2023-07-07 17:53:23', '2023-07-07 17:53:23', NULL),
('a51e0cfe-b44b-4d40-b399-b5da211bc99e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a04a1abb-980a-4fb2-ae5c-875fd11967b0', 14894, 'VALDIVIA GONZALES SEBASTIAN HERWIN', 0, NULL, '2023-07-07 19:01:58', '2023-07-07 19:01:58', NULL),
('a7c1c4b0-5990-4fbb-baf2-4b353d37a313', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c27902cd-baa3-4b77-9628-2c37a5758ca8', 14801, '-', 0, NULL, '2023-07-05 17:55:25', '2023-07-05 17:55:25', NULL),
('a7d1b1ae-b59e-43f6-9ae4-fbd1e7ad763a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '653bff03-7ea1-4dda-858f-9423953d9907', 15083, 'PALACIOS FIGUEROA DANITSA ABIGAIL', 0, NULL, '2023-07-18 10:05:37', '2023-07-18 10:05:37', NULL),
('a7e9bc67-190d-4bfe-a5f0-1e881f0d6b05', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8afe2807-8987-4570-8fd7-c3a4e586f30e', 14838, 'ORE HUAMAN MARIANA EMELY', 0, NULL, '2023-07-06 18:43:45', '2023-07-06 18:43:45', NULL),
('a8d7a284-fe05-45f9-91d6-489be450fca9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '773d262f-5095-47cf-8370-494e1de6f330', 14820, 'RAMIREZ MORALES ALEXANDRA SHIRLY', 0, NULL, '2023-07-06 11:09:01', '2023-07-06 11:09:01', NULL),
('a8febe96-d998-4792-ac39-fa4bc9ec5a54', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5af73596-7f2b-4a50-844c-adb54b17d711', 14892, 'CAMACHO ESCUDERO GIMENA GRACIA', 0, NULL, '2023-07-07 18:52:42', '2023-07-07 18:52:42', NULL),
('a94785ec-1919-4547-bf6f-7bcd3680d54a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'aa77f892-cd5c-49b6-af48-47a231622bdc', 15008, 'TOLENTINO RODRIGUEZ THIAGO MILAN', 0, NULL, '2023-07-12 17:36:24', '2023-07-12 17:36:24', NULL),
('a968f85a-2d32-4649-9ac1-abb30eac5868', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'fcb627d5-874c-4083-a394-b97a750c8f9c', 15027, 'Aguedo Miranda Valery Sophya Sahori', 0, NULL, '2023-07-13 10:27:32', '2023-07-13 10:27:32', NULL),
('a9c49536-d73d-42b9-b902-ed9a4e33213f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5866bc14-0811-4914-b70c-3c82a8afa525', 14851, 'ROSALES LUCIANO YIDID KARLA', 0, NULL, '2023-07-07 10:18:37', '2023-07-07 10:18:37', NULL),
('b1285fd9-e204-4754-b126-ff226872a508', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '668314f5-c79c-4aaa-a8ab-f5ef3de34dd5', 14805, '-', 0, NULL, '2023-07-05 18:33:08', '2023-07-05 18:33:08', NULL),
('b2085533-7bc0-4043-9940-7c55925e213e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'fa7d21c5-158d-4b54-a2c3-7497caf5fc0a', 14903, 'YAURI TOLENTINO YORDAN YENERSON', 0, NULL, '2023-07-10 10:43:47', '2023-07-10 10:43:47', NULL),
('b2694f32-1645-4bb5-80ad-6a542de40092', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7ec17f3d-3034-4059-a2c8-ac782ebc8225', 14995, 'ROMERO ALBORNOZ MIGUEL ANTONIO', 0, NULL, '2023-07-11 18:58:56', '2023-07-11 18:58:56', NULL),
('b2c852e8-0536-4b60-976e-5a2a6e9c5cab', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e6404a1e-8bde-4a04-aa05-29e2b4d4b52d', 14955, 'Joffre Alvaro FIGUEROA LAZARO', 0, NULL, '2023-07-10 19:17:33', '2023-07-10 19:17:33', NULL),
('b36e0270-641c-4159-b979-fc1b9691c03d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '662644b6-3c18-4ced-9a9a-d330d0ab2f3b', 14786, '-', 0, NULL, '2023-07-05 16:43:04', '2023-07-05 16:43:04', NULL),
('b3a026fa-3cbe-49c9-bfce-a7041d73b77b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6734cd53-6009-483d-a62a-67d35ddabf96', 15019, 'OBREGON REYNALTE JIMENA KIARA', 0, NULL, '2023-07-13 08:39:19', '2023-07-13 08:39:19', NULL),
('b3b1ed23-0849-4dbd-853a-96899a9a4405', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c8eff333-16b1-44a6-a457-fc60722e56cc', 14920, 'LLAGUNO SALAZAR RODRIGO GABRIEL', 0, NULL, '2023-07-10 17:18:37', '2023-07-10 17:18:37', NULL),
('b5038438-33ad-453e-a8de-475d2a79dd60', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ae3c38f6-b7b2-4473-9dea-8843efce0429', 14922, 'TEJADA COTRINA MARIA LUCIANA', 0, NULL, '2023-07-10 17:39:17', '2023-07-10 17:39:17', NULL),
('b5d56936-f308-47ad-9f0b-d7f5ca8b88d0', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ff20f2fd-afef-4056-8113-c0e4b9ec0b82', 14829, 'TRAVERSI SALAZAR LIONEL DANTES', 0, NULL, '2023-07-06 17:00:41', '2023-07-06 17:00:41', NULL),
('b62697bf-4e88-47c4-9d02-d0cd3aace012', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '54027b40-f26a-4ef5-ad55-672d15418884', 15065, 'ROSAS ROSALES NAOMI ROSE', 0, NULL, '2023-07-17 16:43:09', '2023-07-17 16:43:09', NULL),
('b7211b0f-5012-4e77-aefa-50973a046f7b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '29c7c573-5cca-4ac1-a380-dcca958f2496', 14841, 'LOPEZ OSORIO ALONDRA JOYCE', 0, NULL, '2023-07-06 18:58:26', '2023-07-06 18:58:26', NULL),
('b76eeb67-20a2-456b-8b85-54fdb5018fdb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'cf6f963c-6fdf-4450-a82b-92da98badb73', 15047, 'ROSALES YANAC DINA EVELINA', 0, NULL, '2023-07-14 18:59:56', '2023-07-14 18:59:56', NULL),
('b7e04b55-03c6-4577-ba37-1f4929b87fb9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ac4ca1ee-7b75-431a-80d2-1396f48f3212', 14799, '-', 0, NULL, '2023-07-05 17:50:50', '2023-07-05 17:50:50', NULL),
('b82b4e8e-4115-42c8-8213-09a94026425b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '7194e4fe-0f3e-4580-be9d-a8135e813937', 14749, 'BAÑEZ GODOY DANIEL EVILSON - 61480353', 0, NULL, '2023-07-04 00:27:40', '2023-07-04 00:27:40', NULL),
('b842a4a8-9784-4ede-9390-59ff0a72f14f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ec13b2c5-b702-45a8-bdd3-30669010a45a', 14839, 'GARCIA RIVERO DIEGO JESUSEDUARDO', 0, NULL, '2023-07-06 18:51:43', '2023-07-06 18:51:43', NULL),
('b955d106-41e1-48e3-a938-6cdd074dd49d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ed39843d-dfa0-4ced-8e9d-f42ef501c614', 14989, 'DURAN LAZARO VERONICA ALEJANDRA', 0, NULL, '2023-07-11 18:15:08', '2023-07-11 18:15:08', NULL),
('b9d3199f-b04a-49a5-b634-6c3de2ae87fa', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7130f6f5-3c3c-457d-a23d-588d02e1eef9', 14946, 'FIGUEROA LAZARO SOFIA CRISTINA', 0, NULL, '2023-07-10 18:45:19', '2023-07-10 18:45:19', NULL),
('b9f82f9d-dd2a-4b61-9971-117de3fbefcc', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8cabafe5-6df1-4e7c-9472-158c35c61e74', 14916, 'MATOS ORTIZ SOFIA AMABEL', 0, NULL, '2023-07-10 17:02:20', '2023-07-10 17:02:20', NULL),
('bb00eecd-090c-4b23-a76f-03dc10bf5381', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '3d0a6564-9d88-4c94-be65-4f3fdd14c198', 14778, '-', 0, NULL, '2023-07-05 15:55:04', '2023-07-05 15:55:04', NULL),
('bbe800ef-f8a5-4c1f-abc1-bddebeaf65f4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f389b8f8-37e6-4eb6-94ad-697b14c73c29', 12, 'LOPEZ RIMAC IVANNA ALEJANDRA', 0, 'DOS HORAS DE CLASES DEL NIVEL AVANZADO KIDS III', '2023-07-17 19:22:10', '2023-07-17 19:22:10', NULL),
('bc15c82b-7477-419e-b5bf-6776673d5bb7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '269ac0f6-7ac4-44ec-ba54-b491e305d602', 14902, 'CACHA DIAZ ARIANA VALENTINA', 0, NULL, '2023-07-10 09:30:18', '2023-07-10 09:30:18', NULL),
('bc3c9cf0-9e88-4813-8150-755a4d1afe8f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '2f0d23af-bd7e-4774-87d5-8afdfe656b2b', 14823, 'REEVES GONZALES DAVID SANTIAGO', 0, NULL, '2023-07-06 12:18:17', '2023-07-06 12:18:17', NULL),
('bc96165f-61a5-45bb-8bd4-158904e744a4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '12fec5bc-d50a-44c5-a1cf-675a638b6fd7', 14800, '-', 0, NULL, '2023-07-05 17:52:11', '2023-07-05 17:52:11', NULL),
('be2ad905-a86c-415a-ad1b-e5a396d999ad', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '2e8ea8ff-097e-43a7-94a2-77a330da3f34', 14951, 'ONCOY LEON KEYSY MITSUKO', 1, NULL, '2023-07-10 19:01:50', '2023-07-10 19:02:50', NULL),
('bf3cfef6-681f-41a2-9640-1ffbfb5753e1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '67a0c334-b1ea-43bc-ae26-291d5a51d7b4', 14769, '-', 0, NULL, '2023-07-05 15:31:06', '2023-07-05 15:31:06', NULL),
('c132dde7-eb2d-4d49-82d7-ea93ee01345e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'e45ecedb-27e5-48a8-b075-4703d4cea0ea', 14905, 'SPETALE RIOS VALENTINA ALONDRA', 0, NULL, '2023-07-10 11:12:36', '2023-07-10 11:12:36', NULL),
('c1e910e5-2da0-4286-a674-9d1995ae35d7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a0be0d3a-7b2c-4040-a2d7-a39b2e151096', 14909, 'PAREDEZ GUERRERO ALEX JAIR', 0, NULL, '2023-07-10 15:27:54', '2023-07-10 15:27:54', NULL),
('c21e3c74-1e07-4069-86b9-2e6d6d6654c4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '499a0e05-37ab-4785-a817-2c8852e7d5f8', 14896, 'PALMADERA MILLA VILMA LUZMILA', 0, NULL, '2023-07-07 19:41:35', '2023-07-07 19:41:35', NULL),
('c26c3548-fbb8-4651-a7bf-ef38d02ebeba', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'd5d67251-c149-4148-ba90-e5204e68b881', 14785, '-', 0, NULL, '2023-07-05 16:35:10', '2023-07-05 16:35:10', NULL),
('c27b8ef1-a4e9-4248-bd85-b91cc454cec8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'db156d3d-f525-4044-a87b-05039225ec31', 15071, 'HURTADO ESPINOZA ANGYE NICOLE', 0, NULL, '2023-07-18 09:06:07', '2023-07-18 09:06:07', NULL),
('c28b6125-5e99-41a3-bbaf-363e7caa417c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c0f39504-ac52-4e28-82a7-f91f5c0a15cd', 14921, 'COLLAS BERNUI JAIME LEONARDO', 0, NULL, '2023-07-10 17:24:48', '2023-07-10 17:24:48', NULL),
('c37975d7-71fe-4807-8db2-3d9e43c8290d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '67f7439d-8b83-4384-b6b3-fe02f8e9bcea', 15039, 'FIGUEROA PANAIFO CESAR MIGUEL', 0, NULL, '2023-07-14 10:02:25', '2023-07-14 10:02:25', NULL),
('c4908672-b86f-48b3-8f18-abdc51a72ab0', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '36e9f3ea-fd52-4644-8bd8-af768cf875b8', 15070, 'HENOSTROZA LEON ANGEL DAVID', 0, NULL, '2023-07-18 09:04:58', '2023-07-18 09:04:58', NULL),
('c49e0beb-69ab-417b-9513-36d3eae2088b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '753242bc-d4ce-4239-8829-b6550fb09b75', 14825, 'DAMIAN GAYTAN LINDSAY SHAROL', 0, NULL, '2023-07-06 12:34:43', '2023-07-06 12:34:43', NULL),
('c7291c49-67af-4189-ad62-e687049acb29', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '23dcc97b-ce3b-4a38-9dc5-6655d5a26f2b', 15037, 'MEJIA OSORIO ZAMIRA ALEXANDRA', 0, NULL, '2023-07-13 18:53:42', '2023-07-13 18:53:42', NULL),
('c75daeb5-ffa7-4192-b755-348209ddffb8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c1f02a5b-0084-435e-aba0-9d7564fd2ca6', 14914, 'MUSALEM SCHWARTZ SEBASTIAN ANDRES', 0, NULL, '2023-07-10 16:30:33', '2023-07-10 16:30:33', NULL),
('c8ed2c84-e626-4a95-8287-6315f43d4335', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c1b1a085-6e33-4ac1-bbf4-27c71ce88497', 14983, 'OBREGON SAAVEDRA VALENTINA ROUSSE', 0, NULL, '2023-07-11 17:48:32', '2023-07-11 17:48:32', NULL),
('c91c8245-ee3e-488b-8488-b778d1e0c7d7', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f5934953-a3a2-427b-8e87-9f61c3284b39', 14808, '-', 0, NULL, '2023-07-05 18:39:37', '2023-07-05 18:39:37', NULL),
('c969bd2a-7d73-4760-97af-bade43099ba9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'bc41332c-7c32-402b-9dca-7a77faa41690', 14898, 'CORONEL VILCA ROMMEL HANSEN', 0, NULL, '2023-07-10 08:45:11', '2023-07-10 08:45:11', NULL),
('c97fd50e-d2f5-4058-873d-d4bf7d08a48c', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f011de96-7392-4802-9a66-3f58cde4242d', 15075, 'PAUCAR MALLQUI ALEX RAFAEL', 0, NULL, '2023-07-18 09:10:49', '2023-07-18 09:10:49', NULL),
('c9c230bd-0854-4240-ab60-bf93e081beaf', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '384f9c30-3adb-44c8-9675-6cdc5e8839ef', 14941, 'RODRIGUEZ SALAS KARY DEL ROSARIO', 0, NULL, '2023-07-10 18:33:27', '2023-07-10 18:33:27', NULL),
('ca5a79cb-90cd-42af-9c3b-5880c138f2eb', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '16481297-8fa2-473a-8c49-5230bbe20d75', 15059, 'BUENO AREVALO SOFIA SILVANA', 0, NULL, '2023-07-17 11:41:42', '2023-07-17 11:41:42', NULL),
('cb350c03-06e4-4c55-b4a7-575b8d66da14', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '45b0770f-df7e-4245-ba07-4481f00c573a', 15036, 'CABALLERO NIETO JERIMOT GABRIEL', 0, NULL, '2023-07-13 17:46:51', '2023-07-13 17:46:51', NULL),
('cd341994-8296-4b2e-a8aa-d843bf4643f5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '729423f1-67f3-4a4d-b4cd-c283cc2d9d48', 15056, 'CAMONES ZAPATA LUCIANA CAMILA', 0, NULL, '2023-07-17 10:07:16', '2023-07-17 10:07:16', NULL),
('cdde7566-1939-4453-89e1-b45a0f4726b0', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '35aeca80-c5c6-4483-991c-43a3ef89d5a0', 15020, 'MUÑOZ BARRIOS MATHIAS JHAIR', 0, NULL, '2023-07-13 08:44:37', '2023-07-13 08:44:37', NULL),
('ce35367e-b006-49b4-a325-53a52971130b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '0d9900a7-8707-4bc5-92ac-70dc09404aab', 14919, 'CHILENO POMA YEREMI ALDAHIR', 0, NULL, '2023-07-10 17:07:59', '2023-07-10 17:07:59', NULL),
('cea4da1e-f57d-4604-8883-adcb28d9e331', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'edafe6f5-791d-41ad-b645-5687781e1cc2', 6, 'BELEN SIGUEÑAS DELICIA NOELIA - 78627359', 1, NULL, '2023-06-27 16:12:21', '2023-06-27 16:14:47', NULL),
('cfff1905-0929-4c7c-8ca6-6b5f1e0602c9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '87373f7e-fa05-4af9-a811-9029939a379c', 14822, 'TINOCO USUA MAURICIO MARTIN', 0, NULL, '2023-07-06 11:32:34', '2023-07-06 11:32:34', NULL),
('d00d9ee0-505f-427b-bf4d-e873f76cd11a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b5c57a54-042d-4ab9-bc33-ecbfb5cb4ad3', 14928, 'CADILLO TORRE NATALY CIELO', 0, NULL, '2023-07-10 17:55:49', '2023-07-10 17:55:49', NULL),
('d03533c0-ea9f-4ca8-bcac-b8bbc22f0d8f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8058aa88-0139-43a4-a7a0-7a8f4f881921', 14885, 'TANABE MAGUIÑA TOMIKO NATHALIE', 0, NULL, '2023-07-07 18:33:00', '2023-07-07 18:33:00', NULL),
('d1e45907-920d-47cd-80df-502e08c2dc5d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '97513171-9d99-4f51-999c-0e02a2d2b948', 14869, 'LEYVA OLIVEROS RUSSELL MANUEL', 0, NULL, '2023-07-07 17:19:28', '2023-07-07 17:19:28', NULL),
('d1f7bd78-eec5-47eb-a260-20dc395ecb85', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '52ae371f-b80b-4de9-8071-c1b793600a51', 15022, 'ROJAS FARFAN DIANA CAROLINA', 0, NULL, '2023-07-13 08:57:49', '2023-07-13 08:57:49', NULL),
('d276d8df-cfd6-4caa-af86-e0c8ece18b55', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '87bd7aea-14ca-4eab-8efe-b4bf5a0967fe', 14787, '-', 0, NULL, '2023-07-05 16:46:18', '2023-07-05 16:46:18', NULL),
('d3afb8e4-6d3f-4977-89fa-b79183c05cf9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '91d3e732-f5d6-4313-9f45-d6df865b0415', 14944, 'ROJAS COCHACHIN VALERIA APRIL', 0, NULL, '2023-07-10 18:38:11', '2023-07-10 18:38:11', NULL),
('d48aa434-bd6f-4070-a3d8-ae93b8bd1a6d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '5a65e57e-6ad6-435d-b9e6-d65f4199366b', 14984, 'JANDRO LESMES GARCIA HUAMAN', 0, NULL, '2023-07-11 17:53:15', '2023-07-11 17:53:15', NULL),
('d5dcaae2-d4ec-4e3c-8d21-619b7c5dbccc', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '83a4729e-194a-4518-8a21-8ef20de79029', 14958, 'CAMONES VEGA EMER MERVYN', 0, NULL, '2023-07-11 09:04:49', '2023-07-11 09:04:49', NULL),
('d62be0bb-409a-479b-af5f-6147b108d303', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '8f0ca397-c4a8-4c51-8de9-7eb04742a9fd', 1, 'PAUCAR ALVA ZALETH JESUS - 76022298', 1, NULL, '2023-06-19 20:30:19', '2023-06-19 20:31:40', NULL),
('d6a752ee-4bbe-40e5-92b7-532045f42448', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ba0035dd-0754-4323-8724-271376ba7170', 14796, '-', 0, NULL, '2023-07-05 17:39:50', '2023-07-05 17:39:50', NULL),
('d85d0af5-a583-4f46-a26e-af924b6a56f1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'fa7d21c5-158d-4b54-a2c3-7497caf5fc0a', 14904, 'YAURI TOLENTINO YORDAN YENERSON', 0, NULL, '2023-07-10 10:44:24', '2023-07-10 10:44:24', NULL),
('d896086f-4d3e-4239-bdad-eb6b49323977', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ce082ad3-272b-490d-9173-67877ed38276', 14751, '--', 0, NULL, '2023-07-05 09:38:11', '2023-07-05 09:38:11', NULL),
('dae2e888-1cb5-4c34-99b4-68f64c2761e5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6414824a-2ff9-4001-a0a4-f255afea330f', 14763, '-', 0, NULL, '2023-07-05 11:45:36', '2023-07-05 11:45:36', NULL),
('db401414-ef43-492d-a9fb-303d2eec6e31', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'ecfd3729-aa1c-423d-a635-7d377cafc590', 14853, 'SANCHEZ SANCHEZ RUBEN WILDER', 0, NULL, '2023-07-07 10:23:09', '2023-07-07 10:23:09', NULL),
('db5cdc22-c97d-455b-a8ad-d655911ce3ce', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '68d93b6a-da8a-4db6-b24f-eca1c6d84fb5', 14810, 'MEJIA CHAVEZ NELSON FRANCISCO - 61233268', 0, NULL, '2023-07-05 18:52:56', '2023-07-05 18:52:56', NULL),
('dc79e9e2-8e4b-46d3-8c12-ea11ee10c610', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8f96c99d-43fb-4e6c-a65b-60df2682f070', 14911, 'SALVADOR LOPEZ DANIELA ASTRID', 0, NULL, '2023-07-10 15:41:36', '2023-07-10 15:41:36', NULL),
('dc81659e-b304-49fd-904e-c1e0fa06dae8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6e5a4278-4448-4364-8296-0a4f11be9893', 14950, 'ONCOY LEON SAMANTHA FATIMA', 0, NULL, '2023-07-10 19:00:28', '2023-07-10 19:00:28', NULL),
('dcf846d3-c4ea-4858-ae45-6aca1dce0269', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '42baad27-c008-415d-acb9-2977d31767b8', 14807, 'MEZA BRICEÑO OZIL VLADIMIR - 78473581', 0, NULL, '2023-07-05 18:36:46', '2023-07-05 18:36:46', NULL),
('dd22c80d-033b-416b-b2b4-8c5b134be04d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c9dfde4c-6f83-4264-8d84-2096fab96a29', 14915, 'ROSALES HUAMAN SOFIA ROSALINDA', 0, NULL, '2023-07-10 16:58:01', '2023-07-10 16:58:01', NULL),
('ddb5b810-1c63-4191-84be-255c562b11ff', '751bb71a-bae5-3a95-9896-afd2886b6ba3', '39804099-2bd7-38ef-a530-1112958dfb8f', '29d35164-e47f-3e51-9743-5182a0391764', 'fcb627d5-874c-4083-a394-b97a750c8f9c', 4, 'Aguedo Miranda Valery Sophya Sahori', 0, NULL, '2023-07-07 16:24:04', '2023-07-07 16:24:04', NULL),
('deb2a59a-638a-4bdb-aca6-77591fe64ca6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8e24331e-b1e9-49a3-8408-e5d7bcaedf38', 14870, 'ESCUDERO ESPINOZA ANDREA MARISSA', 0, NULL, '2023-07-07 17:31:13', '2023-07-07 17:31:13', NULL),
('def296a1-1f82-40f2-9e97-e346b8d890d3', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'fb655f0d-259f-4905-b125-08709c6d4688', 15014, 'SHUAN LEON DULCE MARIA FERNANDA', 0, NULL, '2023-07-12 19:00:49', '2023-07-12 19:00:49', NULL),
('df04c7f9-296b-4b79-a3d4-6e7c0cd08c58', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '97e87702-95bc-4dc2-82de-1a6c479355f6', 14924, 'DUEÑAS LAGUNA HAYLEY REICHEL', 0, NULL, '2023-07-10 17:44:30', '2023-07-10 17:44:30', NULL),
('dfa2f65c-f58a-4a5f-b5bb-8a47de23e0c1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8b9cd768-8660-45e5-8574-e38539c1742a', 15076, 'SILVA MALAVER OMAYRA ESTEFANI', 0, NULL, '2023-07-18 09:11:51', '2023-07-18 09:11:51', NULL),
('dfe48138-3e4c-40be-9515-8e0eaf8b12ac', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8f28bdb5-f28a-4e59-af64-8df1e3396759', 15042, 'AGUILAR CASTROMONTE SAUL EDER', 0, NULL, '2023-07-14 15:33:13', '2023-07-14 15:33:13', NULL),
('e09aabb6-c08f-44d0-b163-48df855fd6d3', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b9f05ded-f9d8-4222-b4da-884e0996939e', 15012, 'CASTILLEJO MEZA LADY ELENA', 0, NULL, '2023-07-12 18:55:51', '2023-07-12 18:55:51', NULL),
('e13727c2-e22a-4e97-9271-3996ae19fd0f', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '91c3175b-c026-4423-908c-ef09fbfc15b4', 14837, 'APOLIN NINAQUISPE GABRIEL ORLANDO NICOLAS', 0, NULL, '2023-07-06 18:39:20', '2023-07-06 18:39:20', NULL),
('e214b616-09ab-4cd5-b636-3992666b1fb6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'df855961-eda1-467a-9a1e-27d67eb07287', 14843, 'BRONCANO RÍOS JOSTIN RICARDO', 1, NULL, '2023-07-06 19:02:51', '2023-07-06 19:11:16', NULL),
('e26ffdeb-6cb5-4cf6-8674-6cfafe3593a0', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '864e227f-1e14-40bb-8171-19b4fae69b04', 15025, 'CASTRO VIDAL ALEJANDRA VALERIA', 0, NULL, '2023-07-13 10:20:02', '2023-07-13 10:20:02', NULL),
('e28294ec-b619-4dfb-8e1b-53797a08f246', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '740f9cd9-be62-4076-ab85-1c9deeb606c5', 15006, 'RODRIGUEZ SILVANO ADRIANO DANILO', 1, NULL, '2023-07-12 17:32:17', '2023-07-12 17:32:54', NULL),
('e4992736-df23-41ce-a8d9-8c2f19b196f9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1e462fab-32ec-4a84-baa8-bccb355de144', 14940, 'BARBUDO CHUQUI ADA CRISTINA', 0, NULL, '2023-07-10 18:30:56', '2023-07-10 18:30:56', NULL),
('e4c6aaae-8fe5-4c6d-9e95-b7e6e304306d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '0cb272f2-5240-453f-827e-a7c39bed8f82', 14793, '-', 0, NULL, '2023-07-05 17:26:03', '2023-07-05 17:26:03', NULL),
('e5ae070a-e4cd-4f4d-9d79-3be6d5d051f1', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'bcc995e1-b0fc-4ad5-b6ef-0e20b4ba3e74', 15060, 'TRUJILLO ROBLES HELEN ROXANA', 0, NULL, '2023-07-17 12:04:10', '2023-07-17 12:04:10', NULL),
('e70c03c7-d812-43ab-a650-5b6381c4176e', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b638a307-3da3-4086-a6b7-713f61e16371', 15001, 'PARI BAUTISTA ANDRE DEMETRIO', 0, NULL, '2023-07-12 10:10:44', '2023-07-12 10:10:44', NULL),
('e7d89dcf-6a3b-49cf-a723-05fff6201ce8', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'de65f04d-9982-4157-b2e4-d5b2a911c484', 14982, 'MOSQUERA DAMIAN ANA', 0, 'REFORZAMIENTO 1 HORA Y MEDIA', '2023-07-11 17:24:58', '2023-07-11 17:24:58', NULL),
('e7dc9905-bc7a-401c-b790-45b107d9e193', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'c10ade8e-5d6f-45d3-8a7a-4fee7eee78e5', 14784, '-', 0, NULL, '2023-07-05 16:32:34', '2023-07-05 16:32:34', NULL),
('e87feac8-c36d-4c6d-a32c-8f8bae6d50ce', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'b5f16c36-d31b-40b0-beb8-24bc474a275f', 14865, 'Aguedo Miranda Julioagustin David', 0, NULL, '2023-07-07 16:15:45', '2023-07-07 16:15:45', NULL),
('e89b57c9-21d5-4e77-9831-98d4c25ce92a', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'daf59530-83db-4253-8e8f-0fbbe0dfe74c', 14889, 'POMA TORRES ALEX PAOLO', 0, NULL, '2023-07-07 18:47:02', '2023-07-07 18:47:02', NULL),
('e964e03f-5734-43ef-85bc-52028a2cbd4b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '740f9cd9-be62-4076-ab85-1c9deeb606c5', 15007, 'RODRIGUEZ SILVANO ADRIANO DANILO', 0, NULL, '2023-07-12 17:35:23', '2023-07-12 17:35:23', NULL),
('eabb1aa0-d615-4fee-a3df-a9d41ac96579', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '445b0d4a-0a72-49e4-9cfa-ea8947673827', 14771, '-', 0, NULL, '2023-07-05 15:36:32', '2023-07-05 15:36:32', NULL),
('eb816f3c-1109-492c-a8d0-5068f0d6d9cc', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7c1c3971-1df5-414f-ac73-c09c0ab19008', 14966, 'INOCENTE CASQUIN CIELO YAHAIRA', 0, NULL, '2023-07-11 12:11:47', '2023-07-11 12:11:47', NULL);
INSERT INTO `recibos` (`id`, `id_serie`, `id_tipo`, `id_cuenta`, `id_estudiante`, `numero`, `nombre`, `fue_anulado`, `obervaciones`, `created_at`, `updated_at`, `deleted_at`) VALUES
('ee32f921-8683-4413-a4bb-819abe6dd056', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '6845e7ab-3448-4785-9fc5-6262e5da4303', 15013, 'ROJO PEREZ GIANFRANCO ROMULO', 0, NULL, '2023-07-12 18:58:46', '2023-07-12 18:58:46', NULL),
('ef02f0a5-da40-4472-869c-f68b9c4df4d4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7cc02a55-24b6-4de3-82b2-f148094bc4ee', 15011, 'AMBROCIO CHINCHAY BERTHILA MARGARITA', 0, NULL, '2023-07-12 18:29:57', '2023-07-12 18:29:57', NULL),
('ef46e5e0-1985-44e7-bcce-af4b823298f0', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '9c84198e-455e-4131-8396-b65f68685b4e', 14764, '-', 0, NULL, '2023-07-05 12:04:07', '2023-07-05 12:04:07', NULL),
('f1ce8422-5cdc-4657-9503-8e210102bb1b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '4dc8bba8-f938-43e0-b548-634dbb652ba4', 14901, 'MORENO REYES ANTUANETH NIKOLE', 0, NULL, '2023-07-10 09:21:21', '2023-07-10 09:21:21', NULL),
('f1ff880a-4384-4c16-a204-827ff4e00eab', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'fb2849a2-a445-469b-8b5d-0a4723d66d44', 14937, 'MUÑOZ RAMIREZ MATIAS ANDRE', 0, NULL, '2023-07-10 18:21:45', '2023-07-10 18:21:45', NULL),
('f243a4b9-787d-4db0-8f20-2f7374ab9503', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '170f89d8-12cb-4ab7-91a2-d2b89cb2c875', 14960, 'GONZALES SILVESTRE ARINNA NAYELY', 0, NULL, '2023-07-11 10:27:21', '2023-07-11 10:27:21', NULL),
('f2ea6dae-45ac-4c7f-8f43-a752fa388daa', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '0947f94b-c776-4366-8381-fcb1f3733d0f', 15062, 'LEON SALAZAR MARIANA ALLISON', 0, NULL, '2023-07-17 12:41:14', '2023-07-17 12:41:14', NULL),
('f5068ae6-72a1-4f8d-9ae0-2070adbb5176', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1abaf8ae-b0b7-4040-bdf7-c07d5e0ab10a', 15023, 'PAREDES RAMIREZ SUNY YADINA', 0, NULL, '2023-07-13 09:11:25', '2023-07-13 09:11:25', NULL),
('f57a8e71-b776-4677-b674-07d1838ba73d', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'd6ad50e3-d8b7-4e12-b044-5e97951c4a06', 14873, 'ROJAS RODRIGUEZ CRIHSTOFER NOEL', 0, NULL, '2023-07-07 17:40:04', '2023-07-07 17:40:04', NULL),
('f6b62fd4-1f5d-488b-a915-f664600b24ac', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', 'da64facd-9f0c-4933-99cc-e15e665c5575', 14831, 'SHISHCO SIVINCHA MARICEL ANDREA', 0, NULL, '2023-07-06 17:17:34', '2023-07-06 17:17:34', NULL),
('f6f2991b-dd57-4b48-b77c-e3a871d346a6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '1ca8ee1a-28ec-429d-a6bc-e9e888734ddd', 14855, 'CALDUA MILLA FLORENTINO FLORIAN', 0, NULL, '2023-07-07 11:16:19', '2023-07-07 11:16:19', NULL),
('f81d0e6b-10f6-428f-8c56-96e302a641a6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '015f363b-7e65-4673-97e6-488201f1e0c5', 14949, 'CAMILA MARELY ACUÑA TOLEDO', 0, NULL, '2023-07-10 18:58:45', '2023-07-10 18:58:45', NULL),
('f9f19fd8-c145-4523-b32f-64f6b4f48b53', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '73e938bb-30a3-4285-a378-18391b64d240', 14962, 'COPITAN ACUÑA JAMES ISRAEL', 0, NULL, '2023-07-11 10:52:37', '2023-07-11 10:52:37', NULL),
('fb29b010-1773-4dad-8f20-d9c0e5bf7770', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '8e3a060f-d1f7-4ca2-9783-c59092a2b9c6', 15024, 'ALDANA TOVAR THOMAS ENRIQUE', 0, NULL, '2023-07-13 09:59:26', '2023-07-13 09:59:26', NULL),
('fb524ca4-3685-48c1-b67e-adc039ded335', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f0218127-8487-4902-b919-e80162e8badd', 14817, '-', 0, NULL, '2023-07-06 10:04:29', '2023-07-06 10:04:29', NULL),
('fd373663-1247-4ffa-bce2-23cd7685fa2b', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '44aeafb6-2eb5-4805-90c4-35bc95a62061', 14957, 'CAMONES VEGA EFRAIN ELEAZAR', 0, NULL, '2023-07-11 09:02:57', '2023-07-11 09:02:57', NULL),
('fde6fa9d-c9d1-4793-b432-8e4c33b200b6', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'f9aaa6ef-7003-49cf-9c02-e1ec02719f44', 15073, 'COAQUIRA HERNANDEZ PIERO ALEXANDER', 0, NULL, '2023-07-18 09:08:32', '2023-07-18 09:08:32', NULL),
('fe6937f6-bd9e-4e99-b584-58da33efd0b9', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '29d35164-e47f-3e51-9743-5182a0391764', '30690342-815c-4fac-87bf-fbf023a45964', 14762, '-', 0, NULL, '2023-07-05 11:36:07', '2023-07-05 11:36:07', NULL),
('fe7ed414-ca0c-4395-a7fa-074bb68e01f5', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '7c9a08c7-d0ca-40cd-a08b-dbefe4fe4964', 14811, 'HIDALGO DE LA CRUZ VALENTINA - 63092085', 0, NULL, '2023-07-05 19:01:59', '2023-07-05 19:01:59', NULL),
('febebf43-0d1a-4fc3-b497-9909816b3be4', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '0059f5a8-a355-4b93-bca2-a272de287872', 14961, 'GONZALES SILVESTRE FRABRICIO FRANCISCO', 0, NULL, '2023-07-11 10:28:58', '2023-07-11 10:28:58', NULL),
('fed07cd6-18b4-4354-93fd-98c5a7c49ae2', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', 'a54707ac-0d4f-4775-b3ca-14f95f9e15b5', 15041, 'GUTIERREZ GARCIA GONZALO', 0, NULL, '2023-07-14 15:23:01', '2023-07-14 15:23:01', NULL),
('ff376470-7ead-48c5-aa4a-a94c0908de97', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '9cdc1408-5164-46d4-9623-18bb90cb14e4', 14780, '-', 0, NULL, '2023-07-05 16:12:10', '2023-07-05 16:12:10', NULL),
('ff54dee1-3f41-40fa-a7d7-e3a5adc63991', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '899c6cc7-51bf-4449-a80c-34effd061ef0', 14753, '---', 0, NULL, '2023-07-05 10:06:38', '2023-07-05 10:06:38', NULL),
('ffa89ade-3e3a-4277-8324-37d32ee85242', '751bb71a-bae5-3a95-9896-afd2886b6ba3', 'fa1608cd-13e5-34d8-a732-fa0bb4187121', '5b81dd12-df0f-4672-9c03-6a603e3f92e5', '498c8578-5525-4748-b0f2-d3ccf2c24155', 14993, 'LEON LOPEZ RICHARD IVAN', 0, NULL, '2023-07-11 18:51:43', '2023-07-11 18:51:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recibo_series`
--

CREATE TABLE `recibo_series` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esta_activo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recibo_series`
--

INSERT INTO `recibo_series` (`id`, `codigo`, `nombre`, `esta_activo`, `created_at`, `updated_at`, `deleted_at`) VALUES
('751bb71a-bae5-3a95-9896-afd2886b6ba3', 'BBB1', 'Serie 1', 1, NULL, NULL, NULL),
('e398e1e4-91e1-3687-8a31-776a0892da88', 'B002', 'Serie 2', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recibo_tipos`
--

CREATE TABLE `recibo_tipos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `impuesto` double(8,2) NOT NULL DEFAULT '0.00',
  `esta_activo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recibo_tipos`
--

INSERT INTO `recibo_tipos` (`id`, `codigo`, `nombre`, `impuesto`, `esta_activo`, `created_at`, `updated_at`, `deleted_at`) VALUES
('39804099-2bd7-38ef-a530-1112958dfb8f', 'F', 'Factura', 0.00, 1, NULL, NULL, NULL),
('fa1608cd-13e5-34d8-a732-fa0bb4187121', 'B', 'Boleta', 0.00, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rubros`
--

CREATE TABLE `rubros` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rubros`
--

INSERT INTO `rubros` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('123123123123', 'C. Idiomas', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rubro_turno`
--

CREATE TABLE `rubro_turno` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_rubro` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_turno` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rubro_turno`
--

INSERT INTO `rubro_turno` (`id`, `id_rubro`, `id_turno`, `created_at`, `updated_at`, `deleted_at`) VALUES
('123asdfas21q3', '123123123123', '72ea95ce-84d5-475d-aad7-f11fb6eafc75', NULL, NULL, NULL),
('asdwqe12312', '123123123123', '83f9465f-ab05-4407-a619-16a047e11e7f', NULL, NULL, NULL),
('gfgr4335ert54', '123123123123', 'd311d8de-b9da-4239-9549-5cbf28119a3a', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('2ef3edfe-e5c7-4a49-8f0c-8925ee60270f', 'Servicio I', '2023-06-14 20:04:59', '2023-06-14 20:04:59', NULL),
('b75a3af6-ee04-4520-9b66-4c80c5386921', 'Servicio II', '2023-06-14 20:05:08', '2023-06-14 20:05:08', NULL),
('cae8e6c7-0e36-4b73-8fa0-d8efca80e2a2', 'Servicio III', '2023-06-14 20:05:17', '2023-06-14 20:05:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_calificacions`
--

CREATE TABLE `tipo_calificacions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_identificacions`
--

CREATE TABLE `tipo_identificacions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipo_identificacions`
--

INSERT INTO `tipo_identificacions` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('4b3f4fcc-5f5e-469f-804f-852657ae8b65', 'Pasaporte', '2023-06-14 20:05:38', '2023-06-14 20:05:38', NULL),
('5875ce6b-2a48-4bde-8338-ddd8ce391730', 'DNI', '2023-06-14 20:05:28', '2023-06-14 20:05:28', NULL),
('c45f2392-98ff-4646-86e8-72f0bd83ef94', 'CARNET DE EXTRANJERIA', '2023-06-27 17:24:17', '2023-06-27 17:24:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_modulos`
--

CREATE TABLE `tipo_modulos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipo_modulos`
--

INSERT INTO `tipo_modulos` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('21eacf16-83db-4a32-ad3f-89c314ac5e26', 'Modulo Estructurado', '2023-06-14 19:57:57', '2023-06-14 19:57:57', NULL),
('ab7b9e97-c5f7-45c7-be07-f5e7c954981e', 'Técnico', '2023-07-13 15:44:21', '2023-07-13 15:44:21', NULL),
('ce047a16-f7a3-4de0-b797-eb8ccb4f32af', 'Modulo Académico', '2023-06-14 19:57:40', '2023-06-14 19:57:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `turnos`
--

CREATE TABLE `turnos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `turnos`
--

INSERT INTO `turnos` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
('72ea95ce-84d5-475d-aad7-f11fb6eafc75', 'Noche', '2023-06-14 20:04:40', '2023-06-14 20:04:40', NULL),
('83f9465f-ab05-4407-a619-16a047e11e7f', 'Tarde', '2023-06-14 20:04:33', '2023-06-14 20:04:33', NULL),
('d311d8de-b9da-4239-9549-5cbf28119a3a', 'Mañana', '2023-06-14 20:04:27', '2023-06-14 20:04:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unidades_aperturadas`
--

CREATE TABLE `unidades_aperturadas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cupo_maximo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_docente` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_unidad_didactica` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_periodo` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_rubro_turno` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_grupo` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unidades_aperturadas`
--

INSERT INTO `unidades_aperturadas` (`id`, `codigo`, `cupo_maximo`, `id_docente`, `id_unidad_didactica`, `id_periodo`, `id_rubro_turno`, `id_grupo`, `inicio`, `fin`, `created_at`, `updated_at`, `deleted_at`) VALUES
('03e074a7-da23-41bb-957e-4a233ec300c4', 'JULIO - 2023UD01', '20', 'b16d8928-bc8f-484f-be12-b04a8073525f', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 14:59:05', '2023-07-03 15:18:00', NULL),
('046547db-3eb5-4683-8385-8901a6c432cf', 'JULIO - 2023UD01', '18', '917cf164-8205-4d92-ae2b-e5714bb5cdc9', 'fb5baa5a-a765-4a77-a0f3-2750f5db342e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 18:55:22', '2023-07-03 19:07:06', NULL),
('0515686f-006d-4f40-a7b7-dd5b83c4e655', 'IBI-JULIO2024', '15', '0d2fcce9-b3ec-4524-bc03-b2731e1053f8', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2026-03-26', '2023-06-19 20:27:51', '2023-06-20 06:54:20', '2023-06-20 06:54:20'),
('0acd4e42-6a00-433b-9f8d-39a2a8835fee', 'JULIO - 2023UD01', '20', '8ce1c0cc-84d1-40ec-9d1f-3168b9c3d9c5', '2d3abc26-3c5a-433f-a11a-eee93ea328ab', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 18:49:10', '2023-07-03 18:49:10', NULL),
('184a3f16-f726-458e-b892-ce4bb5b08695', 'JULIO - 2023UD01', '21', '0caba9f3-6ce8-4613-8117-03705fa97fb2', '8afd9ebb-2bc7-4ec6-91f7-e9a020842ecf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '3ba70566-be6b-4f54-8e48-f32287d70ac1', '2023-07-03', '2023-07-26', '2023-07-03 10:46:52', '2023-07-03 10:47:56', NULL),
('1d1a1085-179e-4748-895a-cd86f6d870cd', 'JULIO - 2023UD01', '23', '6461600b-073c-4169-9b1b-2b66e904493c', '99c023c5-f1be-488c-b03d-10f1c72a2c4e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 11:17:41', '2023-07-03 11:17:41', NULL),
('22970759-739f-4e75-8b6e-43fa3439dc8d', 'JULIO - 2023UD01', '18', '61bd8072-f6b3-4b6e-8242-393cf4221056', '626d9a78-39d9-4a15-8e40-65496de2484c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-26', '2023-07-03 18:52:00', '2023-07-03 18:52:00', NULL),
('2d350158-1427-4e18-8995-03aa84e1f9c3', 'JULIO - 2023UD01', '23', '0d2450cd-4537-45f9-be14-97002755f7e5', '99c023c5-f1be-488c-b03d-10f1c72a2c4e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '3ba70566-be6b-4f54-8e48-f32287d70ac1', '2023-07-03', '2023-07-26', '2023-07-03 11:52:14', '2023-07-03 12:36:43', NULL),
('41e51e75-11ac-4ff7-a95e-8d403b34bb11', 'JULIO - 2023UD01', '15', '61bd8072-f6b3-4b6e-8242-393cf4221056', 'ad2165b1-4eb6-447c-8a88-7cafc3571c0c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 11:00:14', '2023-07-03 12:18:31', NULL),
('516bbfd0-6126-4d6e-9a29-c6bd093843c6', 'JULIO - 2023UD01', '18', '991fd93c-ca80-4e65-9703-03322ae2c946', '801a2014-198f-4449-bbd5-6e1a4e5a4b8c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 18:54:22', '2023-07-03 18:54:22', NULL),
('552fc68c-3c42-474a-a42e-7cbc61f0ef1c', 'JULIO - 2023UD01', '20', '25bc8b91-e8f9-4b89-a53e-03c8591163d3', 'f724ec2c-acf7-4d01-a2f5-842b7a81c631', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-07 12:23:34', '2023-07-07 12:23:34', NULL),
('60fce3cf-aec6-4c85-9780-c578815be93a', 'JULIO - 2023UD01', '20', '86f2e5bf-4804-48a7-8fa8-576b37ffeb31', 'dbbbfe19-fd0d-4da8-9a27-bc29cb46694b', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 15:04:23', '2023-07-03 15:04:23', NULL),
('6477d77f-4fcd-4cde-9191-7a5464b85804', 'JULIO - 2023UD01', '15', 'ab6e866d-ec54-470a-8206-e107c47e020e', '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '3ba70566-be6b-4f54-8e48-f32287d70ac1', '2023-07-03', '2023-07-27', '2023-07-03 09:15:14', '2023-07-03 11:21:04', '2023-07-03 11:21:04'),
('64a41cc5-8661-488c-8624-3fcf7d34ef8a', 'JULIO - 2023UD01', '15', 'c484d593-79ca-4eaa-a36f-210af854f1b7', '9601ca57-4640-4299-aa92-41bf3539ed1a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-27', '2023-07-03 09:10:11', '2023-07-03 12:10:30', NULL),
('6887e89e-edad-4b68-9010-5adb29b4f22b', 'JULIO - 2023UD01', '18', '8ce1c0cc-84d1-40ec-9d1f-3168b9c3d9c5', '9601ca57-4640-4299-aa92-41bf3539ed1a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-26', '2023-07-03 10:54:36', '2023-07-05 15:33:59', NULL),
('6d0571b8-d44c-4c70-9445-7103f0f4155a', 'JULIO - 2023UD01', '20', '6461600b-073c-4169-9b1b-2b66e904493c', '801a2014-198f-4449-bbd5-6e1a4e5a4b8c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-26', '2023-07-03 18:54:12', '2023-07-03 18:54:12', NULL),
('71a61e66-c7b3-4a81-ae6d-6a8a6aea4795', 'JULIO - 2023UD01', '15', '9ef20777-8bca-4a13-813d-edee4afc14ca', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-27', '2023-06-27 15:47:08', '2023-06-27 19:01:31', '2023-06-27 19:01:31'),
('759bde85-be83-4c80-8672-7e79abe26d3c', 'JULIO - 2023UD01', '18', '32995705-229c-494c-af24-22f75730bda2', '626d9a78-39d9-4a15-8e40-65496de2484c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 18:42:39', '2023-07-03 18:42:39', NULL),
('76be60c7-dd73-410b-ac66-fec29cab9ed5', 'JULIO - 2023UD01', '15', '0d2450cd-4537-45f9-be14-97002755f7e5', 'c4e70215-7db9-44ab-92b4-e028a11aead7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 09:34:05', '2023-07-03 18:34:44', NULL),
('7d4c7eda-fdff-4d3e-8b60-bd76b96dc0cc', 'JULIO - 2023UD01', '23', '9ef20777-8bca-4a13-813d-edee4afc14ca', '99c023c5-f1be-488c-b03d-10f1c72a2c4e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', 'ab1ee6fa-dcd0-423c-8145-885d8e111d52', '2023-07-03', '2023-07-26', '2023-07-03 11:53:40', '2023-07-03 11:53:40', NULL),
('7d545132-5ea7-48f1-8787-6730948133e2', 'JULIO - 2023UD01', '18', '9c5ada6c-8aca-4bb2-bcd7-a75cedbf5702', '8fcef75b-cde9-4575-968c-5a6edf1f7121', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-05 17:41:57', '2023-07-05 17:41:57', NULL),
('86475234-eed8-46eb-a7d5-9e36cb559f36', 'JULIO - 2023UD01', '15', NULL, '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-27', '2023-06-28 21:57:55', '2023-06-29 10:35:31', '2023-06-29 10:35:31'),
('92ad9d74-996b-4d1a-baaf-5d7f3964471e', 'JULIO - 2023UD01', '20', 'b5d2e392-b981-4f20-a409-72b8dd3d21a7', '5b9cb052-e4f1-46c3-b99e-9dac12dcafa9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 15:30:28', '2023-07-03 15:30:28', NULL),
('9dd74e57-5165-491d-88be-6610f721c393', 'JULIO - 2023UD01', '20', '6461600b-073c-4169-9b1b-2b66e904493c', '6279d1c3-e38c-4454-877f-92c49b083803', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 12:07:36', '2023-07-03 12:07:36', NULL),
('a0311f7d-f426-4841-9a8a-8bd633af7d1b', 'JULIO - 2023UD01', '15', NULL, '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-27', '2023-06-21 01:03:00', '2023-06-28 22:22:17', NULL),
('a1614ced-5f80-4cdd-9247-e16ae8d456de', 'JULIO - 2023UD01', '15', '991fd93c-ca80-4e65-9703-03322ae2c946', '85dd4c86-4cb7-43c1-9a82-5e41fc6a6321', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 09:38:26', '2023-07-03 18:37:57', NULL),
('aa3417d9-c064-4c7e-b498-4c2f70edd7dd', 'JULIO - 2023UD01', '20', '86f2e5bf-4804-48a7-8fa8-576b37ffeb31', 'dc73e54e-f781-4604-918f-d91a12c08f37', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-05 12:38:58', '2023-07-05 12:38:58', NULL),
('ac738cd8-c7a5-43ee-83bd-04bf3a4f3526', 'JULIO - 2023UD01', '20', '10ebb685-2059-4a9c-9095-3d27441204c3', '796ed6f0-29f2-407a-8737-49b98b2b384c', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-05 12:40:40', '2023-07-05 12:40:40', NULL),
('ae53e433-3e53-42dc-beb0-c9da4daa8a43', 'JULIO - 2023UD01', '23', '8ce1c0cc-84d1-40ec-9d1f-3168b9c3d9c5', '2187181f-a7bd-48f1-9990-a493ee60171e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 12:14:06', '2023-07-03 12:14:06', NULL),
('aec4a448-356e-47ba-9660-24d6026cbeec', 'JULIO - 2023UD01', '18', '61bd8072-f6b3-4b6e-8242-393cf4221056', 'c4e70215-7db9-44ab-92b4-e028a11aead7', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-26', '2023-07-03 18:36:40', '2023-07-03 18:36:40', NULL),
('b79d05dd-c8c9-491e-b6db-401ab6119f6b', 'JULIO - 2023UD01', '20', '32995705-229c-494c-af24-22f75730bda2', 'c5af7a85-4fc0-42f6-b2c9-70055d4b333f', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 18:31:20', '2023-07-03 18:31:20', NULL),
('bc0bcfaa-0f08-4dcd-a964-fef70b349209', 'JULIO - 2023UD01', '18', 'b5d2e392-b981-4f20-a409-72b8dd3d21a7', 'cc303ca9-9a4b-4316-a75b-3fe96639bb99', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 18:56:15', '2023-07-05 17:40:48', NULL),
('c09f3c4a-b836-45d2-a421-708fd3156c28', 'JULIO - 2023UD01', '15', '0caba9f3-6ce8-4613-8117-03705fa97fb2', '31af06d8-0f53-413d-9f6d-f037e499b88e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-26', '2023-07-03 10:00:57', '2023-07-03 10:00:57', NULL),
('c0aa3bb0-a0b7-4eb4-96e9-a4f6b0af306e', 'JULIO - 2023UD01', '21', '48e83958-b337-47e4-8b59-11d51fe020d9', '9601ca57-4640-4299-aa92-41bf3539ed1a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '3ba70566-be6b-4f54-8e48-f32287d70ac1', '2023-07-03', '2023-07-26', '2023-07-03 10:58:18', '2023-07-03 10:58:18', NULL),
('c6ee84d4-ccaa-469e-9b65-7efd6433eb5d', 'JULIO - 2023UD01', '15', NULL, '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-27', '2023-06-20 18:43:04', '2023-06-28 22:22:26', NULL),
('cc87d80d-85ea-47d1-b43a-c491de4eed00', 'JULIO - 2023UD01', '20', '32995705-229c-494c-af24-22f75730bda2', 'db0e334e-fcea-44b4-9e6e-3d0edd5217a4', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-26', '2023-07-03 14:49:36', '2023-07-03 15:17:41', NULL),
('cf40414f-040a-4177-a48d-dde4080f294d', 'JULIO - 2023UD01', '20', '32995705-229c-494c-af24-22f75730bda2', '54dd01be-b7da-4926-bfd2-c5e68049f764', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 18:52:53', '2023-07-03 18:52:53', NULL),
('cf8f9d17-48fa-46af-b34f-680f083f1bdc', 'JULIO - 2023UD01', '15', NULL, '46be3e40-8d5e-40bb-b1c7-b5938f4187ed', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-27', '2023-06-29 10:35:20', '2023-06-29 16:16:59', '2023-06-29 16:16:59'),
('d009fb40-7f1e-443a-a364-573bb2823995', 'JULIO - 2023UD01', '15', '48e83958-b337-47e4-8b59-11d51fe020d9', '31af06d8-0f53-413d-9f6d-f037e499b88e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 09:19:47', '2023-07-03 11:37:51', NULL),
('d7378843-819e-4949-9240-7969019536f7', 'JULIO - 2023UD01', '15', '61bd8072-f6b3-4b6e-8242-393cf4221056', '8afd9ebb-2bc7-4ec6-91f7-e9a020842ecf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 10:44:35', '2023-07-03 12:03:53', NULL),
('dd7f0840-0903-4391-8fc9-fb0522e435e8', 'JULIO - 2023UD01', '15', '0d2450cd-4537-45f9-be14-97002755f7e5', 'af9f3876-daee-4a2d-a253-9cfcf97758d0', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-27', '2023-06-28 10:52:13', '2023-07-03 12:47:32', NULL),
('ddc2a558-b069-406f-bd60-ae60b7c4e1f0', 'PERSONALIZADO', '1', NULL, '60af8847-abec-42de-8e36-fd22a2a7cb1a', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-06 11:16:49', '2023-07-06 11:16:49', NULL),
('e1a17c4a-80e0-4739-b344-085262e7fc85', 'JULIO - 2023UD01', '18', '8486c6aa-ceee-49ec-aef4-e285379194f1', '3d27a771-be7e-4202-af9b-5fa11f5de69e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 12:19:08', '2023-07-03 12:19:08', NULL),
('e4cc8dde-567f-49bf-b0ae-e82d3d3e5b4b', 'ADMISIÓN 2023 - IIUD01', '40', NULL, 'd0a80588-6fba-40f5-b261-7900b246542d', '6034adb2-7103-4781-8a0f-2a7b0e69a4cd', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-02-13', '2023-08-15', '2023-07-13 15:49:13', '2023-07-13 15:49:13', NULL),
('e763b71d-51c7-440c-a802-d1d9f46106ce', 'JULIO - 2023UD01', '18', 'c484d593-79ca-4eaa-a36f-210af854f1b7', '5e1de448-57d3-4a17-8b11-5fd27995682e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 11:09:06', '2023-07-03 11:09:06', NULL),
('eef9c353-6d8e-474c-aa21-29eccc6a9102', 'JULIO - 2023UD01', '18', '991fd93c-ca80-4e65-9703-03322ae2c946', '69e59f3c-cf47-4c54-9c0a-cd10be750054', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 12:17:18', '2023-07-03 12:45:22', NULL),
('f31dfa11-4521-46dc-8224-8313acdc3712', 'JULIO - 2023UD01', '20', 'c484d593-79ca-4eaa-a36f-210af854f1b7', '6ad03b4c-da11-4f4e-a85b-f35254fd42cd', '0abd2fbe-94e2-4650-8713-245ce76f6e39', '123asdfas21q3', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 12:50:02', '2023-07-05 17:53:53', NULL),
('f969ec62-5767-4453-bef2-468a0888330f', 'JULIO - 2023UD01', '23', '6461600b-073c-4169-9b1b-2b66e904493c', '99c023c5-f1be-488c-b03d-10f1c72a2c4e', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'gfgr4335ert54', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-26', '2023-07-03 11:19:07', '2023-07-03 11:19:07', NULL),
('fc9c8761-2723-456c-b8d7-7a4765e6f1fe', 'JULIO - 2023UD01', '20', 'b16d8928-bc8f-484f-be12-b04a8073525f', '2dd938f9-c45d-46f6-b681-412b1be4f0d9', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', '1f28f3ef-3c95-4fb8-8661-7627f48bbe04', '2023-07-03', '2023-07-26', '2023-07-03 15:12:03', '2023-07-03 15:12:03', NULL),
('fcfda4ef-114a-46d1-afe4-b2c76b93edb3', 'JULIO - 2023UD01', '21', '48e83958-b337-47e4-8b59-11d51fe020d9', '8afd9ebb-2bc7-4ec6-91f7-e9a020842ecf', '0abd2fbe-94e2-4650-8713-245ce76f6e39', 'asdwqe12312', 'ff2acd1a-956c-435c-937e-799817a62ba0', '2023-07-03', '2023-07-26', '2023-07-03 10:46:05', '2023-07-03 10:46:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unidad_aperturados`
--

CREATE TABLE `unidad_aperturados` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_unidad_didacticas` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_docentes` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_turnos` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_grupos` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ambientes` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unidad_didacticas`
--

CREATE TABLE `unidad_didacticas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad_creditos` int NOT NULL,
  `horas_xsemana` int NOT NULL,
  `id_modulo_academico` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ciclo` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_configuracion` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unidad_didacticas`
--

INSERT INTO `unidad_didacticas` (`id`, `nombre`, `cantidad_creditos`, `horas_xsemana`, `id_modulo_academico`, `id_ciclo`, `id_configuracion`, `created_at`, `updated_at`, `deleted_at`) VALUES
('020f9faa-486f-4f1a-9459-bd457a27a967', 'Inglés Avanzado V', 18, 2, '1d08651c-dccb-4994-8702-18403fa5976d', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 18:49:17', '2023-07-04 12:07:09', NULL),
('03d02acd-28ec-4255-85a2-257302a07e88', 'Inglés Avanzado III', 18, 2, '1d08651c-dccb-4994-8702-18403fa5976d', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 18:47:08', '2023-07-04 12:06:51', NULL),
('04c0ca31-ea41-4eba-9103-4d77f162ec27', 'Inglés Avanzado XII', 18, 4, '1d08651c-dccb-4994-8702-18403fa5976d', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:33:18', '2023-07-04 12:14:36', NULL),
('0790033c-3909-418f-acb3-7083395169b1', 'INGLÉS KIDS AVANZADO I', 1, 4, '07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:38:18', '2023-06-27 12:38:18', NULL),
('0d5da573-7a66-4bba-ac07-022d2061b034', 'Inglés Intermedio XII', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:31:03', '2023-06-26 16:31:03', NULL),
('0f22029a-6ed6-431c-8ac4-593f45f01361', 'INGLÉS PRE KIDS AVANZADO I', 1, 4, '4cbc5cf1-d481-4be1-9c4a-476b009215a0', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:12:00', '2023-06-27 12:12:00', NULL),
('0fc5dfc1-7983-48af-a2ab-9a6a185bc5ae', 'Inglés Intermedio II', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '7d09a5e1-1405-4463-8431-600126d95d13', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:24:31', '2023-06-26 16:24:31', NULL),
('102e6518-14b1-4efc-a3c7-3e7284a00bfd', 'INGLÉS KIDS INTERMEDIO VIII', 1, 4, '796dc5d7-7efa-437e-a22a-1efa26cfc2d8', 'ae336b60-1581-48bb-b331-7daef37dd293', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:36:11', '2023-06-27 12:36:11', NULL),
('13de0437-c779-4efd-b69d-b987e68ed86c', 'Inglés Avanzado II', 18, 2, '1d08651c-dccb-4994-8702-18403fa5976d', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 18:46:37', '2023-07-04 12:03:20', NULL),
('1f2741c9-7118-4252-a240-5b79593ce463', 'INGLÉS KIDS AVANZADO VI', 1, 4, '07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:40:44', '2023-06-27 12:40:44', NULL),
('20f1f703-8b17-43ad-be02-bbabe7f6a531', 'INGLÉS PRE KIDS BÁSICO VI', 1, 4, '937bc3fc-b190-4222-943c-f960af9423b6', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:04:31', '2023-06-27 12:04:31', NULL),
('2187181f-a7bd-48f1-9990-a493ee60171e', 'Inglés Básico X', 2, 8, '178b65a8-345c-4462-ad55-9f803c5dae90', '89bd2006-884a-485c-b117-6932150e39a8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:51:38', '2023-06-19 19:54:25', NULL),
('22184aa5-699f-4ce0-a525-f1e6157bb32e', 'INGLÉS PRE KIDS INTERMEDIO III', 2, 4, 'c64212eb-3800-4b14-bfea-4debb43d93d1', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:08:14', '2023-06-27 12:08:14', NULL),
('26acf83a-c09b-4524-a240-f809b2cfb4d6', 'INGLÉS KIDS INTERMEDIO V', 1, 4, '796dc5d7-7efa-437e-a22a-1efa26cfc2d8', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:34:42', '2023-06-27 12:34:42', NULL),
('2d3abc26-3c5a-433f-a11a-eee93ea328ab', 'INGLÉS KIDS BÁSICO VI', 1, 4, 'bcf4b405-78ad-4392-aa1d-bbf8056af2e0', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:30:56', '2023-06-27 12:30:56', NULL),
('2dd938f9-c45d-46f6-b681-412b1be4f0d9', 'INGLÉS KIDS BÁSICO II', 1, 4, 'bcf4b405-78ad-4392-aa1d-bbf8056af2e0', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:28:53', '2023-06-27 12:28:53', NULL),
('31af06d8-0f53-413d-9f6d-f037e499b88e', 'Inglés Básico II', 18, 4, '178b65a8-345c-4462-ad55-9f803c5dae90', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-14 20:02:31', '2023-07-04 12:15:58', NULL),
('34712ebe-a482-42ce-8ab4-b2d5eac2ea37', 'INGLÉS KIDS BÁSICO VIII', 1, 4, 'bcf4b405-78ad-4392-aa1d-bbf8056af2e0', 'ae336b60-1581-48bb-b331-7daef37dd293', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:37:19', '2023-06-27 12:37:19', NULL),
('3515c882-18bd-43cf-9c9b-b9af77c19719', 'INGLÉS PRE KIDS AVANZADO IV', 1, 4, '4cbc5cf1-d481-4be1-9c4a-476b009215a0', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:15:17', '2023-06-27 12:15:17', NULL),
('39c78b37-6f3d-436c-8aa7-f63245953cd9', 'INGLÉS PRE KIDS BÁSICO II', 1, 4, '937bc3fc-b190-4222-943c-f960af9423b6', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:38:34', '2023-06-27 18:58:56', NULL),
('39d010c6-49fb-4c76-9e9f-ba0a6cd5a83d', 'INGLÉS KIDS AVANZADO VII', 1, 4, '07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:41:01', '2023-06-27 12:41:01', NULL),
('3d27a771-be7e-4202-af9b-5fa11f5de69e', 'Inglés Básico XII', 2, 8, '178b65a8-345c-4462-ad55-9f803c5dae90', '0f3dae80-7476-42d4-a4f1-75ad5c814f61', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:52:29', '2023-06-19 19:54:40', NULL),
('43fce02f-7f5e-438f-a757-e87bb6bdd4b4', 'Inglés Avanzado IX', 18, 2, '1d08651c-dccb-4994-8702-18403fa5976d', '3dec79bb-530f-4725-b48e-06792695821d', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:31:54', '2023-07-04 12:06:25', NULL),
('46be3e40-8d5e-40bb-b1c7-b5938f4187ed', 'INGLÉS BÁSICO I', 18, 4, '178b65a8-345c-4462-ad55-9f803c5dae90', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-14 20:02:05', '2023-07-04 12:15:43', NULL),
('4fe2e186-b408-4591-b43a-a2c52f8ae81b', 'Inglés Intermedio VI', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:26:34', '2023-06-26 16:26:34', NULL),
('5023fa12-1d1d-4a77-97f3-039e9cb392b7', 'Inglés Intermedio X', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '89bd2006-884a-485c-b117-6932150e39a8', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:29:58', '2023-06-26 16:29:58', NULL),
('5181f4b1-b021-47b2-9985-b9d3d3ed5d53', 'Inglés Avanzado I', 18, 2, '1d08651c-dccb-4994-8702-18403fa5976d', '84e8c975-4afe-42a6-a110-9f2b87de39ab', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 18:45:42', '2023-07-04 12:02:37', NULL),
('5328756c-5203-4df4-b3cb-64808c17f015', 'SPEAKING I', 4, 3, 'c14f3aa6-c042-4a05-8b1c-8817501f2d7f', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-07-03 12:47:29', '2023-07-03 12:47:29', NULL),
('54dd01be-b7da-4926-bfd2-c5e68049f764', 'INGLÉS KIDS INTERMEDIO II', 1, 4, '796dc5d7-7efa-437e-a22a-1efa26cfc2d8', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:32:24', '2023-06-27 12:32:24', NULL),
('5b510f43-f90f-4ae9-ace6-ffa817debebd', 'INGLÉS TPR PRE KIDS I', 12, 4, 'e9a98ec4-dd4d-4d73-afe4-925780952619', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:34:39', '2023-07-04 12:03:03', NULL),
('5b9cb052-e4f1-46c3-b99e-9dac12dcafa9', 'INGLÉS KIDS BÁSICO III', 1, 4, 'bcf4b405-78ad-4392-aa1d-bbf8056af2e0', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:29:51', '2023-06-27 12:29:51', NULL),
('5e1de448-57d3-4a17-8b11-5fd27995682e', 'Inglés Básico VI', 2, 8, '178b65a8-345c-4462-ad55-9f803c5dae90', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:47:27', '2023-06-19 19:53:59', NULL),
('60af8847-abec-42de-8e36-fd22a2a7cb1a', 'Inglés Intermedio III', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '7b319633-1514-4d46-a668-89fe82492dd8', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:25:14', '2023-06-26 16:25:14', NULL),
('626d9a78-39d9-4a15-8e40-65496de2484c', 'INGLÉS KIDS BÁSICO VII', 1, 4, 'bcf4b405-78ad-4392-aa1d-bbf8056af2e0', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:36:55', '2023-06-27 12:36:55', NULL),
('6279d1c3-e38c-4454-877f-92c49b083803', 'Inglés Básico IX', 2, 8, '178b65a8-345c-4462-ad55-9f803c5dae90', '3dec79bb-530f-4725-b48e-06792695821d', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:50:30', '2023-06-19 19:53:43', NULL),
('684b45aa-1514-4927-b9c4-29d600bd74b9', 'Inglés Avanzado XI', 18, 8, '1d08651c-dccb-4994-8702-18403fa5976d', '914dd2f3-78db-4124-90c4-90717911df50', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:32:53', '2023-07-04 12:08:43', NULL),
('69e59f3c-cf47-4c54-9c0a-cd10be750054', 'Inglés Básico XI', 2, 8, '178b65a8-345c-4462-ad55-9f803c5dae90', '914dd2f3-78db-4124-90c4-90717911df50', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:52:07', '2023-06-19 19:54:33', NULL),
('6ad03b4c-da11-4f4e-a85b-f35254fd42cd', 'SPEAKING IV', 4, 3, 'c14f3aa6-c042-4a05-8b1c-8817501f2d7f', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-07-03 12:49:00', '2023-07-03 12:49:00', NULL),
('6d249861-9bbf-4210-a399-8d25dff016e4', 'INGLÉS PRE KIDS AVANZADO VI', 1, 4, '4cbc5cf1-d481-4be1-9c4a-476b009215a0', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:16:07', '2023-06-27 12:16:07', NULL),
('749851e1-e767-4085-bbf1-2b22f0f53e72', 'Inglés Básico VIII', 2, 8, '178b65a8-345c-4462-ad55-9f803c5dae90', 'ae336b60-1581-48bb-b331-7daef37dd293', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:48:17', '2023-06-19 19:54:18', NULL),
('781207e4-6db6-49ac-845d-dfa8eb518bf7', 'INGLÉS PRE KIDS AVANZADO V', 1, 4, '4cbc5cf1-d481-4be1-9c4a-476b009215a0', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:15:40', '2023-06-27 12:15:40', NULL),
('796ed6f0-29f2-407a-8737-49b98b2b384c', 'Inglés Intermedio IX', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '3dec79bb-530f-4725-b48e-06792695821d', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:27:58', '2023-06-26 16:29:07', NULL),
('801a2014-198f-4449-bbd5-6e1a4e5a4b8c', 'INGLÉS KIDS INTERMEDIO IV', 1, 4, '796dc5d7-7efa-437e-a22a-1efa26cfc2d8', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:33:33', '2023-06-27 12:33:33', NULL),
('80b6ef4a-2803-4bae-9bef-64645b4e11e0', 'INGLÉS KIDS INTERMEDIO I', 1, 4, '796dc5d7-7efa-437e-a22a-1efa26cfc2d8', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:31:39', '2023-06-27 12:31:39', NULL),
('85935a6b-7ecc-4681-ae09-401e35a5b2f7', 'Inglés Avanzado VIII', 2, 18, '1d08651c-dccb-4994-8702-18403fa5976d', 'ae336b60-1581-48bb-b331-7daef37dd293', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:31:11', '2023-07-04 11:56:13', NULL),
('85dd4c86-4cb7-43c1-9a82-5e41fc6a6321', 'INGLÉS KIDS BÁSICO V', 1, 4, 'bcf4b405-78ad-4392-aa1d-bbf8056af2e0', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:30:33', '2023-06-27 12:30:33', NULL),
('8942a177-a50d-4c28-8ad7-176615faeb1e', 'Inglés Avanzado VI', 18, 8, '1d08651c-dccb-4994-8702-18403fa5976d', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 18:49:41', '2023-07-04 12:08:05', NULL),
('8a0e637d-61e5-4cd1-bf7e-ab2af62668d4', 'Inglés Intermedio VIII', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', 'ae336b60-1581-48bb-b331-7daef37dd293', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:27:32', '2023-06-26 16:27:32', NULL),
('8afd9ebb-2bc7-4ec6-91f7-e9a020842ecf', 'Inglés Básico III', 4, 4, '178b65a8-345c-4462-ad55-9f803c5dae90', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-14 20:03:11', '2023-06-19 19:53:24', NULL),
('8fcef75b-cde9-4575-968c-5a6edf1f7121', 'Inglés Avanzado IV', 18, 2, '1d08651c-dccb-4994-8702-18403fa5976d', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 18:47:41', '2023-07-04 12:06:13', NULL),
('91a9f8b4-0cd8-4e82-892b-d545697ff435', 'INGLÉS PRE KIDS INTERMEDIO V', 1, 4, 'c64212eb-3800-4b14-bfea-4debb43d93d1', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:09:03', '2023-06-27 12:09:03', NULL),
('942ee6ce-8e5c-4916-a772-8abb04141e1e', 'INGLÉS PRE KIDS INTERMEDIO I', 1, 4, 'c64212eb-3800-4b14-bfea-4debb43d93d1', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:06:58', '2023-06-27 12:06:58', NULL),
('9601ca57-4640-4299-aa92-41bf3539ed1a', 'Inglés Básico IV', 18, 18, '178b65a8-345c-4462-ad55-9f803c5dae90', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:45:28', '2023-07-04 11:57:08', NULL),
('97fa1eab-fe15-48fd-b0da-af67fe3caa89', 'INGLÉS PRE KIDS BÁSICO V', 1, 4, '937bc3fc-b190-4222-943c-f960af9423b6', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:03:46', '2023-06-27 12:03:46', NULL),
('99c023c5-f1be-488c-b03d-10f1c72a2c4e', 'Inglés Básico VII', 2, 8, '178b65a8-345c-4462-ad55-9f803c5dae90', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:46:49', '2023-06-19 19:54:09', NULL),
('a2a86da6-2047-44f1-8bbf-43d413a987a4', 'INGLÉS PRE KIDS BÁSICO I', 1, 4, '937bc3fc-b190-4222-943c-f960af9423b6', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:37:43', '2023-06-26 19:37:43', NULL),
('a5cbf37c-bb36-4d7b-b80b-a16a62ec7241', 'Inglés Intermedio I', 2, 3, 'e25b3b66-def7-4765-8931-01834e247883', '84e8c975-4afe-42a6-a110-9f2b87de39ab', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:23:45', '2023-06-26 16:24:39', NULL),
('ad2165b1-4eb6-447c-8a88-7cafc3571c0c', 'Inglés Básico V', 2, 8, '178b65a8-345c-4462-ad55-9f803c5dae90', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-19 19:46:12', '2023-06-19 19:53:51', NULL),
('af9f3876-daee-4a2d-a253-9cfcf97758d0', 'Inglés Intermedio IV', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '7a1c712a-792e-4f54-b66a-d6517447fc95', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:25:44', '2023-06-26 16:25:44', NULL),
('b2aa3d93-7c30-4f26-b7b7-8e60d58d482e', 'INGLÉS TPR PRE KIDS III', 12, 4, 'e9a98ec4-dd4d-4d73-afe4-925780952619', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:36:06', '2023-07-04 12:01:43', NULL),
('ba4353d8-96c7-411f-9394-bdc7031c5766', 'INGLÉS KIDS AVANZADO VIII', 1, 4, '07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', 'ae336b60-1581-48bb-b331-7daef37dd293', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:41:26', '2023-06-27 12:41:26', NULL),
('bbb29111-deaf-4de9-8f3b-13ca5745db04', 'INGLÉS KIDS AVANZADO IV', 1, 4, '07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:39:18', '2023-06-27 12:39:47', NULL),
('c11e8554-1eaa-46df-9456-847849efff9a', 'INGLÉS KIDS AVANZADO II', 1, 4, '07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:38:35', '2023-06-27 12:38:35', NULL),
('c4e70215-7db9-44ab-92b4-e028a11aead7', 'INGLÉS KIDS BÁSICO IV', 1, 4, 'bcf4b405-78ad-4392-aa1d-bbf8056af2e0', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:30:10', '2023-06-27 12:30:10', NULL),
('c5af7a85-4fc0-42f6-b2c9-70055d4b333f', 'INGLÉS PRE KIDS INTERMEDIO VI', 12, 4, 'c64212eb-3800-4b14-bfea-4debb43d93d1', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:09:47', '2023-07-04 12:15:01', NULL),
('c8c53840-5e95-41ab-9aa9-e763910b4818', 'INGLÉS PRE KIDS INTERMEDIO IV', 1, 4, 'c64212eb-3800-4b14-bfea-4debb43d93d1', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:08:44', '2023-06-27 12:08:44', NULL),
('cc303ca9-9a4b-4316-a75b-3fe96639bb99', 'INGLÉS KIDS AVANZADO III', 1, 4, '07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:38:57', '2023-06-27 12:38:57', NULL),
('cdcf9e64-a945-4d9e-b4ed-66db00da7610', 'Inglés Avanzado VI', 18, 2, '1d08651c-dccb-4994-8702-18403fa5976d', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:29:59', '2023-07-04 12:07:20', NULL),
('d0a80588-6fba-40f5-b261-7900b246542d', 'EXAMEN DE ADMISION', 2, 2, '4f9c7d3a-93c9-4c2e-93f0-af33c68957c5', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-07-13 15:45:35', '2023-07-13 15:45:35', NULL),
('d658effe-4873-4688-860a-65c782856d7f', 'INGLÉS KIDS INTERMEDIO VI', 1, 4, '796dc5d7-7efa-437e-a22a-1efa26cfc2d8', '39f0ce9d-4178-48b1-927c-cab3e23cfcf3', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:35:05', '2023-06-27 12:35:05', NULL),
('d8a50339-5942-438f-a42f-8084b765ba3e', 'Inglés Intermedio V', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:26:07', '2023-06-26 16:26:07', NULL),
('d8b8ebdb-19ec-4206-bc23-5010637538d3', 'INGLÉS KIDS AVANZADO V', 1, 4, '07ad128f-3472-44f1-b47a-c7ed4cd0c7a3', '0eadf8da-70ce-44d6-a1fc-455458aa4f43', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:40:24', '2023-06-27 12:40:24', NULL),
('da48075c-1983-45df-b490-ab7e1b9ce63a', 'SPEAKING III', 4, 3, 'c14f3aa6-c042-4a05-8b1c-8817501f2d7f', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-07-03 12:48:19', '2023-07-03 12:48:19', NULL),
('db0e334e-fcea-44b4-9e6e-3d0edd5217a4', 'INGLÉS KIDS BÁSICO I', 12, 4, 'bcf4b405-78ad-4392-aa1d-bbf8056af2e0', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:17:31', '2023-07-04 12:16:29', NULL),
('dbbbfe19-fd0d-4da8-9a27-bc29cb46694b', 'INGLÉS TPR PRE KIDS II', 12, 4, 'e9a98ec4-dd4d-4d73-afe4-925780952619', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:35:21', '2023-07-04 12:01:55', NULL),
('dc73e54e-f781-4604-918f-d91a12c08f37', 'INGLÉS PRE KIDS BÁSICO IV', 1, 4, '937bc3fc-b190-4222-943c-f960af9423b6', '7a1c712a-792e-4f54-b66a-d6517447fc95', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:03:08', '2023-06-27 12:03:08', NULL),
('e1e1732c-fbf9-4ae0-a390-d58524ce113d', 'FRANCÉS BÁSICO I', 18, 4, 'b9aea007-ef1f-478c-b0b7-589a4f9ab4a6', '84e8c975-4afe-42a6-a110-9f2b87de39ab', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 17:21:04', '2023-07-04 11:51:32', NULL),
('e5b3c799-50be-4f29-b36a-da5fa2c133c8', 'INGLÉS PRE KIDS INTERMEDIO II', 1, 4, 'c64212eb-3800-4b14-bfea-4debb43d93d1', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:07:45', '2023-06-27 12:07:45', NULL),
('ea88f229-c724-4806-acce-e6cf432bf137', 'SPEAKING II', 4, 3, 'c14f3aa6-c042-4a05-8b1c-8817501f2d7f', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-07-03 12:47:51', '2023-07-03 12:47:51', NULL),
('f2e44b76-42f5-4e62-815d-b4a7e7fd696a', 'Inglés Avanzado VII', 2, 18, '1d08651c-dccb-4994-8702-18403fa5976d', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:30:29', '2023-07-04 11:53:41', NULL),
('f3ada041-f436-410e-ae29-83106e684656', 'INGLÉS PRE KIDS BÁSICO III', 1, 4, '937bc3fc-b190-4222-943c-f960af9423b6', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:38:58', '2023-06-26 19:38:58', NULL),
('f6c3ac4b-342c-4678-9957-aaa791841194', 'INGLÉS KIDS INTERMEDIO III', 1, 4, '796dc5d7-7efa-437e-a22a-1efa26cfc2d8', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:33:03', '2023-06-27 12:33:03', NULL),
('f724ec2c-acf7-4d01-a2f5-842b7a81c631', 'Inglés Intermedio VII', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', 'ce877ce3-bc8d-427d-a75f-0e0dff89d299', '2023-06-26 16:26:59', '2023-06-26 16:28:35', NULL),
('f9078f1d-402a-47c6-b4ff-84605c78d855', 'INGLÉS PRE KIDS AVANZADO II', 1, 4, '4cbc5cf1-d481-4be1-9c4a-476b009215a0', '7d09a5e1-1405-4463-8431-600126d95d13', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:12:40', '2023-06-27 12:12:40', NULL),
('f9888b66-e654-4911-8570-747edbfdb70c', 'INGLÉS PRE KIDS AVANZADO III', 1, 4, '4cbc5cf1-d481-4be1-9c4a-476b009215a0', '7b319633-1514-4d46-a668-89fe82492dd8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:14:46', '2023-06-27 12:14:46', NULL),
('f9be1e8e-6038-4bb9-8fc8-cf26a036e60a', 'Inglés Intermedio XI', 2, 8, 'e25b3b66-def7-4765-8931-01834e247883', '914dd2f3-78db-4124-90c4-90717911df50', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 16:30:40', '2023-06-26 16:30:40', NULL),
('fac28ca7-5fdb-474d-97bf-dfba2bd96a22', 'Inglés Avanzado X', 18, 8, '1d08651c-dccb-4994-8702-18403fa5976d', '89bd2006-884a-485c-b117-6932150e39a8', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-26 19:32:29', '2023-07-04 12:08:54', NULL),
('fb5baa5a-a765-4a77-a0f3-2750f5db342e', 'INGLÉS KIDS INTERMEDIO VII', 1, 4, '796dc5d7-7efa-437e-a22a-1efa26cfc2d8', 'd6aa0707-c1a6-4e10-b02c-fcb1271b45ca', '6917c7ed-26d3-4ef5-a51e-72510a7eee80', '2023-06-27 12:35:38', '2023-06-27 12:35:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_completo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `nombre_completo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Giraldo Apolinario', 'informatica@casadeguias.edu.pe', NULL, NULL, '$2y$10$TZ0PvvFBoq8sIFKpXiFZVe1ujG8fa6xZJtJG0cPrjeXe/.HdXrB3W', 'PCZtzWqrtUgD0jgrgrmwDGZGthY6kZ9Dc1iWf6t1L8ugKjplbenrK0DDv8dA', '2023-06-14 19:55:05', '2023-06-23 11:37:14'),
(2, 'CARI MARIELA GODOY PERNIA', 'secretaria_ci@agmp.pe', 'CARI MARIELA GODOY PERNIA', NULL, '$2y$10$TZ0PvvFBoq8sIFKpXiFZVe1ujG8fa6xZJtJG0cPrjeXe/.HdXrB3W', 'gGwlQfcPhoFeDYnhfcWoEXxKqyUPrD2KBW6qlxHUkYwv0dBTIAYRT7bidUSo', '2023-06-18 10:24:59', '2023-06-22 10:21:13'),
(3, 'Test1', 'test@mail.com', NULL, NULL, '$2y$10$5tTtQuKLgmDdamCWN98agOr6EY55ahrENrvaYKfRuIazIt2zql0kq', NULL, '2023-06-23 15:59:24', '2023-06-23 15:59:24'),
(4, 'Quispe Blas Sintia', 'institutoceam@casadeguias.edu.pe', NULL, NULL, '$2y$10$vG0tZ6umGlwUQV2AxTnUbuKW.hD13oj6dzoYwdQ/Cr.lCzsQG/SLe', NULL, '2023-07-13 15:20:17', '2023-07-13 15:20:17'),
(5, 'MERY GRANADOS ZARZOSA', 'aadminceam@casadeguias.edu.pe', 'MERY GRANADOS ZARZOSA', NULL, '$2y$10$AgmMRgPtlJ6zMQuuNGFHzenSo6asRFLx8WUPt3YZ9hZ.CGMjojW16', 'zEdBQAMIsGJEGM8ZNgvShweHSHljgbZsnM0TcwPDEXExk10no2JXrluNPXmb', '2023-07-13 15:29:40', '2023-07-13 15:40:14'),
(6, 'Giraldo Apolinario', 'giraldo.apol2@gmail.com', NULL, NULL, '$2y$10$KIB3h1RHtraH94o27UgIDuBUS2q.VcA001FJKsACxQgIY6HpfLwbq', NULL, '2023-07-18 20:16:57', '2023-07-18 20:16:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acta_notas`
--
ALTER TABLE `acta_notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acta_notas_id_registro_auxiliar_index` (`id_registro_auxiliar`);

--
-- Indexes for table `actividads`
--
ALTER TABLE `actividads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambientes`
--
ALTER TABLE `ambientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apoderados`
--
ALTER TABLE `apoderados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apoderados_id_persona_index` (`id_persona`),
  ADD KEY `apoderados_id_ciudad_index` (`id_ciudad`);

--
-- Indexes for table `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asistencias_id_registro_auxiliar_index` (`id_registro_auxiliar`);

--
-- Indexes for table `capacidad_logros`
--
ALTER TABLE `capacidad_logros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capacidad_logros_id_unidad_didacticas_index` (`id_unidad_didacticas`);

--
-- Indexes for table `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`idCiudad`),
  ADD KEY `ciudades_iddep_index` (`iddep`);

--
-- Indexes for table `configuracions`
--
ALTER TABLE `configuracions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `convalidaciones`
--
ALTER TABLE `convalidaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convalidaciones_id_estudiante_index` (`id_estudiante`),
  ADD KEY `convalidaciones_id_unidad_academica_index` (`id_unidad_academica`);

--
-- Indexes for table `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creditos_id_periodo_index` (`id_periodo`),
  ADD KEY `creditos_id_estudiante_index` (`id_estudiante`);

--
-- Indexes for table `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuotas`
--
ALTER TABLE `cuotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuotas_id_credito_index` (`id_credito`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`iddep`),
  ADD KEY `departamentos_idpais_index` (`idpais`);

--
-- Indexes for table `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `det_registro_auxiliars`
--
ALTER TABLE `det_registro_auxiliars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `det_registro_auxiliars_id_unidad_aperturados_index` (`id_unidad_aperturados`),
  ADD KEY `det_registro_auxiliars_id_estudiantes_index` (`id_estudiantes`);

--
-- Indexes for table `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docentes_id_persona_index` (`id_persona`);

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiantes_id_persona_index` (`id_persona`),
  ADD KEY `estudiantes_id_programa_academico_index` (`id_programa_academico`),
  ADD KEY `estudiantes_id_ciudad_index` (`id_ciudad`),
  ADD KEY `estudiantes_id_apoderado_index` (`id_apoderado`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horarios_id_unidad_aperturada_index` (`id_unidad_aperturada`),
  ADD KEY `horarios_id_ambiente_index` (`id_ambiente`);

--
-- Indexes for table `inasistencias`
--
ALTER TABLE `inasistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inasistencias_user_id_foreign` (`user_id`),
  ADD KEY `inasistencias_id_horario_index` (`id_horario`),
  ADD KEY `inasistencias_id_matricula_unidad_index` (`id_matricula_unidad`);

--
-- Indexes for table `indicadors`
--
ALTER TABLE `indicadors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indicadors_id_capacidad_logros_index` (`id_capacidad_logros`);

--
-- Indexes for table `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriculas_id_estudiantes_index` (`id_estudiantes`),
  ADD KEY `matriculas_id_periodo_academicos_index` (`id_periodo_academicos`),
  ADD KEY `matriculas_id_ciclos_index` (`id_ciclos`),
  ADD KEY `matriculas_id_rubro_turno_index` (`id_rubro_turno`);

--
-- Indexes for table `matricula_unidad`
--
ALTER TABLE `matricula_unidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricula_unidad_id_matricula_index` (`id_matricula`),
  ADD KEY `matricula_unidad_id_unidad_aperturada_index` (`id_unidad_aperturada`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulo_academicos`
--
ALTER TABLE `modulo_academicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modulo_academicos_id_tipo_modulos_index` (`id_tipo_modulos`),
  ADD KEY `modulo_academicos_id_programa_academico_index` (`id_programa_academico`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notas_user_id_foreign` (`user_id`),
  ADD KEY `notas_id_matricula_unidad_index` (`id_matricula_unidad`),
  ADD KEY `notas_id_indicador_index` (`id_indicador`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagos_id_periodo_index` (`id_periodo`),
  ADD KEY `pagos_id_recibo_index` (`id_recibo`),
  ADD KEY `pagos_id_producto_index` (`id_producto`),
  ADD KEY `pagos_id_descuento_index` (`id_descuento`);

--
-- Indexes for table `pagos_credito`
--
ALTER TABLE `pagos_credito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagos_credito_id_periodo_index` (`id_periodo`),
  ADD KEY `pagos_credito_id_credito_index` (`id_credito`),
  ADD KEY `pagos_credito_id_producto_index` (`id_producto`),
  ADD KEY `pagos_credito_id_descuento_index` (`id_descuento`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`idpais`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `periodo_academicos`
--
ALTER TABLE `periodo_academicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personas_id_tipo_identificacion_index` (`id_tipo_identificacion`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producto_programa`
--
ALTER TABLE `producto_programa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_programa_id_producto_index` (`id_producto`),
  ADD KEY `producto_programa_id_programa_academico_index` (`id_programa_academico`);

--
-- Indexes for table `programa_academicos`
--
ALTER TABLE `programa_academicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recibos_id_serie_index` (`id_serie`),
  ADD KEY `recibos_id_tipo_index` (`id_tipo`),
  ADD KEY `recibos_id_cuenta_index` (`id_cuenta`),
  ADD KEY `recibos_id_estudiante_index` (`id_estudiante`);

--
-- Indexes for table `recibo_series`
--
ALTER TABLE `recibo_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recibo_tipos`
--
ALTER TABLE `recibo_tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rubros`
--
ALTER TABLE `rubros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rubro_turno`
--
ALTER TABLE `rubro_turno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rubro_turno_id_rubro_index` (`id_rubro`),
  ADD KEY `rubro_turno_id_turno_index` (`id_turno`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tipo_calificacions`
--
ALTER TABLE `tipo_calificacions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_identificacions`
--
ALTER TABLE `tipo_identificacions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_modulos`
--
ALTER TABLE `tipo_modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unidades_aperturadas`
--
ALTER TABLE `unidades_aperturadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidades_aperturadas_id_docente_index` (`id_docente`),
  ADD KEY `unidades_aperturadas_id_unidad_didactica_index` (`id_unidad_didactica`),
  ADD KEY `unidades_aperturadas_id_periodo_index` (`id_periodo`),
  ADD KEY `unidades_aperturadas_id_rubro_turno_index` (`id_rubro_turno`),
  ADD KEY `unidades_aperturadas_id_grupo_index` (`id_grupo`);

--
-- Indexes for table `unidad_aperturados`
--
ALTER TABLE `unidad_aperturados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidad_aperturados_id_unidad_didacticas_index` (`id_unidad_didacticas`),
  ADD KEY `unidad_aperturados_id_docentes_index` (`id_docentes`),
  ADD KEY `unidad_aperturados_id_turnos_index` (`id_turnos`),
  ADD KEY `unidad_aperturados_id_grupos_index` (`id_grupos`),
  ADD KEY `unidad_aperturados_id_ambientes_index` (`id_ambientes`);

--
-- Indexes for table `unidad_didacticas`
--
ALTER TABLE `unidad_didacticas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidad_didacticas_id_modulo_academico_index` (`id_modulo_academico`),
  ADD KEY `unidad_didacticas_id_ciclo_index` (`id_ciclo`),
  ADD KEY `unidad_didacticas_id_configuracion_index` (`id_configuracion`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acta_notas`
--
ALTER TABLE `acta_notas`
  ADD CONSTRAINT `acta_notas_id_registro_auxiliar_foreign` FOREIGN KEY (`id_registro_auxiliar`) REFERENCES `det_registro_auxiliars` (`id`);

--
-- Constraints for table `apoderados`
--
ALTER TABLE `apoderados`
  ADD CONSTRAINT `apoderados_id_ciudad_foreign` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudades` (`idCiudad`),
  ADD CONSTRAINT `apoderados_id_persona_foreign` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`);

--
-- Constraints for table `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_id_registro_auxiliar_foreign` FOREIGN KEY (`id_registro_auxiliar`) REFERENCES `det_registro_auxiliars` (`id`);

--
-- Constraints for table `capacidad_logros`
--
ALTER TABLE `capacidad_logros`
  ADD CONSTRAINT `capacidad_logros_id_unidad_didacticas_foreign` FOREIGN KEY (`id_unidad_didacticas`) REFERENCES `unidad_didacticas` (`id`);

--
-- Constraints for table `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_iddep_foreign` FOREIGN KEY (`iddep`) REFERENCES `departamentos` (`iddep`);

--
-- Constraints for table `convalidaciones`
--
ALTER TABLE `convalidaciones`
  ADD CONSTRAINT `convalidaciones_id_estudiante_foreign` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `convalidaciones_id_unidad_academica_foreign` FOREIGN KEY (`id_unidad_academica`) REFERENCES `unidad_didacticas` (`id`);

--
-- Constraints for table `creditos`
--
ALTER TABLE `creditos`
  ADD CONSTRAINT `creditos_id_estudiante_foreign` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `creditos_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo_academicos` (`id`);

--
-- Constraints for table `cuotas`
--
ALTER TABLE `cuotas`
  ADD CONSTRAINT `cuotas_id_credito_foreign` FOREIGN KEY (`id_credito`) REFERENCES `creditos` (`id`);

--
-- Constraints for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_idpais_foreign` FOREIGN KEY (`idpais`) REFERENCES `paises` (`idpais`);

--
-- Constraints for table `det_registro_auxiliars`
--
ALTER TABLE `det_registro_auxiliars`
  ADD CONSTRAINT `det_registro_auxiliars_id_estudiantes_foreign` FOREIGN KEY (`id_estudiantes`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `det_registro_auxiliars_id_unidad_aperturados_foreign` FOREIGN KEY (`id_unidad_aperturados`) REFERENCES `unidad_aperturados` (`id`);

--
-- Constraints for table `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_id_persona_foreign` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`);

--
-- Constraints for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_id_apoderado_foreign` FOREIGN KEY (`id_apoderado`) REFERENCES `apoderados` (`id`),
  ADD CONSTRAINT `estudiantes_id_ciudad_foreign` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudades` (`idCiudad`),
  ADD CONSTRAINT `estudiantes_id_persona_foreign` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `estudiantes_id_programa_academico_foreign` FOREIGN KEY (`id_programa_academico`) REFERENCES `programa_academicos` (`id`);

--
-- Constraints for table `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_id_ambiente_foreign` FOREIGN KEY (`id_ambiente`) REFERENCES `ambientes` (`id`),
  ADD CONSTRAINT `horarios_id_unidad_aperturada_foreign` FOREIGN KEY (`id_unidad_aperturada`) REFERENCES `unidades_aperturadas` (`id`);

--
-- Constraints for table `inasistencias`
--
ALTER TABLE `inasistencias`
  ADD CONSTRAINT `inasistencias_id_horario_foreign` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id`),
  ADD CONSTRAINT `inasistencias_id_matricula_unidad_foreign` FOREIGN KEY (`id_matricula_unidad`) REFERENCES `matricula_unidad` (`id`),
  ADD CONSTRAINT `inasistencias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `indicadors`
--
ALTER TABLE `indicadors`
  ADD CONSTRAINT `indicadors_id_capacidad_logros_foreign` FOREIGN KEY (`id_capacidad_logros`) REFERENCES `capacidad_logros` (`id`);

--
-- Constraints for table `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_id_ciclos_foreign` FOREIGN KEY (`id_ciclos`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `matriculas_id_estudiantes_foreign` FOREIGN KEY (`id_estudiantes`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `matriculas_id_periodo_academicos_foreign` FOREIGN KEY (`id_periodo_academicos`) REFERENCES `periodo_academicos` (`id`),
  ADD CONSTRAINT `matriculas_id_rubro_turno_foreign` FOREIGN KEY (`id_rubro_turno`) REFERENCES `rubro_turno` (`id`);

--
-- Constraints for table `matricula_unidad`
--
ALTER TABLE `matricula_unidad`
  ADD CONSTRAINT `matricula_unidad_id_matricula_foreign` FOREIGN KEY (`id_matricula`) REFERENCES `matriculas` (`id`),
  ADD CONSTRAINT `matricula_unidad_id_unidad_aperturada_foreign` FOREIGN KEY (`id_unidad_aperturada`) REFERENCES `unidades_aperturadas` (`id`);

--
-- Constraints for table `modulo_academicos`
--
ALTER TABLE `modulo_academicos`
  ADD CONSTRAINT `modulo_academicos_id_programa_academico_foreign` FOREIGN KEY (`id_programa_academico`) REFERENCES `programa_academicos` (`id`),
  ADD CONSTRAINT `modulo_academicos_id_tipo_modulos_foreign` FOREIGN KEY (`id_tipo_modulos`) REFERENCES `tipo_modulos` (`id`);

--
-- Constraints for table `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_id_indicador_foreign` FOREIGN KEY (`id_indicador`) REFERENCES `indicadors` (`id`),
  ADD CONSTRAINT `notas_id_matricula_unidad_foreign` FOREIGN KEY (`id_matricula_unidad`) REFERENCES `matricula_unidad` (`id`),
  ADD CONSTRAINT `notas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_id_descuento_foreign` FOREIGN KEY (`id_descuento`) REFERENCES `descuentos` (`id`),
  ADD CONSTRAINT `pagos_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo_academicos` (`id`),
  ADD CONSTRAINT `pagos_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `pagos_id_recibo_foreign` FOREIGN KEY (`id_recibo`) REFERENCES `recibos` (`id`);

--
-- Constraints for table `pagos_credito`
--
ALTER TABLE `pagos_credito`
  ADD CONSTRAINT `pagos_credito_id_credito_foreign` FOREIGN KEY (`id_credito`) REFERENCES `creditos` (`id`),
  ADD CONSTRAINT `pagos_credito_id_descuento_foreign` FOREIGN KEY (`id_descuento`) REFERENCES `descuentos` (`id`),
  ADD CONSTRAINT `pagos_credito_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo_academicos` (`id`),
  ADD CONSTRAINT `pagos_credito_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Constraints for table `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_id_tipo_identificacion_foreign` FOREIGN KEY (`id_tipo_identificacion`) REFERENCES `tipo_identificacions` (`id`);

--
-- Constraints for table `producto_programa`
--
ALTER TABLE `producto_programa`
  ADD CONSTRAINT `producto_programa_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `producto_programa_id_programa_academico_foreign` FOREIGN KEY (`id_programa_academico`) REFERENCES `programa_academicos` (`id`);

--
-- Constraints for table `recibos`
--
ALTER TABLE `recibos`
  ADD CONSTRAINT `recibos_id_cuenta_foreign` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas` (`id`),
  ADD CONSTRAINT `recibos_id_estudiante_foreign` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `recibos_id_serie_foreign` FOREIGN KEY (`id_serie`) REFERENCES `recibo_series` (`id`),
  ADD CONSTRAINT `recibos_id_tipo_foreign` FOREIGN KEY (`id_tipo`) REFERENCES `recibo_tipos` (`id`);

--
-- Constraints for table `rubro_turno`
--
ALTER TABLE `rubro_turno`
  ADD CONSTRAINT `rubro_turno_id_rubro_foreign` FOREIGN KEY (`id_rubro`) REFERENCES `rubros` (`id`),
  ADD CONSTRAINT `rubro_turno_id_turno_foreign` FOREIGN KEY (`id_turno`) REFERENCES `turnos` (`id`);

--
-- Constraints for table `unidades_aperturadas`
--
ALTER TABLE `unidades_aperturadas`
  ADD CONSTRAINT `unidades_aperturadas_id_docente_foreign` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`),
  ADD CONSTRAINT `unidades_aperturadas_id_grupo_foreign` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id`),
  ADD CONSTRAINT `unidades_aperturadas_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo_academicos` (`id`),
  ADD CONSTRAINT `unidades_aperturadas_id_rubro_turno_foreign` FOREIGN KEY (`id_rubro_turno`) REFERENCES `rubro_turno` (`id`),
  ADD CONSTRAINT `unidades_aperturadas_id_unidad_didactica_foreign` FOREIGN KEY (`id_unidad_didactica`) REFERENCES `unidad_didacticas` (`id`);

--
-- Constraints for table `unidad_aperturados`
--
ALTER TABLE `unidad_aperturados`
  ADD CONSTRAINT `unidad_aperturados_id_ambientes_foreign` FOREIGN KEY (`id_ambientes`) REFERENCES `ambientes` (`id`),
  ADD CONSTRAINT `unidad_aperturados_id_docentes_foreign` FOREIGN KEY (`id_docentes`) REFERENCES `docentes` (`id`),
  ADD CONSTRAINT `unidad_aperturados_id_grupos_foreign` FOREIGN KEY (`id_grupos`) REFERENCES `grupos` (`id`),
  ADD CONSTRAINT `unidad_aperturados_id_turnos_foreign` FOREIGN KEY (`id_turnos`) REFERENCES `turnos` (`id`),
  ADD CONSTRAINT `unidad_aperturados_id_unidad_didacticas_foreign` FOREIGN KEY (`id_unidad_didacticas`) REFERENCES `unidad_didacticas` (`id`);

--
-- Constraints for table `unidad_didacticas`
--
ALTER TABLE `unidad_didacticas`
  ADD CONSTRAINT `unidad_didacticas_id_ciclo_foreign` FOREIGN KEY (`id_ciclo`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `unidad_didacticas_id_configuracion_foreign` FOREIGN KEY (`id_configuracion`) REFERENCES `configuracions` (`id`),
  ADD CONSTRAINT `unidad_didacticas_id_modulo_academico_foreign` FOREIGN KEY (`id_modulo_academico`) REFERENCES `modulo_academicos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
