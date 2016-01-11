-- --------------------------------------------------------
-- Host:                         172.99.96.76
-- Server version:               5.5.5-10.0.16-MariaDB-1-log - (Debian)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2016-01-08 09:31:25
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for 956744_marlabs
DROP DATABASE IF EXISTS `956744_marlabs`;
CREATE DATABASE IF NOT EXISTS `956744_marlabs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `956744_marlabs`;


-- Dumping structure for table 956744_marlabs.Product
DROP TABLE IF EXISTS `Product`;
CREATE TABLE IF NOT EXISTS `Product` (
  `pid` varchar(20) NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `picurl` varchar(500) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table 956744_marlabs.Product: ~10 rows (approximately)
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` (`pid`, `pname`, `price`, `picurl`, `brand`) VALUES
	('1', 'Champion Women\'s Freedom Seamless Racerback Sports Bra', 31.99, 'http://roadrunnersports.scene7.com/is/image/roadrunnersports/RRL1141-HCHBK?iv=izUIP2&wid=1314&hei=1200&fit=fit,1', 'Champion'),
	('10', 'Champion Women\'s Spot Comfort Full Support Sports Bra', 56.99, 'http://ecx.images-amazon.com/images/I/91HT27a60XL._UX385_.jpg', 'Champion'),
	('2', 'Champion Women\'s Absolute Workout Sports Bra', 35, 'http://blog.dealrocker.com/wp-content/uploads/2010/04/Nike-Pro-Racerback-Bra.jpg', 'Champion'),
	('3', 'Nike 375833 Pro Bra', 63.78, 'http://images.jockey.com/en-us/catalog/productimages/699700_f.jpg', 'Nike'),
	('4', 'Under Armour Women\'s Mid Printed Sports Bra', 49.88, 'http://ecx.images-amazon.com/images/I/41yNF9Hd-BL._SX342_.jpg', 'Under Armour'),
	('5', 'La Isla Women\'s Light Support Cross Back Wirefree Removable Cups Yoga Sports Bra', 18.9, 'http://scene7.targetimg1.com/is/image/Target/16250568?wid=480&hei=480', 'La Isla'),
	('6', 'Glamorise Women\'s No-Bounce Full-Support Sport Bra', 69.46, 'http://ecx.images-amazon.com/images/I/419kTwpRhcL._SX342_.jpg', 'Glamorise'),
	('7', 'Under Armour Women\'s Mid Sports Bra', 49.95, 'https://underarmour.scene7.com/is/image/Underarmour/V5-1273504-016_HTF?template=v65GridLarge&$size=599,735&$wid=281&$hei=345&$extend=0,220,0,0', 'Under Armour'),
	('8', 'Champion Women\'s Absolute Sports Bra with SmoothTec Band', 31.99, 'http://ecx.images-amazon.com/images/I/911Isi8cfbL._UX385_.jpg', 'Champion'),
	('9', 'Fruit of the Loom Women\'s Built-Up Sports Bra, (Pack of 3)', 20.99, 'https://s-media-cache-ak0.pinimg.com/736x/06/69/70/066970fa6705045f899f717014abed02.jpg', 'Fruit of the Loom');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;


-- Dumping structure for table 956744_marlabs.User
DROP TABLE IF EXISTS `User`;
CREATE TABLE IF NOT EXISTS `User` (
  `userid` varchar(20) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `upassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table 956744_marlabs.User: ~1 rows (approximately)
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` (`userid`, `username`, `upassword`) VALUES
	('1', 'abc', '123');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;


-- Dumping structure for table 956744_marlabs.Wishlist
DROP TABLE IF EXISTS `Wishlist`;
CREATE TABLE IF NOT EXISTS `Wishlist` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `pid` varchar(20) NOT NULL DEFAULT '',
  `quantities` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`,`pid`),
  KEY `pid` (`pid`),
  CONSTRAINT `Wishlist_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`),
  CONSTRAINT `Wishlist_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `Product` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table 956744_marlabs.Wishlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `Wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `Wishlist` ENABLE KEYS */;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;


-- Dumping database structure for information_schema
DROP DATABASE IF EXISTS `information_schema`;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
