-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 02 2020 г., 12:43
-- Версия сервера: 5.6.43
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task_10_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tasks_tb`
--

CREATE TABLE `tasks_tb` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `image_alt` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `twitter_text` varchar(255) NOT NULL,
  `email_link` varchar(255) NOT NULL,
  `email_link_text` varchar(255) NOT NULL,
  `email_link_title` varchar(255) NOT NULL,
  `ban` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tasks_tb`
--

INSERT INTO `tasks_tb` (`id`, `image`, `image_alt`, `name`, `job_title`, `twitter_link`, `twitter_text`, `email_link`, `email_link_text`, `email_link_title`, `ban`) VALUES
(1, 'img/demo/authors/sunny.png', 'Sunny A.', 'Sunny A. (UI/UX Expert)', 'Lead Author', 'https://twitter.com/@myplaneticket', '@myplaneticke', 'https://wrapbootstrap.com/user/myorange', '<i class=\"fal fa-envelope\"></i>', 'Contact Sunny', 1),
(2, 'img/demo/authors/jovanni.png', 'Jovanni Lo', 'Jovanni L. (PHP Developer)', 'Partner &amp; Contributor', 'https://twitter.com/@lodev09', '@lodev09', 'https://wrapbootstrap.com/user/lodev09', '<i class=\"fal fa-envelope\"></i>', 'Contact Jovanni', 1),
(3, 'img/demo/authors/josh.png', 'Jos K.', 'Roberto R. (Rails Developer)', 'Partner &amp; Contributor', 'https://twitter.com/@sildur', '@sildu', 'https://wrapbootstrap.com/user/sildur', '<i class=\"fal fa-envelope\"></i>', 'Contact Roberto', 0),
(4, 'img/demo/authors/roberto.png', 'Jovanni Lo', 'Roberto R. (Rails Developer)', 'Partner &amp; Contributor', 'https://twitter.com/@sildur', '@sildur', 'https://wrapbootstrap.com/user/sildur', '<i class=\"fal fa-envelope\"></i>', 'Contact Roberto', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tasks_tb`
--
ALTER TABLE `tasks_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tasks_tb`
--
ALTER TABLE `tasks_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
