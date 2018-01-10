# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: scrape
# Generation Time: 2018-01-10 18:44:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cases`;

CREATE TABLE `cases` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itemprice` varchar(255) DEFAULT NULL,
  `itempic` varchar(255) DEFAULT NULL,
  `itemshipping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table graphicscards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `graphicscards`;

CREATE TABLE `graphicscards` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itempic` varchar(255) DEFAULT NULL,
  `itemprice` varchar(255) DEFAULT NULL,
  `itemshipping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `graphicscards` WRITE;
/*!40000 ALTER TABLE `graphicscards` DISABLE KEYS */;

INSERT INTO `graphicscards` (`id`, `itemname`, `itempic`, `itemprice`, `itemshipping`)
VALUES
	(1,'EVGA GeForce GTX 1060 SC GAMING, ACX 2.0 (Single Fan), 03G-P4-6162-KR, 3GB GDDR5, DX12 OSD Support (PXOC)','http://images10.newegg.com/ProductImageCompressAll300/14-487-267-S99.jpg','$259.99','$4.99 Shipping'),
	(2,'XFX Radeon RX 560 DirectX 12 RX-560P2SFG5 Video Card','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/14-150-813-S06.jpg','$119.99','$4.99 Shipping'),
	(3,'MSI Radeon RX 570 DirectX 12 RX 570 ARMOR 4G OC Video Card','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/14-137-123-Z01.jpg','$269.99','$4.99 Shipping'),
	(4,'ZOTAC GeForce GTX 1060 Mini, ZT-P10610A-10L, 3GB GDDR5 Super Compact','http://images10.newegg.com/ProductImageCompressAll300/14-500-405-06.jpg','$289.99','$4.99 Shipping'),
	(5,'ASUS Dual series GeForce GTX 1060 DUAL-GTX1060-O3G Video Card','http://images10.newegg.com/ProductImageCompressAll300/14-126-133-07.jpg','$249.99','$4.99 Shipping'),
	(6,'EVGA GeForce GTX 1050 SSC GAMING ACX 3.0, 02G-P4-6154-KR, 2GB GDDR5, DX12 OSD Support (PXOC)','http://images10.newegg.com/ProductImageCompressAll300/14-487-297-06.jpg','$159.99','$4.99 Shipping'),
	(7,'PNY GeForce GTX 1080 DirectX 12 VCGGTX10808PB 8GB 256-Bit GDDR5X PCI Express 3.0 x16 Blower Edition Video Card','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/14-133-739-S01.jpg','$599.99','$4.99 Shipping'),
	(8,'AMD Radeon Vega Frontier Edition 100-506061 16GB 2048-bit HBM2 Video Cards - Workstation','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/14-105-073-Z01.jpg','$749.99','$4.99 Shipping'),
	(9,'MSI GeForce GTX 1050 DirectX 12 GTX 1050 GAMING X 2G Video Card','http://images10.newegg.com/ProductImageCompressAll300/14-137-059-01.jpg','$144.99','$4.99 Shipping'),
	(10,'GIGABYTE Radeon RX 560 DirectX 12 GV-RX560GAMING OC-4GD REV2.0 Video Card','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/14-932-003-V01.jpg','$142.99','$3.99 Shipping'),
	(11,'PowerColor DEVIL BOX Thunderbolt 3 eGFX Enclousure','http://images10.newegg.com/ProductImageCompressAll300/14-999-049-Z01.jpg','$249.99','$6.99 Shipping'),
	(20,'ASUS ROG GeForce GTX 1050 Ti STRIX-GTX1050TI-O4G-GAMING Video Card','http://images10.newegg.com/ProductImageCompressAll300/14-126-171-V01.jpg','$199.99','$4.99 Shipping');

/*!40000 ALTER TABLE `graphicscards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table motherboards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `motherboards`;

CREATE TABLE `motherboards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itempic` varchar(255) DEFAULT NULL,
  `itemprice` varchar(255) DEFAULT NULL,
  `itemshipping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `motherboards` WRITE;
/*!40000 ALTER TABLE `motherboards` DISABLE KEYS */;

