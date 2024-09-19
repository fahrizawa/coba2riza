-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table uas_fahriza.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.cache: ~0 rows (approximately)
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1721217577),
	('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1721217577;', 1721217577),
	('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:4;', 1721220100),
	('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1721220100;', 1721220100);

-- Dumping structure for table uas_fahriza.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.cache_locks: ~0 rows (approximately)

-- Dumping structure for table uas_fahriza.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table uas_fahriza.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.jobs: ~0 rows (approximately)

-- Dumping structure for table uas_fahriza.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.job_batches: ~0 rows (approximately)

-- Dumping structure for table uas_fahriza.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(225) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table uas_fahriza.kategori: ~0 rows (approximately)
INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
	(1, 'bensin', '2024-07-17 17:07:18', '2024-07-17 17:07:21'),
	(2, 'solar', '2024-07-17 17:07:51', '2024-07-17 17:07:53'),
	(3, 'listrik', NULL, NULL);

-- Dumping structure for table uas_fahriza.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1);

-- Dumping structure for table uas_fahriza.mobil
CREATE TABLE IF NOT EXISTS `mobil` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_kategori` bigint NOT NULL DEFAULT '0',
  `merk_mobil` varchar(225) DEFAULT NULL,
  `gambar` text,
  `deskripsi` text,
  `lampiran` text,
  `lampiran_nama` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__kategori` (`id_kategori`),
  CONSTRAINT `FK__kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table uas_fahriza.mobil: ~0 rows (approximately)
INSERT INTO `mobil` (`id`, `id_kategori`, `merk_mobil`, `gambar`, `deskripsi`, `lampiran`, `lampiran_nama`, `created_at`, `updated_at`) VALUES
	(1, 1, 'honda,hrv', '01J307CD6CTS0ZNKYJCHYS555D.png', 'Honda HRV tersedia dalam pilihan mesin Bensin di Indonesia Crossover baru dari Honda hadir dalam 4 varian. Bicara soal spesifikasi mesin Honda HRV, ini ditenagai dua pilihan mesin Bensin berkapasitas 1498 cc. HRV tersedia dengan transmisi CVT tergantung variannya. HRV adalah Crossover 5 seater dengan panjang 4385 mm, lebar 1790 mm, wheelbase 2610 mm.', '[]', '[]', NULL, '2024-07-17 11:31:30'),
	(2, 2, 'toyota,inova', '01J307QV7JNPJNB1WXKWYC2NZK.jpg', 'Innova Reborn Diesel menunjukkan efisiensi bahan bakar yang luar biasa. Dalam kota, konsumsi bahan bakar mencapai 12,2 km per liter bensin, sedangkan di luar kota mencapai 15,7 km per liter. Untuk kecepatan konstan 100 km/jam di jalan tol, jarak tempuh mencapai 19 km per liter disel', '["01J307FJVATFP8TD5VHN1KTGA4.pdf"]', '{"01J307FJVATFP8TD5VHN1KTGA4.pdf":"inova.pdf"}', NULL, '2024-07-17 11:37:45'),
	(3, 3, 'bmw,i4 eDrive35', '01J307NH8C4FMWZPK6RRHA6KRT.jpg', 'Perhitungannya memperhitungkan konsumsi dan kinerja pengisian daya. Nilai mengacu pada start baterai 29-33 derajat Celcius dan suhu sekitar dengan nilai sertifikasi tidak termasuk konsumen tambahan tambahan seperti pemanas kursi, layar, AC. Konsumsi individu dapat bervariasi (misalnya tergantung pada profil mengemudi, suhu, kondisi sekitar) serta kinerja pengisian daya yang dapat dicapai secara individual (misalnya tergantung pada kondisi pengisian daya baterai, AC kendaraan). Konsumsi didasarkan pada kasus terbaik WLTP. Performa pengisian daya didasarkan pada performa pengisian daya semaksimal mungkin (tergantung pada jenis pengisian daya dan kendaraan).', '["01J307NH8T0N42MFJQH8GQ1Q7F.pdf"]', '{"01J307NH8T0N42MFJQH8GQ1Q7F.pdf":"default_273_IMG_20211208_WA0079.b1307581.pdf"}', NULL, '2024-07-17 11:36:29'),
	(4, 2, 'fortuner', '01J308ZD654N5H928PJJ48QNPF.jpg', 'Toyota Fortuner 2024 adalah 7 Seater SUV yang tersedia dalam daftar harga Rp 726,85 Juta di Indonesia. It is available in 6 variants, 3 engine, and 2 transmissions option: Manual dan Otomatis in the Indonesia. Dimensi Fortuner adalah 4795 mm L x 1855 mm W x 1835 mm H. Lebih dari 62 pengguna telah memberikan penilaian untuk Fortuner berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Pesaing terdekat Toyota Fortuner adalah Pajero Sport, Jimny, X Trail dan CX-30. Cicilan bulanan terendah dimulai dari Rp 58,68 Juta (selama 12 bulan).', '["01J308ZD6P800G2JCV24MGQV9S.pdf"]', '{"01J308ZD6P800G2JCV24MGQV9S.pdf":"2021-toyota-fortuner-gr-sport-01-1628497794 (1).pdf"}', '2024-07-17 11:59:21', '2024-07-17 11:59:21');

-- Dumping structure for table uas_fahriza.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table uas_fahriza.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.sessions: ~3 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('EomvyetAs2ehJgw3p5LsAoLV7Wxs3L9V4iy1oB3B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjBNQkJYSm1WSUQzUXZ6b2dqSEVSVVNMckRMNzlkSDhJMHJiVHNVRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721215866),
	('v7KnQAWkf9tOJA0u2MNybIlct5qSRnNkQ9cEV8VX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiY0tqWm1FRWVNekRrQzRtamlIMU83T1psaVZBemxSdlhkUGt2MmpFYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tb2JpbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkZnRTSC5Ub0ZjQXp0b3RuNWUvU3pjdVZXQzZPbnkyYVk5R3E4cVVUaVo1MWd0LnAuZS5Wb20iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1721217651),
	('VTO30AS0CxOSVj7o7aGaBGvaZDfvNNFK1qPmkJ5x', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUHhOYjdnU0xEb1pKQkZydFdGclMxMVdKVzR4QVZqdTVLVDdncE5CdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9rYXRlZ29yaXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGZ0U0guVG9GY0F6dG90bjVlL1N6Y3VWV0M2T255MmFZOUdxOHFVVGlaNTFndC5wLmUuVm9tIjt9', 1721220088);

-- Dumping structure for table uas_fahriza.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_fahriza.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Fahriza', '220101014@mhs.udb.ac.id', NULL, '$2y$12$ftSH.ToFcAztotn5e/SzcuVWC6Ony2aY9Gq8qUTiZ51gt.p.e.Vom', NULL, '2024-07-17 04:22:12', '2024-07-17 04:22:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
