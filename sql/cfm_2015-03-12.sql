# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.22)
# Database: cfm
# Generation Time: 2015-03-13 02:25:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table asset_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_types`;

CREATE TABLE `asset_types` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `asset_types` WRITE;
/*!40000 ALTER TABLE `asset_types` DISABLE KEYS */;

INSERT INTO `asset_types` (`id`, `asset_type_name`)
VALUES
	(1,'banner-image'),
	(2,'banner-video'),
	(3,'detail-left'),
	(4,'detail-right'),
	(5,'gallery');

/*!40000 ALTER TABLE `asset_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type_id` int(2) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `subhead` varchar(200) DEFAULT NULL,
  `blurb` varchar(400) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;

INSERT INTO `assets` (`id`, `asset_type_id`, `title`, `heading`, `subhead`, `blurb`, `description`)
VALUES
	(1,1,NULL,NULL,NULL,NULL,NULL),
	(2,1,NULL,NULL,NULL,NULL,NULL),
	(3,1,NULL,NULL,NULL,NULL,NULL),
	(4,1,NULL,NULL,NULL,NULL,NULL),
	(5,1,NULL,NULL,NULL,NULL,NULL),
	(6,1,NULL,NULL,NULL,NULL,NULL),
	(7,1,NULL,NULL,NULL,NULL,NULL),
	(8,1,NULL,NULL,NULL,NULL,NULL),
	(9,2,NULL,NULL,NULL,NULL,NULL),
	(10,2,NULL,NULL,NULL,NULL,NULL),
	(11,2,'Watch Trailer',NULL,NULL,NULL,NULL),
	(12,2,NULL,NULL,NULL,NULL,NULL),
	(13,2,NULL,NULL,NULL,NULL,NULL),
	(14,2,NULL,NULL,NULL,NULL,NULL),
	(15,1,NULL,NULL,NULL,NULL,NULL),
	(16,2,NULL,NULL,NULL,NULL,NULL),
	(17,1,NULL,NULL,NULL,NULL,NULL),
	(18,2,NULL,NULL,NULL,NULL,NULL),
	(19,1,NULL,NULL,NULL,NULL,NULL),
	(20,2,NULL,NULL,NULL,NULL,NULL),
	(21,1,NULL,NULL,NULL,NULL,NULL),
	(22,1,NULL,NULL,NULL,NULL,NULL),
	(23,1,NULL,NULL,NULL,NULL,NULL),
	(24,1,NULL,NULL,NULL,NULL,NULL),
	(25,1,NULL,NULL,NULL,NULL,NULL),
	(26,1,NULL,NULL,NULL,NULL,NULL),
	(27,1,NULL,NULL,NULL,NULL,NULL),
	(28,1,NULL,NULL,NULL,NULL,NULL),
	(29,1,NULL,NULL,NULL,NULL,NULL),
	(30,1,NULL,NULL,NULL,NULL,NULL),
	(31,1,NULL,NULL,NULL,NULL,NULL),
	(32,1,NULL,NULL,NULL,NULL,NULL),
	(33,1,NULL,NULL,NULL,NULL,NULL),
	(34,1,NULL,NULL,NULL,NULL,NULL),
	(35,1,NULL,NULL,NULL,NULL,NULL),
	(36,1,NULL,NULL,NULL,NULL,NULL),
	(37,1,NULL,NULL,NULL,NULL,NULL),
	(38,1,NULL,NULL,NULL,NULL,NULL),
	(39,1,NULL,NULL,NULL,NULL,NULL),
	(40,1,NULL,NULL,NULL,NULL,NULL),
	(41,1,NULL,NULL,NULL,NULL,NULL),
	(42,1,NULL,NULL,NULL,NULL,NULL),
	(43,1,NULL,NULL,NULL,NULL,NULL),
	(44,1,NULL,NULL,NULL,NULL,NULL),
	(45,1,NULL,NULL,NULL,NULL,NULL),
	(46,1,NULL,NULL,NULL,NULL,NULL),
	(47,1,NULL,NULL,NULL,NULL,NULL),
	(48,2,NULL,NULL,NULL,NULL,NULL),
	(49,2,'About VFILES',NULL,NULL,NULL,NULL),
	(50,2,NULL,NULL,NULL,NULL,NULL),
	(51,3,'Yippie Giffs',NULL,NULL,NULL,NULL),
	(52,1,'Wendy\'s Giffs',NULL,NULL,NULL,NULL),
	(53,5,'Lowe\'s Vines','The 12 Spots','looped more than 13.5 million times',NULL,'The 12 spots that resulted became the most popular Lowe’s Vine campaign to date and have now been looped more than 13.5 million times.'),
	(54,2,'',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table assets_media_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets_media_lu`;

CREATE TABLE `assets_media_lu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(4) DEFAULT NULL,
  `media_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `assets_media_lu` WRITE;
/*!40000 ALTER TABLE `assets_media_lu` DISABLE KEYS */;

