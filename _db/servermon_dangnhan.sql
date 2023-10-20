-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2023 at 08:18 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servermon_dangnhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `psm_config`
--

CREATE TABLE `psm_config` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psm_config`
--

INSERT INTO `psm_config` (`key`, `value`) VALUES
('language', 'en_US'),
('proxy', '0'),
('proxy_url', ''),
('proxy_user', ''),
('proxy_password', ''),
('email_status', '1'),
('email_from_email', 'monitor@example.org'),
('email_from_name', 'Server Monitor'),
('email_smtp', ''),
('email_smtp_host', ''),
('email_smtp_port', ''),
('email_smtp_security', ''),
('email_smtp_username', ''),
('email_smtp_password', ''),
('sms_status', '0'),
('sms_gateway', 'messagebird'),
('sms_gateway_username', 'username'),
('sms_gateway_password', 'password'),
('sms_from', '1234567890'),
('pushover_status', '0'),
('pushover_api_token', ''),
('telegram_status', '0'),
('telegram_api_token', ''),
('jabber_status', '1'),
('jabber_host', ''),
('jabber_port', ''),
('jabber_username', ''),
('jabber_domain', ''),
('jabber_password', ''),
('password_encrypt_key', 'f097dea7133702e566befbccc18361de67455d48'),
('alert_type', 'status'),
('log_status', '1'),
('log_email', '1'),
('log_sms', '1'),
('log_pushover', '1'),
('log_telegram', '1'),
('log_jabber', '1'),
('log_retention_period', '365'),
('version', '3.5.2'),
('version_update_check', '3.5.2'),
('auto_refresh_servers', '0'),
('show_update', '1'),
('last_update_check', '1697764630'),
('cron_running', '0'),
('cron_running_time', '0'),
('cron_off_running', '0'),
('cron_off_running_time', '0');

-- --------------------------------------------------------

--
-- Table structure for table `psm_log`
--

CREATE TABLE `psm_log` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `server_id` int(11) UNSIGNED NOT NULL,
  `type` enum('status','email','sms','pushover','telegram','jabber') NOT NULL,
  `message` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `psm_log_users`
--

CREATE TABLE `psm_log_users` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `psm_servers`
--

CREATE TABLE `psm_servers` (
  `server_id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(500) NOT NULL,
  `port` int(5) NOT NULL,
  `request_method` varchar(50) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `type` enum('ping','service','website') NOT NULL DEFAULT 'service',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `pattern_online` enum('yes','no') NOT NULL DEFAULT 'yes',
  `post_field` varchar(255) DEFAULT NULL,
  `redirect_check` enum('ok','bad') NOT NULL DEFAULT 'bad',
  `allow_http_status` varchar(255) NOT NULL DEFAULT '',
  `header_name` varchar(255) NOT NULL DEFAULT '',
  `header_value` varchar(255) NOT NULL DEFAULT '',
  `status` enum('on','off') NOT NULL DEFAULT 'on',
  `error` varchar(255) DEFAULT NULL,
  `rtime` float(9,7) DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `last_offline` datetime DEFAULT NULL,
  `last_offline_duration` varchar(255) DEFAULT NULL,
  `last_check` datetime DEFAULT NULL,
  `active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `email` enum('yes','no') NOT NULL DEFAULT 'yes',
  `sms` enum('yes','no') NOT NULL DEFAULT 'no',
  `pushover` enum('yes','no') NOT NULL DEFAULT 'yes',
  `telegram` enum('yes','no') NOT NULL DEFAULT 'yes',
  `jabber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `warning_threshold` mediumint(1) UNSIGNED NOT NULL DEFAULT '1',
  `warning_threshold_counter` mediumint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ssl_cert_expiry_days` mediumint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ssl_cert_expired_time` varchar(255) DEFAULT NULL,
  `timeout` smallint(1) UNSIGNED DEFAULT NULL,
  `website_username` varchar(255) DEFAULT NULL,
  `website_password` varchar(255) DEFAULT NULL,
  `last_error` varchar(255) DEFAULT NULL,
  `last_error_output` text,
  `last_output` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psm_servers`
--

INSERT INTO `psm_servers` (`server_id`, `ip`, `port`, `request_method`, `label`, `type`, `pattern`, `pattern_online`, `post_field`, `redirect_check`, `allow_http_status`, `header_name`, `header_value`, `status`, `error`, `rtime`, `last_online`, `last_offline`, `last_offline_duration`, `last_check`, `active`, `email`, `sms`, `pushover`, `telegram`, `jabber`, `warning_threshold`, `warning_threshold_counter`, `ssl_cert_expiry_days`, `ssl_cert_expired_time`, `timeout`, `website_username`, `website_password`, `last_error`, `last_error_output`, `last_output`) VALUES
(1, 'http://sourceforge.net/index.php', 80, NULL, 'SourceForge', 'website', '', 'yes', NULL, 'bad', '', '', '', 'on', NULL, 0.0000000, NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'smtp.gmail.com', 465, NULL, 'Gmail SMTP', 'service', '', 'yes', NULL, 'bad', '', '', '', 'on', NULL, 0.0000000, NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `psm_servers_history`
--

CREATE TABLE `psm_servers_history` (
  `servers_history_id` int(11) UNSIGNED NOT NULL,
  `server_id` int(11) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `latency_min` float(9,7) NOT NULL,
  `latency_avg` float(9,7) NOT NULL,
  `latency_max` float(9,7) NOT NULL,
  `checks_total` int(11) UNSIGNED NOT NULL,
  `checks_failed` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `psm_servers_uptime`
--

CREATE TABLE `psm_servers_uptime` (
  `servers_uptime_id` int(11) UNSIGNED NOT NULL,
  `server_id` int(11) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  `latency` float(9,7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `psm_users`
--

CREATE TABLE `psm_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(64) NOT NULL COMMENT 'user''s name, unique',
  `password` varchar(255) NOT NULL COMMENT 'user''s password in salted and hashed format',
  `password_reset_hash` char(40) DEFAULT NULL COMMENT 'user''s password reset code',
  `password_reset_timestamp` bigint(20) DEFAULT NULL COMMENT 'timestamp of the password reset request',
  `rememberme_token` varchar(64) DEFAULT NULL COMMENT 'user''s remember-me cookie token',
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT '20',
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `pushover_key` varchar(255) NOT NULL,
  `pushover_device` varchar(255) NOT NULL,
  `telegram_id` varchar(255) NOT NULL,
  `jabber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psm_users`
