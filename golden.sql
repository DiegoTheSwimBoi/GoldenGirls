-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 22 2022 г., 06:06
-- Версия сервера: 5.7.33
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `golden`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `country`, `flag`) VALUES
(1, 'Россия', 'ru'),
(2, 'Америка', 'us'),
(3, 'Китай', 'cn'),
(4, 'Испания', 'es');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('video','image') COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `image`, `type`, `post_id`) VALUES
(1, 'post/images/YweOylWhQIn7J60z4jeSNuCMBTbqCJcFirsnnNCJ.png', 'image', 1),
(2, 'post/images/B7sqK0NoLS7sQbKsNybit2j4taEd1AhhjEZ2KQzd.png', 'image', 2),
(3, 'post/images/AeRx7vH3Tm84KeFveUvrzMrHwaslXNoBYNTBYOqS.png', 'image', 1),
(4, 'post/images/n0XV5aFTPLcwqjubKnAyJxobPVUj8cp3cjMtK2sj.png', 'image', 1),
(5, 'post/images/R280YVeminppF9V5MLcyew2IPk6wKeWaOfdzrM8l.png', 'image', 1),
(6, 'post/images/Ori65eRaYzsx7dyUUVsyhw6t1ZCsRPHPVDEoJweF.png', 'image', 2),
(7, 'post/images/WqXPDzFuXaQKBaLN1HLr5UmTFWiKvLCkprf155kg.png', 'image', 2),
(8, 'post/images/E84heNUcHFHEgjEnjMNqwOTNdlchPLh3i2oHMyOw.png', 'image', 2),
(9, 'post/images/UrpKyQ3ZvtWrnqMUWT63UPhu0vGe6hMCtBRsZJFC.png', 'image', 3),
(10, 'post/images/1K9QE7WZLg58sQ0FRDx2wmpI5m7jVz08B5e7bR8q.png', 'image', 3),
(11, 'post/images/qD0nD6mSjQJ5LqhOdPKtIYDyKJHNuFZaEI5kdd5T.png', 'image', 3),
(12, 'post/images/oLRFf7BgUEwKj9xQQuMwDpDlnOC0snqvp2XtPAGl.png', 'image', 3),
(13, 'post/images/eKVP01hXlVebZPdU6GAtIdR8QOteHplrg3yCdCoY.png', 'image', 4),
(14, 'post/images/CunbsSIjHDQOLR4bM1epIjv1Q8cZQ4a11HQ2GeGr.png', 'image', 4),
(15, 'post/images/njgLYHDI8O3xHNigmbFx2kivpT7Av6MtnLtWrDHm.png', 'image', 4),
(16, 'post/images/GQdfT2YTG2wWVEL9BLq52WoSUpE0kqGEhGCZMjfT.png', 'image', 4),
(17, 'post/images/CHKeCiol3XmkEfYJEl1d1CV667Zt6knt0rjnHnOX.png', 'image', 5),
(18, 'post/images/HBjlPq7k2h22mEtJIh9qnhSZPoxY2lKw7jVoixsK.png', 'image', 5),
(19, 'post/images/8YVA0i9Pahz5BEhbzvoclBVCrM1Vj0l3rFAzNAlt.png', 'image', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `likes` int(11) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `likes`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 21, 1, NULL, '2022-06-11 06:34:14'),
(2, 23, 2, NULL, NULL),
(3, 9, 3, NULL, NULL),
(4, 12, 4, '2022-06-11 09:43:19', '2022-06-11 10:21:08'),
(5, 0, 5, '2022-06-11 11:36:30', '2022-06-11 11:36:30');

-- --------------------------------------------------------

--
-- Структура таблицы `likes_user`
--

