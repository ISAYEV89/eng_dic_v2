-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 15 2024 г., 14:42
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `novichp1_eng`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(7) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verified` int(7) NOT NULL,
  `s_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `email`, `password`, `verified`, `s_id`) VALUES
(1, 'asd', 'asd', 'asd@asd.az', 'f5acfddcdac8b0b91d63894c6679fe36', 0, 0),
(2, 'Elchin', 'Isayev', 'dev.isayev@gmail.com', '990fb8f7fc992fa6e99b5368d49913bd', 0, 0),
(3, 'Yasemen', 'Ezizova', 'y.azizova00@gmail.com', '8918263f0e90ae4f87fe113482531f5b', 0, 0),
(4, 'aaa', 'aaa', 'aa@aa.az', '25d55ad283aa400af464c76d713c07ad', 0, 0),
(5, 'Nemet', 'Abdullayev', 'neymetk141@gmail.com', '01c7bee0c0a4ac4ae87f2de56169e692', 0, 0),
(6, 'Tapdıq', 'Alışov', 'alishovtapdiq@gmail.com', '5895df2edafcca8b772047d2f8034b4a', 0, 0),
(7, 'Revan', 'Gozelov', 'gozelov@gamil.com', 'd54d1702ad0f8326224b817c796763c9', 0, 0),
(8, 'misratin', 'iskandarov', 'hasan@a.az', '1bf4363b12d14006e5fb5a80df1bcd5e', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `word`
--

CREATE TABLE `word` (
  `id` int(7) NOT NULL,
  `en_word` varchar(255) NOT NULL,
  `az_word` varchar(255) NOT NULL,
  `count` int(7) NOT NULL,
  `true_count` int(7) NOT NULL,
  `false_count` int(7) NOT NULL,
  `percent` int(7) NOT NULL,
  `s_id` int(7) NOT NULL COMMENT '0 -active , 1 -archive',
  `u_id` int(7) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `word`
--

INSERT INTO `word` (`id`, `en_word`, `az_word`, `count`, `true_count`, `false_count`, `percent`, `s_id`, `u_id`, `note`) VALUES
(30, 'vvv', 'ttt', 2, 1, 1, 50, 0, 5, ''),
(31, 'Hello', 'Salam', 1, 1, 0, 100, 0, 7, ''),
(54, 'scared', 'qorxuf', 4, 2, 2, 50, 0, 8, ''),
(55, 'bad', 'pis', 2, 2, 0, 100, 0, 8, ''),
(56, 'red', 'qırmızı', 3, 3, 0, 100, 0, 8, ''),
(57, 'qorxu', 'scared', 0, 0, 0, 0, 0, 8, ''),
(67, 'Warn', 'предупреждать', 14, 14, 0, 100, 1, 2, ''),
(68, 'Stuff', 'Əşya, Вещи', 10, 10, 0, 100, 1, 2, ''),
(69, 'Common', 'Ümumi, Ortaq', 10, 10, 0, 100, 1, 2, ''),
(70, 'Deny', 'İnkar etmək', 10, 9, 1, 90, 1, 2, ''),
(71, 'Noble', 'Soylu,  zadəgan', 13, 12, 1, 92, 1, 2, ''),
(72, 'Boundary', 'Sərhəd', 12, 12, 0, 100, 1, 2, ''),
(73, 'Fetch', 'Gətirmək', 14, 14, 0, 100, 1, 2, ''),
(74, 'Obey', 'İtaət edin, Подчиняться', 15, 8, 7, 53, 0, 2, ''),
(75, 'Offer', 'Təklif', 10, 10, 0, 100, 1, 2, ''),
(76, 'Glory', 'Şöhrət', 10, 9, 1, 90, 1, 2, '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `word`
--
ALTER TABLE `word`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
