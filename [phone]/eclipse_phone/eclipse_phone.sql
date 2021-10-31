CREATE TABLE IF NOT EXISTS `eclipse_phone_8dynasty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `playerPhone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `eclipse_phone_ambulance_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerName` varchar(50) DEFAULT NULL,
  `PlayerPhone` varchar(50) DEFAULT NULL,
  `Message` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `eclipse_phone_anon_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(50) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `eclipse_phone_bleeter` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(500) NOT NULL DEFAULT '0',
  `author` varchar(500) DEFAULT NULL,
  `authorImage` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `date` varchar(500) DEFAULT NULL,
  `authorPhone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `eclipse_phone_bleeter_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `playerPhone` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `eclipse_phone_coded_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(50) DEFAULT NULL,
  `to` varchar(50) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `eclipse_phone_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `contacts` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `eclipse_phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` tinyint(4) DEFAULT NULL,
  `readed` tinyint(4) DEFAULT NULL,
  `numb` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `playerphone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `eclipse_phone_police_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerName` varchar(50) DEFAULT NULL,
  `PlayerPhone` varchar(50) DEFAULT NULL,
  `Message` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `eclipse_phone_weazel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `subtitle` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;