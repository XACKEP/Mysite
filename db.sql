-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2019 г., 05:34
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `main_sasha`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `name` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`name`, `id`) VALUES
('Пушкин', 1),
('Лермонтов', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `name` varchar(255) NOT NULL,
  `id` int(10) NOT NULL,
  `author_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`name`, `id`, `author_id`) VALUES
('Капитанская Дочка', 1, 1),
('Война и мир', 2, 1),
('Герой нашего времени', 3, 2),
('Какая то книга Лермонтова', 4, 2),
('Какая то книга Пушкина', 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `text` varchar(500) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `instagram`
--

CREATE TABLE `instagram` (
  `img` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `instagram`
--

INSERT INTO `instagram` (`img`, `email`, `name`, `login`, `pass`, `id`) VALUES
('images/test.jpg', 'luckyblock2015@gmail.com', 'John', 'John1111', '1111', 44),
('images/gmod.png', 'luckyblock2015@gmail.com', 'Garry', 'GMan', '111111', 52),
('images/tf2.jpg', 'luckyblock2015@gmail.com', 'Jason', 'Jason123', '123', 59),
('images/tf2.jpg', 'example@gmail.com', 'Elon Musk', 'Elon Mask228', 'password', 60),
('images/tf2.jpg', 'bedniytony@gmail.com', 'Tony Stark', 'Tony Umer :(', 'bedniytony', 62);

-- --------------------------------------------------------

--
-- Структура таблицы `music`
--

CREATE TABLE `music` (
  `name` varchar(255) NOT NULL,
  `id` int(10) NOT NULL,
  `people_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `music`
--

INSERT INTO `music` (`name`, `id`, `people_id`) VALUES
('Justin Bieber', 1, 4),
('Imagine Dragons', 2, 3),
('Snoop Dog', 3, 2),
('Моцарт', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `title` varchar(50) NOT NULL,
  `text` varchar(500) NOT NULL,
  `type` varchar(25) NOT NULL,
  `img` varchar(25) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`title`, `text`, `type`, `img`, `id`) VALUES
('Ухты как красива!!!', 'Борщь одобряет!', 'Другое', 'images/6.jpg', 23),
('Вау какая крутая картинка', 'Всем превет борщ!', 'Другое', 'images/2.png', 25),
('Офигенная картинка!!!!!', 'Борщу понравилось!!!!!', 'Другое', 'images/15.jpg', 26),
('Пенсионная Реформа', 'Рогозин объявил об отказе Роскосмоса от эксплуатации «Союза-ФГ» в конце 2019 года. Последний запуск ракеты закончился аварией https://t.co/iC4E05CFMM', 'Политика', 'images/Acer.jpg', 27),
('Far Cry New Dawn', 'Новая игра', 'Игры', 'images/2.jpg', 28),
('Крутая Игра', 'Четко', 'Игры', 'images/15.jpg', 29),
('Фильмы Топ 10', 'Крутые фильмы', 'Фильмы', 'images/2.png', 30),
('Privet', 'Рогозин объявил об отказе Роскосмоса от эксплуатации «Союза-ФГ» в конце 2019 года. Последний запуск ракеты закончился аварией https://t.co/iC4E05CFMM', 'Другое', 'images/11.jpg', 31);

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `date` date NOT NULL,
  `img` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`date`, `img`, `text`, `id`) VALUES
