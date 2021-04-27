-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 27 Kwi 2021, 07:37
-- Wersja serwera: 10.5.8-MariaDB
-- Wersja PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `holika_new`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bb_creams`
--

CREATE TABLE `bb_creams` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'model_def_strapi::core-store', '{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(2, 'model_def_strapi::webhooks', '{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(3, 'model_def_strapi::permission', '{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}', 'object', NULL, NULL),
(4, 'model_def_strapi::role', '{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}', 'object', NULL, NULL),
(5, 'model_def_strapi::user', '{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}', 'object', NULL, NULL),
(6, 'model_def_plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(7, 'model_def_plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(8, 'model_def_plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(9, 'model_def_plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(10, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', '', ''),
(11, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(12, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"properties\",\"size\":12}]],\"editRelations\":[\"role\"]}}', 'object', '', ''),
(13, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]],\"editRelations\":[\"roles\"]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(18, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', ''),
(21, 'model_def_application::footer.footer', '{\"uid\":\"application::footer.footer\",\"collectionName\":\"footer\",\"kind\":\"singleType\",\"info\":{\"name\":\"Stopka\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"address\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"nip\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"regon\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"phone\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"phone_second\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"additional_info\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"email\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"footer\",\"populate\":[\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_footer\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::application::footer.footer', '{\"uid\":\"application::footer.footer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"Address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address\",\"searchable\":true,\"sortable\":true}},\"nip\":{\"edit\":{\"label\":\"Nip\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nip\",\"searchable\":true,\"sortable\":true}},\"regon\":{\"edit\":{\"label\":\"Regon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Regon\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"phone_second\":{\"edit\":{\"label\":\"Phone_second\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone_second\",\"searchable\":true,\"sortable\":true}},\"additional_info\":{\"edit\":{\"label\":\"Additional_info\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Additional_info\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"address\",\"nip\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"address\",\"size\":6}],[{\"name\":\"nip\",\"size\":6},{\"name\":\"regon\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"phone_second\",\"size\":6}],[{\"name\":\"additional_info\",\"size\":6},{\"name\":\"email\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', ''),
(23, 'model_def_application::nawilzamy.nawilzamy', '{\"uid\":\"application::nawilzamy.nawilzamy\",\"collectionName\":\"moisturizing\",\"kind\":\"singleType\",\"info\":{\"name\":\"Moisturizing\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(25, 'model_def_application::moisturizing.moisturizing', '{\"uid\":\"application::moisturizing.moisturizing\",\"collectionName\":\"moisturizing\",\"kind\":\"singleType\",\"info\":{\"name\":\"Moisturizing\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(27, 'model_def_plugins::import-content.importconfig', '{\"uid\":\"plugins::import-content.importconfig\",\"collectionName\":\"import-content_importconfig\",\"kind\":\"collectionType\",\"info\":{\"name\":\"importconfig\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"],\"increments\":true,\"comment\":\"\"},\"attributes\":{\"date\":{\"type\":\"date\"},\"source\":{\"type\":\"string\"},\"options\":{\"type\":\"json\"},\"contentType\":{\"type\":\"string\"},\"fieldMapping\":{\"type\":\"json\"},\"ongoing\":{\"type\":\"boolean\"},\"importeditems\":{\"collection\":\"importeditem\",\"via\":\"importconfig\",\"plugin\":\"import-content\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(28, 'model_def_plugins::import-content.importeditem', '{\"uid\":\"plugins::import-content.importeditem\",\"collectionName\":\"import-content_importeditem\",\"kind\":\"collectionType\",\"info\":{\"name\":\"importeditem\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"attributes\":{\"ContentType\":{\"type\":\"string\"},\"ContentId\":{\"type\":\"integer\"},\"importconfig\":{\"model\":\"importconfig\",\"via\":\"importeditems\",\"plugin\":\"import-content\"},\"importedFiles\":{\"type\":\"json\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(31, 'model_def_application::shop-adresses.shop-adresses', '{\"uid\":\"application::shop-adresses.shop-adresses\",\"collectionName\":\"shop_adresses\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Shop Adresses\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"email\":{\"type\":\"email\",\"required\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"phone\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"content\":{\"type\":\"text\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"street\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"city\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"postal_code\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"website\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"latitude\":{\"type\":\"float\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"longitude\":{\"type\":\"float\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"shop-adresses\",\"populate\":[\"id\",\"locale\",\"published_at\"],\"attribute\":\"shop-adress\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::application::shop-adresses.shop-adresses', '{\"uid\":\"application::shop-adresses.shop-adresses\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":true,\"sortable\":true}},\"street\":{\"edit\":{\"label\":\"Street\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Street\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"City\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"City\",\"searchable\":true,\"sortable\":true}},\"postal_code\":{\"edit\":{\"label\":\"Postal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Postal_code\",\"searchable\":true,\"sortable\":true}},\"website\":{\"edit\":{\"label\":\"Website\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Website\",\"searchable\":true,\"sortable\":true}},\"latitude\":{\"edit\":{\"label\":\"Latitude\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Latitude\",\"searchable\":true,\"sortable\":true}},\"longitude\":{\"edit\":{\"label\":\"Longitude\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Longitude\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"email\",\"phone\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"content\",\"size\":6}],[{\"name\":\"street\",\"size\":6},{\"name\":\"city\",\"size\":6}],[{\"name\":\"postal_code\",\"size\":6},{\"name\":\"website\",\"size\":6}],[{\"name\":\"latitude\",\"size\":4},{\"name\":\"longitude\",\"size\":4}]],\"editRelations\":[]}}', 'object', '', ''),
(34, 'model_def_plugins::import-addresses.importconfig', '{\"uid\":\"plugins::import-addresses.importconfig\",\"collectionName\":\"import-addresses_importconfig\",\"kind\":\"collectionType\",\"info\":{\"name\":\"importconfig\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"],\"increments\":true,\"comment\":\"\"},\"attributes\":{\"date\":{\"type\":\"date\"},\"source\":{\"type\":\"string\"},\"options\":{\"type\":\"json\"},\"contentType\":{\"type\":\"string\"},\"fieldMapping\":{\"type\":\"json\"},\"ongoing\":{\"type\":\"boolean\"},\"importeditems\":{\"collection\":\"importeditem\",\"via\":\"importconfig\",\"plugin\":\"import-content\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(36, 'model_def_plugins::import-addresses.importeditem', '{\"uid\":\"plugins::import-addresses.importeditem\",\"collectionName\":\"import-addresses_importeditem\",\"kind\":\"collectionType\",\"info\":{\"name\":\"importeditem\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"attributes\":{\"ContentType\":{\"type\":\"string\"},\"ContentId\":{\"type\":\"integer\"},\"importconfig\":{\"model\":\"importconfig\",\"via\":\"importeditems\",\"plugin\":\"import-content\"},\"importedFiles\":{\"type\":\"json\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(40, 'plugin_import-content_initHasRun', 'true', 'boolean', 'development', ''),
(47, 'plugin_content_manager_configuration_content_types::plugins::import-content.importconfig', '{\"uid\":\"plugins::import-content.importconfig\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"source\",\"defaultSortBy\":\"source\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"Date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Date\",\"searchable\":true,\"sortable\":true}},\"source\":{\"edit\":{\"label\":\"Source\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Source\",\"searchable\":true,\"sortable\":true}},\"options\":{\"edit\":{\"label\":\"Options\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Options\",\"searchable\":false,\"sortable\":false}},\"contentType\":{\"edit\":{\"label\":\"ContentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ContentType\",\"searchable\":true,\"sortable\":true}},\"fieldMapping\":{\"edit\":{\"label\":\"FieldMapping\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FieldMapping\",\"searchable\":false,\"sortable\":false}},\"ongoing\":{\"edit\":{\"label\":\"Ongoing\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ongoing\",\"searchable\":true,\"sortable\":true}},\"importeditems\":{\"edit\":{\"label\":\"Importeditems\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ContentType\"},\"list\":{\"label\":\"Importeditems\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"date\",\"source\",\"contentType\"],\"editRelations\":[\"importeditems\"],\"edit\":[[{\"name\":\"date\",\"size\":4},{\"name\":\"source\",\"size\":6}],[{\"name\":\"options\",\"size\":12}],[{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"fieldMapping\",\"size\":12}],[{\"name\":\"ongoing\",\"size\":4}]]}}', 'object', '', '');
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(48, 'plugin_content_manager_configuration_content_types::plugins::import-content.importeditem', '{\"uid\":\"plugins::import-content.importeditem\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ContentType\",\"defaultSortBy\":\"ContentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ContentType\":{\"edit\":{\"label\":\"ContentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ContentType\",\"searchable\":true,\"sortable\":true}},\"ContentId\":{\"edit\":{\"label\":\"ContentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ContentId\",\"searchable\":true,\"sortable\":true}},\"importconfig\":{\"edit\":{\"label\":\"Importconfig\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"source\"},\"list\":{\"label\":\"Importconfig\",\"searchable\":true,\"sortable\":true}},\"importedFiles\":{\"edit\":{\"label\":\"ImportedFiles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ImportedFiles\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"ContentType\",\"ContentId\",\"importconfig\"],\"editRelations\":[\"importconfig\"],\"edit\":[[{\"name\":\"ContentType\",\"size\":6},{\"name\":\"ContentId\",\"size\":4}],[{\"name\":\"importedFiles\",\"size\":12}]]}}', 'object', '', ''),
(49, 'plugin_content_manager_configuration_content_types::application::moisturizing.moisturizing', '{\"uid\":\"application::moisturizing.moisturizing\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"image\",\"created_at\"],\"edit\":[[{\"name\":\"image\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', ''),
(50, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'production', ''),
(51, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', '', ''),
(52, 'model_def_application::designer-packages.designer-packages', '{\"uid\":\"application::designer-packages.designer-packages\",\"collectionName\":\"designer_packages\",\"kind\":\"singleType\",\"info\":{\"name\":\"Designer Packages\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"images\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(53, 'plugin_content_manager_configuration_content_types::application::designer-packages.designer-packages', '{\"uid\":\"application::designer-packages.designer-packages\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"Images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Images\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"images\",\"created_at\"],\"edit\":[[{\"name\":\"images\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', ''),
(54, 'model_def_application::products-to-be-proud-of.products-to-be-proud-of', '{\"uid\":\"application::products-to-be-proud-of.products-to-be-proud-of\",\"collectionName\":\"products_to_be_proud_ofs\",\"kind\":\"singleType\",\"info\":{\"name\":\"Products To Be Proud Of\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"images\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(55, 'plugin_content_manager_configuration_content_types::application::products-to-be-proud-of.products-to-be-proud-of', '{\"uid\":\"application::products-to-be-proud-of.products-to-be-proud-of\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"Images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Images\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"images\",\"created_at\"],\"edit\":[[{\"name\":\"images\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', ''),
(56, 'model_def_application::bb-creams.bb-creams', '{\"uid\":\"application::bb-creams.bb-creams\",\"collectionName\":\"bb_creams\",\"kind\":\"singleType\",\"info\":{\"name\":\"BB Creams\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"images\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(57, 'plugin_content_manager_configuration_content_types::application::bb-creams.bb-creams', '{\"uid\":\"application::bb-creams.bb-creams\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"Images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Images\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"images\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"images\",\"size\":6}]]}}', 'object', '', ''),
(58, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', '', ''),
(59, 'model_def_plugins::i18n.locale', '{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(60, 'plugin_content_manager_configuration_content_types::plugins::i18n.locale', '{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', '', ''),
(61, 'plugin_i18n_default_locale', '\"pl\"', 'string', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `designer_packages`
--

CREATE TABLE `designer_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `designer_packages`
--

