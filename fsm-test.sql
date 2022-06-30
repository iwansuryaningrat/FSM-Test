-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2022 pada 07.17
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fsm-test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `attempt` int(10) UNSIGNED NOT NULL,
  `subform_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subforms`
--

CREATE TABLE `subforms` (
  `id` int(11) NOT NULL,
  `question` varchar(50) NOT NULL,
  `type` enum('mcq','essay','short','') NOT NULL,
  `topics_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subforms`
--

INSERT INTO `subforms` (`id`, `question`, `type`, `topics_id`) VALUES
(1, 'Kepanjangan dari IF?', 'short', 1),
(2, 'Kepanjangan dari HMIF?', 'essay', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `topics`
--

INSERT INTO `topics` (`id`, `name`) VALUES
(1, 'Topik 1'),
(2, 'Topik 2'),
(3, 'Topik 3'),
(4, 'Topik 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Iwan'),
(2, 'Suryaningrat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subforms_fk` (`subform_id`),
  ADD KEY `user_fk` (`user_id`);

--
-- Indeks untuk tabel `subforms`
--
ALTER TABLE `subforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_fk` (`topics_id`);

--
-- Indeks untuk tabel `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subforms`
--
ALTER TABLE `subforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `subforms_fk` FOREIGN KEY (`subform_id`) REFERENCES `subforms` (`id`),
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `subforms`
--
ALTER TABLE `subforms`
  ADD CONSTRAINT `topics_fk` FOREIGN KEY (`topics_id`) REFERENCES `topics` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
