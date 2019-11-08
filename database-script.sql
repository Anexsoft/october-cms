-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.26 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para kodoti_october
CREATE DATABASE IF NOT EXISTS `kodoti_october` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `kodoti_october`;

-- Volcando estructura para tabla kodoti_october.backend_access_log
CREATE TABLE IF NOT EXISTS `backend_access_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.backend_access_log: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `backend_access_log` DISABLE KEYS */;
INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
	(1, 1, '::1', '2019-11-03 17:47:28', '2019-11-03 17:47:28'),
	(2, 1, '::1', '2019-11-03 18:50:33', '2019-11-03 18:50:33'),
	(3, 1, '::1', '2019-11-06 07:39:34', '2019-11-06 07:39:34'),
	(4, 2, '::1', '2019-11-06 07:54:05', '2019-11-06 07:54:05'),
	(5, 1, '::1', '2019-11-06 07:54:23', '2019-11-06 07:54:23'),
	(6, 2, '::1', '2019-11-06 07:57:30', '2019-11-06 07:57:30'),
	(7, 1, '::1', '2019-11-06 07:57:58', '2019-11-06 07:57:58'),
	(8, 2, '::1', '2019-11-06 07:59:19', '2019-11-06 07:59:19'),
	(9, 1, '::1', '2019-11-06 07:59:34', '2019-11-06 07:59:34'),
	(10, 1, '::1', '2019-11-06 17:45:27', '2019-11-06 17:45:27'),
	(11, 1, '::1', '2019-11-07 23:33:38', '2019-11-07 23:33:38'),
	(12, 1, '::1', '2019-11-08 00:04:08', '2019-11-08 00:04:08'),
	(13, 1, '::1', '2019-11-08 01:02:42', '2019-11-08 01:02:42');
/*!40000 ALTER TABLE `backend_access_log` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.backend_users
CREATE TABLE IF NOT EXISTS `backend_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_unique` (`login`),
  UNIQUE KEY `email_unique` (`email`),
  KEY `act_code_index` (`activation_code`),
  KEY `reset_code_index` (`reset_password_code`),
  KEY `admin_role_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.backend_users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `backend_users` DISABLE KEYS */;
INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
	(1, 'Eduardo', 'Rodríguez', 'admin', 'admin@kodoti.com', '$2y$10$ZPSihvdf6mtfJTGyp6keF.RXZeKhmqon4bCC79MJLaj1YDEfW81a6', NULL, '$2y$10$NJVqqPv0jmPmhyy1YNGlKOv8.wXeQyauFn4VngdZ6CHNAA9/Jw7WG', NULL, '', 1, 2, NULL, '2019-11-08 01:02:42', '2019-11-03 17:46:15', '2019-11-08 01:02:42', NULL, 1),
	(2, 'Juan', 'Perez', 'jperez', 'jperez@gmail.com', '$2y$10$MhJCMC1Ud93XPD8JrfI97uCCNWZ3eDoGPS8Gp6oJij2ZmXo/8iCje', NULL, NULL, NULL, '{"cms.manage_pages":-1,"cms.manage_layouts":-1,"cms.manage_theme_options":-1,"cms.manage_themes":-1,"cms.manage_content":-1,"cms.manage_assets":-1,"cms.manage_partials":-1,"system.manage_mail_settings":-1,"system.access_logs":-1,"system.manage_updates":-1,"backend.access_dashboard":1,"backend.manage_default_dashboard":-1,"media.manage_media":1,"backend.manage_branding":-1,"backend.manage_editor":-1,"backend.manage_preferences":-1,"backend.impersonate_users":-1,"backend.manage_users":-1,"rainlab.builder.manage_plugins":-1}', 0, 1, NULL, '2019-11-06 07:59:18', '2019-11-06 07:53:42', '2019-11-06 07:59:31', NULL, 0);
