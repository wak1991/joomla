-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 09 2019 г., 00:06
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `joomla`
--
CREATE DATABASE IF NOT EXISTS `joomla` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `joomla`;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_action_logs`
--

CREATE TABLE `xly7v_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_action_logs`
--

INSERT INTO `xly7v_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2019-08-08 11:54:15', 'com_users', 641, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10000,\"name\":\"jshopping\",\"extension_name\":\"jshopping\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 11:55:05', 'com_installer', 641, 10000, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":10001,\"name\":\"Russian\",\"extension_name\":\"Russian\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 11:56:03', 'com_installer', 641, 10001, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":10002,\"name\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (ru-RU)\",\"extension_name\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (ru-RU)\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 11:56:03', 'com_installer', 641, 10002, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":10003,\"name\":\"Russian (ru-RU) Language Pack\",\"extension_name\":\"Russian (ru-RU) Language Pack\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 11:56:03', 'com_installer', 641, 10003, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2019-08-08 12:07:50', 'com_users', 641, 0, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2019-08-08 18:31:27', 'com_users', 641, 0, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2019-08-08 18:32:09', 'com_users', 641, 0, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 18:36:55', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__menu\"}', '2019-08-08 18:36:55', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 18:39:01', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__menu\"}', '2019-08-08 18:39:01', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 18:44:04', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__menu\"}', '2019-08-08 18:44:04', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2019-08-08 19:13:59', 'com_users', 641, 0, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:21:55', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__menu\"}', '2019-08-08 19:21:55', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:23:12', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 19:25:21', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:26:46', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:26:51', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:27:46', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__menu\"}', '2019-08-08 19:27:46', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:27:49', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a\",\"extension_name\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:28:34', 'com_modules.module', 641, 1, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 19:28:34', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a\",\"extension_name\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:29:08', 'com_modules.module', 641, 1, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 19:29:08', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"\\u0410\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\",\"extension_name\":\"\\u0410\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:29:40', 'com_modules.module', 641, 16, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 19:29:40', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"\\u0410\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\",\"extension_name\":\"\\u0410\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:29:46', 'com_modules.module', 641, 16, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 19:29:46', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 19:30:33', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:50:05', 'com_menus.item', 641, 111, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__menu\"}', '2019-08-08 19:50:50', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 19:50:50', 'com_menus.item', 641, 111, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 19:51:45', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a\",\"extension_name\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 20:02:12', 'com_modules.module', 641, 1, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 20:02:12', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 20:02:32', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a\",\"extension_name\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 20:12:14', 'com_modules.module', 641, 1, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 20:12:14', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"\\u041c\\u0435\\u043d\\u044e\",\"extension_name\":\"\\u041c\\u0435\\u043d\\u044e\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 20:12:41', 'com_modules.module', 641, 1, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__modules\"}', '2019-08-08 20:12:41', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0412\\u0441\\u0435 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 20:13:19', 'com_menus.item', 641, 101, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__menu\"}', '2019-08-08 20:13:19', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":112,\"title\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0438\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 20:13:54', 'com_menus.item', 641, 112, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":113,\"title\":\"\\u041c\\u0430\\u0440\\u043a\\u0438 \\u0430\\u0432\\u0442\\u043e\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 20:17:52', 'com_menus.item', 641, 113, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":113,\"title\":\"\\u041c\\u0430\\u0440\\u043a\\u0438 \\u0430\\u0432\\u0442\\u043e\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 20:24:23', 'com_menus.item', 641, 113, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":112,\"title\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0438 (\\u0441\\u0442\\u0440\\u0430\\u043d\\u0430)\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\"}', '2019-08-08 20:24:37', 'com_menus.item', 641, 112, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"641\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"userid\":\"641\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=641\",\"table\":\"#__menu\"}', '2019-08-08 20:24:37', 'com_checkin', 641, 641, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_action_logs_extensions`
--

CREATE TABLE `xly7v_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_action_logs_extensions`
--

INSERT INTO `xly7v_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_action_logs_users`
--

CREATE TABLE `xly7v_action_logs_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `notify` tinyint(1) UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_action_log_config`
--

CREATE TABLE `xly7v_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_action_log_config`
--

INSERT INTO `xly7v_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_assets`
--

CREATE TABLE `xly7v_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_assets`
--

INSERT INTO `xly7v_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 117, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 25, 28, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 37, 40, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 41, 42, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 43, 80, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 81, 84, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 85, 86, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 87, 88, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 89, 90, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 91, 92, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 93, 96, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 97, 98, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 82, 83, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 94, 95, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 99, 100, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 101, 102, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 103, 104, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 105, 106, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 107, 108, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 109, 110, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 44, 45, 2, 'com_modules.module.1', 'Меню', '{}'),
(40, 18, 46, 47, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 48, 49, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 50, 51, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 52, 53, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 54, 55, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 56, 57, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 58, 59, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 60, 61, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 62, 63, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 64, 65, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 66, 67, 2, 'com_modules.module.16', 'Авторизация', '{}'),
(51, 18, 68, 69, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 70, 71, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 72, 73, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 38, 39, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 74, 75, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 111, 112, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 113, 114, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 76, 77, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(59, 18, 78, 79, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(60, 1, 115, 116, 1, 'com_jshopping', 'jshopping', '{}'),
(61, 11, 26, 27, 2, 'com_languages.language.2', 'Русский (Россия)', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_associations`
--

CREATE TABLE `xly7v_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_banners`
--

CREATE TABLE `xly7v_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_banner_clients`
--

CREATE TABLE `xly7v_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_banner_tracks`
--

CREATE TABLE `xly7v_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_categories`
--

CREATE TABLE `xly7v_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_categories`
--

INSERT INTO `xly7v_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 641, '2019-08-08 11:54:03', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 641, '2019-08-08 11:54:03', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 641, '2019-08-08 11:54:03', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 641, '2019-08-08 11:54:03', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 641, '2019-08-08 11:54:03', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 641, '2019-08-08 11:54:03', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_contact_details`
--

CREATE TABLE `xly7v_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_content`
--

CREATE TABLE `xly7v_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_contentitem_tag_map`
--

CREATE TABLE `xly7v_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_content_frontpage`
--

CREATE TABLE `xly7v_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_content_rating`
--

CREATE TABLE `xly7v_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_content_types`
--

CREATE TABLE `xly7v_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_content_types`
--

INSERT INTO `xly7v_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_core_log_searches`
--

CREATE TABLE `xly7v_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_extensions`
--

CREATE TABLE `xly7v_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_extensions`
--

INSERT INTO `xly7v_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"2de54acef986914b4d5ba54fdb6f18c0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `xly7v_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.40.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2019\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.11\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1565289082}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1565265430,\"unique_id\":\"43023a24698e5289a93972814215d8769dac446a\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `xly7v_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1565265250}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.10\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2019 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.10\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.10.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'jshopping', 'component', 'com_jshopping', '', 1, 1, 0, 0, '{\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"06.05.2019\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.18.3\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\",\"filename\":\"jshopping\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10003, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2019-06-17\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.9.8.1\",\"description\":\"Russian language pack (site) for Joomla! 3.9.8\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 10003, 'ru-RU', 'language', 'ru-RU', '', 1, 1, 0, 0, '{\"name\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (ru-RU)\",\"type\":\"language\",\"creationDate\":\"2019-06-17\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2019 Open Source Matters. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.9.8.1\",\"description\":\"Russian language pack (administrator) for Joomla! 3.9.8\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{\"name\":\"Russian (ru-RU) Language Pack\",\"type\":\"package\",\"creationDate\":\"2019-06-17\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.9.8.1\",\"description\":\"Joomla 3.9 Russian Language Package\",\"group\":\"\",\"filename\":\"pkg_ru-RU\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_fields`
--

CREATE TABLE `xly7v_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_fields_categories`
--

CREATE TABLE `xly7v_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_fields_groups`
--

CREATE TABLE `xly7v_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_fields_values`
--

CREATE TABLE `xly7v_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_filters`
--

CREATE TABLE `xly7v_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links`
--

CREATE TABLE `xly7v_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms0`
--

CREATE TABLE `xly7v_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms1`
--

CREATE TABLE `xly7v_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms2`
--

CREATE TABLE `xly7v_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms3`
--

CREATE TABLE `xly7v_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms4`
--

CREATE TABLE `xly7v_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms5`
--

CREATE TABLE `xly7v_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms6`
--

CREATE TABLE `xly7v_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms7`
--

CREATE TABLE `xly7v_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms8`
--

CREATE TABLE `xly7v_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_terms9`
--

CREATE TABLE `xly7v_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_termsa`
--

CREATE TABLE `xly7v_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_termsb`
--

CREATE TABLE `xly7v_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_termsc`
--

CREATE TABLE `xly7v_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_termsd`
--

CREATE TABLE `xly7v_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_termse`
--

CREATE TABLE `xly7v_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_links_termsf`
--

CREATE TABLE `xly7v_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_taxonomy`
--

CREATE TABLE `xly7v_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `xly7v_finder_taxonomy`
--

INSERT INTO `xly7v_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_taxonomy_map`
--

CREATE TABLE `xly7v_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_terms`
--

CREATE TABLE `xly7v_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_terms_common`
--

CREATE TABLE `xly7v_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `xly7v_finder_terms_common`
--

INSERT INTO `xly7v_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_tokens`
--

CREATE TABLE `xly7v_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_tokens_aggregate`
--

CREATE TABLE `xly7v_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_finder_types`
--

CREATE TABLE `xly7v_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_addons`
--

CREATE TABLE `xly7v_jshopping_addons` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `usekey` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_attr`
--

CREATE TABLE `xly7v_jshopping_attr` (
  `attr_id` int(11) NOT NULL,
  `attr_ordering` int(11) NOT NULL,
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL DEFAULT '1',
  `cats` text NOT NULL,
  `group` tinyint(4) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_attr_groups`
--

