USE sae51db;

# Chargement des données dans la table data
LOAD DATA INFILE 'srv/csv/pc.csv'
INTO TABLE pc
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(marqueId, osId, disqueGB, ramGB, dateAchat, user);