INSERT INTO `assets_media_lu` (`id`, `asset_id`, `media_id`)
VALUES
	(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5),
	(6,6,6),
	(7,7,7),
	(8,8,8),
	(9,9,9),
	(10,10,10),
	(11,11,11),
	(12,12,12),
	(13,13,13),
	(14,14,14),
	(15,15,15),
	(16,16,16),
	(17,17,17),
	(18,18,18),
	(19,19,19),
	(20,20,20),
	(21,21,21),
	(22,22,22),
	(23,23,23),
	(24,24,24),
	(25,25,25),
	(26,26,26),
	(27,27,27),
	(28,28,28),
	(29,29,29),
	(30,30,30),
	(31,31,31),
	(32,32,32),
	(33,33,33),
	(34,34,34),
	(35,35,35),
	(36,36,36),
	(37,37,37),
	(38,38,38),
	(39,39,39),
	(40,40,40),
	(41,41,41),
	(42,42,42),
	(43,43,43),
	(44,44,44),
	(45,45,45),
	(46,46,46),
	(47,47,47),
	(48,48,48),
	(49,49,49),
	(50,50,50),
	(51,51,62),
	(52,51,63),
	(53,51,64),
	(54,51,65),
	(55,52,66),
	(56,52,67),
	(57,52,68),
	(58,52,69),
	(59,52,70),
	(60,52,71),
	(61,52,72),
	(62,52,73),
	(63,53,51),
	(64,53,52),
	(65,53,53),
	(66,53,54),
	(67,53,55),
	(68,53,56),
	(69,53,57),
	(70,53,58),
	(71,53,59),
	(72,53,60),
	(73,53,61),
	(74,54,74),
	(75,53,75);