INSERT INTO `designer_packages` (`id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-04-26 09:33:26', '2021-04-26 10:40:45');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `regon` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_second` varchar(255) DEFAULT NULL,
  `additional_info` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `footer`
--

INSERT INTO `footer` (`id`, `name`, `address`, `nip`, `regon`, `phone`, `phone_second`, `additional_info`, `email`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `locale`) VALUES
(1, 'My Asia A&K Beauty Krzysztof Chwesiuk', '43-309 Bielsko-Biała, ul. Bystrzańska 70', '547-20-68-255', '242859723', '+48 33 445 42 45', '+44 203 769 7900', 'Oferty hurtowe, napisz: hurt@holika.pl', 'hurt@holika.pl', '2021-02-10 12:46:30', 1, 1, '2021-02-10 11:46:26', '2021-02-10 11:46:30', 'pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `footer__localizations`
--

CREATE TABLE `footer__localizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `footer_id` int(11) DEFAULT NULL,
  `related_footer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `i18n_locales`
--

CREATE TABLE `i18n_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `i18n_locales`
--

INSERT INTO `i18n_locales` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'English (en)', 'en', NULL, NULL, '2021-04-27 05:19:44', '2021-04-27 05:19:44'),
(2, 'Polish (pl)', 'pl', 1, 1, '2021-04-27 05:20:09', '2021-04-27 05:20:09');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `import-addresses_importconfig`
--

CREATE TABLE `import-addresses_importconfig` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `contentType` varchar(255) DEFAULT NULL,
  `fieldMapping` longtext DEFAULT NULL,
  `ongoing` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `import-addresses_importeditem`
--

CREATE TABLE `import-addresses_importeditem` (
  `id` int(10) UNSIGNED NOT NULL,
  `ContentType` varchar(255) DEFAULT NULL,
  `ContentId` int(11) DEFAULT NULL,
  `importconfig` int(11) DEFAULT NULL,
  `importedFiles` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `import-content_importconfig`
--

CREATE TABLE `import-content_importconfig` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `contentType` varchar(255) DEFAULT NULL,
  `fieldMapping` longtext DEFAULT NULL,
  `ongoing` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `import-content_importconfig`
--

INSERT INTO `import-content_importconfig` (`id`, `date`, `source`, `options`, `contentType`, `fieldMapping`, `ongoing`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, NULL, 'upload', '{\"filename\":\"localizations.csv\"}', 'application::shop-adresses.shop-adresses', '{\"name\":{\"targetField\":\"name\"},\"email\":{\"targetField\":\"email\"},\"phone\":{\"targetField\":\"phone\"},\"content\":{\"targetField\":\"content\"},\"street\":{\"targetField\":\"street\"},\"city\":{\"targetField\":\"city\"},\"postal_code\":{\"targetField\":\"postal_code\"},\"website\":{\"targetField\":\"website\"},\"latitude\":{\"targetField\":\"latitude\"},\"longitude\":{\"targetField\":\"longitude\"}}', 0, NULL, NULL, '2021-02-12 12:03:30', '2021-02-12 12:05:36');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `import-content_importeditem`
--

CREATE TABLE `import-content_importeditem` (
  `id` int(10) UNSIGNED NOT NULL,
  `ContentType` varchar(255) DEFAULT NULL,
  `ContentId` int(11) DEFAULT NULL,
  `importconfig` int(11) DEFAULT NULL,
  `importedFiles` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `importconfigs`
--

CREATE TABLE `importconfigs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `importeditems`
--

CREATE TABLE `importeditems` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `moisturizing`
--

CREATE TABLE `moisturizing` (
  `id` int(10) UNSIGNED NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `moisturizing`
--

INSERT INTO `moisturizing` (`id`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2021-02-11 10:36:41', 1, 1, '2021-02-11 09:36:06', '2021-02-11 09:36:41');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products_to_be_proud_ofs`
--

CREATE TABLE `products_to_be_proud_ofs` (
  `id` int(10) UNSIGNED NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `products_to_be_proud_ofs`
--

INSERT INTO `products_to_be_proud_ofs` (`id`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2021-04-26 12:22:38', 1, 1, '2021-04-26 10:21:41', '2021-04-26 10:41:11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_adresses`
--

CREATE TABLE `shop_adresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_adresses__localizations`
--

CREATE TABLE `shop_adresses__localizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_adress_id` int(11) DEFAULT NULL,
  `shop-adress_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`, `preferedLanguage`) VALUES
(1, 'Hubert', 'Sitarski', NULL, 'hubertsitarski@gmail.com', '$2a$10$rIaXJq6g8MIaV8Sw2QDnY.j6Xv.kvl7l2/6Q7pYX/rQcktPzvBbzu', NULL, NULL, 1, NULL, NULL),
(2, 'High', 'Solutions', NULL, 'test@highsolutions.pl', '$2a$10$b43EMTaSuGHgCEeIh0.4VufFy4AYgJDT48aox2BGkr/bpTsVwGnDu', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_permission`
--

CREATE TABLE `strapi_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `properties` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`, `properties`) VALUES
(1, 'plugins::upload.read', NULL, NULL, '[]', 2, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(2, 'plugins::upload.assets.create', NULL, NULL, '[]', 2, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(3, 'plugins::upload.assets.update', NULL, NULL, '[]', 2, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(4, 'plugins::upload.assets.download', NULL, NULL, '[]', 2, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(5, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 2, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(6, 'plugins::upload.read', NULL, NULL, '[\"admin::is-creator\"]', 3, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(7, 'plugins::upload.assets.create', NULL, NULL, '[]', 3, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(8, 'plugins::upload.assets.update', NULL, NULL, '[\"admin::is-creator\"]', 3, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(9, 'plugins::upload.assets.download', NULL, NULL, '[]', 3, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(10, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 3, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":null}'),
(11, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}'),
(12, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}'),
(13, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-02-09 13:17:00', '2021-04-27 05:04:34', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}'),
(112, 'plugins::content-manager.explorer.create', 'plugins::import-content.importconfig', '[\"date\",\"source\",\"options\",\"contentType\",\"fieldMapping\",\"ongoing\",\"importeditems\"]', '[]', 1, '2021-02-12 11:19:58', '2021-04-27 05:04:35', '{\"fields\":[\"date\",\"source\",\"options\",\"contentType\",\"fieldMapping\",\"ongoing\",\"importeditems\"]}'),
(113, 'plugins::content-manager.explorer.create', 'plugins::import-content.importeditem', '[\"ContentType\",\"ContentId\",\"importconfig\",\"importedFiles\"]', '[]', 1, '2021-02-12 11:19:58', '2021-04-27 05:04:35', '{\"fields\":[\"ContentType\",\"ContentId\",\"importconfig\",\"importedFiles\"]}'),
(114, 'plugins::content-manager.explorer.read', 'plugins::import-content.importconfig', '[\"date\",\"source\",\"options\",\"contentType\",\"fieldMapping\",\"ongoing\",\"importeditems\"]', '[]', 1, '2021-02-12 11:19:58', '2021-04-27 05:04:35', '{\"fields\":[\"date\",\"source\",\"options\",\"contentType\",\"fieldMapping\",\"ongoing\",\"importeditems\"]}'),
(115, 'plugins::content-manager.explorer.read', 'plugins::import-content.importeditem', '[\"ContentType\",\"ContentId\",\"importconfig\",\"importedFiles\"]', '[]', 1, '2021-02-12 11:19:58', '2021-04-27 05:04:35', '{\"fields\":[\"ContentType\",\"ContentId\",\"importconfig\",\"importedFiles\"]}'),
(116, 'plugins::content-manager.explorer.update', 'plugins::import-content.importconfig', '[\"date\",\"source\",\"options\",\"contentType\",\"fieldMapping\",\"ongoing\",\"importeditems\"]', '[]', 1, '2021-02-12 11:19:58', '2021-04-27 05:04:35', '{\"fields\":[\"date\",\"source\",\"options\",\"contentType\",\"fieldMapping\",\"ongoing\",\"importeditems\"]}'),
(117, 'plugins::content-manager.explorer.update', 'plugins::import-content.importeditem', '[\"ContentType\",\"ContentId\",\"importconfig\",\"importedFiles\"]', '[]', 1, '2021-02-12 11:19:58', '2021-04-27 05:04:35', '{\"fields\":[\"ContentType\",\"ContentId\",\"importconfig\",\"importedFiles\"]}'),
(120, 'plugins::content-manager.explorer.create', 'application::moisturizing.moisturizing', '[\"image\"]', '[]', 1, '2021-02-16 09:12:39', '2021-04-27 05:04:35', '{\"fields\":[\"image\"]}'),
(121, 'plugins::content-manager.explorer.update', 'application::moisturizing.moisturizing', '[\"image\"]', '[]', 1, '2021-02-16 09:12:39', '2021-04-27 05:04:35', '{\"fields\":[\"image\"]}'),
(122, 'plugins::content-manager.explorer.read', 'application::moisturizing.moisturizing', '[\"image\"]', '[]', 1, '2021-02-16 09:12:39', '2021-04-27 05:04:35', '{\"fields\":[\"image\"]}'),
(128, 'plugins::content-manager.explorer.create', 'application::designer-packages.designer-packages', '[\"images\"]', '[]', 1, '2021-04-26 09:33:05', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(129, 'plugins::content-manager.explorer.read', 'application::designer-packages.designer-packages', '[\"images\"]', '[]', 1, '2021-04-26 09:33:05', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(130, 'plugins::content-manager.explorer.update', 'application::designer-packages.designer-packages', '[\"images\"]', '[]', 1, '2021-04-26 09:33:05', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(133, 'plugins::content-manager.explorer.create', 'application::products-to-be-proud-of.products-to-be-proud-of', '[\"images\"]', '[]', 1, '2021-04-26 10:20:15', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(134, 'plugins::content-manager.explorer.read', 'application::products-to-be-proud-of.products-to-be-proud-of', '[\"images\"]', '[]', 1, '2021-04-26 10:20:15', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(135, 'plugins::content-manager.explorer.update', 'application::products-to-be-proud-of.products-to-be-proud-of', '[\"images\"]', '[]', 1, '2021-04-26 10:20:15', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(138, 'plugins::content-manager.explorer.create', 'application::bb-creams.bb-creams', '[\"images\"]', '[]', 1, '2021-04-26 10:24:46', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(139, 'plugins::content-manager.explorer.read', 'application::bb-creams.bb-creams', '[\"images\"]', '[]', 1, '2021-04-26 10:24:46', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(140, 'plugins::content-manager.explorer.update', 'application::bb-creams.bb-creams', '[\"images\"]', '[]', 1, '2021-04-26 10:24:46', '2021-04-27 05:04:35', '{\"fields\":[\"images\"]}'),
(155, 'plugins::content-type-builder.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:40', '2021-04-27 05:04:41', '{}'),
(156, 'plugins::email.settings.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:40', '2021-04-27 05:04:41', '{}'),
(157, 'plugins::documentation.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:40', '2021-04-27 05:04:41', '{}'),
(158, 'plugins::upload.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:40', '2021-04-27 05:04:41', '{}'),
(159, 'plugins::documentation.settings.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:40', '2021-04-27 05:04:41', '{}'),
(160, 'plugins::upload.assets.create', NULL, NULL, '[]', 1, '2021-04-27 05:04:40', '2021-04-27 05:04:41', '{}'),
(161, 'plugins::documentation.settings.regenerate', NULL, NULL, '[]', 1, '2021-04-27 05:04:40', '2021-04-27 05:04:41', '{}'),
(162, 'plugins::upload.assets.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(163, 'plugins::upload.assets.download', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(164, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(165, 'plugins::upload.settings.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(166, 'plugins::content-manager.single-types.configure-view', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(167, 'plugins::content-manager.collection-types.configure-view', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(168, 'plugins::content-manager.components.configure-layout', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(169, 'plugins::users-permissions.roles.create', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(170, 'plugins::users-permissions.roles.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(171, 'plugins::users-permissions.roles.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(172, 'plugins::users-permissions.providers.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(173, 'plugins::users-permissions.roles.delete', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(174, 'plugins::users-permissions.email-templates.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(175, 'plugins::users-permissions.providers.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(176, 'plugins::users-permissions.advanced-settings.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(177, 'plugins::users-permissions.email-templates.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(178, 'plugins::users-permissions.advanced-settings.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(179, 'admin::marketplace.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(180, 'admin::marketplace.plugins.install', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(181, 'admin::marketplace.plugins.uninstall', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:41', '{}'),
(182, 'admin::webhooks.create', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:42', '{}'),
(183, 'admin::webhooks.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:42', '{}'),
(184, 'admin::webhooks.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:42', '{}'),
(185, 'admin::webhooks.delete', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:42', '{}'),
(186, 'admin::users.create', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:42', '{}'),
(187, 'admin::users.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:42', '{}'),
(188, 'admin::users.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:41', '2021-04-27 05:04:42', '{}'),
(189, 'admin::users.delete', NULL, NULL, '[]', 1, '2021-04-27 05:04:42', '2021-04-27 05:04:42', '{}'),
(190, 'admin::roles.create', NULL, NULL, '[]', 1, '2021-04-27 05:04:42', '2021-04-27 05:04:42', '{}'),
(191, 'admin::roles.read', NULL, NULL, '[]', 1, '2021-04-27 05:04:42', '2021-04-27 05:04:42', '{}'),
(192, 'admin::roles.update', NULL, NULL, '[]', 1, '2021-04-27 05:04:42', '2021-04-27 05:04:42', '{}'),
(193, 'admin::roles.delete', NULL, NULL, '[]', 1, '2021-04-27 05:04:42', '2021-04-27 05:04:42', '{}'),
(220, 'plugins::i18n.locale.create', NULL, NULL, '[]', 1, '2021-04-27 05:19:45', '2021-04-27 05:19:45', '{}'),
(221, 'plugins::i18n.locale.read', NULL, NULL, '[]', 1, '2021-04-27 05:19:45', '2021-04-27 05:19:45', '{}'),
(222, 'plugins::i18n.locale.update', NULL, NULL, '[]', 1, '2021-04-27 05:19:45', '2021-04-27 05:19:45', '{}'),
(223, 'plugins::i18n.locale.delete', NULL, NULL, '[]', 1, '2021-04-27 05:19:45', '2021-04-27 05:19:45', '{}'),
(243, 'plugins::content-manager.explorer.delete', 'application::bb-creams.bb-creams', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(244, 'plugins::content-manager.explorer.delete', 'application::designer-packages.designer-packages', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(246, 'plugins::content-manager.explorer.delete', 'application::moisturizing.moisturizing', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(247, 'plugins::content-manager.explorer.delete', 'application::products-to-be-proud-of.products-to-be-proud-of', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(249, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(250, 'plugins::content-manager.explorer.delete', 'plugins::import-content.importconfig', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(251, 'plugins::content-manager.explorer.delete', 'plugins::import-content.importeditem', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(253, 'plugins::content-manager.explorer.publish', 'application::moisturizing.moisturizing', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(254, 'plugins::content-manager.explorer.publish', 'application::products-to-be-proud-of.products-to-be-proud-of', NULL, '[]', 1, '2021-04-27 05:27:42', '2021-04-27 05:27:42', '{}'),
(256, 'plugins::content-manager.explorer.create', 'application::footer.footer', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"fields\":[\"name\",\"address\",\"nip\",\"regon\",\"phone\",\"phone_second\",\"additional_info\",\"email\"],\"locales\":[\"en\",\"pl\"]}'),
(257, 'plugins::content-manager.explorer.create', 'application::shop-adresses.shop-adresses', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"fields\":[\"name\",\"email\",\"phone\",\"content\",\"street\",\"city\",\"postal_code\",\"website\",\"latitude\",\"longitude\"],\"locales\":[\"en\",\"pl\"]}'),
(258, 'plugins::content-manager.explorer.read', 'application::footer.footer', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"fields\":[\"name\",\"address\",\"nip\",\"regon\",\"phone\",\"phone_second\",\"additional_info\",\"email\"],\"locales\":[\"en\",\"pl\"]}'),
(259, 'plugins::content-manager.explorer.read', 'application::shop-adresses.shop-adresses', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"fields\":[\"name\",\"email\",\"phone\",\"content\",\"street\",\"city\",\"postal_code\",\"website\",\"latitude\",\"longitude\"],\"locales\":[\"en\",\"pl\"]}'),
(260, 'plugins::content-manager.explorer.update', 'application::footer.footer', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"fields\":[\"name\",\"address\",\"nip\",\"regon\",\"phone\",\"phone_second\",\"additional_info\",\"email\"],\"locales\":[\"en\",\"pl\"]}'),
(261, 'plugins::content-manager.explorer.update', 'application::shop-adresses.shop-adresses', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"fields\":[\"name\",\"email\",\"phone\",\"content\",\"street\",\"city\",\"postal_code\",\"website\",\"latitude\",\"longitude\"],\"locales\":[\"en\",\"pl\"]}'),
(262, 'plugins::content-manager.explorer.delete', 'application::footer.footer', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"locales\":[\"en\",\"pl\"]}'),
(263, 'plugins::content-manager.explorer.delete', 'application::shop-adresses.shop-adresses', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"locales\":[\"en\",\"pl\"]}'),
(264, 'plugins::content-manager.explorer.publish', 'application::footer.footer', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"locales\":[\"en\",\"pl\"]}'),
(265, 'plugins::content-manager.explorer.publish', 'application::shop-adresses.shop-adresses', NULL, '[]', 1, '2021-04-27 05:34:24', '2021-04-27 05:34:24', '{\"locales\":[\"en\",\"pl\"]}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_role`
--

CREATE TABLE `strapi_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-02-09 13:17:00', '2021-02-09 13:17:00'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-02-09 13:17:00', '2021-02-09 13:17:00'),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-02-09 13:17:00', '2021-02-09 13:17:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_users_roles`
--

CREATE TABLE `strapi_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `upload_file`
--

INSERT INTO `upload_file` (`id`, `name`, `alternativeText`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `previewUrl`, `provider`, `provider_metadata`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'moisturize.webp', '', '', 1653, 1882, '{\"thumbnail\":{\"name\":\"thumbnail_moisturize.webp\",\"hash\":\"thumbnail_moisturize_ae30174f65\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"width\":137,\"height\":156,\"size\":4.77,\"path\":null,\"url\":\"/uploads/thumbnail_moisturize_ae30174f65.webp\"},\"large\":{\"name\":\"large_moisturize.webp\",\"hash\":\"large_moisturize_ae30174f65\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"width\":878,\"height\":1000,\"size\":50.26,\"path\":null,\"url\":\"/uploads/large_moisturize_ae30174f65.webp\"},\"medium\":{\"name\":\"medium_moisturize.webp\",\"hash\":\"medium_moisturize_ae30174f65\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"width\":659,\"height\":750,\"size\":34.94,\"path\":null,\"url\":\"/uploads/medium_moisturize_ae30174f65.webp\"},\"small\":{\"name\":\"small_moisturize.webp\",\"hash\":\"small_moisturize_ae30174f65\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"width\":439,\"height\":500,\"size\":20.99,\"path\":null,\"url\":\"/uploads/small_moisturize_ae30174f65.webp\"}}', 'moisturize_ae30174f65', '.webp', 'image/webp', '104.66', '/uploads/moisturize_ae30174f65.webp', NULL, 'local', NULL, 1, 1, '2021-02-11 09:36:02', '2021-02-11 09:36:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `upload_file_morph`
--

INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(2, 2, 1, 'moisturizing', 'image', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
(2, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
(3, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
(4, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
(5, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
(6, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
(7, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
(8, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
(9, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
(10, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
(11, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
(12, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
(13, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
(14, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
(15, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
(16, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
(17, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
(18, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
(19, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
(20, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
(21, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
(22, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
(23, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
(24, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
(25, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
(26, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
(27, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
(28, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
(29, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
(30, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
(31, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
(32, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
(33, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
(34, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
(35, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
(36, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
(37, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
(38, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
(39, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
(40, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
(41, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
(42, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
(43, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
(44, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
(45, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
(46, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
(47, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(48, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(49, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(50, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(51, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(52, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(53, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(54, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(55, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(56, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(57, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(58, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(59, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(60, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(61, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(62, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(63, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(64, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(65, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(66, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(67, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(68, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(69, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(70, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(71, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(72, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(73, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(74, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(75, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(76, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(77, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(78, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(79, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(80, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(81, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(82, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(83, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(84, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(85, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(86, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(87, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(88, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(89, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(90, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(91, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(92, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(93, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(94, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(95, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(96, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(97, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(98, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(99, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(100, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(101, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(102, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(103, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(104, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(105, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(106, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(107, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(108, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(109, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(110, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(111, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(112, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(113, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(114, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(115, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(116, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(117, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(118, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(119, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(120, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(121, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(122, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(123, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(124, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(125, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(126, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(127, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(128, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(129, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(130, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(131, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(132, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(133, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(134, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(135, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(136, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(137, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(138, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(139, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(140, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(141, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(142, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(143, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(144, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(145, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(146, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(147, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(148, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(149, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(150, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(151, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(152, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(153, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(154, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
(155, 'application', 'footer', 'delete', 1, '', 1, NULL, NULL),
(156, 'application', 'footer', 'delete', 0, '', 2, NULL, NULL),
(157, 'application', 'footer', 'find', 1, '', 1, NULL, NULL),
(158, 'application', 'footer', 'find', 1, '', 2, NULL, NULL),
(159, 'application', 'footer', 'update', 1, '', 1, NULL, NULL),
(160, 'application', 'footer', 'update', 0, '', 2, NULL, NULL),
(203, 'application', 'shop-adresses', 'count', 1, '', 1, NULL, NULL),
(204, 'application', 'shop-adresses', 'count', 1, '', 2, NULL, NULL),
(205, 'application', 'shop-adresses', 'create', 1, '', 1, NULL, NULL),
(206, 'application', 'shop-adresses', 'create', 0, '', 2, NULL, NULL),
(207, 'application', 'shop-adresses', 'delete', 1, '', 1, NULL, NULL),
(208, 'application', 'shop-adresses', 'delete', 0, '', 2, NULL, NULL),
(209, 'application', 'shop-adresses', 'find', 1, '', 1, NULL, NULL),
(210, 'application', 'shop-adresses', 'find', 1, '', 2, NULL, NULL),
(211, 'application', 'shop-adresses', 'findone', 1, '', 1, NULL, NULL),
(212, 'application', 'shop-adresses', 'findone', 1, '', 2, NULL, NULL),
(213, 'application', 'shop-adresses', 'update', 1, '', 1, NULL, NULL),
(214, 'application', 'shop-adresses', 'update', 0, '', 2, NULL, NULL),
(291, 'import-content', 'import-content', 'preanalyzeimportfile', 0, '', 1, NULL, NULL),
(292, 'import-content', 'import-content', 'preanalyzeimportfile', 0, '', 2, NULL, NULL),
(293, 'import-content', 'import-content', 'create', 0, '', 1, NULL, NULL),
(294, 'import-content', 'import-content', 'create', 0, '', 2, NULL, NULL),
(295, 'import-content', 'import-content', 'delete', 0, '', 1, NULL, NULL),
(296, 'import-content', 'import-content', 'delete', 0, '', 2, NULL, NULL),
(297, 'import-content', 'import-content', 'index', 0, '', 1, NULL, NULL),
(298, 'import-content', 'import-content', 'index', 0, '', 2, NULL, NULL),
(299, 'import-content', 'import-content', 'undo', 0, '', 1, NULL, NULL),
(300, 'import-content', 'import-content', 'undo', 0, '', 2, NULL, NULL),
(301, 'import-content', 'import-config', 'count', 0, '', 1, NULL, NULL),
(302, 'import-content', 'import-config', 'count', 0, '', 2, NULL, NULL),
(303, 'import-content', 'import-config', 'delete', 0, '', 1, NULL, NULL),
(304, 'import-content', 'import-config', 'find', 0, '', 1, NULL, NULL),
(305, 'import-content', 'import-config', 'delete', 0, '', 2, NULL, NULL),
(306, 'import-content', 'import-config', 'find', 0, '', 2, NULL, NULL),
(307, 'import-content', 'import-config', 'findone', 0, '', 1, NULL, NULL),
(308, 'import-content', 'import-config', 'findone', 0, '', 2, NULL, NULL),
(309, 'import-content', 'import-config', 'update', 0, '', 1, NULL, NULL),
(310, 'import-content', 'import-config', 'update', 0, '', 2, NULL, NULL),
(311, 'import-content', 'imported-item', 'count', 0, '', 1, NULL, NULL),
(312, 'import-content', 'imported-item', 'count', 0, '', 2, NULL, NULL),
(313, 'import-content', 'imported-item', 'delete', 0, '', 1, NULL, NULL),
(314, 'import-content', 'imported-item', 'delete', 0, '', 2, NULL, NULL),
(315, 'import-content', 'imported-item', 'find', 0, '', 1, NULL, NULL),
(316, 'import-content', 'imported-item', 'find', 0, '', 2, NULL, NULL),
(317, 'import-content', 'imported-item', 'findone', 0, '', 1, NULL, NULL),
(318, 'import-content', 'imported-item', 'update', 0, '', 1, NULL, NULL),
(319, 'import-content', 'imported-item', 'findone', 0, '', 2, NULL, NULL),
(320, 'import-content', 'imported-item', 'update', 0, '', 2, NULL, NULL),
(321, 'application', 'moisturizing', 'delete', 0, '', 1, NULL, NULL),
(322, 'application', 'moisturizing', 'delete', 0, '', 2, NULL, NULL),
(323, 'application', 'moisturizing', 'find', 0, '', 1, NULL, NULL),
(324, 'application', 'moisturizing', 'find', 0, '', 2, NULL, NULL),
(325, 'application', 'moisturizing', 'update', 0, '', 1, NULL, NULL),
(326, 'application', 'moisturizing', 'update', 0, '', 2, NULL, NULL),
(327, 'documentation', 'documentation', 'deletedoc', 0, '', 1, NULL, NULL),
(328, 'documentation', 'documentation', 'deletedoc', 0, '', 2, NULL, NULL),
(329, 'documentation', 'documentation', 'getinfos', 0, '', 1, NULL, NULL),
(330, 'documentation', 'documentation', 'getinfos', 0, '', 2, NULL, NULL),
(331, 'documentation', 'documentation', 'index', 0, '', 1, NULL, NULL),
(332, 'documentation', 'documentation', 'index', 0, '', 2, NULL, NULL),
(333, 'documentation', 'documentation', 'login', 0, '', 1, NULL, NULL),
(334, 'documentation', 'documentation', 'login', 0, '', 2, NULL, NULL),
(335, 'documentation', 'documentation', 'loginview', 0, '', 1, NULL, NULL),
(336, 'documentation', 'documentation', 'loginview', 0, '', 2, NULL, NULL),
(337, 'documentation', 'documentation', 'regeneratedoc', 0, '', 1, NULL, NULL),
(338, 'documentation', 'documentation', 'regeneratedoc', 0, '', 2, NULL, NULL),
(339, 'documentation', 'documentation', 'updatesettings', 0, '', 1, NULL, NULL),
(340, 'documentation', 'documentation', 'updatesettings', 0, '', 2, NULL, NULL),
(341, 'application', 'designer-packages', 'delete', 0, '', 1, NULL, NULL),
(342, 'application', 'designer-packages', 'delete', 0, '', 2, NULL, NULL),
(343, 'application', 'designer-packages', 'find', 0, '', 1, NULL, NULL),
(344, 'application', 'designer-packages', 'find', 1, '', 2, NULL, NULL),
(345, 'application', 'designer-packages', 'update', 0, '', 1, NULL, NULL),
(346, 'application', 'designer-packages', 'update', 0, '', 2, NULL, NULL),
(347, 'application', 'products-to-be-proud-of', 'delete', 0, '', 1, NULL, NULL),
(348, 'application', 'products-to-be-proud-of', 'delete', 0, '', 2, NULL, NULL),
(349, 'application', 'products-to-be-proud-of', 'find', 0, '', 1, NULL, NULL),
(350, 'application', 'products-to-be-proud-of', 'find', 1, '', 2, NULL, NULL),
(351, 'application', 'products-to-be-proud-of', 'update', 0, '', 1, NULL, NULL),
(352, 'application', 'products-to-be-proud-of', 'update', 0, '', 2, NULL, NULL),
(353, 'application', 'bb-creams', 'delete', 0, '', 1, NULL, NULL),
(354, 'application', 'bb-creams', 'delete', 0, '', 2, NULL, NULL),
(355, 'application', 'bb-creams', 'find', 0, '', 1, NULL, NULL),
(356, 'application', 'bb-creams', 'find', 1, '', 2, NULL, NULL),
(357, 'application', 'bb-creams', 'update', 0, '', 1, NULL, NULL),
(358, 'application', 'bb-creams', 'update', 0, '', 2, NULL, NULL),
(359, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 1, NULL, NULL),
(360, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 2, NULL, NULL),
(361, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
(362, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
(363, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
(364, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
(365, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 1, NULL, NULL),
(366, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 2, NULL, NULL),
(367, 'i18n', 'iso-locales', 'listisolocales', 0, '', 1, NULL, NULL),
(368, 'i18n', 'iso-locales', 'listisolocales', 0, '', 2, NULL, NULL),
(369, 'i18n', 'locales', 'createlocale', 0, '', 1, NULL, NULL),
(370, 'i18n', 'locales', 'deletelocale', 0, '', 1, NULL, NULL),
(371, 'i18n', 'locales', 'createlocale', 0, '', 2, NULL, NULL),
(372, 'i18n', 'locales', 'deletelocale', 0, '', 2, NULL, NULL),
(373, 'i18n', 'locales', 'listlocales', 0, '', 1, NULL, NULL),
(374, 'i18n', 'locales', 'listlocales', 0, '', 2, NULL, NULL),
(375, 'i18n', 'locales', 'updatelocale', 0, '', 1, NULL, NULL),
(376, 'i18n', 'locales', 'updatelocale', 0, '', 2, NULL, NULL),
(377, 'application', 'footer', 'createlocalization', 0, '', 1, NULL, NULL),
(378, 'application', 'footer', 'createlocalization', 0, '', 2, NULL, NULL),
(379, 'application', 'shop-adresses', 'createlocalization', 0, '', 1, NULL, NULL),
(380, 'application', 'shop-adresses', 'createlocalization', 0, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bb_creams`
--
ALTER TABLE `bb_creams`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `designer_packages`
--
ALTER TABLE `designer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `footer__localizations`
--
ALTER TABLE `footer__localizations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `i18n_locales`
--
ALTER TABLE `i18n_locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i18n_locales_code_unique` (`code`);

--
-- Indeksy dla tabeli `import-addresses_importconfig`
--
ALTER TABLE `import-addresses_importconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `import-addresses_importeditem`
--
ALTER TABLE `import-addresses_importeditem`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `import-content_importconfig`
--
ALTER TABLE `import-content_importconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `import-content_importeditem`
--
ALTER TABLE `import-content_importeditem`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `importconfigs`
--
ALTER TABLE `importconfigs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `importeditems`
--
ALTER TABLE `importeditems`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `moisturizing`
--
ALTER TABLE `moisturizing`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `products_to_be_proud_ofs`
--
ALTER TABLE `products_to_be_proud_ofs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shop_adresses`
--
ALTER TABLE `shop_adresses`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shop_adresses__localizations`
--
ALTER TABLE `shop_adresses__localizations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_email_unique` (`email`);

--
-- Indeksy dla tabeli `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_role_name_unique` (`name`),
  ADD UNIQUE KEY `strapi_role_code_unique` (`code`);

--
-- Indeksy dla tabeli `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indeksy dla tabeli `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `bb_creams`
--
ALTER TABLE `bb_creams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT dla tabeli `designer_packages`
--
ALTER TABLE `designer_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `footer__localizations`
--
ALTER TABLE `footer__localizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `i18n_locales`
--
ALTER TABLE `i18n_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `import-addresses_importconfig`
--
ALTER TABLE `import-addresses_importconfig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `import-addresses_importeditem`
--
ALTER TABLE `import-addresses_importeditem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `import-content_importconfig`
--
ALTER TABLE `import-content_importconfig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `import-content_importeditem`
--
ALTER TABLE `import-content_importeditem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT dla tabeli `importconfigs`
--
ALTER TABLE `importconfigs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `importeditems`
--
ALTER TABLE `importeditems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `moisturizing`
--
ALTER TABLE `moisturizing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `products_to_be_proud_ofs`
--
ALTER TABLE `products_to_be_proud_ofs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `shop_adresses`
--
ALTER TABLE `shop_adresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT dla tabeli `shop_adresses__localizations`
--
ALTER TABLE `shop_adresses__localizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT dla tabeli `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT dla tabeli `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
