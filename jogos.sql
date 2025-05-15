CREATE DATABASE jogoss;

USE jogoss;

CREATE TABLE dados_jogo(
	id_jogo INT PRIMARY KEY AUTO_INCREMENT,
    nome_jogo VARCHAR(45) NOT NULL,
    genero_jogo VARCHAR(10),
    data_lancamento DATE,
    developer_jogo VARCHAR(45),
    publisher_jogo VARCHAR(45),
    numero_players INT,
    goty TEXT
);

INSERT INTO dados_jogo( nome_jogo, genero_jogo, data_lancamento, developer_jogo, publisher_jogo, numero_players, goty)
VALUES('Eternal Realms', 'RPG', '2022-11-15', 'MythicForge Studios', 'Arcadia Games', 1, 'sim'),
	  ('Cyber Drift', 'Corrida', '2023-06-22', 'NeonTurbo Devs', 'Velocity Interactive', 4, 'não'),
	  ('Shadow Protocol', 'Ação', '2021-09-10', 'BlackPoint', 'IronWolf Studios', 1, 'não'),
	  ('Skybound Legends', 'Aventura', '2020-03-05', 'BlueSkyWorks', 'NovaPlay', 1, 'não'),
	  ('Starborn Tactics', 'Estratégia', '2024-02-28', 'Orion Circle', 'Nebula Entertainment', 2, 'sim'),
	  ('Mystic Puzzle', 'Puzzle', '2019-12-12', 'PuzzleForge', 'Brainwave Games', 1, 'não'),
	  ('Galactic Arena', 'FPS', '2023-10-01', 'ZeroPoint Studios', 'HyperNova', 12, 'não'),
      ('Forest Whispers', 'Terror', '2022-08-19', 'Silent Path', 'DarkMoon Publishing', 1, 'sim');
      
SELECT * FROM dados_jogo
WHERE publisher_jogo LIKE '%Games%';

CREATE TABLE jogadores(
	id_jogadores INT PRIMARY KEY AUTO_INCREMENT,
    nome_jogador VARCHAR(45),
	idade INT,
	genero TEXT,
	email VARCHAR(45),
	pais_origem TEXT, 
	plataforma_preferida TEXT,
	jogo_favorito  TEXT NOT NULL
);

INSERT INTO jogadores(id_jogadores, nome_jogador, idade, genero, email, pais_origem, plataforma_preferida, jogo_favorito)
VALUES
(1, 'Lucas Souza', 25, 'Masculino', 'lucas.souza@email.com', 'Brasil', 'PC', 'Cyber Drift'),
(2, 'Ana Clara', 30, 'Feminino', 'ana.clara@email.com', 'Portugal', 'PlayStation', 'Shadow Protocol'),
(3, 'Carlos Silva', 22, 'Masculino', 'carlos.silva@email.com', 'Brasil', 'Xbox', 'Starborn Tactics'),
(4, 'Maria Oliveira', 27, 'Feminino', 'maria.oliveira@email.com', 'Brasil', 'Nintendo Switch', 'Skybound Legends'),
(5, 'Felipe Martins', 24, 'Masculino', 'felipe.martins@email.com', 'Argentina', 'PC', 'Eternal Realms'),
(6, 'Beatriz Costa', 29, 'Feminino', 'beatriz.costa@email.com', 'Brasil', 'PlayStation', 'Forest Whispers'),
(7, 'Eduardo Pereira', 35, 'Masculino', 'eduardo.pereira@email.com', 'Brasil', 'Xbox', 'Galactic Arena'),
(8, 'Juliana Rocha', 23, 'Feminino', 'juliana.rocha@email.com', 'Chile', 'PC', 'Mystic Puzzle');

CREATE TABLE paises_que_mais_jogam(
	id_paises INT PRIMARY KEY AUTO_INCREMENT,
    nome_paises VARCHAR(35),
    quantidade_jogadores INT,
    generos_maioria TEXT,
    jogos_mais_jogados VARCHAR(45),
    plataforma_popular VARCHAR(60),
    jogos_proibidos VARCHAR(45),
    plataformas_digitais VARCHAR(45)
);

