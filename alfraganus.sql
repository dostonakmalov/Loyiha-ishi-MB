-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 20 2024 г., 12:02
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `alfraganus`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fakultetlar`
--

CREATE TABLE `fakultetlar` (
  `id` int(11) NOT NULL,
  `Fakultet_nomi` varchar(30) NOT NULL,
  `Dekan` varchar(30) NOT NULL,
  `Talaba_soni` int(11) NOT NULL,
  `Ishchilar_soni` int(11) NOT NULL,
  `Dekan_unvoni` varchar(20) NOT NULL,
  `Dekan_uslubiy_ishlar_soni` int(11) NOT NULL,
  `Hamkorlik_soni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fanlar`
--

CREATE TABLE `fanlar` (
  `id` int(11) NOT NULL,
  `Fan_nomi` varchar(30) NOT NULL,
  `Fan_kodi` int(11) NOT NULL,
  `Fan_dasturi` tinyint(1) NOT NULL,
  `Sillabus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kafedralar`
--

CREATE TABLE `kafedralar` (
  `id` int(11) NOT NULL,
  `Kafedra_nomi` varchar(30) NOT NULL,
  `Kaf_mudiri` varchar(30) NOT NULL,
  `Fanlar_soni` int(11) NOT NULL,
  `Talaba_soni` int(11) NOT NULL,
  `Fakultet_id` int(11) NOT NULL,
  `Oqituvchilar_soni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oqituvchilar`
--

CREATE TABLE `oqituvchilar` (
  `id` int(11) NOT NULL,
  `Familiya` varchar(20) NOT NULL,
  `Ism` varchar(20) NOT NULL,
  `Sharif` varchar(20) NOT NULL,
  `Lavozimi` varchar(20) NOT NULL,
  `Unvoni` varchar(20) NOT NULL,
  `Rahbar_id` int(11) NOT NULL,
  `Kafedra_id` int(11) NOT NULL,
  `Tugilgan_yili` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `qarindoshlar`
--

CREATE TABLE `qarindoshlar` (
  `id` int(11) NOT NULL,
  `Familiya` varchar(20) NOT NULL,
  `Ism` varchar(20) NOT NULL,
  `Sharif` varchar(20) NOT NULL,
  `Qarindoshlik_turi` varchar(10) NOT NULL,
  `Talaba_id` int(11) NOT NULL,
  `Ish_joyi` varchar(60) NOT NULL,
  `Viloyat` varchar(30) NOT NULL,
  `Tuman` varchar(30) NOT NULL,
  `Holat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rahbariyat`
--

CREATE TABLE `rahbariyat` (
  `id` int(11) NOT NULL,
  `Familiya` varchar(20) NOT NULL,
  `Ism` varchar(20) NOT NULL,
  `Sharif` varchar(20) NOT NULL,
  `Lavozimi` varchar(20) NOT NULL,
  `Maoshi` float NOT NULL,
  `Qabul_vaqti` varchar(20) NOT NULL,
  `Telefoni` varchar(20) NOT NULL,
  `Fakultet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `studentlar`
--

CREATE TABLE `studentlar` (
  `id` int(11) NOT NULL,
  `Familiya` varchar(25) NOT NULL,
  `Ism` varchar(25) NOT NULL,
  `Sharif` varchar(25) NOT NULL,
  `Jinsi` varchar(5) NOT NULL,
  `Bosqich` int(11) NOT NULL,
  `Yonalish_id` int(11) NOT NULL,
  `Fakultet_id` int(11) NOT NULL,
  `Stipendiyasi` float NOT NULL,
  `Viloyat` varchar(20) NOT NULL,
  `Tuman` varchar(20) NOT NULL,
  `Guruh_nomeri` varchar(10) NOT NULL,
  `Tug_yili` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `uslubiy_ishlar`
--

CREATE TABLE `uslubiy_ishlar` (
  `id` int(11) NOT NULL,
  `Fan_id` int(11) NOT NULL,
  `Darslik` tinyint(1) NOT NULL,
  `Qollanma` tinyint(1) NOT NULL,
  `Oqituvchi_id` int(11) NOT NULL,
  `Korsatma` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `yonalishlar`
--

CREATE TABLE `yonalishlar` (
  `id` int(11) NOT NULL,
  `Yonalish_id` varchar(20) NOT NULL,
  `Kafedra_id` int(11) NOT NULL,
  `Fakultet_id` int(11) NOT NULL,
  `Talaba_soni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `uslubiy_ishlar`
--
ALTER TABLE `uslubiy_ishlar`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
