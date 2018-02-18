-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2018 at 05:09 PM
-- Server version: 5.7.21-0ubuntu0.17.10.1
-- PHP Version: 7.1.11-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`name`, `password`) VALUES
('yogesh', '123456'),
('tsyogesh@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `altered_time`
--

CREATE TABLE `altered_time` (
  `date` date NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `cadre` enum('T','NT') NOT NULL,
  `mid_time` time DEFAULT NULL,
  `half_wrk` float NOT NULL,
  `full_wrk` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `altered_time`
--

INSERT INTO `altered_time` (`date`, `in_time`, `out_time`, `cadre`, `mid_time`, `half_wrk`, `full_wrk`) VALUES
('2018-02-01', '09:00:00', '17:30:00', 'T', '00:00:00', 0, 0),
('2018-02-01', '08:30:00', '05:30:00', 'NT', '00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CIVIL_entry`
--

CREATE TABLE `CIVIL_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `staff_id` varchar(12) NOT NULL,
  `name` varchar(60) NOT NULL,
  `count` int(1) NOT NULL DEFAULT '0' COMMENT 'If(counter>=3) then p_value--;',
  `late_days` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`staff_id`, `name`, `count`, `late_days`) VALUES
('14IT34', 'Murali ', 1, 1),
('14IT46', 'Yogesh T S', 3, 3),
('14IT47', 'Yogesh 1', 2, 6),
('14it48', 'Yogesh 2', 3, 3),
('14IT49', 'Yogesh 3', 1, 1),
('14IT50', 'Gokul T S', 1, 1),
('IT1223', 'Seema M', 1, 1),
('IT1237', 'Loganathan K', 2, 2),
('ITNT1315', 'Kannan ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `CSE_entry`
--

CREATE TABLE `CSE_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `default_time`
--

CREATE TABLE `default_time` (
  `cadre` enum('T','NT') NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `mid_time` time DEFAULT NULL,
  `half_wrk` float NOT NULL,
  `full_wrk` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Default time for Teaching and Non- teaching staffs';

--
-- Dumping data for table `default_time`
--

INSERT INTO `default_time` (`cadre`, `in_time`, `out_time`, `mid_time`, `half_wrk`, `full_wrk`) VALUES
('T', '10:00:00', '17:30:00', NULL, 0, 0),
('NT', '10:00:00', '17:30:00', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ECE_entry`
--

CREATE TABLE `ECE_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EEE_entry`
--

CREATE TABLE `EEE_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fingerprint_details`
--

CREATE TABLE `fingerprint_details` (
  `name` varchar(50) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(3) NOT NULL COMMENT 'fingerprints are being stored in the scanner using this storeid',
  `finger_name` enum('LEFT_THUMB','RIGHT_THUMB','LEFT_INDEX','RIGHT_INDEX','LEFT_MID','RIGHT_MID') NOT NULL,
  `finger_code` enum('LT','RT','LI','RI','LM','RM') NOT NULL COMMENT 'Abbrevated finger name',
  `finger_print` varchar(2000) NOT NULL,
  `enroll_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fingerprint_details`
--

INSERT INTO `fingerprint_details` (`name`, `staff_id`, `store_id`, `finger_name`, `finger_code`, `finger_print`, `enroll_time`) VALUES
('Yogesh T S', '14IT46', 2, 'LEFT_INDEX', 'LI', 'ef01ffffffff020102030159180000ff06f806f002c000800000000000000000000000000000000000000000000000000000000000000000000000000000000000298c001e5e0f85fe5a155abe3b22d53e5c259d1e32a980de4fbb9f9e670c5b9f3a91c17f2312949f391715bf35ae943f21b4285f1f196b7d48a9877d4a2cdcbd542fddfd4c06675a478756b31b9cd2b8213de8b823c229b8243f91d94e324a8e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002cd0ef01ffffffff080102030155180000fc06f006e002c002000200000000000000000000000000000000000000000000000200000000000000000000000000000000298c6cbe5e0f461e5a155ade5c259d1e4fbca01e658bdbdf3b1181df2212d49f381715bf3da4563f312ac09f35ae53ff2233e87f1d99eb3d48a9877d4a2cdcbd542fddfd40078012488640f04c8697701c1cd2d6460797b14db20a0e24c1a9f200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002db4', '2018-01-30 13:29:33'),
('Yogesh 1', '14IT47', 4, 'LEFT_MID', 'LM', 'ef01ffffffff020102030154130000fffefc0efc06e002800080000000000000000000000000000000000000000000000000000000000000000000000000000000229a295e341eebde293e25fe4222553f0aa3105749a995bf5033171f6eb6deff3bbc0eff58bcda5f163e253f46bc4f7c4b24c37d6536dddd61119a585e1459985cb79cb858379ad9501142f60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026f2ef01ffffffff080102030157140000fffefe0efe06e002c000c00080008000000000000000000000000000000000008000000000000000000000000000000000005f1299fe349c2c5e3f9ed49e2bbc25be2295ea1f4ba2c43f4a27d63f77ad9edf503456bf6cb5df5f473a8fbf183be4ff3bbc0eff583c9adf598d58fc530f835c4fbe073a63b65e7b5c35dd395736dbb90000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e4c', '2018-02-01 18:43:15'),
('Yogesh 2', '14it48', 6, 'LEFT_THUMB', 'LT', 'ef01ffffffff02010203015c280000f87ec03e801e80060002000000000000000000000000000000000000000000000000000000000000000000000000000000006113dcbe2e17d65e3b27171e77a88616703245de3b3656de20b6ac5e2f39959e5b10059f5a1c041f0db4d7df28bf813f59a199fc4d26599c46ac17dc0aaf129c6c391bbc0abaa9dc6c3d05dc4c3d449c0f3daa3c354001fc0e2caafd3cafd71d49c0d91d468f00b2529fc37a6ba39b7a48a8c3da4c0f58932115d5fb1216ac3b2fc197db330c97326e1f0558699fdb79281f56921498ac70271b55ca211f400c00000000000000000000000000000000000000000000000000000000000000000000000000000000455def01ffffffff08010203015d240000f9fef0fee0fec002c002c0028002800200000000000000000000000000000000000000000000000000000000000000000000358a9a7e238fc21e2f1198be411283be49951a5e159b15d610a31696242a165e1f31c0fe1433139e3c3e837e3f42585e2543409e6d9c05df2cb8561f21be14df4e1f9a1c52a31abc6b2b465c31ae573c6aaedbfc5d31c51c2733d5dc61935c325b95c5b2419dc3da432258da5cbc457a60181c3259b69c9255b445535aba1b5960231b760eb82b16311e430e561f04b20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000413d', '2018-02-01 18:58:43'),
('Yogesh 3', '14IT49', 3, 'RIGHT_INDEX', 'RI', 'ef01ffffffff0201020301581b0000fffefffef00ee002c000c00080000000000000000000000000000000000000000000000000000000000000000000000000005d8f027e731d997e4ea8c35e1aaad0fe6130db1e513c1b5e29c367be0da952f75d2943ff40b6c25f58ba07bf2e24aa3c269c2b3d6a2785bd69ab9a7d363e515d36c1ec7d752f9d9a19256ad329a7543b763247db2b992912621a81f61fa556962f97d28e699b996f20a6eb1500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003764ef01ffffffff080102030156180000fffefffef9fee006c006c000c000800080008000000000000000000000000000000000000000000000000000000000000000561d59be2a1de97e4ea8839e5f28c37e6130db1e4335c33e4e9b427f739f9a3f6aa7461f692b5adf59bf9f1f742edddc51bb9a1c763247dd5839889d1e190d72661b57da629c82ba2ac2a81a1c9ba67336c1ec772b1929ae36be11753916128a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000337b', '2018-02-01 19:16:37'),
('Yogesh 3', '14IT49', 3, 'RIGHT_THUMB', 'RT', 'ef01ffffffff020102030159200000fffeff1efe0ef80ef80ee00e0002000000000000000000000000000000000000000000000000000000000000000000000000570d94de613ad6be6b3f983e262ae99f31b96a9f1022289c6aacc1bc712d983c6e39985454bd80bc1723513d3fbe2c9d40c1137d4f0eab5a4012141a4f92abba519aec1a3f20ea1a6838c1d2561655185b132c36291c29f660a1969657a517564c40c0965b952bf14cbf15b7471f137446a2ebf43a9deb924ea440313517aae60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d4cef01ffffffff080102030155230000fffeff1efe1ef81ef81ee01e000200000000000000000000000000000000000000000000000000000000000000000000000025ab693f31b96a9f6ac0585f560d949c521aebfc0fa2a87c6a2c823c70ad98bc6e39989c1723513d3fbe2c9d40c1139d33a395f22da3ead33fa0aa9863a1d73850bdecf8169c2a9340125516469f53f661a4d69661bad6b64c40c0564cbf15d74e8eab34401cec745c37800e43226bf549136bac289c2a32531e15b22b98932b4ea4402f4ca2562c3497aa86000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000465e', '2018-02-02 12:10:51'),
('Gokul T S', '14IT50', 7, 'LEFT_MID', 'LM', 'ef01ffffffff020102030154170000e03e800e80060002000000000000000000000000000000000000000000000000000000000000000000000000000000000000550d973e418fabfe3f16915e6e175b9e379ecefe48224fde52a5121e09268d7e43a8281e082da49e75af9dfe37350a7e503888be2d3a8abe273f8b9e5a89587f5c96857f5b9e591f4e18815240b60a1b4737c9db539917d251ac8bad00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028bbef01ffffffff080102030153220000fffefdfec01ec01e801e801e8006000000000000000080008000800080008000800000000000000000000000000000000000568e177e430f6cfe3e96513e5a1f58de4228e77e36b4ca5e68b94a3e2d3a4afe123b8e56273f8a7e359d8e7f4820101f6ea6c85f712c5e7f69bd9fdf4e1842bc5499993c503888fa45431f9a52afc95b44330b524435a1d25a2e487949380a9040360a3773b69f14753049cf4cbc499557a3484c4e2b11d249baa10c502d0ad35aa91bec59a59b8d0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041fc', '2018-02-02 19:20:19'),
('Murali ', '14IT34', 8, 'LEFT_MID', 'LM', 'ef01ffffffff020102030158120000fc7ee002c00080008000800080008000800080008000800080008000800080008000000000000000000000000000000000005f08079e1b8ac2de400d85fe2d10041e269485de239d877e2424089e4642041e4407047f5d265f9f55a85e9f68ab205f3fb2857f6bb7e2ff1c38073f66931e7c6315c8fc4f3aab5b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002654ef01ffffffff080102030159130000f03ec002c000c000c000c0008000800080008000800080008000800080008000c000000000000000000000000000000000005f8807de1a8ac27e3f8dc59e2d10041e271485fe239d877e2424089e1eb846de464243de4387043f5d265f9f5527de9f68ab205f3f3205bf6bb7e2ff66931e7c6315891c4fbaab3d5236e6b9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a96', '2018-02-05 09:24:00'),
('Seema M', 'IT1223', 9, 'LEFT_MID', 'LM', 'ef01ffffffff02010203013e320000f00ef002e00280008000800080008000800080008000c000c000c000c000c002c00200000000000000000000000000000000759b1efe749fdf3e1a2bce9e3b84117f5b8857ff441190ff67981c1f6a25c83f75379edf3125a51d17a7e73d463409fd308c281a23c268da471d8b3b2a42ec3b60c0deb8218c8e397093c8196d13dbb62c23a49664b061d052c32016270c66d72e0f4e7720104ef1241224d74c15057764ad49912612cef41b13e634561585f421a6e4f46a3ec99420bf11542d96a5f549210ad53cb88c3517a0263366be5e133212e7b020a2109075a5df703ca9cc905c3ec910619fc87144230c7172a85ef13b2dcc516db0c6f161f6ef01ffffffff080102030145310000fc02f000e000c00080008000c000c000c000c000c000c000c000e000e000e002fc06000000000000000000000000000000006c071c7e18a08dfe5c0857ff67985c5f69a587df581b88fc2b24e47c3591e85d3026a55d308c27fa6b931b7a559545fa64b09ffa7094477b2e1665bb619fc87b278c26b94792409752190957453a4ab14f3d4a7741bdcaf72d114dd444bde1f46a3ec854702c9ecf66bedeb536964f125fad88526eae87725daf1ff23fb961b2612988b33ca98c705b3e409040284a713b2dcc5159ae08d15f379f2e3996e7cf3e1f8e8f623687ef563a1d8f3f9c0e4b46a3cacb3c38cb2b489a0ca64ca10b074b1acb450000000064ee', '2018-02-05 13:29:18'),
('Loganathan K', 'IT1237', 10, 'LEFT_INDEX', 'LI', 'ef01ffffffff0201020301561e0000fffeff02fe00f800f000f000e000e000e000c000c000c000c000c000c000c000c00000000000000000000000000000000000738a843e64a317be74a606de42292a1e5ba9c39e362ad1be4dae511e4ab84f1e3a3d663e4d430d965f8d819f438f2c3f6197c31f2b1c2adf4b9c153f2f2212ff2f34501f52b4eb5f4e12ecfc6bab1a1c519015dd729b59fa6f9dd9da6b2f1b586a31c778653298b85a3e4af5633557d2663b9cd057bc0cf0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042f2ef01ffffffff0801020301561e0000fffeff00f800f000e000e000e000e000c000c000c000c000c000c000c000c000c00000000000000000000000000000000000738a843e64a317be74a606be42a92a1e5c29c3de36aa517e4dae511e4ab84efe3a3d663e4d430d96600d819f440eec9f6197c33f2b9c2abf4b9c153f2f22131f2fb4103f52b4eb5f4e12ecfc6bab1a1c519015fd721b5a1a6f9dd9da6b2edb3a5a3ecafb573c0cb86a31c776653298b666bb9c8e5fbcc96f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004386', '2018-02-05 13:56:01'),
('Seema M', 'IT1223', 9, 'LEFT_INDEX', 'LI', 'ef01ffffffff02010203014b280000f80ef802c0008000800000000000000000000000000000000000000000000002000200000000000000000000000000000000261091be4614027e2e17d1be709a5c5e13aca67e1232e67e1db5661e2c3ba77e14bf28be300c2bdf690d1bdf56175a5f4f9fd8df69af5eff62395e5f2a40403f5c425c9f15c36a7f6092861d42a6833d2932651a2cb3e61a59b9de5a5b13db7b2aac0efb2fab4e184d2d4999523a07964fbb5f163ba9cf574db2df771aa84f2f45aa8693382d8e5139b38c8d3735cd6d0e144d0c3b41178d3f3a0886443209a7000000000000000000000000000000000000000000000000000000000000000000000000000000004273ef01ffffffff08010203014c2e0000f806f802c002c002800000000000000000000000000000000000000000008002800200000000000000000000000000000000698bdbde261091be4614027e2e97d1fe709a9c7e0ca8659e1db4e67e13bf68fe6ec2dbde300c2bdf55971a1f4f9fd8df42a6833f69af1edf763808bf40b908ff62395e5f5c425c7f16436a5f6092861d2a406cfd5f9dc5525b13db7b641fdc9321a6a59b1aa84fdb112c66fb2aac4f1b2fab4db82cb3e5d843bf45b84d2d4ad92b3224f9483288365939de76382a4ed41ba50e3545aa86954ab0a1753933ccef10988ef2422c0cf23739d292141ba7303a2c65ce42b289ee00000000000000000000000000000000587c', '2018-02-05 14:06:55'),
('Seema M', 'IT1223', 9, 'RIGHT_INDEX', 'RI', 'ef01ffffffff020102030147250000fffefefef07ee006e002e002e002e000c000800080008000800080008000c000e000000000000000000000000000000000003393aade6698181e6c9bc2be641fd85e1fa2a75e45ae2bde2514289f3b97135f499c2c5f5420415f4728c0bf54ad571f673a479f6ac0083f613e4b7c172966582d21a8d9273a0f592dbb24532e374bf645bb0e5042b769173bba4dd74f3d4b742b43c2943138e7554c3f4e352026e5722934e65232c165522c244ef02d2628106034870e43bd64ca5139c9af3a3ecd8f1ab125ac0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048c2ef01ffffffff08010203013c230000fffefffefffefffeff0efc06f002e000e000e000e000e000e000e000e000c000c000000000000000000000000000000000004a9aecfe6f9c0536694088de54ad577f6739c7bf56a1021c623e4c3c33c1651c3d3c4f3a353cce3825be4e5826a549d951be0c794c3f4e19641f993648a9819624aa4b56243b25562bbe6536283bce3741b4e49443bce3f4483d8f75242fa2724930c152292088103bb6ce31402b106e332f23ce2b37e52a2bab9f2c402ece4d38b5e48a2db553a735b3cec90000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cd6', '2018-02-05 14:15:54'),
('Kannan ', 'ITNT1315', 12, 'LEFT_INDEX', 'LI', 'ef01ffffffff020102030155150000f00ef002e000c000c000c000c000c000800080008000800080008000c000c000c000000000000000000000000000000000006386107e4e0d8e7e2d8e0c9e5512cd5e389b0bde312521fe182b9f7e28a1e19f61a656ff2737dedf1fc15d9f3643451f3095e31c4caf421c53b0587c32120cba1f26e0fb19a7603959a428b4532323315f9b26ae00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e0aef01ffffffff080102030159170000f01ef00680028000800080008000800000000000000000008000800080008000c000000000000000000000000000000000002f8fccbe1610213e4e90ce7e55168d5e391ccb9e619f509e322761fe11ac9ebe4cb1c23e5b33d83e20405dbe0d219e1729a2a1ff612997ff27b8df5f3297e2bc2227e11c1a2d1f7c17b9c9dd163da09d33940c7a1b28603b5c2267140000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e6f', '2018-02-06 11:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `IT_entry`
--

CREATE TABLE `IT_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MECH_entry`
--

CREATE TABLE `MECH_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `overall_presence`
--

CREATE TABLE `overall_presence` (
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `total_days` int(4) NOT NULL,
  `present_days` int(4) NOT NULL,
  `absent_days` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `name` varchar(100) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(3) NOT NULL,
  `finger_preference` enum('LT','RT','LI','RI','LM','RM') NOT NULL DEFAULT 'LI',
  `department` enum('IT','CSE','MECH','ECE','EEE','CIVIL') NOT NULL,
  `designation` varchar(30) NOT NULL,
  `cadre` enum('T','NT') NOT NULL COMMENT 'T- Teaching staff , NT- Non teaching staff',
  `gender` enum('M','F') NOT NULL,
  `phone` bigint(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `DOJ` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`name`, `staff_id`, `store_id`, `finger_preference`, `department`, `designation`, `cadre`, `gender`, `phone`, `email`, `DOJ`) VALUES
('Murali ', '14IT34', 8, 'LM', 'IT', 'AP-II', 'T', 'M', 7373535614, 'developer@igniteddreamz.com', '2018-02-27'),
('Yogesh TS ', '14IT46', 2, 'LT', 'IT', 'AP-II', 'T', 'M', 7373535614, 'tsyogesh40@gmail.com', '2018-01-30'),
('Yogesh 1', '14IT47', 4, 'LM', 'IT', 'AP-II', 'NT', 'M', 8667763095, 'tsyogesh40@gmail.com', '2018-02-21'),
('Yogesh 2', '14it48', 6, 'LT', 'IT', 'AP-II', 'NT', 'M', 7373535614, 'tsyogesh40@gmail.com', '2018-02-28'),
('Yogesh 3', '14IT49', 3, 'LI', 'IT', 'AP-III', 'T', 'M', 7373535614, 'tsyogesh40@gmail.com', '2018-02-01'),
('Gokul T S', '14IT50', 7, 'LM', 'CSE', 'AP-II', 'T', 'M', 7373535614, 'tsgokult@gmail.com', '2018-02-02'),
('Admin', 'IT01', 0, 'LI', 'IT', 'Admin', 'T', 'M', 7373535614, 'admin@vcet.ac.in', '2018-02-06'),
('Manager', 'IT02', 0, 'LI', 'IT', 'AP-II', 'T', 'M', 7373535614, 'manager@vcet.ac.in', '2018-02-07'),
('Employee', 'IT03', 0, 'LI', 'IT', 'AP-II', 'T', 'M', 7373535614, 'employee@vcet.ac.in', '2018-02-16'),
('Seema M', 'IT1223', 9, 'LM', 'IT', 'AP-II', 'T', 'F', 7373535614, 'developer@igniteddreamz.com', '2018-02-21'),
('Loganathan K', 'IT1237', 10, 'LI', 'IT', 'TA', 'T', 'M', 7373535614, 'muzzamil@gmail.com', '2018-02-20'),
('Perumal Raja R', 'IT1336', 11, 'LI', 'IT', 'HOD', 'T', 'M', 7373535614, 'tsyogesh40@gmail.com', '2018-02-14'),
('HOD', 'ITHOD', 27, 'LI', 'IT', 'HOD', 'T', 'M', 7373535614, 'hod@vcet.ac.in', '2010-12-12'),
('Kannan ', 'ITNT1315', 12, 'LI', 'IT', 'System_admin', 'NT', 'M', 8778555898, 'mka@vcet.ac.in', '2013-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 12:13:33'),
(2, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 12:34:22'),
(3, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 12:37:03'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 12:42:04'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 14:20:37'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 09:38:44'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 09:52:23'),
(8, 2, '{\"role\":\"2\",\"roleText\":\"Principal\",\"name\":\"Manager\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 10:35:59'),
(9, 3, '{\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Employee\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 10:36:18'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 10:40:17'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 10:48:39'),
(12, 9, '{\"staff_id\":null,\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:15:54'),
(13, 9, '{\"staff_id\":null,\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:18:09'),
(14, 1, '{\"staff_id\":\"IT01\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:29:03'),
(15, 3, '{\"staff_id\":\"IT03\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Employee\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:33:07'),
(16, 1, '{\"staff_id\":\"IT01\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', 'jas1CcGokf483Nw', 'Chrome 64.0.3282.119', '::1', 0, 1, '2018-02-18 09:39:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Admin'),
(2, 'Principal'),
(3, 'HOD'),
(4, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `staff_id` varchar(12) DEFAULT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `staff_id`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'IT01', 'admin@vcet.ac.in', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'IT02', 'manager@vcet.ac.in', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'IT03', 'employee@vcet.ac.in', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `temp_entry`
--

CREATE TABLE `temp_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(3) NOT NULL,
  `dept` enum('IT','CSE','MECH','ECE','EEE','CIVIL') NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `p_value` int(2) NOT NULL DEFAULT '0' COMMENT '1- Morning entry 2, Evening Entry',
  `no_of_entry` int(1) NOT NULL DEFAULT '0',
  `status` enum('LATE','ONTIME') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_entry`
--

INSERT INTO `temp_entry` (`cadre`, `name`, `staff_id`, `store_id`, `dept`, `in_time`, `out_time`, `p_value`, `no_of_entry`, `status`, `date`, `semester`, `year`) VALUES
('NT', 'Yogesh 1', '14IT47', 4, 'IT', '18:36:29', '18:40:31', 1, 2, 'LATE', '2018-02-02', 'ODD', 2018),
('NT', 'Yogesh 2', '14it48', 6, 'IT', '19:01:29', '19:24:28', 1, 2, 'LATE', '2018-02-02', 'ODD', 2018),
('T', 'Yogesh TS ', '14IT46', 2, 'IT', '19:05:48', '19:06:28', 1, 2, 'LATE', '2018-02-02', 'ODD', 2018),
('T', 'Yogesh 3', '14IT49', 3, 'IT', '19:08:33', '19:08:59', 1, 2, 'LATE', '2018-02-02', 'ODD', 2018),
('T', 'Gokul T S', '14IT50', 7, 'CSE', '19:21:53', '19:22:19', 1, 2, 'LATE', '2018-02-02', 'ODD', 2018),
('NT', 'Yogesh 1', '14IT47', 4, 'IT', '09:20:45', NULL, 1, 1, 'ONTIME', '2018-02-05', 'ODD', 2018),
('T', 'Murali ', '14IT34', 8, 'IT', '09:24:54', '09:25:52', 2, 2, 'LATE', '2018-02-05', 'ODD', 2018),
('T', 'Seema M', 'IT1223', 9, 'IT', '13:31:46', '14:07:54', 2, 2, 'LATE', '2018-02-05', 'ODD', 2018),
('T', 'Yogesh TS ', '14IT46', 2, 'IT', '13:44:35', NULL, 1, 1, 'LATE', '2018-02-05', 'ODD', 2018),
('T', 'Loganathan K', 'IT1237', 10, 'IT', '13:58:25', '11:45:05', 2, 2, 'LATE', '2018-02-05', 'ODD', 2018),
('NT', 'Yogesh 2', '14it48', 6, 'IT', '14:14:25', NULL, 1, 1, 'LATE', '2018-02-05', 'ODD', 2018),
('NT', 'Kannan ', 'ITNT1315', 12, 'IT', '11:44:20', NULL, 1, 1, 'LATE', '2018-02-06', 'ODD', 2018),
('T', 'Loganathan K', 'IT1237', 10, 'IT', '11:44:52', '11:45:05', 2, 2, 'LATE', '2018-02-06', 'ODD', 2018),
('NT', 'Yogesh 1', '14IT47', 4, 'IT', '11:48:25', NULL, 1, 1, 'LATE', '2018-02-06', 'ODD', 2018),
('NT', 'Yogesh 2', '14it48', 6, 'IT', '12:01:42', NULL, 1, 1, 'LATE', '2018-02-06', 'ODD', 2018),
('NT', 'Yogesh 1', '14IT47', 4, 'IT', '16:54:01', NULL, 1, 1, 'LATE', '2018-02-07', 'ODD', 2018),
('T', 'Yogesh TS ', '14IT46', 2, 'IT', '16:54:21', NULL, 1, 1, 'LATE', '2018-02-07', 'ODD', 2018),
('NT', 'Yogesh 1', '14IT47', 4, 'IT', '09:33:25', NULL, 1, 1, 'ONTIME', '2018-02-13', 'ODD', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `user_credentials`
--

CREATE TABLE `user_credentials` (
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `priority` enum('P','H','S','A') NOT NULL COMMENT 'P-PRINCIPAL , H- HOD, S- STAFFS,A- admin',
  `last_login` time DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_credentials`
--

INSERT INTO `user_credentials` (`name`, `staff_id`, `password`, `priority`, `last_login`, `email`) VALUES
('Yogesh T S', '14IT46', 'podalusu', 'A', '00:10:13', 'tsyogesh40@gmail.com'),
('Yogesh 1', '14IT47', 'hi', 'S', '04:10:18', 'tsyogesh46@gmail.com'),
('HOD', 'ITHOD', 'zzzz', 'H', NULL, 'hod@vcet.ac.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `altered_time`
--
ALTER TABLE `altered_time`
  ADD KEY `cadre_ref` (`cadre`);

--
-- Indexes for table `CIVIL_entry`
--
ALTER TABLE `CIVIL_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD UNIQUE KEY `staff_id` (`staff_id`);

--
-- Indexes for table `CSE_entry`
--
ALTER TABLE `CSE_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `default_time`
--
ALTER TABLE `default_time`
  ADD PRIMARY KEY (`cadre`);

--
-- Indexes for table `ECE_entry`
--
ALTER TABLE `ECE_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `EEE_entry`
--
ALTER TABLE `EEE_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `fingerprint_details`
--
ALTER TABLE `fingerprint_details`
  ADD KEY `reference` (`staff_id`);

--
-- Indexes for table `IT_entry`
--
ALTER TABLE `IT_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `MECH_entry`
--
ALTER TABLE `MECH_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `overall_presence`
--
ALTER TABLE `overall_presence`
  ADD KEY `staffid_ref_overall_presence` (`staff_id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `temp_entry`
--
ALTER TABLE `temp_entry`
  ADD KEY `staffid_ref` (`staff_id`),
  ADD KEY `cadre_ref_temp` (`cadre`);

--
-- Indexes for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD KEY `staffid_ref_user_credentials` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `altered_time`
--
ALTER TABLE `altered_time`
  ADD CONSTRAINT `cadre_ref` FOREIGN KEY (`cadre`) REFERENCES `default_time` (`cadre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CIVIL_entry`
--
ALTER TABLE `CIVIL_entry`
  ADD CONSTRAINT `staffid_ref_CIVIL` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counter`
--
ALTER TABLE `counter`
  ADD CONSTRAINT `staffid_ref_counter` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CSE_entry`
--
ALTER TABLE `CSE_entry`
  ADD CONSTRAINT `staffid_ref_CSE` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ECE_entry`
--
ALTER TABLE `ECE_entry`
  ADD CONSTRAINT `staffid_ref_ECE` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EEE_entry`
--
ALTER TABLE `EEE_entry`
  ADD CONSTRAINT `staffid_ref_EEE` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fingerprint_details`
--
ALTER TABLE `fingerprint_details`
  ADD CONSTRAINT `reference` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `IT_entry`
--
ALTER TABLE `IT_entry`
  ADD CONSTRAINT `staffid_ref_IT` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MECH_entry`
--
ALTER TABLE `MECH_entry`
  ADD CONSTRAINT `staffid_ref_MECH` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `overall_presence`
--
ALTER TABLE `overall_presence`
  ADD CONSTRAINT `staffid_ref_overall_presence` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `temp_entry`
--
ALTER TABLE `temp_entry`
  ADD CONSTRAINT `staffid_ref_temp` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD CONSTRAINT `staffid_ref_user_credentials` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;