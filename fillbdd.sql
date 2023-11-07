USE GestionParc;

# Chargement des données dans la table data
LOAD DATA INFILE '/var/lib/mysql-files/data.csv'
INTO TABLE data
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(marque, OS, DisqueGB, RamGB, DateAchat, user, LogInst)
SET LogInst = JSON_ARRAY(LogInst);

# Chargement des données dans la table logiciel
LOAD DATA INFILE '/var/lib/mysql-files/logiciel.csv'
INTO TABLE logiciel
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Chargement des données dans la table technicien
LOAD DATA INFILE '/var/lib/mysql-files/technicien.csv'
INTO TABLE technicien
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Chargement des données dans la table maj
LOAD DATA INFILE '/var/lib/mysql-files/maj.csv'
INTO TABLE maj
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