INSERT INTO `motherboards` (`id`, `itemname`, `itempic`, `itemprice`, `itemshipping`)
VALUES
	(1,'MSI Z270 GAMING PRO CARBON LGA 1151 Intel Z270 HDMI SATA 6Gb/s USB 3.1 ATX Motherboards - Intel','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$164.99','$1.99 Shipping'),
	(2,'GIGABYTE GA-B250M-DS3H (rev. 1.0) LGA 1151 Intel B250 HDMI SATA 6Gb/s USB 3.1 Micro ATX Intel Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$59.99','Free Shipping'),
	(3,'ASRock Z270 KILLER SLI/AC LGA 1151 Intel Z270 HDMI SATA 6Gb/s USB 3.1 ATX Motherboards - Intel','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$119.99','Free Shipping'),
	(4,'ASUS ROG MAXIMUS VIII HERO/Whetstone LGA1151 DDR4 DP HDMI M.2 USB 3.1 Z170 ATX Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$149.99','Free Shipping'),
	(5,'MSI B350 GAMING PLUS AM4 AMD B350 SATA 6Gb/s USB 3.1 HDMI ATX AMD Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$99.99','$1.99 Shipping'),
	(6,'GIGABYTE GA-AB350N-Gaming WIFI (rev. 1.0) AM4 AMD B350 SATA 6Gb/s USB 3.1 HDMI Mini ITX AMD Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$99.99','$0.99 Shipping'),
	(7,'ASRock X370 Killer SLI/ac AM4 AMD Promontory X370 SATA 6Gb/s USB 3.1 HDMI ATX AMD Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$139.99','$3.99 Shipping'),
	(8,'ASUS PRIME X299-A LGA2066 DDR4 M.2 USB 3.1 X299 ATX Motherboard for Intel Core i9 and i7 X-Series Processors','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$279.99','$3.99 Shipping'),
	(9,'MSI Z370 GAMING PRO CARBON AC LGA 1151 (300 Series) Intel Z370 HDMI SATA 6Gb/s USB 3.1 ATX Intel Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$199.99','$1.99 Shipping'),
	(10,'GIGABYTE Z370 AORUS GAMING WIFI (rev. 1.0) LGA 1151 (300 Series) Intel Z370 HDMI SATA 6Gb/s USB 3.1 ATX Intel Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$129.99','$0.99 Shipping'),
	(11,'ASRock Z370 Killer SLI/ac LGA 1151 (300 Series) Intel Z370 HDMI SATA 6Gb/s USB 3.1 ATX Intel Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif',NULL,''),
	(13,'ASUS ROG ZENITH EXTREME sTR4 AMD X399 SATA 6Gb/s USB 3.1 Extended ATX AMD Motherboard','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif','$549.99','$3.99 Shipping');

/*!40000 ALTER TABLE `motherboards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table processors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `processors`;

CREATE TABLE `processors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itemprice` varchar(255) DEFAULT NULL,
  `itemshipping` varchar(255) DEFAULT NULL,
  `itempic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `processors` WRITE;
/*!40000 ALTER TABLE `processors` DISABLE KEYS */;

