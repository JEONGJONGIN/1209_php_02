-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 23-12-14 17:55
-- 서버 버전: 10.4.28-MariaDB
-- PHP 버전: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `gs_db`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `gs_am_table`
--

CREATE TABLE `gs_am_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `artist` varchar(64) NOT NULL,
  `pop` text NOT NULL,
  `genre` text NOT NULL,
  `url` text NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `gs_am_table`
--

INSERT INTO `gs_am_table` (`id`, `name`, `artist`, `pop`, `genre`, `url`, `comment`, `date`) VALUES
(12, '모르는 사람', 'Zion.T', 'K-Pop', 'Others', 'https://www.youtube.com/watch?v=yd8_KD4rZio', '好きなアーティストの新曲', '2023-12-15 01:44:04'),
(13, 'クリスマスソング', 'back number', 'J-Pop', 'ROCK', 'https://www.youtube.com/watch?v=7zBeQezaz4U', '冬に必ず聴く曲', '2023-12-15 01:45:16');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `gs_am_table`
--
ALTER TABLE `gs_am_table`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `gs_am_table`
--
ALTER TABLE `gs_am_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
