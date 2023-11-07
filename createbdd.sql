# Création de la base de données GestionParc
CREATE DATABASE IF NOT EXISTS GestionParc;

#Utilisation de la base de données GestionParc
USE GestionParc;

-- Création de la table pc
CREATE TABLE IF NOT EXISTS data (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    marque VARCHAR(255),
    OS VARCHAR(255),
    DisqueGB INT,
    RamGB INT,
    DateAchat DATE,
    user VARCHAR(255),
    LogInst JSON
);

-- Création de la table logiciel
CREATE TABLE IF NOT EXISTS logiciel (
    NomLog VARCHAR(255),
    Licence VARCHAR(255),
    Version VARCHAR(255),
    PcInst INT,
    TechInst VARCHAR(255)
);

-- Création de la table technicien
CREATE TABLE IF NOT EXISTS technicien (
    NomTech VARCHAR(255),
    DateInter DATE,
    PcInter INT
);

-- Création de la table maj
CREATE TABLE IF NOT EXISTS maj (
    PcMaj INT,
    TechMaj VARCHAR(255),
    DateMaj DATE
);