/*!40000 ALTER TABLE `assets_media_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `category_name`)
VALUES
	(1,'project'),
	(2,'featured');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  `href` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;

INSERT INTO `links` (`id`, `label`, `href`)
VALUES
	(1,'iTunes','https://itunes.apple.com/us/app/v'),
	(2,'Google Play','https://play.google.com/store/apps/details?id=com.vfiles.smashion&hl=en'),
	(4,'Visit Site','http://bcacampaign.com/'),
	(5,'See Experience','http://staging.click3x.com/kmart/kmart_shoppable-video/'),
	(6,'Visit Site','http://www.peanutbutter.com/yippee/funbutton/index.php'),
	(8,'Visit Site','http://www.gamut.media/'),
	(9,'VFILES','http://vfiles.com');

/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `filename` varchar(100) DEFAULT NULL,
  `media_type_id` int(2) DEFAULT NULL,
  `href` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;

INSERT INTO `media` (`id`, `title`, `description`, `filename`, `media_type_id`, `href`)
VALUES
	(1,NULL,NULL,'wendys_header',1,NULL),
	(2,NULL,NULL,'gamut_header',1,NULL),
	(3,NULL,NULL,'skippy_yippie_header',1,NULL),
	(4,NULL,NULL,'smashion_header',1,NULL),
	(5,NULL,NULL,'bca_header',1,NULL),
	(6,NULL,NULL,'lowes_vines_header',1,NULL),
	(7,NULL,NULL,'kmart_video_header',1,NULL),
	(8,NULL,NULL,'gazprom_header',1,NULL),
	(9,NULL,NULL,'Gazprom_Casestudy',2,NULL),
	(10,NULL,NULL,'VFILES_CS_FINAL',2,NULL),
	(11,NULL,NULL,'BCA2014_Trailer_Final',2,NULL),
	(12,NULL,NULL,'Skippy_Case_Study',2,NULL),
	(13,NULL,NULL,'Wendys_CS',2,NULL),
	(14,NULL,NULL,'gamut',2,NULL),
	(15,NULL,NULL,'mufe_header',1,NULL),
	(16,NULL,NULL,'MakeUpForever',2,NULL),
	(17,NULL,NULL,'sharp_header',1,NULL),
	(18,NULL,NULL,'sharp_experience',2,NULL),
	(19,NULL,NULL,'roxy_header',1,NULL),
	(20,NULL,NULL,'Roxy_01',2,NULL),
	(21,NULL,NULL,'7forAllmankind_header',2,NULL),
	(22,NULL,NULL,'Amtrak_header',1,NULL),
	(23,NULL,NULL,'Armorall_header',1,NULL),
	(24,NULL,NULL,'ATT_Flick_header',1,NULL),
	(25,NULL,NULL,'BCA_2013_header',1,NULL),
	(26,NULL,NULL,'Chaps_header',1,NULL),
	(27,NULL,NULL,'ChevySonic_header',1,NULL),
	(28,NULL,NULL,'Daffys_header',1,NULL),
	(29,NULL,NULL,'davidb_header',1,NULL),
	(30,NULL,NULL,'Dennys_header',1,NULL),
	(31,NULL,NULL,'Durex_header',1,NULL),
	(32,NULL,NULL,'EUC_header',1,NULL),
	(33,NULL,NULL,'Google_header',1,NULL),
	(34,NULL,NULL,'Geico_piggy_header',1,NULL),
	(35,NULL,NULL,'Geico_ventriloquist_header',1,NULL),
	(36,NULL,NULL,'HeardCity_header',1,NULL),
	(37,NULL,NULL,'HM_header',1,NULL),
	(38,NULL,NULL,'ManVSFood_header',1,NULL),
	(39,NULL,NULL,'munchkin_header',1,NULL),
	(40,NULL,NULL,'NineWest_header',1,NULL),
	(41,NULL,NULL,'Parliament_header',1,NULL),
	(42,NULL,NULL,'Pedigree_header',1,NULL),
	(43,NULL,NULL,'SailorJerry_header',1,NULL),
	(44,NULL,NULL,'uniqlo_header',1,NULL),
	(45,NULL,NULL,'Verizon_header',1,NULL),
	(46,NULL,NULL,'Zyrtec',1,NULL),
	(47,NULL,NULL,'att2_header',1,NULL),
	(48,NULL,NULL,'Wendys_ANTHEM_BBQ_YT',2,NULL),
	(49,NULL,NULL,'Welcome_to_VFILES_1',2,NULL),
	(50,NULL,NULL,'SharpAppv4_final',2,NULL),
	(51,'View Vine',NULL,'lowes/Beaver',1,'https://vine.co/v/O5KWXxVKiea'),
	(52,'View Vine',NULL,'lowes/Bookshelve',1,'https://vine.co/v/O5KWXxVKiea'),
	(53,'View Vine',NULL,'lowes/Car_Boost',1,'https://vine.co/v/O5KWXxVKiea'),
	(54,'View Vine',NULL,'lowes/Firepit',1,'https://vine.co/v/O5KWXxVKiea'),
	(55,'View Vine',NULL,'lowes/Goggles',1,'https://vine.co/v/O5KWXxVKiea'),
	(56,'View Vine',NULL,'lowes/MC_ESCHER',1,'https://vine.co/v/O5KWXxVKiea'),
	(57,'View Vine',NULL,'lowes/Popcorn',1,'https://vine.co/v/O5KWXxVKiea'),
	(58,'View Vine',NULL,'lowes/Puff',1,'https://vine.co/v/O5KWXxVKiea'),
	(59,'View Vine',NULL,'lowes/Ring_Of_Fire',1,'https://vine.co/v/O5KWXxVKiea'),
	(60,'View Vine',NULL,'lowes/Santa',1,'https://vine.co/v/O5KWXxVKiea'),
	(61,'View Vine',NULL,'lowes/Space_Invader',1,'https://vine.co/v/O5KWXxVKiea'),
	(62,NULL,NULL,'skippy/Cat',3,NULL),
	(63,NULL,NULL,'skippy/Emojis',3,NULL),
	(64,NULL,NULL,'skippy/Lettering_Color',3,NULL),
	(65,NULL,NULL,'skippy/Pineappleparty',3,NULL),
	(66,NULL,NULL,'wendys/tumbler_1',3,NULL),
	(67,NULL,NULL,'wendys/tumbler_2',3,NULL),
	(68,NULL,NULL,'wendys/tumbler_3',3,NULL),
	(69,NULL,NULL,'wendys/tumbler_4',3,NULL),
	(70,NULL,NULL,'wendys/tumbler_5',3,NULL),
	(71,NULL,NULL,'wendys/tumbler_6',3,NULL),
	(72,NULL,NULL,'wendys/tumbler_7',3,NULL),
	(73,NULL,NULL,'wendys/tumbler_8',3,NULL),
	(74,NULL,NULL,'Lowes_Case_Study',2,NULL),
	(75,'View Vine',NULL,'lowes/Flashlight',1,'https://vine.co/v/O5KWXxVKiea');

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;

INSERT INTO `media_types` (`id`, `media_type_name`)
VALUES
	(1,'jpg'),
	(2,'video'),
	(3,'gif'),
	(4,'png');

/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `subhead` varchar(200) DEFAULT NULL,
  `blurb` varchar(500) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `thumbnail_image` varchar(50) DEFAULT NULL,
  `client_logo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;

INSERT INTO `projects` (`id`, `order`, `slug`, `title`, `heading`, `subhead`, `blurb`, `description`, `thumbnail_image`, `client_logo`)
VALUES
	(1,2,'bbq4merica','Wendy\'s','Solving the BBQ Crisis','A 360 campaign around #BBQ4MERICA that began with a parody PSA anthem video and ended with 7.5 million impressions.',NULL,'Like all good things, BBQ is the God-given right of every red-blooded American. ClickFire Media partnered with VML to produce a 360 campaign based on a tongue-in-cheek PSA: Americans needed “BBQ Accessibility,” the goal being to raise awareness of Wendy’s unparalleled BBQ selection.</p><p>Over the course of three weeks, we integrated live-action, post-production and social engagement at our in-house studios, tapping celebrity talent (Alfonso Ribeiro, Ralph Macchio and Steve Austin) to create our parody of a public service announcement on the dire crisis facing Americans not getting enough BBQ sauce. The video was sponsored content on Facebook and got over 4 million views the first week alone. This was later blown out through social media via the hashtag #BBQ4MERICA.  A live “Tweetathon” was held in LA, hosted by Alfonso Ribero, and a Tumblr was created to drive traffic to YouTube. Responses to tweets were edited on site in real time, resulting in 9 video responses.</p><p>In total, over 26 videos and countless GIFS were produced. The goal was 1.5 million views, butowing to the strategy, the creativity and the expertise of our teams we reached 7.5 million impressions across all channels.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Wendy’s<br />\n<span class=\"description-label\">Credits:</span> Click3X, Raison D\'Être, and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span>Social Media – Tumblr, Facebook, Twitter','bbq4merica','wendys'),
	(2,5,'gamut','Gamut','Running the Gamut','Taking a brand from an ambitious vision to a dynamic, cross-channel digital reality.',NULL,'Turning  a new brand vision into reality, Click 3X partnered with CO-OP Marketing to rebrand COX Digital Solutions and craft them a brand-new website. The fully responsive site performs flawlessly across platforms and includes a robust CMS, coded to make managing content a seamless experience. Using cutting-edge CSS3 techniques, the site implements parallax scrolling without the use of Javascript, ensuring a smooth visual effect across all modern browsers.</p><p>A branding video was also produced and launched on the website to communicate the essence of the new brand identity to customers.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>GAMUT<br />\n<span class=\"description-label\">Credits:</span>CO-OP Marketing, Click3X and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet, and Mobile','gamut','gamut'),
	(3,6,'skippy-yippee','Skippy','Spreading “Yippee!” Cheer Across the Universe','An interactive digital campaign for Skippy that people went nuts over.',NULL,'For this tasty challenge, Click 3X, ClickFire Media and BBDO Minneapolis came together to create the Skippy Yippee platform, an broadcast and interactive experience that allows users to spread joyful ‘yippee!’ moments across the universe. In a nutshell, the goal was to communicate the unlimited fun and variety found in every jar of our favorite peanut butter brand, Skippy.</p><p>To begin with, our team concepted, directed and produced a :15 and 0:30 second national television spot demonstrating the peanut selection process - that only the fun peanuts make it into a jar of Skippy Yippee. Custom illustration, animation, and seamless integration with live action footage, brought these unique and fun 3D peanut characters to life.</p><p>To further support the campaign, the “Yippee!” interactive experience was implemented across the peanutbutter.com website, Rich Media ad units and iADs to ensure the same happy experience across all digital devices and platforms. Our highly talented team of interactive Animators and Producers at ClickFire Media and BBDO Minneapolis created over 50 unique GIFS that were launched at the click of a “Fun Button.” Animation was shot in-house, making for a lively two weeks in our studios as as our creative teams set about creating one colorful yippee moment after another to spread happiness across the universe by clicking the “Fun Button.”</p><p>A tracking counter even allowed users to see how many “Yippee!” moments were being spread in real-time across the universe. But most importantly, over 14,000,000 yippee moments were spread throughout  our universe thanks to this campaign!</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>BBDO Minneapolis<br />\n<span class=\"description-label\">Credits:</span>Click3X, ClickFire Media and BBDO Minneapolis<br />\n<span class=\"description-label\">Platforms:</span>Broadcast, Digital and Media','skippy_yippie','skippy'),
	(4,4,'vfiles-smashion','VFILES','Fashion? Smashion!','Social gaming platforms are à la mode, so we concepted and developed SMASHION! for VFILES.','Shop. Play. Share.</p><p>Working with one of the most influential digital platforms\nin today’s fashion realm, Raison D’Être collaborated with\nVFILES to conceptualize and develop a unique mobile\ngaming','What chic sophisticate hasn’t fantasized about donning a fashionable frock on the runway to compete with top models? Raison D’Etre and VFILES collaborated to bring this dream to fruition with an addictive mobile gaming application designed to complement the VFILES brand.</p><p>Just like the big names in Haute Couture, the goal for players is to compete on the runways of four major city’s fashion weeks. Featuring immersive storytelling and challenging gameplay, the app–built for iOS and Android devices–delivers an addictive experience in either landscape or portrait orientation.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>VFILES <br />\n<span class=\"description-label\">Credits:</span>Raison D’Être and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span> Mobile - iOS and Android','smashion','vfiles'),
	(5,3,'bca-campaign','The Estée Lauder Companies','Hear Our Stories, Share Yours.','Unveiling two-way conversations to raise breast cancer awareness.','Raison D’Être, our beauty & fashion division, along with Click 3X collaborated with The Estée Lauder','In 2014 we were challenged  by our client The Estée Lauder Companies, to create a 360 campaign that would  inspire audiences to join the important conversation about breast cancer awareness.</p><p>Our response was to leverage the power of storytelling across the digital and social landscape by amplifying video content, and tailoring the topics of conversation to connect to a wider audience. With the call-to-action: “Hear our stories. Share yours,” Click3x Director Jonathan Yi and ClickFire Media brought together individuals, their families and supporters to capture a two-way conversation. Through authentic narrative and hours of moving footage, audiences learned that cancer is not a solitary struggle; it affects all of us. The hours of moving footage led to the creation of a campaign trailer and 27-minute documentary.</p><p>Users around the world visited the BCACampaign.com website, which was translated into 15 different languages, to share stories, photos, videos and opinions resulting in an aggregated live feed that engaged a global audience. The resulting metrics were astounding -  1,000,000 YouTube views, 2,000,000 social media impressions, and 16,000 moments of engagement demonstrating the power of storytelling to transcending location, space and time.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>The Estée Lauder Companies<br />\n<span class=\"description-label\">Credits:</span>Raison D’Être, Click3X and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span>Broadcast, Print, Digital and Social Media','bca','bca'),
	(6,1,'lowes-vines','Lowes','Building Creativity','Our creative teams partnered with 3 top Viners to build 12 videos for the brand that’s about building.',NULL,'12 videos. 13.5 million loops. That’s what happens when you put Click 3X, 3 top Viners, and the Lowe’s brand in a room together.</p><p>BBDO wanted to promote Lowe’s Black Friday Sales and gave Click 3X two weeks to make it happen. We paired our in-house live action and animation teams with 3 of the nation’s top Viners, tasking them to create a premium shareable experience with high production values that fully exploited the stop-motion capabilities of the Vine platform.</p><p>At our NYC studios these two very different groups swapped technique and inspiration. It was the best of our experienced teams’ original ideas and expertise in production, combined with the irreverence of media-savvy of millennials, that generated  impressions and fresh new content.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Lowe\'s<br />\n<span class=\"description-label\">Credits:</span>BBDO, Click3X, Raison D\'Être and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span>Digital, Mobile, Video, Social Media - Vine','lowes_vines','lowes'),
	(7,7,'kmart-video','Kmart','Attention Kmart Shoppers','Creating shoppable experiences through interactive video and storytelling.',NULL,'We’re redefining the e-commerce landscape through interactive storytelling. In collaboration with DraftFCB Chicago, ClickFire Media was tasked with creating a shoppable e-commerce experience for Kmart that took advantage of new possibilities offered by HTML5 technology.</p><p>Immersive HTML5 video, backed by the track ‘Burning Hears’ by MNDR, tells the story of people living their daily lives in fashionable clothing. At predetermined hotspots the narrative pauses, to allow  users to interact with the individual items which are themselves seamlessly linked to Kmart’s e-commerce via their API. Dynamic overlays and a radically intuitive menu system streamline the experience, further immersing users in a story that feels worth watching for its own sake. At any time users may pause or continue, whether it be through the narrative or to the online catalog.</p><p>This cross-platform experience offers a glimpse of what’s possible when creative video production meets cutting-edge web development.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Kmart<br />\n<span class=\"description-label\">Credits:</span>DraftFCB Chicago and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet and Mobile','kmart_video','kmart'),
	(8,8,'gazprom','Gazprom International','A World Class Presentation App for a World Leader in Natural Gas Exploration','Translating complex business offerings into Simple User Interfaces.',NULL,'Gazprom International is one of the world’s leading natural gas resource corporations. We were tasked with the    to invent an exclusive mobile application to use to pitch to Heads of State, CEOs, and top management professionals. We responded by creating a visually powerful application that can be displayed both on the iPad, or transmitted to TV/Video via Apple TV.</p><p>The Gazprom International iPad App is a customizable app with a streamlined yet powerful interface, interactive 3D imagery, and branded integration of video. Ideal for presenting in conference rooms or on the fly, the app provides a unique storytelling experience where users can modify presets, filters or drag and drop content in order to tailor their presentation. News, updates and happenings were also included in the app, facilitating corporate communication and greater management efficiency. The Gazprom International App makes communicating complex business offerings simplified.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Gazprom International<br />\n<span class=\"description-label\">Credits:</span>Fifteen Degrees and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span>Tablet - iPAD','gazprom','gazprom'),
	(9,9,'mufe','Make Up For Ever','Augmenting Audiences through Augmented Reality','Make Up For Ever redefines the point-of-sale experience for its consumers.',NULL,'Make Up For Ever approached us with this unique challenge: create a point-of-sale experience to engage consumers and help them make the best purchase decisions.</p><p>In response, we utilized the tools of augmented reality technology to create a iOS and Android mobile application allowing consumers to scan a product image to learn about four different blush-application techniques.</p><p>The campaign was featured in kiosks throughout Sephora stores nationwide. The process was nothing to blush about. We designed copy and trigger images, shot and edited video portions of engagement, and developed the mobile application for consumers, bringing the experience to life. All media and video content was shot in-house, providing high-quality content. Overall, the project certainly added an innovative tint to the traditional point-of-sale experience.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Make Up For Ever<br />\n<span class=\"description-label\">Credits:</span>Raison D’Être, Click3X and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span>Mobile - iOS and Android','mufe','mufe'),
	(10,10,'sharp','Sharp','Touchdown for Sharp AQUOS TV','We launched AQUOS TV’s newest home theatre line with virtual tailgate parties that make everyone a star.',NULL,'Sharp USA approached us with two challenges: 1. launch the newest line of home theatre AQUOS TV’s, and 2. drive user engagement across  interactive platforms. Our response? Game on.</p><p>To bring this challenge to life, we began by determining how to best showcase the products in a visually stimulating and effective story. Our creative team illustrated, designed and storyboarded a robust HTML5 experience that was optimized  for mobile, desktop and tablet platforms. We then launched the new line of products via the sharpusa.com site, integrating the HTML5 build into Sharp’s SiteCore CMS.</p><p>Additionally, we also created a Facebook Application inviting users to customize their own tailgate party, having the launch coincide with the start of football season. The response was immediate. Contestants took part in a month-long contest customizing their tailgate with team colors, decorations, personalized pictures and halftime videos. Contestants were also quick to share their experience via Facebook, twitter, and email in order to build up their tailgate “likes” and win real-world prizes, including one of three AQUOS TV’s.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Sharp USA<br />\n<span class=\"description-label\">Credits:</span>ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span> Desktop and Social Media - Facebook','sharp','sharp'),
	(11,11,'roxy','Roxy','Dare to be Roxy','We dared Facebook users to show us if they had what it takes to be the new face of Roxy, generating over 600,000 impressions globally in the process.',NULL,'Our client Roxy, a leading sports apparel brand, approached us to create a compelling campaign that would increase Facebook likes and generate global buzz.</p><p>The “Dare Yourself” campaign was created, inviting young women around the world between the ages of 18-28 to submit photo and video content answering why they should be the new face of Roxy using the call-to-action #roxydares. To further extend user engagement, our team aggregated the UGC to create an inspirational video for users to share across Roxy’s social media platforms. The contest was translated into 11 languages and launched in over 40 countries throughout North America, Latin America, North Asia, South Asia, Europe, Africa, and the Middle East, offering an epic adventure for the five winning women.</p><p>The greatest adventure of all? Solving our challenge with over 600,000 additional Facebook likes on the Roxy fan page! Just the way we dare to like it.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Roxy<br />\n<span class=\"description-label\">Credits:</span>Digital Brand Architects, Raison D’Être and ClickFire Media<br />\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook','roxy','roxy'),
	(12,12,'7fam','7 For All Mankind',NULL,NULL,NULL,NULL,'7fam','7fam'),
	(13,13,'amtrak','Amtrak',NULL,NULL,NULL,NULL,'amtrak','amtrak'),
	(14,14,'armorall','Armorall',NULL,NULL,NULL,NULL,'armorall','armorall'),
	(15,15,'att-kickflick','AT&T',NULL,NULL,NULL,NULL,'att_kickflick','att'),
	(16,16,'bca-2013','The Estée Lauder Companies','Circle of Strength',NULL,NULL,NULL,'bca_2013','bca'),
	(17,17,'chaps-banners','Chaps','Chaps Banners',NULL,NULL,NULL,'chaps','chaps'),
	(18,18,'chevy-sonic','Chevrolet','Chevy Sonic Customizer',NULL,NULL,NULL,'chevy_sonic','chevrolet'),
	(19,19,'daffys-bday','Daffy\'s','Daffy\'s Birthday Blowout',NULL,NULL,NULL,'daffys','daffys'),
	(20,20,'electrified','David Blaine','Electrified',NULL,NULL,NULL,'electrified','david_blaine'),
	(21,21,'dennys','Denny\'s','Photo-a-day Challenge',NULL,NULL,NULL,'dennys','dennys'),
	(22,22,'durex','Durex','Durex',NULL,NULL,NULL,'durex','durex'),
	(24,24,'google','Google','Google Banners',NULL,NULL,NULL,'google','google'),
	(25,25,'geico_piggy','Geico','Geico',NULL,NULL,NULL,'geico_piggy','geico'),
	(26,26,'geico_ventrilouquist','Geico','Geico',NULL,NULL,NULL,'geico_ventriloquist','geico'),
	(27,27,'heard-city','Heard City','Heard City Website',NULL,NULL,NULL,'heard_city','heard_city'),
	(28,28,'h-m','H&M','H&M Website',NULL,NULL,NULL,'h_m','h-m'),
	(29,29,'man-v-food','Travel Channel','Man VS Food Mobile App',NULL,NULL,NULL,'man_v_food','travel_channel'),
	(30,30,'munchkin','Munchkin','Munchkin Website',NULL,NULL,NULL,'munchkin','munchkin'),
	(31,31,'nine-west','Nine West','Nine West',NULL,NULL,NULL,'nine_west','nine_west'),
	(32,32,'parliament','Parliament','Parliament Carat',NULL,NULL,NULL,'parliament','parliament'),
	(33,33,'pedigree','Pedigree','Pedigree Woofer','Social Adoption Instagram Application',NULL,NULL,'pedigree','pedigree'),
	(34,34,'sailor-jerry','Sailor Jerry','Sailor Jerry Mobile App',NULL,NULL,NULL,'sailor_jerry','sailor_jerry'),
	(35,35,'uniqlo','Uniqlo','Uniqlo Gifbox',NULL,NULL,NULL,'uniqlo','uniqlo'),
	(36,36,'verizon','Verizon','Verizon','Verizon Banners',NULL,NULL,'verizon','verizon'),
	(37,37,'zyrtec','Zyrtec','Zyrtec','Zyrtec Banners',NULL,NULL,'zyrtec','zyrtec'),
	(38,38,'att-elements','AT&T','AT&T Elements',NULL,NULL,NULL,'att_elements','att');

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects_asset_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects_asset_lu`;

CREATE TABLE `projects_asset_lu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(4) DEFAULT NULL,
  `asset_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects_asset_lu` WRITE;
/*!40000 ALTER TABLE `projects_asset_lu` DISABLE KEYS */;

