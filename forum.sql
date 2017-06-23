-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2017-06-23 16:24:51
-- 服务器版本： 5.7.18
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, '版主'),
(1, '管理员');

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(3, 1, 20),
(4, 1, 22),
(5, 1, 23),
(6, 1, 24),
(7, 1, 25),
(8, 1, 26),
(9, 1, 27),
(10, 1, 29),
(11, 1, 30),
(1, 1, 32),
(2, 1, 33),
(14, 2, 29),
(15, 2, 30),
(12, 2, 32),
(13, 2, 33);

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add content type', 3, 'add_contenttype'),
(8, 'Can change content type', 3, 'change_contenttype'),
(9, 'Can delete content type', 3, 'delete_contenttype'),
(10, 'Can add session', 4, 'add_session'),
(11, 'Can change session', 4, 'change_session'),
(12, 'Can delete session', 4, 'delete_session'),
(13, 'Can add site', 5, 'add_site'),
(14, 'Can change site', 5, 'change_site'),
(15, 'Can delete site', 5, 'delete_site'),
(16, 'Can add log entry', 6, 'add_logentry'),
(17, 'Can change log entry', 6, 'change_logentry'),
(18, 'Can delete log entry', 6, 'delete_logentry'),
(19, 'Can add user', 7, 'add_forumuser'),
(20, 'Can change user', 7, 'change_forumuser'),
(21, 'Can delete user', 7, 'delete_forumuser'),
(22, 'Can add plane', 8, 'add_plane'),
(23, 'Can change plane', 8, 'change_plane'),
(24, 'Can delete plane', 8, 'delete_plane'),
(25, 'Can add node', 9, 'add_node'),
(26, 'Can change node', 9, 'change_node'),
(27, 'Can delete node', 9, 'delete_node'),
(28, 'Can add topic', 10, 'add_topic'),
(29, 'Can change topic', 10, 'change_topic'),
(30, 'Can delete topic', 10, 'delete_topic'),
(31, 'Can add reply', 11, 'add_reply'),
(32, 'Can change reply', 11, 'change_reply'),
(33, 'Can delete reply', 11, 'delete_reply'),
(34, 'Can add favorite', 12, 'add_favorite'),
(35, 'Can change favorite', 12, 'change_favorite'),
(36, 'Can delete favorite', 12, 'delete_favorite'),
(37, 'Can add notification', 13, 'add_notification'),
(38, 'Can change notification', 13, 'change_notification'),
(39, 'Can delete notification', 13, 'delete_notification'),
(40, 'Can add transaction', 14, 'add_transaction'),
(41, 'Can change transaction', 14, 'change_transaction'),
(42, 'Can delete transaction', 14, 'delete_transaction'),
(43, 'Can add vote', 15, 'add_vote'),
(44, 'Can change vote', 15, 'change_vote'),
(45, 'Can delete vote', 15, 'delete_vote');

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2017-06-23 06:16:04', 1, 8, '1', 'Plane object', 1, 'Added.'),
(2, '2017-06-23 06:17:19', 1, 9, '1', 'Node object', 1, 'Added.'),
(3, '2017-06-23 06:18:14', 1, 8, '1', 'Plane object', 2, '已修改 name 。'),
(4, '2017-06-23 06:19:26', 1, 9, '1', 'Node object', 2, '已修改 slug 。'),
(5, '2017-06-23 06:30:43', 1, 9, '1', 'Node object', 2, '已修改 name 和 slug 。'),
(6, '2017-06-23 06:31:44', 1, 8, '2', 'Plane object', 1, 'Added.'),
(7, '2017-06-23 06:32:05', 1, 9, '2', 'Node object', 1, 'Added.'),
(8, '2017-06-23 06:32:17', 1, 9, '2', 'Node object', 2, '已修改 plane 。'),
(9, '2017-06-23 06:59:49', 1, 7, '6', 'xqnq2011', 3, ''),
(10, '2017-06-23 06:59:49', 1, 7, '5', 'xqnq2010', 3, ''),
(11, '2017-06-23 06:59:49', 1, 7, '4', 'xqnq2009', 3, ''),
(12, '2017-06-23 06:59:49', 1, 7, '3', 'xqnq2008', 3, ''),
(13, '2017-06-23 07:05:49', 1, 7, '8', 'xqnq2009', 3, ''),
(14, '2017-06-23 07:05:49', 1, 7, '7', 'xqnq2008', 3, ''),
(15, '2017-06-23 07:05:49', 1, 7, '2', 'xqnq2007', 3, ''),
(16, '2017-06-23 07:26:50', 1, 7, '12', 'xqnq2010', 3, ''),
(17, '2017-06-23 07:26:50', 1, 7, '11', 'xqnq2009', 3, ''),
(18, '2017-06-23 07:26:50', 1, 7, '10', 'xqnq2008', 3, ''),
(19, '2017-06-23 07:26:50', 1, 7, '9', 'xqnq2007', 3, '');

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'content type', 'contenttypes', 'contenttype'),
(4, 'session', 'sessions', 'session'),
(5, 'site', 'sites', 'site'),
(6, 'log entry', 'admin', 'logentry'),
(7, 'user', 'forum', 'forumuser'),
(8, 'plane', 'forum', 'plane'),
(9, 'node', 'forum', 'node'),
(10, 'topic', 'forum', 'topic'),
(11, 'reply', 'forum', 'reply'),
(12, 'favorite', 'forum', 'favorite'),
(13, 'notification', 'forum', 'notification'),
(14, 'transaction', 'forum', 'transaction'),
(15, 'vote', 'forum', 'vote');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('jwbqiwp1tdra8m9iz08oo8i4pgs9pphx', 'ZTgwMzY4ZjJjMDI2ZWJhMTc2MGExNTMwNzkwNGFjZDFjM2QxMTdiNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFkOTE2ZjIyZDQxNWEwOTBiYjkxNmU4MjEzNDM2MDFkODQwMDMyYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJmb3J1bS5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2017-07-07 02:42:15');

