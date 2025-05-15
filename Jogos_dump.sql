-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: jogoss
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Dumping data for table `dados_jogo`
--

LOCK TABLES `dados_jogo` WRITE;
/*!40000 ALTER TABLE `dados_jogo` DISABLE KEYS */;
INSERT INTO `dados_jogo` VALUES (1,'Eternal Realms','RPG','2022-11-15','MythicForge Studios','Arcadia Games',1,'sim'),(2,'Cyber Drift','Corrida','2023-06-22','NeonTurbo Devs','Velocity Interactive',4,'não'),(3,'Shadow Protocol','Ação','2021-09-10','BlackPoint','IronWolf Studios',1,'não'),(4,'Skybound Legends','Aventura','2020-03-05','BlueSkyWorks','NovaPlay',1,'não'),(5,'Starborn Tactics','Estratégia','2024-02-28','Orion Circle','Nebula Entertainment',2,'sim'),(6,'Mystic Puzzle','Puzzle','2019-12-12','PuzzleForge','Brainwave Games',1,'não'),(7,'Galactic Arena','FPS','2023-10-01','ZeroPoint Studios','HyperNova',12,'não'),(8,'Forest Whispers','Terror','2022-08-19','Silent Path','DarkMoon Publishing',1,'sim');
/*!40000 ALTER TABLE `dados_jogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` VALUES (1,'Lucas Souza',25,'Masculino','lucas.souza@email.com','Brasil','PC','Cyber Drift'),(2,'Ana Clara',30,'Feminino','ana.clara@email.com','Portugal','PlayStation','Shadow Protocol'),(3,'Carlos Silva',22,'Masculino','carlos.silva@email.com','Brasil','Xbox','Starborn Tactics'),(4,'Maria Oliveira',27,'Feminino','maria.oliveira@email.com','Brasil','Nintendo Switch','Skybound Legends'),(5,'Felipe Martins',24,'Masculino','felipe.martins@email.com','Argentina','PC','Eternal Realms'),(6,'Beatriz Costa',29,'Feminino','beatriz.costa@email.com','Brasil','PlayStation','Forest Whispers'),(7,'Eduardo Pereira',35,'Masculino','eduardo.pereira@email.com','Brasil','Xbox','Galactic Arena'),(8,'Juliana Rocha',23,'Feminino','juliana.rocha@email.com','Chile','PC','Mystic Puzzle');
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jogos_mais_preconceituosos`
--

LOCK TABLES `jogos_mais_preconceituosos` WRITE;
/*!40000 ALTER TABLE `jogos_mais_preconceituosos` DISABLE KEYS */;
INSERT INTO `jogos_mais_preconceituosos` VALUES (1,'Ethnic Cleansing','Resistance Records','Racial',2002,'PC',1,'Alemanha, França, Brasil'),(2,'Bully','Rockstar Games','Violência escolar / Estereótipos sociais',2006,'PlayStation 2, Xbox 360, PC',1,'Brasil'),(3,'Hatred','Destructive Creations','Misantropia / Violência extrema',2015,'PC',0,'Nenhum (mas removido da Steam temporariamente)'),(4,'RapeLay','Illusion Soft','Misoginia / Violência sexual',2006,'PC',1,'Austrália, Reino Unido, Argentina, Indonésia'),(5,'Resident Evil 5','Capcom','Estereótipos raciais',2009,'PlayStation 3, Xbox 360, PC',0,'Controvérsias na África do Sul e EUA'),(6,'Six Days in Fallujah','Highwire Games','Islamofobia / Representação cultural',2021,'PC, PlayStation, Xbox',0,'Controvérsias no Oriente Médio'),(7,'Call of Juarez: The Cartel','Techland','Estereótipos culturais e raciais',2011,'PlayStation 3, Xbox 360, PC',0,'México (contestação pública)'),(8,'South Park: The Stick of Truth','Obsidian Entertainment','Diversos (racismo, sexismo, religião)',2014,'PC, Xbox 360, PlayStation 3',1,'Alemanha, Austrália, Emirados Árabes');
/*!40000 ALTER TABLE `jogos_mais_preconceituosos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paises_que_mais_jogam`
--

LOCK TABLES `paises_que_mais_jogam` WRITE;
/*!40000 ALTER TABLE `paises_que_mais_jogam` DISABLE KEYS */;
INSERT INTO `paises_que_mais_jogam` VALUES (1,'Brasil',101000000,'Battle Royale','Free Fire','Mobile','Manhunt','Steam, Epic Games Store'),(2,'Estados Unidos',195000000,'FPS','Call of Duty: Warzone','PC','Battle Raper','Steam, Epic Games Store'),(3,'Japão',75000000,'JRPG','Final Fantasy XIV','Console','GTA V','Nintendo eShop, PlayStation Store'),(4,'Alemanha',46000000,'Simulação','Farming Simulator 22','PC','Dead by Daylight (versão não censurada)','Steam, GOG'),(5,'China',740000000,'MOBA','Honor of Kings','Mobile','Animal Crossing: New Horizons','Tencent Gaming Platform, TapTap'),(6,'Austrália',17000000,'Aventura','Minecraft','Console','Manhunt 2','Xbox Store, PlayStation Store'),(7,'Coreia do Sul',33000000,'MMORPG','League of Legends','PC Bang (Lan Houses)','Command & Conquer: Generals','Steam, Nexon Launcher'),(8,'Arábia Saudita',23000000,'Corrida','FIFA 24','Console','God of War (algumas versões)','PlayStation Store, Steam');
/*!40000 ALTER TABLE `paises_que_mais_jogam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servidores`
--

LOCK TABLES `servidores` WRITE;
/*!40000 ALTER TABLE `servidores` DISABLE KEYS */;
INSERT INTO `servidores` VALUES (1,'League of Legends','BR','br.login.riotgames.com','Online',52000,35,100000),(2,'Fortnite','NA','na.fortnite.epicgames.com','Online',87000,42,150000),(3,'Counter-Strike 2','EUW','euw.cs2.steampowered.com','Manutenção',0,0,90000),(4,'World of Warcraft','US','us.worldofwarcraft.blizzard.com','Online',43000,55,80000),(5,'Valorant','SEA','sea.valorant.riotgames.com','Online',39000,78,70000),(6,'Genshin Impact','Asia','asia.genshin.mihoyo.com','Online',112000,120,200000),(7,'Call of Duty: Warzone','NA','na.warzone.activision.com','Offline',0,0,100000);
/*!40000 ALTER TABLE `servidores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15 20:00:45