INSERT INTO `projects_asset_lu` (`id`, `project_id`, `asset_id`)
VALUES
	(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5),
	(6,6,6),
	(7,7,7),
	(8,8,8),
	(9,8,9),
	(10,4,10),
	(11,5,11),
	(12,3,12),
	(13,1,13),
	(14,2,14),
	(15,9,15),
	(16,9,16),
	(17,10,17),
	(18,10,18),
	(19,11,19),
	(20,11,20),
	(21,12,21),
	(22,13,22),
	(23,14,23),
	(24,15,24),
	(25,16,25),
	(26,17,26),
	(27,18,27),
	(28,19,28),
	(29,20,29),
	(30,21,30),
	(31,22,31),
	(33,24,33),
	(34,25,34),
	(35,26,35),
	(36,27,36),
	(37,28,37),
	(38,29,38),
	(39,30,39),
	(40,31,40),
	(41,32,41),
	(42,33,42),
	(43,34,43),
	(44,35,44),
	(45,36,45),
	(46,37,46),
	(47,38,47),
	(48,1,48),
	(49,4,49),
	(50,10,50),
	(51,3,51),
	(52,1,52),
	(53,6,53),
	(54,6,54);

/*!40000 ALTER TABLE `projects_asset_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects_category_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects_category_lu`;

CREATE TABLE `projects_category_lu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(4) DEFAULT NULL,
  `category_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects_category_lu` WRITE;
/*!40000 ALTER TABLE `projects_category_lu` DISABLE KEYS */;

