-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 01 2020 г., 10:32
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `animals`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `login` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `animal`
--

CREATE TABLE `animal` (
  `id` int(100) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(50) NOT NULL,
  `pol` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `okras` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yxo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poroda` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sherst` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hwost` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razmer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primeti` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `haracter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_sterl` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ves` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rost` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voler` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metka` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fio_vrach` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomer_act` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_post` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sostoyanie` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_create` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT current_timestamp(),
  `ukol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `animal`
--

INSERT INTO `animal` (`id`, `name`, `year`, `pol`, `okras`, `yxo`, `poroda`, `sherst`, `hwost`, `razmer`, `primeti`, `haracter`, `data_sterl`, `img`, `ves`, `rost`, `vid`, `voler`, `metka`, `fio_vrach`, `social`, `nomer_act`, `data_post`, `sostoyanie`, `data_create`, `ukol`) VALUES
(1, 'Бобик', 5, 'мужской', 'черный', 'прямые', 'Шпиц', 'прямая', 'прямой', 'маленький', 'порвано левое ухо', 'Злой', '2020-10-06', 'images/dog.png', '23', '40', 'Собака', '38', '1324ksdf423kj', 'Филатов А.С', 'Нет', '123', '2020-10-05', 'Отличное', '0000-00-00 00:00:00', '1'),
(2, 'Мишка', 10, 'мужской', 'белый', 'стоячие', 'метис', 'короткая', 'обычный', 'средний', 'нет', 'Злой', '2020-10-29', 'images/dog3.jpg', '20', '50', 'собака', '2', '23р4и34ри23423и', 'Филатов А.С', 'Да', '124', '0000-00-00', 'Удовлетворительное', '0000-00-00 00:00:00', '1'),
(3, 'Варя ', 11, 'женский', 'рыжий', 'полустоячие', 'метис', 'короткая', 'обычный', 'средний', 'нет', 'добрый', '2020-10-14', 'images/dog2.jpg', '11', '63', 'собака', '39', '68778ропро87', 'Филатов А.С', 'нет', '125', '0000-00-00', 'Отличное', '0000-00-00 00:00:00', '1'),
(4, 'Кася', 1, 'женский', 'серый', 'стоячие', 'метис', 'короткая', 'обычный', 'маленький', 'нет', 'Игривый', '2020-10-16', 'images/cat2.jpg', '3', '26', 'кошка', '1', '34щ5р4ще34ще', 'Филатов А.С', 'нет', '126', '0000-00-00', 'Удовлетворительное', '0000-00-00 00:00:00', '0'),
(5, 'Гоша', 3, 'мужской', 'черный', 'стоячие', 'метис', 'средняя', 'обычный', 'маленький', 'нет', 'Игривый', '2020-10-06', 'images/cat.jpeg', '3,2', '25', 'кот', '2', 'пакп34кп34435', 'Филатов А.С', 'да', '128', '0000-00-00', 'Удовлетворительное', '0000-00-00 00:00:00', '1'),
(6, 'Мухтар', 5, 'мужской', 'черный', 'стоячие', 'овчарка', 'короткая', 'обычный', 'средний', 'шрам на правом ухе', 'послушный', '2020-10-08', 'images/dog4.jpg', '13', '45', 'собака', '12', 'нп3к8239к23ое9к23о9', 'Филатов А.С', 'да', '129', '0000-00-00', 'Отличное', '0000-00-00 00:00:00', '1'),
(7, 'Игорь', 6, 'мужской', 'тигровый', 'стоячие', 'метис', 'короткая', 'обычный', 'маленький', 'нет', 'Добрый', '2020-10-02', 'images/cat3.jpg', '8', '24', 'кот', '2', '23оп4872п34п', 'Филатов А.С', 'да', '130', '0000-00-00', 'Удовлетворительное', '0000-00-00 00:00:00', '1'),
(8, 'Волька', 5, 'мужской', 'рыжий', 'стоячие', 'метис', 'средняя', 'обычный', 'маленький', 'нет', 'Обычный', '2020-10-29', 'images/cat4.jpg', '14', '28', 'кот', '2', '23гнпапшг2р3шркш23', 'Филатов А.С', 'да', '131', '0000-00-00', 'Отличное', '0000-00-00 00:00:00', '0'),
(16, 'Бобик', 3, 'Мужской', 'Коричневый', 'Короткие', 'Овчарка', 'Короткая', 'Длинный', 'Большой', 'Зеленые глаза', 'Добрый', '22.02.2000', 'images/dog_dop.jpg', '5', '36', 'Собака', '44', '234вываыв', 'Филатов А.С', 'Да', '678', '20.02.2000', 'Отличное', '01.11.2020', '0'),
(17, 'Жора', 3, 'Мужской', 'Белый', 'Короткие', 'Будьдог', 'короткая', 'короткий', 'Маленький', 'лишний вес', 'Агрессивный', '01.11.2020', 'images/buldog.jpg', '7', '20', 'Собака', '45', '932', 'Филатов А.С.', 'Нет', '457', '02.11.2020', 'Удовлетворительное', 'Sunday 1st of November 2020 05:33:49 AM', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `applic`
--

CREATE TABLE `applic` (
  `id` int(100) NOT NULL,
  `mail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_anim` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `time_create` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `applic`
--

INSERT INTO `applic` (`id`, `mail`, `name`, `second_name`, `adres`, `nomer`, `id_anim`, `status`, `time_create`) VALUES
(1, 'asd', 'asd', 'sad', 'sad', '123', 1, 1, 'Sunday 1st of November 2020 00:10:52 AM'),
(2, 'sti@mail.ru', 'asdasd', 'Спиридонов', '1', '9625108978', 1, 1, 'Sunday 1st of November 2020 01:12:52 AM'),
(4, 'sti@mail.ru', 'asdasd', 'Спиридонов', 'asd', '9625108978', 1, 1, 'Sunday 1st of November 2020 01:22:52 AM'),
(5, '1admin@mail.ru', 'Artem', 'spiridonov', 'asd', '9625108978', 1, 1, 'Sunday 1st of November 2020 02:15:52 AM'),
(6, 'rest@mail.ru', 'Владислав', 'Баранов', 'Проспект мира', '89042026651', 1, 0, 'Sunday 1st of November 2020 03:56:52 AM'),
(7, 'sti@mail.ru', 'Artem', 'Спиридонов', 'asd', '9625108978', 1, 1, 'Sunday 1st of November 2020 04:04:52 AM'),
(8, 'sti@mail.ru', 'asdasd', 'Спиридонов', '1', '9625108978', 1, 1, 'Sunday 1st of November 2020 04:10:52 AM'),
(9, '1admin@mail.ru', 'Artem', 'spiridonov', 'asd', '9625108978', 1, 1, 'Sunday 1st of November 2020 05:10:52 AM'),
(10, '1admin@mail.ru', 'Artem', 'spiridonov', 'asd', '9625108978', 1, 1, 'Sunday 1st of November 2020 05:30:52 AM'),
(11, 'sti@mail.ru', 'asdasd', 'Спиридонов', '1', '9625108978', 1, 1, 'Sunday 1st of November 2020 05:59:52 AM'),
(12, 'sti@mail.ru', 'asdasd', 'Спиридонов', '1', '9625108978', 1, 1, 'Sunday 1st of November 2020 06:06:52 AM'),
(13, 'olll@mail.ru', 'Бобик', 'Петров', 'Есенина', '3624589312', 8, 1, 'Sunday 1st of November 2020 06:10:52 AM'),
(14, 'steamproman@mail.ru', 'Artem', 'Спиридонов', 'Акимова 60', '3624589312', 2, 1, 'Sunday 1st of November 2020 09:27:48 AM'),
(15, 'student@mail.ru', 'Artem', 'Спиридонов', 'Акимова 60', '3624589312', 2, 1, 'Sunday 1st of November 2020 09:38:18 AM'),
(16, 'student@mail.ru', 'Artem', 'Спиридонов', 'Акимова 60', '3624589312', 5, 1, 'Sunday 1st of November 2020 09:40:29 AM');

-- --------------------------------------------------------

--
-- Структура таблицы `priuty`
--

CREATE TABLE `priuty` (
  `id` int(11) NOT NULL,
  `name_priut` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `priuty`
--

INSERT INTO `priuty` (`id`, `name_priut`, `adress`, `org`) VALUES
(1, 'Искра', 'г.Москва, ул.Искры, вл. 23А', 'Префектура СВАО (ГБУ «Автомобильные дороги СВАО»)');

-- --------------------------------------------------------

--
-- Структура таблицы `reestr`
--

CREATE TABLE `reestr` (
  `id/pp` int(100) NOT NULL,
  `id_cart` int(100) NOT NULL,
  `name_animal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_animal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metka` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datatime_post` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reestr`
--

INSERT INTO `reestr` (`id/pp`, `id_cart`, `name_animal`, `type_animal`, `pol`, `metka`, `datatime_post`) VALUES
(1, 1, 'барсик', '1', 'Девочка', '123', '2020-10-13'),
(1, 1, 'барсик', '1', 'Девочка', '123', '2020-10-13');

-- --------------------------------------------------------

--
-- Структура таблицы `type_animals`
--

CREATE TABLE `type_animals` (
  `id` int(11) NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `type_animals`
--

INSERT INTO `type_animals` (`id`, `type`) VALUES
(1, 'Кошка'),
(2, 'Собака');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `login` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'user', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `applic`
--
ALTER TABLE `applic`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `priuty`
--
ALTER TABLE `priuty`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `type_animals`
--
ALTER TABLE `type_animals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `applic`
--
ALTER TABLE `applic`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `priuty`
--
ALTER TABLE `priuty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `type_animals`
--
ALTER TABLE `type_animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
