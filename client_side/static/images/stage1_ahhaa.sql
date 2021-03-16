-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2021 at 02:49 PM
-- Server version: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stage1_ahhaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact us', 7, 'add_contactus'),
(26, 'Can change contact us', 7, 'change_contactus'),
(27, 'Can delete contact us', 7, 'delete_contactus'),
(28, 'Can view contact us', 7, 'view_contactus'),
(29, 'Can add subscription', 8, 'add_subscription'),
(30, 'Can change subscription', 8, 'change_subscription'),
(31, 'Can delete subscription', 8, 'delete_subscription'),
(32, 'Can view subscription', 8, 'view_subscription'),
(33, 'Can add track', 9, 'add_track'),
(34, 'Can change track', 9, 'change_track'),
(35, 'Can delete track', 9, 'delete_track'),
(36, 'Can view track', 9, 'view_track'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add user track', 11, 'add_usertrack'),
(42, 'Can change user track', 11, 'change_usertrack'),
(43, 'Can delete user track', 11, 'delete_usertrack'),
(44, 'Can view user track', 11, 'view_usertrack'),
(45, 'Can add user subscription', 12, 'add_usersubscription'),
(46, 'Can change user subscription', 12, 'change_usersubscription'),
(47, 'Can delete user subscription', 12, 'delete_usersubscription'),
(48, 'Can view user subscription', 12, 'view_usersubscription'),
(49, 'Can add user insight', 13, 'add_userinsight'),
(50, 'Can change user insight', 13, 'change_userinsight'),
(51, 'Can delete user insight', 13, 'delete_userinsight'),
(52, 'Can view user insight', 13, 'view_userinsight'),
(53, 'Can add user fav track', 14, 'add_userfavtrack'),
(54, 'Can change user fav track', 14, 'change_userfavtrack'),
(55, 'Can delete user fav track', 14, 'delete_userfavtrack'),
(56, 'Can view user fav track', 14, 'view_userfavtrack'),
(57, 'Can add user trac activity', 15, 'add_usertracactivity'),
(58, 'Can change user trac activity', 15, 'change_usertracactivity'),
(59, 'Can delete user trac activity', 15, 'delete_usertracactivity'),
(60, 'Can view user trac activity', 15, 'view_usertracactivity'),
(61, 'Can add user track activity', 16, 'add_usertrackactivity'),
(62, 'Can change user track activity', 16, 'change_usertrackactivity'),
(63, 'Can delete user track activity', 16, 'delete_usertrackactivity'),
(64, 'Can view user track activity', 16, 'view_usertrackactivity');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contactUs`
--

CREATE TABLE `contactUs` (
  `contactUsID` int(11) NOT NULL,
  `contactUsFname` varchar(50) NOT NULL,
  `contactUsLname` varchar(50) NOT NULL,
  `contactUsEmail` varchar(50) NOT NULL,
  `contactUsMobile` varchar(50) NOT NULL,
  `contactUsSubject` varchar(50) NOT NULL,
  `contactUsMessage` varchar(50) NOT NULL,
  `contactUsCreatedOn` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactUs`
--

INSERT INTO `contactUs` (`contactUsID`, `contactUsFname`, `contactUsLname`, `contactUsEmail`, `contactUsMobile`, `contactUsSubject`, `contactUsMessage`, `contactUsCreatedOn`) VALUES
(1, 'sdfds', 'sdfsd', 'sdfsdf', 'sdfdsf', 'sdfdsf', 'sdfdsfs', '2021-01-15 00:00:00.000000'),
(2, 'sdfds', 'sdfsd', 'sdfsdf', 'sdfdsf', 'sdfdsf', 'sdfdsfs', '2021-01-15 08:27:55.972192');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'client_side', 'contactus'),
(8, 'client_side', 'subscription'),
(9, 'client_side', 'track'),
(10, 'client_side', 'user'),
(14, 'client_side', 'userfavtrack'),
(13, 'client_side', 'userinsight'),
(12, 'client_side', 'usersubscription'),
(15, 'client_side', 'usertracactivity'),
(11, 'client_side', 'usertrack'),
(16, 'client_side', 'usertrackactivity'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-15 05:15:41.601738'),
(2, 'auth', '0001_initial', '2021-01-15 05:15:45.423231'),
(3, 'admin', '0001_initial', '2021-01-15 05:16:01.577686'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-15 05:16:05.561891'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-15 05:16:05.636128'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-15 05:16:07.772095'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-15 05:16:09.847770'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-15 05:16:09.947636'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-15 05:16:10.062932'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-15 05:16:11.319386'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-15 05:16:11.457825'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-15 05:16:11.594154'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-15 05:16:13.380513'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-15 05:16:14.891385'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-15 05:16:15.171943'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-15 05:16:15.284192'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-15 05:16:17.015940'),
(18, 'client_side', '0001_initial', '2021-01-15 05:16:21.313037'),
(19, 'sessions', '0001_initial', '2021-01-15 05:16:29.519524'),
(20, 'client_side', '0002_auto_20210115_1211', '2021-01-15 06:42:16.688684'),
(21, 'client_side', '0003_auto_20210115_1357', '2021-01-15 08:27:34.584421'),
(22, 'client_side', '0004_auto_20210115_1412', '2021-01-15 08:42:41.543562'),
(23, 'client_side', '0005_auto_20210115_1523', '2021-01-15 09:53:24.729264'),
(24, 'client_side', '0006_auto_20210115_1737', '2021-01-15 12:08:07.428953'),
(25, 'client_side', '0007_auto_20210116_1344', '2021-01-16 08:14:07.216881'),
(26, 'client_side', '0008_auto_20210118_0920', '2021-01-18 03:51:07.941498'),
(27, 'client_side', '0009_auto_20210118_1007', '2021-01-18 04:37:30.838593'),
(28, 'client_side', '0010_auto_20210118_1645', '2021-01-18 11:15:23.934926'),
(29, 'client_side', '0011_auto_20210118_1709', '2021-01-18 11:39:59.001804'),
(30, 'client_side', '0012_auto_20210118_1731', '2021-01-18 12:02:04.118157');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `insight`
--

CREATE TABLE `insight` (
  `insightID` int(11) NOT NULL,
  `userInsight` varchar(100) NOT NULL,
  `userInsightCreatedOn` datetime(6) NOT NULL,
  `userInsightUpdatedOn` datetime(6) NOT NULL,
  `userID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `insight`
--

INSERT INTO `insight` (`insightID`, `userInsight`, `userInsightCreatedOn`, `userInsightUpdatedOn`, `userID_id`) VALUES
(1, 'i fell really good', '2021-01-15 09:27:10.389444', '2021-01-15 09:27:10.389468', 1),
(2, 'Angry', '2021-01-15 09:27:10.389444', '2021-01-15 09:27:10.389468', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionPackage`
--

CREATE TABLE `subscriptionPackage` (
  `subscriptionID` int(11) NOT NULL,
  `subscriptionName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriptionPackage`
--

INSERT INTO `subscriptionPackage` (`subscriptionID`, `subscriptionName`) VALUES
(1, 'adasdsad');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `trackID` int(11) NOT NULL,
  `trackName` varchar(50) NOT NULL,
  `trackDescription` varchar(100) NOT NULL,
  `trackStatus` int(11) NOT NULL,
  `trackType` int(11) NOT NULL,
  `trackURL` varchar(300) NOT NULL,
  `trackImageURL` varchar(300) NOT NULL,
  `trackFormat` int(11) NOT NULL,
  `trackCreatedOn` date NOT NULL,
  `trackUpdatedOn` date NOT NULL,
  `trackCreatedBy` varchar(100) NOT NULL,
  `trackUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`trackID`, `trackName`, `trackDescription`, `trackStatus`, `trackType`, `trackURL`, `trackImageURL`, `trackFormat`, `trackCreatedOn`, `trackUpdatedOn`, `trackCreatedBy`, `trackUpdatedBy`) VALUES
(1, 'afaadf', 'asdfasd', 0, 1, 'sadfasf', 'sadfasdf', 1, '2021-01-15', '2021-01-15', '', ''),
(2, 'Blessed by heart', 'dsfgdfgdsg', 0, 1, 'dsfgsdfgdfs gsd s gs gdf', 'https://cdn.diabetesdaily.com/wp-content/blogs.dir/21/files/2017/10/heart-in-hands.jpg', 1, '2021-01-15', '2021-01-15', '', ''),
(3, 'Inner peace', 'dsfgdfgdsg', 0, 1, 'dsfgsdfgdfs gsd s gs gdf', 'https://cdn.diabetesdaily.com/wp-content/blogs.dir/21/files/2017/10/heart-in-hands.jpg', 1, '2021-01-15', '2021-01-15', '', ''),
(4, 'Soulful', 'dsfgdfgdsg', 0, 1, 'dsfgsdfgdfs gsd s gs gdf', 'https://cdn.diabetesdaily.com/wp-content/blogs.dir/21/files/2017/10/heart-in-hands.jpg', 1, '2021-01-15', '2021-01-15', '', ''),
(5, 'Business Mind', 'dsfgdfgdsg', 0, 1, 'dsfgsdfgdfs gsd s gs gdf', 'https://cdn.diabetesdaily.com/wp-content/blogs.dir/21/files/2017/10/heart-in-hands.jpg', 1, '2021-01-15', '2021-01-15', '', ''),
(6, 'Confidence', 'dsfgdfgdsg', 0, 1, 'dsfgsdfgdfs gsd s gs gdf', 'https://cdn.diabetesdaily.com/wp-content/blogs.dir/21/files/2017/10/heart-in-hands.jpg', 1, '2021-01-15', '2021-01-15', '', ''),
(7, 'Darwin spece', 'dsfgdfgdsg', 0, 1, 'dsfgsdfgdfs gsd s gs gdf', 'https://cdn.diabetesdaily.com/wp-content/blogs.dir/21/files/2017/10/heart-in-hands.jpg', 1, '2021-01-15', '2021-01-15', '', ''),
(8, 'You can do it', 'dsfgdfgdsg', 0, 1, 'dsfgsdfgdfs gsd s gs gdf', 'https://cdn.diabetesdaily.com/wp-content/blogs.dir/21/files/2017/10/heart-in-hands.jpg', 1, '2021-01-15', '2021-01-15', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userFname` varchar(50) NOT NULL,
  `userLname` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userMobile` varchar(50) NOT NULL,
  `userProviderId` varchar(50) NOT NULL,
  `userProviderName` varchar(50) NOT NULL,
  `userProfilePhoto` varchar(50) NOT NULL,
  `userPassword` varchar(250) NOT NULL,
  `userResetLink` varchar(50) NOT NULL,
  `userStatus` int(11) NOT NULL,
  `userType` int(11) DEFAULT NULL,
  `userCreatedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userFname`, `userLname`, `userEmail`, `userMobile`, `userProviderId`, `userProviderName`, `userProfilePhoto`, `userPassword`, `userResetLink`, `userStatus`, `userType`, `userCreatedBy`) VALUES
(1, 'asdf', 'asdfs', 'asdf', 'asdfasdf', 'NULL', 'NULL', 'asdfasdf', '', 'NULL', 0, 1, 'self');

-- --------------------------------------------------------

--
-- Table structure for table `userFavTrack`
--

CREATE TABLE `userFavTrack` (
  `userFavTrackID` int(11) NOT NULL,
  `trackID_id` int(11) NOT NULL,
  `userID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userFavTrack`
--

INSERT INTO `userFavTrack` (`userFavTrackID`, `trackID_id`, `userID_id`) VALUES
(2, 3, 1),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userSubTrack`
--

CREATE TABLE `userSubTrack` (
  `userSubID` int(11) NOT NULL,
  `subscribedOn` datetime(6) NOT NULL,
  `subscribeUpdatedOn` datetime(6) NOT NULL,
  `subscriptionID_id` int(11) NOT NULL,
  `userID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userSubTrack`
--

INSERT INTO `userSubTrack` (`userSubID`, `subscribedOn`, `subscribeUpdatedOn`, `subscriptionID_id`, `userID_id`) VALUES
(1, '2021-01-15 09:44:40.661047', '2021-01-15 09:44:40.661079', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userTrack`
--

CREATE TABLE `userTrack` (
  `userTrackID` int(11) NOT NULL,
  `trackID_id` int(11) NOT NULL,
  `userID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userTrack`
--

INSERT INTO `userTrack` (`userTrackID`, `trackID_id`, `userID_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 2, 1),
(5, 3, 1),
(6, 4, 1),
(7, 5, 1),
(8, 1, 1),
(9, 2, 1),
(10, 2, 1),
(11, 2, 1),
(12, 2, 1),
(13, 3, 1),
(14, 5, 1),
(15, 5, 1),
(16, 5, 1),
(17, 4, 1),
(18, 4, 1),
(19, 4, 1),
(20, 2, 1),
(21, 1, 1),
(22, 3, 1),
(23, 7, 1),
(24, 3, 1),
(25, 2, 1),
(26, 5, 1),
(27, 4, 1),
(28, 4, 1),
(29, 1, 1),
(30, 5, 1),
(31, 5, 1),
(32, 2, 1),
(33, 1, 1),
(34, 7, 1),
(35, 6, 1),
(36, 6, 1),
(37, 7, 1),
(38, 8, 1),
(39, 8, 1),
(40, 8, 1),
(41, 8, 1),
(42, 4, 1),
(43, 6, 1),
(44, 4, 1),
(45, 4, 1),
(46, 4, 1),
(47, 3, 1),
(48, 2, 1),
(49, 2, 1),
(50, 6, 1),
(51, 6, 1),
(52, 1, 1),
(53, 8, 1),
(54, 5, 1),
(55, 3, 1),
(56, 7, 1),
(57, 2, 1),
(58, 6, 1),
(59, 6, 1),
(60, 3, 1),
(61, 4, 1),
(62, 1, 1),
(63, 8, 1),
(64, 2, 1),
(65, 5, 1),
(66, 3, 1),
(67, 2, 1),
(68, 4, 1),
(69, 2, 1),
(70, 5, 1),
(71, 1, 1),
(72, 2, 1),
(73, 2, 1),
(74, 2, 1),
(75, 2, 1),
(76, 3, 1),
(77, 5, 1),
(78, 5, 1),
(79, 5, 1),
(80, 4, 1),
(81, 4, 1),
(82, 4, 1),
(83, 2, 1),
(84, 1, 1),
(85, 3, 1),
(86, 7, 1),
(87, 3, 1),
(88, 2, 1),
(89, 5, 1),
(90, 4, 1),
(91, 4, 1),
(92, 1, 1),
(93, 5, 1),
(94, 5, 1),
(95, 2, 1),
(96, 1, 1),
(97, 7, 1),
(98, 6, 1),
(99, 6, 1),
(100, 7, 1),
(101, 8, 1),
(102, 8, 1),
(103, 8, 1),
(104, 8, 1),
(105, 4, 1),
(106, 6, 1),
(107, 4, 1),
(108, 4, 1),
(109, 4, 1),
(110, 3, 1),
(111, 2, 1),
(112, 2, 1),
(113, 6, 1),
(114, 6, 1),
(115, 1, 1),
(116, 8, 1),
(117, 5, 1),
(118, 3, 1),
(119, 7, 1),
(120, 2, 1),
(121, 6, 1),
(122, 6, 1),
(123, 3, 1),
(124, 4, 1),
(125, 8, 1),
(126, 5, 1),
(127, 2, 1),
(128, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userTrackActivity`
--

CREATE TABLE `userTrackActivity` (
  `userTrackActivityID` int(11) NOT NULL,
  `activityDateTime` datetime(6) NOT NULL,
  `trackPauseTime` varchar(8) NOT NULL,
  `trackStatus` tinyint(1) NOT NULL,
  `trackID_id` int(11) NOT NULL,
  `userID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userTrackActivity`
--

INSERT INTO `userTrackActivity` (`userTrackActivityID`, `activityDateTime`, `trackPauseTime`, `trackStatus`, `trackID_id`, `userID_id`) VALUES
(1, '2021-01-18 12:02:32.629162', '1:23', 0, 1, 1),
(2, '2021-01-18 12:06:31.405353', '1:33', 0, 1, 1),
(3, '2021-01-18 17:16:40.725696', '0:23', 0, 2, 1),
(4, '2021-01-18 17:17:31.443234', '3:23', 0, 2, 1),
(5, '2021-01-18 17:18:08.020876', '3:23', 0, 2, 1);

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `contactUs`
--
ALTER TABLE `contactUs`
  ADD PRIMARY KEY (`contactUsID`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `insight`
--
ALTER TABLE `insight`
  ADD PRIMARY KEY (`insightID`),
  ADD KEY `insight_userID_id_b6490584_fk_user_userID` (`userID_id`);

--
-- Indexes for table `subscriptionPackage`
--
ALTER TABLE `subscriptionPackage`
  ADD PRIMARY KEY (`subscriptionID`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`trackID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `userFavTrack`
--
ALTER TABLE `userFavTrack`
  ADD PRIMARY KEY (`userFavTrackID`),
  ADD KEY `userFavTrack_trackID_id_e00f2601_fk_track_trackID` (`trackID_id`),
  ADD KEY `userFavTrack_userID_id_5399ec9d_fk_user_userID` (`userID_id`);

--
-- Indexes for table `userSubTrack`
--
ALTER TABLE `userSubTrack`
  ADD PRIMARY KEY (`userSubID`),
  ADD KEY `userSubTrack_subscriptionID_id_860d5335_fk_subscript` (`subscriptionID_id`),
  ADD KEY `userSubTrack_userID_id_ba43f4d1_fk_user_userID` (`userID_id`);

--
-- Indexes for table `userTrack`
--
ALTER TABLE `userTrack`
  ADD PRIMARY KEY (`userTrackID`);

--
-- Indexes for table `userTrackActivity`
--
ALTER TABLE `userTrackActivity`
  ADD PRIMARY KEY (`userTrackActivityID`),
  ADD KEY `userTrackActivity_trackID_id_6aa70365_fk_track_trackID` (`trackID_id`),
  ADD KEY `userTrackActivity_userID_id_4f17b1ba_fk_user_userID` (`userID_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactUs`
--
ALTER TABLE `contactUs`
  MODIFY `contactUsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `insight`
--
ALTER TABLE `insight`
  MODIFY `insightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptionPackage`
--
ALTER TABLE `subscriptionPackage`
  MODIFY `subscriptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `trackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userFavTrack`
--
ALTER TABLE `userFavTrack`
  MODIFY `userFavTrackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userSubTrack`
--
ALTER TABLE `userSubTrack`
  MODIFY `userSubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userTrack`
--
ALTER TABLE `userTrack`
  MODIFY `userTrackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `userTrackActivity`
--
ALTER TABLE `userTrackActivity`
  MODIFY `userTrackActivityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `insight`
--
ALTER TABLE `insight`
  ADD CONSTRAINT `insight_userID_id_b6490584_fk_user_userID` FOREIGN KEY (`userID_id`) REFERENCES `user` (`userID`);

--
-- Constraints for table `userFavTrack`
--
ALTER TABLE `userFavTrack`
  ADD CONSTRAINT `userFavTrack_trackID_id_e00f2601_fk_track_trackID` FOREIGN KEY (`trackID_id`) REFERENCES `track` (`trackID`),
  ADD CONSTRAINT `userFavTrack_userID_id_5399ec9d_fk_user_userID` FOREIGN KEY (`userID_id`) REFERENCES `user` (`userID`);

--
-- Constraints for table `userSubTrack`
--
ALTER TABLE `userSubTrack`
  ADD CONSTRAINT `userSubTrack_subscriptionID_id_860d5335_fk_subscript` FOREIGN KEY (`subscriptionID_id`) REFERENCES `subscriptionPackage` (`subscriptionID`),
  ADD CONSTRAINT `userSubTrack_userID_id_ba43f4d1_fk_user_userID` FOREIGN KEY (`userID_id`) REFERENCES `user` (`userID`);

--
-- Constraints for table `userTrack`
--
ALTER TABLE `userTrack`
  ADD CONSTRAINT `userTrack_trackID_id_bb46b238_fk_track_trackID` FOREIGN KEY (`trackID_id`) REFERENCES `track` (`trackID`),
  ADD CONSTRAINT `userTrack_userID_id_0d026bdf_fk_user_userID` FOREIGN KEY (`userID_id`) REFERENCES `user` (`userID`);

--
-- Constraints for table `userTrackActivity`
--
ALTER TABLE `userTrackActivity`
  ADD CONSTRAINT `userTrackActivity_trackID_id_6aa70365_fk_track_trackID` FOREIGN KEY (`trackID_id`) REFERENCES `track` (`trackID`),
  ADD CONSTRAINT `userTrackActivity_userID_id_4f17b1ba_fk_user_userID` FOREIGN KEY (`userID_id`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
