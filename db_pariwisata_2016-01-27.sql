# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.42)
# Database: db_pariwisata
# Generation Time: 2016-01-27 12:36:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(355) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `title`, `content`, `image`)
VALUES
	(1,'Grojogan Sewu , Waterpark Alami','Berwisata di Grojogan Sewu tidak sepenuhnya menikmati keindahan air terjun dengan hawa dinginnya, namun kamu juga bisa belanja sayur ataupun buah-buahan ciri khas pegunungan yang barangkali bisa menambah alternatif wisata kamu. Di sekitar pintu masuk tempat ini juga di sediakan kuda sewaan yang bisa kamu gunakan untuk berkeliling, hanya dengan biaya Rp.','Grojogan-Sewu.jpg');

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pariwisata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pariwisata`;

CREATE TABLE `pariwisata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(100) DEFAULT NULL,
  `nama_lokasi` varchar(100) DEFAULT NULL,
  `subtitle` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `nomer_tlp` varchar(12) DEFAULT NULL,
  `info` text,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `pariwisata` WRITE;
/*!40000 ALTER TABLE `pariwisata` DISABLE KEYS */;

INSERT INTO `pariwisata` (`id`, `lokasi`, `nama_lokasi`, `subtitle`, `alamat`, `nomer_tlp`, `info`, `icon`)
VALUES
	(11,'-7.5525, 110.8072222\r\n ','Taman Balekambang','History','Jl. Jenderal Ahmad Yani, Banjarsari, Kota Surakart','+62 271 7362','<div id=\'iw-container\'><div class=\'iw-title\'>Taman Balekambang</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'/assets/img/balekambang.jpg\' height=\'115\' width=\'83\'><p>Taman Balekambang merupakan taman kota seluas 9,8 Ha yang dibangun pada tahun 1921 oleh KGPAA Mangkunegara VII. Taman ini dibangun untuk putrid-putri tercinta, yaitu GRAy Partini Husein Djayaningrat dan GRAy Partinah Sukanta, yang figure keduanya bisa dilihat pada patung yang ada di dalam taman Balekambang. Maka dari itu area taman Balekambang ini pun dulu dibagi menjadi dua, yaitu Partini Tuin dan Partinah Bosch. </p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Taman Balekambang</b><br>Jl. Jenderal Ahmad Yani, Banjarsari, Kota Surakarta, Jawa Tengah 57139,Indonesia </p><br/><p> Phone. +62 271 736227<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','park15.png'),
	(13,'-7.565055556, 110.8180556','Monumen Pers Nasional','History','Jl. Gajah Mada, Banjarsari, Kota Surakarta, Jawa T','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Monumen Pers Nasional</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/Monumen_Pers.jpg\' height=\'115\' width=\'83\'><p>Monumen Pers Nasional adalah monumen dan museum khusus pers nasional Indonesia yang terletak di Surakarta, Jawa Tengah. Museum ini didirikan pada tahun 1978, lebih dari 20 tahun setelah diusulkan dan dioperasikan oleh Kementerian Komunikasi dan Informatika Indonesia. </p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Monumen Pers Nasional</b><br>Jl. Gajah Mada, Banjarsari, Kota Surakarta, Jawa Tengah 57132,Indonesia </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','monumen.png'),
	(14,'-7.564833333, 110.8600278','Taman Satwa Taru Jurug ','History','Jalan Ir. Sutami No.109,Jebres,Kota Surakarta, Jaw','+62 271 6362','<div id=\'iw-container\'><div class=\'iw-title\'>Taman Satwa Taru Jurug </div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/jurug.jpg\' height=\'115\' width=\'83\'><p>Taman Satwa Taru Jurug merupakan salah satu objek wisata di Kota Surakarta yang dibangun pada tahun 1878. Taman Jurug menawarkan lokasi yang indah untuk beristirahat, di dalamnya terdapat berbagai spesies hewan dan tumbuhan. Dengan konsep wisata alam, jalan-jalan di dalam taman dikelilingi pohon-pohon besar dan rindang. Di dalam lokasi taman, kita akan sering menjumpai kawanan monyet dan berbagai jenis spesies burung.</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Taman Satwa Taru Jurug </b><br>Jalan Ir. Sutami No.109,Jebres,Kota Surakarta, Jawa Tengah 57126,Indonesia </p><br/><p> Phone. +62 271 636279<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','Zoo.png'),
	(15,'-7.605888889, 110.8041667','Pandawa Water World','History','Gedangan, Grogol, Sukoharjo, Jawa Tengah 57552,Ind','+62 271 6269','<div id=\'iw-container\'><div class=\'iw-title\'>Pandawa Water World</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/pandawa.jpg\' height=\'115\' width=\'83\'><p>Objek wisata Pandawa Water World merupakan wahana air yang berdiri pada 22 Desember 2007. Kolam renang itu selalu ramai dikunjungi wisatawan. Sesuai dengan namanya, walaupun dibangun relatif mewah, Pandawa Water World didesain sesuai kisah pewayangan India yang sangat digemari masyarakat Jawa.</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Pandawa Water World</b><br>Gedangan, Grogol, Sukoharjo, Jawa Tengah 57552,Indonesia</p><br/><p> Phone. +62 271 626955<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','ipan.png'),
	(16,'-7.493027778, 110.6234444','Tlatar','History','Jalan Ampel/ Solo-Boyolali, Kebonbimo, Kec.Boyolal','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Tlatar</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/tlatar1.jpg\' height=\'115\' width=\'83\'><p>Taman Air Tlatar adalah ekowisata yang memanfaatkan mata air alami yang keluar terus menerus selama 24 jam dari lapisan batuan vulkanik. Taman air yang berada di kaki Gunung Merbabu pada ketinggian sekitar 350 meter dari permukaan laut ini memiliki suasana pedesaan yang alami, asri dan berudara sejuk.</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Tlatar</b><br>Jalan Ampel/ Solo-Boyolali, Kebonbimo, Kec.Boyolali, Kabupaten Boyolali, Jawa Tengah 57316, Indonesia </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','itlatar.jpg'),
	(17,'-7.495, 110.3816111','Ketep Pass','History','Jl. Blabak Boyolali Km No.16,Sawangan, Magelang, J','+62 293 5527','<div id=\'iw-container\'><div class=\'iw-title\'>Ketep Pass</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/ketep_pass.jpg\' height=\'115\' width=\'83\'><p>Ketep Pass adalah salah nama sebuah objek wisata di Ketep, Sawangan, Magelang, Jawa Tengah. Ketep Pass ini merupakan Obyek Wisata alam yang dikembangkan dengan ciri khas wisata kegunungapian, khususnya Gunung Merapi.Pada tanggal 17 Oktober 2002, Ketep Pass diresmikan sebagai kawasan wisata jalur Solo–Selo–Borobudur (SSB) oleh Presiden ke-5 Republik Indonesia Megawati Soekarnoputri.</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Ketep Pass</b><br>Jl. Blabak Boyolali Km No.16,Sawangan, Magelang, Jawa Tengah 56481, Indonesia  </p><br/><p> Phone. +62 293 5527930<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','mumu.png'),
	(18,'-7.660055556, 111.1298056','Air Terjun Grojogan Sewu','History','Tawangmangu, Kec.Karanganyar, Karanganyar, Jawa Te','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Air Terjun Grojogan Sewu</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/grojogan_sewu.jpg\' height=\'115\' width=\'83\'><p>Grojogan Sewu merupakan salah satu air terjun yang berada di Jawa Tengah. Terletak di Kecamatan Tawangmangu, Kabupaten Karanganyar, Jawa Tengah. Air terjun Grojogan Sewu terletak di lereng Gunung Lawu. Grojogan Sewu terletak sekitar 27 km di sebelah timur Kota Karanganyar. Air terjun Grojogan Sewu merupakan bagian dari Hutan Wisata Grojogan Sewu.</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Air Terjun Grojogan Sewu</b><br>Tawangmangu, Kec.Karanganyar, Karanganyar, Jawa Tengah 57792, Indonesia </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','terjun.png'),
	(19,'-7.566666667, 110.8166667','Keraton Kasunanan Surakarta Hadiningrat','History','Timuran, Banjarsari, Jawa Tengah 57141, Indonesia ','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Keraton Kasunanan Surakarta Hadiningrat</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/Keraton_Surakarta_Hadiningrat.jpg\' height=\'115\' width=\'83\'><p>Keraton Surakarta adalah istana resmi Kasunanan Surakarta yang terletak di Kota Surakarta, Jawa Tengah. Keraton ini didirikan oleh Susuhunan Pakubuwana II pada tahun 1744 sebagai pengganti Istana/Keraton Kartasura yang porak-poranda akibat Geger Pecinan 1743</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Keraton Kasunanan Surakarta Hadiningrat</b><br>Timuran, Banjarsari, Jawa Tengah 57141, Indonesia  </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','keratonn.png'),
	(20,'-7.568583333, 110.8141667','Museum Radya Pustaka','History','Jl. Brigjen Slamet Riyadi, Kota Surakarta, Jawa Te','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Museum Radya Pustaka</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/Museum_Radya_Pustaka.jpg\' height=\'115\' width=\'83\'><p>Museum ini didirikan pada masa pemerintahan Pakubuwono IX oleh Kanjeng Raden Adipati Sosrodiningrat IV di dalem Kepatihan pada tanggal 28 Oktober 1890. Kanjeng Raden Adipati Sosrodiningrat IV pernah menjabat sebagai Patih Pakubuwono IX dan Pakubuwono X. Museum ini lalu dipindahkan ke lokasinya sekarang ini, Gedung Museum Radyapustaka di Jalan Slamet Riyadi, Surakarta, pada 1 Januari 1913. Kala itu gedung museum merupakan rumah kediaman seorang warga Belanda bernama Johannes Busselaar.</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Museum Radya Pustaka</b><br>Jl. Brigjen Slamet Riyadi, Kota Surakarta, Jawa Tengah 57141, Indonesia </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','mumu.png'),
	(21,'-7.569722222, 110.8222222','Ngarsopura Night Market','History','Jl. Diponegoro No.9, Kota Surakarta, Jawa Tengah 5','+62 271 7999','<div id=\'iw-container\'><div class=\'iw-title\'>Ngarsopura Night Market</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/Ngarsopura_Night_Market_Solo.jpg\' height=\'115\' width=\'83\'><p>Ngarsopuro merupakan suatu kawasan di depan Pura Mangkunegaran, yang dahulu berjajar toko-toko elektronik kurang tertata serta terdapat pasar antik Triwindu . Kawasan ini sejak tahun 2009 telah di sulap menjadi suatu tempat yang sangat indah dan menarik untuk dikunjungi.Dengan ditatanya toko2 dan direhabnya pasar antik Triwindu dengan bangunan etnik yang sekarang berubah nama menjadi pasar antik Windujenar. </p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Ngarsopura Night Market</b><br>Jl. Diponegoro No.9, Kota Surakarta, Jawa Tengah 57131, Indonesia  </p><br/><p> Phone. +62 271 7999878<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','pasar.png'),
	(22,'-7.455805556, 110.8343611','Museum Manusia Purba Sangiran','History','Kalijambe, Sragen, Kec. Karanganyar, Jawa Tengah, ','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Museum Manusia Purba Sangiran</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/sangiran.jpg\' height=\'115\' width=\'83\'><p>Museum Purbakala Sangiran terletak di Kecamatan Kalijambe, Kabupaten Sragen, Jawa Tengah. Museum ini berdekatan dengan area situs fosil purbakala Sangiran yang merupakan salah satu Warisan Dunia UNESCO. Luas Area Situs Sangiran mencapai 56 km2 meliputi tiga kecamatan di Sragen, yaitu Gemolong, Kalijambe, dan Plupuh serta Kecamatan Gondangrejo yang masuk wilayah Kabupaten Karanganyar. </p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Museum Manusia Purba Sangiran</b><br>Kalijambe, Sragen, Kec. Karanganyar, Jawa Tengah, Indonesia  </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','mumu.png'),
	(23,'-7.627277778, 111.1310556','Candi Sukuh','History','Gunung Lawu, Jawa Tengah, Indonesia','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Candi Sukuh</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/Candi_Sukuh.jpg\' height=\'115\' width=\'83\'><p>Candi Sukuh adalah sebuah kompleks candi agama Hindu yang secara administrasi terletak di wilayah Desa Berjo, Kecamatan Ngargoyoso, Kabupaten Karanganyar, eks Karesidenan Surakarta, Jawa Tengah. Candi ini dikategorikan sebagai candi Hindu karena ditemukannya obyek pujaan lingga dan yoni. </p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Candi Sukuh</b><br>Gunung Lawu, Jawa Tengah, Indonesia </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','candi.png'),
	(24,'-7.595444444, 111.1571944','Candi Cetho','History','Desa Gumeng, Kec. Ngargoyoso,Kec. Karanganyar, Jaw','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Candi Cetho</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/ceto.jpg\' height=\'115\' width=\'83\'><p>Candi Cetho merupakan candi bercorak agama Hindu yang diduga kuat dibangun pada masa-masa akhir era Majapahit (abad ke-15 Masehi). Lokasi candi berada di lereng Gunung Lawu pada ketinggian 1496 m di atas permukaan laut, dan secara administratif berada di Dusun Ceto, Desa Gumeng, Kecamatan Jenawi, Kabupaten Karanganyar.</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Candi Cetho</b><br>Desa Gumeng, Kec. Ngargoyoso,Kec. Karanganyar, Jawa Tengah, Indonesia </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','candi.png'),
	(25,'-7.622055556, 111.1345556','Air Terjun Parang Ijo','History','Girimulyo, Ngargoyoso, Karanganyar, Jawa Tengah 57','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Air Terjun Parang Ijo</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/parang_ijo.jpg\' height=\'115\' width=\'83\'><p>Air Terjun Parang Ijo merupakan salah satu objek wisata alam berupa air terjun yang ada di sekitar Gunung Lawu. Nama air terjun ini relatif kurang terkenal jika dibandingkan dua wisata air terjun lain yakni Grojogan Sewu serta Jumog. Namun, suasana yang ada disana boleh diadu</p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Air Terjun Parang Ijo</b><br>Girimulyo, Ngargoyoso, Karanganyar, Jawa Tengah 57793, Indonesia </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','terjun.png'),
	(26,'-7.856583333, 110.9124444','Waduk Gajah Mungkur','History','Waduk Gajahmungkur, Wonogiri 57661, Indonesia','(0271) 67898','<div id=\'iw-container\'><div class=\'iw-title\'>Waduk Gajah Mungkur</div><div class=\'iw-content\'><div class=\'iw-subTitle\'>History</div><img src=\'../assets/img/gajah_mungkur.jpg\' height=\'115\' width=\'83\'><p>Waduk Gajah Mungkur adalah sebuah waduk yang terletak 6 km di selatan Kota kabupaten Wonogiri, Provinsi Jawa Tengah. Perairan danau buatan ini dibuat dengan membendung sungai terpanjang di pulau Jawa yaitu sungai Bengawan Solo. Mulai dibangun pada akhir tahun 1970-an dan mulai beroperasi pada tahun 1978. </p><br/><div class=\'iw-subTitle\'>Contact</div><p><b>Waduk Gajah Mungkur</b><br>Waduk Gajahmungkur, Wonogiri 57661, Indonesia </p><br/><p> Phone. (0271) 678987<br/>Jawa Tengah</p></div><div class=\'iw-bottom-gradient\'></div></div>','itlatar.jpg');

/*!40000 ALTER TABLE `pariwisata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `password`)
VALUES
	(1,'admin','admin');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