/*!40000 ALTER TABLE `backend_users` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.backend_users_groups
CREATE TABLE IF NOT EXISTS `backend_users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.backend_users_groups: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `backend_users_groups` DISABLE KEYS */;
INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `backend_users_groups` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.backend_user_groups
CREATE TABLE IF NOT EXISTS `backend_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`),
  KEY `code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.backend_user_groups: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `backend_user_groups` DISABLE KEYS */;
INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
	(1, 'Owners', '2019-11-03 17:46:15', '2019-11-03 17:46:15', 'owners', 'Default group for website owners.', 0);
/*!40000 ALTER TABLE `backend_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.backend_user_preferences
CREATE TABLE IF NOT EXISTS `backend_user_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.backend_user_preferences: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `backend_user_preferences` DISABLE KEYS */;
INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
	(1, 1, 'backend', 'reportwidgets', 'dashboard', '{"welcome":{"class":"Backend\\\\ReportWidgets\\\\Welcome","sortOrder":"50","configuration":{"title":"Welcome","ocWidgetWidth":"6","ocWidgetNewRow":null}},"systemStatus":{"class":"System\\\\ReportWidgets\\\\Status","sortOrder":"70","configuration":{"title":"System status","ocWidgetWidth":"6","ocWidgetNewRow":null}},"activeTheme":{"class":"Cms\\\\ReportWidgets\\\\ActiveTheme","sortOrder":"60","configuration":{"title":"Website","ocWidgetWidth":"6","ocWidgetNewRow":null}}}'),
	(2, 1, 'backend', 'backend', 'preferences', '{"locale":"en","fallback_locale":"en","timezone":"UTC","editor_font_size":"16","editor_word_wrap":"fluid","editor_code_folding":"manual","editor_tab_size":"4","editor_theme":"twilight","editor_show_invisibles":"0","editor_highlight_active_line":"1","editor_use_hard_tabs":"0","editor_show_gutter":"1","editor_auto_closing":"0","editor_autocompletion":"manual","editor_enable_snippets":"0","editor_display_indent_guides":"0","editor_show_print_margin":"0","user_id":"1"}');
/*!40000 ALTER TABLE `backend_user_preferences` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.backend_user_roles
CREATE TABLE IF NOT EXISTS `backend_user_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_unique` (`name`),
  KEY `role_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.backend_user_roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `backend_user_roles` DISABLE KEYS */;
INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
	(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-11-03 17:46:15', '2019-11-03 17:46:15'),
	(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-11-03 17:46:15', '2019-11-06 07:55:04');
/*!40000 ALTER TABLE `backend_user_roles` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.backend_user_throttle
CREATE TABLE IF NOT EXISTS `backend_user_throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_user_throttle_user_id_index` (`user_id`),
  KEY `backend_user_throttle_ip_address_index` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.backend_user_throttle: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `backend_user_throttle` DISABLE KEYS */;
INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
	(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL),
	(2, 2, '::1', 0, NULL, 0, NULL, 0, NULL);
/*!40000 ALTER TABLE `backend_user_throttle` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.cache: 0 rows
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.cms_theme_data
CREATE TABLE IF NOT EXISTS `cms_theme_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_data_theme_index` (`theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.cms_theme_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cms_theme_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_theme_data` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.cms_theme_logs
CREATE TABLE IF NOT EXISTS `cms_theme_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_logs_type_index` (`type`),
  KEY `cms_theme_logs_theme_index` (`theme`),
  KEY `cms_theme_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.cms_theme_logs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cms_theme_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_theme_logs` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.cms_theme_templates
CREATE TABLE IF NOT EXISTS `cms_theme_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_templates_source_index` (`source`),
  KEY `cms_theme_templates_path_index` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.cms_theme_templates: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cms_theme_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_theme_templates` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.deferred_bindings
CREATE TABLE IF NOT EXISTS `deferred_bindings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deferred_bindings_master_type_index` (`master_type`),
  KEY `deferred_bindings_master_field_index` (`master_field`),
  KEY `deferred_bindings_slave_type_index` (`slave_type`),
  KEY `deferred_bindings_slave_id_index` (`slave_id`),
  KEY `deferred_bindings_session_key_index` (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.deferred_bindings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deferred_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `deferred_bindings` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.kodoti_events_categories
CREATE TABLE IF NOT EXISTS `kodoti_events_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.kodoti_events_categories: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `kodoti_events_categories` DISABLE KEYS */;
INSERT INTO `kodoti_events_categories` (`id`, `title`, `description`, `slug`, `created_at`, `updated_at`) VALUES
	(2, 'Tecnología', 'Eventos relacionados al mundo de la tecnología.', 'tecnologia', '2019-11-05 17:56:35', '2019-11-05 21:07:13'),
	(3, 'Deportes', 'Eventos relacionados a los deportes.', 'back-end', '2019-11-05 21:06:48', '2019-11-05 21:07:27'),
	(4, 'Ocio', 'Eventos relacionados al mundo del ocio.', 'fiestas', '2019-11-05 21:07:52', '2019-11-05 21:07:52'),
	(5, 'Ayuda social', 'Eventos beneficiosos relacionados a la ayuda social.', 'ayuda-social', '2019-11-05 21:08:26', '2019-11-05 21:08:26');
/*!40000 ALTER TABLE `kodoti_events_categories` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.kodoti_events_events
CREATE TABLE IF NOT EXISTS `kodoti_events_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `date` datetime DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.kodoti_events_events: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `kodoti_events_events` DISABLE KEYS */;
INSERT INTO `kodoti_events_events` (`id`, `title`, `slug`, `description`, `content`, `date`, `location`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 'Todo sobre Angular 2020', 'todo-sobre-angular-2020', 'Entérate junto a los expertos de Google todas las sorpresas que traemos para Angular este 2020.', '### Lorem ipsum dolor sit amet\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n**Lorem ipsum dolor sit amet**, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n* Lorem ipsum dolor sit amet\r\n* Lorem ipsum dolor sit amet\r\n* Lorem ipsum dolor sit amet\r\n* Lorem ipsum dolor sit amet', '2019-11-16 14:30:00', 'San Isidro - Perú', 2, '2019-11-05 21:45:19', '2019-11-06 06:57:50'),
	(2, 'Messi sobre su visión del fútbol', 'messi-sobre-su-vision-del-futbol', 'Charla de Messi donde compartirá su opinión personal sobre como ve el futbol.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-11-23 05:25:00', 'Hotel Sheraton - Lima', 3, '2019-11-05 22:17:28', '2019-11-05 22:21:14'),
	(3, 'Educación ecológica', 'educacion-ecologica', 'Charlas sobre el cuidado del medio ambiente en el colegio Jesus de La Molina.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-11-30 04:20:00', 'Lima', 5, '2019-11-05 22:19:41', '2019-11-05 22:20:11'),
	(4, 'Fiesta de cierre de año', 'fiesta-de-cierre-de-ano', 'Cierra el año a lo grande con el mejor evento de todos los tiempos.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-12-31 20:00:00', 'Asia', 4, '2019-11-05 22:22:03', '2019-11-05 22:22:37'),
	(5, 'Lo nuevo de KODOTI', 'lo-nuevo-de-kodoti', 'Charla donde el CEO de KODOTI explicará de las novedades de la web.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-11-30 18:30:00', 'YouTube - Online', 2, '2019-11-05 22:59:10', '2019-11-05 23:00:26');
/*!40000 ALTER TABLE `kodoti_events_events` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.kodoti_events_subscribers
CREATE TABLE IF NOT EXISTS `kodoti_events_subscribers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.kodoti_events_subscribers: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `kodoti_events_subscribers` DISABLE KEYS */;
INSERT INTO `kodoti_events_subscribers` (`id`, `fullname`, `email`, `document`, `event_id`, `created_at`, `updated_at`) VALUES
	(1, 'Eduardo Rodríguez', 'erodriguezp105@gmail.com', '111111111', 2, NULL, '2019-11-06 07:31:36'),
	(2, 'Juan Perez', 'juan@hotmail.com', '123123123', 2, '2019-11-06 07:33:52', '2019-11-06 07:33:52'),
	(3, 'Carla Perez', 'cperez@gmail.com', '123456789', 2, '2019-11-06 07:41:41', '2019-11-06 07:41:41');
/*!40000 ALTER TABLE `kodoti_events_subscribers` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.kodoti_slider_pictures
CREATE TABLE IF NOT EXISTS `kodoti_slider_pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `items` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.kodoti_slider_pictures: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `kodoti_slider_pictures` DISABLE KEYS */;
INSERT INTO `kodoti_slider_pictures` (`id`, `name`, `code`, `created_at`, `updated_at`, `items`) VALUES
	(1, 'Galería principal', 'HOME-SLIDER', '2019-11-05 23:23:32', '2019-11-05 23:48:38', '[{"description":"Evento pr\\u00f3ximo de tecnolog\\u00eda sobre Angular a fin de mes","url":"todo-sobre-angular-2020","image":"\\/home-slider\\/slider-1.jpg"},{"description":"Encuentro con Messi antes de acabar el a\\u00f1o","url":"messi-sobre-su-vision-del-futbol","image":"\\/home-slider\\/slider-2.jpg"}]');
/*!40000 ALTER TABLE `kodoti_slider_pictures` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.migrations: 40 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
	(2, '2013_10_01_000002_Db_System_Files', 1),
	(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
	(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
	(5, '2013_10_01_000005_Db_System_Settings', 1),
	(6, '2013_10_01_000006_Db_System_Parameters', 1),
	(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
	(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
	(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
	(10, '2014_10_01_000010_Db_Jobs', 1),
	(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
	(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
	(13, '2014_10_01_000013_Db_System_Sessions', 1),
	(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
	(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
	(16, '2015_10_01_000016_Db_Cache', 1),
	(17, '2015_10_01_000017_Db_System_Revisions', 1),
	(18, '2015_10_01_000018_Db_FailedJobs', 1),
	(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
	(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
	(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
	(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
	(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
	(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
	(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
	(26, '2013_10_01_000001_Db_Backend_Users', 2),
	(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
	(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
	(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
	(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
	(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
	(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
	(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
	(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
	(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
	(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
	(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
	(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
	(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
	(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.sessions: 0 rows
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_event_logs
CREATE TABLE IF NOT EXISTS `system_event_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_event_logs_level_index` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_event_logs: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `system_event_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_event_logs` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_files
CREATE TABLE IF NOT EXISTS `system_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_files_field_index` (`field`),
  KEY `system_files_attachment_id_index` (`attachment_id`),
  KEY `system_files_attachment_type_index` (`attachment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_files: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `system_files` DISABLE KEYS */;
INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, '5dbf1ad858b9b561183781.jpg', '66387227_10156660865479613_6369823523766009856_n.jpg', 359624, 'image/jpeg', NULL, NULL, 'avatar', '1', 'Backend\\Models\\User', 1, 1, '2019-11-03 18:22:16', '2019-11-03 18:22:32'),
	(3, '5dbf21574a4b5999335242.png', 'logo.png', 15964, 'image/png', NULL, NULL, 'logo', '2', 'Backend\\Models\\BrandSetting', 1, 3, '2019-11-03 18:49:59', '2019-11-03 18:50:15'),
	(4, '5dc1f0067c497182171445.jpg', 'angular-event.jpg', 52427, 'image/jpeg', NULL, NULL, 'picture', '1', 'Kodoti\\Events\\Models\\Event', 1, 4, '2019-11-05 21:56:22', '2019-11-05 21:56:25'),
	(5, '5dc1f536f202c881888641.jpg', 'messi.jpg', 63044, 'image/jpeg', NULL, NULL, 'picture', '2', 'Kodoti\\Events\\Models\\Event', 1, 5, '2019-11-05 22:18:31', '2019-11-05 22:18:32'),
	(6, '5dc1f5b1a16ac508740554.jpg', 'charla.jpg', 81438, 'image/jpeg', NULL, NULL, 'picture', '3', 'Kodoti\\Events\\Models\\Event', 1, 6, '2019-11-05 22:20:33', '2019-11-05 22:20:35'),
	(7, '5dc1f63c263b0984380271.jpg', 'fiesta.jpg', 99408, 'image/jpeg', NULL, NULL, 'picture', '4', 'Kodoti\\Events\\Models\\Event', 1, 7, '2019-11-05 22:22:52', '2019-11-05 22:22:53'),
	(8, '5dc1ff08eed96382723013.jpg', 'kodoti.jpg', 53176, 'image/jpeg', NULL, NULL, 'picture', '5', 'Kodoti\\Events\\Models\\Event', 1, 8, '2019-11-05 23:00:24', '2019-11-05 23:00:26');
/*!40000 ALTER TABLE `system_files` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_mail_layouts
CREATE TABLE IF NOT EXISTS `system_mail_layouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_mail_layouts: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `system_mail_layouts` DISABLE KEYS */;
INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
	(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n</head>\n<body>\n    <style type="text/css" media="screen">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class="wrapper layout-default" width="100%" cellpadding="0" cellspacing="0">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align="center">\n                <table class="content" width="100%" cellpadding="0" cellspacing="0">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class="body" width="100%" cellpadding="0" cellspacing="0">\n                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class="content-cell">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ "now"|date("Y") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-11-03 17:46:15', '2019-11-03 17:46:15'),
	(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n</head>\n<body>\n    <style type="text/css" media="screen">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class="wrapper layout-system" width="100%" cellpadding="0" cellspacing="0">\n        <tr>\n            <td align="center">\n                <table class="content" width="100%" cellpadding="0" cellspacing="0">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class="body" width="100%" cellpadding="0" cellspacing="0">\n                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class="content-cell">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-11-03 17:46:15', '2019-11-03 17:46:15');
/*!40000 ALTER TABLE `system_mail_layouts` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_mail_partials
CREATE TABLE IF NOT EXISTS `system_mail_partials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_mail_partials: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `system_mail_partials` DISABLE KEYS */;
INSERT INTO `system_mail_partials` (`id`, `name`, `code`, `content_html`, `content_text`, `is_custom`, `created_at`, `updated_at`) VALUES
	(1, 'Header', 'header', '<tr>\n    <td class="header">\n        {% if url %}\n            <a href="{{ url }}">\n                {{ body }}\n            </a>\n        {% else %}\n            <span>\n                {{ body }}\n            </span>\n        {% endif %}\n    </td>\n</tr>', '*** {{ body|trim }} <{{ url }}>', 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04'),
	(2, 'Footer', 'footer', '<tr>\n    <td>\n        <table class="footer" align="center" width="570" cellpadding="0" cellspacing="0">\n            <tr>\n                <td class="content-cell" align="center">\n                    {{ body|md_safe }}\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>', '-------------------\n{{ body|trim }}', 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04'),
	(3, 'Button', 'button', '<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0">\n    <tr>\n        <td align="center">\n            <table width="100%" border="0" cellpadding="0" cellspacing="0">\n                <tr>\n                    <td align="center">\n                        <table border="0" cellpadding="0" cellspacing="0">\n                            <tr>\n                                <td>\n                                    <a href="{{ url }}" class="button button-{{ type ?: \'primary\' }}" target="_blank">\n                                        {{ body }}\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }} <{{ url }}>', 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04'),
	(4, 'Panel', 'panel', '<table class="panel" width="100%" cellpadding="0" cellspacing="0">\n    <tr>\n        <td class="panel-content">\n            <table width="100%" cellpadding="0" cellspacing="0">\n                <tr>\n                    <td class="panel-item">\n                        {{ body|md_safe }}\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04'),
	(5, 'Table', 'table', '<div class="table">\n    {{ body|md_safe }}\n</div>', '{{ body|trim }}', 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04'),
	(6, 'Subcopy', 'subcopy', '<table class="subcopy" width="100%" cellpadding="0" cellspacing="0">\n    <tr>\n        <td>\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '-----\n{{ body|trim }}', 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04'),
	(7, 'Promotion', 'promotion', '<table class="promotion" align="center" width="100%" cellpadding="0" cellspacing="0">\n    <tr>\n        <td align="center">\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04');
/*!40000 ALTER TABLE `system_mail_partials` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_mail_templates
CREATE TABLE IF NOT EXISTS `system_mail_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_mail_templates_layout_id_index` (`layout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_mail_templates: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `system_mail_templates` DISABLE KEYS */;
INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
	(1, 'backend::mail.invite', NULL, 'Invite new admin to the site', NULL, NULL, 2, 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04'),
	(2, 'backend::mail.restore', NULL, 'Reset an admin password', NULL, NULL, 2, 0, '2019-11-03 18:55:04', '2019-11-03 18:55:04');
/*!40000 ALTER TABLE `system_mail_templates` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_parameters
CREATE TABLE IF NOT EXISTS `system_parameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `item_index` (`namespace`,`group`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_parameters: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `system_parameters` DISABLE KEYS */;
INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
	(1, 'system', 'update', 'count', '0'),
	(2, 'system', 'core', 'hash', '"7ecf00bd75e60458191bfcdc43dc14e5"'),
	(3, 'system', 'core', 'build', '"458"'),
	(4, 'system', 'update', 'retry', '1573256020'),
	(5, 'cms', 'theme', 'active', '"kodoti"');
/*!40000 ALTER TABLE `system_parameters` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_plugin_history
CREATE TABLE IF NOT EXISTS `system_plugin_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_plugin_history_code_index` (`code`),
  KEY `system_plugin_history_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_plugin_history: ~45 rows (aproximadamente)
/*!40000 ALTER TABLE `system_plugin_history` DISABLE KEYS */;
INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
	(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2019-11-03 17:46:15'),
	(28, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-05 16:22:32'),
	(29, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2019-11-05 16:22:32'),
	(30, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2019-11-05 16:22:32'),
	(31, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2019-11-05 16:22:32'),
	(32, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2019-11-05 16:22:32'),
	(33, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2019-11-05 16:22:32'),
	(34, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2019-11-05 16:22:32'),
	(35, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2019-11-05 16:22:32'),
	(36, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2019-11-05 16:22:32'),
	(37, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2019-11-05 16:22:32'),
	(38, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2019-11-05 16:22:32'),
	(39, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2019-11-05 16:22:32'),
	(40, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2019-11-05 16:22:32'),
	(41, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2019-11-05 16:22:32'),
	(42, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2019-11-05 16:22:32'),
	(43, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2019-11-05 16:22:32'),
	(44, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2019-11-05 16:22:32'),
	(45, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2019-11-05 16:22:32'),
	(46, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2019-11-05 16:22:32'),
	(47, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the "current.hasAttribute is not a function" error.', '2019-11-05 16:22:32'),
	(48, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2019-11-05 16:22:32'),
	(49, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2019-11-05 16:22:32'),
	(50, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2019-11-05 16:22:32'),
	(51, 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2019-11-05 16:22:32'),
	(52, 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the "Migration" popup when saving changes in the database editor.', '2019-11-05 16:22:32'),
	(53, 'RainLab.Builder', 'comment', '1.0.26', 'Allow special default values for columns and added new "Add ID column" button to database editor.', '2019-11-05 16:22:32'),
	(54, 'Kodoti.Events', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-05 16:24:17'),
	(57, 'Kodoti.Events', 'script', '1.0.2', 'builder_table_create_kodoti_events_categories.php', '2019-11-05 17:07:42'),
	(58, 'Kodoti.Events', 'comment', '1.0.2', 'Created table kodoti_events_categories', '2019-11-05 17:07:42'),
	(59, 'Kodoti.Events', 'script', '1.0.3', 'builder_table_update_kodoti_events_categories.php', '2019-11-05 17:10:53'),
	(60, 'Kodoti.Events', 'comment', '1.0.3', 'Updated table kodoti_events_categories', '2019-11-05 17:10:53'),
	(61, 'Kodoti.Events', 'script', '1.0.4', 'builder_table_create_kodoti_events_events.php', '2019-11-05 18:28:15'),
	(62, 'Kodoti.Events', 'comment', '1.0.4', 'Created table kodoti_events_events', '2019-11-05 18:28:15'),
	(65, 'Kodoti.Events', 'script', '1.0.5', 'builder_table_update_kodoti_events_events.php', '2019-11-05 21:44:38'),
	(66, 'Kodoti.Events', 'comment', '1.0.5', 'Updated table kodoti_events_events', '2019-11-05 21:44:38'),
	(67, 'Kodoti.Events', 'script', '1.0.6', 'builder_table_update_kodoti_events_events_2.php', '2019-11-05 22:01:10'),
	(68, 'Kodoti.Events', 'comment', '1.0.6', 'Updated table kodoti_events_events', '2019-11-05 22:01:10'),
	(69, 'Kodoti.Slider', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-05 23:10:14'),
	(82, 'Kodoti.Slider', 'script', '1.0.2', 'builder_table_create_kodoti_slider_pictures.php', '2019-11-05 23:23:15'),
	(83, 'Kodoti.Slider', 'comment', '1.0.2', 'Created table kodoti_slider_pictures', '2019-11-05 23:23:15'),
	(84, 'Kodoti.Slider', 'script', '1.0.3', 'builder_table_update_kodoti_slider_pictures.php', '2019-11-05 23:30:09'),
	(85, 'Kodoti.Slider', 'comment', '1.0.3', 'Updated table kodoti_slider_pictures', '2019-11-05 23:30:09'),
	(90, 'Kodoti.Events', 'script', '1.0.7', 'builder_table_create_kodoti_events_subscribers.php', '2019-11-06 07:14:49'),
	(91, 'Kodoti.Events', 'comment', '1.0.7', 'Created table kodoti_events_subscribers', '2019-11-06 07:14:49');
/*!40000 ALTER TABLE `system_plugin_history` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_plugin_versions
CREATE TABLE IF NOT EXISTS `system_plugin_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `system_plugin_versions_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_plugin_versions: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `system_plugin_versions` DISABLE KEYS */;
INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
	(1, 'October.Demo', '1.0.1', '2019-11-03 17:46:15', 0, 0),
	(3, 'RainLab.Builder', '1.0.26', '2019-11-05 16:22:32', 0, 0),
	(4, 'Kodoti.Events', '1.0.7', '2019-11-06 07:14:49', 0, 0),
	(5, 'Kodoti.Slider', '1.0.3', '2019-11-05 23:30:09', 0, 0);
/*!40000 ALTER TABLE `system_plugin_versions` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_request_logs
CREATE TABLE IF NOT EXISTS `system_request_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_request_logs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `system_request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_request_logs` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_revisions
CREATE TABLE IF NOT EXISTS `system_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  KEY `system_revisions_user_id_index` (`user_id`),
  KEY `system_revisions_field_index` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_revisions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `system_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_revisions` ENABLE KEYS */;

-- Volcando estructura para tabla kodoti_october.system_settings
CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `system_settings_item_index` (`item`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kodoti_october.system_settings: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
	(1, 'cms_maintenance_settings', '{"is_enabled":"1","cms_page":"mantenimiento.htm","theme_map":{"demo":"mantenimiento.htm"}}'),
	(2, 'backend_brand_settings', '{"app_name":"KODOTI Events","app_tagline":"Eventos para todos.","primary_color":"#34495e","secondary_color":"#e67e22","accent_color":"#3498db","menu_mode":"inline","custom_css":""}'),
	(3, 'rainlab_builder_settings', '{"author_name":"kodoti","author_namespace":"Kodoti"}');
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
