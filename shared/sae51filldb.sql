USE sae51db;

# Chargement des données dans la table pc
LOAD DATA LOCAL INFILE 'shared/csv/pc.csv'
INTO TABLE pc
FIELDS TERMINATED BY ','
#ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(marqueId, osId, disqueGB, ramGB, dateAchat, user);

# Chargement des données dans la table marque
LOAD DATA LOCAL INFILE 'shared/csv/marque.csv'
INTO TABLE marque
FIELDS TERMINATED BY ','
#ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom);

# Chargement des données dans la table logiciel
LOAD DATA LOCAL INFILE 'shared/csv/logiciel.csv'
INTO TABLE logiciel
FIELDS TERMINATED BY ','
#ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom, licence, version);

# Chargement des données dans la table logiciel_instal
LOAD DATA LOCAL INFILE 'shared/csv/logiciel_instal.csv'
INTO TABLE logiciel_instal
FIELDS TERMINATED BY ','
#ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(pcId, logicielId, techInstal);

# Chargement des données dans la table os
LOAD DATA LOCAL INFILE 'shared/csv/os.csv'
INTO TABLE os
FIELDS TERMINATED BY ','
#ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom);

# Chargement des données dans la table technicien
LOAD DATA LOCAL INFILE 'shared/csv/technicien.csv'
INTO TABLE technicien
FIELDS TERMINATED BY ','
#ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom, dateInterv, pcInterv);

# Chargement des données dans la table maj
LOAD DATA LOCAL INFILE 'shared/csv/maj.csv'
INTO TABLE maj
FIELDS TERMINATED BY ','
#ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(pcMaj, techMaj, dateMaj);
