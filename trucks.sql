-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               8.0.20 - MySQL Community Server - GPL
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица trucks.breadcrumbs
CREATE TABLE IF NOT EXISTS `breadcrumbs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentID` int unsigned NOT NULL,
  `href` tinytext NOT NULL,
  `text` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы trucks.breadcrumbs: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `breadcrumbs` DISABLE KEYS */;
INSERT INTO `breadcrumbs` (`id`, `parentID`, `href`, `text`) VALUES
	(1, 0, '#', 'Home'),
	(2, 1, '#', 'Trucks'),
	(3, 2, '#', 'DAF');
/*!40000 ALTER TABLE `breadcrumbs` ENABLE KEYS */;

-- Дамп структуры для таблица trucks.nav
CREATE TABLE IF NOT EXISTS `nav` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `href` tinytext NOT NULL,
  `text` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы trucks.nav: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `nav` DISABLE KEYS */;
INSERT INTO `nav` (`id`, `href`, `text`) VALUES
	(1, '#', 'Home'),
	(2, '#', 'Trucks'),
	(3, '#', 'About Us'),
	(4, '#', 'Contact');
/*!40000 ALTER TABLE `nav` ENABLE KEYS */;

-- Дамп структуры для таблица trucks.page_meta
CREATE TABLE IF NOT EXISTS `page_meta` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `h1` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы trucks.page_meta: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `page_meta` DISABLE KEYS */;
INSERT INTO `page_meta` (`id`, `h1`, `title`, `meta_keywords`, `meta_description`) VALUES
	(1, 'DAF - TRUCKS FOR SALE FROM NETHERLANDS', 'Used DAF trucks from Netherlands for sale at SuperTrucks NL', 'trucks, offers, prices, used, new, marketplace', 'Keyword: daf netherlands. 26 trucks. Find new or used trucks in any price range fast and easy!');
/*!40000 ALTER TABLE `page_meta` ENABLE KEYS */;

-- Дамп структуры для таблица trucks.page_text
CREATE TABLE IF NOT EXISTS `page_text` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pageID` int unsigned NOT NULL,
  `tag` tinytext NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы trucks.page_text: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `page_text` DISABLE KEYS */;
INSERT INTO `page_text` (`id`, `pageID`, `tag`, `content`) VALUES
	(1, 1, 'p', 'A truck (a heavy load vehicle) – is a means of transport intended for load transportation. The concept of a “truck” has a rather broad definition and includes tractor units, as well as commercial vehicles and even pick-ups. A truck consists of a traction part and a load platform. Now let’s take into consideration trucks with the integral load platform and the GVW that reaches up to 7, 5 tons.'),
	(2, 1, 'p', 'Trucks’ axle configuration may vary from 4x2 to 8x8 according to the engine capacity and the purpose of a truck. Thus, quarry and construction dump trucks are equipped with 4x4, 6x4, 6x6 and 8x6 wheel-bases more often.'),
	(3, 1, 'p', 'Trucks are equipped with all modern passive and active safety systems in order to use the truck in urban areas or on the highways. These systems include collision prevention system, hill hold control, self-adjusting headlights, etc. Moreover, a contemporary truck meets all the requirements concerning driver’s comfort and the ergonomics of the cabin.');
/*!40000 ALTER TABLE `page_text` ENABLE KEYS */;

-- Дамп структуры для таблица trucks.stock
CREATE TABLE IF NOT EXISTS `stock` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `href` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `price` int NOT NULL DEFAULT '0',
  `price_currency` tinytext NOT NULL,
  `make` tinytext NOT NULL,
  `model` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `year` smallint NOT NULL DEFAULT '0',
  `mileage` int NOT NULL DEFAULT '0',
  `mileage_measure` tinytext NOT NULL,
  `axle_configuration` tinytext NOT NULL,
  `power` smallint NOT NULL DEFAULT '0',
  `power_measure` tinytext NOT NULL,
  `payload` tinytext NOT NULL,
  `gross_weight` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы trucks.stock: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` (`id`, `href`, `title`, `price`, `price_currency`, `make`, `model`, `type`, `year`, `mileage`, `mileage_measure`, `axle_configuration`, `power`, `power_measure`, `payload`, `gross_weight`, `image`) VALUES
	(1, '#', 'DAF XF 440 6X2 SSC Intarder Standklima Liftachse ACC Euro 6', 25900, 'EUR', 'DAF', 'XF 440 SSC', 'Container transporter/ swap body truck', 2014, 486647, 'km', '6x2', 440, 'hp', '16 550 kg', '25 700 kg', '1.jpg'),
	(2, '#', 'DAF XF 460 SSC 6X2 SSC ACC Liftachse Intarder Euro 6', 29900, 'EUR', 'DAF', 'XF 440 SSC', 'Container transporter/ swap body truck', 2016, 554317, 'km', '6x2', 460, 'hp', '15 761 kg', '26 000 kg', '2.jpg'),
	(3, '#', 'DAF CF 75.310 + Manual', 7950, 'EUR', 'DAF', 'CF 75.310', 'Cab chassis truck', 2006, 1026087, 'km', '4x4', 310, 'hp', '10 710 kg', '18 600 kg', '3.jpg'),
	(4, '#', 'DAF CF 65.300 + Euro 5 + lift', 25950, 'EUR', 'DAF', 'CF 65.300', 'Curtainsider truck', 2014, 537307, 'km', '4x2', 300, 'hp', '9 634 kg', '19 000 kg', '4.jpg'),
	(5, '#', 'DAF XF 105.410 + Combi floor + Euro 5', 19500, 'EUR', 'FORD', 'XF 105.410', 'Box truck', 2009, 1142998, 'km', '4x2', 408, 'hp', '7 445 kg', '19 000 kg', '5.jpg'),
	(6, '#', 'DAF 105 XF 460 6x2, EURO 5, Airco, Combi', 18750, 'EUR', 'FORD', 'XF 105.460', 'Curtainsider truck', 2012, 897000, 'km', '6x2', 460, 'hp', '14 960 kg', '26 000 kg', '6.jpg');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
