CREATE DATABASE IF NOT EXISTS sae51db; USE sae51db;
CREATE TABLE pc (
  id INT AUTO_INCREMENT PRIMARY KEY,
  marqueId INT,
  osId INT,
  disqueGB INT,
  ramGB INT,
  dateAchat DATE,
  user VARCHAR(255)
);

CREATE TABLE marque (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(255)
);

CREATE TABLE os (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(255)
);

CREATE TABLE logiciel_instal (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pcId INT,
  logicielId INT,
  techInstal INT
);

CREATE TABLE logiciel (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(255),
  licence VARCHAR(255),
  version VARCHAR(255)
);

CREATE TABLE technicien (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(255),
  dateInterv DATE,
  pcInterv INT
);

CREATE TABLE maj (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pcMaj INT,
  techMaj INT,
  dateMaj DATE
);

ALTER TABLE logiciel_instal ADD FOREIGN KEY (pcId) REFERENCES pc (id);

ALTER TABLE logiciel_instal ADD FOREIGN KEY (logicielId) REFERENCES logiciel (id);

ALTER TABLE pc ADD FOREIGN KEY (marqueId) REFERENCES marque (id);

ALTER TABLE pc ADD FOREIGN KEY (osId) REFERENCES os (id);

ALTER TABLE maj ADD FOREIGN KEY (pcMaj) REFERENCES pc (id);

ALTER TABLE maj ADD FOREIGN KEY (techMaj) REFERENCES technicien (id);

ALTER TABLE technicien ADD FOREIGN KEY (pcInterv) REFERENCES pc (id);

ALTER TABLE logiciel_instal ADD FOREIGN KEY (techInstal) REFERENCES technicien (id);