INSERT INTO `projects_category_lu` (`id`, `project_id`, `category_id`)
VALUES
	(1,1,2),
	(2,2,2),
	(3,3,2),
	(4,4,2),
	(5,5,2),
	(6,6,2),
	(7,1,1),
	(8,2,1),
	(9,3,1),
	(10,4,1),
	(11,5,1),
	(12,6,1),
	(13,7,1),
	(14,8,1),
	(15,9,1),
	(16,10,1),
	(17,11,1),
	(18,12,1),
	(19,13,1),
	(20,14,1),
	(21,15,1),
	(22,16,1),
	(23,17,1),
	(24,18,1),
	(25,19,1),
	(26,20,1),
	(27,21,1),
	(28,22,1),
	(30,24,1),
	(31,25,1),
	(32,26,1),
	(33,27,1),
	(34,28,1),
	(35,29,1),
	(36,30,1),
	(37,31,1),
	(38,32,1),
	(39,33,1),
	(40,34,1),
	(41,35,1),
	(42,36,1),
	(43,37,1),
	(44,38,1);

/*!40000 ALTER TABLE `projects_category_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects_link_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects_link_lu`;

CREATE TABLE `projects_link_lu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(4) DEFAULT NULL,
  `link_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects_link_lu` WRITE;
/*!40000 ALTER TABLE `projects_link_lu` DISABLE KEYS */;

INSERT INTO `projects_link_lu` (`id`, `project_id`, `link_id`)
VALUES
	(1,4,1),
	(2,4,2),
	(3,5,4),
	(4,7,5),
	(5,3,6),
	(6,2,8),
	(7,4,9);

/*!40000 ALTER TABLE `projects_link_lu` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
