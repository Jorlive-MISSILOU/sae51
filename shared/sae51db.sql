CREATE DATABASE IF NOT EXISTS sae51db; USE sae51db;
CREATE TABLE pc (
  id INT AUTO_INCREMENT PRIMARY KEY,
  marqueId int,
  osId int,
  disqueGB int,
  ramGB int,
  dateAchat date,
  user varchar(255)
);

CREATE TABLE marque (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom varchar(255)
);

CREATE TABLE os (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom varchar(255)
);

CREATE TABLE logiciel_instal (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pcId int,
  logicielId int,
  techInstal int
);

CREATE TABLE logiciel (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom varchar(255),
  licence varchar(255),
  version varchar(255)
);

CREATE TABLE technicien (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom varchar(255),
  dateInterv date,
  pcInterv int
);

CREATE TABLE maj (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pcMaj int,
  techMaj int,
  dateMaj date
);

ALTER TABLE logiciel_instal ADD FOREIGN KEY (pcId) REFERENCES pc (id);

ALTER TABLE logiciel_instal ADD FOREIGN KEY (logicielId) REFERENCES logiciel (id);

ALTER TABLE pc ADD FOREIGN KEY (marqueId) REFERENCES marque (id);

ALTER TABLE pc ADD FOREIGN KEY (osId) REFERENCES os (id);

ALTER TABLE maj ADD FOREIGN KEY (pcMaj) REFERENCES pc (id);

ALTER TABLE maj ADD FOREIGN KEY (techMaj) REFERENCES technicien (id);

ALTER TABLE technicien ADD FOREIGN KEY (pcInterv) REFERENCES pc (id);

ALTER TABLE logiciel_instal ADD FOREIGN KEY (techInstal) REFERENCES technicien (id);