CREATE TABLE `likes_user` (
  `likes_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `likes_user`
--

INSERT INTO `likes_user` (`likes_id`, `user_id`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_03_01_060852_create_roles_table', 1),
(3, '2022_03_01_061016_create_countries_table', 1),
(4, '2022_03_01_061053_create_users_table', 1),
(5, '2022_03_01_061206_create_topics_table', 1),
(6, '2022_03_01_061243_create_posts_table', 1),
(7, '2022_03_01_061245_create_likes_table', 1),
(8, '2022_03_01_061319_create_images_table', 1),
(9, '2022_03_01_061453_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `article`, `made_by`, `description`, `content`, `facts`, `country_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 'Дороти Зборнак', '<div class=\"mb-3\">Первое появление: <small>Пилотная серия</small></div>\r\n<div class=\"mb-3\">Последнее появление: <small>Похоже на старые времена (Золотой дворец, 1 сезон)</small></div>', 'Актриса: Би Артур', 'Дороти сильная, остроумная, саркастичная, иногда пугающая и, возможно, самая приземленная из четырех девушек в доме.', '<div class=\"mt-3\">\r\n<p>Доротея «Дороти» Зборнак-Холлингсворт (урожденная / девичья фамилия Петрилло), которую изображает покойная Беатрис Артур (ранее Бернис Франкель , родилась 13 мая 1922 г. - скончалась 25 апреля 2009 г.), является одним из четырех главных вымышленных персонажей. 1985–1992 Комедия положений и ситком NBC «Золотые девушки» и ее побочный продукт «Золотой дворец» .\r\n</p></div>\r\n\r\n<div class=\"mt-3\"><p>Она появилась в 8 сезонах и всего в 182 сериях - «Золотые девушки» (всего 180 серий) и «Золотой дворец» (появилась только в 2 из 24 серий).</p></div>\r\n\r\n<div class=\"mt-3\"><p>В 1000-м выпуске Entertainment Weekly персонаж Дороти Зборнак-Холлингсворт был выбран в качестве «бабушки» для «Идеальной телевизионной семьи».</p></div>\r\n\r\n<div class=\"mt-3\"><p>В эпизодах воспоминаний в различных эпизодах гораздо более молодую Дороти играет актриса Линни Грин .</p></div>\r\n\r\n<div class=\"mt-3\"><p>Дороти Зборнак (Дороти Петрилло была ее прежней или девичьей фамилией) родилась в итало-американской семье 31 июля 1931 года в Бруклине, Нью-Йорк, прямо на столике с пинохлем в баре McSoley\'s Bar (как заявила София в 3 сезоне, эпизоде). 5, Ничего не бояться, кроме страха перед самим собой »(который транслировался по стране 24 октября 1987 г.). Ее родители-иммигранты из Италии - София Петрилло и Сальвадор «Сэл» Петрилло . Астрологический знак Дороти, как она заявляет в 4 сезоне, 7 серии, Стэн Takes a Wife \'(национальный эфир 7 января 1989 г.) - Лев.</p></div>\r\n\r\n<div class=\"mt-3\"><p>У Дороти было два младших брата и сестры: младший брат, Филипп «Фил» Петрилло , который был откровенным халявщиком и проводил много времени, интересуясь переодеванием в другую одежду. Хотя о Филе мало что известно или сказано. К сожалению, Фил скончался в сериале из-за сердечного приступа в возрасте около 55 лет примерно в декабре 1990 года, когда он переодевался в женскую одежду в магазине (похороны Фила в сериале состоялись в 6 сезоне, 12 серии). , «Месть Эббтайда » (который вышел в эфир по всей стране 15 декабря 1990 г.) На протяжении всего сериала зрители никогда не встречали Фила.</p></div>\r\n\r\n<div class=\"mt-3\"><p>У Дороти также была младшая сестра Глория Петрилло-Харкер , которая вышла замуж за деньги, переехала со своим богатым мужем в Калифорнию и с которой Дороти рассталась. На протяжении всего сериала зрители несколько раз встречают Глорию.</p></div>', '<li>В молодые годы Дороти страдала от довольно низкой самооценки. У нее был предыдущий бойфренд, который эмоционально оскорблял ее, когда она была младше в старшей школе.</li>\r\n<li>В сезоне 5, эпизоде ​​​​13 «У Мэри есть ягненок » (который транслировался по стране 6 января 1990 года) у Дороти в детстве было другое прозвище от других детей, которые называли ее «Лось».</li>\r\n<li>Прозвище Дороти - «Кошечка», как ее часто называла ее мать София.</li>\r\n<li>В детстве Дороти была настоящим «книжным червем» и отличницей в старшей школе, согласно 6-му сезону, 20-й серии.</li>', 1, 1, '2022-06-09 08:27:46', '2022-06-11 06:36:14'),
(2, 'София Петрилло', '<div class=\"mb-3\">Первое появление: <small>Помолвка</small></div>\r\n\r\n<div class=\"mb-3\">Последнее появление: <small>Жизнь продолжается » ( Пустое гнездо , 7 сезон)</small></div>', 'Актриса: Эстель Гетти', 'София наиболее известна своими остротами, унижениями и наглыми замечаниями, часто комментируя отсутствие у Дороти личной жизни, распущенность Бланш и глупость Роуз. Однако, несмотря на ее резкую критику дочери и соседей по дому, она глубоко их любит и заботится о них; она даже считает Роуз и Бланш суррогатными дочерьми. Другие женщины обычно обращаются к Софии за советом, которым София очень охотно делится, обычно начиная со своей крылатой фразы: «Представь себе, Сицилия…»', '<div class=\"mt-3\">\r\n<p>София Петрилло (урожденная Гризанти ) (также известная как София Вайншток ) — вымышленный персонаж из телесериала «Золотые девушки» и его спин-оффов «Золотой дворец» , « Пустое гнездо» и « Медсестры » . Ее изображала покойная Эстель Гетти . Она, безусловно, любимица многих поклонников шоу.</p></div>\r\n\r\n<div class=\"mt-3\"><p>София родилась 17 апреля 1905 года на Сицилии вместе со своими братьями Анджело и Вито и сестрами Анджелой и Региной . </p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Выяснилось, что ее 50-летие было в апреле 1956 года в эпизоде ​​​​«Кусок пирога» (однако в первом эпизоде ​​«Золотого дворца» (1992) выяснилось, что Софии было 87 лет, хотя в нескольких эпизодах она раскрывается. быть в возрасте от 80 до 85 лет). В эпизоде ​​​​1987 года «А потом был один» София заявила, что ходит с 1904 года. В эпизоде ​​​​«Соревнование» выясняется, что, будучи подростком на Сицилии, она ненадолго была помолвлена ​​с мужчиной из своей деревни. Августин Багателли . Позже она обручилась с Джузеппе Манджакавалло, который бросил ее у алтаря. В эпизоде ​​​​«Ro$e Love$ Mile$» говорится, что она переехала в Нью-Йорк после того, как аннулировала свой первый брак по договоренности с Гвидо Спирелли, когда ей было 14 лет. </p></div>\r\n\r\n<div class=\"mt-3\"><p>У нее не осталось акцента, чтобы показать, что она выросла, говоря на сицилийском языке. Вместо этого у нее сильный бруклинский акцент с быстрым темпом речи, что часто способствовало юмору в ее остротах.</p></div>', '<li>В молодые годы София, по-видимому, всегда была невысокой, с каштановыми волосами (естественный цвет Эстель Гетти)</li>\r\n<li>Во время показа сериала София внешне напоминала архетипическую «старушку»: седые волосы, маленький рост, морщины и очки в большой оправе. </li>\r\n<li>Оказывается, раз в месяц София и девушки из Облачного общества застолбили несколько скамеек, выпили несколько бутылок хереса и обсудили форму облаков. Она заметила, что ей показалось, будто она видела Пэт Саяк, едущую в боковом седле на дельфине.</li>', 1, 1, '2022-06-09 08:44:43', '2022-06-11 08:51:19'),
(3, 'Бланш Деверо', '<div class=\"mb-3\">Первое появление: <small>Пилотная серия</small></div>\r\n<div class=\"mb-3\">Последнее появление: <small>Цыпленок и яйцо ( Золотой дворец )</small></div>', 'Актриса: Рю МакКланахан', '« …и никто никогда не крадет мужчину у Бланш Деверо! ”\r\n— Бланш Софии , которая встречается с парнем, с которым встречается, Фиделем Сантьяго.', '<div class=\"mt-3\">\r\n<p>Бланш Элизабет Мари Холлингсворт-Деверо (урожденная / девичья фамилия: Холлингсворт) - одна из четырех вымышленных главных героев ситуационной комедии / ситкома NBC 1985–1992 годов «Золотые девушки» и ее побочного продукта  . Золотой дворец .</p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Персонаж Бланш появлялся в 8 сезонах и 204 эпизодах как в «Золотых девушках» (всего 180 эпизодов), так и в спин-оффе «Золотого дворца» (всего 24 эпизода).</p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Бланш также появилась в нескольких эпизодах побочного сериала, связанного с «Золотыми девочками» и «Золотым дворцом», « Пустым гнездом» и « Медсестрами » .</p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Продюсеры хотели сделать образ Бланш Деверо чем-то средним между Скарлетт О\'Хара и Бланш Дюбуа - скандальной, беспорядочной женщиной, которая выслеживает интересных мужчин.</p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Сезон 1, Эпизод 1 « Пилот » (который вышел в эфир по всей стране 14 сентября 1985 г.), также известный как «Помолвка» сериала «Золотые девушки», фамилия Бланш была Холлингсворт. Однако это было несколько «исправлено» в более поздних эпизодах, когда Холлингсворт стала ее девичьей фамилией. Таким образом, Деверо — это ее фамилия по браку, принадлежащая ее покойному мужу Джорджу Деверо .</p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Бланш изображала покойная Рю МакКланахан .(имя при рождении и ранее Эдди-Рю МакКланахан, которая родилась 21 февраля 1934 года. Что касается кончины МакКланахан, врачи объявили ее «мертвым мозгом» по прибытии на машине скорой помощи на аппарате искусственной вентиляции легких и аппарате жизнеобеспечения в пресвитерианской больнице Нью-Йорка. Медицинский центр в День памяти, 30 мая 2010 г., после обширного инсульта или нарушения мозгового кровообращения. Рю находилась на искусственной вентиляции легких и системе жизнеобеспечения в течение почти 4 дней без каких-либо улучшений в ее общем состоянии. К сожалению, ее отключили от системы жизнеобеспечения. ее единственный сын, Марк Биш, скончался рано утром около 01:00 по восточному поясному времени 3 июня 2010 г.). Ее семья была рядом с ней с момента их прибытия в Нью-Йоркский Пресвитерианский медицинский центр, несмотря на все это - ее шестой муж/бывший муж Чарльз Морроу Уилсон - ее единственный сын Марк Биш - и хороший друг, Майкл ЛаРю. Самым большим страхом Рю была смерть в одиночестве.</p></div>', '<li>Как описала это создательница «Золотых девочек» Сьюзен Харрис : «Бланш определенно была для нас самым сложным персонажем. </li>\r\n<li>По-видимому, кажется, что большая часть распущенности Бланш связана со смертью ее единственной настоящей любви, Джорджа Деверо. </li>', 1, 1, '2022-06-11 09:26:25', '2022-06-11 09:26:25'),
(4, 'Роуз Нилунд', '<div class=\"mb-3\">Первое появление: <small>Пилотная серия</small></div>\r\n<div class=\"mb-3\">Последнее появление: <small>Цыпленок и яйцо ( Золотой дворец )</small></div>', 'Актриса: Бетти Уайт', '« Возвращение в Сент-Олаф ... »\r\n— Крылатая фраза Роуз.', '<div class=\"mt-3\">\r\n<p>Роуз Мари «Роуз» Линдстром-Нилунд (урожденная / девичья фамилия Линдстром) - главный вымышленный персонаж широко известной и популярной комедии положений 1980-х годов « Золотые девушки» и ее побочного продукта . Дворец , также появляющийся в «Пустом гнезде» и «Медсестры » .</p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Ее изображала покойная Бетти Уайт в течение 8 лет и в общей сложности 208 славных эпизодов.</p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Роуз комично изображали суперневинной, наивной, простой, но, возможно, самой добросердечной женщиной. Она была наиболее известна своими бессвязными бессмысленными историями о своей причудливой родной деревне Сент-Олаф , штат Миннесота, которые ее соседи по комнате часто терпели с раздраженным молчанием, недоверием и случайным бормотанием оскорблений. Однако, в то же время, Роуз также вполне может быть ошибочно принята за самую смертоносную из четырех девушек. Опять же, поскольку Роза — самая дружелюбная, самая беспечная, самая наивная, самая невинная, самая добросердечная, самая преданная, самая верная женщина, и — черт возьми, по существу почти святая женщина — она может быть более предосудительна с моральной точки зрения из четверки «Золотых девушек».</p></div>\r\n\r\n<div class=\"mt-3\">\r\n<p>Можно себе представить, что большое количество поклонников Роуз Найлунд искренне согласятся с тем, что Роза действительно милейшая из наивных с ее непоколебимым веселым характером в целом.</p></div>', '<li>Роуз Найлунд родилась в норвежско-американской семье 12 марта 1930 года вне брака у своего отца, монастырского монаха, по имени Старший Брат/Брат Мартин и его жены Ингрид Керклавонер .</li>\r\n<li>Вскоре после переезда и частичного обустройства в Майами Роуз нашла работу штатным консультантом в консультационном центре. </li>', 1, 1, '2022-06-11 09:43:19', '2022-06-11 09:43:19'),
(5, 'Помолвка (пилот)', '<div><small>1 сезон - 1 серия</small></div>\r\n<div><small>Следующий эпизод: Угадай, кто придет на свадьбу?</small></div>', 'Сценарист: Сьюзан Харрис. Режиссер: Джей Сандрич', '«Помолвка » — премьера сериала «Золотые девушки» . Этот эпизод был снят Джей Сэндричем и написан со-исполнительным продюсером сериала Сьюзен Харрис . Первоначально он был показан на канале NBC в США 14 сентября 1985 года.', '<div class=\"mt-3\"><p>В премьере сериала Бланш объявляет, что ее последний бойфренд Гарри сделал предложение руки и сердца. Услышав это, Роуз беспокоится о том, где она будет жить, а позже беспокоится, что с Гарри что-то не так. Тем временем Дороти более чем воодушевлена ​​планами Бланш, но ей также приходится бороться со своей матерью Софией , которая прибывает после того, как ее дом престарелых, Шейди Пайнс , сгорел дотла.</p></div>\r\n\r\n<div class=\"mt-3\"><p>В роли Дороти, Роуз и их кухарки Кокосадясь за ужин после довольно напряженного дня, Бланш готова пойти на свидание с Гарри, мужчиной, которого она считает «тем самым». Гарри сделал предложение, но Бланш еще не решила. Роуз очень напугана, думая, что они с Дороти могут остаться без крова, поскольку найти дом непросто, но Бланш решает, что пока они не найдут новое место, они могут остаться. В этот момент звонит дверной звонок. Это не Гарри, а София сообщает, что Шейди Пайнс сгорел. </p></div>\r\n\r\n<div class=\"mt-3\"><p>Затем приходит Гарри, и Бланш уходит с ним на свидание. В ту ночь, когда Дороти и Роуз говорили о своих браках, Бланш возвращается, она сказала «да», и свадьба состоится на следующей неделе. Наступает день свадьбы, и Роуз признается Дороти, что не уверена в Гарри, и поэтому хочет рассказать об этом Бланш. Дороти удается остановить ее разными способами, и министр прибывает до того, как Роуз успевает что-то сказать. Однако, пока свадебная вечеринка ждет жениха, полицейский приветствует Бланш плохими новостями, что Гарри был арестован за двоеженство (доказывая «сумасшедшую догадку» Роуз о нем). </p></div>\r\n\r\n<div class=\"mt-3\"><p>Бланш говорят, что ей повезло сбежать. Бланш подавлена ​​и отказывается покидать спальню, но в конце эпизода понимает, что жизнь продолжается. Девушки обещают, что даже если они снова выйдут замуж, они останутся вместе.</p></div>', '<li>В первой сцене эпизода мы впервые видим внешний вид дома. На этом внешнем снимке дневное время, но следующие несколько сцен происходят ночью.</li>\r\n<li>Бланш сообщает своему парню, Гарри, что дом Софии только что сгорел. Бланш не было в комнате, когда София поделилась этой информацией, и, таким образом, у нее не было возможности узнать об этом, иначе она, должно быть, подслушивала разговор.</li>', 1, 2, '2022-06-11 11:36:30', '2022-06-11 11:38:00');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Администратор', NULL, NULL),
(2, 'Модератор', NULL, NULL),
(3, 'Пользователь', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `topic`) VALUES
(1, 'Персонажи'),
(2, 'Список серий');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT '3',
  `country_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `country_id`, `banned`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Liam Stokes', 'lgerlach@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 2, 0, 'S5fZwNk19W', '2022-06-09 04:38:09', '2022-06-09 04:38:09'),
(2, 'Abdullah Franecki MD', 'oconner.roma@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, 0, 'p109WAzeBs', '2022-06-09 04:38:09', '2022-06-09 04:38:09'),
(3, 'Grady Stoltenberg', 'odurgan@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, 0, 'noid9BmuX8', '2022-06-09 04:38:10', '2022-06-09 04:38:10'),
(4, 'Mitchell Hansen', 'lavern12@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 2, 0, 'rFNotOptWn', '2022-06-09 04:38:10', '2022-06-09 04:38:10'),
(5, 'Dr. Moshe Stark', 'esperanza.ondricka@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 2, 0, 'FAp4sE8tMh', '2022-06-09 04:38:10', '2022-06-09 04:38:10'),
(6, 'LMIA', 'lomtsovdj@gmail.com', '$2y$10$TE64NHdmH6LvCMMLv.GFB.XUqRZE3DuhHygTDfwCdxgGhzZpth6yC', 1, 1, 0, NULL, '2022-06-09 05:04:09', '2022-06-09 05:04:09'),
(7, 'Moderator', 'moderator@gmail.com', '$2y$10$yHc9VtVDli/9UHy8YiFlAeFTsGNymuBnWdBD/5hwwmA54Jhwu7p3K', 2, 1, 0, NULL, '2022-06-09 07:15:30', '2022-06-09 07:15:30'),
(8, 'Михаил', 'savage@gmail.com', '$2y$10$.bnekFen4E5atGlyNS/Tw.ezKWt.SXATaWIhBqTT42AYIAcD82NlG', 3, 3, 0, NULL, '2022-06-11 03:58:13', '2022-06-11 03:58:13');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `likes_user`
--
ALTER TABLE `likes_user`
  ADD PRIMARY KEY (`likes_id`,`user_id`),
  ADD KEY `likes_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_country_id_foreign` (`country_id`),
  ADD KEY `posts_topic_id_foreign` (`topic_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `likes_user`
--
ALTER TABLE `likes_user`
  ADD CONSTRAINT `likes_user_likes_id_foreign` FOREIGN KEY (`likes_id`) REFERENCES `likes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
