-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: project_gamesC#
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20230130194708_inicial','7.0.2');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `idCategory` int NOT NULL AUTO_INCREMENT,
  `nameCategory` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'A????o'),(2,'Aventura'),(3,'Sobreviv??ncia'),(4,'Zombie'),(5,'Terror'),(6,'Mundo Aberto'),(7,'RPG'),(8,'Luta'),(9,'Tiro'),(10,'Esporte');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification`
--

DROP TABLE IF EXISTS `classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classification` (
  `classification` varchar(2) NOT NULL,
  `imageClassification` varchar(145) NOT NULL,
  PRIMARY KEY (`classification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification`
--

LOCK TABLES `classification` WRITE;
/*!40000 ALTER TABLE `classification` DISABLE KEYS */;
INSERT INTO `classification` VALUES ('10','https://i.ibb.co/8DP9gMd/10.png'),('12','https://i.ibb.co/bgHLs3R/12.png'),('14','https://i.ibb.co/7psFy3x/14.png'),('16','https://i.ibb.co/BC3tvps/16.png'),('18','https://i.ibb.co/tbZYxL5/18.png'),('L','https://i.ibb.co/yydH0Mf/L.png');
/*!40000 ALTER TABLE `classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification_has_description`
--

DROP TABLE IF EXISTS `classification_has_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classification_has_description` (
  `classification` varchar(2) NOT NULL,
  `idDescription` int NOT NULL,
  `idGame` int NOT NULL,
  PRIMARY KEY (`classification`,`idDescription`,`idGame`),
  KEY `fk_Classificacao_has_Descricao_Descricao1_idx` (`idDescription`),
  KEY `fk_Classificacao_has_Descricao_Classificacao1_idx` (`classification`),
  KEY `fk_Classificacao_has_Descricao_Jogo1_idx` (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification_has_description`
--