-- --------------------------------------------------------

--
-- 表的结构 `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, '127.0.0.1:8000', '127.0.0.1:8000');

-- --------------------------------------------------------

--
-- 表的结构 `forum_favorite`
--

CREATE TABLE `forum_favorite` (
  `id` int(11) NOT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `involved_type` int(11) DEFAULT NULL,
  `involved_topic_id` int(11) DEFAULT NULL,
  `involved_reply_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `forum_forumuser`
--

CREATE TABLE `forum_forumuser` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `signature` varchar(500) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `reputation` int(11) DEFAULT NULL,
  `self_intro` varchar(500) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `github` varchar(200) DEFAULT NULL,
  `douban` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `forum_forumuser`
--

INSERT INTO `forum_forumuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nickname`, `avatar`, `signature`, `location`, `website`, `company`, `role`, `balance`, `reputation`, `self_intro`, `updated`, `twitter`, `github`, `douban`) VALUES
(1, 'pbkdf2_sha256$24000$4k1OSlXACAON$Mga9R5K0VOJua4QsVFinuyLUSDfEzPwa3kSNwzPbVXg=', '2017-06-23 07:26:40', 1, 'admin', '', '', 'admin@forum.com', 1, 1, '2015-01-24 08:10:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(13, 'pbkdf2_sha256$24000$HBxpjyB7xVRn$lQ/hm1XzNcRW8YaO7iG5I934EJg2nikm0rKz+nn8/bQ=', '2017-06-23 08:55:36', 0, 'xqnq2007', '', '', 'xqnq2007@163.com', 0, 1, '2017-06-23 07:27:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'pbkdf2_sha256$24000$jTEnV8EwDywd$AlP2Ax2k84djMtEOE5ZGEID5irLtE4DwlW608uV35pc=', NULL, 0, 'w491325225', '', '', '491325225@qq.com', 0, 1, '2017-06-23 14:16:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `forum_forumuser_groups`
--

CREATE TABLE `forum_forumuser_groups` (
  `id` int(11) NOT NULL,
  `forumuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `forum_forumuser_user_permissions`
--

CREATE TABLE `forum_forumuser_user_permissions` (
  `id` int(11) NOT NULL,
  `forumuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `forum_node`
--

CREATE TABLE `forum_node` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `introduction` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `plane_id` int(11) DEFAULT NULL,
  `topic_count` int(11) DEFAULT NULL,
  `custom_style` text,
  `limit_reputation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `forum_node`
--

INSERT INTO `forum_node` (`id`, `name`, `slug`, `thumb`, `introduction`, `created`, `updated`, `plane_id`, `topic_count`, `custom_style`, `limit_reputation`) VALUES
(1, '语音识别', 'yuyin', '', '', '2017-06-23 06:17:07', NULL, 1, NULL, '', NULL),
(2, '机器人', 'robot', '', '', '2017-06-23 06:31:54', NULL, 2, NULL, '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `forum_notification`
--

CREATE TABLE `forum_notification` (
  `id` int(11) NOT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  `involved_type` int(11) DEFAULT NULL,
  `involved_user_id` int(11) DEFAULT NULL,
  `involved_topic_id` int(11) DEFAULT NULL,
  `involved_reply_id` int(11) DEFAULT NULL,
  `trigger_user_id` int(11) DEFAULT NULL,
  `occurrence_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `forum_notification`
--

INSERT INTO `forum_notification` (`id`, `content`, `status`, `involved_type`, `involved_user_id`, `involved_topic_id`, `involved_reply_id`, `trigger_user_id`, `occurrence_time`) VALUES
(1, '不错啊', 0, 1, 1, 1, NULL, 13, '2017-06-23 07:46:21');

-- --------------------------------------------------------

--
-- 表的结构 `forum_plane`
--

CREATE TABLE `forum_plane` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `forum_plane`
--

INSERT INTO `forum_plane` (`id`, `name`, `created`, `updated`) VALUES
(1, 'NLP', '2017-06-23 06:14:58', NULL),
(2, '智能硬件', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `forum_reply`
--

CREATE TABLE `forum_reply` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `content` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `up_vote` int(11) DEFAULT NULL,
  `down_vote` int(11) DEFAULT NULL,
  `last_touched` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `forum_reply`
--

INSERT INTO `forum_reply` (`id`, `topic_id`, `author_id`, `content`, `created`, `updated`, `up_vote`, `down_vote`, `last_touched`) VALUES
(1, 1, 13, '不错啊', '2017-06-23 07:46:21', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `forum_topic`
--

CREATE TABLE `forum_topic` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `reply_count` int(11) DEFAULT NULL,
  `last_replied_by_id` int(11) DEFAULT NULL,
  `last_replied_time` datetime DEFAULT NULL,
  `up_vote` int(11) DEFAULT NULL,
  `down_vote` int(11) DEFAULT NULL,
  `last_touched` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `forum_topic`
--

INSERT INTO `forum_topic` (`id`, `title`, `content`, `status`, `hits`, `created`, `updated`, `node_id`, `author_id`, `reply_count`, `last_replied_by_id`, `last_replied_time`, `up_vote`, `down_vote`, `last_touched`) VALUES
(1, 'Sphero推出能聊天互动的「Q版蜘蛛人」机器人', '曾经发表过星际大战机器人BB-8的知名玩具商Sphero，近日推出以漫威（Marvel）超级英雄蜘蛛人外形打造的新产品，玩家只要按下胸前的蜘蛛，就能与这台「Q版蜘蛛人」进行对话，切换到「守卫模式」时，还可对入侵者发出警告；这款能与人互动的「Q版蜘蛛人」，每台售价约新台币5,680 元。\r\n\r\n　　Sphero与Marvel一起开发这款可以聊天互动的蜘蛛人，具有大大的头，造型相当可爱，主要是针对8岁以上的儿童，身长大约22公分高，液晶眼睛可显示多种不同的动画。值得一提的是，最有趣的功能就是只要按下位于胸部上的蜘蛛符号标志按钮，就能启动内建的语音识别功能。\r\n \r\n　　根据《tech chrunch》网站报导，蜘蛛人能谈论随机的话题，如学校或约会。正如Sphero联合创始人兼软体架构师Adam Wilson表示，「蜘蛛人玩具是个说故事者」，它会描述冒险故事给孩子听，并要求他们参与关键时刻。\r\n \r\n　　蜘蛛人眼睛上有LCD可以切换的眨眼动画，身上具备麦克风、扬声器和加速度计，除了会很热情地回应和评论，还能够假装与它战斗。此外，甚至还有一个红外线感测器，让蜘蛛人切换到「守卫模式」，会自动警告任何进入主人卧室的入侵者。\r\n \r\n　　玩家可以问蜘蛛人一系列的问题，但由于所有内容皆为预先录制在APP中，因此无法有问必答，尽管如此，它还是可以说上100个笑话，还有25个互动故事，以及15个游戏可以玩。\r\n \r\n　　蜘蛛人身上还有加速度器可以感应震动的模式，他会针对不同状态并且回应适合的话，可以针对「摇晃」、「反转」等动作回应。例如把它的头转下时，它会说出觉得颠倒的状态，或是要使用者不要过度摇晃它，但美中不足的是，机器人目前仅只能使用英文作为互动对话的语言。\r\n \r\n　　蜘蛛人能透过蓝牙连接到iOS或Android应用系统上，可以任意切换模式，并更改音量。此外可透过APP操作，内建喇叭、胸前感应器，还可另外当闹钟，据说充电时间超过2小时，一开始启动时需要连接Wi-Fi才能接收更新内容。', NULL, 6, '2017-06-23 06:35:38', '2017-06-23 06:35:57', 2, 1, 1, 13, '2017-06-23 07:46:21', NULL, NULL, '2017-06-23 07:46:21');

-- --------------------------------------------------------

--
-- 表的结构 `forum_transaction`
--

CREATE TABLE `forum_transaction` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `reward` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `current_balance` int(11) DEFAULT NULL,
  `involved_user_id` int(11) DEFAULT NULL,
  `involved_topic_id` int(11) DEFAULT NULL,
  `involved_reply_id` int(11) DEFAULT NULL,
  `occurrence_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `forum_vote`
--

CREATE TABLE `forum_vote` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `involved_type` int(11) DEFAULT NULL,
  `involved_user_id` int(11) DEFAULT NULL,
  `involved_topic_id` int(11) DEFAULT NULL,
  `involved_reply_id` int(11) DEFAULT NULL,
  `trigger_user_id` int(11) DEFAULT NULL,
  `occurrence_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_5f412f9a` (`group_id`),
  ADD KEY `auth_group_permissions_83d7f98b` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_37ef4eb4` (`content_type_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_6340c63c` (`user_id`),
  ADD KEY `django_admin_log_37ef4eb4` (`content_type_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_label` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_b7b81f0c` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_favorite`
--
ALTER TABLE `forum_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_favorite_7cdabad6` (`owner_user_id`),
  ADD KEY `forum_favorite_a12f20f1` (`involved_topic_id`),
  ADD KEY `forum_favorite_99093a1e` (`involved_reply_id`);

--
-- Indexes for table `forum_forumuser`
--
ALTER TABLE `forum_forumuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `forum_forumuser_groups`
--
ALTER TABLE `forum_forumuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forumuser_id` (`forumuser_id`,`group_id`),
  ADD KEY `forum_forumuser_groups_4728ad57` (`forumuser_id`),
  ADD KEY `forum_forumuser_groups_5f412f9a` (`group_id`);

--
-- Indexes for table `forum_forumuser_user_permissions`
--
ALTER TABLE `forum_forumuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forumuser_id` (`forumuser_id`,`permission_id`),
  ADD KEY `forum_forumuser_user_permissions_4728ad57` (`forumuser_id`),
  ADD KEY `forum_forumuser_user_permissions_83d7f98b` (`permission_id`);

--
-- Indexes for table `forum_node`
--
ALTER TABLE `forum_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_node_05110e07` (`plane_id`);

--
-- Indexes for table `forum_notification`
--
ALTER TABLE `forum_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_notification_95fdbe29` (`involved_user_id`),
  ADD KEY `forum_notification_a12f20f1` (`involved_topic_id`),
  ADD KEY `forum_notification_99093a1e` (`involved_reply_id`),
  ADD KEY `forum_notification_431bdeb9` (`trigger_user_id`);

--
-- Indexes for table `forum_plane`
--
ALTER TABLE `forum_plane`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_reply`
--
ALTER TABLE `forum_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_reply_76f18ad3` (`topic_id`),
  ADD KEY `forum_reply_e969df21` (`author_id`);

--
-- Indexes for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_e453c5c5` (`node_id`),
  ADD KEY `forum_topic_e969df21` (`author_id`),
  ADD KEY `forum_topic_67b51778` (`last_replied_by_id`);

--
-- Indexes for table `forum_transaction`
--
ALTER TABLE `forum_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_transaction_6340c63c` (`user_id`),
  ADD KEY `forum_transaction_95fdbe29` (`involved_user_id`),
  ADD KEY `forum_transaction_a12f20f1` (`involved_topic_id`),
  ADD KEY `forum_transaction_99093a1e` (`involved_reply_id`);

--
-- Indexes for table `forum_vote`
--
ALTER TABLE `forum_vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_vote_95fdbe29` (`involved_user_id`),
  ADD KEY `forum_vote_a12f20f1` (`involved_topic_id`),
  ADD KEY `forum_vote_99093a1e` (`involved_reply_id`),
  ADD KEY `forum_vote_431bdeb9` (`trigger_user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- 使用表AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `forum_favorite`
--
ALTER TABLE `forum_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `forum_forumuser`
--
ALTER TABLE `forum_forumuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `forum_forumuser_groups`
--
ALTER TABLE `forum_forumuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `forum_forumuser_user_permissions`
--
ALTER TABLE `forum_forumuser_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `forum_node`
--
ALTER TABLE `forum_node`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `forum_notification`
--
ALTER TABLE `forum_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `forum_plane`
--
ALTER TABLE `forum_plane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `forum_reply`
--
ALTER TABLE `forum_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `forum_transaction`
--
ALTER TABLE `forum_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `forum_vote`
--
ALTER TABLE `forum_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_6c68e238` FOREIGN KEY (`user_id`) REFERENCES `forum_forumuser` (`id`);

--
-- 限制表 `forum_favorite`
--
ALTER TABLE `forum_favorite`
  ADD CONSTRAINT `involved_reply_id_refs_id_db861f67` FOREIGN KEY (`involved_reply_id`) REFERENCES `forum_reply` (`id`),
  ADD CONSTRAINT `involved_topic_id_refs_id_80406b01` FOREIGN KEY (`involved_topic_id`) REFERENCES `forum_topic` (`id`),
  ADD CONSTRAINT `owner_user_id_refs_id_78db67eb` FOREIGN KEY (`owner_user_id`) REFERENCES `forum_forumuser` (`id`);

--
-- 限制表 `forum_forumuser_groups`
--
ALTER TABLE `forum_forumuser_groups`
  ADD CONSTRAINT `forumuser_id_refs_id_822c2557` FOREIGN KEY (`forumuser_id`) REFERENCES `forum_forumuser` (`id`),
  ADD CONSTRAINT `group_id_refs_id_4e7ca183` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `forum_forumuser_user_permissions`
--
ALTER TABLE `forum_forumuser_user_permissions`
  ADD CONSTRAINT `forumuser_id_refs_id_69df7695` FOREIGN KEY (`forumuser_id`) REFERENCES `forum_forumuser` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_70e54fc3` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `forum_node`
--
ALTER TABLE `forum_node`
  ADD CONSTRAINT `plane_id_refs_id_550721f0` FOREIGN KEY (`plane_id`) REFERENCES `forum_plane` (`id`);

--
-- 限制表 `forum_notification`
--
ALTER TABLE `forum_notification`
  ADD CONSTRAINT `involved_reply_id_refs_id_9bd6430b` FOREIGN KEY (`involved_reply_id`) REFERENCES `forum_reply` (`id`),
  ADD CONSTRAINT `involved_topic_id_refs_id_702d1de8` FOREIGN KEY (`involved_topic_id`) REFERENCES `forum_topic` (`id`),
  ADD CONSTRAINT `involved_user_id_refs_id_e2f3fda9` FOREIGN KEY (`involved_user_id`) REFERENCES `forum_forumuser` (`id`),
  ADD CONSTRAINT `trigger_user_id_refs_id_e2f3fda9` FOREIGN KEY (`trigger_user_id`) REFERENCES `forum_forumuser` (`id`);

--
-- 限制表 `forum_reply`
--
ALTER TABLE `forum_reply`
  ADD CONSTRAINT `author_id_refs_id_4945e1fe` FOREIGN KEY (`author_id`) REFERENCES `forum_forumuser` (`id`),
  ADD CONSTRAINT `topic_id_refs_id_92c2aa5d` FOREIGN KEY (`topic_id`) REFERENCES `forum_topic` (`id`);

--
-- 限制表 `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD CONSTRAINT `author_id_refs_id_524c87d9` FOREIGN KEY (`author_id`) REFERENCES `forum_forumuser` (`id`),
  ADD CONSTRAINT `last_replied_by_id_refs_id_524c87d9` FOREIGN KEY (`last_replied_by_id`) REFERENCES `forum_forumuser` (`id`),
  ADD CONSTRAINT `node_id_refs_id_5d0660c1` FOREIGN KEY (`node_id`) REFERENCES `forum_node` (`id`);

--
-- 限制表 `forum_transaction`
--
ALTER TABLE `forum_transaction`
  ADD CONSTRAINT `involved_reply_id_refs_id_4b659a2b` FOREIGN KEY (`involved_reply_id`) REFERENCES `forum_reply` (`id`),
  ADD CONSTRAINT `involved_topic_id_refs_id_49e3102d` FOREIGN KEY (`involved_topic_id`) REFERENCES `forum_topic` (`id`),
  ADD CONSTRAINT `involved_user_id_refs_id_b0c88a45` FOREIGN KEY (`involved_user_id`) REFERENCES `forum_forumuser` (`id`),
  ADD CONSTRAINT `user_id_refs_id_b0c88a45` FOREIGN KEY (`user_id`) REFERENCES `forum_forumuser` (`id`);

--
-- 限制表 `forum_vote`
--
ALTER TABLE `forum_vote`
  ADD CONSTRAINT `involved_reply_id_refs_id_83742c71` FOREIGN KEY (`involved_reply_id`) REFERENCES `forum_reply` (`id`),
  ADD CONSTRAINT `involved_topic_id_refs_id_db1cceb1` FOREIGN KEY (`involved_topic_id`) REFERENCES `forum_topic` (`id`),
  ADD CONSTRAINT `involved_user_id_refs_id_7a43045b` FOREIGN KEY (`involved_user_id`) REFERENCES `forum_forumuser` (`id`),
  ADD CONSTRAINT `trigger_user_id_refs_id_7a43045b` FOREIGN KEY (`trigger_user_id`) REFERENCES `forum_forumuser` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