INSERT INTO paises_que_mais_jogam(id_paises, nome_paises, quantidade_jogadores, generos_maioria, jogos_mais_jogados, plataforma_popular, jogos_proibidos, plataformas_digitais)
VALUES
  (1, 'Brasil', 101000000, 'Battle Royale', 'Free Fire', 'Mobile', 'Manhunt', 'Steam, Epic Games Store'),
  (2, 'Estados Unidos', 195000000, 'FPS', 'Call of Duty: Warzone', 'PC', 'Battle Raper', 'Steam, Epic Games Store'),
  (3, 'Japão', 75000000, 'JRPG', 'Final Fantasy XIV', 'Console', 'GTA V', 'Nintendo eShop, PlayStation Store'),
  (4, 'Alemanha', 46000000, 'Simulação', 'Farming Simulator 22', 'PC', 'Dead by Daylight (versão não censurada)', 'Steam, GOG'),
  (5, 'China', 740000000, 'MOBA', 'Honor of Kings', 'Mobile', 'Animal Crossing: New Horizons', 'Tencent Gaming Platform, TapTap'),
  (6, 'Austrália', 17000000, 'Aventura', 'Minecraft', 'Console', 'Manhunt 2', 'Xbox Store, PlayStation Store'),
  (7, 'Coreia do Sul', 33000000, 'MMORPG', 'League of Legends', 'PC Bang (Lan Houses)', 'Command & Conquer: Generals', 'Steam, Nexon Launcher'),
  (8, 'Arábia Saudita', 23000000, 'Corrida', 'FIFA 24', 'Console', 'God of War (algumas versões)', 'PlayStation Store, Steam');
  
SELECT *FROM paises_que_mais_jogam
WHERE plataformas_digitais LIKE '%Steam%';       

CREATE TABLE servidores(
		id_servidor BIGINT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
        nome_jogo VARCHAR(100),
		regiao VARCHAR(10),
		endereco_ip VARCHAR(100),
		status_servidor VARCHAR(20),
		jogadores_ativos INT,
		latencia_media_ms INT,
        capacidade_maxima INT
);

INSERT INTO servidores(id_servidor, nome_jogo, regiao, endereco_ip, status_servidor, jogadores_ativos, latencia_media_ms, capacidade_maxima)
VALUES
  (1, 'League of Legends', 'BR', 'br.login.riotgames.com', 'Online', 52000, 35, 100000),
  (2, 'Fortnite', 'NA', 'na.fortnite.epicgames.com', 'Online', 87000, 42, 150000),
  (3, 'Counter-Strike 2', 'EUW', 'euw.cs2.steampowered.com', 'Manutenção', 0, 0, 90000),
  (4, 'World of Warcraft', 'US', 'us.worldofwarcraft.blizzard.com', 'Online', 43000, 55, 80000),
  (5, 'Valorant', 'SEA', 'sea.valorant.riotgames.com', 'Online', 39000, 78, 70000),
  (6, 'Genshin Impact', 'Asia', 'asia.genshin.mihoyo.com', 'Online', 112000, 120, 200000),
  (7, 'Call of Duty: Warzone', 'NA', 'na.warzone.activision.com', 'Offline', 0, 0, 100000);
  
  SELECT *FROM servidores
  WHERE regiao LIKE '%NA%';       
  
  CREATE TABLE jogos_mais_preconceituosos(
		id_jogo BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        nome_jogo VARCHAR(100),
		empresa_desenvolvedora VARCHAR(100),
		motivo_preconceito VARCHAR(50),
		ano_lancamento INT,
		plataformas VARCHAR(100),
		foi_banido BOOLEAN,
		paises_banidos TEXT
  );
  
  INSERT INTO jogos_mais_preconceituosos(id_jogo, nome_jogo, empresa_desenvolvedora, motivo_preconceito, ano_lancamento, plataformas, foi_banido, paises_banidos)
VALUES
   (1, 'Ethnic Cleansing', 'Resistance Records', 'Racial', 2002, 'PC', TRUE, 'Alemanha, França, Brasil'),
   (2, 'Bully', 'Rockstar Games', 'Violência escolar / Estereótipos sociais', 2006, 'PlayStation 2, Xbox 360, PC', TRUE, 'Brasil'),
   (3, 'Hatred', 'Destructive Creations', 'Misantropia / Violência extrema', 2015, 'PC', FALSE, 'Nenhum (mas removido da Steam temporariamente)'),
   (4, 'RapeLay', 'Illusion Soft', 'Misoginia / Violência sexual', 2006, 'PC', TRUE, 'Austrália, Reino Unido, Argentina, Indonésia'),
   (5, 'Resident Evil 5', 'Capcom', 'Estereótipos raciais', 2009, 'PlayStation 3, Xbox 360, PC', FALSE, 'Controvérsias na África do Sul e EUA'),
   (6, 'Six Days in Fallujah', 'Highwire Games', 'Islamofobia / Representação cultural', 2021, 'PC, PlayStation, Xbox', FALSE, 'Controvérsias no Oriente Médio'),
   (7, 'Call of Juarez: The Cartel', 'Techland', 'Estereótipos culturais e raciais', 2011, 'PlayStation 3, Xbox 360, PC', FALSE, 'México (contestação pública)'),
   (8, 'South Park: The Stick of Truth', 'Obsidian Entertainment', 'Diversos (racismo, sexismo, religião)', 2014, 'PC, Xbox 360, PlayStation 3', TRUE, 'Alemanha, Austrália, Emirados Árabes');
   
   SELECT *FROM jogos_mais_preconceituosos
   WHERE motivo_preconceito LIKE '%Racial%';  