--

INSERT INTO `psm_users` (`user_id`, `user_name`, `password`, `password_reset_hash`, `password_reset_timestamp`, `rememberme_token`, `level`, `name`, `mobile`, `pushover_key`, `pushover_device`, `telegram_id`, `jabber`, `email`) VALUES
(1, 'admin', '$2y$10$glT1HqsdCFfhb1gCHcmQcevFx0KxmXdTthuozPOxERTAg0lfIdq9G', NULL, NULL, NULL, 10, 'admin', '', '', '', '', '', 'dangnhankl@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `psm_users_preferences`
--

CREATE TABLE `psm_users_preferences` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `psm_users_servers`
--

CREATE TABLE `psm_users_servers` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `server_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psm_users_servers`
--

INSERT INTO `psm_users_servers` (`user_id`, `server_id`) VALUES
(1, 1),
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `psm_config`
--
ALTER TABLE `psm_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `psm_log`
--
ALTER TABLE `psm_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `psm_log_users`
--
ALTER TABLE `psm_log_users`
  ADD PRIMARY KEY (`log_id`,`user_id`);

--
-- Indexes for table `psm_servers`
--
ALTER TABLE `psm_servers`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `psm_servers_history`
--
ALTER TABLE `psm_servers_history`
  ADD PRIMARY KEY (`servers_history_id`),
  ADD UNIQUE KEY `server_id_date` (`server_id`,`date`);

--
-- Indexes for table `psm_servers_uptime`
--
ALTER TABLE `psm_servers_uptime`
  ADD PRIMARY KEY (`servers_uptime_id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indexes for table `psm_users`
--
ALTER TABLE `psm_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `unique_username` (`user_name`);

--
-- Indexes for table `psm_users_preferences`
--
ALTER TABLE `psm_users_preferences`
  ADD PRIMARY KEY (`user_id`,`key`);

--
-- Indexes for table `psm_users_servers`
--
ALTER TABLE `psm_users_servers`
  ADD PRIMARY KEY (`user_id`,`server_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `psm_log`
--
ALTER TABLE `psm_log`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psm_servers`
--
ALTER TABLE `psm_servers`
  MODIFY `server_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `psm_servers_history`
--
ALTER TABLE `psm_servers_history`
  MODIFY `servers_history_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psm_servers_uptime`
--
ALTER TABLE `psm_servers_uptime`
  MODIFY `servers_uptime_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psm_users`
--
ALTER TABLE `psm_users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
