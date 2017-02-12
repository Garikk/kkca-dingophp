-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 12 2017 г., 21:03
-- Версия сервера: 5.7.17-0ubuntu0.16.04.1
-- Версия PHP: 7.0.13-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kkcar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `uuid` longtext,
  `login` longtext,
  `pass` longtext,
  `status` int(11) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `account_roles`
--

CREATE TABLE `account_roles` (
  `account_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `arch`
--

CREATE TABLE `arch` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `configurations`
--

CREATE TABLE `configurations` (
  `id` int(11) NOT NULL,
  `uuid` longtext,
  `name` longtext,
  `description` longtext,
  `configuration` longtext,
  `stamp` longtext,
  `configurationtype` int(11) DEFAULT NULL,
  `ownerconf` int(11) DEFAULT NULL,
  `kkcar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `config_types`
--

CREATE TABLE `config_types` (
  `id` int(11) NOT NULL,
  `type` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dw_kk_dashboard_infopanels`
--

CREATE TABLE `dw_kk_dashboard_infopanels` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `color` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `huge` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iconstyle` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `dw_kk_historystore`
--

CREATE TABLE `dw_kk_historystore` (
  `id` int(11) NOT NULL,
  `kkcar` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `measure` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `dw_plugins`
--

CREATE TABLE `dw_plugins` (
  `id` int(11) NOT NULL,
  `name_lc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `plugin` int(11) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `extconnector`
--

CREATE TABLE `extconnector` (
  `timestamp` int(11) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `pinid` longtext,
  `pinmessage` longtext,
  `id` int(11) NOT NULL,
  `kkcar_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `url` longtext,
  `owner_conf` int(11) DEFAULT NULL,
  `name` longtext,
  `version` int(11) DEFAULT NULL,
  `filetype` int(11) DEFAULT NULL,
  `owner_plugin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `file_types`
--

CREATE TABLE `file_types` (
  `id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kkcar`
--

CREATE TABLE `kkcar` (
  `id` int(11) NOT NULL,
  `name` longtext,
  `owner` int(11) DEFAULT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `uuid` longtext,
  `activeconfiguration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kkcar_commands`
--

CREATE TABLE `kkcar_commands` (
  `id` int(11) NOT NULL,
  `kkcar` int(11) DEFAULT NULL,
  `description` longtext,
  `command` longtext,
  `status` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kkcar_confinfo`
--

CREATE TABLE `kkcar_confinfo` (
  `id` int(11) NOT NULL,
  `kkcar` int(11) DEFAULT NULL,
  `carinfo` longtext,
  `currentconfig` int(11) DEFAULT NULL,
  `configversion` longtext,
  `kkcontrollerversion` longtext,
  `osversion` longtext,
  `confstatus` longtext,
  `carstatus` longtext,
  `timestamp` int(11) DEFAULT NULL,
  `enginestatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kkcar_messages`
--

CREATE TABLE `kkcar_messages` (
  `id` int(11) NOT NULL,
  `kkcar` int(11) DEFAULT NULL,
  `message` longtext,
  `timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `liveinfo`
--

CREATE TABLE `liveinfo` (
  `id` int(11) NOT NULL,
  `kkcar_id` int(11) DEFAULT NULL,
  `name` longtext,
  `param_id` int(11) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `liveinfo_dtc`
--

CREATE TABLE `liveinfo_dtc` (
  `id` int(11) NOT NULL,
  `kkcar_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `dtc_val` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `liveinfo_request`
--

CREATE TABLE `liveinfo_request` (
  `id` int(11) NOT NULL,
  `configuration_id` int(11) NOT NULL,
  `PID` int(11) DEFAULT NULL,
  `interval` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `manufacture`
--

CREATE TABLE `manufacture` (
  `id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `odb_dtc`
--

CREATE TABLE `odb_dtc` (
  `id` int(11) NOT NULL,
  `manufacture` int(11) DEFAULT NULL,
  `dtc` int(11) DEFAULT NULL,
  `descriptionlocal` longtext,
  `descriptionodb` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `odb_pids`
--

CREATE TABLE `odb_pids` (
  `id` int(11) NOT NULL,
  `manufacture` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `descriptionlocal` longtext,
  `descriptionodb` longtext,
  `PID_MODE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `uuid` longtext,
  `name` longtext,
  `description` longtext,
  `version` int(11) DEFAULT NULL,
  `arch` int(11) NOT NULL,
  `pins_in` longtext,
  `pins_out` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `system_state`
--

CREATE TABLE `system_state` (
  `id` int(11) NOT NULL,
  `name` longtext,
  `kkcontroller_version` longtext,
  `state` int(11) DEFAULT NULL,
  `base_version` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `arch`
--
ALTER TABLE `arch`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKI_kkcar` (`kkcar`),
  ADD KEY `configurations_configurationtype_fkey` (`configurationtype`);

--
-- Индексы таблицы `config_types`
--
ALTER TABLE `config_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dw_kk_dashboard_infopanels`
--
ALTER TABLE `dw_kk_dashboard_infopanels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dw_kk_historystore`
--
ALTER TABLE `dw_kk_historystore`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dw_plugins`
--
ALTER TABLE `dw_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `extconnector`
--
ALTER TABLE `extconnector`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKI_KKCarId` (`kkcar_id`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fki_owconf` (`owner_conf`),
  ADD KEY `fki_plugin` (`owner_plugin`);

--
-- Индексы таблицы `file_types`
--
ALTER TABLE `file_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kkcar`
--
ALTER TABLE `kkcar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kkcar_ActiveConfiguration_fkey` (`activeconfiguration`);

--
-- Индексы таблицы `kkcar_commands`
--
ALTER TABLE `kkcar_commands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fki_kkcar_cmd` (`kkcar`);

--
-- Индексы таблицы `kkcar_confinfo`
--
ALTER TABLE `kkcar_confinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fki_currconf` (`currentconfig`),
  ADD KEY `fki_kkcar_confinfo` (`kkcar`);

--
-- Индексы таблицы `kkcar_messages`
--
ALTER TABLE `kkcar_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kkcar_messages_kkcar_fkey` (`kkcar`);

--
-- Индексы таблицы `liveinfo`
--
ALTER TABLE `liveinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liveinfo_ODB_PID_fkey` (`param_id`);

--
-- Индексы таблицы `liveinfo_dtc`
--
ALTER TABLE `liveinfo_dtc`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `odb_dtc`
--
ALTER TABLE `odb_dtc`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `odb_pids`
--
ALTER TABLE `odb_pids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fki_manufacture` (`manufacture`);

--
-- Индексы таблицы `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugins_uuid_key` (`uuid`(255));

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_state`
--
ALTER TABLE `system_state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `arch`
--
ALTER TABLE `arch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `config_types`
--
ALTER TABLE `config_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `dw_kk_dashboard_infopanels`
--
ALTER TABLE `dw_kk_dashboard_infopanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `dw_kk_historystore`
--
ALTER TABLE `dw_kk_historystore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `dw_plugins`
--
ALTER TABLE `dw_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `extconnector`
--
ALTER TABLE `extconnector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `file_types`
--
ALTER TABLE `file_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `kkcar`
--
ALTER TABLE `kkcar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `kkcar_commands`
--
ALTER TABLE `kkcar_commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `kkcar_confinfo`
--
ALTER TABLE `kkcar_confinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `kkcar_messages`
--
ALTER TABLE `kkcar_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `liveinfo`
--
ALTER TABLE `liveinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `liveinfo_dtc`
--
ALTER TABLE `liveinfo_dtc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `manufacture`
--
ALTER TABLE `manufacture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `odb_dtc`
--
ALTER TABLE `odb_dtc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `odb_pids`
--
ALTER TABLE `odb_pids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `system_state`
--
ALTER TABLE `system_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `configurations`
--
ALTER TABLE `configurations`
  ADD CONSTRAINT `FK_kkcar` FOREIGN KEY (`kkcar`) REFERENCES `kkcar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `configurations_configurationtype_fkey` FOREIGN KEY (`configurationtype`) REFERENCES `config_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `extconnector`
--
ALTER TABLE `extconnector`
  ADD CONSTRAINT `FK_KKCarId` FOREIGN KEY (`kkcar_id`) REFERENCES `kkcar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_owner_conf_fkey` FOREIGN KEY (`owner_conf`) REFERENCES `configurations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_plugin` FOREIGN KEY (`owner_plugin`) REFERENCES `plugins` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `kkcar`
--
ALTER TABLE `kkcar`
  ADD CONSTRAINT `kkcar_ActiveConfiguration_fkey` FOREIGN KEY (`activeconfiguration`) REFERENCES `configurations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `kkcar_commands`
--
ALTER TABLE `kkcar_commands`
  ADD CONSTRAINT `fk_kkcar_cmd` FOREIGN KEY (`kkcar`) REFERENCES `kkcar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `kkcar_confinfo`
--
ALTER TABLE `kkcar_confinfo`
  ADD CONSTRAINT `fk_currconf` FOREIGN KEY (`currentconfig`) REFERENCES `kkcar_confinfo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_kkcar_confinfo` FOREIGN KEY (`kkcar`) REFERENCES `kkcar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `kkcar_messages`
--
ALTER TABLE `kkcar_messages`
  ADD CONSTRAINT `kkcar_messages_kkcar_fkey` FOREIGN KEY (`kkcar`) REFERENCES `kkcar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `liveinfo`
--
ALTER TABLE `liveinfo`
  ADD CONSTRAINT `liveinfo_ODB_PID_fkey` FOREIGN KEY (`param_id`) REFERENCES `odb_pids` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `odb_pids`
--
ALTER TABLE `odb_pids`
  ADD CONSTRAINT `fk_manufacture` FOREIGN KEY (`manufacture`) REFERENCES `manufacture` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