CREATE TABLE `xly7v_jshopping_attr_groups` (
  `id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_attr_values`
--

CREATE TABLE `xly7v_jshopping_attr_values` (
  `value_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_cart_temp`
--

CREATE TABLE `xly7v_jshopping_cart_temp` (
  `id` int(11) NOT NULL,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_categories`
--

CREATE TABLE `xly7v_jshopping_categories` (
  `category_id` int(11) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL,
  `category_publish` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT NULL,
  `products_page` int(8) NOT NULL DEFAULT '12',
  `products_row` int(3) NOT NULL DEFAULT '3',
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_categories`
--

INSERT INTO `xly7v_jshopping_categories` (`category_id`, `category_image`, `category_parent_id`, `category_publish`, `category_template`, `ordering`, `category_add_date`, `products_page`, `products_row`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(1, 'audi.jpg', 0, 1, NULL, 5, '2019-08-08 18:39:41', 12, 3, 1, '', '', '', '', '', '', '', 'Ауди', 'cat-audi', '', '', '', '', ''),
(2, 'bmw.jpg', 0, 1, NULL, 7, '2019-08-08 19:37:09', 12, 3, 1, '', '', '', '', '', '', '', 'Бмв', 'cat-bmw', '', '', '', '', ''),
(3, 'mercedes-benz-logo.jpg', 0, 1, NULL, 9, '2019-08-08 19:37:45', 12, 3, 1, '', '', '', '', '', '', '', 'Мерседес', 'cat-mercedes', '', '', '', '', ''),
(4, '225519904_w640_h640_emblema-hrom-sw.jpg', 0, 1, NULL, 10, '2019-08-08 20:30:34', 12, 3, 1, '', '', '', '', '', '', '', 'Мазда', 'mazda', '', '', '', '', ''),
(5, '915334447_w640_h640_mylo-s-vodorastvorimoj.jpg', 0, 1, NULL, 11, '2019-08-08 20:30:50', 12, 3, 1, '', '', '', '', '', '', '', 'Форд', 'ford', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_config`
--

CREATE TABLE `xly7v_jshopping_config` (
  `id` int(11) NOT NULL,
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `image_product_original_width` int(4) NOT NULL,
  `image_product_original_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL DEFAULT '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  `shop_mode` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_config`
--

INSERT INTO `xly7v_jshopping_config` (`id`, `count_products_to_page`, `count_products_to_row`, `count_category_to_row`, `image_category_width`, `image_category_height`, `image_product_width`, `image_product_height`, `image_product_full_width`, `image_product_full_height`, `image_product_original_width`, `image_product_original_height`, `video_product_width`, `video_product_height`, `adminLanguage`, `defaultLanguage`, `mainCurrency`, `decimal_count`, `decimal_symbol`, `thousand_separator`, `currency_format`, `use_rabatt_code`, `enable_wishlist`, `default_status_order`, `store_address_format`, `store_date_format`, `contact_email`, `allow_reviews_prod`, `allow_reviews_only_registered`, `allow_reviews_manuf`, `max_mark`, `summ_null_shipping`, `without_shipping`, `without_payment`, `pdf_parameters`, `next_order_number`, `shop_user_guest`, `hide_product_not_avaible_stock`, `show_buy_in_category`, `user_as_catalog`, `show_tax_in_product`, `show_tax_product_in_cart`, `show_plus_shipping_in_product`, `hide_buy_not_avaible_stock`, `show_sort_product`, `show_count_select_products`, `order_send_pdf_client`, `order_send_pdf_admin`, `show_delivery_time`, `securitykey`, `demo_type`, `product_show_manufacturer_logo`, `product_show_manufacturer`, `product_show_weight`, `max_count_order_one_product`, `min_count_order_one_product`, `min_price_order`, `max_price_order`, `hide_tax`, `licensekod`, `product_attribut_first_value_empty`, `show_hits`, `show_registerform_in_logintemplate`, `admin_show_product_basic_price`, `admin_show_attributes`, `admin_show_delivery_time`, `admin_show_languages`, `use_different_templates_cat_prod`, `admin_show_product_video`, `admin_show_product_related`, `admin_show_product_files`, `admin_show_product_bay_price`, `admin_show_product_labels`, `sorting_country_in_alphabet`, `hide_text_product_not_available`, `show_weight_order`, `discount_use_full_sum`, `show_cart_all_step_checkout`, `use_plugin_content`, `display_price_admin`, `display_price_front`, `product_list_show_weight`, `product_list_show_manufacturer`, `use_extend_tax_rule`, `use_extend_display_price_rule`, `fields_register`, `template`, `show_product_code`, `show_product_code_in_cart`, `savelog`, `savelogpaymentdata`, `product_list_show_min_price`, `product_count_related_in_row`, `category_sorting`, `product_sorting`, `product_sorting_direction`, `show_product_list_filters`, `admin_show_product_extra_field`, `product_list_display_extra_fields`, `filter_display_extra_fields`, `product_hide_extra_fields`, `cart_display_extra_fields`, `default_country`, `show_return_policy_in_email_order`, `client_allow_cancel_order`, `admin_show_vendors`, `vendor_order_message_type`, `admin_not_send_email_order_vendor_order`, `not_redirect_in_cart_after_buy`, `product_show_vendor`, `product_show_vendor_detail`, `product_list_show_vendor`, `admin_show_freeattributes`, `product_show_button_back`, `calcule_tax_after_discount`, `product_list_show_product_code`, `radio_attr_value_vertical`, `attr_display_addprice`, `use_ssl`, `product_list_show_price_description`, `display_button_print`, `hide_shipping_step`, `hide_payment_step`, `image_resize_type`, `use_extend_attribute_data`, `product_list_show_price_default`, `product_list_show_qty_stock`, `product_show_qty_stock`, `displayprice`, `use_decimal_qty`, `ext_tax_rule_for`, `display_reviews_without_confirm`, `manufacturer_sorting`, `admin_show_units`, `main_unit_weight`, `create_alias_product_category_auto`, `delivery_order_depends_delivery_product`, `show_delivery_time_step5`, `other_config`, `shop_mode`) VALUES
(1, 12, 3, 1, 160, 0, 100, 0, 200, 0, 0, 0, 320, 240, 'en-GB', 'ru-RU', 1, 2, '.', '', 2, 1, 1, 1, '%storename %address %city %zip', '%d.%m.%Y', 'kopitnik_artyom@mail.ru', 1, 1, 0, 10, '-1.00', 0, 0, '208:65:208:30', 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 'bc051ec7dc0a70fe569b2200cb7638e5', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:3:{s:8:\"register\";a:15:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:6:\"u_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:8:\"password\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:10:\"password_2\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:7:\"address\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:11:\"editaccount\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}}', 'default_div', 1, 0, 1, 1, 0, 3, 1, 1, 0, 0, 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'a:3:{s:3:\"tax\";s:1:\"1\";s:5:\"stock\";s:1:\"1\";s:17:\"admin_show_weight\";s:1:\"1\";}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_config_display_prices`
--

CREATE TABLE `xly7v_jshopping_config_display_prices` (
  `id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_config_seo`
--

CREATE TABLE `xly7v_jshopping_config_seo` (
  `id` int(11) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_ru-RU` varchar(255) NOT NULL,
  `keyword_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_config_seo`
--

INSERT INTO `xly7v_jshopping_config_seo` (`id`, `alias`, `ordering`, `title_en-GB`, `keyword_en-GB`, `description_en-GB`, `title_ru-RU`, `keyword_ru-RU`, `description_ru-RU`) VALUES
(1, 'category', 10, '', '', '', '', '', ''),
(2, 'manufacturers', 20, '', '', '', '', '', ''),
(3, 'cart', 30, '', '', '', '', '', ''),
(4, 'wishlist', 40, '', '', '', '', '', ''),
(5, 'login', 50, '', '', '', '', '', ''),
(6, 'register', 60, '', '', '', '', '', ''),
(7, 'editaccount', 70, '', '', '', '', '', ''),
(8, 'myorders', 80, '', '', '', '', '', ''),
(9, 'myaccount', 90, '', '', '', '', '', ''),
(10, 'search', 100, '', '', '', '', '', ''),
(11, 'search-result', 110, '', '', '', '', '', ''),
(12, 'myorder-detail', 120, '', '', '', '', '', ''),
(13, 'vendors', 130, '', '', '', '', '', ''),
(14, 'content-agb', 140, '', '', '', '', '', ''),
(15, 'content-return_policy', 150, '', '', '', '', '', ''),
(16, 'content-shipping', 160, '', '', '', '', '', ''),
(17, 'content-privacy_statement', 161, '', '', '', '', '', ''),
(18, 'checkout-address', 170, '', '', '', '', '', ''),
(19, 'checkout-payment', 180, '', '', '', '', '', ''),
(20, 'checkout-shipping', 190, '', '', '', '', '', ''),
(21, 'checkout-preview', 200, '', '', '', '', '', ''),
(22, 'lastproducts', 210, '', '', '', '', '', ''),
(23, 'randomproducts', 220, '', '', '', '', '', ''),
(24, 'bestsellerproducts', 230, '', '', '', '', '', ''),
(25, 'labelproducts', 240, '', '', '', '', '', ''),
(26, 'topratingproducts', 250, '', '', '', '', '', ''),
(27, 'tophitsproducts', 260, '', '', '', '', '', ''),
(28, 'all-products', 270, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_config_statictext`
--

CREATE TABLE `xly7v_jshopping_config_statictext` (
  `id` int(11) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `use_for_return_policy` int(11) NOT NULL,
  `text_en-GB` longtext NOT NULL,
  `text_ru-RU` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_config_statictext`
--

INSERT INTO `xly7v_jshopping_config_statictext` (`id`, `alias`, `use_for_return_policy`, `text_en-GB`, `text_ru-RU`) VALUES
(1, 'home', 0, '', ''),
(2, 'manufacturer', 0, '', ''),
(3, 'agb', 0, '', ''),
(4, 'return_policy', 0, '', ''),
(5, 'order_email_descr', 0, '', ''),
(6, 'order_email_descr_end', 0, '', ''),
(7, 'order_finish_descr', 0, '', ''),
(8, 'shipping', 0, '', ''),
(9, 'privacy_statement', 0, '', ''),
(10, 'cart', 0, '', ''),
(11, 'order_email_descr_manually', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_countries`
--

CREATE TABLE `xly7v_jshopping_countries` (
  `country_id` int(11) NOT NULL,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_countries`
--

INSERT INTO `xly7v_jshopping_countries` (`country_id`, `country_publish`, `ordering`, `country_code`, `country_code_2`, `name_en-GB`, `name_de-DE`, `name_ru-RU`) VALUES
(1, 1, 1, 'AFG', 'AF', 'Afghanistan', 'Afghanistan', 'Afghanistan'),
(2, 1, 2, 'ALB', 'AL', 'Albania', 'Albanien', 'Albania'),
(3, 1, 3, 'DZA', 'DZ', 'Algeria', 'Algerien', 'Algeria'),
(4, 1, 4, 'ASM', 'AS', 'American Samoa', 'Amerikanisch-Samoa', 'American Samoa'),
(5, 1, 5, 'AND', 'AD', 'Andorra', 'Andorra', 'Andorra'),
(6, 1, 6, 'AGO', 'AO', 'Angola', 'Angola', 'Angola'),
(7, 1, 7, 'AIA', 'AI', 'Anguilla', 'Anguilla', 'Anguilla'),
(8, 1, 8, 'ATA', 'AQ', 'Antarctica', 'Antarktis', 'Antarctica'),
(9, 1, 9, 'ATG', 'AG', 'Antigua and Barbuda', 'Antigua und Barbuda', 'Antigua and Barbuda'),
(10, 1, 10, 'ARG', 'AR', 'Argentina', 'Argentinien', 'Argentina'),
(11, 1, 11, 'ARM', 'AM', 'Armenia', 'Armenien', 'Armenia'),
(12, 1, 12, 'ABW', 'AW', 'Aruba', 'Aruba', 'Aruba'),
(13, 1, 13, 'AUS', 'AU', 'Australia', 'Australien', 'Australia'),
(14, 1, 14, 'AUT', 'AT', 'Austria', 'Österreich', 'Austria'),
(15, 1, 15, 'AZE', 'AZ', 'Azerbaijan', 'Aserbaidschan', 'Azerbaijan'),
(16, 1, 16, 'BHS', 'BS', 'Bahamas', 'Bahamas', 'Bahamas'),
(17, 1, 17, 'BHR', 'BH', 'Bahrain', 'Bahrain', 'Bahrain'),
(18, 1, 18, 'BGD', 'BD', 'Bangladesh', 'Bangladesch', 'Bangladesh'),
(19, 1, 19, 'BRB', 'BB', 'Barbados', 'Barbados', 'Barbados'),
(20, 1, 20, 'BLR', 'BY', 'Belarus', 'Weissrussland', 'Belarus'),
(21, 1, 21, 'BEL', 'BE', 'Belgium', 'Belgien', 'Belgium'),
(22, 1, 22, 'BLZ', 'BZ', 'Belize', 'Belize', 'Belize'),
(23, 1, 23, 'BEN', 'BJ', 'Benin', 'Benin', 'Benin'),
(24, 1, 24, 'BMU', 'BM', 'Bermuda', 'Bermuda', 'Bermuda'),
(25, 1, 25, 'BTN', 'BT', 'Bhutan', 'Bhutan', 'Bhutan'),
(26, 1, 26, 'BOL', 'BO', 'Bolivia', 'Bolivien', 'Bolivia'),
(27, 1, 27, 'BIH', 'BA', 'Bosnia and Herzegowina', 'Bosnien und Herzegowina', 'Bosnia and Herzegowina'),
(28, 1, 28, 'BWA', 'BW', 'Botswana', 'Botsuana', 'Botswana'),
(29, 1, 29, 'BVT', 'BV', 'Bouvet Island', 'Bouvetinsel', 'Bouvet Island'),
(30, 1, 30, 'BRA', 'BR', 'Brazil', 'Brasilien', 'Brazil'),
(31, 1, 31, 'IOT', 'IO', 'British Indian Ocean Territory', 'Britisches Territorium im Indischen Ozean', 'British Indian Ocean Territory'),
(32, 1, 32, 'BRN', 'BN', 'Brunei Darussalam', 'Brunei', 'Brunei Darussalam'),
(33, 1, 33, 'BGR', 'BG', 'Bulgaria', 'Bulgarien', 'Bulgaria'),
(34, 1, 34, 'BFA', 'BF', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso'),
(35, 1, 35, 'BDI', 'BI', 'Burundi', 'Burundi', 'Burundi'),
(36, 1, 36, 'KHM', 'KH', 'Cambodia', 'Kambodscha', 'Cambodia'),
(37, 1, 37, 'CMR', 'CM', 'Cameroon', 'Kamerun', 'Cameroon'),
(38, 1, 38, 'CAN', 'CA', 'Canada', 'Kanada', 'Canada'),
(39, 1, 39, 'CPV', 'CV', 'Cape Verde', 'Kap Verde', 'Cape Verde'),
(40, 1, 40, 'CYM', 'KY', 'Cayman Islands', 'Cayman-Inseln', 'Cayman Islands'),
(41, 1, 41, 'CAF', 'CF', 'Central African Republic', 'Zentralafrikanische Republik', 'Central African Republic'),
(42, 1, 42, 'TCD', 'TD', 'Chad', 'Tschad', 'Chad'),
(43, 1, 43, 'CHL', 'CL', 'Chile', 'Chile', 'Chile'),
(44, 1, 44, 'CHN', 'CN', 'China', 'China', 'China'),
(45, 1, 45, 'CXR', 'CX', 'Christmas Island', 'Christmas Island', 'Christmas Island'),
(46, 1, 46, 'CCK', 'CC', 'Cocos (Keeling) Islands', 'Kokosinseln (Keeling)', 'Cocos (Keeling) Islands'),
(47, 1, 47, 'COL', 'CO', 'Colombia', 'Kolumbien', 'Colombia'),
(48, 1, 48, 'COM', 'KM', 'Comoros', 'Komoren', 'Comoros'),
(49, 1, 49, 'COG', 'CG', 'Congo', 'Kongo, Republik', 'Congo'),
(50, 1, 50, 'COK', 'CK', 'Cook Islands', 'Cookinseln', 'Cook Islands'),
(51, 1, 51, 'CRI', 'CR', 'Costa Rica', 'Costa Rica', 'Costa Rica'),
(52, 1, 52, 'CIV', 'CI', 'Cote D\'Ivoire', 'Elfenbeinküste', 'Cote D\'Ivoire'),
(53, 1, 53, 'HRV', 'HR', 'Croatia', 'Kroatien', 'Croatia'),
(54, 1, 54, 'CUB', 'CU', 'Cuba', 'Kuba', 'Cuba'),
(55, 1, 55, 'CYP', 'CY', 'Cyprus', 'Zypern', 'Cyprus'),
(56, 1, 56, 'CZE', 'CZ', 'Czech Republic', 'Tschechien', 'Czech Republic'),
(57, 1, 57, 'DNK', 'DK', 'Denmark', 'Dänemark', 'Denmark'),
(58, 1, 58, 'DJI', 'DJ', 'Djibouti', 'Dschibuti', 'Djibouti'),
(59, 1, 59, 'DMA', 'DM', 'Dominica', 'Dominica', 'Dominica'),
(60, 1, 60, 'DOM', 'DO', 'Dominican Republic', 'Dominikanische Republik', 'Dominican Republic'),
(61, 1, 61, 'TMP', 'TL', 'East Timor', 'Osttimor', 'East Timor'),
(62, 1, 62, 'ECU', 'EC', 'Ecuador', 'Ecuador', 'Ecuador'),
(63, 1, 63, 'EGY', 'EG', 'Egypt', 'Ägypten', 'Egypt'),
(64, 1, 64, 'SLV', 'SV', 'El Salvador', 'El Salvador', 'El Salvador'),
(65, 1, 65, 'GNQ', 'GQ', 'Equatorial Guinea', 'Äquatorial-Guinea', 'Equatorial Guinea'),
(66, 1, 66, 'ERI', 'ER', 'Eritrea', 'Eritrea', 'Eritrea'),
(67, 1, 67, 'EST', 'EE', 'Estonia', 'Estland', 'Estonia'),
(68, 1, 68, 'ETH', 'ET', 'Ethiopia', 'Äthiopien', 'Ethiopia'),
(69, 1, 69, 'FLK', 'FK', 'Falkland Islands (Malvinas)', 'Falklandinseln', 'Falkland Islands (Malvinas)'),
(70, 1, 70, 'FRO', 'FO', 'Faroe Islands', 'Färöer', 'Faroe Islands'),
(71, 1, 71, 'FJI', 'FJ', 'Fiji', 'Fidschi', 'Fiji'),
(72, 1, 72, 'FIN', 'FI', 'Finland', 'Finnland', 'Finland'),
(73, 1, 73, 'FRA', 'FR', 'France', 'Frankreich', 'France'),
(74, 1, 74, 'FXX', 'FX', 'France Metropolitan', 'Frankreich, Metropolitan', 'France Metropolitan'),
(75, 1, 75, 'GUF', 'GF', 'French Guiana', 'Französisch-Guyana', 'French Guiana'),
(76, 1, 76, 'PYF', 'PF', 'French Polynesia', 'Franz. Polynesien', 'French Polynesia'),
(77, 1, 77, 'ATF', 'TF', 'French Southern Territories', 'Französiche Süd- und Antarktisgebiete', 'French Southern Territories'),
(78, 1, 78, 'GAB', 'GA', 'Gabon', 'Gabun', 'Gabon'),
(79, 1, 79, 'GMB', 'GM', 'Gambia', 'Gambia', 'Gambia'),
(80, 1, 80, 'GEO', 'GE', 'Georgia', 'Georgien', 'Georgia'),
(81, 1, 81, 'DEU', 'DE', 'Germany', 'Deutschland', 'Germany'),
(82, 1, 82, 'GHA', 'GH', 'Ghana', 'Ghana', 'Ghana'),
(83, 1, 83, 'GIB', 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar'),
(84, 1, 84, 'GRC', 'GR', 'Greece', 'Griechenland', 'Greece'),
(85, 1, 85, 'GRL', 'GL', 'Greenland', 'Grönland', 'Greenland'),
(86, 1, 86, 'GRD', 'GD', 'Grenada', 'Grenada', 'Grenada'),
(87, 1, 87, 'GLP', 'GP', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe'),
(88, 1, 88, 'GUM', 'GU', 'Guam', 'Guam', 'Guam'),
(89, 1, 89, 'GTM', 'GT', 'Guatemala', 'Guatemala', 'Guatemala'),
(90, 1, 90, 'GIN', 'GN', 'Guinea', 'Guinea', 'Guinea'),
(91, 1, 91, 'GNB', 'GW', 'Guinea-bissau', 'Guinea-Bissau', 'Guinea-bissau'),
(92, 1, 92, 'GUY', 'GY', 'Guyana', 'Guyana', 'Guyana'),
(93, 1, 93, 'HTI', 'HT', 'Haiti', 'Haiti', 'Haiti'),
(94, 1, 94, 'HMD', 'HM', 'Heard and Mc Donald Islands', 'Heard und McDonaldinseln', 'Heard and Mc Donald Islands'),
(95, 1, 95, 'HND', 'HN', 'Honduras', 'Honduras', 'Honduras'),
(96, 1, 96, 'HKG', 'HK', 'Hong Kong', 'Hong Kong', 'Hong Kong'),
(97, 1, 97, 'HUN', 'HU', 'Hungary', 'Ungarn', 'Hungary'),
(98, 1, 98, 'ISL', 'IS', 'Iceland', 'Island', 'Iceland'),
(99, 1, 99, 'IND', 'IN', 'India', 'Indien', 'India'),
(100, 1, 100, 'IDN', 'ID', 'Indonesia', 'Indonesien', 'Indonesia'),
(101, 1, 101, 'IRN', 'IR', 'Iran (Islamic Republic of)', 'Iran', 'Iran (Islamic Republic of)'),
(102, 1, 102, 'IRQ', 'IQ', 'Iraq', 'Irak', 'Iraq'),
(103, 1, 103, 'IRL', 'IE', 'Ireland', 'Irland', 'Ireland'),
(104, 1, 104, 'ISR', 'IL', 'Israel', 'Israel', 'Israel'),
(105, 1, 105, 'ITA', 'IT', 'Italy', 'Italien', 'Italy'),
(106, 1, 106, 'JAM', 'JM', 'Jamaica', 'Jamaika', 'Jamaica'),
(107, 1, 107, 'JPN', 'JP', 'Japan', 'Japan', 'Japan'),
(108, 1, 108, 'JOR', 'JO', 'Jordan', 'Jordanien', 'Jordan'),
(109, 1, 109, 'KAZ', 'KZ', 'Kazakhstan', 'Kasachstan', 'Kazakhstan'),
(110, 1, 110, 'KEN', 'KE', 'Kenya', 'Kenia', 'Kenya'),
(111, 1, 111, 'KIR', 'KI', 'Kiribati', 'Kiribati', 'Kiribati'),
(112, 1, 112, 'PRK', 'KP', 'Korea Democratic People\'s Republic of', 'Korea Demokratische Volksrepublik', 'Korea Democratic People\'s Republic of'),
(113, 1, 113, 'KOR', 'KR', 'Korea Republic of', 'Korea', 'Korea Republic of'),
(114, 1, 114, 'KWT', 'KW', 'Kuwait', 'Kuwait', 'Kuwait'),
(115, 1, 115, 'KGZ', 'KG', 'Kyrgyzstan', 'Kirgistan', 'Kyrgyzstan'),
(116, 1, 116, 'LAO', 'LA', 'Lao People\'s Democratic Republic', 'Laos', 'Lao People\'s Democratic Republic'),
(117, 1, 117, 'LVA', 'LV', 'Latvia', 'Lettland', 'Latvia'),
(118, 1, 118, 'LBN', 'LB', 'Lebanon', 'Libanon', 'Lebanon'),
(119, 1, 119, 'LSO', 'LS', 'Lesotho', 'Lesotho', 'Lesotho'),
(120, 1, 120, 'LBR', 'LR', 'Liberia', 'Liberia', 'Liberia'),
(121, 1, 121, 'LBY', 'LY', 'Libyan Arab Jamahiriya', 'Libyen', 'Libyan Arab Jamahiriya'),
(122, 1, 122, 'LIE', 'LI', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein'),
(123, 1, 123, 'LTU', 'LT', 'Lithuania', 'Litauen', 'Lithuania'),
(124, 1, 124, 'LUX', 'LU', 'Luxembourg', 'Luxemburg', 'Luxembourg'),
(125, 1, 125, 'MAC', 'MO', 'Macau', 'Makao', 'Macau'),
(126, 1, 126, 'MKD', 'MK', 'Macedonia The Former Yugoslav Republic of', 'Mazedonien', 'Macedonia The Former Yugoslav Republic of'),
(127, 1, 127, 'MDG', 'MG', 'Madagascar', 'Madagaskar', 'Madagascar'),
(128, 1, 128, 'MWI', 'MW', 'Malawi', 'Malawi', 'Malawi'),
(129, 1, 129, 'MYS', 'MY', 'Malaysia', 'Malaysia', 'Malaysia'),
(130, 1, 130, 'MDV', 'MV', 'Maldives', 'Malediven', 'Maldives'),
(131, 1, 131, 'MLI', 'ML', 'Mali', 'Mali', 'Mali'),
(132, 1, 132, 'MLT', 'MT', 'Malta', 'Malta', 'Malta'),
(133, 1, 133, 'MHL', 'MH', 'Marshall Islands', 'Marshallinseln', 'Marshall Islands'),
(134, 1, 134, 'MTQ', 'MQ', 'Martinique', 'Martinique', 'Martinique'),
(135, 1, 135, 'MRT', 'MR', 'Mauritania', 'Mauretanien', 'Mauritania'),
(136, 1, 136, 'MUS', 'MU', 'Mauritius', 'Mauritius', 'Mauritius'),
(137, 1, 137, 'MYT', 'YT', 'Mayotte', 'Mayott', 'Mayotte'),
(138, 1, 138, 'MEX', 'MX', 'Mexico', 'Mexiko', 'Mexico'),
(139, 1, 139, 'FSM', 'FM', 'Micronesia Federated States of', 'Mikronesien', 'Micronesia Federated States of'),
(140, 1, 140, 'MDA', 'MD', 'Moldova Republic of', 'Moldawien', 'Moldova Republic of'),
(141, 1, 141, 'MCO', 'MC', 'Monaco', 'Monaco', 'Monaco'),
(142, 1, 142, 'MNG', 'MN', 'Mongolia', 'Mongolei', 'Mongolia'),
(143, 1, 143, 'MSR', 'MS', 'Montserrat', 'Montserrat', 'Montserrat'),
(144, 1, 144, 'MAR', 'MA', 'Morocco', 'Marokko', 'Morocco'),
(145, 1, 145, 'MOZ', 'MZ', 'Mozambique', 'Mosambik', 'Mozambique'),
(146, 1, 146, 'MMR', 'MM', 'Myanmar', 'Myanmar', 'Myanmar'),
(147, 1, 147, 'NAM', 'NA', 'Namibia', 'Namibia', 'Namibia'),
(148, 1, 148, 'NRU', 'NR', 'Nauru', 'Nauru', 'Nauru'),
(149, 1, 149, 'NPL', 'NP', 'Nepal', 'Nepal', 'Nepal'),
(150, 1, 150, 'NLD', 'NL', 'Netherlands', 'Niederlande', 'Netherlands'),
(151, 1, 151, 'ANT', 'AN', 'Netherlands Antilles', 'Niederländisch-Antillen', 'Netherlands Antilles'),
(152, 1, 152, 'NCL', 'NC', 'New Caledonia', 'Neukaledonien', 'New Caledonia'),
(153, 1, 153, 'NZL', 'NZ', 'New Zealand', 'Neuseeland', 'New Zealand'),
(154, 1, 154, 'NIC', 'NI', 'Nicaragua', 'Nicaragua', 'Nicaragua'),
(155, 1, 155, 'NER', 'NE', 'Niger', 'Niger', 'Niger'),
(156, 1, 156, 'NGA', 'NG', 'Nigeria', 'Nigeria', 'Nigeria'),
(157, 1, 157, 'NIU', 'NU', 'Niue', 'Niue', 'Niue'),
(158, 1, 158, 'NFK', 'NF', 'Norfolk Island', 'Norfolkinsel', 'Norfolk Island'),
(159, 1, 159, 'MNP', 'MP', 'Northern Mariana Islands', 'Nördliche Marianen', 'Northern Mariana Islands'),
(160, 1, 160, 'NOR', 'NO', 'Norway', 'Norwegen', 'Norway'),
(161, 1, 161, 'OMN', 'OM', 'Oman', 'Oman', 'Oman'),
(162, 1, 162, 'PAK', 'PK', 'Pakistan', 'Pakistan', 'Pakistan'),
(163, 1, 163, 'PLW', 'PW', 'Palau', 'Palau', 'Palau'),
(164, 1, 164, 'PAN', 'PA', 'Panama', 'Panama', 'Panama'),
(165, 1, 165, 'PNG', 'PG', 'Papua New Guinea', 'Papua-Neuguinea', 'Papua New Guinea'),
(166, 1, 166, 'PRY', 'PY', 'Paraguay', 'Paraguay', 'Paraguay'),
(167, 1, 167, 'PER', 'PE', 'Peru', 'Peru', 'Peru'),
(168, 1, 168, 'PHL', 'PH', 'Philippines', 'Philippinen', 'Philippines'),
(169, 1, 169, 'PCN', 'PN', 'Pitcairn', 'Pitcairn', 'Pitcairn'),
(170, 1, 170, 'POL', 'PL', 'Poland', 'Polen', 'Poland'),
(171, 1, 171, 'PRT', 'PT', 'Portugal', 'Portugal', 'Portugal'),
(172, 1, 172, 'PRI', 'PR', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico'),
(173, 1, 173, 'QAT', 'QA', 'Qatar', 'Katar', 'Qatar'),
(174, 1, 174, 'REU', 'RE', 'Reunion', 'Reunion', 'Reunion'),
(175, 1, 175, 'ROM', 'RO', 'Romania', 'Rumänien', 'Romania'),
(176, 1, 176, 'RUS', 'RU', 'Russian Federation', 'Russische Föderation', 'Russian Federation'),
(177, 1, 177, 'RWA', 'RW', 'Rwanda', 'Ruanda', 'Rwanda'),
(178, 1, 178, 'KNA', 'KN', 'Saint Kitts and Nevis', 'St. Kitts und Nevis', 'Saint Kitts and Nevis'),
(179, 1, 179, 'LCA', 'LC', 'Saint Lucia', 'St. Lucia', 'Saint Lucia'),
(180, 1, 180, 'VCT', 'VC', 'Saint Vincent and the Grenadines', 'St. Vincent und die Grenadinen', 'Saint Vincent and the Grenadines'),
(181, 1, 181, 'WSM', 'WS', 'Samoa', 'Samoa', 'Samoa'),
(182, 1, 182, 'SMR', 'SM', 'San Marino', 'San Marino', 'San Marino'),
(183, 1, 183, 'STP', 'ST', 'Sao Tome and Principe', 'Sao Tomé und Príncipe', 'Sao Tome and Principe'),
(184, 1, 184, 'SAU', 'SA', 'Saudi Arabia', 'Saudi-Arabien', 'Saudi Arabia'),
(185, 1, 185, 'SEN', 'SN', 'Senegal', 'Senegal', 'Senegal'),
(186, 1, 186, 'SYC', 'SC', 'Seychelles', 'Seychellen', 'Seychelles'),
(187, 1, 187, 'SLE', 'SL', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone'),
(188, 1, 188, 'SGP', 'SG', 'Singapore', 'Singapur', 'Singapore'),
(189, 1, 189, 'SVK', 'SK', 'Slovakia (Slovak Republic)', 'Slowakei', 'Slovakia (Slovak Republic)'),
(190, 1, 190, 'SVN', 'SI', 'Slovenia', 'Slowenien', 'Slovenia'),
(191, 1, 191, 'SLB', 'SB', 'Solomon Islands', 'Salomonen', 'Solomon Islands'),
(192, 1, 192, 'SOM', 'SO', 'Somalia', 'Somalia', 'Somalia'),
(193, 1, 193, 'ZAF', 'ZA', 'South Africa', 'Republik Südafrika', 'South Africa'),
(194, 1, 194, 'SGS', 'GS', 'South Georgia and the South Sandwich Islands', 'Südgeorgien und die Südlichen Sandwichinseln', 'South Georgia and the South Sandwich Islands'),
(195, 1, 195, 'ESP', 'ES', 'Spain', 'Spanien', 'Spain'),
(196, 1, 196, 'LKA', 'LK', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka'),
(197, 1, 197, 'SHN', 'SH', 'St. Helena', 'St. Helena', 'St. Helena'),
(198, 1, 198, 'SPM', 'PM', 'St. Pierre and Miquelon', 'St. Pierre und Miquelon', 'St. Pierre and Miquelon'),
(199, 1, 199, 'SDN', 'SD', 'Sudan', 'Sudan', 'Sudan'),
(200, 1, 200, 'SUR', 'SR', 'Suriname', 'Suriname', 'Suriname'),
(201, 1, 201, 'SJM', 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard und Jan Mayen', 'Svalbard and Jan Mayen Islands'),
(202, 1, 202, 'SWZ', 'SZ', 'Swaziland', 'Swasiland', 'Swaziland'),
(203, 1, 203, 'SWE', 'SE', 'Sweden', 'Schweden', 'Sweden'),
(204, 1, 204, 'CHE', 'CH', 'Switzerland', 'Schweiz', 'Switzerland'),
(205, 1, 205, 'SYR', 'SY', 'Syrian Arab Republic', 'Syrien', 'Syrian Arab Republic'),
(206, 1, 206, 'TWN', 'TW', 'Taiwan', 'Taiwan', 'Taiwan'),
(207, 1, 207, 'TJK', 'TJ', 'Tajikistan', 'Tadschikistan', 'Tajikistan'),
(208, 1, 208, 'TZA', 'TZ', 'Tanzania United Republic of', 'Tansania', 'Tanzania United Republic of'),
(209, 1, 209, 'THA', 'TH', 'Thailand', 'Thailand', 'Thailand'),
(210, 1, 210, 'TGO', 'TG', 'Togo', 'Togo', 'Togo'),
(211, 1, 211, 'TKL', 'TK', 'Tokelau', 'Tokelau', 'Tokelau'),
(212, 1, 212, 'TON', 'TO', 'Tonga', 'Tonga', 'Tonga'),
(213, 1, 213, 'TTO', 'TT', 'Trinidad and Tobago', 'Trinidad und Tobago', 'Trinidad and Tobago'),
(214, 1, 214, 'TUN', 'TN', 'Tunisia', 'Tunesien', 'Tunisia'),
(215, 1, 215, 'TUR', 'TR', 'Turkey', 'Türkei', 'Turkey'),
(216, 1, 216, 'TKM', 'TM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan'),
(217, 1, 217, 'TCA', 'TC', 'Turks and Caicos Islands', 'Turks- und Caicosinseln', 'Turks and Caicos Islands'),
(218, 1, 218, 'TUV', 'TV', 'Tuvalu', 'Tuvalu', 'Tuvalu'),
(219, 1, 219, 'UGA', 'UG', 'Uganda', 'Uganda', 'Uganda'),
(220, 1, 220, 'UKR', 'UA', 'Ukraine', 'Ukraine', 'Ukraine'),
(221, 1, 221, 'ARE', 'AE', 'United Arab Emirates', 'Vereinigte Arabische Emirate', 'United Arab Emirates'),
(222, 1, 222, 'GBR', 'GB', 'United Kingdom', 'Vereinigtes Königreich', 'United Kingdom'),
(223, 1, 223, 'USA', 'US', 'United States', 'USA', 'United States'),
(224, 1, 224, 'UMI', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands'),
(225, 1, 225, 'URY', 'UY', 'Uruguay', 'Uruguay', 'Uruguay'),
(226, 1, 226, 'UZB', 'UZ', 'Uzbekistan', 'Usbekistan', 'Uzbekistan'),
(227, 1, 227, 'VUT', 'VU', 'Vanuatu', 'Vanuatu', 'Vanuatu'),
(228, 1, 228, 'VAT', 'VA', 'Vatican City State (Holy See)', 'Vatikanstadt', 'Vatican City State (Holy See)'),
(229, 1, 229, 'VEN', 'VE', 'Venezuela', 'Venezuela', 'Venezuela'),
(230, 1, 230, 'VNM', 'VN', 'Viet Nam', 'Vietnam', 'Viet Nam'),
(231, 1, 231, 'VGB', 'VG', 'Virgin Islands (British)', 'Britische Jungferninseln', 'Virgin Islands (British)'),
(232, 1, 232, 'VIR', 'VI', 'Virgin Islands (U.S.)', 'Vereinigte Staaten von Amerika', 'Virgin Islands (U.S.)'),
(233, 1, 233, 'WLF', 'WF', 'Wallis and Futuna Islands', 'Wallis und Futuna', 'Wallis and Futuna Islands'),
(234, 1, 234, 'ESH', 'EH', 'Western Sahara', 'Westsahara', 'Western Sahara'),
(235, 1, 235, 'YEM', 'YE', 'Yemen', 'Jemen', 'Yemen'),
(236, 1, 236, 'YUG', 'YU', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia'),
(237, 1, 237, 'ZAR', 'ZR', 'Zaire', 'Zaire', 'Zaire'),
(238, 1, 238, 'ZMB', 'ZM', 'Zambia', 'Sambia', 'Zambia'),
(239, 1, 239, 'ZWE', 'ZW', 'Zimbabwe', 'Simbabwe', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_coupons`
--

CREATE TABLE `xly7v_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL,
  `coupon_type` tinyint(4) NOT NULL COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL,
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL DEFAULT '0000-00-00',
  `coupon_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_currencies`
--

CREATE TABLE `xly7v_jshopping_currencies` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_currencies`
--

INSERT INTO `xly7v_jshopping_currencies` (`currency_id`, `currency_name`, `currency_code`, `currency_code_iso`, `currency_code_num`, `currency_ordering`, `currency_value`, `currency_publish`) VALUES
(1, 'Euro', 'EUR', 'EUR', '978', 1, '1.000000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_delivery_times`
--

CREATE TABLE `xly7v_jshopping_delivery_times` (
  `id` int(11) NOT NULL,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_free_attr`
--

CREATE TABLE `xly7v_jshopping_free_attr` (
  `id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_import_export`
--

CREATE TABLE `xly7v_jshopping_import_export` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_import_export`
--

INSERT INTO `xly7v_jshopping_import_export` (`id`, `name`, `alias`, `description`, `params`, `endstart`, `steptime`) VALUES
(1, 'Simple Export', 'simpleexport', 'Simple Export in CSV iso-8859-1', 'filename=export', 0, 1),
(2, 'Simple Import', 'simpleimport', 'Simple Import in CSV iso-8859-1', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_languages`
--

CREATE TABLE `xly7v_jshopping_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_languages`
--

INSERT INTO `xly7v_jshopping_languages` (`id`, `language`, `name`, `publish`, `ordering`) VALUES
(1, 'en-GB', 'English', 1, 0),
(2, 'ru-RU', 'Русский', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_manufacturers`
--

CREATE TABLE `xly7v_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_manufacturers`
--

INSERT INTO `xly7v_jshopping_manufacturers` (`manufacturer_id`, `manufacturer_url`, `manufacturer_logo`, `manufacturer_publish`, `products_page`, `products_row`, `ordering`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(1, '', '_______________________.png', 1, 12, 3, 1, '', '', '', '', '', '', '', 'ГЕРМАНИЯ', 'germ', '', '', '', '', ''),
(2, '', '_________________________2_.png', 1, 12, 3, 2, '', '', '', '', '', '', '', 'АМЕРИКА', 'usa', '', '', '', '', ''),
(3, '', '_________________________1_.png', 1, 12, 3, 3, '', '', '', '', '', '', '', 'ЯПОНИЯ', 'japan', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_orders`
--

CREATE TABLE `xly7v_jshopping_orders` (
  `order_id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(14,4) NOT NULL,
  `order_subtotal` decimal(14,4) NOT NULL,
  `order_tax` decimal(14,4) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(14,4) NOT NULL,
  `order_payment` decimal(14,4) NOT NULL,
  `order_discount` decimal(14,4) NOT NULL,
  `shipping_tax` decimal(12,4) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(12,4) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `invoice_date` datetime NOT NULL,
  `order_m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `shipping_params` text NOT NULL,
  `shipping_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_free_discount` decimal(14,4) NOT NULL,
  `ip_address` varchar(64) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `street_nr` varchar(16) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `mobil_phone` varchar(24) NOT NULL,
  `fax` varchar(24) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_street_nr` varchar(16) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(24) NOT NULL,
  `d_mobil_phone` varchar(24) NOT NULL,
  `d_fax` varchar(24) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  `product_stock_removed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_order_history`
--

CREATE TABLE `xly7v_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) DEFAULT NULL,
  `comments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_order_item`
--

CREATE TABLE `xly7v_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `manufacturer_code` varchar(32) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(14,4) NOT NULL,
  `product_tax` decimal(14,4) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` decimal(14,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `basicprice` decimal(12,2) NOT NULL,
  `basicpriceunit` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_order_status`
--

CREATE TABLE `xly7v_jshopping_order_status` (
  `status_id` int(11) NOT NULL,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_order_status`
--

INSERT INTO `xly7v_jshopping_order_status` (`status_id`, `status_code`, `name_en-GB`, `name_de-DE`, `name_ru-RU`) VALUES
(1, 'P', 'Pending', 'Offen', 'Pending'),
(2, 'C', 'Confirmed', 'Bestätigt', 'Confirmed'),
(3, 'X', 'Cancelled', 'Abgebrochen', 'Cancelled'),
(4, 'R', 'Refunded', 'Gutschrift', 'Refunded'),
(5, 'S', 'Shipped', 'Gesendet', 'Shipped'),
(6, 'O', 'Paid', 'Bezahlt', 'Paid'),
(7, 'F', 'Complete', 'Abgeschlossen', 'Complete');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_payment_method`
--

CREATE TABLE `xly7v_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `scriptname` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `show_bank_in_order` tinyint(1) NOT NULL DEFAULT '1',
  `order_description` text NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_payment_method`
--

INSERT INTO `xly7v_jshopping_payment_method` (`payment_id`, `payment_code`, `payment_class`, `scriptname`, `payment_publish`, `payment_ordering`, `payment_params`, `payment_type`, `price`, `price_type`, `tax_id`, `image`, `show_descr_in_email`, `show_bank_in_order`, `order_description`, `name_en-GB`, `description_en-GB`, `name_de-DE`, `description_de-DE`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 'bank', 'pm_bank', '', 1, 1, '', 1, '4.00', 0, 1, '', 0, 1, '', 'Cash on delivery', '', 'Nachnahme', '', 'Cash on delivery', ''),
(2, 'PO', 'pm_purchase_order', '', 1, 2, '', 1, '0.00', 0, 1, '', 1, 1, '', 'Advance payment', '', 'Vorauskasse', '', 'Advance payment', ''),
(3, 'paypal', 'pm_paypal', 'pm_paypal', 1, 3, 'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0', 2, '0.00', 0, 1, '', 0, 1, '', 'PayPal', '', 'PayPal', '', 'PayPal', ''),
(4, 'debit', 'pm_debit', 'pm_debit', 1, 4, '', 1, '0.00', 0, 1, '', 0, 1, '', 'Debit', 'Please insert your bankdata.', 'Lastschrift', 'Bitte tragen Sie hier Ihre Bankdaten fГјr den Abbuchungsauftrag ein.', 'Debit', 'Please insert your bankdata.'),
(5, 'ST', 'pm_sofortueberweisung', 'pm_sofortueberweisung', 0, 5, 'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n', 2, '0.00', 0, 1, '', 0, 1, '', 'Sofortueberweisung', '', 'Sofortueberweisung', '', 'Sofortueberweisung', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_payment_trx`
--

CREATE TABLE `xly7v_jshopping_payment_trx` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `rescode` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_payment_trx_data`
--

CREATE TABLE `xly7v_jshopping_payment_trx_data` (
  `id` int(11) NOT NULL,
  `trx_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products`
--

CREATE TABLE `xly7v_jshopping_products` (
  `product_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `manufacturer_code` varchar(32) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(1) NOT NULL,
  `product_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL DEFAULT 'default',
  `product_url` varchar(128) NOT NULL,
  `product_old_price` decimal(14,4) NOT NULL,
  `product_buy_price` decimal(14,4) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(18,6) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  `extra_field_1` varchar(100) NOT NULL,
  `extra_field_2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_products`
--

INSERT INTO `xly7v_jshopping_products` (`product_id`, `parent_id`, `product_ean`, `manufacturer_code`, `product_quantity`, `unlimited`, `product_availability`, `product_date_added`, `date_modify`, `product_publish`, `product_tax_id`, `currency_id`, `product_template`, `product_url`, `product_old_price`, `product_buy_price`, `product_price`, `min_price`, `different_prices`, `product_weight`, `image`, `product_manufacturer_id`, `product_is_add_price`, `add_price_unit_id`, `average_rating`, `reviews_count`, `delivery_times_id`, `hits`, `weight_volume_units`, `basic_price_unit_id`, `label_id`, `vendor_id`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`, `extra_field_1`, `extra_field_2`) VALUES
(1, 0, '', '', '1.00', 0, '', '2019-08-08 18:46:45', '2019-08-08 20:08:25', 1, 1, 1, 'default', '', '0.0000', '0.0000', '100.000000', '100.000000', 0, '0.0000', 'a6-1.jpg', 1, 0, 3, 0.00, 0, 0, 8, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Audi a6', 'audi-a6', '', '', '', '', '', '1', '3'),
(3, 0, '', '', '1.00', 0, '', '2019-08-08 19:17:40', '2019-08-08 20:31:52', 1, 1, 1, 'default', '', '0.0000', '0.0000', '500.000000', '500.000000', 0, '0.0000', 'a4-1.jpg', 1, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Audi a4', 'audi-a4', '', '', '', '', '', '2', '4'),
(5, 0, '', '', '1.00', 0, '', '2019-08-08 19:41:39', '2019-08-08 20:26:23', 1, 1, 1, 'default', '', '0.0000', '0.0000', '698.000000', '698.000000', 0, '0.0000', 'maxresdefault.jpg', 1, 0, 3, 0.00, 0, 0, 1, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Bmw-e60', 'bmw-e60', '', '', '', '', '', '2', '4'),
(6, 0, '', '', '1.00', 0, '', '2019-08-08 19:42:36', '2019-08-08 20:26:34', 1, 1, 1, 'default', '', '0.0000', '0.0000', '968.000000', '968.000000', 0, '0.0000', 'bmw-x5.jpg', 1, 0, 3, 0.00, 0, 0, 1, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Bmw x5', 'bmw-x5', '', '', '', '', '', '1', '4'),
(7, 0, '', '', '1.00', 0, '', '2019-08-08 19:44:59', '2019-08-08 20:26:44', 1, 1, 1, 'default', '', '0.0000', '0.0000', '532.000000', '532.000000', 0, '0.0000', 'kupit-mercedes-benz-e-class-w211-2-2-cdi-ivano-frankovsk-945671.jpg', 1, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Mercedes w211', 'mercedes-w211', '', '', '', '', '', '1', '5'),
(10, 0, '', '', '1.00', 0, '', '2019-08-08 19:48:56', '2019-08-08 20:26:55', 1, 1, 1, 'default', '', '0.0000', '0.0000', '851.000000', '851.000000', 0, '0.0000', 'mercedes-benz_a-class_789028.jpg', 1, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Mercedes a class', 'mercedes-a-class', '', '', '', '', '', '1', '4'),
(11, 0, '', '', '1.00', 0, '', '2019-08-08 20:29:14', '2019-08-08 20:31:13', 1, 1, 1, 'default', '', '0.0000', '0.0000', '214.000000', '214.000000', 0, '0.0000', 'Ford-recall-Fusion-steering-wheel-fault-cars-931762.jpg', 2, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Ford Fusion', 'ford-fusion', '', '', '', '', '', '1', '4'),
(12, 0, '', '', '1.00', 0, '', '2019-08-08 20:32:56', '2019-08-08 20:32:56', 1, 1, 1, 'default', '', '0.0000', '0.0000', '423.000000', '423.000000', 0, '0.0000', 'ford-mondeo-mk3-ambiente-sedanas-2006.jpg', 2, 0, 3, 0.00, 0, 0, 1, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Ford Modeo', 'ford-mondeo', '', '', '', '', '', '1', '3'),
(13, 0, '', '', '1.00', 0, '', '2019-08-08 20:33:49', '2019-08-08 20:33:49', 1, 1, 1, 'default', '', '0.0000', '0.0000', '876.000000', '876.000000', 0, '0.0000', 'mazda_mazda6_774061.jpg', 3, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Mazda 6', 'mazda-6', '', '', '', '', '', '1', '3'),
(14, 0, '', '', '1.00', 0, '', '2019-08-08 20:34:31', '2019-08-08 20:34:57', 1, 1, 1, 'default', '', '0.0000', '0.0000', '549.000000', '549.000000', 0, '0.0000', 'USC90MAS061A021001.jpg', 3, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Mazda CX-5', 'mazda-cx-5', '', '', '', '', '', '2', '4');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_attr`
--

CREATE TABLE `xly7v_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(14,4) NOT NULL,
  `old_price` decimal(14,4) NOT NULL,
  `count` decimal(14,4) NOT NULL,
  `ean` varchar(32) NOT NULL,
  `manufacturer_code` varchar(32) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_attr2`
--

CREATE TABLE `xly7v_jshopping_products_attr2` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(14,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_extra_fields`
--

CREATE TABLE `xly7v_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_products_extra_fields`
--

INSERT INTO `xly7v_jshopping_products_extra_fields` (`id`, `allcats`, `cats`, `type`, `multilist`, `group`, `ordering`, `name_en-GB`, `description_en-GB`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 1, 'a:0:{}', 0, 0, 0, 1, '', '', 'Количество цилиндров', ''),
(2, 1, 'a:0:{}', 0, 0, 0, 2, '', '', 'Цвет', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_extra_field_groups`
--

CREATE TABLE `xly7v_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_extra_field_values`
--

CREATE TABLE `xly7v_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_products_extra_field_values`
--

INSERT INTO `xly7v_jshopping_products_extra_field_values` (`id`, `field_id`, `ordering`, `name_en-GB`, `name_ru-RU`) VALUES
(1, 1, 1, '', '2'),
(2, 1, 2, '', '4'),
(3, 2, 1, '', 'Красный'),
(4, 2, 2, '', 'Синий'),
(5, 2, 3, '', 'Зелёный');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_files`
--

CREATE TABLE `xly7v_jshopping_products_files` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_free_attr`
--

CREATE TABLE `xly7v_jshopping_products_free_attr` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_images`
--

CREATE TABLE `xly7v_jshopping_products_images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_products_images`
--

INSERT INTO `xly7v_jshopping_products_images` (`image_id`, `product_id`, `image_name`, `name`, `ordering`) VALUES
(2, 1, 'a6-1.jpg', '', 1),
(3, 1, 'a6-2.jpg', '', 2),
(4, 1, 'a6-3.jpg', '', 3),
(8, 3, 'a4-1.jpg', '', 1),
(9, 3, 'a4-2.jpg', '', 2),
(10, 3, 'a4-3.jpg', '', 3),
(12, 5, 'maxresdefault.jpg', '', 1),
(13, 6, 'bmw-x5.jpg', '', 1),
(14, 7, 'kupit-mercedes-benz-e-class-w211-2-2-cdi-ivano-frankovsk-945671.jpg', '', 1),
(17, 10, 'mercedes-benz_a-class_789028.jpg', '', 1),
(18, 11, 'Ford-recall-Fusion-steering-wheel-fault-cars-931762.jpg', '', 1),
(19, 12, 'ford-mondeo-mk3-ambiente-sedanas-2006.jpg', '', 1),
(20, 13, 'mazda_mazda6_774061.jpg', '', 1),
(21, 14, 'USC90MAS061A021001.jpg', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_option`
--

CREATE TABLE `xly7v_jshopping_products_option` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_prices`
--

CREATE TABLE `xly7v_jshopping_products_prices` (
  `price_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_relations`
--

CREATE TABLE `xly7v_jshopping_products_relations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_reviews`
--

CREATE TABLE `xly7v_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_to_categories`
--

CREATE TABLE `xly7v_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_products_to_categories`
--

INSERT INTO `xly7v_jshopping_products_to_categories` (`product_id`, `category_id`, `product_ordering`) VALUES
(1, 1, 1),
(7, 3, 1),
(11, 5, 1),
(13, 4, 1),
(5, 2, 2),
(12, 5, 2),
(14, 4, 2),
(3, 1, 3),
(6, 2, 3),
(10, 3, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_products_videos`
--

CREATE TABLE `xly7v_jshopping_products_videos` (
  `video_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_code` text NOT NULL,
  `video_preview` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_product_labels`
--

CREATE TABLE `xly7v_jshopping_product_labels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_product_labels`
--

INSERT INTO `xly7v_jshopping_product_labels` (`id`, `name`, `name_en-GB`, `name_de-DE`, `image`, `name_ru-RU`) VALUES
(1, 'New', 'New', 'New', 'new.png', 'New'),
(2, 'Sale', 'Sale', 'Sale', 'sale.png', 'Sale');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_shipping_ext_calc`
--

CREATE TABLE `xly7v_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` longtext NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_shipping_ext_calc`
--

INSERT INTO `xly7v_jshopping_shipping_ext_calc` (`id`, `name`, `alias`, `description`, `params`, `shipping_method`, `published`, `ordering`) VALUES
(1, 'StandartWeight', 'sm_standart_weight', 'StandartWeight', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_shipping_method`
--

CREATE TABLE `xly7v_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  `params` longtext NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_shipping_method`
--

INSERT INTO `xly7v_jshopping_shipping_method` (`shipping_id`, `alias`, `name_en-GB`, `description_en-GB`, `name_de-DE`, `description_de-DE`, `published`, `payments`, `image`, `ordering`, `params`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, '', 'Standard', '', 'Standardversand', '', 1, '', '', 1, '', 'Standard', ''),
(2, '', 'Express', '', 'Express', '', 1, '', '', 2, '', 'Express', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_shipping_method_price`
--

CREATE TABLE `xly7v_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(14,4) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(14,4) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_shipping_method_price`
--

INSERT INTO `xly7v_jshopping_shipping_method_price` (`sh_pr_method_id`, `shipping_method_id`, `shipping_tax_id`, `shipping_stand_price`, `package_tax_id`, `package_stand_price`, `delivery_times_id`, `params`) VALUES
(1, 1, 1, '10.0000', 1, '0.0000', 0, ''),
(2, 2, 1, '25.0000', 1, '0.0000', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_shipping_method_price_countries`
--

CREATE TABLE `xly7v_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_shipping_method_price_countries`
--

INSERT INTO `xly7v_jshopping_shipping_method_price_countries` (`sh_method_country_id`, `country_id`, `sh_pr_method_id`) VALUES
(239, 1, 1),
(478, 1, 2),
(238, 2, 1),
(477, 2, 2),
(237, 3, 1),
(476, 3, 2),
(236, 4, 1),
(475, 4, 2),
(235, 5, 1),
(474, 5, 2),
(234, 6, 1),
(473, 6, 2),
(233, 7, 1),
(472, 7, 2),
(232, 8, 1),
(471, 8, 2),
(231, 9, 1),
(470, 9, 2),
(230, 10, 1),
(469, 10, 2),
(229, 11, 1),
(468, 11, 2),
(228, 12, 1),
(467, 12, 2),
(227, 13, 1),
(466, 13, 2),
(226, 14, 1),
(465, 14, 2),
(225, 15, 1),
(464, 15, 2),
(224, 16, 1),
(463, 16, 2),
(223, 17, 1),
(462, 17, 2),
(222, 18, 1),
(461, 18, 2),
(221, 19, 1),
(460, 19, 2),
(220, 20, 1),
(459, 20, 2),
(219, 21, 1),
(458, 21, 2),
(218, 22, 1),
(457, 22, 2),
(217, 23, 1),
(456, 23, 2),
(216, 24, 1),
(455, 24, 2),
(215, 25, 1),
(454, 25, 2),
(214, 26, 1),
(453, 26, 2),
(213, 27, 1),
(452, 27, 2),
(212, 28, 1),
(451, 28, 2),
(211, 29, 1),
(450, 29, 2),
(210, 30, 1),
(449, 30, 2),
(209, 31, 1),
(448, 31, 2),
(208, 32, 1),
(447, 32, 2),
(207, 33, 1),
(446, 33, 2),
(206, 34, 1),
(445, 34, 2),
(205, 35, 1),
(444, 35, 2),
(204, 36, 1),
(443, 36, 2),
(203, 37, 1),
(442, 37, 2),
(202, 38, 1),
(441, 38, 2),
(201, 39, 1),
(440, 39, 2),
(200, 40, 1),
(439, 40, 2),
(199, 41, 1),
(438, 41, 2),
(198, 42, 1),
(437, 42, 2),
(197, 43, 1),
(436, 43, 2),
(196, 44, 1),
(435, 44, 2),
(195, 45, 1),
(434, 45, 2),
(194, 46, 1),
(433, 46, 2),
(193, 47, 1),
(432, 47, 2),
(192, 48, 1),
(431, 48, 2),
(191, 49, 1),
(430, 49, 2),
(190, 50, 1),
(429, 50, 2),
(189, 51, 1),
(428, 51, 2),
(188, 52, 1),
(427, 52, 2),
(187, 53, 1),
(426, 53, 2),
(186, 54, 1),
(425, 54, 2),
(185, 55, 1),
(424, 55, 2),
(184, 56, 1),
(423, 56, 2),
(183, 57, 1),
(422, 57, 2),
(182, 58, 1),
(421, 58, 2),
(181, 59, 1),
(420, 59, 2),
(180, 60, 1),
(419, 60, 2),
(179, 61, 1),
(418, 61, 2),
(178, 62, 1),
(417, 62, 2),
(177, 63, 1),
(416, 63, 2),
(176, 64, 1),
(415, 64, 2),
(175, 65, 1),
(414, 65, 2),
(174, 66, 1),
(413, 66, 2),
(173, 67, 1),
(412, 67, 2),
(172, 68, 1),
(411, 68, 2),
(171, 69, 1),
(410, 69, 2),
(170, 70, 1),
(409, 70, 2),
(169, 71, 1),
(408, 71, 2),
(168, 72, 1),
(407, 72, 2),
(167, 73, 1),
(406, 73, 2),
(166, 74, 1),
(405, 74, 2),
(165, 75, 1),
(404, 75, 2),
(164, 76, 1),
(403, 76, 2),
(163, 77, 1),
(402, 77, 2),
(162, 78, 1),
(401, 78, 2),
(161, 79, 1),
(400, 79, 2),
(160, 80, 1),
(399, 80, 2),
(159, 81, 1),
(398, 81, 2),
(158, 82, 1),
(397, 82, 2),
(157, 83, 1),
(396, 83, 2),
(156, 84, 1),
(395, 84, 2),
(155, 85, 1),
(394, 85, 2),
(154, 86, 1),
(393, 86, 2),
(153, 87, 1),
(392, 87, 2),
(152, 88, 1),
(391, 88, 2),
(151, 89, 1),
(390, 89, 2),
(150, 90, 1),
(389, 90, 2),
(149, 91, 1),
(388, 91, 2),
(148, 92, 1),
(387, 92, 2),
(147, 93, 1),
(386, 93, 2),
(146, 94, 1),
(385, 94, 2),
(145, 95, 1),
(384, 95, 2),
(144, 96, 1),
(383, 96, 2),
(143, 97, 1),
(382, 97, 2),
(142, 98, 1),
(381, 98, 2),
(141, 99, 1),
(380, 99, 2),
(140, 100, 1),
(379, 100, 2),
(139, 101, 1),
(378, 101, 2),
(138, 102, 1),
(377, 102, 2),
(137, 103, 1),
(376, 103, 2),
(136, 104, 1),
(375, 104, 2),
(135, 105, 1),
(374, 105, 2),
(134, 106, 1),
(373, 106, 2),
(133, 107, 1),
(372, 107, 2),
(132, 108, 1),
(371, 108, 2),
(131, 109, 1),
(370, 109, 2),
(130, 110, 1),
(369, 110, 2),
(129, 111, 1),
(368, 111, 2),
(128, 112, 1),
(367, 112, 2),
(127, 113, 1),
(366, 113, 2),
(126, 114, 1),
(365, 114, 2),
(125, 115, 1),
(364, 115, 2),
(124, 116, 1),
(363, 116, 2),
(123, 117, 1),
(362, 117, 2),
(122, 118, 1),
(361, 118, 2),
(121, 119, 1),
(360, 119, 2),
(120, 120, 1),
(359, 120, 2),
(119, 121, 1),
(358, 121, 2),
(118, 122, 1),
(357, 122, 2),
(117, 123, 1),
(356, 123, 2),
(116, 124, 1),
(355, 124, 2),
(115, 125, 1),
(354, 125, 2),
(114, 126, 1),
(353, 126, 2),
(113, 127, 1),
(352, 127, 2),
(112, 128, 1),
(351, 128, 2),
(111, 129, 1),
(350, 129, 2),
(110, 130, 1),
(349, 130, 2),
(109, 131, 1),
(348, 131, 2),
(108, 132, 1),
(347, 132, 2),
(107, 133, 1),
(346, 133, 2),
(106, 134, 1),
(345, 134, 2),
(105, 135, 1),
(344, 135, 2),
(104, 136, 1),
(343, 136, 2),
(103, 137, 1),
(342, 137, 2),
(102, 138, 1),
(341, 138, 2),
(101, 139, 1),
(340, 139, 2),
(100, 140, 1),
(339, 140, 2),
(99, 141, 1),
(338, 141, 2),
(98, 142, 1),
(337, 142, 2),
(97, 143, 1),
(336, 143, 2),
(96, 144, 1),
(335, 144, 2),
(95, 145, 1),
(334, 145, 2),
(94, 146, 1),
(333, 146, 2),
(93, 147, 1),
(332, 147, 2),
(92, 148, 1),
(331, 148, 2),
(91, 149, 1),
(330, 149, 2),
(90, 150, 1),
(329, 150, 2),
(89, 151, 1),
(328, 151, 2),
(88, 152, 1),
(327, 152, 2),
(87, 153, 1),
(326, 153, 2),
(86, 154, 1),
(325, 154, 2),
(85, 155, 1),
(324, 155, 2),
(84, 156, 1),
(323, 156, 2),
(83, 157, 1),
(322, 157, 2),
(82, 158, 1),
(321, 158, 2),
(81, 159, 1),
(320, 159, 2),
(80, 160, 1),
(319, 160, 2),
(79, 161, 1),
(318, 161, 2),
(78, 162, 1),
(317, 162, 2),
(77, 163, 1),
(316, 163, 2),
(76, 164, 1),
(315, 164, 2),
(75, 165, 1),
(314, 165, 2),
(74, 166, 1),
(313, 166, 2),
(73, 167, 1),
(312, 167, 2),
(72, 168, 1),
(311, 168, 2),
(71, 169, 1),
(310, 169, 2),
(70, 170, 1),
(309, 170, 2),
(69, 171, 1),
(308, 171, 2),
(68, 172, 1),
(307, 172, 2),
(67, 173, 1),
(306, 173, 2),
(66, 174, 1),
(305, 174, 2),
(65, 175, 1),
(304, 175, 2),
(64, 176, 1),
(303, 176, 2),
(63, 177, 1),
(302, 177, 2),
(62, 178, 1),
(301, 178, 2),
(61, 179, 1),
(300, 179, 2),
(60, 180, 1),
(299, 180, 2),
(59, 181, 1),
(298, 181, 2),
(58, 182, 1),
(297, 182, 2),
(57, 183, 1),
(296, 183, 2),
(56, 184, 1),
(295, 184, 2),
(55, 185, 1),
(294, 185, 2),
(54, 186, 1),
(293, 186, 2),
(53, 187, 1),
(292, 187, 2),
(52, 188, 1),
(291, 188, 2),
(51, 189, 1),
(290, 189, 2),
(50, 190, 1),
(289, 190, 2),
(49, 191, 1),
(288, 191, 2),
(48, 192, 1),
(287, 192, 2),
(47, 193, 1),
(286, 193, 2),
(46, 194, 1),
(285, 194, 2),
(45, 195, 1),
(284, 195, 2),
(44, 196, 1),
(283, 196, 2),
(43, 197, 1),
(282, 197, 2),
(42, 198, 1),
(281, 198, 2),
(41, 199, 1),
(280, 199, 2),
(40, 200, 1),
(279, 200, 2),
(39, 201, 1),
(278, 201, 2),
(38, 202, 1),
(277, 202, 2),
(37, 203, 1),
(276, 203, 2),
(36, 204, 1),
(275, 204, 2),
(35, 205, 1),
(274, 205, 2),
(34, 206, 1),
(273, 206, 2),
(33, 207, 1),
(272, 207, 2),
(32, 208, 1),
(271, 208, 2),
(31, 209, 1),
(270, 209, 2),
(30, 210, 1),
(269, 210, 2),
(29, 211, 1),
(268, 211, 2),
(28, 212, 1),
(267, 212, 2),
(27, 213, 1),
(266, 213, 2),
(26, 214, 1),
(265, 214, 2),
(25, 215, 1),
(264, 215, 2),
(24, 216, 1),
(263, 216, 2),
(23, 217, 1),
(262, 217, 2),
(22, 218, 1),
(261, 218, 2),
(21, 219, 1),
(260, 219, 2),
(20, 220, 1),
(259, 220, 2),
(19, 221, 1),
(258, 221, 2),
(18, 222, 1),
(257, 222, 2),
(17, 223, 1),
(256, 223, 2),
(16, 224, 1),
(255, 224, 2),
(15, 225, 1),
(254, 225, 2),
(14, 226, 1),
(253, 226, 2),
(13, 227, 1),
(252, 227, 2),
(12, 228, 1),
(251, 228, 2),
(11, 229, 1),
(250, 229, 2),
(10, 230, 1),
(249, 230, 2),
(9, 231, 1),
(248, 231, 2),
(8, 232, 1),
(247, 232, 2),
(7, 233, 1),
(246, 233, 2),
(6, 234, 1),
(245, 234, 2),
(5, 235, 1),
(244, 235, 2),
(4, 236, 1),
(243, 236, 2),
(3, 237, 1),
(242, 237, 2),
(2, 238, 1),
(241, 238, 2),
(1, 239, 1),
(240, 239, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_shipping_method_price_weight`
--

CREATE TABLE `xly7v_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(14,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_taxes`
--

CREATE TABLE `xly7v_jshopping_taxes` (
  `tax_id` int(11) NOT NULL,
  `tax_name` varchar(50) NOT NULL,
  `tax_value` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_taxes`
--

INSERT INTO `xly7v_jshopping_taxes` (`tax_id`, `tax_name`, `tax_value`) VALUES
(1, 'Normal', '19.00');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_taxes_ext`
--

CREATE TABLE `xly7v_jshopping_taxes_ext` (
  `id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_unit`
--

CREATE TABLE `xly7v_jshopping_unit` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_unit`
--

INSERT INTO `xly7v_jshopping_unit` (`id`, `qty`, `name_de-DE`, `name_en-GB`, `name_ru-RU`) VALUES
(1, 1, 'Kg', 'Kg', 'Kg'),
(2, 1, 'Liter', 'Liter', 'Liter'),
(3, 1, 'St.', 'pcs.', 'pcs.');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_usergroups`
--

CREATE TABLE `xly7v_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_usergroups`
--

INSERT INTO `xly7v_jshopping_usergroups` (`usergroup_id`, `usergroup_name`, `usergroup_discount`, `usergroup_description`, `usergroup_is_default`, `name_en-GB`, `name_de-DE`, `description_en-GB`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 'Default', '0.00', 'Default', 1, 'Default', 'Default', '', 'Default', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_users`
--

CREATE TABLE `xly7v_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `number` varchar(32) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_nr` varchar(16) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(24) NOT NULL,
  `mobil_phone` varchar(24) NOT NULL,
  `fax` varchar(24) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_street_nr` varchar(16) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(24) NOT NULL,
  `d_mobil_phone` varchar(24) NOT NULL,
  `d_fax` varchar(24) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `lang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_users`
--

INSERT INTO `xly7v_jshopping_users` (`user_id`, `usergroup_id`, `payment_id`, `shipping_id`, `u_name`, `number`, `title`, `f_name`, `l_name`, `m_name`, `firma_name`, `client_type`, `firma_code`, `tax_number`, `email`, `birthday`, `street`, `street_nr`, `home`, `apartment`, `zip`, `city`, `state`, `country`, `phone`, `mobil_phone`, `fax`, `ext_field_1`, `ext_field_2`, `ext_field_3`, `delivery_adress`, `d_title`, `d_f_name`, `d_l_name`, `d_m_name`, `d_firma_name`, `d_email`, `d_birthday`, `d_street`, `d_street_nr`, `d_home`, `d_apartment`, `d_zip`, `d_city`, `d_state`, `d_country`, `d_phone`, `d_mobil_phone`, `d_fax`, `d_ext_field_1`, `d_ext_field_2`, `d_ext_field_3`, `lang`) VALUES
(641, 1, 0, 0, 'admin', '641', 0, 'Super User', '', '', '', 0, '', '', 'kopitnik_artyom@mail.ru', '0000-00-00', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 0, 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_jshopping_vendors`
--

CREATE TABLE `xly7v_jshopping_vendors` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `fax` varchar(24) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_bic_bic` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `xly7v_jshopping_vendors`
--

INSERT INTO `xly7v_jshopping_vendors` (`id`, `shop_name`, `company_name`, `url`, `logo`, `adress`, `city`, `zip`, `state`, `country`, `f_name`, `l_name`, `middlename`, `phone`, `fax`, `email`, `benef_bank_info`, `benef_bic`, `benef_conto`, `benef_payee`, `benef_iban`, `benef_bic_bic`, `benef_swift`, `interm_name`, `interm_swift`, `identification_number`, `tax_number`, `additional_information`, `user_id`, `main`, `publish`) VALUES
(1, 'Shop name', 'Company', '', '', 'Address', 'City', 'Postal Code ', 'State', 81, 'First name ', 'Last name', '', '00000000', '00000000', 'email@email.com', 'test', 'test', 'test', 'test', 'test', '', 'test', 'test', 'test', '', '', 'Additional information', 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_languages`
--

CREATE TABLE `xly7v_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_languages`
--

INSERT INTO `xly7v_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 0, 1, 2),
(2, 61, 'ru-RU', 'Русский (Россия)', 'Russian (Russia)', 'ru', 'ru_ru', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_menu`
--

CREATE TABLE `xly7v_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_menu`
--

INSERT INTO `xly7v_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 67, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Все автомобили', 'home', '', 'home', 'index.php?option=com_jshopping&view=products', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0),
(102, 'main', 'JoomShopping', 'joomshopping', '', 'joomshopping', 'index.php?option=com_jshopping', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_logo_s.png', 0, '{}', 43, 60, 0, '', 1),
(103, 'main', 'categories', 'categories', '', 'joomshopping/categories', 'index.php?option=com_jshopping&controller=categories&catid=0', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_categories_s.png', 0, '{}', 44, 45, 0, '', 1),
(104, 'main', 'products', 'products', '', 'joomshopping/products', 'index.php?option=com_jshopping&controller=products&category_id=0', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_products_s.png', 0, '{}', 46, 47, 0, '', 1),
(105, 'main', 'orders', 'orders', '', 'joomshopping/orders', 'index.php?option=com_jshopping&controller=orders', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_orders_s.png', 0, '{}', 48, 49, 0, '', 1),
(106, 'main', 'clients', 'clients', '', 'joomshopping/clients', 'index.php?option=com_jshopping&controller=users', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_users_s.png', 0, '{}', 50, 51, 0, '', 1),
(107, 'main', 'options', 'options', '', 'joomshopping/options', 'index.php?option=com_jshopping&controller=other', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_options_s.png', 0, '{}', 52, 53, 0, '', 1),
(108, 'main', 'configuration', 'configuration', '', 'joomshopping/configuration', 'index.php?option=com_jshopping&controller=config', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_configuration_s.png', 0, '{}', 54, 55, 0, '', 1),
(109, 'main', 'install-and-update', 'install-and-update', '', 'joomshopping/install-and-update', 'index.php?option=com_jshopping&controller=update', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_update_s.png', 0, '{}', 56, 57, 0, '', 1),
(110, 'main', 'about-as', 'about-as', '', 'joomshopping/about-as', 'index.php?option=com_jshopping&controller=info', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_info_s.png', 0, '{}', 58, 59, 0, '', 1),
(111, 'mainmenu', 'Категории', 'kategorii', '', 'kategorii', 'index.php?option=com_jshopping&view=category', 'component', -2, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 61, 62, 0, '*', 0),
(112, 'mainmenu', 'Производители (страна)', 'proizvoditeli', '', 'proizvoditeli', 'index.php?option=com_jshopping&view=manufacturer', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 63, 64, 0, '*', 0),
(113, 'mainmenu', 'Марки авто', 'marki-avto', '', 'marki-avto', 'index.php?option=com_jshopping&view=category', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 65, 66, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_menu_types`
--

CREATE TABLE `xly7v_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_menu_types`
--

INSERT INTO `xly7v_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_messages`
--

CREATE TABLE `xly7v_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_messages_cfg`
--

CREATE TABLE `xly7v_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_modules`
--

CREATE TABLE `xly7v_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_modules`
--

INSERT INTO `xly7v_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Меню', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Авторизация', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":1,\"name\":0,\"profilelink\":0,\"usesecure\":0,\"usetext\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*'),
(89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_modules_menu`
--

CREATE TABLE `xly7v_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_modules_menu`
--

INSERT INTO `xly7v_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_newsfeeds`
--

CREATE TABLE `xly7v_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_overrider`
--

CREATE TABLE `xly7v_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_postinstall_messages`
--

CREATE TABLE `xly7v_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_postinstall_messages`
--

INSERT INTO `xly7v_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_privacy_consents`
--

CREATE TABLE `xly7v_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `state` int(10) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_privacy_requests`
--

CREATE TABLE `xly7v_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_redirect_links`
--

CREATE TABLE `xly7v_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_schemas`
--

CREATE TABLE `xly7v_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_schemas`
--

INSERT INTO `xly7v_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.9.10-2019-07-09'),
(10000, '4.18.2');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_session`
--

CREATE TABLE `xly7v_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_session`
--

INSERT INTO `xly7v_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x3230686b723674656f70746e723136326173346273636576393831346b733164, 1, 0, 1565296497, 'joomla|s:2452:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo3OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozNzk7czo1OiJ0b2tlbiI7czozMjoic0o0d2ZJNUFEdkJySE85OWxMbnZDcDFKOGE5ZXlxVG0iO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTU2NTI5MTYzNztzOjQ6Imxhc3QiO2k6MTU2NTI5NjQ5NztzOjM6Im5vdyI7aToxNTY1Mjk2NDk3O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6ODoianNob3BpbmciO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGlzdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJhZG1pbiI7Tzo4OiJzdGRDbGFzcyI6Njp7czoxODoicHJvZHVjdGNhdGVnb3J5X2lkIjtpOjA7czoyMjoicHJvZHVjdG1hbnVmYWN0dXJlcl9pZCI7aTowO3M6MTY6InByb2R1Y3R2ZW5kb3JfaWQiO2k6LTE7czoxNToicHJvZHVjdGxhYmVsX2lkIjtpOjA7czoxNDoicHJvZHVjdHB1Ymxpc2giO2k6MDtzOjE4OiJwcm9kdWN0dGV4dF9zZWFyY2giO3M6MDoiIjt9fX1zOjk6ImNvbV9tZW51cyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6Nzp7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo5OiJjbGllbnRfaWQiO2k6MDtzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo0OiJsaXN0IjthOjI6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czo5OiJhLmxmdCBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO31zOjY6InNlYXJjaCI7czowOiIiO3M6OToicHVibGlzaGVkIjtzOjA6IiI7czo2OiJmaWx0ZXIiO2E6Njp7czo2OiJzZWFyY2giO3M6MDoiIjtzOjk6InB1Ymxpc2hlZCI7czowOiIiO3M6NjoiYWNjZXNzIjtzOjA6IiI7czo4OiJsYW5ndWFnZSI7czowOiIiO3M6NToibGV2ZWwiO3M6MDoiIjtzOjk6InBhcmVudF9pZCI7czowOiIiO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO31zOjQ6Im1lbnUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MTt9czo0OiJkYXRhIjtOO319fXM6MTE6ImNvbV9tb2R1bGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI2NDEiO31zOjE5OiJqc19pZF9jdXJyZW5jeV9vcmlnIjtzOjE6IjEiO3M6MjI6ImpzaG9wX2NoZWNrZWRfbGFuZ3VhZ2UiO2E6Mjp7aTowO3M6NToiZW4tR0IiO2k6MTtzOjU6InJ1LVJVIjt9czoxOToianNfZ2V0X215c3FsdmVyc2lvbiI7czo2OiI1LjcuMTkiO3M6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 641, 'admin'),
(0x64723172366e62696761337363746f71706a30723136726764396b676973706a, 0, 0, 1565298227, 'joomla|s:3176:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjoxNTp7czo3OiJzZXNzaW9uIjtPOjg6InN0ZENsYXNzIjozOntzOjc6ImNvdW50ZXIiO2k6MTg3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTU2NTI4OTA4MTtzOjQ6Imxhc3QiO2k6MTU2NTI5NzM4NztzOjM6Im5vdyI7aToxNTY1Mjk4MjI3O31zOjU6InRva2VuIjtzOjMyOiIyWFpnVXoxekd5RjNScTczNTVadk5HVkdvSEI5aWV3RSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjo0OntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjE0OiJodHRwOi8vam9vbWxhLyI7czo0OiJkYXRhIjthOjA6e319fX1zOjg6ImpzaG9waW5nIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6Imxpc3QiO086ODoic3RkQ2xhc3MiOjE6e3M6NToiZnJvbnQiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RvcmRlcmJ5IjtpOjA7czoxMjoicHJvZHVjdG9yZGVyIjtpOjI7czoxMjoicHJvZHVjdGxpbWl0IjtpOjEyO319czo3OiJhbGxsaXN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImZyb250IjtPOjg6InN0ZENsYXNzIjozOntzOjE0OiJwcm9kdWN0b3JkZXJieSI7aTowO3M6MTI6InByb2R1Y3RvcmRlciI7aToyO3M6MTI6InByb2R1Y3RsaW1pdCI7aToxMjt9fX1zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX19czoxMDoiY29tX2NvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJjb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZ2xvYmFsIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNjQxIjt9czoxOToianNfaWRfY3VycmVuY3lfb3JpZyI7czoxOiIxIjtzOjE0OiJqc19pZF9jdXJyZW5jeSI7czoxOiIxIjtzOjE5OiJqc19oaXN0b3J5X3NlbF9sYW5nIjtzOjU6InJ1LVJVIjtzOjQ6ImNhcnQiO3M6Mjk0OiJPOjk6ImpzaG9wQ2FydCI6MTE6e3M6OToidHlwZV9jYXJ0IjtzOjQ6ImNhcnQiO3M6ODoicHJvZHVjdHMiO2E6MDp7fXM6MTM6ImNvdW50X3Byb2R1Y3QiO2k6MDtzOjEzOiJwcmljZV9wcm9kdWN0IjtpOjA7czo0OiJzdW1tIjtpOjA7czo5OiJyYWJhdHRfaWQiO2k6MDtzOjEyOiJyYWJhdHRfdmFsdWUiO2k6MDtzOjExOiJyYWJhdHRfdHlwZSI7aTowO3M6MTE6InJhYmF0dF9zdW1tIjtkOjA7czoxNToibW9kZWxfdGVtcF9jYXJ0IjtzOjg6InRlbXBjYXJ0IjtzOjIwOiJwcmljZV9wcm9kdWN0X2JydXR0byI7aTowO30iO3M6ODoid2lzaGxpc3QiO3M6Mjk4OiJPOjk6ImpzaG9wQ2FydCI6MTE6e3M6OToidHlwZV9jYXJ0IjtzOjg6Indpc2hsaXN0IjtzOjg6InByb2R1Y3RzIjthOjA6e31zOjEzOiJjb3VudF9wcm9kdWN0IjtpOjA7czoxMzoicHJpY2VfcHJvZHVjdCI7aTowO3M6NDoic3VtbSI7aTowO3M6OToicmFiYXR0X2lkIjtpOjA7czoxMjoicmFiYXR0X3ZhbHVlIjtpOjA7czoxMToicmFiYXR0X3R5cGUiO2k6MDtzOjExOiJyYWJhdHRfc3VtbSI7ZDowO3M6MTU6Im1vZGVsX3RlbXBfY2FydCI7czo4OiJ0ZW1wY2FydCI7czoyMDoicHJpY2VfcHJvZHVjdF9icnV0dG8iO2k6MDt9IjtzOjE5OiJqc191cGRhdGVfYWxsX3ByaWNlIjtpOjA7czoxNToianNfcHJldl91c2VyX2lkIjtzOjM6IjY0MSI7czoyMjoianNob3BfY2hlY2tlZF9sYW5ndWFnZSI7YToyOntpOjA7czo1OiJlbi1HQiI7aToxO3M6NToicnUtUlUiO31zOjI2OiJqc2hvcF9lbmRfcGFnZV9idXlfcHJvZHVjdCI7czoxOiIvIjtzOjI3OiJqc2hvcF9lbmRfcGFnZV9saXN0X3Byb2R1Y3QiO3M6MToiLyI7czoxODoicHJvZHVjdF9iYWNrX3ZhbHVlIjthOjA6e31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 641, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_tags`
--

CREATE TABLE `xly7v_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_tags`
--

INSERT INTO `xly7v_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 641, '2019-08-08 11:54:03', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_template_styles`
--

CREATE TABLE `xly7v_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_template_styles`
--

INSERT INTO `xly7v_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_ucm_base`
--

CREATE TABLE `xly7v_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_ucm_content`
--

CREATE TABLE `xly7v_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_ucm_history`
--

CREATE TABLE `xly7v_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_updates`
--

CREATE TABLE `xly7v_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Дамп данных таблицы `xly7v_updates`
--

INSERT INTO `xly7v_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.9.7.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.9.7.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.9.9.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.9.7.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(30, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(31, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(32, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(33, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(34, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.9.10.2', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(35, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(36, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(38, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(39, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(40, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(41, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(42, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(43, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(44, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(45, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(46, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(47, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(48, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(49, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(50, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(51, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(52, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(53, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(54, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(55, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(56, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(57, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(58, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(59, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(60, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(61, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(62, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(63, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(64, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(65, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(66, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(67, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(68, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(69, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(70, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(71, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(72, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(73, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(74, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(75, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(76, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.10.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(77, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_update_sites`
--

CREATE TABLE `xly7v_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Дамп данных таблицы `xly7v_update_sites`
--

INSERT INTO `xly7v_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1565289083, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1565265259, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1565265259, ''),
(4, 'JoomShopping', 'extension', 'https://www.webdesigner-profi.de/joomla-webdesign/update/shop.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_update_sites_extensions`
--

CREATE TABLE `xly7v_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `xly7v_update_sites_extensions`
--

INSERT INTO `xly7v_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(2, 10003),
(3, 28),
(4, 10000);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_usergroups`
--

CREATE TABLE `xly7v_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_usergroups`
--

INSERT INTO `xly7v_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_users`
--

CREATE TABLE `xly7v_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_users`
--

INSERT INTO `xly7v_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(641, 'Super User', 'admin', 'kopitnik_artyom@mail.ru', '$2y$10$X192PkYaDVnOEJQ90Zm5HeH8/4Twtfri8BkYDah7cdw1/TT5OJwpS', 0, 1, '2019-08-08 11:54:03', '2019-08-08 19:13:59', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_user_keys`
--

CREATE TABLE `xly7v_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_user_notes`
--

CREATE TABLE `xly7v_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_user_profiles`
--

CREATE TABLE `xly7v_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_user_usergroup_map`
--

CREATE TABLE `xly7v_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_user_usergroup_map`
--

INSERT INTO `xly7v_user_usergroup_map` (`user_id`, `group_id`) VALUES
(641, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_utf8_conversion`
--

CREATE TABLE `xly7v_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_utf8_conversion`
--

INSERT INTO `xly7v_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Структура таблицы `xly7v_viewlevels`
--

CREATE TABLE `xly7v_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xly7v_viewlevels`
--

INSERT INTO `xly7v_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `xly7v_action_logs`
--
ALTER TABLE `xly7v_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Индексы таблицы `xly7v_action_logs_extensions`
--
ALTER TABLE `xly7v_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_action_logs_users`
--
ALTER TABLE `xly7v_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Индексы таблицы `xly7v_action_log_config`
--
ALTER TABLE `xly7v_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_assets`
--
ALTER TABLE `xly7v_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `xly7v_associations`
--
ALTER TABLE `xly7v_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `xly7v_banners`
--
ALTER TABLE `xly7v_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `xly7v_banner_clients`
--
ALTER TABLE `xly7v_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Индексы таблицы `xly7v_banner_tracks`
--
ALTER TABLE `xly7v_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `xly7v_categories`
--
ALTER TABLE `xly7v_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `xly7v_contact_details`
--
ALTER TABLE `xly7v_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `xly7v_content`
--
ALTER TABLE `xly7v_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Индексы таблицы `xly7v_contentitem_tag_map`
--
ALTER TABLE `xly7v_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `xly7v_content_frontpage`
--
ALTER TABLE `xly7v_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `xly7v_content_rating`
--
ALTER TABLE `xly7v_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `xly7v_content_types`
--
ALTER TABLE `xly7v_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Индексы таблицы `xly7v_extensions`
--
ALTER TABLE `xly7v_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `xly7v_fields`
--
ALTER TABLE `xly7v_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `xly7v_fields_categories`
--
ALTER TABLE `xly7v_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Индексы таблицы `xly7v_fields_groups`
--
ALTER TABLE `xly7v_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `xly7v_fields_values`
--
ALTER TABLE `xly7v_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Индексы таблицы `xly7v_finder_filters`
--
ALTER TABLE `xly7v_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `xly7v_finder_links`
--
ALTER TABLE `xly7v_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `xly7v_finder_links_terms0`
--
ALTER TABLE `xly7v_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms1`
--
ALTER TABLE `xly7v_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms2`
--
ALTER TABLE `xly7v_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms3`
--
ALTER TABLE `xly7v_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms4`
--
ALTER TABLE `xly7v_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms5`
--
ALTER TABLE `xly7v_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms6`
--
ALTER TABLE `xly7v_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms7`
--
ALTER TABLE `xly7v_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms8`
--
ALTER TABLE `xly7v_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_terms9`
--
ALTER TABLE `xly7v_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_termsa`
--
ALTER TABLE `xly7v_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_termsb`
--
ALTER TABLE `xly7v_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_termsc`
--
ALTER TABLE `xly7v_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_termsd`
--
ALTER TABLE `xly7v_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_termse`
--
ALTER TABLE `xly7v_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_links_termsf`
--
ALTER TABLE `xly7v_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `xly7v_finder_taxonomy`
--
ALTER TABLE `xly7v_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `xly7v_finder_taxonomy_map`
--
ALTER TABLE `xly7v_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `xly7v_finder_terms`
--
ALTER TABLE `xly7v_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `xly7v_finder_terms_common`
--
ALTER TABLE `xly7v_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `xly7v_finder_tokens`
--
ALTER TABLE `xly7v_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `xly7v_finder_tokens_aggregate`
--
ALTER TABLE `xly7v_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `xly7v_finder_types`
--
ALTER TABLE `xly7v_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `xly7v_jshopping_addons`
--
ALTER TABLE `xly7v_jshopping_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `xly7v_jshopping_attr`
--
ALTER TABLE `xly7v_jshopping_attr`
  ADD PRIMARY KEY (`attr_id`),
  ADD KEY `group` (`group`),
  ADD KEY `attr_ordering` (`attr_ordering`),
  ADD KEY `attr_type` (`attr_type`),
  ADD KEY `independent` (`independent`),
  ADD KEY `allcats` (`allcats`);

--
-- Индексы таблицы `xly7v_jshopping_attr_groups`
--
ALTER TABLE `xly7v_jshopping_attr_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_jshopping_attr_values`
--
ALTER TABLE `xly7v_jshopping_attr_values`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `attr_id` (`attr_id`),
  ADD KEY `value_ordering` (`value_ordering`);

--
-- Индексы таблицы `xly7v_jshopping_cart_temp`
--
ALTER TABLE `xly7v_jshopping_cart_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cookie` (`id_cookie`),
  ADD KEY `type_cart` (`type_cart`);

--
-- Индексы таблицы `xly7v_jshopping_categories`
--
ALTER TABLE `xly7v_jshopping_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `sort_add_date` (`category_add_date`),
  ADD KEY `category_parent_id` (`category_parent_id`),
  ADD KEY `category_publish` (`category_publish`),
  ADD KEY `category_template` (`category_template`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `category_add_date` (`category_add_date`),
  ADD KEY `products_page` (`products_page`),
  ADD KEY `products_row` (`products_row`),
  ADD KEY `access` (`access`),
  ADD KEY `category_publish_2` (`category_publish`,`access`);

--
-- Индексы таблицы `xly7v_jshopping_config`
--
ALTER TABLE `xly7v_jshopping_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_jshopping_config_display_prices`
--
ALTER TABLE `xly7v_jshopping_config_display_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `display_price` (`display_price`),
  ADD KEY `display_price_firma` (`display_price_firma`);

--
-- Индексы таблицы `xly7v_jshopping_config_seo`
--
ALTER TABLE `xly7v_jshopping_config_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_config_statictext`
--
ALTER TABLE `xly7v_jshopping_config_statictext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `use_for_return_policy` (`use_for_return_policy`);

--
-- Индексы таблицы `xly7v_jshopping_countries`
--
ALTER TABLE `xly7v_jshopping_countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_publish` (`country_publish`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `country_code_2` (`country_code_2`);

--
-- Индексы таблицы `xly7v_jshopping_coupons`
--
ALTER TABLE `xly7v_jshopping_coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD KEY `coupon_type` (`coupon_type`),
  ADD KEY `coupon_code` (`coupon_code`),
  ADD KEY `tax_id` (`tax_id`),
  ADD KEY `used` (`used`),
  ADD KEY `for_user_id` (`for_user_id`),
  ADD KEY `coupon_publish` (`coupon_publish`),
  ADD KEY `coupon_start_date` (`coupon_start_date`),
  ADD KEY `coupon_expire_date` (`coupon_expire_date`),
  ADD KEY `finished_after_used` (`finished_after_used`);

--
-- Индексы таблицы `xly7v_jshopping_currencies`
--
ALTER TABLE `xly7v_jshopping_currencies`
  ADD PRIMARY KEY (`currency_id`),
  ADD KEY `currency_code_iso` (`currency_code_iso`),
  ADD KEY `currency_code_num` (`currency_code_num`),
  ADD KEY `currency_ordering` (`currency_ordering`),
  ADD KEY `currency_publish` (`currency_publish`);

--
-- Индексы таблицы `xly7v_jshopping_delivery_times`
--
ALTER TABLE `xly7v_jshopping_delivery_times`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_jshopping_free_attr`
--
ALTER TABLE `xly7v_jshopping_free_attr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_jshopping_import_export`
--
ALTER TABLE `xly7v_jshopping_import_export`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_jshopping_languages`
--
ALTER TABLE `xly7v_jshopping_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publish` (`publish`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_manufacturers`
--
ALTER TABLE `xly7v_jshopping_manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD KEY `manufacturer_publish` (`manufacturer_publish`),
  ADD KEY `products_page` (`products_page`),
  ADD KEY `products_row` (`products_row`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_orders`
--
ALTER TABLE `xly7v_jshopping_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_number` (`order_number`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `currency_code_iso` (`currency_code_iso`),
  ADD KEY `order_status` (`order_status`),
  ADD KEY `order_created` (`order_created`),
  ADD KEY `shipping_method_id` (`shipping_method_id`),
  ADD KEY `delivery_times_id` (`delivery_times_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `client_type` (`client_type`),
  ADD KEY `country` (`country`),
  ADD KEY `phone` (`phone`),
  ADD KEY `d_title` (`d_title`),
  ADD KEY `d_country` (`d_country`),
  ADD KEY `display_price` (`display_price`),
  ADD KEY `vendor_type` (`vendor_type`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `lang` (`lang`);

--
-- Индексы таблицы `xly7v_jshopping_order_history`
--
ALTER TABLE `xly7v_jshopping_order_history`
  ADD PRIMARY KEY (`order_history_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `status_date_added` (`status_date_added`),
  ADD KEY `customer_notify` (`customer_notify`);

--
-- Индексы таблицы `xly7v_jshopping_order_item`
--
ALTER TABLE `xly7v_jshopping_order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `delivery_times_id` (`delivery_times_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Индексы таблицы `xly7v_jshopping_order_status`
--
ALTER TABLE `xly7v_jshopping_order_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `status_code` (`status_code`);

--
-- Индексы таблицы `xly7v_jshopping_payment_method`
--
ALTER TABLE `xly7v_jshopping_payment_method`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_code` (`payment_code`),
  ADD KEY `payment_publish` (`payment_publish`),
  ADD KEY `payment_ordering` (`payment_ordering`),
  ADD KEY `payment_type` (`payment_type`),
  ADD KEY `price_type` (`price_type`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Индексы таблицы `xly7v_jshopping_payment_trx`
--
ALTER TABLE `xly7v_jshopping_payment_trx`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `rescode` (`rescode`),
  ADD KEY `status_id` (`status_id`);

--
-- Индексы таблицы `xly7v_jshopping_payment_trx_data`
--
ALTER TABLE `xly7v_jshopping_payment_trx_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trx_id` (`trx_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `key` (`key`);

--
-- Индексы таблицы `xly7v_jshopping_products`
--
ALTER TABLE `xly7v_jshopping_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_manufacturer_id` (`product_manufacturer_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `product_ean` (`product_ean`),
  ADD KEY `unlimited` (`unlimited`),
  ADD KEY `product_publish` (`product_publish`),
  ADD KEY `product_tax_id` (`product_tax_id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `product_price` (`product_price`),
  ADD KEY `min_price` (`min_price`),
  ADD KEY `add_price_unit_id` (`add_price_unit_id`),
  ADD KEY `average_rating` (`average_rating`),
  ADD KEY `reviews_count` (`reviews_count`),
  ADD KEY `delivery_times_id` (`delivery_times_id`),
  ADD KEY `hits` (`hits`),
  ADD KEY `basic_price_unit_id` (`basic_price_unit_id`),
  ADD KEY `label_id` (`label_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `xly7v_jshopping_products_attr`
--
ALTER TABLE `xly7v_jshopping_products_attr`
  ADD PRIMARY KEY (`product_attr_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ext_attribute_product_id` (`ext_attribute_product_id`);

--
-- Индексы таблицы `xly7v_jshopping_products_attr2`
--
ALTER TABLE `xly7v_jshopping_products_attr2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attr_id` (`attr_id`),
  ADD KEY `attr_value_id` (`attr_value_id`),
  ADD KEY `price_mod` (`price_mod`);

--
-- Индексы таблицы `xly7v_jshopping_products_extra_fields`
--
ALTER TABLE `xly7v_jshopping_products_extra_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group` (`group`),
  ADD KEY `allcats` (`allcats`),
  ADD KEY `type` (`type`),
  ADD KEY `multilist` (`multilist`),
  ADD KEY `group_2` (`group`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_products_extra_field_groups`
--
ALTER TABLE `xly7v_jshopping_products_extra_field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_products_extra_field_values`
--
ALTER TABLE `xly7v_jshopping_products_extra_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_products_files`
--
ALTER TABLE `xly7v_jshopping_products_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_products_free_attr`
--
ALTER TABLE `xly7v_jshopping_products_free_attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attr_id` (`attr_id`);

--
-- Индексы таблицы `xly7v_jshopping_products_images`
--
ALTER TABLE `xly7v_jshopping_products_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_products_option`
--
ALTER TABLE `xly7v_jshopping_products_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prodkey` (`product_id`,`key`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `xly7v_jshopping_products_prices`
--
ALTER TABLE `xly7v_jshopping_products_prices`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_quantity_start` (`product_quantity_start`),
  ADD KEY `product_quantity_finish` (`product_quantity_finish`);

--
-- Индексы таблицы `xly7v_jshopping_products_relations`
--
ALTER TABLE `xly7v_jshopping_products_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`product_related_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `product_related_id` (`product_related_id`);

--
-- Индексы таблицы `xly7v_jshopping_products_reviews`
--
ALTER TABLE `xly7v_jshopping_products_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `mark` (`mark`),
  ADD KEY `publish` (`publish`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `xly7v_jshopping_products_to_categories`
--
ALTER TABLE `xly7v_jshopping_products_to_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`category_id`,`product_ordering`),
  ADD KEY `product_ordering` (`product_ordering`);

--
-- Индексы таблицы `xly7v_jshopping_products_videos`
--
ALTER TABLE `xly7v_jshopping_products_videos`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `video_id` (`video_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `xly7v_jshopping_product_labels`
--
ALTER TABLE `xly7v_jshopping_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_jshopping_shipping_ext_calc`
--
ALTER TABLE `xly7v_jshopping_shipping_ext_calc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_shipping_method`
--
ALTER TABLE `xly7v_jshopping_shipping_method`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_jshopping_shipping_method_price`
--
ALTER TABLE `xly7v_jshopping_shipping_method_price`
  ADD PRIMARY KEY (`sh_pr_method_id`),
  ADD KEY `shipping_method_id` (`shipping_method_id`),
  ADD KEY `shipping_tax_id` (`shipping_tax_id`),
  ADD KEY `package_tax_id` (`package_tax_id`),
  ADD KEY `delivery_times_id` (`delivery_times_id`);

--
-- Индексы таблицы `xly7v_jshopping_shipping_method_price_countries`
--
ALTER TABLE `xly7v_jshopping_shipping_method_price_countries`
  ADD PRIMARY KEY (`sh_method_country_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `sh_pr_method_id` (`sh_pr_method_id`),
  ADD KEY `sh_method_country_id` (`sh_method_country_id`,`country_id`,`sh_pr_method_id`),
  ADD KEY `country_id_2` (`country_id`,`sh_pr_method_id`),
  ADD KEY `sh_method_country_id_2` (`sh_method_country_id`,`country_id`);

--
-- Индексы таблицы `xly7v_jshopping_shipping_method_price_weight`
--
ALTER TABLE `xly7v_jshopping_shipping_method_price_weight`
  ADD PRIMARY KEY (`sh_pr_weight_id`),
  ADD KEY `sh_pr_method_id` (`sh_pr_method_id`),
  ADD KEY `sh_pr_weight_id` (`sh_pr_weight_id`,`sh_pr_method_id`);

--
-- Индексы таблицы `xly7v_jshopping_taxes`
--
ALTER TABLE `xly7v_jshopping_taxes`
  ADD PRIMARY KEY (`tax_id`);

--
-- Индексы таблицы `xly7v_jshopping_taxes_ext`
--
ALTER TABLE `xly7v_jshopping_taxes_ext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Индексы таблицы `xly7v_jshopping_unit`
--
ALTER TABLE `xly7v_jshopping_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qty` (`qty`);

--
-- Индексы таблицы `xly7v_jshopping_usergroups`
--
ALTER TABLE `xly7v_jshopping_usergroups`
  ADD PRIMARY KEY (`usergroup_id`),
  ADD KEY `usergroup_name` (`usergroup_name`),
  ADD KEY `usergroup_is_default` (`usergroup_is_default`);

--
-- Индексы таблицы `xly7v_jshopping_users`
--
ALTER TABLE `xly7v_jshopping_users`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `u_name` (`u_name`),
  ADD KEY `usergroup_id` (`usergroup_id`),
  ADD KEY `usergroup_id_2` (`usergroup_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `client_type` (`client_type`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `xly7v_jshopping_vendors`
--
ALTER TABLE `xly7v_jshopping_vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country` (`country`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`),
  ADD KEY `main` (`main`),
  ADD KEY `publish` (`publish`);

--
-- Индексы таблицы `xly7v_languages`
--
ALTER TABLE `xly7v_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `xly7v_menu`
--
ALTER TABLE `xly7v_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `xly7v_menu_types`
--
ALTER TABLE `xly7v_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `xly7v_messages`
--
ALTER TABLE `xly7v_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `xly7v_messages_cfg`
--
ALTER TABLE `xly7v_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `xly7v_modules`
--
ALTER TABLE `xly7v_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `xly7v_modules_menu`
--
ALTER TABLE `xly7v_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `xly7v_newsfeeds`
--
ALTER TABLE `xly7v_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `xly7v_overrider`
--
ALTER TABLE `xly7v_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_postinstall_messages`
--
ALTER TABLE `xly7v_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `xly7v_privacy_consents`
--
ALTER TABLE `xly7v_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Индексы таблицы `xly7v_privacy_requests`
--
ALTER TABLE `xly7v_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xly7v_redirect_links`
--
ALTER TABLE `xly7v_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `xly7v_schemas`
--
ALTER TABLE `xly7v_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `xly7v_session`
--
ALTER TABLE `xly7v_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Индексы таблицы `xly7v_tags`
--
ALTER TABLE `xly7v_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `xly7v_template_styles`
--
ALTER TABLE `xly7v_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Индексы таблицы `xly7v_ucm_base`
--
ALTER TABLE `xly7v_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `xly7v_ucm_content`
--
ALTER TABLE `xly7v_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `xly7v_ucm_history`
--
ALTER TABLE `xly7v_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `xly7v_updates`
--
ALTER TABLE `xly7v_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `xly7v_update_sites`
--
ALTER TABLE `xly7v_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `xly7v_update_sites_extensions`
--
ALTER TABLE `xly7v_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `xly7v_usergroups`
--
ALTER TABLE `xly7v_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `xly7v_users`
--
ALTER TABLE `xly7v_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `xly7v_user_keys`
--
ALTER TABLE `xly7v_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `xly7v_user_notes`
--
ALTER TABLE `xly7v_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `xly7v_user_profiles`
--
ALTER TABLE `xly7v_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `xly7v_user_usergroup_map`
--
ALTER TABLE `xly7v_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `xly7v_viewlevels`
--
ALTER TABLE `xly7v_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `xly7v_action_logs`
--
ALTER TABLE `xly7v_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT для таблицы `xly7v_action_logs_extensions`
--
ALTER TABLE `xly7v_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `xly7v_action_log_config`
--
ALTER TABLE `xly7v_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `xly7v_assets`
--
ALTER TABLE `xly7v_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT для таблицы `xly7v_banners`
--
ALTER TABLE `xly7v_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_banner_clients`
--
ALTER TABLE `xly7v_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_categories`
--
ALTER TABLE `xly7v_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `xly7v_contact_details`
--
ALTER TABLE `xly7v_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_content`
--
ALTER TABLE `xly7v_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_content_types`
--
ALTER TABLE `xly7v_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `xly7v_extensions`
--
ALTER TABLE `xly7v_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT для таблицы `xly7v_fields`
--
ALTER TABLE `xly7v_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_fields_groups`
--
ALTER TABLE `xly7v_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_finder_filters`
--
ALTER TABLE `xly7v_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_finder_links`
--
ALTER TABLE `xly7v_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_finder_taxonomy`
--
ALTER TABLE `xly7v_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_finder_terms`
--
ALTER TABLE `xly7v_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_finder_types`
--
ALTER TABLE `xly7v_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_addons`
--
ALTER TABLE `xly7v_jshopping_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_attr`
--
ALTER TABLE `xly7v_jshopping_attr`
  MODIFY `attr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_attr_groups`
--
ALTER TABLE `xly7v_jshopping_attr_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_attr_values`
--
ALTER TABLE `xly7v_jshopping_attr_values`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_cart_temp`
--
ALTER TABLE `xly7v_jshopping_cart_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_categories`
--
ALTER TABLE `xly7v_jshopping_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_config`
--
ALTER TABLE `xly7v_jshopping_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_config_display_prices`
--
ALTER TABLE `xly7v_jshopping_config_display_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_config_seo`
--
ALTER TABLE `xly7v_jshopping_config_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_config_statictext`
--
ALTER TABLE `xly7v_jshopping_config_statictext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_countries`
--
ALTER TABLE `xly7v_jshopping_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_coupons`
--
ALTER TABLE `xly7v_jshopping_coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_currencies`
--
ALTER TABLE `xly7v_jshopping_currencies`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_delivery_times`
--
ALTER TABLE `xly7v_jshopping_delivery_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_free_attr`
--
ALTER TABLE `xly7v_jshopping_free_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_import_export`
--
ALTER TABLE `xly7v_jshopping_import_export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_languages`
--
ALTER TABLE `xly7v_jshopping_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_manufacturers`
--
ALTER TABLE `xly7v_jshopping_manufacturers`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_orders`
--
ALTER TABLE `xly7v_jshopping_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_order_history`
--
ALTER TABLE `xly7v_jshopping_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_order_item`
--
ALTER TABLE `xly7v_jshopping_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_order_status`
--
ALTER TABLE `xly7v_jshopping_order_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_payment_method`
--
ALTER TABLE `xly7v_jshopping_payment_method`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_payment_trx`
--
ALTER TABLE `xly7v_jshopping_payment_trx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_payment_trx_data`
--
ALTER TABLE `xly7v_jshopping_payment_trx_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products`
--
ALTER TABLE `xly7v_jshopping_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_attr`
--
ALTER TABLE `xly7v_jshopping_products_attr`
  MODIFY `product_attr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_attr2`
--
ALTER TABLE `xly7v_jshopping_products_attr2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_extra_fields`
--
ALTER TABLE `xly7v_jshopping_products_extra_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_extra_field_groups`
--
ALTER TABLE `xly7v_jshopping_products_extra_field_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_extra_field_values`
--
ALTER TABLE `xly7v_jshopping_products_extra_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_files`
--
ALTER TABLE `xly7v_jshopping_products_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_free_attr`
--
ALTER TABLE `xly7v_jshopping_products_free_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_images`
--
ALTER TABLE `xly7v_jshopping_products_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_option`
--
ALTER TABLE `xly7v_jshopping_products_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_prices`
--
ALTER TABLE `xly7v_jshopping_products_prices`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_relations`
--
ALTER TABLE `xly7v_jshopping_products_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_reviews`
--
ALTER TABLE `xly7v_jshopping_products_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_products_videos`
--
ALTER TABLE `xly7v_jshopping_products_videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_product_labels`
--
ALTER TABLE `xly7v_jshopping_product_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_shipping_ext_calc`
--
ALTER TABLE `xly7v_jshopping_shipping_ext_calc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_shipping_method`
--
ALTER TABLE `xly7v_jshopping_shipping_method`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_shipping_method_price`
--
ALTER TABLE `xly7v_jshopping_shipping_method_price`
  MODIFY `sh_pr_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_shipping_method_price_countries`
--
ALTER TABLE `xly7v_jshopping_shipping_method_price_countries`
  MODIFY `sh_method_country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_shipping_method_price_weight`
--
ALTER TABLE `xly7v_jshopping_shipping_method_price_weight`
  MODIFY `sh_pr_weight_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_taxes`
--
ALTER TABLE `xly7v_jshopping_taxes`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_taxes_ext`
--
ALTER TABLE `xly7v_jshopping_taxes_ext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_unit`
--
ALTER TABLE `xly7v_jshopping_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_usergroups`
--
ALTER TABLE `xly7v_jshopping_usergroups`
  MODIFY `usergroup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_jshopping_vendors`
--
ALTER TABLE `xly7v_jshopping_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_languages`
--
ALTER TABLE `xly7v_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `xly7v_menu`
--
ALTER TABLE `xly7v_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT для таблицы `xly7v_menu_types`
--
ALTER TABLE `xly7v_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_messages`
--
ALTER TABLE `xly7v_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_modules`
--
ALTER TABLE `xly7v_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT для таблицы `xly7v_newsfeeds`
--
ALTER TABLE `xly7v_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_overrider`
--
ALTER TABLE `xly7v_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `xly7v_postinstall_messages`
--
ALTER TABLE `xly7v_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `xly7v_privacy_consents`
--
ALTER TABLE `xly7v_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_privacy_requests`
--
ALTER TABLE `xly7v_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_redirect_links`
--
ALTER TABLE `xly7v_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_tags`
--
ALTER TABLE `xly7v_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `xly7v_template_styles`
--
ALTER TABLE `xly7v_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `xly7v_ucm_content`
--
ALTER TABLE `xly7v_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_ucm_history`
--
ALTER TABLE `xly7v_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_updates`
--
ALTER TABLE `xly7v_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT для таблицы `xly7v_update_sites`
--
ALTER TABLE `xly7v_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `xly7v_usergroups`
--
ALTER TABLE `xly7v_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `xly7v_users`
--
ALTER TABLE `xly7v_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=642;
--
-- AUTO_INCREMENT для таблицы `xly7v_user_keys`
--
ALTER TABLE `xly7v_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_user_notes`
--
ALTER TABLE `xly7v_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `xly7v_viewlevels`
--
ALTER TABLE `xly7v_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
