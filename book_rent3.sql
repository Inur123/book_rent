-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Des 2022 pada 10.46
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_rent3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `book_code`, `title`, `cover`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A001-01', 'Laravel', '', 'laravel', 'in stock', '2022-12-21 15:04:52', '2022-12-21 15:04:52', NULL),
(2, 'A001-02', 'test', 'test-1671906719.jpg', 'test', 'in stock', '2022-12-24 11:32:00', '2022-12-24 11:32:00', NULL),
(3, 'A001-03', 'PHP', '', 'php', 'in stock', '2022-12-24 14:42:31', '2022-12-24 14:42:31', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(3, 1, 2, NULL, NULL),
(4, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_writer`
--

CREATE TABLE `book_writer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_writer`
--

INSERT INTO `book_writer` (`id`, `book_id`, `writer_id`, `created_at`, `updated_at`) VALUES
(2, 2, 3, NULL, NULL),
(6, 1, 1, NULL, NULL),
(7, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Novel', 'novel', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL),
(2, 'Majalah', 'majalah', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL),
(3, 'Kamus', 'kamus', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL),
(4, 'Komik', 'komik', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL),
(5, 'Manga', 'manga', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL),
(6, 'Ensiklopedia', 'ensiklopedia', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL),
(7, 'Biografi', 'biografi', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL),
(8, 'Naskah', 'naskah', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL),
(9, 'Ligth novel', 'ligth-novel', '2022-12-21 14:39:06', '2022-12-21 14:39:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_15_133140_create_categories_table', 1),
(6, '2022_11_15_133315_create_books_table', 1),
(7, '2022_11_15_142935_create_rent_logs_table', 1),
(8, '2022_11_15_152835_create_roles_table', 1),
(9, '2022_11_15_205928_add_slug_column_to_categories_table', 1),
(10, '2022_11_15_210704_change_slug_column_into_nullable_in_categories_table', 1),
(11, '2022_11_15_214409_add_soft_delete_column_to_categories_table', 1),
(12, '2022_11_15_234426_add_slug_cover_column_to_books_table', 1),
(13, '2022_11_16_131826_add_soft_delete_to_books_table', 1),
(14, '2022_11_16_143453_add_slug_to_users_table', 1),
(15, '2022_11_16_152358_add_softdelete_to_users_table', 1),
(16, '2022_11_27_072159_add_role_id_column_to_users_table', 1),
(17, '2022_11_27_095804_create_writers_table', 1),
(18, '2022_11_27_100337_add_slug_column_to_writers_table', 1),
(19, '2022_11_27_100830_add_soft_delete_column_to_writers_table', 1),
(20, '2022_11_27_102626_change_slug_column_into_nullable_in_writers_table', 1),
(21, '2022_11_28_082015_create_book_category_table', 1),
(22, '2022_12_05_094510_create_book_writer_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rent_logs`
--

CREATE TABLE `rent_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rent_date` date NOT NULL,
  `return_date` date NOT NULL,
  `actual_return_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'client', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `password`, `phone`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`, `role_id`) VALUES
(1, 'admin', 'admin', '$2y$10$b95SiHL82O5J7kTOLTwWZuXZeE9QFx5/cPlIMgcsikfp8PcFxzIJm', '123123', 'magetan', 'active', '2022-12-21 14:21:03', '2022-12-21 14:21:03', NULL, 1),
(73, 'Adrienne ', 'adrienne', '$2y$10$XM9/zZwFoBsu8DH57c2a.uyVYz1BTSHWE6HR0i9NCpaRUqM23ufx.', '123456', 'malang', 'active', '2022-12-21 14:34:09', '2022-12-21 14:44:12', NULL, 2),
(74, 'Adsila  ', 'adsila', '$2y$10$uXSp1MUKkayOFEVnN.1heey04Fw78rp/iE.1Es2xCGm9WpxjBE1JW', '123456', 'malang', 'active', '2022-12-21 14:34:09', '2022-12-24 13:35:58', NULL, 2),
(75, 'Afrah ', 'afrah', '$2y$10$/Y5jcI4cwGBz2pSJaFACFOhfe6KHYr2eHP7CLzoilN4WhcetZ.gSW', '123456', 'malang', 'active', '2022-12-21 14:34:09', '2022-12-24 14:26:27', NULL, 2),
(76, 'Agni ', 'agni', '$2y$10$yrtm0m4r9dik5nhmaZbMFu2ca.MiqEd3svGgx0aEmSe3R6lZD8sam', '123456', 'malang', 'inactive', '2022-12-21 14:34:09', '2022-12-21 14:34:09', NULL, 2),
(77, 'Aidan ', 'aidan', '$2y$10$s2eQpMpVlCkOEPZZuxr6euCipyZfcY77uxBaEotiwjACXCTv67sTC', '123456', 'malang', 'inactive', '2022-12-21 14:34:09', '2022-12-21 14:34:09', NULL, 2),
(78, 'Aiko ', 'aiko', '$2y$10$gX0cR8N4hQBcpuC8MGH5nei5p5ub0wTbUiphSWts.S2MMOsBev6pO', '123456', 'malang', 'inactive', '2022-12-21 14:34:09', '2022-12-21 14:34:09', NULL, 2),
(79, 'Aimee ', 'aimee', '$2y$10$dCEG626Tl0iwIo1eU2NROO0jSxAG2ERhs4SeqbMmpcV/ctpZuMiV.', '123456', 'malang', 'inactive', '2022-12-21 14:34:09', '2022-12-21 14:34:09', NULL, 2),
(80, 'Ainiyah ', 'ainiyah', '$2y$10$kHY6Z8XWjT6CAMbjOkglF.5jJ9vVD7zNHQR/dIlx9LL8MY6Nnt50.', '123456', 'malang', 'inactive', '2022-12-21 14:34:09', '2022-12-21 14:34:09', NULL, 2),
(81, 'Akash ', 'akash', '$2y$10$VIz5QFG7eT/32Ju59vfP4uRVRlagPTU.m2py/5SmH.Uwc9uvStALe', '123456', 'malang', 'inactive', '2022-12-21 14:34:10', '2022-12-21 14:34:10', NULL, 2),
(82, 'Akemi ', 'akemi', '$2y$10$MMGEnPrzqZXQHAiTzsqJnOFurZ8/WfqK6yiy/hGbSyhhpLDnDgRaq', '123456', 'malang', 'inactive', '2022-12-21 14:34:10', '2022-12-21 14:34:10', NULL, 2),
(83, 'Akhdan ', 'akhdan', '$2y$10$xI027Muo7sRqvnBV2El7ueMro2ylbTL1OrU1ppNTHuRMuCJlH20J2', '123456', 'malang', 'inactive', '2022-12-21 14:34:10', '2022-12-21 14:34:10', NULL, 2),
(84, 'Akins ', 'akins', '$2y$10$VYOM7ST0EvM7LJMXlwY.q.PZfAzFKAPWmpg4mi3dtAM3jImdRMyJy', '123456', 'malang', 'inactive', '2022-12-21 14:34:10', '2022-12-21 14:34:10', NULL, 2),
(85, 'Akmal ', 'akmal', '$2y$10$JrxIVGUsKu.NyLYP/SyJ8ePU5NNPoGmP10rfvREFH5xrKWsIFNq/S', '123456', 'malang', 'inactive', '2022-12-21 14:34:10', '2022-12-21 14:34:10', NULL, 2),
(86, 'Aksel ', 'aksel', '$2y$10$xCwimpR8uNOfGgNqsn6UdOj0CrR4iI5LWGs2qw8AuyvLZZq1p5yCi', '123456', 'malang', 'inactive', '2022-12-21 14:34:10', '2022-12-21 14:34:10', NULL, 2),
(87, 'Alana ', 'alana', '$2y$10$Hjg65TMWpfMoyqIcYJkPmespLTwnOPwwAqnOscXx3Zc.tBqMnkTVK', '123456', 'malang', 'inactive', '2022-12-21 14:34:10', '2022-12-21 14:34:10', NULL, 2),
(88, 'Alanza ', 'alanza', '$2y$10$aAYvIkq6AvfPJmO3tkPsmulRJcTYcfl8RR.8DpvqgwLLSK73SgWiu', '123456', 'malang', 'inactive', '2022-12-21 14:34:10', '2022-12-21 14:34:10', NULL, 2),
(89, 'Albern ', 'albern', '$2y$10$6uCcpw2sPJmJJFp7zsWCK.Blj.N4tNaRj6pQpuoqBNApsCVxhclfS', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(90, 'Alden ', 'alden', '$2y$10$D8fqH6z8BeBGSvl4BkpNDOmQPjFbLIFekaZV7c2t3gdblpPBXrKbe', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(91, 'Aldwin ', 'aldwin', '$2y$10$FCvPiKASfGTwR.PsIeMoz.MErpV4jC9BhKZtBqCePEMoY6BwNPsSW', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(92, 'Algis ', 'algis', '$2y$10$CB97jWXeVM6SNq623S8EUOZxpHrr2/ACmYZuGPTIBwqQMWYbNKFv2', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(93, 'Alib ', 'alib', '$2y$10$Ij.A0KDh3gKok.mcK1z8ieFGXd9DT6LXqIbADCsyEv7SE1ELlW5oC', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(94, 'Alifah ', 'alifah', '$2y$10$hBit5n2Sxb/QwY1VThngzuA0LP60Lt9ZYPtKOmx7dNnjMtGfSNGk6', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(95, 'Alina ', 'alina', '$2y$10$TstPVByjAm1.LDN5Rnnig.pwWt5kkR./uklzTIXjC1iQZzWIB0UE2', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(96, 'Aline  ', 'aline', '$2y$10$.tKALYdkdyoQO6NK9iIFmug1qsKU0Y0Hh5qCyWv3AP6cCsreH0Dpm', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(97, 'Alisha ', 'alisha', '$2y$10$eX8I2QW0GSUNGzB2bddtiuez.C4b/GGnwqdB/xNaRatnc6YzybA/q', '123456', 'malang', 'inactive', '2022-12-21 14:34:11', '2022-12-21 14:34:11', NULL, 2),
(98, 'Almasah ', 'almasah', '$2y$10$XyVdTtv/DL37JN3Z8B6kEezDkGVFbqz4TOB59kWt.XhWhqpAFB9Rq', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(99, 'Almeta ', 'almeta', '$2y$10$iFb3GOfPmRRFKPDZ.KuCB.i81SmdZuVAiPQvUMOyGTTQzrcd0YkyG', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(100, 'Alvaro ', 'alvaro', '$2y$10$mQEi/2fAqPZLIPLcE2kRfOwqZKmnFx6VVneLbJg.An.tOVPVd8EWG', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(101, 'Alvina ', 'alvina', '$2y$10$qBmph0kscbFnJeDBPRcD6.ByJhOtoBpvQcrLfv68ol/GtAQJyZx0e', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(102, 'Alvis ', 'alvis', '$2y$10$RhEzHgU6XBsN7X4Afx3Me.Ilrv3.gTTcEDFyQ.LBYKtMn7Bn8G9Fi', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(103, 'Amabel ', 'amabel', '$2y$10$rG616I0iTgvOXM/mfdlcd.VpDKYklIzkoXFjr.cwBGWZXm6t4IJ1i', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(104, 'Amada ', 'amada', '$2y$10$Ddtn9Lx5o3sxfArHxwZqMuYgkOIfaU/Lm.yr0UZY2Bow6Fyn0bwve', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(105, 'Amandla ', 'amandla', '$2y$10$T3N7gDtnNMuoNZrVSRuDduKps5r6YvuwMlbJz.j.UmV5tFjH06BdG', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(106, 'Amanullah ', 'amanullah', '$2y$10$f0ur2Uv95uFZo2n0batfG.EElXpZsrQ8wIjC2nGR6aj.anwA79lSa', '123456', 'malang', 'inactive', '2022-12-21 14:34:12', '2022-12-21 14:34:12', NULL, 2),
(107, 'Amany ', 'amany', '$2y$10$dMJYbk1f7rkdnm.rbFJ2nOixqbFqjaq9eRHodme12IJhShlQawjci', '123456', 'malang', 'inactive', '2022-12-21 14:34:13', '2022-12-21 14:34:13', NULL, 2),
(108, 'Amato ', 'amato', '$2y$10$sDQ4bgTIRrCW9RmaqQe1AuYyXU00t8zT/K5kNyJOXtszBhsqN2pDC', '123456', 'malang', 'inactive', '2022-12-21 14:34:13', '2022-12-21 14:34:13', NULL, 2),
(109, 'Ambrose ', 'ambrose', '$2y$10$Di/bbUK3CAN0BTKRTwsuDOEWHHlaMbF4BScfL9QlwvhvAWMdyyQ8O', '123456', 'malang', 'inactive', '2022-12-21 14:34:13', '2022-12-21 14:34:13', NULL, 2),
(110, 'Ames ', 'ames', '$2y$10$mPh0mBKJSvTZAb1DQmcOAuvfuIE4Sbu1.T./sEF0Plm0n3MyoaE9W', '123456', 'malang', 'inactive', '2022-12-21 14:34:13', '2022-12-21 14:34:13', NULL, 2),
(111, 'Aminah ', 'aminah', '$2y$10$wNKOCRZ9KIgZjgOZhQ0i8eNBHu7tHhdvtV0DjrtKLS5HyJLEnVLjm', '123456', 'malang', 'inactive', '2022-12-21 14:34:13', '2022-12-21 14:34:13', NULL, 2),
(112, 'Amira ', 'amira', '$2y$10$lk6DNgPI2stC//QdyokSzOi/Z5oqOoHoIyWmxVodX/TXJ6UUCB.6W', '123456', 'malang', 'inactive', '2022-12-21 14:34:13', '2022-12-21 14:34:13', NULL, 2),
(113, 'Andros ', 'andros', '$2y$10$GsoS0X8najhXtixHVpd1DOXW4pE2Wh89Mrbcu4YED.M7Qkh5eLYVS', '123456', 'malang', 'inactive', '2022-12-21 14:34:13', '2022-12-21 14:34:13', NULL, 2),
(114, 'Anevay ', 'anevay', '$2y$10$lBpLrOJqosGiTw2kk48DY.ZpZ0j1f9jNn60okrWb3FubpjtBjVWLS', '123456', 'malang', 'inactive', '2022-12-21 14:34:13', '2022-12-21 14:34:13', NULL, 2),
(115, 'Anisah ', 'anisah', '$2y$10$WiEe6W6vf.//vEIEAJRQ5.7FZ9DLHWXj5xddsZUl0tPvlByRnBv/u', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(116, 'Anjali ', 'anjali', '$2y$10$cwtcC0fL1ToVvVu00WKOtuhOvLJnDrEp.1jt59bdBosSXhf92Rk4m', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(117, 'Anjana ', 'anjana', '$2y$10$CUkccxrtKVZh0MhLsmLaFeUzHZWZ8EFX4OPGhyz9O41XPqqPUSlMi', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(118, 'Annora ', 'annora', '$2y$10$1Fh32jNflEj1QqQ5uV5bx.wXC3tNijqYsGy/vY1/v9W3eoa6/utv.', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(119, 'Ansel ', 'ansel', '$2y$10$cqSBr6JgeP.Tevq9lwEbv.eOEkz.8OsND1uiCyO..spAlPXAe.h3W', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(120, 'Antares ', 'antares', '$2y$10$1uDhTqCnadyMfUo3RiGdgOgk6mfhxfTKS.UXnBTN7eyYVnCRXvWK2', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(121, 'Anthea ', 'anthea', '$2y$10$9YlVd/S9sJyedHWQGEqugeFrFzHi7VWnENfEjN9xXGfjep.eeC3Jq', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(122, 'Antonite  ', 'antonite', '$2y$10$BwAZ9xQuhENnjEDMzZM7YeBVqinhEwPTgKfY0vnqb/RSZXpr5fLJa', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(123, 'Anwar ', 'anwar', '$2y$10$vLCdX/xUQ/OIVeXLs4GVtue/BWpNYhGsO5a5tXa9UjYTotBV6Ojjq', '123456', 'malang', 'inactive', '2022-12-21 14:34:14', '2022-12-21 14:34:14', NULL, 2),
(124, 'Anya ', 'anya', '$2y$10$86PNvtZOzHFBsOnjLyXUausFGfdF0mb28QKH/oCTAww2XHS07bN.2', '123456', 'malang', 'inactive', '2022-12-21 14:34:15', '2022-12-21 14:34:15', NULL, 2),
(125, 'Apuila ', 'apuila', '$2y$10$MgcXGIOaTLof1zC3n3n9cu8Is6Lh57oKV4lWrp4eOzEtuWzhTzcdq', '123456', 'malang', 'inactive', '2022-12-21 14:34:15', '2022-12-21 14:34:15', NULL, 2),
(126, 'Araminta ', 'araminta', '$2y$10$SFp2seZ3La2AO2BkXJ0BIeef4sCLMJ7QAmNtCUaoihi.wYiwups9a', '123456', 'malang', 'inactive', '2022-12-21 14:34:15', '2022-12-21 14:34:15', NULL, 2),
(127, 'Ararya ', 'ararya', '$2y$10$.3jOSL8TUF..qLso1ll6UeF8kZuyOH1SF0Ni.te18raak9cw5xP5W', '123456', 'malang', 'inactive', '2022-12-21 14:34:15', '2022-12-21 14:34:15', NULL, 2),
(128, 'Archard ', 'archard', '$2y$10$MP3MjMMbGg6U4d77IVjiNOL.bqO2ublqJ8W76gClhvFe8KiB5jqwe', '123456', 'malang', 'inactive', '2022-12-21 14:34:15', '2022-12-21 14:34:15', NULL, 2),
(129, 'Ardell ', 'ardell', '$2y$10$QXmgTXiWjNE6Spi5CUa0ZO1OT83PBkQWNLukzuJIXXAuHvmPZLWfe', '123456', 'malang', 'inactive', '2022-12-21 14:34:15', '2022-12-21 14:34:15', NULL, 2),
(130, 'Ardelle ', 'ardelle', '$2y$10$2oiS0Wl40FB8gDXlZcNdA.VXIQ7ZFFfr7v.m6B9EUMU08Jyw4rAQq', '123456', 'malang', 'inactive', '2022-12-21 14:34:15', '2022-12-21 14:34:15', NULL, 2),
(131, 'Ardhani ', 'ardhani', '$2y$10$teokl3Tt/Jts0TQnPS6dtOdEB1xgN2U8cEKiBuoaQz8dn6aFRtD02', '123456', 'malang', 'inactive', '2022-12-21 14:34:15', '2022-12-21 14:34:15', NULL, 2),
(132, 'Ardith ', 'ardith', '$2y$10$vqJ91nYnra6zvWJV268jbOsl6rNsgPB4ZaMqE/zs.8ZVahuBp51JW', '123456', 'malang', 'inactive', '2022-12-21 14:34:16', '2022-12-21 14:34:16', NULL, 2),
(133, 'Areta ', 'areta', '$2y$10$j.N3F3kP16.HVr9VybdhG.XITvcgQuHluD0wRaURu5fgtCc6xCLLq', '123456', 'malang', 'inactive', '2022-12-21 14:34:16', '2022-12-21 14:34:16', NULL, 2),
(134, 'Arhab ', 'arhab', '$2y$10$h2Qvg7HvDvYtOmplGQPFlOeBSx2OGtI1.3XI.CmGtsmtk9O234jHC', '123456', 'malang', 'inactive', '2022-12-21 14:34:16', '2022-12-21 14:34:16', NULL, 2),
(135, 'Ariane ', 'ariane', '$2y$10$HmOI3VO7jTPUU2QQaQIKleFsosXSsjHqn6tLFlyLC1TDxARY9yocW', '123456', 'malang', 'inactive', '2022-12-21 14:34:16', '2022-12-21 14:34:16', NULL, 2),
(136, 'Arij  ', 'arij', '$2y$10$EukW9bDxsci0HX2RoqWsuuEO5d161rOTwIdXbd5BIWlhDmf7m.5CO', '123456', 'malang', 'inactive', '2022-12-21 14:34:16', '2022-12-21 14:34:16', NULL, 2),
(137, 'Ariti ', 'ariti', '$2y$10$bx5MO8IeoKY2bIyAB2mNe.BjiQtwUsk8H0LdXHQ3Vh/Y5EWv9ndbe', '123456', 'malang', 'inactive', '2022-12-21 14:34:16', '2022-12-21 14:34:16', NULL, 2),
(138, 'Armila ', 'armila', '$2y$10$s7s3Pn92GzfJTfQFoyJzNuS3ZNGPnUncXMjS1oWcdyUtl/6STz002', '123456', 'malang', 'inactive', '2022-12-21 14:34:16', '2022-12-21 14:34:16', NULL, 2),
(139, 'Arnawama ', 'arnawama', '$2y$10$tDhMDuGenkor22FwXNRkjOKN/GOSfgMADO9COIWxTJgYYZqdEJXiy', '123456', 'malang', 'inactive', '2022-12-21 14:34:16', '2022-12-21 14:34:16', NULL, 2),
(140, 'Arsa ', 'arsa', '$2y$10$L1f4tng2cMRweL9TH2OsduCOarDSn92dNkj.uTiHCCQwI84/EOID6', '123456', 'malang', 'inactive', '2022-12-21 14:34:17', '2022-12-21 14:34:17', NULL, 2),
(141, 'Aruna ', 'aruna', '$2y$10$jS2cKFd/XG/JiyZThJSnI.U3lAqi8qRG7eSQ6ruNpZt1h5T76bJ6S', '123456', 'malang', 'inactive', '2022-12-21 14:34:17', '2022-12-21 14:34:17', NULL, 2),
(142, 'Arvin ', 'arvin', '$2y$10$YvU.JU08Msz7JYb6S8PRmuPKzutaXclmSaJF7dzA5Cp8eRxAVUF96', '123456', 'malang', 'inactive', '2022-12-21 14:34:17', '2022-12-21 14:34:17', NULL, 2),
(143, 'Aryasatya ', 'aryasatya', '$2y$10$QGeMWD1mH5J6h6QQiyY9..1NIAVJ2KHBJthZ8G3ThVgSBjE90jGtO', '123456', 'malang', 'inactive', '2022-12-21 14:34:17', '2022-12-21 14:34:17', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `writers`
--

INSERT INTO `writers` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adi', 'adi', '2022-12-21 14:34:33', '2022-12-21 14:34:57', NULL),
(2, 'Nasrul', 'nasrul', '2022-12-21 14:34:33', '2022-12-21 14:34:33', NULL),
(3, 'Zainur', 'zainur', '2022-12-21 14:34:33', '2022-12-21 14:34:33', NULL),
(4, 'Aabidah ', 'aabidah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(5, 'Aathifah ', 'aathifah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(6, 'Abdad ', 'abdad', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(7, 'Abdiel ', 'abdiel', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(8, 'Abidah ', 'abidah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(9, 'Adara ', 'adara', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(10, 'Adawiyah ', 'adawiyah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(11, 'Adelard ', 'adelard', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(12, 'Adelia ', 'adelia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(13, 'Adelio ', 'adelio', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(14, 'Adena ', 'adena', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(15, 'Adib ', 'adib', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(16, 'Adiel ', 'adiel', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(17, 'Adira ', 'adira', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(18, 'Adli ', 'adli', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(19, 'Adney ', 'adney', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(20, 'Adom ', 'adom', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(21, 'Adonia ', 'adonia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(22, 'Adonis ', 'adonis', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(23, 'Adoria ', 'adoria', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(24, 'Adora ', 'adora', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(25, 'Adrienne ', 'adrienne', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(26, 'Adsila  ', 'adsila', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(27, 'Afrah ', 'afrah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(28, 'Agni ', 'agni', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(29, 'Aidan ', 'aidan', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(30, 'Aiko ', 'aiko', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(31, 'Aimee ', 'aimee', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(32, 'Ainiyah ', 'ainiyah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(33, 'Akash ', 'akash', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(34, 'Akemi ', 'akemi', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(35, 'Akhdan ', 'akhdan', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(36, 'Akins ', 'akins', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(37, 'Akmal ', 'akmal', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(38, 'Aksel ', 'aksel', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(39, 'Alana ', 'alana', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(40, 'Alanza ', 'alanza', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(41, 'Albern ', 'albern', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(42, 'Alden ', 'alden', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(43, 'Aldwin ', 'aldwin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(44, 'Algis ', 'algis', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(45, 'Alib ', 'alib', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(46, 'Alifah ', 'alifah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(47, 'Alina ', 'alina', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(48, 'Aline  ', 'aline', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(49, 'Alisha ', 'alisha', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(50, 'Almasah ', 'almasah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(51, 'Almeta ', 'almeta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(52, 'Alvaro ', 'alvaro', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(53, 'Alvina ', 'alvina', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(54, 'Alvis ', 'alvis', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(55, 'Amabel ', 'amabel', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(56, 'Amada ', 'amada', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(57, 'Amandla ', 'amandla', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(58, 'Amanullah ', 'amanullah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(59, 'Amany ', 'amany', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(60, 'Amato ', 'amato', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(61, 'Ambrose ', 'ambrose', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(62, 'Ames ', 'ames', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(63, 'Aminah ', 'aminah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(64, 'Amira ', 'amira', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(65, 'Andros ', 'andros', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(66, 'Anevay ', 'anevay', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(67, 'Anisah ', 'anisah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(68, 'Anjali ', 'anjali', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(69, 'Anjana ', 'anjana', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(70, 'Annora ', 'annora', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(71, 'Ansel ', 'ansel', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(72, 'Antares ', 'antares', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(73, 'Anthea ', 'anthea', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(74, 'Antonite  ', 'antonite', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(75, 'Anwar ', 'anwar', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(76, 'Anya ', 'anya', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(77, 'Apuila ', 'apuila', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(78, 'Araminta ', 'araminta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(79, 'Ararya ', 'ararya', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(80, 'Archard ', 'archard', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(81, 'Ardell ', 'ardell', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(82, 'Ardelle ', 'ardelle', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(83, 'Ardhani ', 'ardhani', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(84, 'Ardith ', 'ardith', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(85, 'Areta ', 'areta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(86, 'Arhab ', 'arhab', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(87, 'Ariane ', 'ariane', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(88, 'Arij  ', 'arij', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(89, 'Ariti ', 'ariti', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(90, 'Armila ', 'armila', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(91, 'Arnawama ', 'arnawama', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(92, 'Arsa ', 'arsa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(93, 'Aruna ', 'aruna', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(94, 'Arvin ', 'arvin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(95, 'Aryasatya ', 'aryasatya', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(96, 'Asadel ', 'asadel', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(97, 'Asahy ', 'asahy', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(98, 'Ascarya ', 'ascarya', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(99, 'Asker ', 'asker', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(100, 'Athalia ', 'athalia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(101, 'Athifa ', 'athifa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(102, 'Atharwa ', 'atharwa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(103, 'Atid  ', 'atid', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(104, 'Audrey ', 'audrey', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(105, 'Aurelia ', 'aurelia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(106, 'Austrin ', 'austrin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(107, 'Avisa ', 'avisa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(108, 'Awahita ', 'awahita', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(109, 'Axelle ', 'axelle', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(110, 'Ayana ', 'ayana', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(111, 'Aydin ', 'aydin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(112, 'Azalia ', 'azalia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(113, 'Azana ', 'azana', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(114, 'Azhar ', 'azhar', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(115, 'Azighah ', 'azighah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(116, 'Azmi ', 'azmi', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(117, 'Azzam ', 'azzam', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(118, 'Bahijah ', 'bahijah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(119, 'Bahirah ', 'bahirah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(120, 'Bahy ', 'bahy', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(121, 'Balakosa ', 'balakosa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(122, 'Balin ', 'balin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(123, 'Baluku ', 'baluku', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(124, 'Banjiro ', 'banjiro', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(125, 'Baqir ', 'baqir', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(126, 'Bari\'ah ', 'bari-ah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(127, 'Bariq ', 'bariq', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(128, 'Barnes ', 'barnes', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(129, 'Bashirah ', 'bashirah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(130, 'Basil ', 'basil', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(131, 'Basilia ', 'basilia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(132, 'Basimah ', 'basimah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(133, 'Bassam ', 'bassam', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(134, 'Basyirah ', 'basyirah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(135, 'Bawika ', 'bawika', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(136, 'Bayanaka ', 'bayanaka', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(137, 'Bazyli ', 'bazyli', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(138, 'Belicia ', 'belicia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(139, 'Belva  ', 'belva', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(140, 'Belva ', 'belva-2', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(141, 'Berly ', 'berly', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(142, 'Bernessa ', 'bernessa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(143, 'Bertin ', 'bertin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(144, 'Berwin ', 'berwin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(145, 'Berwyn ', 'berwyn', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(146, 'Beryl ', 'beryl', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(147, 'Bhadra ', 'bhadra', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(148, 'Bhadrika ', 'bhadrika', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(149, 'Birney ', 'birney', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(150, 'Blenda ', 'blenda', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(151, 'Blythe ', 'blythe', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(152, 'Bonaro ', 'bonaro', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(153, 'Bryna ', 'bryna', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(154, 'Buckley ', 'buckley', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(155, 'Buntala ', 'buntala', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(156, 'Burairah ', 'burairah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(157, 'Byakta ', 'byakta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(158, 'Cadudasa  ', 'cadudasa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(159, 'Callysta ', 'callysta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(160, 'Calya ', 'calya', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(161, 'Camilo ', 'camilo', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(162, 'Candida ', 'candida', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(163, 'Carissa ', 'carissa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(164, 'Carlen ', 'carlen', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(165, 'Carlene ', 'carlene', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(166, 'Carlin ', 'carlin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(167, 'Carney ', 'carney', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(168, 'Carola ', 'carola', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(169, 'Cascata ', 'cascata', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(170, 'Casey ', 'casey', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(171, 'Casimira ', 'casimira', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(172, 'Cathilin ', 'cathilin', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(173, 'Catra  ', 'catra', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(174, 'Catriona ', 'catriona', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(175, 'Celena ', 'celena', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(176, 'Celesta ', 'celesta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(177, 'Celestyn ', 'celestyn', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(178, 'Cetta ', 'cetta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(179, 'Changyi ', 'changyi', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(180, 'Charemon ', 'charemon', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(181, 'Charis ', 'charis', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(182, 'Chastine ', 'chastine', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(183, 'Chenoa ', 'chenoa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(184, 'Chesna ', 'chesna', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(185, 'Chiara ', 'chiara', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(186, 'Chiko ', 'chiko', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(187, 'Chindaga ', 'chindaga', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(188, 'Chumani  ', 'chumani', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(189, 'Cicely ', 'cicely', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(190, 'Cira ', 'cira', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(191, 'Clarance ', 'clarance', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(192, 'Clarinta ', 'clarinta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(193, 'Clearesta ', 'clearesta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(194, 'Cleine ', 'cleine', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(195, 'Cleon ', 'cleon', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(196, 'Cleonima ', 'cleonima', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(197, 'Cleosa ', 'cleosa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(198, 'Clianta ', 'clianta', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(199, 'Clorinda ', 'clorinda', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(200, 'Cloris ', 'cloris', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(201, 'Clovis ', 'clovis', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(202, 'Cmille ', 'cmille', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(203, 'Conan ', 'conan', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(204, 'Conary ', 'conary', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(205, 'Concordia ', 'concordia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(206, 'Cordelia ', 'cordelia', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(207, 'Cosmo ', 'cosmo', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(208, 'Cottina ', 'cottina', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(209, 'Curtina ', 'curtina', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(210, 'Cyma ', 'cyma', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(211, 'Dagna ', 'dagna', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(212, 'Dahayu ', 'dahayu', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(213, 'Daiva ', 'daiva', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(214, 'Dakari ', 'dakari', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(215, 'Daksayini ', 'daksayini', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(216, 'Daliyah ', 'daliyah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(217, 'Damara ', 'damara', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(218, 'Damita ', 'damita', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(219, 'Danadyaksa ', 'danadyaksa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(220, 'Danah ', 'danah', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(221, 'Danakitri ', 'danakitri', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(222, 'Danella ', 'danella', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(223, 'Darda ', 'darda', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(224, 'Darlene ', 'darlene', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(225, 'Darpa ', 'darpa', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(226, 'Darrell ', 'darrell', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(227, 'Davu ', 'davu', '2022-12-21 14:35:26', '2022-12-21 14:35:26', NULL),
(228, 'Dayita ', 'dayita', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(229, 'Deana ', 'deana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(230, 'Delmora ', 'delmora', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(231, 'Delvin  ', 'delvin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(232, 'Demas ', 'demas', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(233, 'Demetria ', 'demetria', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(234, 'Dennis ', 'dennis', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(235, 'Deron ', 'deron', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(236, 'Deshi ', 'deshi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(237, 'Deven ', 'deven', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(238, 'Devin ', 'devin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(239, 'Dhahir ', 'dhahir', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(240, 'Didrika ', 'didrika', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(241, 'Digdaya ', 'digdaya', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(242, 'Dihyan ', 'dihyan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(243, 'Dimas (z) ', 'dimas-z', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(244, 'Diwei ', 'diwei', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(245, 'Dobry ', 'dobry', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(246, 'Dolores ', 'dolores', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(247, 'Donahue ', 'donahue', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(248, 'Donatien ', 'donatien', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(249, 'Dongsheng ', 'dongsheng', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(250, 'Dorinda ', 'dorinda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(251, 'Durriyah ', 'durriyah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(252, 'Dyani ', 'dyani', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(253, 'Dzakwan ', 'dzakwan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(254, 'Dzaky ', 'dzaky', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(255, 'Earlene ', 'earlene', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(256, 'Edgina ', 'edgina', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(257, 'Edsel ', 'edsel', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(258, 'Eldora ', 'eldora', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(259, 'Eleanor ', 'eleanor', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(260, 'Elfreda ', 'elfreda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(261, 'Elfrida ', 'elfrida', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(262, 'Ellard ', 'ellard', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(263, 'Elma ', 'elma', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(264, 'Elora ', 'elora', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(265, 'Elpida ', 'elpida', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(266, 'Elroy ', 'elroy', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(267, 'Elsdon ', 'elsdon', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(268, 'Elvaretta ', 'elvaretta', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(269, 'Elvia ', 'elvia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(270, 'Elvina ', 'elvina', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(271, 'Elysia  ', 'elysia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(272, 'Emery ', 'emery', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(273, 'Engrasia ', 'engrasia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(274, 'Enzi ', 'enzi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(275, 'Erasma ', 'erasma', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(276, 'Eratus ', 'eratus', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(277, 'Erland ', 'erland', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(278, 'Erlinda ', 'erlinda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(279, 'Erling ', 'erling', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(280, 'Ermina ', 'ermina', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(281, 'Erol ', 'erol', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(282, 'Ervanthe ', 'ervanthe', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(283, 'Ethana ', 'ethana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(284, 'Eustacia ', 'eustacia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(285, 'Evania ', 'evania', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(286, 'Evanthe ', 'evanthe', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(287, 'Faadhilah  ', 'faadhilah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(288, 'Fadey ', 'fadey', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(289, 'Fadhilah ', 'fadhilah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(290, 'Fakhirah ', 'fakhirah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(291, 'Fakinah ', 'fakinah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(292, 'Fallon ', 'fallon', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(293, 'Farand ', 'farand', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(294, 'Farhan ', 'farhan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(295, 'Farhanah ', 'farhanah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(296, 'Farica ', 'farica', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(297, 'Farrell ', 'farrell', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(298, 'Faste ', 'faste', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(299, 'Fathi ', 'fathi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(300, 'Fathinah ', 'fathinah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(301, 'Fausta ', 'fausta', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(302, 'Faustine ', 'faustine', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(303, 'Fauziyyah ', 'fauziyyah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(304, 'Fawnia ', 'fawnia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(305, 'Fawwaz ', 'fawwaz', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(306, 'Fayola ', 'fayola', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(307, 'Fedora  ', 'fedora', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(308, 'Felda ', 'felda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(309, 'Fengguang ', 'fengguang', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(310, 'Fengying ', 'fengying', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(311, 'Feodora ', 'feodora', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(312, 'Ferris ', 'ferris', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(313, 'Fidela ', 'fidela', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(314, 'Fidelya ', 'fidelya', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(315, 'Filbert ', 'filbert', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(316, 'Filia ', 'filia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(317, 'Fiorenza ', 'fiorenza', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(318, 'Freda ', 'freda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(319, 'Fredelina ', 'fredelina', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(320, 'Fredella ', 'fredella', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(321, 'Frederika ', 'frederika', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(322, 'Frieda ', 'frieda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(323, 'Frodine ', 'frodine', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(324, 'Fruma ', 'fruma', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(325, 'Gadi ', 'gadi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(326, 'Galen ', 'galen', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(327, 'Galena ', 'galena', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(328, 'Galeno ', 'galeno', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(329, 'Ganendra ', 'ganendra', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(330, 'Gantari ', 'gantari', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(331, 'Gaoqi ', 'gaoqi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(332, 'Gaozhan ', 'gaozhan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(333, 'Garini ', 'garini', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(334, 'Garneta ', 'garneta', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(335, 'Garwita ', 'garwita', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(336, 'Gatawati ', 'gatawati', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(337, 'Gavin ', 'gavin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(338, 'Gaviota ', 'gaviota', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(339, 'Gavrila  ', 'gavrila', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(340, 'Gene ', 'gene', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(341, 'Gentala ', 'gentala', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(342, 'Ghadah ', 'ghadah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(343, 'Ghufron ', 'ghufron', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(344, 'Gilda ', 'gilda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(345, 'Gladwin ', 'gladwin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(346, 'Godwin ', 'godwin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(347, 'Gonza ', 'gonza', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(348, 'Grania ', 'grania', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(349, 'Grimonia ', 'grimonia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(350, 'Griselda ', 'griselda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(351, 'Gustin ', 'gustin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(352, 'Gyala ', 'gyala', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(353, 'Habibah ', 'habibah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(354, 'Habibi ', 'habibi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(355, 'Hadrian ', 'hadrian', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(356, 'Hafidhah ', 'hafidhah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(357, 'Hagan ', 'hagan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(358, 'Hagon ', 'hagon', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(359, 'Haibah ', 'haibah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(360, 'Haidar ', 'haidar', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(361, 'Haiyun ', 'haiyun', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(362, 'Hakimah ', 'hakimah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(363, 'Haldis ', 'haldis', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(364, 'Haley ', 'haley', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(365, 'Hali ', 'hali', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(366, 'Halona ', 'halona', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(367, 'Hamamah ', 'hamamah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(368, 'Hamdan ', 'hamdan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(369, 'Hamdi ', 'hamdi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(370, 'Hamilah ', 'hamilah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(371, 'Hana\' ', 'hana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(372, 'Hanan ', 'hanan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(373, 'Hanbal ', 'hanbal', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(374, 'Handaru ', 'handaru', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(375, 'Hannah ', 'hannah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(376, 'Hansa ', 'hansa', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(377, 'Haocun ', 'haocun', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(378, 'Hara ', 'hara', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(379, 'Harding ', 'harding', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(380, 'Harina ', 'harina', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(381, 'Haruko ', 'haruko', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(382, 'Haruni ', 'haruni', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(383, 'Hasna ', 'hasna', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(384, 'Hauda ', 'hauda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(385, 'Hazimzh  ', 'hazimzh', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(386, 'Hector ', 'hector', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(387, 'Hedona ', 'hedona', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(388, 'Hedva ', 'hedva', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(389, 'Hedy ', 'hedy', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(390, 'Helga ', 'helga', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(391, 'Helonia ', 'helonia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(392, 'Helsa ', 'helsa', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(393, 'Hepziba ', 'hepziba', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(394, 'Hermes ', 'hermes', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(395, 'Herwit ', 'herwit', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(396, 'Hesperos ', 'hesperos', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(397, 'Hieu ', 'hieu', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(398, 'Hillel ', 'hillel', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(399, 'Hindun ', 'hindun', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(400, 'Hira ', 'hira', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(401, 'Hiromasa ', 'hiromasa', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(402, 'Hisyam ', 'hisyam', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(403, 'Honesto ', 'honesto', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(404, 'Hongli ', 'hongli', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(405, 'Honora ', 'honora', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(406, 'Hoshi ', 'hoshi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(407, 'Hoshiko ', 'hoshiko', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(408, 'Hototo ', 'hototo', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(409, 'Huajin ', 'huajin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(410, 'Huanran ', 'huanran', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(411, 'Huberta ', 'huberta', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(412, 'Huga ', 'huga', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(413, 'Humam ', 'humam', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(414, 'Huriyah ', 'huriyah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(415, 'Huwaida ', 'huwaida', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(416, 'Hylmi ', 'hylmi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(417, 'Ibtisamah ', 'ibtisamah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(418, 'Imad ', 'imad', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(419, 'Inas ', 'inas', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(420, 'Indurasmi ', 'indurasmi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(421, 'Iniko ', 'iniko', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(422, 'Iolana ', 'iolana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(423, 'Ipyana ', 'ipyana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(424, 'Irmadel ', 'irmadel', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(425, 'Isadora ', 'isadora', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(426, 'Isaura ', 'isaura', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(427, 'Ivander ', 'ivander', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(428, 'Jabulani ', 'jabulani', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(429, 'Jacinda ', 'jacinda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(430, 'Jamilah ', 'jamilah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(431, 'Janitra ', 'janitra', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(432, 'Jareb ', 'jareb', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(433, 'Jarvis ', 'jarvis', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(434, 'Jauhar ', 'jauhar', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(435, 'Jauharah ', 'jauharah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(436, 'Jauza ', 'jauza', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(437, 'Javas ', 'javas', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(438, 'Jawad ', 'jawad', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(439, 'Jawahir ', 'jawahir', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(440, 'Jayasri ', 'jayasri', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(441, 'Jeconia ', 'jeconia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(442, 'Jerolin ', 'jerolin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(443, 'Jevera ', 'jevera', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(444, 'Jianheeng  ', 'jianheeng', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(445, 'Jianying ', 'jianying', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(446, 'Jiaya ', 'jiaya', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(447, 'Jiazhen ', 'jiazhen', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(448, 'Jibon ', 'jibon', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(449, 'Jierui ', 'jierui', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(450, 'Jili ', 'jili', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(451, 'Jimi ', 'jimi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(452, 'Jingmi ', 'jingmi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(453, 'Jingyi ', 'jingyi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(454, 'Jinxiu ', 'jinxiu', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(455, 'Jivin ', 'jivin', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(456, 'Joachim ', 'joachim', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(457, 'Jomei ', 'jomei', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(458, 'Jonea ', 'jonea', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(459, 'Jorell ', 'jorell', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(460, 'Jovita ', 'jovita', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(461, 'Julinka ', 'julinka', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(462, 'Juman ', 'juman', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(463, 'Jun ', 'jun', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(464, 'Juro ', 'juro', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(465, 'Justine ', 'justine', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(466, 'Justis ', 'justis', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(467, 'Juvenal ', 'juvenal', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(468, 'Kaemon ', 'kaemon', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(469, 'Kagami ', 'kagami', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(470, 'Kahraman ', 'kahraman', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(471, 'Kaia ', 'kaia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(472, 'Kaibo ', 'kaibo', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(473, 'Kaila ', 'kaila', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(474, 'Kaili ', 'kaili', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(475, 'Kaipo ', 'kaipo', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(476, 'Kalani ', 'kalani', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(477, 'Kalea ', 'kalea', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(478, 'Kalei ', 'kalei', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(479, 'Kalena ', 'kalena', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(480, 'Kalifa ', 'kalifa', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(481, 'Kalinda ', 'kalinda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(482, 'Kalpana ', 'kalpana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(483, 'Kalyca ', 'kalyca', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(484, 'Kamala ', 'kamala', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(485, 'Kamau ', 'kamau', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(486, 'Kamazu ', 'kamazu', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(487, 'Kamea ', 'kamea', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(488, 'Kamini ', 'kamini', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(489, 'Kanaka ', 'kanaka', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(490, 'Kangjian ', 'kangjian', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(491, 'Kanoa ', 'kanoa', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(492, 'Kapono ', 'kapono', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(493, 'Kara ', 'kara', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(494, 'Karimah ', 'karimah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(495, 'Kasimir  ', 'kasimir', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(496, 'Kastara ', 'kastara', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(497, 'Kasyapi ', 'kasyapi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(498, 'Kavindra ', 'kavindra', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(499, 'Kawena ', 'kawena', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(500, 'Kawindra ', 'kawindra', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(501, 'Kayana ', 'kayana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(502, 'Kayle ', 'kayle', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(503, 'Keiko ', 'keiko', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(504, 'Kendrick ', 'kendrick', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(505, 'Kennard ', 'kennard', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(506, 'Kentaro ', 'kentaro', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(507, 'Kenward ', 'kenward', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(508, 'Kenzie ', 'kenzie', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(509, 'Keola ', 'keola', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(510, 'Keziah ', 'keziah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(511, 'Khairullah ', 'khairullah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(512, 'khalida ', 'khalida', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(513, 'Khalidah ', 'khalidah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(514, 'Khalil ', 'khalil', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(515, 'Khalish ', 'khalish', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(516, 'Khamilah ', 'khamilah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(517, 'Khansa ', 'khansa', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(518, 'Khazhim ', 'khazhim', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(519, 'Khulud ', 'khulud', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(520, 'Kineta ', 'kineta', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(521, 'Kostya ', 'kostya', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(522, 'Kusuma ', 'kusuma', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(523, 'Kynthia ', 'kynthia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(524, 'Labibah  ', 'labibah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(525, 'Lajain ', 'lajain', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(526, 'Laksita ', 'laksita', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(527, 'Lalasa ', 'lalasa', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(528, 'Lamont ', 'lamont', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(529, 'Lan ', 'lan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(530, 'Lander ', 'lander', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(531, 'landra ', 'landra', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(532, 'Landry ', 'landry', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(533, 'Langundo ', 'langundo', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(534, 'Lareina ', 'lareina', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(535, 'Larrimore ', 'larrimore', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(536, 'Laszlo ', 'laszlo', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(537, 'Lateef ', 'lateef', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(538, 'Lauda ', 'lauda', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(539, 'Lavina ', 'lavina', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(540, 'Lawana ', 'lawana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(541, 'Layana ', 'layana', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(542, 'Leandra ', 'leandra', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(543, 'Leif  ', 'leif', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(544, 'Leilani ', 'leilani', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(545, 'Leroy ', 'leroy', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(546, 'Leverrett ', 'leverrett', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(547, 'Lian ', 'lian', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(548, 'Liangyi ', 'liangyi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(549, 'Lianxiang ', 'lianxiang', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(550, 'Liiu Yaoshan ', 'liiu-yaoshan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(551, 'Liqi ', 'liqi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(552, 'Lishan ', 'lishan', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(553, 'Lituhayu ', 'lituhayu', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(554, 'Liu Changhai ', 'liu-changhai', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(555, 'Liu Xingsheng ', 'liu-xingsheng', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(556, 'Lixui ', 'lixui', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(557, 'Lucretia ', 'lucretia', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(558, 'Luigi ', 'luigi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(559, 'Luluah ', 'luluah', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(560, 'Luthfi ', 'luthfi', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(561, 'Luvena ', 'luvena', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(562, 'Mackinnley ', 'mackinnley', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(563, 'Mada ', 'mada', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(564, 'Magdala ', 'magdala', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(565, 'Magena ', 'magena', '2022-12-21 14:35:27', '2022-12-21 14:35:27', NULL),
(566, 'Magnus ', 'magnus', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(567, 'Mahadri ', 'mahadri', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(568, 'Mahasura ', 'mahasura', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(569, 'Mahawira ', 'mahawira', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(570, 'Maheswara ', 'maheswara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(571, 'Mahib ', 'mahib', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(572, 'Mahija ', 'mahija', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(573, 'Mahrus ', 'mahrus', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(574, 'Majdi ', 'majdi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(575, 'Makarim ', 'makarim', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(576, 'Maknar ', 'maknar', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(577, 'Malca ', 'malca', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(578, 'Mali ', 'mali', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(579, 'Malya ', 'malya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(580, 'Manuela ', 'manuela', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(581, 'Manyari ', 'manyari', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(582, 'Manyura ', 'manyura', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(583, 'Maribel ', 'maribel', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(584, 'Maritza ', 'maritza', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(585, 'Marlen ', 'marlen', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(586, 'Marva ', 'marva', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(587, 'Masao ', 'masao', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(588, 'Masato ', 'masato', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(589, 'Maska ', 'maska', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(590, 'Masou ', 'masou', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(591, 'Mas\'ud ', 'mas-ud', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(592, 'Maxine ', 'maxine', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(593, 'Maynard ', 'maynard', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(594, 'Maysun ', 'maysun', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(595, 'Mayyadah ', 'mayyadah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(596, 'Meara ', 'meara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(597, 'Medea ', 'medea', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(598, 'Megara ', 'megara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(599, 'Mehadi  ', 'mehadi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(600, 'Mehri ', 'mehri', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(601, 'Meiying ', 'meiying', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(602, 'Melba ', 'melba', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(603, 'Melvin ', 'melvin', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(604, 'Mengda ', 'mengda', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(605, 'Menur ', 'menur', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(606, 'Meredith ', 'meredith', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(607, 'Meriel ', 'meriel', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(608, 'Messina ', 'messina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(609, 'Milada ', 'milada', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(610, 'Mingde ', 'mingde', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(611, 'Minowa ', 'minowa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(612, 'Moana ', 'moana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(613, 'Moria ', 'moria', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(614, 'Morie ', 'morie', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(615, 'Moyna ', 'moyna', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(616, 'Moza ', 'moza', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(617, 'Mubarak ', 'mubarak', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(618, 'Mudrik ', 'mudrik', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(619, 'Mufrih ', 'mufrih', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(620, 'Mugisa ', 'mugisa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(621, 'Muhana ', 'muhana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(622, 'Muhsin ', 'muhsin', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(623, 'Mukasa ', 'mukasa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(624, 'Mukhbit ', 'mukhbit', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(625, 'Mulin ', 'mulin', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(626, 'Mumtazah ', 'mumtazah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(627, 'Muntashir ', 'muntashir', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(628, 'Muradah ', 'muradah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(629, 'Mus\'ad ', 'mus-ad', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(630, 'Mushoddiq ', 'mushoddiq', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(631, 'Mustajab ', 'mustajab', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(632, 'Mutawakkil ', 'mutawakkil', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(633, 'Mya ', 'mya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(634, 'Nabiha ', 'nabiha', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(635, 'Nabila ', 'nabila', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(636, 'Nadine ', 'nadine', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(637, 'Naeem ', 'naeem', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL);
INSERT INTO `writers` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(638, 'Najdah ', 'najdah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(639, 'Nalani ', 'nalani', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(640, 'Nara ', 'nara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(641, 'Nararya ', 'nararya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(642, 'Narda ', 'narda', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(643, 'Nareswari ', 'nareswari', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(644, 'Naryama ', 'naryama', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(645, 'Nash ', 'nash', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(646, 'Nashif ', 'nashif', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(647, 'Nasnan ', 'nasnan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(648, 'Natha ', 'natha', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(649, 'Nathania ', 'nathania', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(650, 'Naufal ', 'naufal', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(651, 'Nawwar ', 'nawwar', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(652, 'Nazhimah ', 'nazhimah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(653, 'Neila ', 'neila', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(654, 'Nesha ', 'nesha', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(655, 'Neva ', 'neva', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(656, 'Ningdei ', 'ningdei', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(657, 'Nirwasita ', 'nirwasita', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(658, 'Niscala ', 'niscala', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(659, 'Nismara ', 'nismara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(660, 'Nitisara ', 'nitisara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(661, 'Nohan ', 'nohan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(662, 'Nuria ', 'nuria', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(663, 'Obadiah ', 'obadiah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(664, 'Odelia ', 'odelia', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(665, 'Odell ', 'odell', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(666, 'Odina ', 'odina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(667, 'Ofira ', 'ofira', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(668, 'Okalina ', 'okalina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(669, 'Okechuku ', 'okechuku', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(670, 'Olinda ', 'olinda', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(671, 'Olubayo ', 'olubayo', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(672, 'Ophir ', 'ophir', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(673, 'Orea ', 'orea', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(674, 'Orela ', 'orela', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(675, 'Oriana ', 'oriana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(676, 'Orlando ', 'orlando', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(677, 'Orlin ', 'orlin', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(678, 'Ormanda ', 'ormanda', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(679, 'Osahar ', 'osahar', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(680, 'Osborn ', 'osborn', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(681, 'Osmond ', 'osmond', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(682, 'Osric ', 'osric', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(683, 'Oswald ', 'oswald', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(684, 'Otadan ', 'otadan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(685, 'Ozora ', 'ozora', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(686, 'Padali ', 'padali', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(687, 'Padmarini ', 'padmarini', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(688, 'Padmini ', 'padmini', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(689, 'Palawa ', 'palawa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(690, 'Panyun ', 'panyun', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(691, 'Parabawa ', 'parabawa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(692, 'Parama ', 'parama', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(693, 'Parisya ', 'parisya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(694, 'Partaya ', 'partaya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(695, 'Pasada ', 'pasada', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(696, 'Pasha ', 'pasha', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(697, 'Pastika ', 'pastika', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(698, 'Pawana ', 'pawana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(699, 'Peiyu ', 'peiyu', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(700, 'Penrod ', 'penrod', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(701, 'Perlita ', 'perlita', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(702, 'Phaedra ', 'phaedra', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(703, 'Phalosa ', 'phalosa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(704, 'Philemon ', 'philemon', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(705, 'Pirata ', 'pirata', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(706, 'Pragata ', 'pragata', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(707, 'Prawara ', 'prawara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(708, 'Prayata ', 'prayata', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(709, 'Purbani ', 'purbani', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(710, 'Qabil ', 'qabil', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(711, 'Qiancheng ', 'qiancheng', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(712, 'Qiaofeng ', 'qiaofeng', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(713, 'Qibo ', 'qibo', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(714, 'Qionglin ', 'qionglin', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(715, 'Qisheng ', 'qisheng', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(716, 'Qixuan ', 'qixuan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(717, 'Qosiim ', 'qosiim', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(718, 'Quentin ', 'quentin', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(719, 'Quinlan ', 'quinlan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(720, 'Qujing ', 'qujing', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(721, 'Quon ', 'quon', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(722, 'Rabiah ', 'rabiah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(723, 'Rabihah ', 'rabihah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(724, 'Radella ', 'radella', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(725, 'Radinka ', 'radinka', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(726, 'Radithya ', 'radithya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(727, 'Radmila ', 'radmila', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(728, 'Radoslaw ', 'radoslaw', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(729, 'Rafa ', 'rafa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(730, 'Rafif ', 'rafif', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(731, 'Raina ', 'raina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(732, 'Raissa ', 'raissa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(733, 'Ramaniya ', 'ramaniya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(734, 'Rania  ', 'rania', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(735, 'Ranjana ', 'ranjana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(736, 'Ransi ', 'ransi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(737, 'Rashida ', 'rashida', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(738, 'Rasiyah ', 'rasiyah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(739, 'Ratana ', 'ratana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(740, 'Ratnamaya ', 'ratnamaya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(741, 'Reseda ', 'reseda', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(742, 'Reyhan ', 'reyhan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(743, 'Reynard ', 'reynard', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(744, 'Ridong ', 'ridong', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(745, 'Rika ', 'rika', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(746, 'Riona ', 'riona', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(747, 'Riordan ', 'riordan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(748, 'Rizqullah ', 'rizqullah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(749, 'Roid ', 'roid', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(750, 'Roland ', 'roland', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(751, 'Rongdan ', 'rongdan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(752, 'Ronghui ', 'ronghui', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(753, 'Roselani ', 'roselani', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(754, 'Ruhakana ', 'ruhakana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(755, 'Ruhua ', 'ruhua', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(756, 'Rukmi ', 'rukmi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(757, 'Runako ', 'runako', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(758, 'Ruobai ', 'ruobai', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(759, 'Sabiya ', 'sabiya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(760, 'Sadajiwa ', 'sadajiwa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(761, 'Sadara ', 'sadara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(762, 'Sadina ', 'sadina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(763, 'Sadira ', 'sadira', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(764, 'Sadiya ', 'sadiya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(765, 'Sadubi ', 'sadubi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(766, 'Saguna ', 'saguna', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(767, 'Sakinah ', 'sakinah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(768, 'Saktika ', 'saktika', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(769, 'Salaga ', 'salaga', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(770, 'Salimah ', 'salimah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(771, 'Salvia ', 'salvia', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(772, 'Samana ', 'samana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(773, 'Samara ', 'samara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(774, 'Samih ', 'samih', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(775, 'Samira ', 'samira', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(776, 'Samitra ', 'samitra', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(777, 'Sandya ', 'sandya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(778, 'Sarila ', 'sarila', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(779, 'Sarkara ', 'sarkara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(780, 'Sashuang ', 'sashuang', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(781, 'Saskia ', 'saskia', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(782, 'Sava ', 'sava', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(783, 'Selena ', 'selena', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(784, 'Selma ', 'selma', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(785, 'Sewagati ', 'sewagati', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(786, 'Shabirah ', 'shabirah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(787, 'Shadiq ', 'shadiq', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(788, 'Shafira ', 'shafira', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(789, 'Shafiyah  ', 'shafiyah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(790, 'Shahia ', 'shahia', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(791, 'Shanmimg ', 'shanmimg', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(792, 'Shaosheng ', 'shaosheng', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(793, 'Shatara ', 'shatara', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(794, 'Shbouh ', 'shbouh', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(795, 'Sherwin ', 'sherwin', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(796, 'Shilin ', 'shilin', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(797, 'Shira ', 'shira', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(798, 'Shobir ', 'shobir', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(799, 'Shula ', 'shula', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(800, 'Shunnar ', 'shunnar', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(801, 'Shuoxue ', 'shuoxue', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(802, 'Shuwan ', 'shuwan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(803, 'Sidra ', 'sidra', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(804, 'Sigra ', 'sigra', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(805, 'Silawarti ', 'silawarti', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(806, 'Speranza ', 'speranza', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(807, 'Stina ', 'stina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(808, 'Sulthanah ', 'sulthanah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(809, 'Sumina ', 'sumina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(810, 'Sunee ', 'sunee', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(811, 'Suniyyah ', 'suniyyah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(812, 'Supala ', 'supala', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(813, 'Surur ', 'surur', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(814, 'Syandana ', 'syandana', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(815, 'Syauq ', 'syauq', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(816, 'Syua ', 'syua', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(817, 'Syuja\' ', 'syuja', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(818, 'Tabia ', 'tabia', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(819, 'Tabina ', 'tabina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(820, 'Tabitha ', 'tabitha', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(821, 'Tadita ', 'tadita', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(822, 'Tadya ', 'tadya', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(823, 'Tahira ', 'tahira', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(824, 'Taksa ', 'taksa', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(825, 'Talidah ', 'talidah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(826, 'Talitha ', 'talitha', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(827, 'Tamim ', 'tamim', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(828, 'Tansy ', 'tansy', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(829, 'Taoran ', 'taoran', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(830, 'Taqi ', 'taqi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(831, 'Taraka ', 'taraka', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(832, 'Tasanee ', 'tasanee', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(833, 'Tauhid ', 'tauhid', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(834, 'Tawaddud ', 'tawaddud', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(835, 'Teripta ', 'teripta', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(836, 'Tertia ', 'tertia', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(837, 'Tevy ', 'tevy', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(838, 'Thahir  ', 'thahir', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(839, 'Theobald ', 'theobald', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(840, 'Theona ', 'theona', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(841, 'Tianba ', 'tianba', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(842, 'Tianlun Le ', 'tianlun-le', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(843, 'Tianzhi ', 'tianzhi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(844, 'Tibra ', 'tibra', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(845, 'Tobias ', 'tobias', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(846, 'Tong mu ', 'tong-mu', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(847, 'Tongcai ', 'tongcai', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(848, 'Toshi-Shitas ', 'toshi-shitas', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(849, 'Toyadi ', 'toyadi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(850, 'Trina ', 'trina', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(851, 'Tristan ', 'tristan', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(852, 'Trygve ', 'trygve', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(853, 'Tsabat ', 'tsabat', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(854, 'Tsabitah ', 'tsabitah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(855, 'Tsaqib ', 'tsaqib', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(856, 'Tsary ', 'tsary', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(857, 'Tuoli ', 'tuoli', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(858, 'Tuyen ', 'tuyen', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(859, 'Tyaga ', 'tyaga', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(860, 'Ubadah ', 'ubadah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(861, 'Uistean ', 'uistean', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(862, 'Ulani ', 'ulani', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(863, 'Ulfah ', 'ulfah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(864, 'Ulima ', 'ulima', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(865, 'Umeko ', 'umeko', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(866, 'Ummiyah ', 'ummiyah', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(867, 'Urdha ', 'urdha', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(868, 'Vala ', 'vala', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(869, 'Valerie ', 'valerie', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(870, 'Vania ', 'vania', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(871, 'Vega ', 'vega', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(872, 'Vegard ', 'vegard', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(873, 'Velma ', 'velma', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(874, 'Verda ', 'verda', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(875, 'Vincent ', 'vincent', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(876, 'Vondro ', 'vondro', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(877, 'Wadi ', 'wadi', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(878, 'Wadud ', 'wadud', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(879, 'Wagindra ', 'wagindra', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(880, 'Waiduri ', 'waiduri', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(881, 'Wajendra ', 'wajendra', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(882, 'Wajih ', 'wajih', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(883, 'Walmond ', 'walmond', '2022-12-21 14:35:28', '2022-12-21 14:35:28', NULL),
(884, 'Wang Chunying ', 'wang-chunying', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(885, 'Wang Dunrui ', 'wang-dunrui', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(886, 'Wang Wenxiao ', 'wang-wenxiao', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(887, 'Wang Xiaohui ', 'wang-xiaohui', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(888, 'Wang Xuemin ', 'wang-xuemin', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(889, 'Wang Xuesi ', 'wang-xuesi', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(890, 'Wang Zeming ', 'wang-zeming', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(891, 'Wangting ', 'wangting', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(892, 'Waradana ', 'waradana', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(893, 'Wasim ', 'wasim', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(894, 'Wastiqah ', 'wastiqah', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(895, 'Wastu ', 'wastu', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(896, 'Weida ', 'weida', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(897, 'Weiheng ', 'weiheng', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(898, 'Wenhua ', 'wenhua', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(899, 'Widati ', 'widati', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(900, 'Wikrama ', 'wikrama', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(901, 'Wilasa ', 'wilasa', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(902, 'Winda ', 'winda', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(903, 'Winna ', 'winna', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(904, 'Winola ', 'winola', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(905, 'Winona ', 'winona', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(906, 'Wirasana ', 'wirasana', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(907, 'Wirasena ', 'wirasena', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(908, 'Wistara ', 'wistara', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(909, 'Wursita ', 'wursita', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(910, 'Xabat ', 'xabat', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(911, 'Xianlun ', 'xianlun', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(912, 'Xingguang Zhao ', 'xingguang-zhao', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(913, 'Xinxin ', 'xinxin', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(914, 'Xionglue ', 'xionglue', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(915, 'Yasykur ', 'yasykur', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(916, 'Yatha ', 'yatha', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(917, 'Yelu ', 'yelu', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(918, 'Yichang ', 'yichang', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(919, 'Yihua ', 'yihua', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(920, 'Yiran ', 'yiran', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(921, 'Yizhen ', 'yizhen', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(922, 'Yocelyn ', 'yocelyn', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(923, 'Yodha ', 'yodha', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(924, 'Yogini ', 'yogini', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(925, 'Yongsheng ', 'yongsheng', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(926, 'Yueyin ', 'yueyin', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(927, 'Yuwen ', 'yuwen', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(928, 'Zahid ', 'zahid', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(929, 'Zahirah ', 'zahirah', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(930, 'Zakiyah ', 'zakiyah', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(931, 'Zamira ', 'zamira', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(932, 'Zebediah ', 'zebediah', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(933, 'Zhabyah ', 'zhabyah', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(934, 'Zhafif ', 'zhafif', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(935, 'Zhafir ', 'zhafir', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(936, 'Zhang Bingjie ', 'zhang-bingjie', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(937, 'Zhang Jiangwu ', 'zhang-jiangwu', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(938, 'Zhang Junda ', 'zhang-junda', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(939, 'Zhang Junqing ', 'zhang-junqing', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(940, 'Zhang Xiuhuan ', 'zhang-xiuhuan', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(941, 'Zhang Xuemei ', 'zhang-xuemei', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(942, 'Zhaoyang Hong ', 'zhaoyang-hong', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(943, 'Zhilin ', 'zhilin', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(944, 'Zhiping ', 'zhiping', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(945, 'Zhishu ', 'zhishu', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(946, 'Zhuting ', 'zhuting', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(947, 'Ziskind ', 'ziskind', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(948, 'Zita ', 'zita', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(949, 'Zohar ', 'zohar', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(950, 'Zongheng ', 'zongheng', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL),
(951, 'Zuhayr ', 'zuhayr', '2022-12-21 14:35:29', '2022-12-21 14:35:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `book_writer`
--
ALTER TABLE `book_writer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_writer_book_id_foreign` (`book_id`),
  ADD KEY `book_writer_writer_id_foreign` (`writer_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_logs_user_id_foreign` (`user_id`),
  ADD KEY `rent_logs_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `book_writer`
--
ALTER TABLE `book_writer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT untuk tabel `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=952;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `book_writer`
--
ALTER TABLE `book_writer`
  ADD CONSTRAINT `book_writer_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_writer_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`);

--
-- Ketidakleluasaan untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD CONSTRAINT `rent_logs_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `rent_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
