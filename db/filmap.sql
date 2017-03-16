-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 16 2017 г., 11:24
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `filmap`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `url`) VALUES
(1, ''),
(2, ''),
(3, ''),
(4, ''),
(5, ''),
(6, ''),
(7, ''),
(8, ''),
(9, ''),
(10, ''),
(11, '');

-- --------------------------------------------------------

--
-- Структура таблицы `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `id` int(11) NOT NULL,
  `place_name` text NOT NULL,
  `film_name` text NOT NULL,
  `longitude` text NOT NULL,
  `latitude` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `places`
--

INSERT INTO `places` (`id`, `place_name`, `film_name`, `longitude`, `latitude`, `description`) VALUES
(1, 'Шир, Новая Зеландия\r\n501 Buckland Rd, Hinuera, Matamata 3472 New Zealand\r\n', 'Властелин колец', '37°51′27″S', '175°40′47″E', 'Хоббитон – деревня в Новой Зеландии, искусственно созданная специально для съемок трилогии «Властелин Колец» и «Хоббит» по одноименным произведениям Дж.Р.Толкиена. Это небольшое поселение – место обитания выдуманного писателем народа. Декорации включают в себя норы хоббитов, пейзажные элементы и трактир «Зеленый дракон». В отличие от стандартных кинематографических фонов, которые обычно создаются из картона и фанеры, деревенька была отстроена по-настоящему.\nТеперь это местная достопримечательность, которую каждый день посещает около 300 туристов, приезжающих в эти края именно ради Хоббитона. Искусно выполненные домики, ухоженные сады, обилие живописных деталей позволяют путешественнику в полной мере окунуться в узнаваемую с первого шага атмосферу любимых фильмов.\n'),
(3, 'Альбукерке, США', 'Во все тяжкие', '35°5′3″N', '106°38′57″W', 'В доме Уолтера Уайта живет порядочная семья. Дом, в котором проводились съемки сериала, принадлежал с 1973 года женщине по имени Фрэй. Она отмечает, что некоторые детали интерьера были изменены, но в целом это тот же самый дом, в котором она жила до съемок. Теперь сотни людей приостанавливаются, когда проезжают мимо знакомого по сериалу жилища.'),
(2, 'Россия, Москва. Станция «Арбатская» Филёвской линии', 'Обитель зла 5. Возмездие.', '55°45′7″N', '37°36′5″E', 'Для съемок предоставили не только московские улицы и Красную площадь, но и московское метро. Это большая честь, которой редко удостаиваются даже российские режиссеры.\nПосле погони по Красной площади на Ролс-Ройсе, герои прямо на автомобиле въезжают в подземный переход рядом с вестибюлем станции "Арбатская" филёвской линии. При этом, они оказываются на эскалаторе, который приводит их на станцию "Арбатская" Арбатско-Покровской линии. Дальше герои вновь пробивают стену и оказываются на платформе станции "Арбатская" Филёвской линии.\n'),
(4, 'Россия, Москва. Малая Молчановка, 8', 'Москва слезам не верит', '°45′16″N', '37°35′33″E', 'Прибыв в Москву, концессионеры останавливаются в общежитии студентов-химиков. Здание, которое выступало в этой роли, сохранилось до сих пор. Поэт, автор эпопеи про Гаврилу, живет в знаменитом доме со львами, который не раз был увековечен в кино. Вход в него украшен каменными фигурами львов. Поначалу они держали в лапах щиты, но к моменту съемок «12 стульев» их уже не было. Историки до сих пор спорят, куда они исчезли. По одной версии, львов уронили, когда во время войны перетаскивали в бомбоубежище, по другой – щиты демонтировали, обнаружив на них какие-то масонские символы. Ближе к истине первая версия, поскольку, если обратить внимание, в фильме у львов также отсутствуют зубы и некоторые лапы. Сейчас фигуры отреставрированы и все, в том числе щиты, на месте.'),
(5, 'Бодлианская библиотека, Оксфорд, Великобритания', 'Гарри Поттер', '51°45′14″N', '1°15′18″W', 'Школьная библиотека находится в Бодлианской библиотеке, Оксфорд. В «Тайной комнате» Гермиона находит здесь сведения об оборотном зелье, а в «Принце-Полукровке» она с Гарри обсуждают здесь рождественскую вечеринку Горация Слагхорна.'),
(6, 'Вулкан Этна, Италия', 'Звездные войны', '37°45′18″N', '14°59′43″W', 'Крупнейший вулкан в Европе, который находится на побережье Сицилии, извергается в среднем 4 раза в год. Когда во время съемок третьего эпизода началось очередное мощное и красочное извержение, на место событий была отправлена группа операторов Lucasfilm во главе с Роном Фрике. Им удалось запечатлеть огненные фонтаны и реки лавы с разных углов. Полученные кадры были вмонтированы в кульминационную сцену дуэли Оби-Вана и Энакина на планете Мустафар. Основные декорации драматичного места были воссозданы в миниатюре, и большая часть бутафорских потоков лавы — это жидкая метилцеллюлоза.'),
(7, 'Speedy’s Cafe', 'Шерлок', '51°31′34″N', '0°8′12″W', 'Сериальный аналог кафе у дома, в котором живут Холмс и Ватсон, на самом деле расположен на Гауэр стрит, неподалеку от вокзала Юстон. Но называется также — Speedy’s Cafe. Здесь можно попробовать традиционные сэндвичи и фиш энд чипс, чай с молоком и яблочный пирог с заварным кремом, а для поклонников сериала разработано специальное «шерлоковское» меню. Speedy’s Cafe, в частности, «снимался» в серии «Скандал в Белгравии»: в нем завтракали Ватсон и Майкрофт, брат Шерлока.'),
(8, 'Дубровник, Хорватия', 'Игра престолов', '42°38′34″N', '18°6′38″E', 'С выходом «Игры престолов» Дубровник превратился из туристической столицы Хорватии в настоящую столицу Вестероса. Неудивительно, что продюсеры выбрали именно это место для натурных съемок Королевской Гавани: старый город Дубровника — это прекрасно сохранившийся замок с массивной крепостной стеной, упирающейся прямо в море. Старый город Дубровника никого не оставит равнодушным. Несмотря на разрушительное землетрясение в 17 веке, город поражает своей средневековой архитектурой. В «Игре престолов» можно увидеть самые интересные достопримечательности Дубровника и  даже весь старый город целиком, правда, немного достроенный.'),
(9, 'Пустыня Вади Рам, Иордания', 'Марсианин', '29°32''24"N   ', '35°31''29"E', 'Вади Рам — одна из самых живописных пустынь мира. Ее второе название — Лунная долина. Здесь есть все: высокие горы, песчаные дюны, пещеры, каньоны и природные арки, образовавшиеся за тысячи лет. Пустыня меняет свой цвет в зависимости от времени суток. Иногда она розовая или красная, иногда — охристо рыжая. Мэтт Дэймон далеко не первым из голливудских актеров «высадился» в здешних краях. В Вади Рам снимали «Лоуренса Аравийского», «Трансформеров» и «Красную планету» с Вэлом Килмером, герой которого (тоже астронавт) надеялся основать на Марсе колонию. Сам Ридли Скотт снимал в Вади Рам сцены для своего научно фантастического блокбастера «Прометей». В этой же пустыне снимались некоторые из эпизодов Star Wars.'),
(10, 'Чжанцзяцзе, Китай', 'Аватар', '29°7′32″N', '110°29′E', 'Помимо впечатляющего сюжета, зрителей поразили завораживающие пейзажи планеты Пандоры. В основу ландшафта планеты Пандоры легли пейзажи Национального парка Чжанцзяцзе в Китае. Горы здесь представляют действительно живописное зрелище: огромные каменные столбы с острыми вершинами, восходящие над тропическим лесом, водопады, гигантские пещеры. Именно это место послужило вдохновением для создания фантастических «парящих скал»!\nПомимо восхитительного пейзажа в национальном парке Чжанцзяцзе находится множество видов животных и растений, занесенных в Красную книгу. \n'),
(11, 'Пляж Maya Bay. Пхи-Пхи-Ле, Тайланд', 'Пляж', '7°41′N', '98°46′E', 'Пляж Майа Бэй – это то место, где происходили все события, показанные в фильме. Здесь герои плавали, рыбачили, веселились и умирали. Сейчас это место буквально забито туристами. Здесь можно через джунгли по узенькой  тропинке пройти к месту, на котором стояли шалаши героев фильма, и где снимался фильм «Пляж». Сам остров является охраняемым национальным парком, поэтому гостиниц, бунгало здесь не сдают и ночевать официально тут нельзя. Но есть отличный выход из положения - можно купить экскурсию с ночевкой в кемпинге и спать на пляже у кромки прибоя.');

-- --------------------------------------------------------

--
-- Структура таблицы `places_images`
--

CREATE TABLE IF NOT EXISTS `places_images` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `places_images`
--

INSERT INTO `places_images` (`id`, `place_id`, `image_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
