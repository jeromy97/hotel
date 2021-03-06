-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                8.0.28 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Versie:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Structuur van  tabel fletchercase.hotel wordt geschreven
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel fletchercase.hotel: ~74 rows (ongeveer)
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` (`id`, `name`, `zip_code`, `address`, `city`, `province`, `phone`, `email`) VALUES
	('F01', 'Hotel-Restaurant Koogerend', '1791 EV', 'Kogerstraat 94', 'Den Burg', 'Noord-Holland', '0222-313301', 'info@hotelkoogerend.nl'),
	('F02', 'Hotel-Restaurant Prinsen', '5251 EC', 'Julianastraat 21', 'Vlijmen', 'Noord-Brabant', '073-5119131', 'info@hotelprinsen.nl'),
	('F03', 'Hotel Valkenburg', '6301 HM', 'Bosstraat 2-6', 'Valkenburg', 'Limburg', '043-6012033', 'info@fletcherhotelvalkenburg.nl'),
	('F04', 'Hotel-Restaurant De Burghoeve', '6301 HL', 'Broekhem 134', 'Valkenburg', 'Limburg', '043-6012962', 'info@hoteldeburghoeve.nl'),
	('F05', 'Hotel-Restaurant Du Commerce', '4331 HV', 'Loskade 1', 'Middelburg', 'Zeeland', '0118-636051', 'info@hotelducommerce.nl'),
	('F06', 'Zuiderduin Beachhotel', '4361 SM', 'De Bucksweg 2', 'Westkapelle', 'Zeeland', '0118-561810', 'info@zuiderduinbeachhotel.nl'),
	('F06A', 'Beachclub Zuiderduin', '4361 SM', 'De Bucksweg 2', 'Westkapelle', 'Zeeland', '0118-561810', 'info@zuiderduinbeachhotel.nl'),
	('F09', 'Hotel-Restaurant De Zon', '8431 ET', 'Stationsstraat 1', 'Oosterwolde', 'Friesland', '0516-512430', 'info@fletcherhoteldezon.nl'),
	('F11', 'Hotel-Restaurant Hellendoorn', '7447 HB', 'Johanna van Burenstraat 9', 'Hellendoorn', 'Overijssel', '0548-655425', 'info@hotelhellendoorn.nl'),
	('F12', 'Hotel-Restaurant Duinoord', '2242 PJ', 'Wassenaarseslag 26', 'Wassenaar', 'Zuid-Holland', '070-5119332', 'info@hotelduinoord.nl'),
	('F13', 'Hotel-Restaurant De Mallejan', '8076 PD', 'Nunspeterweg 70', 'Vierhouten', 'Gelderland', '0577-411241', 'info@hoteldemallejan.nl'),
	('F14', 'Hotel-Restaurant Bon Repos', '6255 AT', 'Bovenstraat 17', 'Noorbeek', 'Limburg', '043-4571338', 'info@hotelbonrepos.nl'),
	('F15', 'Hotel-Restaurant Paasberg', '7241 JR', 'Paasberg 2', 'Lochem', 'Gelderland', '0573-254751', 'info@hotelpaasberg.nl'),
	('F16', 'Hotel-Restaurant Zeeduin', '1949 EC', 'Relweg 59', 'Wijk aan Zee', 'Noord-Holland', '0251-376161', 'info@hotelzeeduin.nl'),
	('F17', 'Hotel-Restaurant De Gelderse Poort ', '6576 AS', 'Kon. Julianalaan 32', 'Ooij', 'Gelderland', '024-6638213', 'info@hoteldegeldersepoort.nl'),
	('F18', 'Hotel-Resort Amelander Kaap', '9161 CZ', 'Oosterhiemweg 1', 'Hollum', 'Friesland', '0519-554646', 'info@hotelamelanderkaap.nl'),
	('F19', 'Hotel-Restaurant Auberge De Kieviet ', '2243 CX', 'Stoeplaan 27', 'Wassenaar', 'Zuid-Holland', '070-5119232', 'info@hoteldekieviet.nl'),
	('F20', 'Badhotel Noordwijk', '2202 KD', 'Julianastraat 32', 'Noordwijk aan Zee', 'Zuid-Holland', '071-3620340', 'info@badhotelnoordwijk.nl'),
	('F21', 'Hotel-Restaurant De Grote Zwaan', '7587 ND', 'Bentheimerstraat 21', 'De Lutte', 'Overijssel', '0541-551215', 'info@hoteldegrotezwaan.nl'),
	('F22', 'Badhotel Egmond aan Zee', '1931 EW', 'Parallelweg 2', 'Egmond aan Zee', 'Noord-Holland', '072-506 1368', 'info@badhotelegmondaanzee.nl'),
	('F23', 'Hotel-Restaurant La Ville Blanche', '6017 AR', 'Hoogstraat 2 ', 'Thorn', 'Limburg', '0475-562341', 'info@hotellavilleblanche.nl'),
	('F24', 'Hotel-Paleis Stadhouderlijk Hof', '8911 HJ', 'Hofplein 29', 'Leeuwarden', 'Friesland', '058-2162180', 'info@hotelstadhouderlijkhof.nl'),
	('F25', 'Hotel-Restaurant Erica', '6571 BA', 'Molenbosweg 17', 'Berg en Dal', 'Gelderland', '024-6843514', 'info@hotelerica.nl'),
	('F26', 'Hotel-Restaurant De Geulvallei', '6301 KC', 'Onderstestraat 66', 'Houthem St. Gerlach', 'Limburg', '043-6043680', 'info@hoteldegeulvallei.nl'),
	('F27', 'Hotel-Restaurant Rooland', '5944 EZ', 'Roobeekweg 1', 'Arcen', 'Limburg', '077-4736666', 'info@hotelrooland.nl'),
	('F29', 'Hotel-Restaurant Heidehof', '8445 SR', 'Golflaan 1', 'Heerenveen', 'Friesland', '0513-630200', 'info@hotelheidehof.nl'),
	('F30', 'Hotel-Restaurant Langewold', '9301 NR', 'Ceintuurbaan Noord 1', 'Roden', 'Drenthe', '050- 5013850', 'info@hotellangewold.nl'),
	('F31', 'Hotel-Restaurant Carlton', '2671SB', 'Tiendweg 20', 'Naaldwijk', 'Zuid-Holland', '0174-272625', 'info@hotelcarlton.nl'),
	('F32', 'Hotel-Restaurant De Zalm', '3231 BJ', 'Voorstraat 6-8', 'Brielle', 'Zuid-Holland', '0181-413388', 'info@hoteldezalm.nl'),
	('F33', 'Hotel-Restaurant Het Veluwse Bos', '7361 CN', 'Arnhemseweg 520', 'Beekbergen', 'Gelderland', '055-5061393', 'info@hotelhetveluwsebos.nl'),
	('F34', 'Duinhotel Burgh Haamstede', '4328 JC', 'Torenweg 1', 'Burgh Haamstede', 'Zeeland', '0111-887766', 'info@duinhotelburghhaamstede.nl'),
	('F35', 'Hotel-Restaurant Boschoord', '5062 SB', 'Gemullehoekenweg 143', 'Oisterwijk', 'Noord-Brabant', '013-5231600', 'info@hotelboschoord.nl'),
	('F36', 'Hotel-Restaurant Nautisch Kwartier', '1271 GL', 'Mastspoor 1', 'Huizen', 'Noord-Holland', '035-5230010', 'info@hotelnautischkwartier.nl'),
	('F37', 'Hotel-Landgoed Huis Te Eerbeek', '6961 LX', 'Prof.Weberlaan 1', 'Eerbeek', 'Gelderland', '031-3659135', 'info@fletcherhoteleerbeek.nl'),
	('F38', 'Badhotel Callantsoog', '1759 NB', 'Abbestederweg 26', 'Callantsoog', 'Noord-Holland', '0224-582222', 'info@badhotelcallantsoog.nl'),
	('F39', 'Hotel-Restaurant De Witte Raaf', '2204 AT', 'Duinweg 117', 'Noordwijk', 'Zuid-Holland', '0252-242900', 'info@fletcherhoteldewitteraaf.nl'),
	('F40', 'Familiehotel Paterswolde', '9765 TA', 'Groningerweg 19', 'Paterswolde', 'Groningen', '050-3095400', 'info@familiehotelpaterswolde.nl'),
	('F41', 'Hotel-Restaurant De Dikke Van Dale', '4524 JE', 'St. Annastraat 46', 'Sluis', 'Zeeland', '0117-456010', 'info@dikkevandalesluis.nl'),
	('F42', 'Hotel-Restaurant Kasteel Erenstein', '6468 PA', 'Kerkradersteenweg 4', 'Kerkrade', 'Limburg', '045- 5461333', 'info@kasteelerenstein.nl'),
	('F43', 'Hotel-Restaurant De Scheperskamp', '7241 JR', 'Paasberg 3', 'Lochem', 'Gelderland', '0573-254051', 'info@hotelscheperskamp.nl'),
	('F44', 'Hotel-Restaurant Dinkeloord', '7588 PW', 'Denekamperstraat 48', 'Beuningen', 'Overijssel', '0541-351387', 'info@fletcherhoteldinkeloord.nl'),
	('F45', 'Hotel-Restaurant Veldenbos', '8071 BR', 'Spoorlaan 42', 'Nunspeet', 'Gelderland', '0341-252334', 'info@hotelveldenbos.nl'),
	('F46', 'Hotel-Restaurant De Hunzebergen', '7875 TB', 'Valtherweg 36', 'Exloo', 'Drenthe', '0591-549131', 'info@hoteldehunzebergen.nl'),
	('F47', 'Landhotel Bosrijk Roermond', '6042 KN', 'Maalbroek 102', 'Roermond', 'Limburg', '0475-348899', 'info@hotelbosrijkroermond.nl'),
	('F48', 'Hotel-Restaurant Heiloo', '1851 PD', 'Kennemerstraatweg 425', 'Heiloo', 'Noord-Holland', '072-5052244', 'info@fletcherhotelheiloo.nl'),
	('F49', 'Hotel-Restaurant Marijke', '1861KT', 'Dorpsstraat 23-25', 'Bergen', 'Noord-Holland', '072-5812381', 'info@hotelmarijke.nl'),
	('F50', 'Hotel-Restaurant De Zeegser Duinen', '9483 TL', 'Schipborgerweg 8', 'Zeegse', 'Drenthe', '0592-530099', 'info@hoteldezeegserduinen.nl'),
	('F51', 'Hotel-Restaurant De Kempen', '5541 NZ', 'Turnhoutseweg 48', 'Reusel', 'Noord-Brabant', '0497-642720', 'info@hoteldekempen.nl'),
	('F52', 'Hotel-Restaurant De Witte Brug', '2941 BP', 'Kerkweg 138', 'Lekkerkerk', 'Zuid-Holland', '0180-663344', 'info@hoteldewittebrug.nl'),
	('F53', 'Hotel-Restaurant Sallandse Heuvelrug', '7461PA', 'Burgemeester Knottenbeltlaan 77', 'Rijssen', 'Overijssel', '0548-516900', 'info@hotelsallandseheuvelrug.nl'),
	('F54', 'Hotel-Restaurant De Cooghen', '1796BB', 'Dorpstraat 10', 'De Koog', 'Noord-Holland', '0222-367020', 'info@hotelcooghen.nl'),
	('F55', 'Hotel Gilde', '7411LG', 'Nieuwstraat 41', 'Deventer', 'Overijssel', '0570-641846', 'info@hotelgilde.nl'),
	('F57', 'Hotel-Restaurant Stadspark', '4615MA', 'Gertrudisboulevard 200', 'Bergen op Zoom', 'Noord-Brabant', '0164-260202', 'info@fletcherstadsparkhotel.nl'),
	('F58', 'Hotel-Restaurant Steenwijk', '8332 JE', 'Woldmeentherand 15', 'Steenwijk', 'Overijssel', '0521-512311', 'info@fletcherhotelsteenwijk.nl'),
	('F59', 'Landhotel De Borken', '7991 PJ', 'Lhee 76', 'Dwingeloo', 'Drenthe', '0521-597200', 'info@hoteldeborken.nl'),
	('F60', 'Hotel-Resort Spaarnwoude', '1981 LR', 'Oostbroekerweg 17', 'Velsen-Zuid', 'Noord-Holland', '023-5370548', 'info@hotelresortspaarnwoude.nl'),
	('F61', 'Hotel-Restaurant Nieuwvliet Bad', '4504 RX', 'Zouterik 2', 'Nieuwvliet-Bad', 'Zeeland', '0117-372020', 'info@hotelnieuwvlietbad.nl'),
	('F62', 'Hotel-Restaurant Duinzicht', '3253 LL', 'Oud Nieuwlandseweg 13', 'Ouddorp', 'Zuid-Holland', '0187-680000', 'info@fletcherhotelduinzicht.nl'),
	('F63', 'Hotel-Restaurant Het Witte Huis', '3768HN', 'Birkstraat 138', 'Soest', 'Utrecht', '033-4328255', 'info@fletcherhotelhetwittehuis.nl'),
	('F64', 'Hotel-Restaurant Elzenduin', '2684 VT', 'Strandweg 18', 'Ter Heijde', 'Zuid-Holland', '0174-214200', 'info@hotelelzenduin.nl'),
	('F70', 'Fletcher Hotel Amsterdam', '1105AT', 'Schepenbergweg 50 ', 'Amsterdam', 'Noord-Holland', '020-3113670', 'info@fletcherhotelamsterdam.nl'),
	('F71', 'Landgoedhotel Renesse', '4325 BC', 'Stoofwekken 5', 'Renesse', 'Zeeland', '0111-461788', 'info@fletcherlandgoedhotelrenesse.nl'),
	('F72', 'Hotel-Restaurant Apeldoorn', '7313EH', 'Soerenseweg 73', 'Apeldoorn', 'Gelderland', '055-3554555', 'info@hotelapeldoorn.nl'),
	('F73', 'Hotel-Restaurant \'s-Hertogenbosch', '5245NH', 'Burg Burgerslaan 50', 's-Hertogenbosch-Rosmalen', 'Noord-Brabant', '073-5219159', 'info@fletcherhotelshertogenbosch'),
	('F74', 'Hotel-Restaurant Trivium', '4873LP', 'Trivium 72', 'Etten-Leur', 'Noord-Brabant', '076-5010041', 'info@fletcherhoteltrivium.nl'),
	('F76', 'Parkhotel Val Monte', '6572AA', ' Oude Holleweg 5', 'Berg en Dal', 'Gelderland', '024-6842000', 'info@parkhotelvalmonte.nl'),
	('F77', 'Hotel-Restaurant Jan van Scorel', '1871ED', 'Heereweg 89', 'Schoorl', 'Noord-Holland', '0725-094444', 'info@fletcherhoteljanvanscorel.nl'),
	('F78', 'Hotel-Restaurant Nieuwegein-Utrecht', '3435SB', 'Buizerdlaan 10', 'Nieuwegein', 'Utrecht', '030-6044844', 'info@fletcherhotelnieuwegein.nl'),
	('F79', 'Hotel-Restaurant Doorwerth-Arnhem', '6865BL', 'Kabeljauwallee 35', 'Doorwerth', 'Gelderland', '0317???319010', 'info@hoteldoorwerth.nl'),
	('F80', 'Hotel-Restaurant de Eese', '8346KH', 'Duivenslaagte 2', 'de Bult', 'Overijssel', '0521-511454', 'info@hoteldeeese.nl'),
	('F82', 'Hotel-Restaurant Leidschendam-Den Haag', '2262AB', 'Weigelia 22', 'Leidschendam', 'Zuid-Holland', '070-3209280', 'info@fletcherhoteldenhaag.nl'),
	('F83', 'Hotel-Restaurant de Wageningsche Berg ', '6703DS', 'Generaal Foulkesweg 96', 'Wageningen', 'Gelderland', '0317-495911', 'info@hotelwageningscheberg.nl'),
	('F84', 'Hotel-Restaurant Frerikshof', '7103CA', 'Frerikshof 2', 'Winterswijk', 'Gelderland', '0543-517755', 'info@hotelfrerikshof.nl'),
	('F85', 'Landgoed Hotel Avegoor', '6955AG', 'Zutphensestraatweg 2', 'Ellecom', 'Gelderland', '0313-430600', 'info@landgoedavegoor.nl');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
