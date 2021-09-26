-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.57
-- Время создания: Сен 26 2021 г., 09:33
-- Версия сервера: 5.7.34-37
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `f0578562_dd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `childhome`
--

CREATE TABLE `childhome` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `town` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `children`
--

CREATE TABLE `children` (
  `id` int(11) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `patronic` varchar(50) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `children`
--

INSERT INTO `children` (`id`, `secondname`, `name`, `patronic`, `birthday`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', '2011-08-02'),
(2, 'Попов', 'Никита', 'Юрьевич', '2013-07-14'),
(3, 'Мешков', 'Степен', 'Геннадьевич', '2016-10-22'),
(4, 'Мишустин', 'Василий', 'Иванович', '2012-09-25'),
(5, 'Михайлов', 'Михаил', 'Михайлович', '2010-04-25'),
(6, 'Пучков', 'Виктор', 'Петрович', '2009-09-26');

-- --------------------------------------------------------

--
-- Структура таблицы `child_childhome`
--

CREATE TABLE `child_childhome` (
  `child_id` int(11) NOT NULL,
  `childhome_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `child_event`
--

CREATE TABLE `child_event` (
  `child_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `child_event`
--

INSERT INTO `child_event` (`child_id`, `event_id`, `status`) VALUES
(1, 23, 0),
(2, 42, 0),
(3, 47, 0),
(3, 48, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `photo_url` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `photo_url`, `datetime`, `address`) VALUES
(1, 'Мероприятие', '+++++', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, пр. Ленина 22а'),
(2, 'Мероприятие', '+++++', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, пр. Ленина 22а'),
(3, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(4, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(5, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(6, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(7, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(8, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(9, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(10, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(11, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(12, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(13, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(14, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(15, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(16, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(17, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(18, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(19, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(20, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(21, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(22, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(23, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(24, 'Тренировка по футболу', 'Всех вас ждем на бесплатной тренировке', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(25, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(26, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(27, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(28, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(29, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(30, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(31, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(32, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(33, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(34, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(35, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(36, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(37, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(38, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(39, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(40, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(41, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(42, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(43, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(44, 'Футбольный матч', 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'http://f0578562.xsph.ru/imgs/football.png', '2021-09-25 16:27:55', 'Г. Волгоград, городской стадион'),
(45, 'Курсы футбольных комментаторов', 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'http://f0578562.xsph.ru/imgs/fcomm.png', '2021-09-25 16:28:33', 'Г. Волгоград, городской стадион'),
(46, 'Курсы футбольных комментаторов', 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'http://f0578562.xsph.ru/imgs/fcomm.png', '2021-09-25 16:28:33', 'Г. Волгоград, городской стадион'),
(47, 'Курсы футбольных комментаторов', 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'http://f0578562.xsph.ru/imgs/fcomm.png', '2021-09-25 16:28:33', 'Г. Волгоград, городской стадион'),
(48, 'Курсы футбольных комментаторов', 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'http://f0578562.xsph.ru/imgs/fcomm.png', '2021-09-25 16:28:33', 'Г. Волгоград, городской стадион'),
(49, 'Курсы футбольных комментаторов', 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'http://f0578562.xsph.ru/imgs/fcomm.png', '2021-09-25 16:28:33', 'Г. Волгоград, городской стадион'),
(50, 'Курсы футбольных комментаторов', 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'http://f0578562.xsph.ru/imgs/fcomm.png', '2021-09-25 16:28:33', 'Г. Волгоград, городской стадион'),
(51, 'Курсы футбольных комментаторов', 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'http://f0578562.xsph.ru/imgs/fcomm.png', '2021-09-25 16:28:33', 'Г. Волгоград, городской стадион'),
(52, 'Курсы футбольных комментаторов', 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'http://f0578562.xsph.ru/imgs/fcomm.png', '2021-09-25 16:28:33', 'Г. Волгоград, городской стадион'),
(53, 'Фильм про войну', 'Этот фильм не оставит тебя равнодушным!!!', 'http://f0578562.xsph.ru/imgs/war.png', '2021-09-26 01:58:39', 'Кинотеатр \"Победа\"'),
(54, 'Военная история', 'Это история об одной малоизвестной войне', 'http://f0578562.xsph.ru/imgs/war.png', '2021-09-26 01:59:17', 'Кинотеатр \"Победа\"'),
(55, 'Баскетбол', 'Хочешь поиграть в баскетбол? Иди к нам!!!', 'http://f0578562.xsph.ru/imgs/basketball.png', '2021-09-26 02:02:14', 'Стадион'),
(56, 'День театра', 'Давно хотел в театр? Настал твой день!!!', 'http://f0578562.xsph.ru/imgs/theatre.png', '2021-09-26 02:03:38', 'Театр'),
(57, 'День театра', 'Давно хотел в театр? Настал твой день!!!', 'http://f0578562.xsph.ru/imgs/theatre.png', '2021-09-26 02:03:43', 'Театр');

-- --------------------------------------------------------

--
-- Структура таблицы `event_level_tag`
--

CREATE TABLE `event_level_tag` (
  `event_id` int(11) NOT NULL,
  `level_tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event_level_tag`
--

INSERT INTO `event_level_tag` (`event_id`, `level_tag_id`) VALUES
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(10, 7),
(11, 7),
(12, 7),
(13, 7),
(14, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 10),
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10),
(51, 10),
(52, 10),
(54, 11),
(55, 7),
(57, 4),
(56, 4),
(53, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `event_subject_tag`
--

CREATE TABLE `event_subject_tag` (
  `event_id` int(11) NOT NULL,
  `subject_tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event_subject_tag`
--

INSERT INTO `event_subject_tag` (`event_id`, `subject_tag_id`) VALUES
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(55, 5),
(54, 3),
(57, 14),
(56, 14),
(53, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `level_tag`
--

CREATE TABLE `level_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `level_tag`
--

INSERT INTO `level_tag` (`id`, `name`, `parent_tag_id`) VALUES
(1, 'Знание', NULL),
(2, 'Понимание', NULL),
(3, 'Применение', NULL),
(4, 'Смотреть', 1),
(5, 'Слушать', 1),
(6, 'Читать', 2),
(7, 'Тренироваться', 3),
(8, 'Петь', 3),
(9, 'Рисовать', 3),
(10, 'Выступать', 3),
(11, 'Анализировать', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `paper`
--

CREATE TABLE `paper` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` text NOT NULL,
  `papertext` text NOT NULL,
  `photo_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `subject_tag`
--

CREATE TABLE `subject_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subject_tag`
--

INSERT INTO `subject_tag` (`id`, `name`, `parent_tag_id`) VALUES
(1, 'Спорт', NULL),
(2, 'Музыка', NULL),
(3, 'Техника', NULL),
(4, 'Футбол', 1),
(5, 'Баскетбол', 1),
(6, 'Теннис', 1),
(7, 'Бег', 1),
(8, 'Симфония', 2),
(9, 'Рок', 2),
(10, 'Джаз', 2),
(11, 'Рэп', 2),
(12, 'Роботы', 3),
(13, 'Авто-мото', 3),
(14, 'Театр', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `volunteer`
--

CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `patronic` varchar(50) NOT NULL,
  `career_start` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `childhome`
--
ALTER TABLE `childhome`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `child_childhome`
--
ALTER TABLE `child_childhome`
  ADD KEY `childhome_id` (`childhome_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Индексы таблицы `child_event`
--
ALTER TABLE `child_event`
  ADD KEY `child_id` (`child_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Индексы таблицы `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_level_tag`
--
ALTER TABLE `event_level_tag`
  ADD KEY `event_id` (`event_id`),
  ADD KEY `level_tag_id` (`level_tag_id`);

--
-- Индексы таблицы `event_subject_tag`
--
ALTER TABLE `event_subject_tag`
  ADD KEY `event_id` (`event_id`),
  ADD KEY `subject_tag_id` (`subject_tag_id`);

--
-- Индексы таблицы `level_tag`
--
ALTER TABLE `level_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_tag_id` (`parent_tag_id`);

--
-- Индексы таблицы `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subject_tag`
--
ALTER TABLE `subject_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_tag_id` (`parent_tag_id`);

--
-- Индексы таблицы `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `childhome`
--
ALTER TABLE `childhome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `children`
--
ALTER TABLE `children`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `level_tag`
--
ALTER TABLE `level_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `paper`
--
ALTER TABLE `paper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `subject_tag`
--
ALTER TABLE `subject_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `child_childhome`
--
ALTER TABLE `child_childhome`
  ADD CONSTRAINT `child_childhome_ibfk_1` FOREIGN KEY (`childhome_id`) REFERENCES `childhome` (`id`),
  ADD CONSTRAINT `child_childhome_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `children` (`id`);

--
-- Ограничения внешнего ключа таблицы `child_event`
--
ALTER TABLE `child_event`
  ADD CONSTRAINT `child_event_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `children` (`id`),
  ADD CONSTRAINT `child_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_level_tag`
--
ALTER TABLE `event_level_tag`
  ADD CONSTRAINT `event_level_tag_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `event_level_tag_ibfk_2` FOREIGN KEY (`level_tag_id`) REFERENCES `level_tag` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_subject_tag`
--
ALTER TABLE `event_subject_tag`
  ADD CONSTRAINT `event_subject_tag_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `event_subject_tag_ibfk_2` FOREIGN KEY (`subject_tag_id`) REFERENCES `subject_tag` (`id`);

--
-- Ограничения внешнего ключа таблицы `level_tag`
--
ALTER TABLE `level_tag`
  ADD CONSTRAINT `level_tag_ibfk_1` FOREIGN KEY (`parent_tag_id`) REFERENCES `level_tag` (`id`);

--
-- Ограничения внешнего ключа таблицы `subject_tag`
--
ALTER TABLE `subject_tag`
  ADD CONSTRAINT `subject_tag_ibfk_1` FOREIGN KEY (`parent_tag_id`) REFERENCES `subject_tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
