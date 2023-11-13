USE sae51db;

-- Désactiver la vérification des clés étrangères
SET foreign_key_checks = 0;

-- Chargement des données dans la table pc
LOAD DATA INFILE '/srv/csv/pc.csv'
INTO TABLE pc
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(marqueId, osId, disqueGB, ramGB, dateAchat, user);

-- Chargement des données dans la table marque
LOAD DATA INFILE '/srv/csv/marque.csv'
INTO TABLE marque
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom);

-- Chargement des données dans la table os
LOAD DATA INFILE '/srv/csv/os.csv'
INTO TABLE os
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom);

-- Chargement des données dans la table logiciel
LOAD DATA INFILE '/srv/csv/logiciel.csv'
INTO TABLE logiciel
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom, licence, version);

-- Chargement des données dans la table technicien
LOAD DATA INFILE '/srv/csv/technicien.csv'
INTO TABLE technicien
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom, dateInterv, pcInterv);

-- Chargement des données dans la table logiciel_instal
LOAD DATA INFILE '/srv/csv/logiciel_instal.csv'
INTO TABLE logiciel_instal
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(pcId, logicielId, techInstal);

-- Chargement des données dans la table maj
LOAD DATA INFILE '/srv/csv/maj.csv'
INTO TABLE maj
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(pcMaj, techMaj, dateMaj);

-- Réactiver la vérification des clés étrangères
SET foreign_key_checks = 1;