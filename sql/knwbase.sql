CREATE DATABASE  IF NOT EXISTS `a5344960_knwbase` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `a5344960_knwbase`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: a5344960_knwbase
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `diesease`
--

DROP TABLE IF EXISTS `diesease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diesease` (
  `diesease_id` int(11) NOT NULL AUTO_INCREMENT,
  `diesease_name` varchar(255) NOT NULL,
  `description` text,
  `medication_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`diesease_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diesease`
--

LOCK TABLES `diesease` WRITE;
/*!40000 ALTER TABLE `diesease` DISABLE KEYS */;
/*!40000 ALTER TABLE `diesease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knwbase_category`
--

DROP TABLE IF EXISTS `knwbase_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knwbase_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `parent_category` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knwbase_category`
--

LOCK TABLES `knwbase_category` WRITE;
/*!40000 ALTER TABLE `knwbase_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `knwbase_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knwbase_img`
--

DROP TABLE IF EXISTS `knwbase_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knwbase_img` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(255) NOT NULL,
  `image_path` text NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `comment` text,
  `description` text,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knwbase_img`
--

LOCK TABLES `knwbase_img` WRITE;
/*!40000 ALTER TABLE `knwbase_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `knwbase_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knwbase_info`
--

DROP TABLE IF EXISTS `knwbase_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knwbase_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  `treatment` text,
  `reason` text,
  `medication_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knwbase_info`
--

LOCK TABLES `knwbase_info` WRITE;
/*!40000 ALTER TABLE `knwbase_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `knwbase_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medication` (
  `medication_id` int(11) NOT NULL AUTO_INCREMENT,
  `medication_name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`medication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` (`medication_id`, `medication_name`, `description`) VALUES (1,'Accolate  - Zafirlukast',NULL),(2,'Accuhaler  - Salbutamol',NULL),(3,'Accupro  - Quinapril',NULL),(4,'Acepril  - Captopril',NULL),(5,'Acetaminophen  - Paracetamol',NULL),(6,'Achromycin  - Tetracycline',NULL),(7,'Acupan  - Nefopam hydrochloride',NULL),(8,'Adactone  - Spironolactone',NULL),(9,'Adalat  - Nifedipine',NULL),(10,'Adizem  - Diltiazem',NULL),(11,'Adrenaline in dental local anaesthetic solutions  - Epinephrine',NULL),(12,'AeroBec  - Beclometasone dipropionate',NULL),(13,'Aerocrom  - Sodium cromoglicate',NULL),(14,'Aerolin  - Salbutamol',NULL),(15,'Airomir  - Salbutamol',NULL),(16,'Akineton  - Biperiden',NULL),(17,'Aldomet  - Methyldopa',NULL),(18,'Algicon  - Alginates',NULL),(19,'Alkeran  - Melphalan',NULL),(20,'Allegron  - Nortriptyline',NULL),(21,'Alphaparin  - Certoparin',NULL),(22,'Alu-cap  - Aluminium hydroxide',NULL),(23,'Alupent  - Orciprenaline sulphate',NULL),(24,'Alvercol  - Alverine citrate',NULL),(25,'Amaryl  - Glimepiride',NULL),(26,'Ametop  - Amethocaine',NULL),(27,'Amias  - Candesartan',NULL),(28,'Amikin  - Amikacin',NULL),(29,'Amoxil  - Amoxicillin',NULL),(30,'Amylobarbitone  - Amobarbital',NULL),(31,'Anabact  - Metronidazole',NULL),(32,'Anafranil  - Clomipramine hydrochloride',NULL),(33,'Ancotil  - Flucytosine',NULL),(34,'Androcur  - Cyproterone acetate',NULL),(35,'Anexate  - Flumazenil',NULL),(36,'Angiopine  - Nifedipine',NULL),(37,'Angitil  - Diltiazem',NULL),(38,'Anquil  - Benperidol',NULL),(39,'Antabuse  - Disulfiram',NULL),(40,'Antepsin  - Sucralfate',NULL),(41,'Anturan  - Sulfinpyrazone',NULL),(42,'Apresoline  - Hydralazine',NULL),(43,'Aprovel  - Irbesartan',NULL),(44,'Aricept  - Donepezil hydrochloride',NULL),(45,'Arimidex  - Anastrozole',NULL),(46,'Arosmasin  - Exemestan',NULL),(47,'Arpicolin  - Procyclidine hydrochloride',NULL),(48,'Arythmol  - Propafenone hydrochloride',NULL),(49,'Asacol  - Mesalazine',NULL),(50,'Asendis  - Amoxapine',NULL),(51,'AsmaBec  - Beclometasone dipropionate',NULL),(52,'Asmasal  - Salbutamol',NULL),(53,'Aspirin  - Acetylsalicylic acid',NULL),(54,'Atarax  - Hydroxyzine hydrochloride',NULL),(55,'Atrovent  - Ipratropium bromide',NULL),(56,'Augmentin  - Co-amoxiclav',NULL),(57,'Augmentin-Duo  - Co-amoxiclav',NULL),(58,'Avloclor  - Chloroquine',NULL),(59,'Avomine  - Promethazine teoclate',NULL),(60,'Axid  - Nizatidine',NULL),(61,'Azactam  - Aztreonam',NULL),(62,'Azopt  - Brinzolamide',NULL),(63,'BCNU  - Carmustine',NULL),(64,'Bambec  - Bambuterol hydrochloride',NULL),(65,'Baratol  - Indoramin',NULL),(66,'Baxan  - Cefadroxil',NULL),(67,'Becloforte  - Beclometasone dipropionate',NULL),(68,'Becodisks  - Beclometasone dipropionate',NULL),(69,'Beconase  - Beclometasone dipropionate',NULL),(70,'Becotide  - Beclometasone dipropionate',NULL),(71,'Benadryl allergy relief  - Acrivastine',NULL),(72,'Benemid  - Probenecid',NULL),(73,'Berotec  - Fenoterol hydrobromide',NULL),(74,'Beta-cardone  - Sotalol hydrochloride',NULL),(75,'Betadine  - Povidone-iodine',NULL),(76,'Betaloc  - Metoprolol',NULL),(77,'Betnesol  - Betamethasone',NULL),(78,'Bicillin  - Procaine penicillin/Procaine benzylpenicillin',NULL),(79,'Bioplex  - Carbenoxolone sodium',NULL),(80,'Bioral gel  - Carbenoxolone sodium',NULL),(81,'Biorphen  - Orphenadrine hydrochloride',NULL),(82,'Bocasan  - Sodium perborate',NULL),(83,'Bonefos  - Sodium clodronate',NULL),(84,'Botox  - Botulinum A Toxin',NULL),(85,'Bricanyl  - Terbutaline sulphate',NULL),(86,'BritLofex  - Lofexadine hydrochloride',NULL),(87,'Britaject  - Apomorphine hydrochloride',NULL),(88,'Broflex  - Benzhexol hydrochloride/ Trihexyphenidyl hydrochloride',NULL),(89,'Bronchodil  - Reproterol hydrochloride',NULL),(90,'Brufen  - Ibuprofen',NULL),(91,'Buccastem  - Prochlorperazine',NULL),(92,'Budenofalk  - Budesonide',NULL),(93,'Burinex  - Bumetanide',NULL),(94,'Buscopan  - Hyoscine butylbromide',NULL),(95,'Buspar  - Buspirone hydrochloride',NULL),(96,'Butacote  - Phenylbutazone',NULL),(97,'Butobarbitone  - Butobarbital',NULL),(98,'Cabaser  - Cabergoline',NULL),(99,'Cafegot  - Ergotamine tartrate',NULL),(100,'Calcitare  - Calcitonin-porcine',NULL),(101,'Calcort  - Deflazacort',NULL),(102,'Calicard  - Diltiazem',NULL),(103,'Calpol  - Paracetamol',NULL),(104,'Calsynar  - Salcatonin',NULL),(105,'Camcolit  - Lithium salts',NULL),(106,'Campral EC  - Acamprosate calcium',NULL),(107,'Campto  - Irinotecan hydrochloride',NULL),(108,'Capastat  - Capreomycin',NULL),(109,'Capoten  - Captopril',NULL),(110,'Cardene  - Nicardipine',NULL),(111,'Cardura  - Doxazosin',NULL),(112,'Catapres  - Clonidine',NULL),(113,'Cefrom  - Cefpirome',NULL),(114,'Cefzil  - Cefprozil',NULL),(115,'Celance  - Pergolide',NULL),(116,'Celebrex  - Celecoxib',NULL),(117,'Celevac  - Methylcellulose',NULL),(118,'Cellcept  - Mycophenolate mofetil',NULL),(119,'Ceporex  - Cefalexin',NULL),(120,'Cerubidin  - Daunorubicin',NULL),(121,'Chirocain  - Levobupivacaine',NULL),(122,'Chloral elixir  - Chloral hydrate',NULL),(123,'Chloral mixture  - Chloral hydrate',NULL),(124,'Chlorohex  - Chlorhexidine gluconate',NULL),(125,'Chloromycetin  - Chloramphenicol',NULL),(126,'Cidomycin  - Gentamicin',NULL),(127,'Cinobac  - Cinoxacin',NULL),(128,'Cipramil  - Citalopram',NULL),(129,'Ciproxin  - Ciprofloxacin',NULL),(130,'Citanest  - Prilocaine',NULL),(131,'Claforan  - Cefotaxime',NULL),(132,'Clarityn  - Loratadine',NULL),(133,'Clexane  - Enoxaparin',NULL),(134,'Clinoril  - Sulindac',NULL),(135,'Clomid  - Clomifene',NULL),(136,'Clopixol acuphase  - Zuclopenthixol acetate    ',NULL),(137,'Clopixol conc.  ? Zuclopenthixol decanoate',NULL),(138,'Clopixol  - Zuclopenthixol decanoate',NULL),(139,'Clotam  - Tolfenamic acid',NULL),(140,'Clozaril  - Clozapine',NULL),(141,'Co-danthromer  - Dantron',NULL),(142,'Co-danthrusate  - Dantron',NULL),(143,'Cogentin  - Benzatropine mesilate',NULL),(144,'Colazide  - Balsalazide sodium',NULL),(145,'Colestid  - Colestipol hydrochloride',NULL),(146,'Colofac  - Mebeverine hydrochloride',NULL),(147,'Colomycin  - Colistin',NULL),(148,'Colpermin  - Peppermint oil',NULL),(149,'Comtess  - Entacapone',NULL),(150,'Concordin  - Protriptyline hydrochloride',NULL),(151,'Contraceptive Pill  - Progestogen',NULL),(152,'Convulex  - Valproate',NULL),(153,'Coracten  - Nifedipine',NULL),(154,'Cordarone  - Amiodarone',NULL),(155,'Corday  - Nifedipine',NULL),(156,'Cordilox  - Verapamil',NULL),(157,'Corfaretic  - Nadolol',NULL),(158,'Corsodyl  - Chlorhexidine gluconate',NULL),(159,'Cortisyl  - Cortisone acetate',NULL),(160,'Cosopt  - Dorzolamide',NULL),(161,'Cozaar  - Losartan',NULL),(162,'Creon  - Pancreatin',NULL),(163,'Crixivan  - Indinavir',NULL),(164,'Cromogen Easi-Breathe  - Sodium cromoglicate',NULL),(165,'Crystapen Penicillin V  - Penicillin G',NULL),(166,'Crystapen  - Benzyl penicillin',NULL),(167,'Cyklokapron  - Tranexamic acid',NULL),(168,'Cymevene  - Ganciclovir',NULL),(169,'Cystrin  - Oxybutynin hydrochloride',NULL),(170,'Cytosar  - Cytarabine',NULL),(171,'Cytotec  - Misoprostol',NULL),(172,'DDAVP  - Desmopressin',NULL),(173,'DF118  - Dihydrocodeine tartrate',NULL),(174,'Daktarin  - Miconazole',NULL),(175,'Dalacin C  - Clindamycin',NULL),(176,'Dalmane  - Flurazepam',NULL),(177,'Daonil  - Glibenclamide',NULL),(178,'Daraprim  - Pyramethamine',NULL),(179,'De-Noltab  - Tripotassium dicitratobismuthate',NULL),(180,'Deca-Durabolin  - Nandrolone',NULL),(181,'Decadron  - Dexamethasone',NULL),(182,'Depixol Conc  - Flupentixol decanoate',NULL),(183,'Depixol Low Volume  - Flupentixol decanoate',NULL),(184,'Depixol  - Flupentixol',NULL),(185,'Depixol  - Flupentixol decanoate',NULL),(186,'Deseril  - Methysergide',NULL),(187,'Desmotabs  - Desmopressin',NULL),(188,'Destolit  - Ursodeoxycholic acid',NULL),(189,'Deteclo  - Tetracycline',NULL),(190,'Detrunorm  - Propiverine hydrochloride',NULL),(191,'Detrusitol  - Tolterodine tartrate',NULL),(192,'Dexedrine  - Dexamfetamine sulphate',NULL),(193,'Dialar  - Diazepam',NULL),(194,'Diamicron  - Gliclazide',NULL),(195,'Diazemuls  - Diazepam',NULL),(196,'Diconal  - Dipipanone',NULL),(197,'Diflucan  - Fluconazole',NULL),(198,'Dilzem  - Diltiazem',NULL),(199,'Dimetriose  - Gestrinone',NULL),(200,'Dimotane  - Brompheniramine maleate',NULL),(201,'Dioctyl  - Docusate sodium',NULL),(202,'Diovan  - Valsartan',NULL),(203,'Dipentum  - Olsalazine sodium',NULL),(204,'Diprivan  - Propofol',NULL),(205,'Disipal  - Orphenadrine hydrochloride',NULL),(206,'Diskhaler  - Fluticasone propionate',NULL),(207,'Distaclor MR  - Cefaclor',NULL),(208,'Distaclor  - Cefaclor',NULL),(209,'Distamine  - Penicillamine',NULL),(210,'Dixarit  - Clonidine',NULL),(211,'Docusol  - Docusate sodium',NULL),(212,'Dolmatil  - Sulpiride',NULL),(213,'Dolobid  - Diflunisal',NULL),(214,'Dostinex  - Cabergoline',NULL),(215,'Dozic  - Haloperidol',NULL),(216,'Dramamine  - Dimenhydrinate',NULL),(217,'Droleptan  - Droperidol',NULL),(218,'Dumicoat  - Miconazole',NULL),(219,'Durogesic  - Fentanyl',NULL),(220,'Duromine  - Phentermine',NULL),(221,'Dutonin  - Nefazodone hydrochloride ',NULL),(222,'Dyspamet  - Cimetidine',NULL),(223,'Dysport  - Botulinum A Toxin',NULL),(224,'Dytac  - Triamterene',NULL),(225,'Easi-breathe  - Salbutamol',NULL),(226,'Edronax  - Reboxetine',NULL),(227,'Efcortesol  - Hydrocortisone',NULL),(228,'Efexor  - Venlafaxine',NULL),(229,'Efudix  - Fluorouracil',NULL),(230,'Eldepryl  - Selegeline hydrochloride',NULL),(231,'Eldisine  - Vindesine sulphate',NULL),(232,'Eloxatin  - Oxaliplatin',NULL),(233,'Elyzol Flagyl  - Metronidazole',NULL),(234,'Emcor  - Bisoprolol',NULL),(235,'Emeside  - Ethosuximide',NULL),(236,'Emflex  - Acemetacin',NULL),(237,'Endoxana  - Cyclophosphamide',NULL),(238,'Entocort  - Budesonide',NULL),(239,'Epanutin  - Phenytoin sodium',NULL),(240,'Epilim  - Valproate',NULL),(241,'Epinephrine in dental local anaesthetic solutions  - Adrenaline',NULL),(242,'Epivir  - Lamivudine',NULL),(243,'Equagesic  - Meprobamate',NULL),(244,'Equasym  - Methylphenidate hydrochloride',NULL),(245,'Erymax  - Erythromycin',NULL),(246,'Erythrocin  - Erythromycin',NULL),(247,'Erythroped  - Erythromycin',NULL),(248,'Eskazole  - Albendazole',NULL),(249,'Estracyt  - Estramustine phosphate',NULL),(250,'Eucardic  - Carvedilol',NULL),(251,'Eudemine  - Diazoxide',NULL),(252,'Euglucon  - Glibenclamide',NULL),(253,'Evohaler  - Salbutamol',NULL),(254,'Exelon  - Rivastigmine',NULL),(255,'Famvir  - Famciclovir',NULL),(256,'Fansidar  - Pyramethamine with Sulfadoxine',NULL),(257,'Fasigyn  - Tinidazole',NULL),(258,'Faverin  - Fluvoxamine maleate',NULL),(259,'Feldene  - Piroxicam',NULL),(260,'Femara  - Letrozole',NULL),(261,'Fenbid  - Ibuprofen',NULL),(262,'Fenopron  - Fenoprofen',NULL),(263,'Fentazin  - Perphenazine',NULL),(264,'Feospan  - Ferrous sulphate',NULL),(265,'Ferrograd  - Ferrous sulphate',NULL),(266,'Fersaday  - Ferrous fumarate',NULL),(267,'Fersamal  - Ferrous fumarate',NULL),(268,'Fletcher\'s Enemette  - Docusate sodium',NULL),(269,'Flixonase  - Fluticasone propionate',NULL),(270,'Flixotide  - Fluticasone propionate',NULL),(271,'Florinef  - Fludrocortisone acetate',NULL),(272,'Floxapen  - Flucloxacillin',NULL),(273,'Fluanxol  - Flupentixol',NULL),(274,'Fludara  - Fludarabine phosphate',NULL),(275,'Foradil  - Eformoterol fumarate/Formoterol fumarate',NULL),(276,'Fortipine  - Nifedipine',NULL),(277,'Fortovase  - Saquinavir',NULL),(278,'Fortral  - Pentazocine',NULL),(279,'Fortum  - Ceftazidime',NULL),(280,'Fosamax  - Alendronic acid',NULL),(281,'Foscavir  - Foscarnet sodium',NULL),(282,'Fragmin  - Dalteparin',NULL),(283,'Frisium  - Clobazam',NULL),(284,'Froben  - Flurbiprofen',NULL),(285,'Fucidin  - Sodium fusidate',NULL),(286,'Fulcin  - Griseofulvin',NULL),(287,'Fungilin  - Amphotericin',NULL),(288,'Fungizone  - Amphotericin',NULL),(289,'Furadantin  - Nitrofurantoin',NULL),(290,'Furamide  - Diloxanide furoate',NULL),(291,'Fybogel  - Ispaghula husk',NULL),(292,'Fybogel  - Mebeverine hydrochloride',NULL),(293,'Gabitril  - Tiagebine',NULL),(294,'Galenphol  - Pholcodine',NULL),(295,'Galpseud  - Pseudoephedrine hydrochloride',NULL),(296,'Gamanil  - Lofepramine',NULL),(297,'Gastrobid Continus  - Metoclopramide hydrochloride',NULL),(298,'Gastrocote  - Alginates',NULL),(299,'Gastrocote  - Aluminium hydroxide',NULL),(300,'Gastrocote  - Magnesium trisilicate',NULL),(301,'Gastromax  - Metoclopramide hydrochloride',NULL),(302,'Gaviscon Maalox  - Aluminium hydroxide',NULL),(303,'Gaviscon  - Alginates',NULL),(304,'Gemzar  - Gemcitabine',NULL),(305,'Genotropin  - Somatropin',NULL),(306,'Genticin  - Gentamicin',NULL),(307,'Glandosane  - Saliva substitute',NULL),(308,'Glibenese  - Glipizide    429',NULL),(309,'Glucobay  - Acarbose',NULL),(310,'Glucophage  - Metformin hydrochloride',NULL),(311,'Glurenorm  - Gliquidone',NULL),(312,'Gopten  - Trandolapril',NULL),(313,'Grisovin  - Griseofulvin',NULL),(314,'Haldol decanoate  - Haloperidol decanoate',NULL),(315,'Haldol  - Haloperidol',NULL),(316,'Half Sinemet  - Co-careldopa',NULL),(317,'HeliClear  - Lansoprazole',NULL),(318,'Hemineverin  - Clomethiazole',NULL),(319,'Heroin hydrochloride  - Diamorphine',NULL),(320,'Hexopal  - Nicotinic acid',NULL),(321,'Hiprex  - Methenamine',NULL),(322,'Hivid  - Zalcitabine',NULL),(323,'Honvan  - Fosfestrol tetrasodium',NULL),(324,'Hormone Replacement Therapy  - Oestrogen',NULL),(325,'Human Mixtard  - Biphasic isophane insulin',NULL),(326,'Human Monotard  - Insulin Zinc suspension',NULL),(327,'Humatrope  - Somatropin',NULL),(328,'Humulin Lente  - Insulin Zinc suspension',NULL),(329,'Humulin  - Soluble insulin',NULL),(330,'Hycamtin  - Topotecan',NULL),(331,'Hydrocortone  - Hydrocortisone',NULL),(332,'Hygroton  - Chlorthalidone',NULL),(333,'Hypnovel  - Midazolam',NULL),(334,'Hypovase  - Prazosin',NULL),(335,'Hypurin  - Soluble insulin',NULL),(336,'Hytrin  - Terazosin',NULL),(337,'Ikorel  - Nicorandil',NULL),(338,'Ilosone  - Erythromycin',NULL),(339,'Imigran  - Sumatriptan',NULL),(340,'Imodium plus  - Loperamide hydrochloride',NULL),(341,'Imodium  - Loperamide hydrochloride',NULL),(342,'Imunovir  - Inosine pranobex',NULL),(343,'Imuran  - Azathioprine',NULL),(344,'Inderal  - Propanolol',NULL),(345,'Indocid  - Indomethacin',NULL),(346,'Innohep  - Tinzaparin',NULL),(347,'Innovace  - Enalapril',NULL),(348,'Insuman  - Biphasic isophane insulin',NULL),(349,'Intal  - Sodium cromoglicate',NULL),(350,'Invirase  - Saquinavir',NULL),(351,'Ionamin  - Phentermine',NULL),(352,'Isogel  - Ispaghula husk',NULL),(353,'Istin  - Amlodipine besylate',NULL),(354,'Kannasyn  - Kanamycin',NULL),(355,'Kaolin mixture  - Kaolin',NULL),(356,'Kefadim  - Ceftazidime',NULL),(357,'Kefadol  - Cefamandole',NULL),(358,'Keflex  - Cefalexin',NULL),(359,'Kefzol  - Cefazolin',NULL),(360,'Kemadrin  - Procyclidine hydrochloride',NULL),(361,'Kemicetine  - Chloramphenicol',NULL),(362,'Kenalog  - Triamcinolone',NULL),(363,'Kinidin  - Quinidine',NULL),(364,'Klaricid XL  - Clarithromycin',NULL),(365,'Klaricid  - Clarithromycin',NULL),(366,'Kolanticon  - Dicyclomine hydrochloride/Dicycloverine hydrochloride',NULL),(367,'Konsyl  - Ispaghula husk',NULL),(368,'Kytril  - Granisetron',NULL),(369,'Lamictal  - Lamotrigine',NULL),(370,'Lamisil  - Terbinafine',NULL),(371,'Lamprene  - Clofazimine',NULL),(372,'Lanoxin  - Digoxin',NULL),(373,'Lanvis  - Tioguanine',NULL),(374,'Largactil  - Chlorpromazine hydrochloride',NULL),(375,'Lariam  - Mefloquine',NULL),(376,'Lasix  - Frusemide',NULL),(377,'Lasma  - Theophylline',NULL),(378,'Lederfen  - Fenbufen',NULL),(379,'Ledermycin  - Demeclocycline hydrochloride',NULL),(380,'Lentaron  - Formestane',NULL),(381,'Lentizol  - Amitriptyline hydrochloride',NULL),(382,'Lescol  - Fluvastatin',NULL),(383,'Leukeran  - Chlorambucil',NULL),(384,'Leustat  - Cladribine',NULL),(385,'Lexotan  - Bromazepam',NULL),(386,'Librium  - Chlordiazepoxide',NULL),(387,'Lignospan  - Lidocaine/ Lignocaine Dental preparations ',NULL),(388,'Lignostab  - Lidocaine/Lignocaine Dental preparations',NULL),(389,'Limclair  - Trisodium edetate',NULL),(390,'Lingraine  - Ergotamine tartrate',NULL),(391,'Lipitor  - Atorvastatin',NULL),(392,'Lipobay  - Cerivastatin',NULL),(393,'Lipostat  - Parvastatin',NULL),(394,'Liskonum  - Lithium salts',NULL),(395,'Litarex  - Lithium salts',NULL),(396,'Lodine  - Etodolac',NULL),(397,'Lomotil  - Co-phenotrope',NULL),(398,'Loniten  - Minoxidil',NULL),(399,'Lopressor  - Metoprolol',NULL),(400,'Losec  - Omeprazole',NULL),(401,'Loxapac  - Loxapine',NULL),(402,'Luborant  - Saliva substitute',NULL),(403,'Ludiomil  - Maprotiline hydrochloride',NULL),(404,'Lustral  - Sertraline',NULL),(405,'MST  - Morphine',NULL),(406,'Maalox TC  - Aluminium hydroxide',NULL),(407,'Macrobid  - Nitrofurantoin',NULL),(408,'Macrodantin  - Nitrofurantoin',NULL),(409,'Madopar  - Co-beneldopa',NULL),(410,'Magnapen  - Co-fluampicil',NULL),(411,'Maloprim  - Pyramethamine with Dapsone',NULL),(412,'Malorone  - Proguanil hydrochloride with Atovaquone',NULL),(413,'Manerix  - Moclobemide',NULL),(414,'Manevac  - Senna',NULL),(415,'Marcain  - Bupivacaine',NULL),(416,'Maxalt  - Rizatriptan',NULL),(417,'Maxolon  - Metoclopramide hydrochloride',NULL),(418,'Medrone  - Methylprednisolone',NULL),(419,'Mefoxin  - Cefoxitin',NULL),(420,'Melleril  - Thioridazine',NULL),(421,'Meptid  - Meptazinol',NULL),(422,'Merbentyl  - Dicyclomine hydrochloride/Dicycloverine hydrochloride',NULL),(423,'Merocet  - Cetylpyridinium chloride',NULL),(424,'Meronem  - Meropenem',NULL),(425,'Methadose  - Methadone hydrochloride',NULL),(426,'Metrogel  - Metronidazole',NULL),(427,'Metrolyl  - Metronidazole',NULL),(428,'Metrotop  - Metronidazole',NULL),(429,'Micardis  - Telmisartan',NULL),(430,'Mictral  - Nalidixic acid',NULL),(431,'Midrid  - Isometheptene mucate',NULL),(432,'Migranal  - Dihydroergotamine mesilate',NULL),(433,'Migril  - Ergotamine tartrate',NULL),(434,'Minocin MR  - Minocycline',NULL),(435,'Mintec  - Peppermint oil',NULL),(436,'Mintezol  - Tiabendazole',NULL),(437,'Mirapexin  - Pramipexole',NULL),(438,'Mistamine  - Mizolastine',NULL),(439,'Mitoxana  - Ifosfamide',NULL),(440,'Mizollen  - Mizolastine',NULL),(441,'Mobic  - Meloxicam',NULL),(442,'Mobiflex  - Tenoxicam',NULL),(443,'Modecate  - Fluphenazine hydrochloride',NULL),(444,'Moditen  - Fluphenazine hydrochloride',NULL),(445,'Mogadon  - Nitrazepam',NULL),(446,'Molipaxin  - Trazodone hydrochloride',NULL),(447,'Monocor  - Bisoprolol',NULL),(448,'Monotrim  - Trimethoprim',NULL),(449,'Monovent  - Terbutaline sulphate',NULL),(450,'Motens  - Lacidipine',NULL),(451,'Motilium  - Domperidone',NULL),(452,'Motipress  - Nortriptyline',NULL),(453,'Motival  - Nortriptyline',NULL),(454,'Movicol  - Macrogols',NULL),(455,'Mucogel  - Aluminium hydroxide',NULL),(456,'Mycobutin  - Rifabutin',NULL),(457,'Myleran  - Busulphan',NULL),(458,'Myotonine  - Bethanechol chloride',NULL),(459,'Mysoline  - Primidone',NULL),(460,'Nalcrom  - Sodium cromoglicate',NULL),(461,'Nalorex  - Naltrexone hydrochloride',NULL),(462,'Naprosyn  - Naproxen',NULL),(463,'Naramig  - Naratriptan',NULL),(464,'Nardil  - Phenelzine',NULL),(465,'Naropin  - Ropivacaine',NULL),(466,'Narphen  - Phenazocine',NULL),(467,'Natrillix  - Indapamide',NULL),(468,'Navelbine  - Vinorelbine',NULL),(469,'Navoban  - Tropisetron',NULL),(470,'Nebcin  - Tobramycin',NULL),(471,'Nebules  - Fluticasone',NULL),(472,'propionate/Salbutamol    431',NULL),(473,'Negram  - Nalidixic acid',NULL),(474,'Neo-Mercazole  - Carbimazole',NULL),(475,'Neoral  - Ciclosporin',NULL),(476,'Netillin  - Netilmicin',NULL),(477,'Neulactil  - Pericyazine',NULL),(478,'Neurontin  - Gabapentin',NULL),(479,'Neutrexin  - Trimetrexate',NULL),(480,'NiQuitin CQ  - Nicotine',NULL),(481,'Nicorette  - Nicotine',NULL),(482,'Nicotinell  - Nicotine',NULL),(483,'Niferex  - Polysaccharide-iron complex',NULL),(484,'Nimotop  - Nimodipine',NULL),(485,'Nivaquine  - Chloroquine',NULL),(486,'Nivemycin  - Neomycin sulphate',NULL),(487,'Nizoral  - Ketoconazole',NULL),(488,'Nolvadex  - Tamoxifen',NULL),(489,'Nootropil  - Piracetam',NULL),(490,'Norgalax Micro-enema  - Docusate sodium',NULL),(491,'Normacol  - Sterculia',NULL),(492,'Norprolac  - Quinagolide',NULL),(493,'Norvir  - Ritonavir',NULL),(494,'Novantrone  - Mitoxantrone',NULL),(495,'Nozinan  - Levomepromazine/ Methotrimeprazine',NULL),(496,'Nozinan  - Methotrimeprazine/ Levomepromazine',NULL),(497,'Nuelin  - Theophylline',NULL),(498,'Nurofen  - Ibuprofen',NULL),(499,'Nutrizym  - Pancreatin',NULL),(500,'Nystan  - Nystatin',NULL),(501,'Oncovin  - Vincristine sulphate',NULL),(502,'Optimax  - Tryptophan',NULL),(503,'Optimine  - Azatadine maleate',NULL),(504,'OrLAAM  - Levacetylmethadol hydrochloride',NULL),(505,'Oralbalance  - Saliva substitute',NULL),(506,'Oraldene  - Hexetidine',NULL),(507,'Oramorph  - Morphine',NULL),(508,'Orap  - Pimozide',NULL),(509,'Orelox  - Cefpodoxime',NULL),(510,'Orgaran  - Danaparoid',NULL),(511,'Orudis  - Ketoprofen',NULL),(512,'Oxis  - Eformoterol fumarate/Formoterol fumarate',NULL),(513,'Oxivent  - Oxitropium bromide',NULL),(514,'Palfium  - Dextromoramide',NULL),(515,'Palladone  - Hydromorphone hydrochloride',NULL),(516,'Paludrine  - Proguanil hydrochloride',NULL),(517,'Paludrine/Avoclor  - Chloroquine',NULL),(518,'Panadol  - Paracetamol',NULL),(519,'Pancrease  - Pancreatin',NULL),(520,'Pancrex  - Pancreatin',NULL),(521,'Paraplatin  - Carboplatin',NULL),(522,'Pariet  - Rabeprazole sodium',NULL),(523,'Parlodel  - Bromocriptine',NULL),(524,'Parnate  - Tranylcypromine',NULL),(525,'Penbritin  - Ampicillin',NULL),(526,'Penicillin G  - Benzyl penicillin',NULL),(527,'Penicillin V  - Phenoxymethyl penicillin',NULL),(528,'Pentacarinat  - Pentamidine isethionate',NULL),(529,'Pentasa  - Mesalazine',NULL),(530,'Pentostam  - Sodium stibogluconate',NULL),(531,'Pepcid  - Famotidine',NULL),(532,'Peptac  - Alginates',NULL),(533,'Perdix  - Moexipril',NULL),(534,'Periactin  - Cyproheptadine hydrochloride',NULL),(535,'Peroxyl  - Hydrogen peroxide mouthwash',NULL),(536,'Persantin  - Dipyridamole',NULL),(537,'Pharmorubicin  - Epirubicin',NULL),(538,'Phenergan  - Promethazine hydrochloride',NULL),(539,'Phyllocontin Continus  - Aminophylline',NULL),(540,'Physeptone  - Methadone hydrochloride',NULL),(541,'Physiotens  - Moxonidine',NULL),(542,'Piportil Depot  - Pipotiazine palmitate',NULL),(543,'Piriton  - Chlorphenamine maleate / Chlorpheniramine maleate',NULL),(544,'Pitressin  - Vasopressin',NULL),(545,'Plavix  - Clopidogrel',NULL),(546,'Plendil  - Felodipine',NULL),(547,'Plesmet  - Ferrous glycine sulphate',NULL),(548,'Ponstan  - Mefenamic acid',NULL),(549,'Pork Mixtard  - Biphasic isophane insulin',NULL),(550,'Prepulsid  - Cisapride',NULL),(551,'Prescal  - Isradipine',NULL),(552,'Preservex  - Aceclofenac',NULL),(553,'Priadel  - Lithium salts',NULL),(554,'Priadel: Li-Liquid  - Lithium salts 432   ',NULL),(555,'Primacor  - Milrinone',NULL),(556,'Primalan  - Mequitazine',NULL),(557,'Primaxin  - Imipenem with cilastatin',NULL),(558,'Pripsen  - Piperazine',NULL),(559,'Pro Epanutin  - Fosphenytoin sodium',NULL),(560,'Pro-Viron  - Mesterolone',NULL),(561,'Pro-banthine  - Propantheline bromide',NULL),(562,'Prograf  - Tacrolimus',NULL),(563,'Prominal  - Methylphenobarbital',NULL),(564,'Pronestyl  - Procainamide',NULL),(565,'Propaderm  - Beclometasone dipropionate',NULL),(566,'Proscar  - Finasteride',NULL),(567,'Prothiaden  - Dosulepin hydrochloride/Dothiepin hydrochloride',NULL),(568,'Protium  - Pantoprazole',NULL),(569,'Provigil  - Modafinil',NULL),(570,'Prozac  - Fluoxetine',NULL),(571,'Pulmicort  - Budesonide',NULL),(572,'Pulmozyne  - Dornase alpha',NULL),(573,'Puri-Nethol  - Mercaptopurine',NULL),(574,'Pylorid  - Ranitidine bismuth citrate',NULL),(575,'Pyrogastrone  - Carbenoxolone sodium',NULL),(576,'Questran  - Cholestyramine',NULL),(577,'Quinalbarbitone {[Tuinal]}  -Secobarbital',NULL),(578,'Qvar  - Beclometasone dipropionate',NULL),(579,'Rapitil  - Nedocromil sodium',NULL),(580,'Raxar  - Grepafloxacin',NULL),(581,'Rebetol  - Ribavarin',NULL),(582,'Regulan  - Ispaghula husk',NULL),(583,'Relenza  - Zanamivir',NULL),(584,'Relifex  - Nabumetone',NULL),(585,'Remnos  - Nitrazepam',NULL),(586,'Requip  - Ropinirole',NULL),(587,'Respacal  - Tulobuterol hydrochloride',NULL),(588,'Respontin  - Ipratropium bromide',NULL),(589,'Restandol  - Testosterone',NULL),(590,'Retrovir  - Zidovudine',NULL),(591,'Revanil  - Lisuride maleaten',NULL),(592,'Rheumox  - Azapropazone',NULL),(593,'Ridaura  - Auranofin',NULL),(594,'Rifadin  - Rifampicin',NULL),(595,'Rifater  - Rifampicin',NULL),(596,'Rifinah 150  - Rifampicin',NULL),(597,'Rifinah 300  - Rifampicin',NULL),(598,'Rimacid  - Indomethacin',NULL),(599,'Rimactane  - Rifampicin',NULL),(600,'Rimactazid 150  - Rifampicin',NULL),(601,'Rimactazid 300  - Rifampicin',NULL),(602,'Rimapam  - Diazepam',NULL),(603,'Risperdal  - Risperidone',NULL),(604,'Ritalin  - Methylphenidate hydrochloride',NULL),(605,'Rivotril  - Clonazepam',NULL),(606,'Robicin  - Spectinomycin',NULL),(607,'Rocephin  - Ceftriaxone',NULL),(608,'Rohypnol  - Flunitrazepam',NULL),(609,'Rotacaps  - Salbutamol',NULL),(610,'Rozex  - Metronidazole',NULL),(611,'Rynacrom.  - Sodium cromoglicate',NULL),(612,'Rythmodan  - Disopyramide',NULL),(613,'Salagen  - Pilocarpine hydrochloride',NULL),(614,'Salazopyrin  - Sulfasalazine',NULL),(615,'Saliva Orthana  - Saliva substitute',NULL),(616,'Salivace  - Saliva substitute',NULL),(617,'Salivix  - Saliva substitute',NULL),(618,'Salofalk  - Mesalazine',NULL),(619,'Saluric  - Chlorothiazide',NULL),(620,'Salveze  - Saliva substitute',NULL),(621,'Sanomigran  - Pizotifen',NULL),(622,'Scandonest  - Mepivacaine',NULL),(623,'Scopoderm  - Hyoscine hydrobromide',NULL),(624,'Sectral  - Acebutolol',NULL),(625,'Securon  - Verapamil',NULL),(626,'Securopen  - Azlocillin',NULL),(627,'Selexid  - Pivmecillinam hydrochloride',NULL),(628,'Semprex  - Acrivastine',NULL),(629,'Senokot  - Senna',NULL),(630,'Septanenst  - Articaine',NULL),(631,'Septrin  - Co-trimoxazole',NULL),(632,'Serc  - Betahistine dihydrochloride',NULL),(633,'Serdolect  - Sertindole',NULL),(634,'Serenace  - Haloperidol',NULL),(635,'Seretide  - Fluticasone propionate',NULL),(636,'Serevent  - Salmeterol',NULL),(637,'Seroquel  - Quetiapine',NULL),(638,'Seroxat  - Paroxetine    433',NULL),(639,'Sinemet CR  - Co-careldopa',NULL),(640,'Sinemet plus  - Co-careldopa',NULL),(641,'Sinemet  - Co-careldopa',NULL),(642,'Sinequan  - Doxepin',NULL),(643,'Singulair  - Montelukast',NULL),(644,'Skelid  - Tiludronic acid',NULL),(645,'Slo-Phyllin  - Theophylline',NULL),(646,'Slozem  - Diltiazem',NULL),(647,'Sno Phenicol  - Chloramphenicol',NULL),(648,'Solfedipine  - Nifedipine',NULL),(649,'Solian  - Amisulpride',NULL),(650,'Solu-cortel  - Hydrocortisone',NULL),(651,'Sonata  - Zaleplon',NULL),(652,'Sotacor  - Sotalol hydrochloride',NULL),(653,'Spiroctan  - Spironolactone',NULL),(654,'Sporanox  - Itraconazole',NULL),(655,'Staril  - Fosinopril',NULL),(656,'Stelazine  - Trifluoperazine',NULL),(657,'Stemetil  - Prochlorperazine',NULL),(658,'Stesolid  - Diazepam',NULL),(659,'Stilboesterol  - Diethylstilbestrol',NULL),(660,'Stilnoct  - Zolpidem tartrate',NULL),(661,'Stromba  - Stanozolol',NULL),(662,'Stugeron  - Cinnarizine',NULL),(663,'Sudafed  - Pseudoephedrine hydrochloride',NULL),(664,'Sulparex  - Sulpiride',NULL),(665,'Sulpitil  - Sulpiride',NULL),(666,'Suprax  - Cefixime',NULL),(667,'Suprecur  - Buserelin',NULL),(668,'Surgam  - Tiaprofenic acid',NULL),(669,'Surmontil  - Trimipramine',NULL),(670,'Sustiva  - Efavirenz',NULL),(671,'Symmetrel  - Amantadine hydrochloride',NULL),(672,'Synagis  - Palivizumab',NULL),(673,'Synercid  - Quinupristin with Dalfopristin',NULL),(674,'Syscor  - Nisoldipine',NULL),(675,'Tagamet  - Cimetidine',NULL),(676,'Tambocor  - Flecainide acetate',NULL),(677,'Tanatril  - Imidapril',NULL),(678,'Targocid  - Teicoplanin',NULL),(679,'Tarivid  - Ofloxacin',NULL),(680,'Tavanic  - Levofloxacin',NULL),(681,'Tavegil  - Clemastine',NULL),(682,'Taxol  - Paclitaxel',NULL),(683,'Taxotere  - Docetaxel',NULL),(684,'Tazocin  - Piperacillin',NULL),(685,'Tegretol retard  - Carbamazepine',NULL),(686,'Tegretol  - Carbamazepine',NULL),(687,'Telfast  - Fexofenadine hydrochloride',NULL),(688,'Temgesic  - Buprenorphine',NULL),(689,'Tenorminx  - Atenolol',NULL),(690,'Tensipine  - Nifedipine',NULL),(691,'Tensium  - Diazepam',NULL),(692,'Terasyl 300  - Lymecycline',NULL),(693,'Teril CR  - Carbamazepine',NULL),(694,'Terramycin  - Oxytetracycline',NULL),(695,'Tertroxin  - Liothyronine sodium',NULL),(696,'Teveten  - Eprosartan',NULL),(697,'Theo-Dur  - Theophylline',NULL),(698,'Tilade  - Nedocromil sodium',NULL),(699,'Tildiem  - Diltiazem',NULL),(700,'Tiloryth  - Erythromycin',NULL),(701,'Timecef  - Cefodizime',NULL),(702,'Timentin  - Ticarcillin',NULL),(703,'Timonil retard.  - Carbamazepine',NULL),(704,'Tofranil  - Imipramine hydrochloride',NULL),(705,'Tolanase  - Tolazamide',NULL),(706,'Tomudex  - Raltitrexed',NULL),(707,'Topal  - Alginates',NULL),(708,'Topamax  - Topiramate',NULL),(709,'Trandate  - Labetalol',NULL),(710,'Trasicor  - Oxprenolol hydrochloride',NULL),(711,'Trileptal  - Oxcarbazepine',NULL),(712,'Triludan  - Terfenadine',NULL),(713,'Trimopan  - Trimethoprim',NULL),(714,'Triptaphen  - Amitriptyline hydrochloride',NULL),(715,'Tritace  - Ramipril',NULL),(716,'Trusopt  - Dorzolamide',NULL),(717,'Tryptizol  - Amitriptyline hydrochloride',NULL),(718,'Ubretid  - Distigmine bromide',NULL),(719,'Ucerax  - Hydroxyzine hydrochloride',NULL),(720,'Ultralanum  - Fluticasone propionate',NULL),(721,'Uniphyllin Continus  - Theophylline',NULL),(722,'Unisomnia  - Nitrazepam',NULL),(723,'Urdox  - Ursodeoxycholic acid',NULL),(724,'Uriben  - Nalidixic acid',NULL),(725,'Urispass 200  - Flavoxate hydrochloride',NULL),(726,'Ursofalk  - Ursodeoxycholic acid 434   ',NULL),(727,'Ursogal  - Ursodeoxycholic acid',NULL),(728,'Utinor  - Norfloxacin',NULL),(729,'Valclair  - Diazepam',NULL),(730,'Valium  - Diazepam',NULL),(731,'Vallergan  - Alimemazine tartrate/ Trimeprazine tartrate',NULL),(732,'Valoid  - Cyclizine',NULL),(733,'Valtrex  - Valaciclovir',NULL),(734,'Vancocin  - Vancomycin',NULL),(735,'Vascace  - Cilazapril',NULL),(736,'Velbe  - Vinblastine sulphate',NULL),(737,'Velosef  - Cefradine',NULL),(738,'Ventide  - Beclometasone dipropionate',NULL),(739,'Ventodisks  - Salbutamol',NULL),(740,'Ventolin  - Salbutamol',NULL),(741,'Vepesid  - Etoposide',NULL),(742,'Vermox  - Mebendazole',NULL),(743,'Viagra  - Sildenafil',NULL),(744,'Viazem  - Diltiazem',NULL),(745,'Vibramycin -D  - Doxycycline',NULL),(746,'Vibramycin  - Doxycycline',NULL),(747,'Videx  - Didanosine',NULL),(748,'Vioxx  - Rofecoxib',NULL),(749,'Viracept  - Nelfinavir',NULL),(750,'Viramune  - Nevirapine',NULL),(751,'Virazole  - Ribavarin',NULL),(752,'Visclair  - Mecysteine hydrochloride',NULL),(753,'Visken  - Pindolol',NULL),(754,'Vistide  - Cidofovir',NULL),(755,'Vivalan  - Viloxazine hydrochloride',NULL),(756,'Voltarol  - Diclofenac sodium',NULL),(757,'Welldorm  - Chloral hydrate',NULL),(758,'Wellvone  - Atovaquone',NULL),(759,'Xanax  - Alprazolam',NULL),(760,'Xenical  - Orlistat',NULL),(761,'Xylocaine  - Lidocaine/Lignocaine Dental preparations',NULL),(762,'Xylotox  - Lidocaine/Lignocaine Dental preparations',NULL),(763,'Yomesan  - Niclosamide',NULL),(764,'Zaditen  - Ketotifen',NULL),(765,'Zadstat  - Metronidazole',NULL),(766,'Zamadol  - Tramadol hydrochloride',NULL),(767,'Zandip  - Lercanidipine',NULL),(768,'Zantac  - Ranitidine',NULL),(769,'Zarontin  - Ethosuximide',NULL),(770,'Zavedos  - Idarubicin hydrochloride',NULL),(771,'Zelapar  - Selegeline hydrochloride',NULL),(772,'Zemtard  - Diltiazem',NULL),(773,'Zerit  - Stavudine',NULL),(774,'Zestril  - Lisinopril',NULL),(775,'Ziagen  - Abacavir',NULL),(776,'Zimovane  - Zopiclone',NULL),(777,'Zinacef  - Cefuroxime',NULL),(778,'Zinamide  - Pyrazinamide',NULL),(779,'Zinnat  - Cefuroxime',NULL),(780,'Zirtek  - Cetirizine hydrochloride',NULL),(781,'Zispin  - Mirtazapine',NULL),(782,'Zithromax  - Azithromycin',NULL),(783,'Zocor  - Simvastatin',NULL),(784,'Zofran  - Ondansetron',NULL),(785,'Zoleptil  - Zotepine',NULL),(786,'Zomig  - Zolmitriptan',NULL),(787,'Zoton  - Lansoprazole',NULL),(788,'Zovirax  - Aciclovir',NULL),(789,'Zyban  - Amfebutamone',NULL),(790,'Zydol  - Tramadol hydrochloride',NULL),(791,'Zyloric  - Allopurinol',NULL),(792,'Zyprexa  - Olanzapine',NULL);
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-23 23:40:13