('2023-02-19', 'images/1.png', 'Создать сайт', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `people`
--

CREATE TABLE `people` (
  `name` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `people`
--

INSERT INTO `people` (`name`, `id`) VALUES
('Андрей', 1),
('Никита', 2),
('Катя', 3),
('Маша', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `p_text` varchar(255) NOT NULL,
  `p_img` varchar(255) NOT NULL,
  `id` int(10) NOT NULL,
  `inst_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`p_text`, `p_img`, `id`, `inst_id`) VALUES
('У меня всё работает', 'images/001_Fish-Wallpaper-HD_hkNsK33.jpg', 46, 44),
('Идеально', 'images/3D-Beach-Wallpaper-HD-Download_edJEIZH.jpg', 47, 44),
('А я Гарри, у меня тоже всё работает', 'images/Fantasy-Digital-City-25_www.FullHDWpp.com_.jpg', 48, 52),
('А я Джейсон, и у меня тоже всё работает!', 'images/Beautiful-Waterfall-Wallpaper-HD_Asw7E4B_qhFNEh3.jpg', 49, 59),
('KU', 'images/Acer.jpg', 50, 60),
('PRIVET!!!', 'images/2.png', 51, 62);

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--

CREATE TABLE `schedule` (
  `name` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schedule`
--

INSERT INTO `schedule` (`name`, `id`) VALUES
('pn_9', 1),
('pn_10', 2),
('pn_11', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sport`
--

CREATE TABLE `sport` (
  `id` int(10) NOT NULL,
  `sport` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sport`
--

INSERT INTO `sport` (`id`, `sport`) VALUES
(1, 'Плавание'),
(2, 'Спортивная гимнастика'),
(3, 'Гребля на байдарках и каноэ'),
(4, 'Легкая атлетика'),
(5, 'Фехтование'),
(6, 'Велосипедный спорт');

-- --------------------------------------------------------

--
-- Структура таблицы `sportsmans`
--

CREATE TABLE `sportsmans` (
  `id` int(10) NOT NULL,
  `sport_id` int(10) NOT NULL,
  `name` varchar(355) NOT NULL,
  `country` varchar(355) NOT NULL,
  `medals` int(10) NOT NULL,
  `year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sportsmans`
--

INSERT INTO `sportsmans` (`id`, `sport_id`, `name`, `country`, `medals`, `year`) VALUES
(1, 1, 'Майкл Фелпс', 'США', 1, 2008),
(2, 2, 'Лариса Латынина', 'СССР', 3, 1964),
(3, 3, 'Биргит Фишер', 'Германия', 2, 2004),
(4, 2, 'Савао Като', 'Япония', 1, 1976),
(5, 1, 'Дженни Томпсон', 'США', 3, 2000),
(6, 4, 'Усэйн Болт', 'Ямайка', 1, 2015),
(7, 2, 'Вера Чаславска', 'Чехословакия', 2, 1968),
(8, 5, 'Эдоардо Манджаротти', 'Италия', 2, 1951),
(9, 6, 'Крис Хой', 'Великобритания', 1, 2012),
(10, 1, 'Эми Ван Дайкен', 'США', 1, 2000);

-- --------------------------------------------------------

--
-- Структура таблицы `store`
--

CREATE TABLE `store` (
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `store`
--

INSERT INTO `store` (`img`, `name`, `price`, `id`) VALUES
('images/test.jpg', 'Maney', '27 000', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `name` varchar(255) NOT NULL,
  `id` int(10) NOT NULL,
  `sched_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`name`, `id`, `sched_id`) VALUES
('Андрей', 1, 2),
('Миша', 2, 1),
('Никита', 3, 3),
('Коля', 4, 1),
('Петя', 5, 2),
('Вася', 6, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`email`, `login`, `pass`, `avatar`, `id`) VALUES
('namber1@gmail.com', 'iamnamber1', '1111', 'images/avatar.png', 1),
('askasamsonov16@gmail.com', 'John1111', '1111', 'images/avatar.png', 2),
('email@mail.ru', 'email', 'email', 'images/avatar.png', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `instagram`
--
ALTER TABLE `instagram`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sportsmans`
--
ALTER TABLE `sportsmans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `instagram`
--
ALTER TABLE `instagram`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `music`
--
ALTER TABLE `music`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `sportsmans`
--
ALTER TABLE `sportsmans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `store`
--
ALTER TABLE `store`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
