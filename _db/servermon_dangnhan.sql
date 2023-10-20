-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2023 at 10:46 AM
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
('email_smtp', '1'),
('email_smtp_host', 'smtp.gmail.com'),
('email_smtp_port', '465'),
('email_smtp_security', 'ssl'),
('email_smtp_username', 'dangnhankl@gmail.com'),
('email_smtp_password', 'IA/Ntuw+P08lA04yYXiuJwvmTxlEHq1QZ53gXZfq6G3f586Slj1CjZtPma1xLInp'),
('sms_status', '0'),
('sms_gateway', 'messagebird'),
('sms_gateway_username', 'username'),
('sms_gateway_password', 'password'),
('sms_from', '1234567890'),
('pushover_status', '0'),
('pushover_api_token', ''),
('telegram_status', '1'),
('telegram_api_token', '6905229227:AAFMUbNe1i5GpOQcrsp6gI8-JK-NYGAJFZo'),
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
('cron_off_running_time', '0'),
('combine_notifications', '1');

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

--
-- Dumping data for table `psm_log`
--

INSERT INTO `psm_log` (`log_id`, `server_id`, `type`, `message`, `datetime`) VALUES
(1, 1, 'status', 'Server \'SourceForge\' is DOWN: ip=http://sourceforge.net/index.php, port=80. Error=HTTP STATUS ERROR: 403 Forbidden', '2023-10-20 01:52:39'),
(2, 1, 'email', 'Failed to connect to the following server:<br><br>Server: SourceForge<br>IP: http://sourceforge.net/index.php<br>Port:\n 80<br>Error: HTTP STATUS ERROR: 403 Forbidden<br>Date: 2023-10-20 08:52:39', '2023-10-20 01:52:39'),
(3, 1, 'status', 'Server \'Quản trị Mini\' is RUNNING: ip=http://quantri.minivietnam.com.vn, port=80, it was down for 8 minutes 27 seconds', '2023-10-20 02:01:06'),
(5, 1, 'status', 'Server \'Quản trị Mini\' is DOWN: ip=http://quantri.minivietnam.com.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:02:40'),
(6, 3, 'status', 'Server \'Mini Phú Nhuận\' is DOWN: ip=http://www.miniphunhuan.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:03:00'),
(7, 3, 'telegram', '<b>The following servers went down:</b><br>- Server: Quản trị Mini<br>- IP: http://quantri.minivietnam.com.vn<br>- Port: 80<br>- Error: TIMEOUT ERROR: no response from server<br>-\n Date: 2023-10-20 09:02:40<br><br><br><b>The following\n servers are up again:</b><br><ul><li>None</li></ul>', '2023-10-20 02:03:00'),
(8, 1, 'status', 'Server \'Quản trị Mini\' is RUNNING: ip=http://quantri.minivietnam.com.vn, port=80, it was down for 1 minute 2 seconds', '2023-10-20 02:03:42'),
(9, 3, 'status', 'Server \'Mini Phú Nhuận\' is RUNNING: ip=http://www.miniphunhuan.vn, port=80, it was down for 42 seconds', '2023-10-20 02:03:42'),
(10, 3, 'telegram', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\n servers are up again:</b><br>- Server: Quản trị Mini<br>- IP: http://quantri.minivietnam.com.vn<br>- Port: 80<br>- Downtime:\n 1 minute 2 seconds<br>- Date: 2023-10-20 09:03:42<br><br>', '2023-10-20 02:03:42'),
(11, 1, 'status', 'Server \'Quản trị Mini\' is DOWN: ip=http://quantri.minivietnam.com.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:05:43'),
(12, 3, 'status', 'Server \'Mini Phú Nhuận\' is DOWN: ip=http://www.miniphunhuan.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:06:03'),
(13, 3, 'email', '<b>The following servers went down:</b><br><ul><li>Server: Quản trị Mini</li><li>IP: http://quantri.minivietnam.com.vn</li><li>Port: 80</li><li>Error:\n TIMEOUT ERROR: no response from server</li><li>Date: 2023-10-20 09:05:43</li></ul><br><b>The following\n servers are up again:</b><br><ul><li>None</li></ul>', '2023-10-20 02:06:03'),
(14, 3, 'telegram', '<b>The following servers went down:</b><br>- Server: Quản trị Mini<br>- IP: http://quantri.minivietnam.com.vn<br>- Port: 80<br>- Error: TIMEOUT ERROR: no response from server<br>-\n Date: 2023-10-20 09:05:43<br><br><br><b>The following\n servers are up again:</b><br><ul><li>None</li></ul>', '2023-10-20 02:06:06'),
(15, 1, 'status', 'Server \'quantri.minivietnam.com.vn\' is RUNNING: ip=http://quantri.minivietnam.com.vn, port=80, it was down for 3 minutes 58 seconds', '2023-10-20 02:09:41'),
(16, 3, 'status', 'Server \'www.miniphunhuan.vn\' is RUNNING: ip=http://www.miniphunhuan.vn, port=80, it was down for 3 minutes 39 seconds', '2023-10-20 02:09:42'),
(17, 8, 'email', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\n servers are up again:</b><br><ul><li>Server: quantri.minivietnam.com.vn</li><li>IP: http://quantri.minivietnam.com.vn</li><li>Port: 80</li><li>Downtime:\n 3 minutes 58 seconds</li><li>Date: 2023-10-20 09:09:41</li></ul>', '2023-10-20 02:09:51'),
(18, 8, 'telegram', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\n servers are up again:</b><br>- Server: quantri.minivietnam.com.vn<br>- IP: http://quantri.minivietnam.com.vn<br>- Port: 80<br>- Downtime:\n 3 minutes 58 seconds<br>- Date: 2023-10-20 09:09:41<br><br>', '2023-10-20 02:09:55'),
(19, 12, 'status', 'Server \'bmwquan2.vn\' is DOWN: ip=http://bmwquan2.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:12:38'),
(20, 6, 'status', 'Server \'www.bmwquan2.vn\' is DOWN: ip=http://www.bmwquan2.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:36:22'),
(21, 7, 'status', 'Server \'www.bmw-danang.vn\' is DOWN: ip=http://www.bmw-danang.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:36:42'),
(22, 1, 'status', 'Server \'quantri.minivietnam.com.vn\' is DOWN: ip=http://quantri.minivietnam.com.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:42:15'),
(23, 3, 'status', 'Server \'www.miniphunhuan.vn\' is DOWN: ip=http://www.miniphunhuan.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:42:36'),
(24, 1, 'status', 'Server \'quantri.minivietnam.com.vn\' is RUNNING: ip=http://quantri.minivietnam.com.vn, port=80, it was down for 1 minute 18 seconds', '2023-10-20 02:43:33'),
(25, 3, 'status', 'Server \'www.miniphunhuan.vn\' is RUNNING: ip=http://www.miniphunhuan.vn, port=80, it was down for 58 seconds', '2023-10-20 02:43:34'),
(26, 6, 'status', 'Server \'www.bmwquan2.vn\' is RUNNING: ip=http://www.bmwquan2.vn, port=80, it was down for 7 minutes 16 seconds', '2023-10-20 02:43:38'),
(27, 7, 'status', 'Server \'www.bmw-danang.vn\' is RUNNING: ip=http://www.bmw-danang.vn, port=80, it was down for 6 minutes 57 seconds', '2023-10-20 02:43:39'),
(28, 12, 'status', 'Server \'bmwquan2.vn\' is RUNNING: ip=http://bmwquan2.vn, port=80, it was down for 31 minutes 6 seconds', '2023-10-20 02:43:44'),
(29, 13, 'email', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\r\n servers are up again:</b><br><ul><li>Server: quantri.minivietnam.com.vn</li><li>IP: http://quantri.minivietnam.com.vn</li><li>Port: 80</li><li>Downtime:\r\n 1 minute 18 seconds</li><li>Date: 2023-10-20 09:43:33</li></ul>', '2023-10-20 02:43:45'),
(30, 13, 'telegram', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\r\n servers are up again:</b><br>- Server: quantri.minivietnam.com.vn<br>- IP: http://quantri.minivietnam.com.vn<br>- Port: 80<br>- Downtime:\r\n 1 minute 18 seconds<br>- Date: 2023-10-20 09:43:33<br><br>', '2023-10-20 02:43:48'),
(31, 1, 'status', 'Server \'quantri.minivietnam.com.vn\' is DOWN: ip=http://quantri.minivietnam.com.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:59:35'),
(32, 3, 'status', 'Server \'www.miniphunhuan.vn\' is DOWN: ip=http://www.miniphunhuan.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 02:59:55'),
(33, 1, 'status', 'Server \'quantri.minivietnam.com.vn\' is RUNNING: ip=http://quantri.minivietnam.com.vn, port=80, it was down for 22 minutes 41 seconds', '2023-10-20 03:22:16'),
(34, 3, 'status', 'Server \'www.miniphunhuan.vn\' is RUNNING: ip=http://www.miniphunhuan.vn, port=80, it was down for 22 minutes 22 seconds', '2023-10-20 03:22:17'),
(35, 13, 'email', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\r\n servers are up again:</b><br><ul><li>Server: quantri.minivietnam.com.vn</li><li>IP: http://quantri.minivietnam.com.vn</li><li>Port: 80</li><li>Downtime:\r\n 22 minutes 41 seconds</li><li>Date: 2023-10-20 10:22:16</li></ul>', '2023-10-20 03:22:27'),
(36, 13, 'telegram', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\r\n servers are up again:</b><br>- Server: quantri.minivietnam.com.vn<br>- IP: http://quantri.minivietnam.com.vn<br>- Port: 80<br>- Downtime:\r\n 22 minutes 41 seconds<br>- Date: 2023-10-20 10:22:16<br><br>', '2023-10-20 03:22:32'),
(37, 12, 'status', 'Server \'bmwquan2.vn\' is DOWN: ip=http://bmwquan2.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 03:38:28'),
(38, 13, 'status', 'Server \'bmwnguyenvantroi.vn\' is DOWN: ip=http://bmwnguyenvantroi.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 03:38:48'),
(39, 1, 'status', 'Server \'quantri.minivietnam.com.vn\' is DOWN: ip=http://quantri.minivietnam.com.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 03:40:00'),
(40, 3, 'status', 'Server \'www.miniphunhuan.vn\' is DOWN: ip=http://www.miniphunhuan.vn, port=80. Error=TIMEOUT ERROR: no response from server', '2023-10-20 03:40:20'),
(41, 1, 'status', 'Server \'quantri.minivietnam.com.vn\' is RUNNING: ip=http://quantri.minivietnam.com.vn, port=80, it was down for 5 minutes 25 seconds', '2023-10-20 03:45:25'),
(42, 3, 'status', 'Server \'www.miniphunhuan.vn\' is RUNNING: ip=http://www.miniphunhuan.vn, port=80, it was down for 5 minutes 6 seconds', '2023-10-20 03:45:26'),
(43, 12, 'status', 'Server \'bmwquan2.vn\' is RUNNING: ip=http://bmwquan2.vn, port=80, it was down for 7 minutes 8 seconds', '2023-10-20 03:45:36'),
(44, 13, 'status', 'Server \'bmwnguyenvantroi.vn\' is RUNNING: ip=http://bmwnguyenvantroi.vn, port=80, it was down for 6 minutes 48 seconds', '2023-10-20 03:45:36'),
(45, 13, 'email', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\r\n servers are up again:</b><br><ul><li>Server: quantri.minivietnam.com.vn</li><li>IP: http://quantri.minivietnam.com.vn</li><li>Port: 80</li><li>Downtime:\r\n 5 minutes 25 seconds</li><li>Date: 2023-10-20 10:45:25</li></ul>', '2023-10-20 03:45:36'),
(46, 13, 'telegram', '<b>The following servers went down:</b><br><ul><li>None</li></ul><br><b>The following\r\n servers are up again:</b><br>- Server: quantri.minivietnam.com.vn<br>- IP: http://quantri.minivietnam.com.vn<br>- Port: 80<br>- Downtime:\r\n 5 minutes 25 seconds<br>- Date: 2023-10-20 10:45:25<br><br>', '2023-10-20 03:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `psm_log_users`
--

CREATE TABLE `psm_log_users` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psm_log_users`
--

INSERT INTO `psm_log_users` (`log_id`, `user_id`) VALUES
(2, 1),
(4, 1),
(7, 1),
(10, 1),
(13, 1),
(14, 1),
(17, 1),
(18, 1),
(29, 1),
(30, 1),
(35, 1),
(36, 1),
(45, 1),
(46, 1);

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
(1, 'http://quantri.minivietnam.com.vn', 80, NULL, 'quantri.minivietnam.com.vn', 'website', '', 'yes', NULL, 'bad', '', '', '', 'on', '', 0.3849251, '2023-10-20 10:45:25', '2023-10-20 10:40:00', '5 minutes 25 seconds', '2023-10-20 10:45:25', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', 'TIMEOUT ERROR: no response from server', 'Could not get headers. probably HTTP 50x error.', 'HTTP/1.1 200 OK\r\nDate: Fri, 20 Oct 2023 03:45:24 GMT\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: keep-alive\r\nSet-Cookie: PHPSESSID=tdasecs049pk1a4mvn7df93stc; path=/\r\nExpires: Thu, 19 Nov 1981 08:52:00 GMT\r\nCache-Control: no-store, no-cache, must-revalidate\r\nPragma: no-cache\r\nLink: <http://quantri.minivietnam.com.vn/wp-json/>; rel=\"https://api.w.org/\"\r\nLink: <http://quantri.minivietnam.com.vn/>; rel=shortlink\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\nContent-Encoding: gzip\r\n\r\n'),
(3, 'http://www.miniphunhuan.vn', 80, NULL, 'www.miniphunhuan.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 0.7078838, '2023-10-20 10:45:26', '2023-10-20 10:40:20', '5 minutes 6 seconds', '2023-10-20 10:45:26', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', 'TIMEOUT ERROR: no response from server', 'Could not get headers. probably HTTP 50x error.', 'HTTP/1.1 301 Moved Permanently\r\nDate: Fri, 20 Oct 2023 03:45:25 GMT\r\nContent-Type: text/html\r\nContent-Length: 178\r\nConnection: keep-alive\r\nLocation: https://www.miniphunhuan.vn/\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\n\r\nHTTP/1.1 200 OK\r\nDate: Fri, 20 Oct 2023 03:45:25 GMT\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: keep-alive\r\nSet-Cookie: PHPSESSID=d62crmpdir66v5fetsjr89tofi; path=/\r\nExpires: Thu, 19 Nov 1981 08:52:00 GMT\r\nCache-Control: no-store, no-cache, must-revalidate\r\nPragma: no-cache\r\nLink: <https://www.miniphunhuan.vn/wp-json/>; rel=\"https://api.w.org/\"\r\nLink: <https://www.miniphunhuan.vn/>; rel=shortlink\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\nContent-Encoding: gzip\r\n\r\n'),
(4, 'http://thacotai.vn', 80, NULL, 'thacotai.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 1.9081771, '2023-10-20 10:45:28', NULL, NULL, '2023-10-20 10:45:28', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', NULL, NULL, 'HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Fri, 20 Oct 2023 03:45:27 GMT\r\nContent-Type: text/html; charset=utf-8\r\nConnection: keep-alive\r\nVary: Accept-Encoding\r\nETag: W/\"c20c6-exn4f09/1D4+tyoypzdIz8moXi0\"\r\nVary: Accept-Encoding\r\nAccess-Control-Allow-Origin: *\r\nContent-Encoding: gzip\r\n\r\n'),
(5, 'http://thacobus.vn', 80, NULL, 'thacobus.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 2.5022020, '2023-10-20 10:45:30', NULL, NULL, '2023-10-20 10:45:30', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', NULL, NULL, 'HTTP/1.1 301 Moved Permanently\r\nServer: nginx\r\nDate: Fri, 20 Oct 2023 03:45:28 GMT\r\nContent-Type: text/html\r\nContent-Length: 162\r\nConnection: keep-alive\r\nLocation: https://thacobus.vn/\r\nAccess-Control-Allow-Origin: *\r\n\r\nHTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Fri, 20 Oct 2023 03:45:30 GMT\r\nContent-Type: text/html; charset=utf-8\r\nConnection: keep-alive\r\nVary: Accept-Encoding\r\nETag: W/\"c00f0-O33WT2E8o8BaJoGqU8sKMbUiFGs\"\r\nVary: Accept-Encoding\r\nAccess-Control-Allow-Origin: *\r\nContent-Encoding: gzip\r\n\r\n'),
(6, 'http://www.bmwquan2.vn', 80, NULL, 'www.bmwquan2.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 0.4169810, '2023-10-20 10:45:31', '2023-10-20 09:36:22', '7 minutes 16 seconds', '2023-10-20 10:45:31', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', 'TIMEOUT ERROR: no response from server', 'Could not get headers. probably HTTP 50x error.', 'HTTP/1.1 301 Moved Permanently\r\nDate: Fri, 20 Oct 2023 03:45:30 GMT\r\nContent-Type: text/html\r\nContent-Length: 178\r\nConnection: keep-alive\r\nLocation: https://www.bmwquan2.vn/\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\n\r\nHTTP/1.1 200 OK\r\nDate: Fri, 20 Oct 2023 03:45:30 GMT\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: keep-alive\r\nSet-Cookie: PHPSESSID=84jf1la5f019hj9emnl7ggb9ia; path=/\r\nExpires: Thu, 19 Nov 1981 08:52:00 GMT\r\nCache-Control: no-store, no-cache, must-revalidate\r\nPragma: no-cache\r\nX-Pingback: https://www.bmwquan2.vn/xmlrpc.php\r\nLink: <https://www.bmwquan2.vn/wp-json/>; rel=\"https://api.w.org/\"\r\nLink: <https://www.bmwquan2.vn/>; rel=shortlink\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\nContent-Encoding: gzip\r\n\r\n'),
(7, 'http://www.bmw-danang.vn', 80, NULL, 'www.bmw-danang.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 0.3379099, '2023-10-20 10:45:31', '2023-10-20 09:36:42', '6 minutes 57 seconds', '2023-10-20 10:45:31', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', 'TIMEOUT ERROR: no response from server', 'Could not get headers. probably HTTP 50x error.', 'HTTP/1.1 301 Moved Permanently\r\nDate: Fri, 20 Oct 2023 03:45:30 GMT\r\nContent-Type: text/html\r\nContent-Length: 178\r\nConnection: keep-alive\r\nLocation: https://www.bmw-danang.vn/\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\n\r\nHTTP/1.1 200 OK\r\nDate: Fri, 20 Oct 2023 03:45:30 GMT\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: keep-alive\r\nSet-Cookie: PHPSESSID=sqtk7hdnmulrcnkgh1376487i9; path=/\r\nExpires: Thu, 19 Nov 1981 08:52:00 GMT\r\nCache-Control: no-store, no-cache, must-revalidate\r\nPragma: no-cache\r\nX-Pingback: https://www.bmw-danang.vn/xmlrpc.php\r\nLink: <https://www.bmw-danang.vn/wp-json/>; rel=\"https://api.w.org/\"\r\nLink: <https://www.bmw-danang.vn/>; rel=shortlink\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\nContent-Encoding: gzip\r\n\r\n'),
(8, 'http://bmwphunhuan.com.vn', 80, NULL, 'bmwphunhuan.com.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 1.5316429, '2023-10-20 10:45:33', NULL, NULL, '2023-10-20 10:45:33', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', NULL, NULL, 'HTTP/1.1 301 Moved Permanently\r\nConnection: Keep-Alive\r\nKeep-Alive: timeout=5, max=100\r\nx-powered-by: PHP/7.4.33\r\ncontent-type: text/html; charset=UTF-8\r\nx-redirect-by: WordPress\r\nlocation: https://bmwphunhuan.com.vn/\r\ndate: Fri, 20 Oct 2023 03:45:32 GMT\r\nserver: LiteSpeed\r\nvary: User-Agent\r\n\r\nHTTP/1.1 200 OK\r\nConnection: Keep-Alive\r\nKeep-Alive: timeout=5, max=100\r\nx-powered-by: PHP/7.4.33\r\nlast-modified: Thu, 19 Oct 2023 23:16:39 GMT\r\ncontent-type: text/html; charset=UTF-8\r\ndate: Fri, 20 Oct 2023 03:45:32 GMT\r\nserver: LiteSpeed\r\nvary: User-Agent\r\nalt-svc: h3=\":443\"; ma=2592000, h3-29=\":443\"; ma=2592000, h3-Q050=\":443\"; ma=2592000, h3-Q046=\":443\"; ma=2592000, h3-Q043=\":443\"; ma=2592000, quic=\":443\"; ma=2592000; v=\"43,46\"\r\n\r\n'),
(9, 'http://kiavietnam.com.vn', 80, NULL, 'kiavietnam.com.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 1.2002621, '2023-10-20 10:45:34', NULL, NULL, '2023-10-20 10:45:34', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', NULL, NULL, 'HTTP/1.1 301 Moved Permanently\r\nDate: Fri, 20 Oct 2023 03:45:32 GMT\r\nContent-Type: text/html\r\nContent-Length: 169\r\nConnection: keep-alive\r\nLocation: https://kiavietnam.com.vn/\r\nx-frame-options: ALLOWALL\r\nx-content-type-options: nosniff\r\nx-xss-protection: 1; mode=block\r\n\r\nHTTP/1.1 200 OK\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: keep-alive\r\nCache-Control: no-cache, private\r\nDate: Fri, 20 Oct 2023 03:45:33 GMT\r\nSet-Cookie: XSRF-TOKEN=eyJpdiI6IkgxYXRKQ1BvVXBlOXduNnV4cmx4NEE9PSIsInZhbHVlIjoiZVdIVFBkaWRrWlhXMzNQZENWTTNrU0I1R1Q2U2NaYk9kQkZSRjBLNUl2U2RkaEE5cXFidTRtcmxOUWp5TXlHRm45NFpxN1JaQjk5N3JDSDhNSThUZzNPdFBoVjVrRGpjckRLY1M3MUk2TXNNVGpDUWJoUGE2QlpqbDNtWjYwTG8iLCJtYWMiOiJjMDM4ZDRkMzkzNmI1ODAwNjZmNGM1MjkyZGRkYmVlMjdiYmE2ZDNlMzJkOTkzNmJiNTI2YTdmNGU5ZGM2ZTkwIn0%3D; expires=Fri, 20-Oct-2023 05:45:33 GMT; Max-Age=7200; path=/; samesite=lax\r\nSet-Cookie: platform_session=eyJpdiI6Im8vTW4xMlI2QWZoRnExVDVJeW0rMmc9PSIsInZhbHVlIjoiNVlKRmN5RUcvYkFUU1RIdFBZYjlEQ3FVVTBGRjRWbCszNmZBemYrNiszSzFIU3lOaHQ0UjU4ekpFWDh2MC9iNVYzb2ZsVTNzQXJKS09jY0Y1dHB6OHFwMjJQSThma0R0SlJVWGMzWEZhS1IrUk4vcXE1NG9DOCtqME9JZVpQN1MiLCJtYWMiOiJhMTczNWM0OTcyOTYzZDM3ZDhjZmE3M2FhODliMWJmZWE5OTI2YzEwNTJlOTMyMmE0ZGUwZGM5YjE5MmE3ZDE5In0%3D; expires=Fri, 20-Oct-2023 05:45:33 GMT; Max-Age=7200; path=/; httponly; samesite=lax\r\nx-frame-options: ALLOWALL\r\nx-content-type-options: nosniff\r\nx-xss-protection: 1; mode=block\r\nContent-Encoding: gzip\r\n\r\n'),
(10, 'http://mazdamotors.vn', 80, NULL, 'mazdamotors.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 0.3790610, '2023-10-20 10:45:34', NULL, NULL, '2023-10-20 10:45:34', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', NULL, NULL, 'HTTP/1.1 200 OK\r\nCache-Control: private\r\nContent-Length: 633311\r\nContent-Type: text/html; charset=utf-8\r\nX-Frame-Options: allowall\r\nStrict-Transport-Security: max-age=10886400; preload\r\nX-XSS-Protection: 1; mode=block\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Allow-Origin: *\r\nDate: Fri, 20 Oct 2023 03:45:33 GMT\r\n\r\n'),
(11, 'http://peugeotvietnam.vn', 80, NULL, 'peugeotvietnam.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 0.8804021, '2023-10-20 10:45:35', NULL, NULL, '2023-10-20 10:45:35', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', NULL, NULL, 'HTTP/1.1 301 Moved Permanently\r\nContent-Length: 0\r\nLocation: https://peugeotvietnam.vn/\r\nCache-Control: max-age=300\r\nExpires: Fri, 20 Oct 2023 03:50:34 GMT\r\nDate: Fri, 20 Oct 2023 03:45:34 GMT\r\nConnection: keep-alive\r\nServer-Timing: ak_p; desc=\"1697773534093_400495124_302373694_12_5039_35_0_-\";dur=1\r\n\r\nHTTP/1.1 301 Moved Permanently\r\nContent-Length: 0\r\nLocation: https://www.peugeotvietnam.vn/\r\nCache-Control: max-age=300\r\nExpires: Fri, 20 Oct 2023 03:50:34 GMT\r\nDate: Fri, 20 Oct 2023 03:45:34 GMT\r\nConnection: keep-alive\r\nStrict-Transport-Security: max-age=600\r\nServer-Timing: ak_p; desc=\"1697773534250_400495124_302373721_18_4744_75_35_-\";dur=1\r\n\r\nHTTP/1.1 200 OK\r\nAccept-Ranges: bytes\r\nContent-Encoding: gzip\r\nContent-Type: text/html;charset=utf-8\r\nETag: \"2d850-607da62b2af2a-gzip\"\r\nLast-Modified: Mon, 16 Oct 2023 19:26:40 GMT\r\nX-Content-Type-Options: nosniff\r\nX-Dispatcher: dispatcher4eucentral1\r\nX-Vhost: publish\r\nContent-Length: 20044\r\nVary: Accept-Encoding\r\nMPULSE_CDN_CACHE: HIT\r\nMPULSE_ORIGIN_TIME: 0\r\nCache-Control: max-age=300\r\nExpires: Fri, 20 Oct 2023 03:50:34 GMT\r\nDate: Fri, 20 Oct 2023 03:45:34 GMT\r\nConnection: keep-alive\r\nStrict-Transport-Security: max-age=600\r\nServer-Timing: ak_p; desc=\"1697773534644_458052238_1751151323_38_4461_151_113_-\";dur=1\r\n\r\n'),
(12, 'http://bmwquan2.vn', 80, NULL, 'bmwquan2.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 0.4723518, '2023-10-20 10:45:36', '2023-10-20 10:38:28', '7 minutes 8 seconds', '2023-10-20 10:45:36', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', 'TIMEOUT ERROR: no response from server', 'Could not get headers. probably HTTP 50x error.', 'HTTP/1.1 301 Moved Permanently\r\nDate: Fri, 20 Oct 2023 03:45:35 GMT\r\nContent-Type: text/html\r\nContent-Length: 178\r\nConnection: keep-alive\r\nLocation: https://www.bmwquan2.vn/\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\n\r\nHTTP/1.1 200 OK\r\nDate: Fri, 20 Oct 2023 03:45:35 GMT\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: keep-alive\r\nSet-Cookie: PHPSESSID=g10itt0sgpc0udjhf4bh6vlkid; path=/\r\nExpires: Thu, 19 Nov 1981 08:52:00 GMT\r\nCache-Control: no-store, no-cache, must-revalidate\r\nPragma: no-cache\r\nX-Pingback: https://www.bmwquan2.vn/xmlrpc.php\r\nLink: <https://www.bmwquan2.vn/wp-json/>; rel=\"https://api.w.org/\"\r\nLink: <https://www.bmwquan2.vn/>; rel=shortlink\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\nContent-Encoding: gzip\r\n\r\n'),
(13, 'http://bmwnguyenvantroi.vn', 80, NULL, 'bmwnguyenvantroi.vn', 'website', '', 'yes', NULL, 'ok', '', '', '', 'on', '', 0.6201310, '2023-10-20 10:45:36', '2023-10-20 10:38:48', '6 minutes 48 seconds', '2023-10-20 10:45:36', 'yes', 'yes', 'no', 'no', 'yes', 'no', 1, 0, 0, NULL, 10, '', '', 'TIMEOUT ERROR: no response from server', 'Could not get headers. probably HTTP 50x error.', 'HTTP/1.1 301 Moved Permanently\r\nDate: Fri, 20 Oct 2023 03:45:35 GMT\r\nContent-Type: text/html\r\nContent-Length: 178\r\nConnection: keep-alive\r\nLocation: https://www.bmwnguyenvantroi.vn/\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\n\r\nHTTP/1.1 200 OK\r\nDate: Fri, 20 Oct 2023 03:45:35 GMT\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: keep-alive\r\nSet-Cookie: PHPSESSID=ns76poein8be1ugtmpedeg2vc3; path=/\r\nExpires: Thu, 19 Nov 1981 08:52:00 GMT\r\nCache-Control: no-store, no-cache, must-revalidate\r\nPragma: no-cache\r\nX-Pingback: https://www.bmwnguyenvantroi.vn/xmlrpc.php\r\nLink: <https://www.bmwnguyenvantroi.vn/wp-json/>; rel=\"https://api.w.org/\"\r\nLink: <https://www.bmwnguyenvantroi.vn/>; rel=shortlink\r\nServer: IpY2By9Q8PXSkwAaFRWhVeczZJgfMu\r\nContent-Encoding: gzip\r\n\r\n');

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

--
-- Dumping data for table `psm_servers_uptime`
--

INSERT INTO `psm_servers_uptime` (`servers_uptime_id`, `server_id`, `date`, `status`, `latency`) VALUES
(1, 1, '2023-10-20 08:52:39', 0, 0.9269760),
(24, 1, '2023-10-20 09:05:43', 0, 10.0058813),
(3, 1, '2023-10-20 08:52:43', 0, 0.3333871),
(23, 3, '2023-10-20 09:03:56', 1, 0.3743858),
(5, 1, '2023-10-20 08:58:57', 0, 0.2994440),
(22, 1, '2023-10-20 09:03:55', 1, 0.4401100),
(7, 1, '2023-10-20 08:59:52', 0, 0.2848902),
(21, 3, '2023-10-20 09:03:42', 1, 0.3754342),
(9, 1, '2023-10-20 09:00:13', 0, 0.4152451),
(20, 1, '2023-10-20 09:03:42', 1, 0.1133480),
(11, 1, '2023-10-20 09:01:06', 1, 0.2315049),
(19, 1, '2023-10-20 09:03:22', 0, 10.0122929),
(13, 1, '2023-10-20 09:01:20', 1, 0.0952640),
(18, 3, '2023-10-20 09:03:00', 0, 10.0201092),
(15, 1, '2023-10-20 09:01:37', 1, 0.0949869),
(17, 1, '2023-10-20 09:02:40', 0, 10.0057716),
(25, 3, '2023-10-20 09:06:03', 0, 10.0135155),
(26, 1, '2023-10-20 09:09:41', 1, 0.3913519),
(27, 3, '2023-10-20 09:09:42', 1, 0.4293470),
(28, 4, '2023-10-20 09:09:44', 1, 1.9550409),
(29, 5, '2023-10-20 09:09:48', 1, 4.6512632),
(30, 6, '2023-10-20 09:09:49', 1, 0.3905900),
(31, 7, '2023-10-20 09:09:49', 1, 0.6654410),
(32, 8, '2023-10-20 09:09:51', 1, 1.2740588),
(33, 1, '2023-10-20 09:12:09', 1, 0.2033129),
(34, 3, '2023-10-20 09:12:09', 1, 0.2072191),
(35, 4, '2023-10-20 09:12:11', 1, 1.9631610),
(36, 5, '2023-10-20 09:12:13', 1, 1.9850278),
(37, 6, '2023-10-20 09:12:13', 1, 0.2143738),
(38, 7, '2023-10-20 09:12:13', 1, 0.2527080),
(39, 8, '2023-10-20 09:12:15', 1, 1.6179650),
(40, 9, '2023-10-20 09:12:16', 1, 1.1576970),
(41, 10, '2023-10-20 09:12:17', 1, 0.3519409),
(42, 11, '2023-10-20 09:12:18', 1, 1.2262220),
(43, 12, '2023-10-20 09:12:38', 0, 10.0209999),
(44, 1, '2023-10-20 09:35:57', 1, 1.6933851),
(45, 3, '2023-10-20 09:35:58', 1, 0.6095641),
(46, 4, '2023-10-20 09:36:00', 1, 2.2423270),
(47, 5, '2023-10-20 09:36:02', 1, 2.2216408),
(48, 6, '2023-10-20 09:36:22', 0, 10.0035343),
(49, 7, '2023-10-20 09:36:42', 0, 10.0016479),
(50, 8, '2023-10-20 09:36:44', 1, 1.4378080),
(51, 9, '2023-10-20 09:36:45', 1, 1.2205710),
(52, 10, '2023-10-20 09:36:45', 1, 0.4073000),
(53, 11, '2023-10-20 09:36:48', 1, 2.0508690),
(54, 1, '2023-10-20 09:42:15', 0, 10.0126638),
(55, 3, '2023-10-20 09:42:36', 0, 10.0110664),
(56, 4, '2023-10-20 09:42:37', 1, 1.9624400),
(57, 5, '2023-10-20 09:42:41', 1, 3.9744620),
(58, 1, '2023-10-20 09:43:33', 1, 0.3545890),
(59, 3, '2023-10-20 09:43:34', 1, 0.1709950),
(60, 4, '2023-10-20 09:43:35', 1, 1.8193610),
(61, 5, '2023-10-20 09:43:38', 1, 2.7047491),
(62, 6, '2023-10-20 09:43:38', 1, 0.2859478),
(63, 7, '2023-10-20 09:43:39', 1, 0.4102631),
(64, 8, '2023-10-20 09:43:41', 1, 1.6935201),
(65, 9, '2023-10-20 09:43:42', 1, 1.2473600),
(66, 10, '2023-10-20 09:43:43', 1, 0.8449569),
(67, 11, '2023-10-20 09:43:44', 1, 0.9140830),
(68, 12, '2023-10-20 09:43:44', 1, 0.4473839),
(69, 13, '2023-10-20 09:43:45', 1, 0.7099259),
(70, 1, '2023-10-20 09:59:35', 0, 10.0180244),
(71, 3, '2023-10-20 09:59:55', 0, 9.9997005),
(72, 4, '2023-10-20 09:59:58', 1, 2.8986239),
(73, 5, '2023-10-20 10:00:01', 1, 2.4924459),
(74, 1, '2023-10-20 10:22:16', 1, 0.4102468),
(75, 3, '2023-10-20 10:22:17', 1, 0.3925269),
(76, 4, '2023-10-20 10:22:19', 1, 1.8606222),
(77, 5, '2023-10-20 10:22:21', 1, 2.2370431),
(78, 6, '2023-10-20 10:22:21', 1, 0.4073830),
(79, 7, '2023-10-20 10:22:22', 1, 0.3529491),
(80, 8, '2023-10-20 10:22:23', 1, 1.3516130),
(81, 9, '2023-10-20 10:22:24', 1, 1.1839290),
(82, 10, '2023-10-20 10:22:25', 1, 0.4770949),
(83, 11, '2023-10-20 10:22:26', 1, 1.0447960),
(84, 12, '2023-10-20 10:22:26', 1, 0.6294231),
(85, 13, '2023-10-20 10:22:27', 1, 0.5575891),
(86, 1, '2023-10-20 10:37:53', 1, 0.2337289),
(87, 3, '2023-10-20 10:37:56', 1, 2.8456249),
(88, 4, '2023-10-20 10:37:58', 1, 1.8298059),
(89, 5, '2023-10-20 10:38:00', 1, 2.1923771),
(90, 6, '2023-10-20 10:38:01', 1, 1.1078329),
(91, 7, '2023-10-20 10:38:02', 1, 1.1754599),
(92, 8, '2023-10-20 10:38:04', 1, 1.4862249),
(93, 9, '2023-10-20 10:38:06', 1, 1.9714880),
(94, 10, '2023-10-20 10:38:06', 1, 0.2747741),
(95, 11, '2023-10-20 10:38:08', 1, 1.7910469),
(96, 12, '2023-10-20 10:38:28', 0, 10.0051107),
(97, 13, '2023-10-20 10:38:48', 0, 10.0177526),
(98, 1, '2023-10-20 10:40:00', 0, 10.0156832),
(99, 3, '2023-10-20 10:40:20', 0, 10.0171595),
(100, 4, '2023-10-20 10:40:23', 1, 2.6701071),
(101, 5, '2023-10-20 10:40:26', 1, 3.0892792),
(102, 1, '2023-10-20 10:45:25', 1, 0.3849251),
(103, 3, '2023-10-20 10:45:26', 1, 0.7078838),
(104, 4, '2023-10-20 10:45:28', 1, 1.9081771),
(105, 5, '2023-10-20 10:45:30', 1, 2.5022020),
(106, 6, '2023-10-20 10:45:31', 1, 0.4169810),
(107, 7, '2023-10-20 10:45:31', 1, 0.3379099),
(108, 8, '2023-10-20 10:45:33', 1, 1.5316429),
(109, 9, '2023-10-20 10:45:34', 1, 1.2002621),
(110, 10, '2023-10-20 10:45:34', 1, 0.3790610),
(111, 11, '2023-10-20 10:45:35', 1, 0.8804021),
(112, 12, '2023-10-20 10:45:36', 1, 0.4723518),
(113, 13, '2023-10-20 10:45:36', 1, 0.6201310);

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
(1, 'admin', '$2y$10$glT1HqsdCFfhb1gCHcmQcevFx0KxmXdTthuozPOxERTAg0lfIdq9G', NULL, NULL, NULL, 10, 'admin', '', '', '', '382807905', '', 'dangnhankl@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `psm_users_preferences`
--

CREATE TABLE `psm_users_preferences` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psm_users_preferences`
--

INSERT INTO `psm_users_preferences` (`user_id`, `key`, `value`) VALUES
(1, 'status_layout', '1');

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
(1, 1);

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
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `psm_servers`
--
ALTER TABLE `psm_servers`
  MODIFY `server_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `psm_servers_history`
--
ALTER TABLE `psm_servers_history`
  MODIFY `servers_history_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psm_servers_uptime`
--
ALTER TABLE `psm_servers_uptime`
  MODIFY `servers_uptime_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `psm_users`
--
ALTER TABLE `psm_users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