LOCK TABLES `classification_has_description` WRITE;
/*!40000 ALTER TABLE `classification_has_description` DISABLE KEYS */;
INSERT INTO `classification_has_description` VALUES ('10',1,27),('12',1,25),('14',1,18),('14',1,23),('16',1,19),('16',1,20),('16',1,29),('18',1,13),('18',1,14),('18',1,21),('14',2,18),('18',2,12),('18',3,12),('18',3,22),('18',3,24),('18',3,27),('18',3,30),('12',4,25),('18',4,12),('18',4,13),('18',4,22),('18',4,26),('14',5,23),('18',5,14),('18',5,21),('18',5,24),('18',6,14),('18',7,14),('10',8,15),('L',9,16),('L',9,17),('18',10,21),('18',11,22),('18',12,24),('16',13,29),('12',14,28);
/*!40000 ALTER TABLE `classification_has_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `description`
--

DROP TABLE IF EXISTS `description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `description` (
  `idDescription` int NOT NULL AUTO_INCREMENT,
  `description` varchar(145) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`idDescription`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description`
--

LOCK TABLES `description` WRITE;
/*!40000 ALTER TABLE `description` DISABLE KEYS */;
INSERT INTO `description` VALUES (1,'Viol??ncia'),(2,'Drogas L??citas'),(3,'Viol??ncia Extrema'),(4,'Linguagem Impr??pria'),(5,'Drogas'),(6,'Compras no jogo'),(7,'Usu??rios interagem'),(8,'Viol??ncia Fantasiosa'),(9,'Livre para todas as idades'),(10,'Conte??do Sexual'),(11,'Temas Sens??veis'),(12,'Nudez'),(13,'Sexo Expl??cito'),(14,'Conte??do inapropriado para crian??as');
/*!40000 ALTER TABLE `description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `idGame` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `releaseDate` varchar(350) NOT NULL,
  `synopsis` varchar(650) NOT NULL,
  `video` varchar(145) DEFAULT NULL,
  `classification` varchar(2) NOT NULL,
  `keyWord` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGame`),
  KEY `fk_Jogo_Classificacao1_idx` (`classification`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'The Last Of Us','14 de Junho de 2013','The Last of Us ?? um jogo eletr??nico p??s-apocal??ptico de a????o-aventura e sobreviv??ncia apresentado a partir de uma perspectiva em terceira pessoa.??O jogador atravessa uma s??rie de ambientes arruinados, passando por locais variados como cidades, florestas, edif??cios e esgotos a fim de avan??ar pela hist??ria','https://www.youtube.com/embed/5F9h4NVVDo4','16','destaque'),(2,'Life is Strange Remastered Collection','1 de Fevereiro de 2022','Jogue como Max Caulfield, estudante de fotografia que, ao salvar sua melhor amiga Chloe Price de uma briga violenta, descobre que pode voltar no tempo','https://www.youtube.com/embed/o69FMYlJ_48','16','destaque'),(3,'Red Dead Redemption 2','26 de Outubro de 2018','Estados Unidos, 1899. Arthur Morgan e a gangue Van der Linde s??o for??ados a fugir. Com agentes federais e os melhores ca??adores de recompensas no seu encal??o, a gangue precisa roubar, assaltar e lutar para sobreviver no impiedoso cora????o dos Estados Unidos. Conforme divis??es internas profundas amea??am despeda??ar a gangue, Arthur deve fazer uma escolha entre os seus pr??prios ideais e a lealdade ?? gangue que o criou.','https://www.youtube.com/embed/gmA6MrX81z4','18','destaque, gameoftheyear'),(4,'The Forest','30 de Maio de 2014','Em The Forest,??o jogador deve sobreviver ao ambiente e n??o ser morto por canibais de uma ilha florestal ap??s sobreviver a um desastre de avi??o','https://www.youtube.com/embed/7mwn5U2PNvk','18','favorito'),(5,'Days Gone','26 de Abril de 2019','Days Gone ?? um jogo de mundo aberto com zumbis em um cen??rio p??s-apocal??ptico jogado em uma perspectiva de terceira-pessoa.??Os jogadores controlam Deacon St.','https://www.youtube.com/embed/FKtaOY9lMvM','16','favorito'),(6,'The Witcher 3: Wild Hunt','18 de Maio de 2015','Lan??ado em 2015, The Witcher 3: Wild Hunt marcou ??poca como um dos jogos mais aclamados da gera????o.??Ele conta a aventura do bruxo Geralt de R??via em busca da sua filha, Ciri, enquanto enfrenta inimigos mortais e explora um mundo cheio de possibilidades, desafios e aventuras','https://www.youtube.com/embed/vuOPN4MpLaM','16','gameoftheyear'),(7,'Dying Light 2 Stay Human','4 de Fevereiro','Dying Light 2 acontece 36 anos ap??s a queda da humanidade, onde grande parte da popula????o mundial foi extinta e os sobreviventes passaram a viver em assentamentos espalhados pelo mundo. A cidade europeia de Villedor ?? considerada uma das maiores do planeta e resistiu bem aos eventos por ser fortificada, impedindo que a horda zumbi a invadisse.','https://www.youtube.com/embed/UwJAAy7tPhE','16','favorito'),(8,'Hogwarts Legacy','10 de Fevereiro de 2023','Hogwarts Legacy ?? um RPG de a????o de mundo aberto ambientado no mundo introduzido pela primeira vez nos livros do Harry Potter. Embarque em uma jornada por locais novos e familiares enquanto explora e descubra animais fant??sticos, personalize seu personagem e crie po????es, domine o lan??amento de feiti??os, aprimore talentos e torne-se o bruxo que deseja ser.','https://www.youtube.com/embed/yF29baX-IsA','12','lan??amento'),(9,'Stray','19 de Julho de 2022','O que ?? Stray? Perdido, sozinho e ferido, um gato precisa solucionar um mist??rio ancestral para escapar de uma cidade esquecida.??','https://www.youtube.com/embed/Rda52S3Jah8','10','favorito, destaque'),(10,'Elden Ring','25 de Fevereiro de 2022','O QUE ?? ELDEN RING?Use o poder do Elden Ring e torne-se um Elden Lord nas Lands Between.','https://www.youtube.com/embed/E3Huy2cdih0','16','gameoftheyear, mais vendido'),(11,'Tekken 7','18 de Fevereiro de 2015',' O cl??ssico lutador retorna mais uma vez, para tomar seu lugar e lidar com oponentes de longa data ??? a come??ar por Nina. Ao lado dele, outros personagens v??o surgir, com interesses pr??prios, enquanto figuras in??ditas tamb??m emergem, para trazer algo realmente novo ?? j?? complicada hist??ria da s??rie.','\"https://www.youtube.com/embed/1V-_q3SKh5w','12','favorito'),(12,'God of War Ragnar??k','9 de Novembro de 2022','Dentro de um gruta, Kratos e Atreus se refugiam do Fimbulwinter. O inverno que antecede o Ragnar??k os cerca de inimigos que est??o cada vez mais pr??ximos. Para sobreviver a essa grande guerra, pai e filho precisam se decidir: Devem se esconder, mudando de esconderijo em esconderijo? Ou buscar aliados para enfrentar aqueles que os perseguem?','https://www.youtube.com/embed/Wc8Z-F2OcxE','18','favorito, mais vendido'),(13,'Resident Evil 4 Remake','24 de Mar??o de 2023','Em um mundo dominado por mortos-vivos, Alice continua sua batalha para salvar sobreviventes. Sua batalha se intensifica e ela recebe a ajuda de um velho amigo. Em Los Angeles, pode existir um lugar para salvar-se, mas a cidade foi invadida por mortos-vivos.','https://www.youtube.com/embed/pQsyi4j1RqM','18','lan??amento'),(14,'Call of Duty: Modern Warfare II','27 de Outubro de 2022','Call of Duty: Modern Warfare II coloca os jogadores dentro de um conflito global sem precedentes que conta com o retorno dos Operadores ic??nicos da For??a-Tarefa 141. Desde opera????es t??ticas para infiltra????o de alto risco em pequena escala at?? miss??es altamente confidenciais, jogadores v??o se mobilizar junto de amigos em uma verdadeira experi??ncia imersiva.','https://www.youtube.com/embed/gOEWZ6iofzQ','18','mais vendido'),(15,'Lego Star Wars: The Skywalker Saga','5 de Abril de 2022','Vivencie os nove filmes da saga Star Wars em um novo jogo LEGO diferente de tudo o que voc?? j?? viu! Divirta-se em aventuras ??picas com humor fant??stico e a liberdade de mergulhar totalmente na gal??xia de LEGO Star Wars. Quer jogar como um Jedi?','https://www.youtube.com/embed/AzjUuIMs5N0','10','mais vendido'),(16,'Pok??mon Scarlet e Violet','18 de Novembro de 2022','Em Pok??mon Scarlet e Violet, somos apresentados ?? regi??o de Paldea, que busca inspira????o na nossa Espanha do mundo real. Pela primeira vez em um jogo da franquia, temos um mundo completamente aberto, em que todas as cidades s??o interligadas e podem ser exploradas livremente.','https://www.youtube.com/embed/-yw6nMgk3cg','L','mais vendido'),(17,'FIFA 23','26 de Setembro de 2022','Jogue com clubes femininos pela primeira vez na hist??ria do EA SPORTS FIFA nas ligas Barclays Women???s Super League e Division 1 Arkema, com captura dedicada da HyperMotion2, respons??vel pelo jogo feminino no FIFA 23. Jogue a fase eliminat??ria da UWCL no FIFA 23 logo no in??cio de 2023 com clubes como Juventus Women, Real Madrid Femenino, Chelsea Women, Manchester City Women, Olympique Lyonnais F??minin, Paris Saint-Germain F??minine e mais.','https://www.youtube.com/embed/GvXbIAuIEq0','L','mais vendido'),(18,'Horizon Forbidden West','18 de Fevereiro de 2022','Horizon Forbidden West ?? um jogo eletr??nico de RPG de a????o com uma perspectiva em terceira pessoa. Os jogadores controlam Aloy, uma ca??adora em um mundo governado por m??quinas. O jogo apresenta um mundo aberto ambientado numa Calif??rnia p??s-apocal??ptica.','\"https://www.youtube.com/embed/ztwwQByMmmE','14','mais vendido'),(19,'Counter-Strike: Global Offensive','21 de Agosto de 2012','CS:GO ?? um FPS da Valve disputado entre duas equipes. Elas se revezam entre terroristas e contra terroristas, os terroristas armam a bomba enquanto o outro time protege os sites, locais onde os explosivos devem ser plantados. Alguns mapas funcionam com ref??ns, que por sua vez devem ser salvos pelos contra terroristas.','https://www.youtube.com/embed/edYCtaNueQY','16','mais vendido'),(20,'Playerunknown\'s Battlegrounds','30 de Julho de 2016','O jogo consiste de at?? cem jogadores que caem de paraquedas em uma ilha em busca de armas e equipamento a fim de matar os outros jogadores, enquanto tentam sobreviver ao mesmo tempo.','https://www.youtube.com/embed/8z35rlAslsE','16','mais vendido'),(21,'GTA V','17 de Setembro de 2013','Grand Theft Auto V ?? um jogo eletr??nico de a????o-aventura desenvolvido pela Rockstar North e publicado pela Rockstar Games. ?? o s??timo t??tulo principal da s??rie Grand Theft Auto. O jogo se passa no estado ficcional de San Andreas, com a hist??ria da campanha um jogador seguindo tr??s criminosos e seus esfor??os para realizarem assaltos sob a press??o de uma ag??ncia governamental. O mundo aberto permite que os jogadores naveguem livremente pelas ??reas rurais e urbanas de San Andreas.','https://www.youtube.com/embed/QkkoHAzjnUs','18','favorito'),(22,'Assassin???s Creed Mirage','2023','Assassin\'s Creed Mirage ?? um pr??ximo jogo de a????o e aventura desenvolvido pela Ubisoft Bordeaux e publicado pela Ubisoft. Ser?? a d??cima terceira parcela principal da s??rie Assassin\'s Creed e a sucessora de Assassin\'s Creed Valhalla de 2020.','https://www.youtube.com/embed/ItxcFUN6FiU','18','lan??amento'),(23,'Valorant','2 de Junho de 2020','Duas equipes de cinco jogam uma contra a outra, e os jogadores assumem o papel de \"agentes\" com habilidades ??nicas. No modo de jogo principal, a equipe atacante tem uma bomba, chamada Spike, que eles precisam plantar em um local. Se a equipe atacante proteger com sucesso a bomba e ela detonar, eles ganhar??o um ponto. Se a equipe defensora desarmar com sucesso a bomba ou o cron??metro de 100 segundos da rodada expirar, a equipe defensora receber?? um ponto. Eliminar todos os membros da equipe advers??ria tamb??m ganha uma rodada. A primeira equipe a vencer o melhor de 24 rodadas vence a partida.','https://www.youtube.com/embed/e_E9W2vsRbQ','14','favorito'),(24,'The Last of Us Part II','19 de Junho de 2020','Ambientado cinco anos ap??s os eventos de The Last of Us (2013), o jogador assume o papel de duas protagonistas em um Estados Unidos p??s-apocal??ptico: Ellie, que busca por vingan??a ap??s um evento traum??tico, e Abby, uma soldada que se envolve em um conflito entre uma mil??cia e um culto. O jogo cont??m elementos de survival horror e ?? jogado numa perspectiva de terceira pessoa. Os jogadores podem usar armas de fogo, arcos, armas improvisadas, esquiva e furtividade para se defenderem de seres humanos hostis e criaturas infectadas por uma muta????o do fungo Cordyceps.','https://www.youtube.com/embed/qPNiIeKMHyg','18','gameoftheyear, favorito'),(25,'It Takes Two','25 de Mar??o de 2021','Cody e May s??o casados, mas est??o considerando o div??rcio depois de uma discuss??o em que o Cody cobra sua esposa sobre ela trabalhar o tempo todo, e ela ter argumentado que seu marido nunca mostra apre??o pelo seu trabalho. Depois de contar para a sua filha Rose que eles est??o se separando, a menina pega suas bonecas feitas ?? m??o, que se parecem com seus pais, leva-as para o galp??o da fam??lia e tenta consertar seu relacionamento com uma encena????o. Quando uma l??grima de Rose cai sobre as bonecas, os pais se encontram presos dentro do corpo delas.','https://www.youtube.com/embed/ohClxMmNLQQ','12','gameoftheyear'),(26,'Sekiro: Shadows Die Twice','22 de Mar??o de 2019','Em Sekiro???: Shadows Die Twice, voc?? ?? o \'lobo de um bra??o s??\', um guerreiro desfigurado e desgra??ado, resgatado da beira da morte. Jurado para proteger um jovem lorde descendente de uma antiga linhagem de sangue, voc?? vira alvo de muitos inimigos perigosos, incluindo o temido cl?? Ashina. Quando o jovem lorde ?? capturado, voc?? parte em uma jornada de reden????o onde nada impedir?? voc??, nem mesmo a pr??pria morte.','https://www.youtube.com/embed/rXMX4YJ7Lks','18','gameoftheyear'),(27,'The Legend of Zelda: Breath of the Wild','3 de Mar??o de 2017','Esque??a tudo que voc?? sabe sobre os jogos da s??rie The Legend of Zelda. Entre em um mundo de descobertas, explora????o e aventura em The Legend of Zelda: Breath of the Wild, o novo jogo da famosa s??rie que veio para romper barreiras. Viaje pelos vastos campos, florestas e montanhas enquanto descobre o que aconteceu com o reino de Hyrule nesta deslumbrante aventura a c??u aberto. E agora no Nintendo Switch, a sua jornada tem mais liberdade do que nunca. Leve o seu console para qualquer lugar e viva aventuras na pele de Link da maneira que quiser.','\"https://www.youtube.com/embed/zw47_q9wbBE','10','gameoftheyear'),(28,'Overwatch ','3 de Maio de 2016','Overwatch 2 ?? um jogo de a????o em equipe gr??tis para jogar que se passa em um futuro otimista, no qual cada partida ?? um campo de batalha 5v5 definitivo. Jogue como uma lutadora da liberdade viajante do tempo, um DJ do campo batalha ou outro dos mais de 30 her??is ??nicos em suas lutas ao redor do mundo.','https://www.youtube.com/embed/1tnYpkt5G2g','12','gameoftheyear'),(29,'Dragon Age: Inquisition','18 de Novembro de 2014','Um cataclisma lan??a a terra de Thedas num turbilh??o. Drag??es escurecem o c??u lan??ando sombras sobre as terras ?? beira do caos. Magos abrem guerra total contra os templ??rios opressores. Na????es se erguem umas contra as outras. ?? incumb??ncia sua e de seus aliados restaurar a ordem liderando a Inquisi????o e perseguindo os agentes do caos. Explore, lidere e batalhe: escolhas dif??ceis definem sua experi??ncia e at?? mesmo uma ??nica decis??o pode alterar o rumo dos acontecimentos.','https://www.youtube.com/embed/jJqxfkgSUog','16','gameoftheyear'),(30,'A Plague Tale: Requiem','17 de Outubro de 2022','Embarque em uma comovente jornada por um cativante mundo brutal e descubra o pre??o pago para salvar aqueles que voc?? ama nesta desesperada luta pela sobreviv??ncia. Ataque nas sombras ou use uma variedade de armas, ferramentas e poderes m??sticos.','https://www.youtube.com/embed/qIbzwb8vzNI','18','favorito');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_has_category`
--

DROP TABLE IF EXISTS `game_has_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_has_category` (
  `idGame` int NOT NULL,
  `idCategory` int NOT NULL,
  PRIMARY KEY (`idGame`,`idCategory`),
  KEY `fk_Categoria_has_Jogo_Jogo1_idx` (`idGame`),
  KEY `fk_Categoria_has_Jogo_Categoria1_idx` (`idCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_has_category`
--

LOCK TABLES `game_has_category` WRITE;
/*!40000 ALTER TABLE `game_has_category` DISABLE KEYS */;
INSERT INTO `game_has_category` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,2),(3,1),(3,2),(3,3),(3,6),(4,1),(4,2),(4,3),(4,6),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(6,1),(6,2),(6,6),(6,7),(7,1),(7,2),(7,3),(7,4),(7,5),(8,1),(8,2),(8,6),(8,7),(9,2),(10,1),(10,2),(10,3),(10,6),(10,7),(10,8),(11,8),(12,1),(12,2),(12,8),(13,1),(13,2),(13,5),(14,1),(14,2),(14,9),(15,1),(15,2),(16,2),(16,7),(17,10),(18,1),(18,2),(18,7),(18,8),(19,1),(19,9),(20,3),(20,9),(22,1),(22,2),(23,1),(23,9),(24,1),(24,2),(24,4),(24,5),(24,9),(25,1),(25,2),(26,1),(26,2),(26,8),(27,1),(27,2),(27,7),(28,1),(28,9),(29,1),(29,7),(30,2);
/*!40000 ALTER TABLE `game_has_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_has_platform`
--

DROP TABLE IF EXISTS `game_has_platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_has_platform` (
  `idGame` int NOT NULL,
  `idPlatform` int NOT NULL,
  `urlGame` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`idGame`,`idPlatform`),
  KEY `fk_Jogo_has_Plataforma_Plataforma1_idx` (`idPlatform`),
  KEY `fk_Jogo_has_Plataforma_Jogo_idx` (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_has_platform`
--

LOCK TABLES `game_has_platform` WRITE;
/*!40000 ALTER TABLE `game_has_platform` DISABLE KEYS */;
INSERT INTO `game_has_platform` VALUES (1,3,NULL),(1,4,'https://store.playstation.com/pt-br/product/UP9000-CUSA00552_00-THELASTOFUS00000'),(1,5,'https://store.playstation.com/pt-br/product/UP9000-PPSA03396_00-THELASTOFUSPART1'),(2,1,'https://store.steampowered.com/app/1265920/Life_is_Strange_Remastered/'),(2,2,NULL),(2,3,NULL),(2,4,'https://store.playstation.com/pt-br/product/UP0082-CUSA23980_00-1951785847228082'),(2,5,NULL),(2,6,NULL),(2,7,NULL),(2,9,NULL),(3,1,NULL),(3,4,NULL),(3,6,NULL),(3,9,NULL),(4,1,NULL),(4,4,NULL),(5,1,NULL),(5,4,NULL),(6,2,NULL),(6,4,NULL),(6,5,NULL),(6,6,NULL),(6,7,NULL),(7,1,NULL),(7,2,NULL),(7,4,NULL),(7,5,NULL),(7,6,NULL),(7,7,NULL),(8,1,NULL),(8,2,NULL),(8,4,NULL),(8,5,NULL),(8,6,NULL),(8,7,NULL),(11,1,'https://store.steampowered.com/app/389730/TEKKEN_7/'),(11,4,'https://store.playstation.com/pt-br/product/UP0700-CUSA05972_00-000000000TEKKEN7'),(11,6,'https://www.xbox.com/pt-BR/games/store/tekken-7/BRJGPRMBV1NT'),(11,7,'https://www.xbox.com/pt-BR/games/store/tekken-7/BRJGPRMBV1NT'),(12,4,'https://store.playstation.com/pt-br/concept/10001850'),(12,5,'https://store.playstation.com/pt-br/concept/10001850'),(13,1,'https://store.steampowered.com/app/2050650/Resident_Evil_4/'),(13,4,'https://store.playstation.com/pt-br/concept/10004473'),(13,5,'https://store.playstation.com/pt-br/concept/10004473'),(13,7,'https://www.xbox.com/pt-BR/games/store/resident-evil-4/9NNMTSTGMKFZ'),(14,1,'https://store.steampowered.com/app/1938090/Call_of_Duty_Modern_Warfare_II/'),(14,4,'https://www.playstation.com/pt-br/games/call-of-duty-modern-warfare-ii/'),(14,5,'https://www.playstation.com/pt-br/games/call-of-duty-modern-warfare-ii/'),(14,6,'https://www.xbox.com/pt-BR/games/store/call-of-duty-modern-warfare-ii/9N201KQXS5BM'),(14,7,'https://www.xbox.com/pt-BR/games/store/call-of-duty-modern-warfare-ii/9N201KQXS5BM'),(15,1,'https://store.steampowered.com/app/920210/LEGO_Star_Wars_A_Saga_Skywalker/'),(15,4,'https://store.playstation.com/pt-br/concept/232847'),(15,5,'https://store.playstation.com/pt-br/concept/232847'),(15,10,'https://store.epicgames.com/pt-BR/p/lego-star-wars-the-skywalker-saga'),(16,2,'https://www.nintendo.com/pt-br/store/products/pokemon-scarlet-switch/'),(17,1,'https://store.steampowered.com/app/1811260/EA_SPORTS_FIFA_23/'),(17,2,'https://www.nintendo.com/pt-br/store/products/ea-sports-fifa-23-nintendo-switch-legacy-edition-switch/'),(17,4,'https://store.playstation.com/pt-br/product/UP0006-CUSA31878_00-FIFAFOOTBALL2023'),(17,5,'https://store.playstation.com/pt-br/concept/10004336'),(17,6,'https://www.xbox.com/pt-BR/games/fifa-23'),(17,7,'https://www.xbox.com/pt-BR/games/fifa-23'),(17,9,'https://stadia.google.com/game/fifa-23-standard-edition-preorder-product'),(17,10,'https://store.epicgames.com/pt-BR/p/fifa-23'),(18,4,'https://store.playstation.com/pt-br/product/UP9000-CUSA28561_00-FORBIDDENWESTPS4'),(18,5,'https://www.playstation.com/pt-br/games/horizon-forbidden-west/'),(19,1,'https://store.steampowered.com/app/730/CounterStrike_Global_Offensive/?l=portuguese'),(19,3,NULL),(19,6,'https://www.xbox.com/pt-BR/games/store/counter-strike-go/c4q8mjnv4564'),(19,11,'https://www.xbox.com/pt-BR/games/store/counter-strike-go/c4q8mjnv4564'),(20,4,'https://store.playstation.com/pt-br/product/UP5082-CUSA14081_00-PTSBUN0000000000'),(20,6,'https://www.xbox.com/pt-BR/games/store/pubg-battlegrounds/C0MN5DN8KR3F'),(20,7,'https://www.xbox.com/pt-BR/games/store/pubg-battlegrounds/C0MN5DN8KR3F'),(20,9,'https://stadia.google.com/game/pubg'),(21,1,'https://store.steampowered.com/app/271590/Grand_Theft_Auto_V/?l=portuguese'),(21,3,NULL),(21,4,'https://store.playstation.com/pt-br/product/UP1004-PPSA03420_00-GTAVCROSSGENBUND/?gclid=Cj0KCQiAq5meBhCyARIsAJrtdr4-wdnwpDucgcBN55G2Bu-je2ytOuEASm9Qe9QoxSOvoAbTKJKq2KoaAgc7EALw_wcB, '),(21,5,'https://store.playstation.com/pt-br/product/UP1004-PPSA03420_00-GTAVCROSSGENBUND/?gclid=Cj0KCQiAq5meBhCyARIsAJrtdr4-wdnwpDucgcBN55G2Bu-je2ytOuEASm9Qe9QoxSOvoAbTKJKq2KoaAgc7EALw_wcB, '),(21,6,'https://www.xbox.com/pt-BR/games/store/grand-theft-auto-v-xbox-one-e-xbox-series-xs/9p8rqh67ttt1'),(21,7,'https://www.xbox.com/pt-BR/games/gta-v#purchaseoptions'),(21,10,'https://store.epicgames.com/pt-BR/p/grand-theft-auto-v'),(21,11,'https://marketplace.xbox.com/pt-br/Product/GTA-V/66acd000-77fe-1000-9115-d802545408a7'),(22,4,'https://store.playstation.com/pt-br/concept/10004865'),(22,5,'https://store.playstation.com/pt-br/concept/10004865'),(22,6,'https://www.xbox.com/pt-BR/games/store/assassins-creed-mirage/9n4096hx1wwq'),(22,7,'https://www.xbox.com/pt-BR/games/store/assassins-creed-mirage/9n4096hx1wwq'),(22,12,'https://www.ubisoft.com/pt-br/game/assassins-creed/mirage/buy'),(23,10,'https://store.epicgames.com/pt-BR/p/valorant'),(23,13,'https://playvalorant.com/pt-br/?gclid=Cj0KCQiAq5meBhCyARIsAJrtdr4qVS980vpjlrEMxdlu-osuiLhnhoQZcB2kTx4enHZjkWBSrF9-apkaAofZEALw_wcB&gclsrc=aw.ds'),(24,4,'https://www.playstation.com/pt-br/games/the-last-of-us-part-ii/'),(25,1,'https://store.steampowered.com/app/1426210/It_Takes_Two/'),(25,2,'https://www.nintendo.com/pt-br/store/products/it-takes-two-switch/'),(25,4,'https://store.playstation.com/pt-br/product/UP0006-PPSA02342_00-ITTAKESTWORETAIL'),(25,5,'https://store.playstation.com/pt-br/product/UP0006-PPSA02342_00-ITTAKESTWORETAIL'),(25,6,'https://www.xbox.com/pt-BR/games/store/it-takes-two-versao-digital/9nxvc0482qs5'),(25,7,'https://www.xbox.com/pt-BR/games/store/it-takes-two-versao-digital/9nxvc0482qs5'),(25,10,'https://store.epicgames.com/pt-BR/p/it-takes-two'),(26,1,'https://store.steampowered.com/app/814380/Sekiro_Shadows_Die_Twice__GOTY_Edition/'),(26,4,'https://store.playstation.com/pt-br/product/UP0002-CUSA12047_00-SEKIROGAME000001'),(26,6,'https://www.xbox.com/pt-BR/games/store/sekiro-shadows-die-twice-edicao-jogo-do-ano/bqd5wrrp2d6q'),(26,7,'https://www.xbox.com/pt-BR/games/store/sekiro-shadows-die-twice-edicao-jogo-do-ano/bqd5wrrp2d6q'),(26,9,'https://stadia.google.com/game/sekiro-shadows-die-twice'),(27,2,'https://www.nintendo.com/pt-br/store/products/the-legend-of-zelda-breath-of-the-wild-switch/'),(27,16,'https://www.nintendo.pt/Jogos/Jogos-para-a-Wii-U/The-Legend-of-Zelda-Breath-of-the-Wild-893260.html'),(28,2,'https://www.nintendo.com/pt-br/store/products/overwatch-2-switch/'),(28,4,'https://www.playstation.com/pt-br/games/overwatch/'),(28,5,'https://www.playstation.com/pt-br/games/overwatch/'),(28,6,'https://www.xbox.com/pt-BR/games/overwatch-2'),(28,7,'https://www.xbox.com/pt-BR/games/overwatch-2'),(28,15,'https://us.shop.battle.net/pt-br/product/overwatch?blzcmp=ow_gamesite'),(29,1,'https://store.steampowered.com/app/1222690/Dragon_Age_Inquisition/'),(29,3,NULL),(29,4,'https://store.playstation.com/pt-br/product/UP0006-CUSA00220_00-DA3GAMEOFTHEYEAR'),(29,6,'https://www.xbox.com/pt-BR/games/store/dragon-age-inquisition/c47gzzbmr5wg'),(29,7,'https://www.xbox.com/pt-BR/games/store/dragon-age-inquisition/c47gzzbmr5wg'),(29,11,NULL),(29,14,'https://www.ea.com/pt-br/games/dragon-age/dragon-age-inquisition'),(30,1,'https://store.steampowered.com/app/1182900/A_Plague_Tale_Requiem/'),(30,2,'https://www.nintendo.pt/Jogos/Aplicacoes-de-download-da-Nintendo-Switch/A-Plague-Tale-Requiem-Cloud-Version-2232537.html'),(30,5,'https://store.playstation.com/pt-br/product/UP4133-PPSA05366_00-APLAGUEOUTBURST0'),(30,7,'https://www.xbox.com/pt-BR/games/a-plague-tale-requiem');
/*!40000 ALTER TABLE `game_has_platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `idGame` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `releaseDate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `synopsis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `video` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `keyWord` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `classification` int DEFAULT NULL,
  PRIMARY KEY (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `idImage` int NOT NULL AUTO_INCREMENT,
  `imageBg` varchar(145) NOT NULL,
  `imageCard` varchar(145) DEFAULT NULL,
  `GameId` int NOT NULL,
  PRIMARY KEY (`idImage`),
  KEY `fk_Imagem_Jogo1_idx` (`GameId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://i.ibb.co/hMnm7rc/thelastofus2.jpg','https://i.ibb.co/SN4c85j/thelastofus-card.png',1),(2,'https://i.ibb.co/wY0mFFY/lis.png','https://i.ibb.co/Zh9LvHQ/lis-card.jpg',2),(3,'https://i.ibb.co/mCPQddg/reddead2.jpg','https://i.ibb.co/YdtkdS9/reddead2.jpg',3),(4,'https://i.ibb.co/TKHy4TY/theforest-bg.jpg','https://i.ibb.co/SryBxrx/theforest-card.png',4),(5,'https://i.ibb.co/QY6XhCJ/daysgone-bg.jpg','https://i.ibb.co/n1zzrbg/daysgone-card.png',5),(6,'https://i.ibb.co/mDJnkhp/thewitcher3-bg.png','https://i.ibb.co/5Y6t21p/thewicher3-card.png',6),(7,'https://i.ibb.co/44JfQ9y/dyinglight-bg.jpg','https://i.ibb.co/XsTVmDZ/dyinglight2-card.jpg',7),(8,'https://i.ibb.co/17NHx0n/hogwarts-bg.jpg','https://i.ibb.co/TkJHLx8/hogwarts-card2.jpg',8),(9,'https://i.ibb.co/Btk5X3X/stray-bg.jpg','https://i.ibb.co/nbr08PP/stray-card.png',9),(10,'https://i.ibb.co/KjQG5fF/eldenring-bg.png','https://i.ibb.co/XYvwwHx/eldenringcard.jpg',10),(11,'https://i.ibb.co/PY95Hy9/tekken7-bg.jpg','https://i.ibb.co/g4tzwjp/tekken7-card.png',11),(12,'https://i.ibb.co/HXsCNF0/godfowar-bg.jpg','https://i.ibb.co/xJQKQ7z/godofwar-card.jpg',12),(13,'https://i.ibb.co/t4STpyz/re4-bg.jpg','https://i.ibb.co/GxCcFzr/re4-card.png',13),(14,'https://i.ibb.co/qxzT3Nm/cod-bg.jpg','https://i.ibb.co/ctVzJGs/cod-card.png',14),(15,'https://i.ibb.co/wLyGZYr/starwars-bg.png','https://i.ibb.co/0JHZz8K/starwars-card.png',15),(16,'https://i.ibb.co/cYvJg8Y/pkmn-violet-scarlet-bg.jpg','https://bdjogos.com.br/capas/16903-pokemon-violet-nintendo-switch-capa-1.jpg',16),(17,'https://i.ibb.co/2PK9qmR/fifa23-bg.png','https://i.ibb.co/D45FDsS/fifa23-card.jpg',17),(18,'https://i.ibb.co/7RJV6rz/horizon-bg.jpg','https://i.ibb.co/z5tVMsZ/horizon-card.jpg',18),(19,'https://i.ibb.co/HrYR0gG/cs-bg.png','https://i.ibb.co/5BBStBn/cs-card.png',19),(20,'https://i.ibb.co/VQQLg5D/pugb-bg.jpg','https://i.ibb.co/8K6WByn/pugb-card.jpg',20),(21,'https://i.ibb.co/KyrvLNF/gta-v-bg.jpg','https://i.ibb.co/dgV1Bj9/gta-v-card.png',21),(22,'https://i.ibb.co/HVb9YX9/assassins-creed-mirage-bg.jpg','https://i.ibb.co/M1FywxN/assassins-creed-mirage-card.png',22),(23,'https://i.ibb.co/P9fcvN7/valorant-bg.png','https://dfg.ai/itemimages/914261074-gift-card-valorant-r-50-00-9QTW.webp',23),(24,'https://i.ibb.co/qYjZSb7/tlou2-bg.png','https://i.ibb.co/5jPQrjP/tlou2-card.png',24),(25,'https://i.ibb.co/BLmxM3f/it-takes-two-bg.jpg','https://i.ibb.co/GsnSdJV/it-takes-two-card.png',25),(26,'https://i.ibb.co/f4YB79K/sekiro-bg.jpg','https://i.ibb.co/CV5FpCn/sekiro-card.png',26),(27,'https://i.ibb.co/HzVBV5Z/zelda-bg.png','https://i.ibb.co/RyLw3wh/zelda-card.png',27),(28,'https://wallpapercave.com/wp/wp5843708.jpg','https://psverso.com.br/wp-content/uploads/2021/09/overwatch-2-estagio-final.jpg',28),(29,'https://i.ibb.co/TqnXFkJ/da-inq-bg.png','https://i.ibb.co/9WDCz3R/da-inq-card.png',29),(30,'https://i.ibb.co/n7T10Kr/pt-requiem-bg.png','https://sm.ign.com/ign_br/cover/a/a-plague-t/a-plague-tale-requiem_x3t3.jpg',30);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform` (
  `idPlatform` int NOT NULL AUTO_INCREMENT,
  `namePlatform` varchar(150) NOT NULL,
  PRIMARY KEY (`idPlatform`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform`
--

LOCK TABLES `platform` WRITE;
/*!40000 ALTER TABLE `platform` DISABLE KEYS */;
INSERT INTO `platform` VALUES (1,'Steam'),(2,'Nintendo Switch'),(3,'PlayStation 3'),(4,'PlayStation 4'),(5,'PlayStation 5'),(6,'Xbox One'),(7,'Xbox Series X/S'),(9,'Google Stadia'),(10,'Epic Games'),(11,'Xbox 360'),(12,'Ubisoft'),(13,'Riot Games'),(14,'Eletronic Arts'),(15,'BattleNet'),(16,'WiiU');
/*!40000 ALTER TABLE `platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(145) NOT NULL,
  `password` varchar(65) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (59,'tata05','tata05@hotmail.com','$2b$08$f7whqfB9bbIbWtLy/bVv/OlmXOW6PbGbfVWrNksuwQgZb38rGiImm'),(60,'tata01','tata01@hotmail.com','$2b$08$0cs57720MMFUB1TsBVJ/bOSCGEC5IrzDbaHRycan8R2Lh.q.o2Dui');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_game`
--

DROP TABLE IF EXISTS `user_has_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_game` (
  `idGame` int NOT NULL,
  `idUser` int NOT NULL,
  `listingCode` int DEFAULT NULL,
  PRIMARY KEY (`idGame`,`idUser`),
  KEY `fk_Jogo_has_Usuario_Usuario1_idx` (`idUser`),
  KEY `fk_Jogo_has_Usuario_Jogo1_idx` (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_game`
--

LOCK TABLES `user_has_game` WRITE;
/*!40000 ALTER TABLE `user_has_game` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-31  1:48:00
