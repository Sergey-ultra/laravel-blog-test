-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 08 2022 г., 20:07
-- Версия сервера: 10.4.19-MariaDB-log
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mobecan-test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Актуальные новости', 'Текущие новости', '2022-04-07 16:38:18', '2022-04-08 12:20:13'),
(2, 'Политика', 'Новости про политику', '2022-04-07 16:46:45', '2022-04-08 06:13:58'),
(3, 'Экономика', 'Новости про экономику', '2022-04-07 16:47:08', '2022-04-08 06:02:43'),
(4, 'Спорт', 'Информация про спорт', '2022-04-07 16:47:27', '2022-04-08 06:02:59'),
(5, 'Музыка', 'Музыкальные новости', '2022-04-07 16:47:43', '2022-04-08 12:08:28'),
(6, 'Нонсенс', 'Тупая дичь', '2022-04-08 12:52:26', '2022-04-08 12:52:26');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_07_170249_create_posts_table', 1),
(6, '2022_04_07_183846_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Президент Германии назвал своей ошибкой поддержку «Северного потока-2»', 'Президент ФРГ Штайнмайер заявил, что его поддержка «Северного потока-2» была ошибкой\r\n\r\nФото: Петр Ковалев / ТАСС\r\n\r\nПрезидент Германии Франк-Вальтер Штайнмайер заявил, что его поддержка проекта газопровода «Северный поток-2» была ошибкой. Об этом он рассказал в интервью Der Spiegel.\r\n\r\n«Слишком долго я успокаивал себя фактом, что планирование этого проекта завершилось еще до 2014 года, поэтому я пошел на диалог», — заявил глава ФРГ, указав, что проект стоимостью в миллиард долларов потерпел неудачу. Штайнмайер добавил, что поведение немецкой стороны стоило ФРГ доверия со стороны ее восточноевропейских партнеров. «Это больно», — высказался он.\r\n\r\nПрезидент также отметил, что в настоящее время необходимо проанализировать, где были сделали ошибки в свете выстраивания отношений с Россией, добавив, что имеет в виду ошибки политиков, к которым причислил и себя.\r\n\r\nРанее в апреле Штайнмайер уже признавал ошибочную политику по отношению к России. «Мы держались за мост, в который Россия уже не верила и о котором предостерегали наши партнеры», — сказал он.\r\n\r\nВ 2018 году президент ФРГ называл безосновательными опасения Украины по поводу энергетической безопасности Европы в связи со строительством газопровода «Северный поток-2».', '/storage/image/posts/owl_detail_240_4555d9ab3db674d28309630d5082fbe0.jpeg', 3, '2022-04-07 17:57:17', '2022-04-08 11:16:12'),
(2, 'Рубль восстановился', 'Рубль восстановился', '/storage/image/posts/g1mtwex4mi6gys1sblr945pt9f1ozyp2.jpeg', 5, '2022-04-07 18:27:24', '2022-04-08 11:36:38'),
(4, 'привет', 'Миллиардер Дерипаска заявил, что на построение успешной экономики России уйдет 10 лет\r\nОлег Дерипаска\r\n\r\nОлег Дерипаска. Фото: Андрей Самсонов / ТАСС\r\n\r\nРоссийский миллиардер Олег Дерипаска заявил, что на построение успешной экономики России может потребоваться до 10 лет. Он уточнил, что за 4-5 лет необходимо развивать экспорт и найти новые рынки. Его слова приводит РИА Новости.\r\n\r\nОценивая перспективу, он подчеркнул, что важный вопрос сейчас — закончить конфликты, чтобы иметь отправную точку. «Через 10 лет мы можем построить успешную экономику, как в 2007 году. Но нужно заниматься экспортом», — прокомментировал Дерипаска. По его мнению, стране необходимо вернуться к рыночным отношениям и отказаться от госкапитализма.\r\n\r\nРанее бизнесмен назвал пять задач для страны: мир, «распустить Газмяс и закончить весь госкапитализм, начать поднимать Сибирь и Дальний Восток, добиться полной воли для предпринимателей и людей». Он также призвал «начать все заново».\r\n\r\nРоссийские власти признают серьезность санкций. Как говорил премьер-министр Михаил Мишустин, кабмин, сплотившись, сможет преодолеть сложности, с которыми столкнулась Россия. Мишустин добавил, что сейчас всем секторам экономики России придется перестраиваться, искать новых поставщиков и рынки сбыта.', '/storage/image/posts/1024295937.jpg', 3, '2022-04-08 05:54:03', '2022-04-08 11:50:14'),
(10, 'новый текст', 'HowStuffWorks: консервативные люди отдают предпочтение джинсам классического кроя\r\n\r\nФото: lan deng / Unsplash\r\n\r\nЖурналистка и писательница Лори Дав нашла связь между личностными качествами человека и фасоном его джинсов. Данную тему эксперт раскрыла в своей колонке в HowStuffWorks.\r\n\r\nДав утверждает, что люди, отдающие предпочтение джинсам классического кроя с пятью карманами, консервативны и практичны. Они требовательны к качеству одежды и желают, чтобы вещь оправдывала потраченные на нее средства долгим сроком службы.', '/storage/image/posts/1024295937.jpg', 1, '2022-04-08 06:39:50', '2022-04-08 11:49:16'),
(11, 'Названы необычные способы распознать экономический кризис', 'В CNBC сочли индекс небоскребов необычным способом предсказать экономический кризис\r\n\r\nФото: Vlad Karkov / Globallookpress.com\r\n\r\nТелеканал CNBC назвал необычные способы оценить состояние экономики той или иной страны или всего мира в целом, а также распознать надвигающийся экономический кризис.\r\n\r\nК неординарным индикаторам относится «индекс небоскребов», разработанный в 1999 году британским экономистом Эндрю Лоуренсом. Он основан на выявленной автором взаимосвязи между завершением строительства наиболее высоких зданий и наступлением мировых кризисов.', '/storage/image/posts/owl_detail_240_f65893188a0821adb0540d166b61ba29.jpeg', 3, '2022-04-08 06:40:01', '2022-04-08 11:26:17'),
(12, 'новости', 'Медведев заявил, что санкции против России могут быть квалифицированы как акт агрессии\r\n\r\nФото: Екатерина Штукина / РИА Новости\r\n\r\nСанкции могут быть квалифицированы как акт агрессии в отношении России, а также как одна из форм гибридной войны. Такое сравнение сделал зампредседателя Совета безопасности Дмитрий Медведев в Telegram.\r\n\r\nПо его словам, применение санкций направлено на подрыв экономической независимости страны, а также государственного суверенитета.\r\n\r\nВ таком случае у России возникает право на индивидуальную и коллективную оборону в рамках национального законодательства и международного права, добавил Медведев. Он подчеркнул, что ни у кого не должно быть сомнений, что Россия воспользуется данным правом в тех формах и пределах, которые посчитает уместными.\r\n\r\nРанее зампредседателя Совбеза заявил, что целью санкций, введенных западными странами против России, является попытка свержения власти. При введении санкций Запад надеется, что они ослабят государство и вызовут недовольство в обществе, которое попробует сменить власть, уточнил Медведев.', '/storage/image/posts/g1mtwex4mi6gys1sblr945pt9f1ozyp2.jpeg', 1, '2022-04-08 06:40:10', '2022-04-08 11:42:38'),
(13, 'новый текст12', 'новый', '/storage/image/posts/EMJV4mDWsAA-Gnx.jpg', 1, '2022-04-08 12:32:59', '2022-04-08 12:32:59'),
(14, 'Что с рублем опять?', 'Новая заметка', '/storage/image/posts/875b52.jpg', 1, '2022-04-08 12:57:11', '2022-04-08 12:58:11'),
(15, 'Китайский конкурент Twitch закрылся из-за властей Китая', 'Tencent объявил о закрытии стримингового сервиса Penguin Esports\r\n\r\nФото: Tingshu Wang / Reuters\r\n\r\nКитайский интернет-холдинг Tencent решил закрыть стриминговую платформу Penguin Esports, позиционировавшуюся как конкурент принадлежащего Amazon сервиса Twitch, из-за действия властей Китая, не одобривших крупное слияние в отрасли. Об этом пишет CNBC.\r\n\r\nДва года назад Tencent собирался совершить сделку по слиянию двух компаний в сфере стримингового вещания — Huya и DouYu, а затем передать вновь образованной компании бренд Pengiun Esports. Однако сделка была заблокирована регулятором из антимонопольных соображений.\r\n\r\nТеперь Tencent решила свернуть проект Pengiun Esports. С 7 апреля прекращена регистрация новых пользователей, а через два месяца приложение будет удалено из магазинов.\r\n\r\nTencent, а также другие китайские компании, занимающиеся разработкой видеоигр и онлайн-сервисов, сталкиваются с противодействием властей, уверенных, что их деятельность пагубно сказывается на подростках и вызывает у них зависимость.\r\n\r\nТак, в стране на законодательном уровне ограничено время, которое несовершеннолетние могут проводить за компьютерными играми. Кроме того, власти на неопределенный срок заморозили лицензирование новых игр.', '/storage/image/posts/owl_detail_240_f9246c813e9fc69c34879aee4b290ac0.jpg', 1, '2022-04-08 13:00:54', '2022-04-08 13:00:54');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD KEY `posts_category_id_index` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