INSERT INTO `processors` (`id`, `itemname`, `itemprice`, `itemshipping`, `itempic`)
VALUES
	(1,'AMD RYZEN 7 1700X 8-Core 3.4 GHz (3.8 GHz Turbo) Socket AM4 YD170XBCAEWOF Desktop Processor','$359.99','$1.99 Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(2,'Intel Core i5-8600K Coffee Lake 6-Core 3.6 GHz (4.3 GHz Turbo) LGA 1151 (300 Series) BX80684I58600K Desktop Processor Intel UHD Graphics 630','$259.99','$0.99 Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(3,'AMD RYZEN 5 1600X 6-Core 3.6 GHz (4.0 GHz Turbo) Socket AM4 YD160XBCAEWOF Desktop Processor','$229.99','$1.99 Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(4,'Intel Core i7-7700K 4.2 GHz LGA 1151 BX80677I77700K Desktop Processor','$339.99','Free Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(5,'AMD RYZEN Threadripper 1950X 16-Core / 32 Threads 3.4 GHz Socket sTR4 180W YD195XA8AEWOF Desktop Processor','$949.99','Free Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(6,'Intel Core i5-7600K 3.8 GHz LGA 1151 BX80677I57600K Desktop Processor','$239.99','Free Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(7,'AMD RYZEN 7 1800X 8-Core 3.6 GHz (4.0 GHz Turbo) Socket AM4 95W YD180XBCAEWOF Desktop Processor','$459.99','$0.99 Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(8,'Intel Core i9-7980XE Skylake X 18-Core 2.6 GHz LGA 2066 BX80673I97980X Desktop Processor','$1,999.99','Free Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(9,'AMD RYZEN 7 1700 8-Core 3.0 GHz (3.7 GHz Turbo) Socket AM4 YD1700BBAEBOX Desktop Processor','$299.99','$1.99 Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(10,'Intel Core i7-7820X Skylake-X 8-Core 3.6 GHz LGA 2066 BX80673I77820X Desktop Processor','$569.99','$0.99 Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(11,'AMD RYZEN 3 1200 4-Core 3.1 GHz (3.4 GHz Turbo) Socket AM4YD1200BBAEBOX Desktop Processor','$109.99','$0.99 Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif'),
	(14,'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz (4.7 GHz Turbo) LGA 1151 (300 Series) BX80684I78700K Desktop Processor Intel UHD Graphics 630','$389.99','$0.99 Shipping','http://images10.newegg.com/WebResource/Themes/2005/Nest/blank.gif');

/*!40000 ALTER TABLE `processors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ram
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ram`;

CREATE TABLE `ram` (
  `id` int(80) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itempic` varchar(255) DEFAULT NULL,
  `itemprice` varchar(255) DEFAULT NULL,
  `itemshipping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;

INSERT INTO `ram` (`id`, `itemname`, `itempic`, `itemprice`, `itemshipping`)
VALUES
	(1,'CORSAIR Vengeance LPX 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 3000 (PC4 24000) Desktop Memory Model CMK16GX4M2L3000C15','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/20-236-282-Z01.jpg','$199.99','Free Shipping'),
	(2,'CORSAIR Vengeance LPX 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 2400 (PC4 19200) Desktop Memory Model CMK16GX4M2A2400C16R','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/20-233-911-01.jpg','$189.99','Free Shipping'),
	(3,'GeIL EVO POTENZA 8GB (2 x 4GB) 288-Pin DDR4 SDRAM DDR4 2400 (PC4 19200) Desktop Memory Model GPR48GB2400C16DC','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/20-158-039-01.jpg','$95.99','Free Shipping'),
	(4,'CORSAIR Vengeance LPX 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 2666 (PC4 21300) Desktop Memory Model CMK16GX4M2A2666C16','http://images10.newegg.com/ProductImageCompressAll300/20-233-834-04.jpg','$199.99','Free Shipping'),
	(5,'CORSAIR Vengeance LPX 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 2666 (PC4 21300) Desktop Memory Model CMK16GX4M2A2666C16W','http://images10.newegg.com/ProductImageCompressAll300/20-236-041-01.jpg','$196.99','Free Shipping'),
	(6,'Team T-Force Vulcan 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 3000 (PC4 24000) Desktop Memory Model TLGD416G3000HC16CDC01','http://images10.newegg.com/ProductImageCompressAll300/20-313-777-01.jpg','$184.99','Free Shipping'),
	(7,'ADATA XPG GAMMIX D10 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 2400 (PC4 19200) Desktop Memory Model AX4U240038G16-DRG','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/20-215-151-Z02.jpg','$173.99','Free Shipping'),
	(8,'CORSAIR Vengeance LPX 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 2666 (PC4 21300) Desktop Memory Model CMK16GX4M2A2666C16R','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/20-233-835-01.jpg','$199.99','Free Shipping'),
	(9,'Patriot Viper Elite 16GB (1 x 16GB) DDR4 2400MHz DRAM (Desktop Memory) CL16 1.2V Grey DIMM (288-pin) Extreme Performance Memory PVE416G240C6GY (Intel XMP, AMD Ryzen)','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/20-225-074-Z01.jpg',NULL,'Free Shipping'),
	(10,'ADATA XPG GAMMIX D10 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 2666 (PC4 21300) Desktop Memory Model AX4U266638G16-DRG','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/20-215-154-Z01.jpg','$177.99','Free Shipping'),
	(11,'Team T-Force DARK 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 2400 (PC4 19200) Desktop Memory Model TDRED416G2400HC14DC01','http://images10.newegg.com/ProductImageCompressAll300/20-313-668-04.jpg','$182.99','Free Shipping'),
	(12,'Team T-Force Vulcan 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 2400 (PC4 19200) Desktop Memory Model TLGD416G2400HC14DC01','http://images10.newegg.com/ProductImageCompressAll300/20-313-771-01.jpg','$179.99','Free Shipping'),
	(13,'CORSAIR Vengeance LED 16GB (2 x 8GB) 288-Pin DDR4 SDRAM DDR4 3000 (PC4 24000) Desktop Memory Model CMU16GX4M2C3000C15','http://images10.newegg.com/ProductImageCompressAll300/20-236-076-07.jpg','$209.99','Free Shipping');

/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table storage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `storage`;

CREATE TABLE `storage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itemprice` varchar(255) DEFAULT NULL,
  `itempic` varchar(255) DEFAULT NULL,
  `itemshipping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;

INSERT INTO `storage` (`id`, `itemname`, `itemprice`, `itempic`, `itemshipping`)
VALUES
	(1,'WD Blue 1TB Desktop Hard Disk Drive - 7200 RPM SATA 6Gb/s 64MB Cache 3.5 Inch - WD10EZEX','$46.99','http://images10.newegg.com/ProductImageCompressAll300/22-236-339-V04.jpg','Free Shipping'),
	(2,'Seagate BarraCuda ST2000DM006 2TB 64MB Cache SATA 6.0Gb/s 3.5\" Hard Drive Bare Drive','$59.99','http://images10.newegg.com/ProductImageCompressAll300/22-178-993-V01.jpg','Free Shipping'),
	(3,'Seagate BarraCuda ST1000DM010 1TB 64MB Cache SATA 6.0Gb/s 3.5\" Hard Drive Bare Drive - OEM','$44.99','http://images10.newegg.com/ProductImageCompressAll300/22-179-010-V01.jpg','Free Shipping'),
	(4,'Seagate BarraCuda ST3000DM008 3TB 64MB Cache SATA 6.0Gb/s 3.5\" Hard Drive Bare Drive','$79.99','http://images10.newegg.com/ProductImageCompressAll300/22-178-994-V01.jpg','Free Shipping'),
	(5,'WD Red 4TB NAS Hard Disk Drive - 5400 RPM Class SATA 6Gb/s 64MB Cache 3.5 Inch - WD40EFRX','$133.99','http://images10.newegg.com/ProductImageCompressAll300/22-236-599-V04.jpg','Free Shipping'),
	(6,'Seagate BarraCuda ST4000DM004 4TB 256MB Cache SATA 6.0Gb/s 3.5\" Hard Drives','$99.99','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/22-179-299.jpg','Free Shipping'),
	(7,'WD Black 1TB Performance Desktop Hard Disk Drive - 7200 RPM SATA 6Gb/s 64MB Cache 3.5 Inch - WD1003FZEX','$72.99','http://images10.newegg.com/ProductImageCompressAll300/22-236-625-V04.jpg','Free Shipping'),
	(8,'Seagate FireCuda Gaming SSHD 2TB 7200 RPM 64MB Cache SATA 6.0Gb/s 3.5\" Internal Hard Drive ST2000DX002','$99.99','http://images10.newegg.com/ProductImageCompressAll300/22-178-996-V01.jpg','Free Shipping'),
	(9,'WD Black 2TB Performance Desktop Hard Disk Drive - 7200 RPM SATA 6Gb/s 64MB Cache 3.5 Inch - WD2003FZEX','$119.99','http://images10.newegg.com/ProductImageCompressAll300/22-236-624-V04.jpg','Free Shipping'),
	(10,'TOSHIBA X300 5TB Desktop Hard Drive 7200 RPM 128MB Cache SATA 6.0Gb/s 3.5\" Internal Hard Drive Retail Packaging HDWE150XZSTA','$129.99','http://images10.newegg.com/ProductImageCompressAll300/22-149-628-V01.jpg','Free Shipping'),
	(11,'WD Red 3TB NAS Hard Disk Drive - 5400 RPM Class SATA 6Gb/s 64MB Cache 3.5 Inch - WD30EFRX','$99.99','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/22-236-344-V04.jpg','Free Shipping'),
	(12,'WD Purple 4TB Surveillance Hard Disk Drive - 5400 RPM Class SATA 6Gb/s 64MB Cache 3.5 Inch WD40PURZ','$119.99','http://images10.newegg.com/NeweggImage/ProductImageCompressAll300/22-231-535-V06.jpg','Free Shipping');

/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
