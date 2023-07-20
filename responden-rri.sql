-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 01:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `responden-rri`
--

-- --------------------------------------------------------

--
-- Table structure for table `acaras`
--

CREATE TABLE `acaras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siaran_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `penyiar` varchar(255) DEFAULT NULL,
  `hari` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acaras`
--

INSERT INTO `acaras` (`id`, `siaran_id`, `nama`, `slug`, `jenis`, `penyiar`, `hari`, `jam`, `created_at`, `updated_at`) VALUES
(1, 3, 'Siaran Langsung di Sekolah', 'molestiae-quia-est-facere-voluptatem-quia-aperiam-quaerat-maiores', 'Millenial', 'Sulis', '1991-05-10', '22:07:15', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(2, 1, 'Obrolan Komunitas', 'cupiditate-aut-numquam-porro-illum', 'Millenial', 'Sulis', '2011-12-03', '20:01:23', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(3, 3, 'Siaran Langsung di Sekolah', 'eos-qui-laboriosam-eaque-atque-modi', 'Generasi Emas', 'Ira Ayuandari', '2017-06-07', '17:42:51', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(4, 1, 'Halo Kaltim', 'pariatur-temporibus-quis-ullam-voluptatum-eos-voluptas', 'Event Thunan RRI', 'Sulis', '1992-08-11', '00:14:18', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(5, 1, 'Obrolan Komunitas', 'numquam-assumenda-voluptas-ratione-at', 'Event Thunan RRI', 'Sulis', '1986-01-25', '12:47:05', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(6, 2, 'Siaran Langsung di Sekolah', 'consectetur-quo-veniam-sit-delectus-voluptatem', 'Millenial', 'Ira Ayuandari', '2016-07-19', '13:43:43', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(7, 2, 'Halo Kaltim', 'qui-aut-dolores-incidunt-veritatis-adipisci', 'Millenial', 'Ira Ayuandari', '2004-10-21', '04:42:16', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(8, 3, 'Siaran Langsung di Sekolah', 'a-iusto-quae-pariatur', 'Generasi Emas', 'Sulis', '1987-01-10', '20:25:19', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(9, 2, 'Obrolan Komunitas', 'totam-ut-dolore-quis-qui-libero-cumque-amet-aliquam', 'Millenial', 'Ira Ayuandari', '2000-11-23', '04:19:16', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(10, 3, 'Halo Kaltim', 'dolor-repellat-adipisci-autem-fugit-optio', 'Event Thunan RRI', 'Ira Ayuandari', '2008-03-16', '09:55:32', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(11, 2, 'Halo Kaltim', 'velit-laborum-rem-aut-atque', 'Millenial', 'Ira Ayuandari', '1995-03-11', '23:10:13', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(12, 3, 'Obrolan Komunitas', 'et-et-cumque-a-rerum-aspernatur-hic-ad-adipisci', 'Generasi Emas', 'Ratih Irawan', '2009-10-17', '22:47:23', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(13, 2, 'Siaran Langsung di Sekolah', 'consequatur-aperiam-et-ut-magnam-rerum', 'Generasi Emas', 'Sulis', '1971-02-28', '02:12:05', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(14, 2, 'Halo Kaltim', 'quia-velit-sed-iure-dignissimos-beatae-beatae', 'Event Thunan RRI', 'Ira Ayuandari', '2021-03-20', '17:15:09', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(15, 1, 'Obrolan Komunitas', 'doloremque-inventore-debitis-eveniet-mollitia-rem', 'Event Thunan RRI', 'Ratih Irawan', '1988-10-31', '07:52:32', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(16, 2, 'Siaran Langsung di Sekolah', 'ipsam-dolor-praesentium-qui-et-voluptatibus-dolorum-at', 'Generasi Emas', 'Sulis', '1991-02-27', '04:24:15', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(17, 3, 'Orolan Malam Ini', 'quaerat-animi-iste-consequatur-quia-voluptatem-ipsum', 'Event Thunan RRI', 'Ira Ayuandari', '1994-12-23', '22:29:35', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(18, 3, 'Obrolan Komunitas', 'fuga-aut-ut-id-a-inventore-repellat-fugiat', 'Generasi Emas', 'Ratih Irawan', '1990-06-02', '08:52:12', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(19, 1, 'Obrolan Komunitas', 'rem-perferendis-reprehenderit-tempore-est-dolor-qui-provident-et', 'Event Thunan RRI', 'Sulis', '2012-02-24', '14:23:21', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(20, 3, 'Halo Kaltim', 'excepturi-harum-recusandae-in-ad', 'Event Thunan RRI', 'Ira Ayuandari', '2014-07-14', '16:40:11', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(21, 2, 'Obrolan Komunitas', 'eum-cum-aut-inventore-sed-excepturi', 'Event Thunan RRI', 'Ratih Irawan', '1970-10-23', '23:41:41', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(22, 1, 'Halo Kaltim', 'hic-accusantium-eum-quia-qui-sed', 'Generasi Emas', 'Ira Ayuandari', '2004-04-27', '18:17:22', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(23, 1, 'Obrolan Komunitas', 'commodi-laudantium-quos-iusto-qui-explicabo', 'Event Thunan RRI', 'Sulis', '2000-05-23', '22:35:08', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(24, 2, 'Halo Kaltim', 'accusantium-commodi-est-at-molestiae-laboriosam-asperiores', 'Event Thunan RRI', 'Ira Ayuandari', '2023-05-29', '15:36:14', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(25, 1, 'Siaran Langsung di Sekolah', 'nesciunt-temporibus-nam-quia-consequatur-unde-explicabo-inventore', 'Generasi Emas', 'Ratih Irawan', '2001-10-06', '22:37:29', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(26, 1, 'Obrolan Komunitas', 'maiores-itaque-nam-aliquid-odio', 'Generasi Emas', 'Ratih Irawan', '2023-04-25', '14:02:18', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(27, 1, 'Obrolan Komunitas', 'ex-qui-ducimus-odit-voluptates', 'Generasi Emas', 'Sulis', '1989-04-26', '03:38:15', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(28, 3, 'Obrolan Komunitas', 'hic-minus-ut-a-illum-labore-odio-dolorem-necessitatibus', 'Millenial', 'Ira Ayuandari', '2017-05-10', '19:26:52', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(29, 1, 'Siaran Langsung di Sekolah', 'et-commodi-doloribus-in-animi-voluptatem', 'Generasi Emas', 'Ratih Irawan', '2011-11-11', '18:03:47', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(30, 3, 'Obrolan Komunitas', 'culpa-a-quae-consectetur-accusamus-corporis-ad', 'Event Thunan RRI', 'Ira Ayuandari', '1985-01-28', '15:42:53', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(31, 1, 'Halo Kaltim', 'et-amet-non-suscipit-sint-illum', 'Millenial', 'Sulis', '1976-07-25', '06:37:51', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(32, 1, 'Orolan Malam Ini', 'ea-repudiandae-voluptas-aut-harum-eaque-eligendi', 'Event Thunan RRI', 'Sulis', '2012-09-14', '04:57:02', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(33, 3, 'Halo Kaltim', 'autem-ipsum-adipisci-illo-quis-aspernatur-maxime', 'Event Thunan RRI', 'Ira Ayuandari', '1996-04-26', '01:42:32', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(34, 3, 'Orolan Malam Ini', 'quam-consequatur-dolorem-quibusdam-voluptas-recusandae-asperiores-rem', 'Event Thunan RRI', 'Ira Ayuandari', '1981-07-13', '14:59:37', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(35, 1, 'Halo Kaltim', 'omnis-quidem-iure-laborum-atque-alias-quam', 'Event Thunan RRI', 'Ratih Irawan', '1979-03-07', '19:02:49', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(36, 1, 'Siaran Langsung di Sekolah', 'hic-porro-maiores-a-odio-ex', 'Event Thunan RRI', 'Ratih Irawan', '1998-11-22', '08:31:11', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(37, 1, 'Orolan Malam Ini', 'id-ea-eaque-eos-animi-neque-et', 'Millenial', 'Ira Ayuandari', '1970-01-08', '14:10:30', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(38, 1, 'Obrolan Komunitas', 'ullam-rem-dicta-harum-dolorem', 'Generasi Emas', 'Ira Ayuandari', '1994-02-05', '00:17:20', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(39, 3, 'Siaran Langsung di Sekolah', 'laboriosam-hic-impedit-laboriosam', 'Generasi Emas', 'Ratih Irawan', '1996-07-25', '18:10:03', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(40, 3, 'Siaran Langsung di Sekolah', 'soluta-dolorem-quo-neque-cum-laboriosam-eos-autem', 'Generasi Emas', 'Sulis', '2009-05-21', '06:16:23', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(41, 3, 'Orolan Malam Ini', 'illo-ipsa-est-fugiat-autem-et-ipsum-et', 'Event Thunan RRI', 'Ira Ayuandari', '2022-10-05', '03:59:38', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(42, 3, 'Orolan Malam Ini', 'cupiditate-sed-et-quisquam-dolores-accusamus', 'Millenial', 'Sulis', '1986-01-26', '23:13:57', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(43, 3, 'Orolan Malam Ini', 'quo-earum-cum-velit-dolor-voluptate-sit-at', 'Event Thunan RRI', 'Sulis', '1976-07-31', '05:54:26', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(44, 1, 'Obrolan Komunitas', 'aliquid-occaecati-atque-dignissimos-vero-ab', 'Millenial', 'Ira Ayuandari', '2022-08-08', '16:56:23', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(45, 1, 'Halo Kaltim', 'nemo-nemo-dolorem-cumque-numquam-iste-dolor-et', 'Generasi Emas', 'Sulis', '2012-01-22', '10:03:38', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(46, 2, 'Halo Kaltim', 'unde-sint-ut-incidunt-possimus', 'Event Thunan RRI', 'Ira Ayuandari', '1994-11-18', '16:47:48', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(47, 2, 'Halo Kaltim', 'perspiciatis-necessitatibus-sunt-delectus-perspiciatis', 'Event Thunan RRI', 'Ira Ayuandari', '2018-03-15', '23:19:24', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(48, 1, 'Orolan Malam Ini', 'placeat-distinctio-ullam-rerum-placeat-totam-aut-autem-accusantium', 'Event Thunan RRI', 'Sulis', '1985-02-16', '21:53:21', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(49, 3, 'Halo Kaltim', 'iusto-voluptates-esse-velit', 'Generasi Emas', 'Ira Ayuandari', '1989-09-08', '04:08:15', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(50, 2, 'Siaran Langsung di Sekolah', 'distinctio-aut-ut-qui-et-a-perferendis-quas', 'Millenial', 'Ratih Irawan', '2009-07-09', '06:04:38', '2023-06-30 10:55:30', '2023-06-30 10:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lagus`
--

CREATE TABLE `lagus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `artis` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_06_061826_create_siarans_table', 1),
(6, '2023_03_06_064420_create_acaras_table', 1),
(7, '2023_03_09_125228_create_respondens_table', 1),
(8, '2023_03_13_125500_create_request_lagus_table', 1),
(9, '2023_03_15_143917_create_lagus_table', 1),
(10, '2023_05_16_161318_create_chats_table', 1),
(11, '2023_06_24_221720_create_noticees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `noticees`
--

CREATE TABLE `noticees` (
  `notice_id` bigint(20) UNSIGNED NOT NULL,
  `notice` varchar(50) NOT NULL,
  `noticedes` varchar(50) NOT NULL,
  `noticelink` varchar(50) NOT NULL,
  `telegramid` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_lagus`
--

CREATE TABLE `request_lagus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guest_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `artis` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_lagus`
--

INSERT INTO `request_lagus` (`id`, `guest_name`, `title`, `artis`, `genre`, `album`, `created_at`, `updated_at`) VALUES
(1, 'Mustofa Aldi', 'Jangan Mau Mau', 'ST12', 'Indie', 'Bintang Kehidupan', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(2, 'Viola Dwi Prastica', 'Ada apa denganmu', 'Peterpan', 'Melayu', 'Sings Legend', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(3, 'Deuwi Satriya Irawan', 'Bintang di Surga', 'Noah', 'Rock', 'Bintang Kehidupan', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(4, 'Viola Dwi Prastica', 'Saat Terakhir', 'Kangen Band', 'Indie', 'Bintang Kehidupan', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(5, 'Deuwi Satriya Irawan', 'Ada apa denganmu', 'Setia Band', 'Melayu', 'Hari yang Cerah', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(6, 'Viola Dwi Prastica', 'Ada apa denganmu', 'ST12', 'Indie', 'Jalan Terbaik', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(7, 'Mustofa Aldi', 'Kehilangan', 'ST12', 'Indie', 'Bintang Kehidupan', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(8, 'Deuwi Satriya Irawan', 'Ada apa denganmu', 'Kangen Band', 'Rock', 'Bintang Kehidupan', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(9, 'Mustofa Aldi', 'Kehilangan', 'ST12', 'Melayu', 'Sings Legend', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(10, 'Viola Dwi Prastica', 'Saat Terakhir', 'Peterpan', 'Pop', 'Bintang Kehidupan', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(11, 'Deuwi Satriya Irawan', 'Saat Terakhir', 'ST12', 'Indie', 'Jalan Terbaik', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(12, 'Deuwi Satriya Irawan', 'Kehilangan', 'Kangen Band', 'Melayu', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(13, 'Troy Livendoesky', 'Ada apa denganmu', 'Setia Band', 'Indie', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(14, 'Troy Livendoesky', 'Bintang di Surga', 'Noah', 'Melayu', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(15, 'Mustofa Aldi', 'Bintang di Surga', 'Kangen Band', 'Rock', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(16, 'Deuwi Satriya Irawan', 'Bintang di Surga', 'ST12', 'Melayu', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(17, 'Deuwi Satriya Irawan', 'Ada apa denganmu', 'Peterpan', 'Rock', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(18, 'Mustofa Aldi', 'Jangan Mau Mau', 'Kangen Band', 'Melayu', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(19, 'Deuwi Satriya Irawan', 'Bintang di Surga', 'Peterpan', 'Pop', 'Hari yang Cerah', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(20, 'Mustofa Aldi', 'Saat Terakhir', 'Noah', 'Rock', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(21, 'Troy Livendoesky', 'Jangan Mau Mau', 'Peterpan', 'Melayu', 'Hari yang Cerah', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(22, 'Troy Livendoesky', 'Ada apa denganmu', 'Kangen Band', 'Melayu', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(23, 'Viola Dwi Prastica', 'Bintang di Surga', 'ST12', 'Melayu', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(24, 'Mustofa Aldi', 'Saat Terakhir', 'ST12', 'Rock', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(25, 'Viola Dwi Prastica', 'Bintang di Surga', 'Setia Band', 'Melayu', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(26, 'Deuwi Satriya Irawan', 'Ada apa denganmu', 'Kangen Band', 'Pop', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(27, 'Viola Dwi Prastica', 'Saat Terakhir', 'ST12', 'Melayu', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(28, 'Troy Livendoesky', 'Saat Terakhir', 'Noah', 'Indie', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(29, 'Troy Livendoesky', 'Ada apa denganmu', 'Kangen Band', 'Pop', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(30, 'Troy Livendoesky', 'Bintang di Surga', 'Setia Band', 'Melayu', 'Hari yang Cerah', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(31, 'Deuwi Satriya Irawan', 'Bintang di Surga', 'Setia Band', 'Pop', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(32, 'Deuwi Satriya Irawan', 'Saat Terakhir', 'Setia Band', 'Rock', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(33, 'Mustofa Aldi', 'Kehilangan', 'Noah', 'Pop', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(34, 'Viola Dwi Prastica', 'Saat Terakhir', 'Noah', 'Pop', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(35, 'Deuwi Satriya Irawan', 'Bintang di Surga', 'ST12', 'Melayu', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(36, 'Deuwi Satriya Irawan', 'Kehilangan', 'Noah', 'Melayu', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(37, 'Viola Dwi Prastica', 'Bintang di Surga', 'Kangen Band', 'Pop', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(38, 'Viola Dwi Prastica', 'Jangan Mau Mau', 'ST12', 'Pop', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(39, 'Troy Livendoesky', 'Jangan Mau Mau', 'Kangen Band', 'Melayu', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(40, 'Troy Livendoesky', 'Ada apa denganmu', 'Noah', 'Pop', 'Hari yang Cerah', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(41, 'Mustofa Aldi', 'Saat Terakhir', 'Setia Band', 'Melayu', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(42, 'Mustofa Aldi', 'Jangan Mau Mau', 'Noah', 'Pop', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(43, 'Deuwi Satriya Irawan', 'Bintang di Surga', 'Setia Band', 'Pop', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(44, 'Deuwi Satriya Irawan', 'Saat Terakhir', 'Setia Band', 'Melayu', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(45, 'Deuwi Satriya Irawan', 'Kehilangan', 'ST12', 'Indie', 'Hari yang Cerah', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(46, 'Deuwi Satriya Irawan', 'Jangan Mau Mau', 'Kangen Band', 'Rock', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(47, 'Deuwi Satriya Irawan', 'Kehilangan', 'Peterpan', 'Rock', 'Sings Legend', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(48, 'Deuwi Satriya Irawan', 'Saat Terakhir', 'ST12', 'Pop', 'Bintang Kehidupan', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(49, 'Viola Dwi Prastica', 'Ada apa denganmu', 'ST12', 'Melayu', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(50, 'Viola Dwi Prastica', 'Jangan Mau Mau', 'Setia Band', 'Pop', 'Jalan Terbaik', '2023-06-30 10:55:30', '2023-06-30 10:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `respondens`
--

CREATE TABLE `respondens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `acara_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jadwal` datetime DEFAULT NULL,
  `pendengar` varchar(255) DEFAULT NULL,
  `usia` varchar(255) DEFAULT NULL,
  `kelamin` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `respon_pendengar` text DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `respondens`
--

INSERT INTO `respondens` (`id`, `acara_id`, `jadwal`, `pendengar`, `usia`, `kelamin`, `telepon`, `email`, `respon_pendengar`, `rating`, `created_at`, `updated_at`) VALUES
(1, 5, '2023-06-30 18:55:30', 'Mutofa Aldi', '21', 'Laki-Laki', '6282352673647', NULL, 'Acaranya seru sekali', '5', '2023-06-30 10:55:30', '2023-06-30 10:55:30'),
(2, 10, '2023-06-30 18:55:30', 'Deuwi Satriya Irawan', '23', 'Laki-Laki', '6282253332802', NULL, 'Acaranya Gokil', '5', '2023-06-30 10:55:30', '2023-06-30 10:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `siarans`
--

CREATE TABLE `siarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `frekuensi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siarans`
--

INSERT INTO `siarans` (`id`, `nama`, `slug`, `frekuensi`, `created_at`, `updated_at`) VALUES
(1, 'Pro 1', 'pro-1', '97,6', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(2, 'Pro 2', 'pro-2', '88,5', '2023-06-30 10:55:29', '2023-06-30 10:55:29'),
(3, 'Pro 4', 'pro-4', '98,4', '2023-06-30 10:55:29', '2023-06-30 10:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Responden', 'admin.respondenrri@gmail.com', '2023-06-30 10:55:29', '$2y$10$PRFM5LkwwXjA8p2hL2tfsuxC/CSY.GdD0fkGZujRDTH9wbfva5JJO', 'sMsZ1aQuE8', '2023-06-30 10:55:29', '2023-06-30 10:55:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acaras`
--
ALTER TABLE `acaras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acaras_slug_unique` (`slug`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lagus`
--
ALTER TABLE `lagus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticees`
--
ALTER TABLE `noticees`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `request_lagus`
--
ALTER TABLE `request_lagus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respondens`
--
ALTER TABLE `respondens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siarans`
--
ALTER TABLE `siarans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siarans_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `acaras`
--
ALTER TABLE `acaras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lagus`
--
ALTER TABLE `lagus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `noticees`
--
ALTER TABLE `noticees`
  MODIFY `notice_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_lagus`
--
ALTER TABLE `request_lagus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `respondens`
--
ALTER TABLE `respondens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siarans`
--
ALTER TABLE `siarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
