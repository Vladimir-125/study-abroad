-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 17 2018 г., 06:05
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `AWPDB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `Art_ID` int(11) NOT NULL,
  `Art_category_FK` int(11) NOT NULL,
  `Art_writer_user` int(11) DEFAULT NULL,
  `Art_title` varchar(255) NOT NULL,
  `Art_image` varchar(255) DEFAULT NULL,
  `Art_text` text NOT NULL,
  `Art_pub_date` datetime NOT NULL,
  `Art_views` int(11) NOT NULL,
  `Is_posted` tinyint(1) NOT NULL,
  `Art_expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`Art_ID`, `Art_category_FK`, `Art_writer_user`, `Art_title`, `Art_image`, `Art_text`, `Art_pub_date`, `Art_views`, `Is_posted`, `Art_expire_date`) VALUES
(1, 2, 4, 'New scholarships for 2018', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-11-14 00:00:00', 565, 0, '2018-11-15 00:00:00'),
(2, 2, 3, 'Best University', NULL, 'Diam. Malesuada erat parturient fermentum dictumst fames. Adipiscing cras imperdiet nonummy. Praesent vel sapien amet mauris odio eget rutrum phasellus non consectetuer egestas. Condimentum curabitur, neque litora parturient vestibulum commodo velit non ultricies etiam phasellus. Enim iaculis fringilla sem.\r\n\r\nDuis integer quam ipsum sem fames malesuada vulputate pede quisque ipsum nam vitae pellentesque tempor nisl nec porttitor magna metus. Risus interdum eget porta pulvinar aenean aliquet magna. Commodo a.\r\n\r\nDis mattis sollicitudin ultricies vulputate amet quis dignissim donec vestibulum ultrices. Molestie ligula elementum donec. Nullam tempor ultrices urna ridiculus. Tempus montes, vestibulum faucibus ligula nulla luctus quisque nisi phasellus ultrices.', '2018-11-11 00:00:00', 65, 1, '2018-11-21 00:00:00'),
(3, 2, 4, 'Scholarships Korea', NULL, 'Viverra laoreet. Commodo, dui felis blandit a. Tristique natoque proin aliquet mauris semper vehicula ultrices eget faucibus ultrices sollicitudin tortor per dictum suspendisse. Curae; porttitor mattis est quis curae; nostra aenean lacinia ipsum iaculis posuere sociis luctus taciti ultrices. Phasellus primis potenti tempus.\r\n\r\nAuctor. Suscipit dictumst iaculis vehicula. Aptent sodales lobortis laoreet commodo platea urna sapien potenti in dictumst leo ultrices a, erat, luctus.\r\n\r\nDapibus Elementum erat ipsum velit nonummy tortor hymenaeos mauris et pede porta porttitor leo nisl feugiat tellus amet vestibulum habitasse hendrerit tempor. Interdum curae; cum montes primis neque elit vel, laoreet iaculis conubia ipsum ornare libero.', '2018-11-09 00:00:00', 86, 1, '2018-11-30 00:00:00'),
(4, 1, 3, 'Korean government Schoolarship ', 'https://www.opportunitiesforafricans.com/wp-content/uploads/2013/03/2013-Korean-Government-Scholarship.jpg', 'Arcu <em>suscipit</em> faucibus. Nec vitae felis sapien primis neque cum integer urna quisque in, vivamus donec vitae porttitor erat scelerisque. Nonummy sapien metus auctor sapien Praesent parturient blandit urna per.\n\nErat adipiscing, eget nascetur in integer gravida diam parturient augue quam est class dictum, facilisis sed ad torquent massa purus habitant aenean Consectetuer nisl etiam per.\n\nSed auctor aliquet magnis felis porta lectus morbi hymenaeos habitasse commodo conubia pulvinar est nisl placerat sollicitudin risus elit eleifend, sem torquent vestibulum lacus vivamus. Hendrerit feugiat lobortis pretium. Per. Euismod donec. Pellentesque convallis posuere laoreet turpis mus magnis convallis sollicitudin. Ipsum inceptos, vestibulum.', '2018-11-17 00:00:00', 93, 1, '2018-11-23 00:00:00'),
(9, 3, 4, 'Summer School', NULL, 'Arcu suscipit faucibus. Nec vitae felis sapien primis neque cum integer urna quisque in, vivamus donec vitae porttitor erat scelerisque. Nonummy sapien metus auctor sapien Praesent parturient blandit urna per.\r\n\r\nErat adipiscing, eget nascetur in integer gravida diam parturient augue quam est class dictum, facilisis sed ad torquent massa purus habitant aenean Consectetuer nisl etiam per.\r\n\r\nSed auctor aliquet magnis felis porta lectus morbi hymenaeos habitasse commodo conubia pulvinar est nisl placerat sollicitudin risus elit eleifend, sem torquent vestibulum lacus vivamus. Hendrerit feugiat lobortis pretium. Per. Euismod donec. Pellentesque convallis posuere laoreet turpis mus magnis convallis sollicitudin. Ipsum inceptos, vestibulum.', '2018-11-21 00:00:00', 81, 1, '2018-11-23 00:00:00'),
(10, 3, 4, 'Go to Korea', NULL, 'Arcu suscipit faucibus. Nec vitae felis sapien primis neque cum integer urna quisque in, vivamus donec vitae porttitor erat scelerisque. Nonummy sapien metus auctor sapien Praesent parturient blandit urna per.\r\n\r\nErat adipiscing, eget nascetur in integer gravida diam parturient augue quam est class dictum, facilisis sed ad torquent massa purus habitant aenean Consectetuer nisl etiam per.\r\n\r\nSed auctor aliquet magnis felis porta lectus morbi hymenaeos habitasse commodo conubia pulvinar est nisl placerat sollicitudin risus elit eleifend, sem torquent vestibulum lacus vivamus. Hendrerit feugiat lobortis pretium. Per. Euismod donec. Pellentesque convallis posuere laoreet turpis mus magnis convallis sollicitudin. Ipsum inceptos, vestibulum.', '2018-11-23 00:00:00', 76, 1, '2018-11-30 00:00:00'),
(17, 2, 3, 'Some test article', 'img/17.jpg', '<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Hymenaeos faucibus senectus. Amet, elementum. Dictum dis vestibulum. Potenti quis sollicitudin velit feugiat feugiat quam non dictum tempor at ante risus erat vestibulum hendrerit molestie iaculis nec tempus fringilla gravida est, adipiscing, pharetra nibh congue integer pretium lectus neque risus. Morbi vitae. Mattis.</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Cras, consectetuer. Duis pretium euismod nulla ultrices lectus quisque ultrices. Hac turpis, class ridiculus suscipit. Dictumst mollis dictum lacinia euismod at nunc egestas. Luctus morbi gravida volutpat mollis quisque nisl. Suspendisse erat ridiculus est.</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Feugiat arcu taciti dapibus vel natoque sollicitudin adipiscing. Hendrerit purus nascetur Fringilla purus odio proin est pharetra aliquet hac. Id pede euismod condimentum.</p>', '2018-11-02 00:00:00', 4, 1, '2018-11-09 00:00:00'),
(26, 1, 3, 'New Art name', 'img/26.jpg', 'Hymenaeos faucibus senectus. Amet, elementum. Dictum dis vestibulum. Potenti quis sollicitudin velit feugiat feugiat quam non dictum tempor at ante risus erat vestibulum hendrerit molestie iaculis nec tempus fringilla gravida est, adipiscing, pharetra nibh congue integer pretium lectus neque risus. Morbi vitae. Mattis.\n\nCras, consectetuer. Duis pretium euismod nulla ultrices lectus quisque ultrices. Hac turpis, class ridiculus suscipit. Dictumst mollis dictum lacinia euismod at nunc egestas. Luctus morbi gravida volutpat mollis quisque nisl. Suspendisse erat ridiculus est.\n\nFeugiat arcu taciti dapibus vel natoque sollicitudin adipiscing. Hendrerit purus nascetur Fringilla purus odio proin est pharetra aliquet hac. Id pede euismod condimentum.', '2018-11-02 00:00:00', 2, 0, '2018-11-09 00:00:00'),
(27, 1, 3, 'Some test article 27', 'img/27.jpg', '<p>Hymenaeos faucibus senectus. Amet, elementum. Dictum dis vestibulum. Potenti quis sollicitudin velit feugiat feugiat quam non dictum tempor at ante risus erat vestibulum hendrerit molestie iaculis nec tempus fringilla gravida est, adipiscing, pharetra nibh congue integer pretium lectus neque risus. Morbi vitae. Mattis.</p>\r\n<p>&nbsp;</p>\r\n<p>Cras, consectetuer. Duis pretium euismod nulla ultrices lectus quisque ultrices. Hac turpis, class ridiculus suscipit. Dictumst mollis dictum lacinia euismod at nunc egestas. Luctus morbi gravida volutpat mollis quisque nisl. Suspendisse erat ridiculus est.Hymenaeos faucibus senectus. Amet, elementum. Dictum dis vestibulum. Potenti quis sollicitudin velit feugiat feugiat quam non dictum tempor at ante risus erat vestibulum hendrerit molestie iaculis nec tempus fringilla gravida est, adipiscing, pharetra nibh congue integer pretium lectus neque risus. Morbi vitae. Mattis.</p>\r\n<p>&nbsp;</p>\r\n<p>Cras, consectetuer. Duis pretium euismod nulla ultrices lectus quisque ultrices. Hac turpis, class ridiculus suscipit. Dictumst mollis dictum lacinia euismod at nunc egestas. Luctus morbi gravida volutpat mollis quisque nisl. Suspendisse erat ridiculus est.</p>', '2018-11-02 00:00:00', 2, 1, '2018-11-09 00:00:00'),
(28, 2, 3, 'Top schools that offer best education', 'img/28.jpg', '<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Nostra dapibus vel, porta hymenaeos nunc. Diam. Sociis lobortis penatibus hendrerit dictumst mauris posuere turpis convallis at ornare faucibus dapibus proin molestie feugiat lobortis, vel facilisi non mauris lacinia eu sollicitudin orci cum sociis gravida habitant blandit tristique sociis nisi dictumst sociis cubilia. Fermentum ultrices dictumst montes porttitor per magnis tincidunt placerat parturient blandit amet ultricies quis aptent sem inceptos eleifend potenti parturient tempus fringilla, orci venenatis blandit quis sed cubilia neque at consequat pharetra.</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Tempor iaculis. Aptent in torquent sapien elit dictum. Dignissim amet libero cubilia aliquet curae; tincidunt, aliquet facilisis habitant habitasse accumsan auctor porta. Bibendum iaculis blandit nostra magnis nulla, curabitur integer felis montes libero quisque tortor sociosqu pellentesque suscipit pellentesque non a porttitor maecenas nonummy volutpat, eget. Mattis et sed quis porta nunc vehicula pharetra congue torquent mus aliquet. Ridiculus. Nibh a potenti erat molestie sagittis hendrerit posuere scelerisque. Pharetra morbi posuere netus posuere condimentum morbi, purus. Fusce condimentum lectus, tincidunt habitant massa sociis scelerisque sapien elementum elementum condimentum donec gravida platea duis. Ipsum litora natoque nisi nam fusce mi vestibulum lorem scelerisque habitant. Per commodo pede erat cubilia dictumst fringilla bibendum tempus sed integer sociosqu cras. Etiam. Posuere mauris justo felis faucibus rutrum inceptos scelerisque cum inceptos ut erat potenti sed. Vitae sit. Eleifend sagittis accumsan consequat. Fringilla montes. Phasellus sagittis ultricies sit tortor odio potenti tristique adipiscing euismod Urna hendrerit.</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Vestibulum proin dictum arcu taciti nostra sapien hymenaeos, sed ridiculus ad dictum. Risus. Arcu. Augue. Ad duis mollis, amet vel proin curae; maecenas. Nibh aptent litora at aptent vel ornare sagittis per viverra fermentum egestas suspendisse consectetuer ut ante ridiculus maecenas dictum et est taciti nullam nisl fames non. Lacus. Turpis faucibus sollicitudin. Mauris porta vehicula ornare cursus At sem libero ipsum sed turpis ultrices sociosqu quisque fermentum, lacinia non nisl ridiculus velit mus.</p>', '2018-12-01 00:00:00', 4, 1, '2018-12-12 00:00:00'),
(29, 3, 3, 'Japanese goverment scholarship', 'img/29.jpg', '<p>Nibh curae; bibendum, sem. Lobortis ullamcorper erat massa. Lobortis dis. Quisque metus auctor torquent. Donec massa, conubia cras odio pharetra primis pede fermentum mus dolor. Condimentum eu lacinia, placerat mi fusce nostra taciti nam per aliquet potenti dapibus massa, pulvinar ridiculus vel dis turpis elementum blandit felis curabitur vestibulum pede mus, a nulla, lacus leo ad. Ipsum. Eleifend hymenaeos pretium faucibus lacinia dignissim donec. Mus quam congue. Vestibulum, mollis cum accumsan tempor euismod orci mattis amet per eget, iaculis tincidunt non cursus iaculis consequat etiam. Est.</p>\r\n<p>&nbsp;</p>\r\n<p>Vitae donec vitae aptent. Mi phasellus curae; gravida platea ipsum placerat conubia nonummy ullamcorper taciti vulputate at class aptent et porta libero suspendisse Non vitae donec blandit facilisis fames porta aptent vel fusce consectetuer nec maecenas. Sem nam volutpat mi odio dolor convallis penatibus blandit malesuada eu. Aenean integer amet placerat maecenas nec platea neque sed per facilisis suspendisse vel eu. Venenatis nascetur. Varius. Aliquam. Laoreet ullamcorper facilisis urna. In, magna massa accumsan tristique lobortis nisi. Metus sollicitudin sociosqu facilisis aliquet donec fusce nec amet cras mauris senectus porttitor augue elementum iaculis orci volutpat eget sem at odio amet sem. Facilisi aliquet aliquam. Egestas montes suscipit nulla luctus, et velit.</p>\r\n<p>&nbsp;</p>\r\n<p>Bibendum. Nascetur hendrerit. Nisl mi, lorem magna malesuada dictum fringilla proin pede montes primis leo lacus ridiculus urna habitant habitant rhoncus leo justo, mollis. Dignissim venenatis per Senectus. Quam mus tempor magna curabitur scelerisque facilisi dolor. Curabitur ac pretium mus odio quisque volutpat purus, montes tortor torquent non interdum integer pellentesque tellus donec primis convallis ad sociis, pellentesque velit adipiscing mi. Neque duis tellus molestie inceptos urna urna mollis lectus. Est interdum porttitor Facilisis laoreet, vivamus risus eget. Senectus nec ante, amet massa. Erat est Non consequat non magnis rutrum quis sit molestie class sapien urna sem placerat, malesuada felis pulvinar habitant nonummy litora.</p>', '2018-12-02 00:00:00', 7, 1, '2018-12-12 00:00:00'),
(30, 3, 3, 'Where to find good support', 'img/30.jpg', '<p>Nibh curae; bibendum, sem. Lobortis ullamcorper erat massa. Lobortis dis. Quisque metus auctor torquent. Donec massa, conubia cras odio pharetra primis pede fermentum mus dolor. Condimentum eu lacinia, placerat mi fusce nostra taciti nam per aliquet potenti dapibus massa, pulvinar ridiculus vel dis turpis elementum blandit felis curabitur vestibulum pede mus, a nulla, lacus leo ad. Ipsum. Eleifend hymenaeos pretium faucibus lacinia dignissim donec. Mus quam congue. Vestibulum, mollis cum accumsan tempor euismod orci mattis amet per eget, iaculis tincidunt non cursus iaculis consequat etiam. Est.</p>\r\n<p>&nbsp;</p>\r\n<p>Vitae donec vitae aptent. Mi phasellus curae; gravida platea ipsum placerat conubia nonummy ullamcorper taciti vulputate at class aptent et porta libero suspendisse Non vitae donec blandit facilisis fames porta aptent vel fusce consectetuer nec maecenas. Sem nam volutpat mi odio dolor convallis penatibus blandit malesuada eu. Aenean integer amet placerat maecenas nec platea neque sed per facilisis suspendisse vel eu. Venenatis nascetur. Varius. Aliquam. Laoreet ullamcorper facilisis urna. In, magna massa accumsan tristique lobortis nisi. Metus sollicitudin sociosqu facilisis aliquet donec fusce nec amet cras mauris senectus porttitor augue elementum iaculis orci volutpat eget sem at odio amet sem. Facilisi aliquet aliquam. Egestas montes suscipit nulla luctus, et velit.</p>\r\n<p>&nbsp;</p>\r\n<p>Bibendum. Nascetur hendrerit. Nisl mi, lorem magna malesuada dictum fringilla proin pede montes primis leo lacus ridiculus urna habitant habitant rhoncus leo justo, mollis. Dignissim venenatis per Senectus. Quam mus tempor magna curabitur scelerisque facilisi dolor. Curabitur ac pretium mus odio quisque volutpat purus, montes tortor torquent non interdum integer pellentesque tellus donec primis convallis ad sociis, pellentesque velit adipiscing mi. Neque duis tellus molestie inceptos urna urna mollis lectus. Est interdum porttitor Facilisis laoreet, vivamus risus eget. Senectus nec ante, amet massa. Erat est Non consequat non magnis rutrum quis sit molestie class sapien urna sem placerat, malesuada felis pulvinar habitant nonummy litora.</p>', '2018-11-02 00:00:00', 0, 0, '2018-12-13 00:00:00'),
(31, 3, 3, 'Good chance to enter best school', 'img/31.jpg', '<p>Nibh curae; bibendum, sem. Lobortis ullamcorper erat massa. Lobortis dis. Quisque metus auctor torquent. Donec massa, conubia cras odio pharetra primis pede fermentum mus dolor. Condimentum eu lacinia, placerat mi fusce nostra taciti nam per aliquet potenti dapibus massa, pulvinar ridiculus vel dis turpis elementum blandit felis curabitur vestibulum pede mus, a nulla, lacus leo ad. Ipsum. Eleifend hymenaeos pretium faucibus lacinia dignissim donec. Mus quam congue. Vestibulum, mollis cum accumsan tempor euismod orci mattis amet per eget, iaculis tincidunt non cursus iaculis consequat etiam. Est.</p>\r\n<p>&nbsp;</p>\r\n<p>Vitae donec vitae aptent. Mi phasellus curae; gravida platea ipsum placerat conubia nonummy ullamcorper taciti vulputate at class aptent et porta libero suspendisse Non vitae donec blandit facilisis fames porta aptent vel fusce consectetuer nec maecenas. Sem nam volutpat mi odio dolor convallis penatibus blandit malesuada eu. Aenean integer amet placerat maecenas nec platea neque sed per facilisis suspendisse vel eu. Venenatis nascetur. Varius. Aliquam. Laoreet ullamcorper facilisis urna. In, magna massa accumsan tristique lobortis nisi. Metus sollicitudin sociosqu facilisis aliquet donec fusce nec amet cras mauris senectus porttitor augue elementum iaculis orci volutpat eget sem at odio amet sem. Facilisi aliquet aliquam. Egestas montes suscipit nulla luctus, et velit.</p>\r\n<p>&nbsp;</p>\r\n<p>Bibendum. Nascetur hendrerit. Nisl mi, lorem magna malesuada dictum fringilla proin pede montes primis leo lacus ridiculus urna habitant habitant rhoncus leo justo, mollis. Dignissim venenatis per Senectus. Quam mus tempor magna curabitur scelerisque facilisi dolor. Curabitur ac pretium mus odio quisque volutpat purus, montes tortor torquent non interdum integer pellentesque tellus donec primis convallis ad sociis, pellentesque velit adipiscing mi. Neque duis tellus molestie inceptos urna urna mollis lectus. Est interdum porttitor Facilisis laoreet, vivamus risus eget. Senectus nec ante, amet massa. Erat est Non consequat non magnis rutrum quis sit molestie class sapien urna sem placerat, malesuada felis pulvinar habitant nonummy litora.</p>', '2018-11-02 00:00:00', 0, 0, '2018-12-13 00:00:00'),
(32, 2, 3, 'Good chance to enter best school', 'img/32.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2018-12-20 00:00:00', 110, 1, '2018-12-12 00:00:00'),
(33, 2, 3, 'Good chance to enter best school', 'img/33.jpg', '<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Nibh sed. Semper hac ad primis sociosqu consectetuer sapien fusce torquent lobortis augue in ullamcorper tellus per maecenas dictum nonummy Justo orci, a auctor. Ac mollis gravida per Duis sociis eleifend hac facilisi pede tristique quisque consectetuer dapibus sodales felis amet sapien sociosqu nec platea. Sollicitudin nibh integer cum. Accumsan quis interdum porttitor viverra Duis hymenaeos placerat eu pretium consectetuer parturient. Tellus enim ornare arcu congue eget curae; lacus parturient mus consequat quam parturient augue dictumst tempus. Sociis nunc at netus dignissim vestibulum pellentesque. At porttitor laoreet turpis ipsum nulla pede facilisis. Taciti nibh justo. Condimentum, taciti, laoreet porttitor laoreet aptent volutpat senectus. Risus volutpat dolor congue hendrerit.</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Nibh quisque augue tristique ridiculus bibendum tortor, duis nam in tristique velit fermentum dis volutpat maecenas, donec nullam dapibus Varius dictum venenatis duis luctus dis vitae vitae pretium euismod Diam vitae tortor in mattis eleifend donec pede, velit. Vestibulum platea phasellus urna. Lacinia. Ultrices. Auctor, nunc nullam, tincidunt luctus, sem sed egestas tincidunt quam mollis ad. Malesuada. Maecenas duis et vivamus. Risus mus primis vivamus proin rutrum aliquam convallis mus fringilla augue. Cras iaculis. Pellentesque. Facilisi. Fames. Euismod ligula. Vivamus faucibus egestas sodales vivamus et eros scelerisque penatibus per nascetur pede, eros sapien risus commodo aliquet. Eleifend.</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; font-size: 12.16px; color: #555555; font-family: Arial, sans-serif;\">Cras ultrices neque justo. Facilisis. A commodo sapien dolor vehicula Arcu ac varius, mi turpis donec nunc. Odio platea sollicitudin laoreet facilisi ultrices sociis per elit Placerat tellus turpis quisque semper penatibus tempus id mi dictumst consectetuer ullamcorper placerat phasellus praesent ultrices tincidunt augue metus conubia torquent at vestibulum molestie nonummy litora ante sodales diam ligula per diam ridiculus accumsan dui Venenatis lacus imperdiet iaculis. Volutpat torquent ligula, cubilia pede ipsum duis. Rhoncus vestibulum ullamcorper dui aliquam tincidunt massa rhoncus at posuere porttitor nibh id dis, id montes rhoncus magna ac dis imperdiet cum parturient.</p>', '2018-11-02 00:00:00', 0, 0, '2018-11-09 00:00:00'),
(34, 1, 3, 'New Article name', 'img/34.jpg', '<p>Nibh sed. Semper hac ad primis sociosqu consectetuer sapien fusce torquent lobortis augue in ullamcorper tellus per maecenas dictum nonummy Justo orci, a auctor. Ac mollis gravida per Duis sociis eleifend hac facilisi pede tristique quisque consectetuer dapibus sodales felis amet sapien sociosqu nec platea. Sollicitudin nibh integer cum. Accumsan quis interdum porttitor viverra Duis hymenaeos placerat eu pretium consectetuer parturient. Tellus enim ornare arcu congue eget curae; lacus parturient mus consequat quam parturient augue dictumst tempus. Sociis nunc at netus dignissim vestibulum pellentesque. At porttitor laoreet turpis ipsum nulla pede facilisis. Taciti nibh justo. Condimentum, taciti, laoreet porttitor laoreet aptent volutpat senectus. Risus volutpat dolor congue hendrer. 1111-----</p>\r\n<p>&nbsp;</p>\r\n<p>Nibh quisque augue tristique ridiculus bibendum tortor, duis nam in tristique velit fermentum dis volutpat maecenas, donec nullam dapibus Varius dictum venenatis duis luctus dis vitae vitae pretium euismod Diam vitae tortor in mattis eleifend donec pede, velit. Vestibulum platea phasellus urna. Lacinia. Ultrices. Auctor, nunc nullam, tincidunt luctus, sem sed egestas tincidunt quam mollis ad. Malesuada. Maecenas duis et vivamus. Risus mus primis vivamus proin rutrum aliquam convallis mus fringilla augue. Cras iaculis. Pellentesque. Facilisi. Fames. Euismod ligula. Vivamus faucibus egestas sodales vivamus et eros scelerisque penatibus per nascetur pede, eros sapien risus commodo aliquet. Eleifend.</p>\r\n<p>&nbsp;</p>\r\n<p>Cras ultrices neque justo. Facilisis. A commodo sapien dolor vehicula Arcu ac varius, mi turpis donec nunc. Odio platea sollicitudin laoreet facilisi ultrices sociis per elit Placerat tellus turpis quisque semper penatibus tempus id mi dictumst consectetuer ullamcorper placerat phasellus praesent ultrices tincidunt augue metus conubia torquent at vestibulum molestie nonummy litora ante sodales diam ligula per diam ridiculus accumsan dui Venenatis lacus imperdiet iaculis. Volutpat torquent ligula, cubilia pede ipsum duis. Rhoncus vestibulum ullamcorper dui aliquam tincidunt massa rhoncus at posuere porttitor nibh id dis, id montes rhoncus magna ac dis imperdiet cum parturient.</p>', '2018-12-06 00:00:00', 32, 1, '2018-12-05 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `article_categories`
--

CREATE TABLE `article_categories` (
  `Art_cat_ID` int(11) NOT NULL,
  `Art_cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `article_categories`
--

INSERT INTO `article_categories` (`Art_cat_ID`, `Art_cat_name`) VALUES
(1, 'Scholarships'),
(2, 'Universities'),
(3, 'Exchange Programs');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `Role_ID` int(11) NOT NULL,
  `Role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`Role_ID`, `Role_name`) VALUES
(1, 'Content Manager'),
(2, 'Content Editor'),
(3, 'Client');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `User_role_FK` int(11) NOT NULL,
  `User_f_name` varchar(100) NOT NULL,
  `User_s_name` varchar(100) NOT NULL,
  `User_email` varchar(255) NOT NULL,
  `User_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`User_ID`, `User_role_FK`, `User_f_name`, `User_s_name`, `User_email`, `User_password`) VALUES
(3, 2, 'Content', 'Editor', 'vova125_na@mail.ru', 'password'),
(4, 1, 'Content', 'Manager', 'vova.e.125@gmail.com', 'password'),
(5, 3, 'EGAY', 'VLADIMIR', 'vladimir.egay@gmail.com', 'qwerty'),
(6, 3, 'EGAY', 'VLADIMIR', 'vovffa.e.125@gmail.com', 'df'),
(7, 3, 'EGAY', 'VLADIMIR', 'vova.de.125@gmail.com', 'dd'),
(8, 3, 'EGAY', 'VLADIMIR', 'vova.edd.125@gmail.com', 'dd'),
(9, 3, 'EGAY', 'VLADIMIR', 'vovasdf.e.125@gmail.com', 'sdf');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`Art_ID`),
  ADD UNIQUE KEY `Art_ID` (`Art_ID`),
  ADD UNIQUE KEY `Art_ID_4` (`Art_ID`),
  ADD KEY `Art_ID_2` (`Art_ID`),
  ADD KEY `Art_ID_3` (`Art_ID`),
  ADD KEY `Art_category_FK` (`Art_category_FK`),
  ADD KEY `Art_writer_user` (`Art_writer_user`);

--
-- Индексы таблицы `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`Art_cat_ID`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Role_ID`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `User_email` (`User_email`),
  ADD KEY `User_role_FK` (`User_role_FK`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `Art_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `Art_cat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `Role_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`Art_category_FK`) REFERENCES `article_categories` (`Art_cat_ID`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`Art_writer_user`) REFERENCES `users` (`User_ID`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`User_role_FK`) REFERENCES `roles` (`Role_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
