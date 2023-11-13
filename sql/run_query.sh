#!/bin/bash

# Requête 1 : liste de tous les pc de marque Hp
echo "############## Requete 1 : liste de tous les PC de marque HP"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT * FROM pc WHERE marqueId = (SELECT id FROM marque WHERE nom = 'Hp');"

# Requête 2 : liste de tous les pc achetées entre 2023 et 2026
echo "############## Requete 2 : liste de tous les PC achetés entre 2023 et 2026"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT * FROM pc WHERE dateAchat BETWEEN '2023-01-01' AND '2026-12-31';"

# Requête 3 : liste de tous les pc de marque Hp achetées entre 2023 et 2027
echo "############## Requete 3 : liste de tous les PC de marque HP achetés entre 2023 et 2027"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT * FROM pc WHERE marqueId = (SELECT id FROM marque WHERE nom = 'HP') AND dateAchat BETWEEN '2023-01-01' AND '2027-12-31';"

# Requête 4 : Nombre de pc de marque Dell dans l’ensemble du parc
echo "############## Requete 4 : Nombre de PC de marque Dell dans l'ensemble du parc"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT COUNT(*) FROM pc WHERE marqueId = (SELECT id FROM marque WHERE nom = 'Dell');"

# Requête 5 : liste de tous les pc ayant entre 4 et 8GB de RamGB
echo "############## Requete 5 : liste de tous les PC ayant entre 4 et 8GB de RAM"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT * FROM pc WHERE ramGB BETWEEN 4 AND 8;"

# Requête 6 : liste des logiciel installés sur la machine n°12
echo "############## Requete 6 : liste des logiciels installés sur la machine n°12"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT * FROM logiciel WHERE id IN (SELECT logicielId FROM logiciel_instal WHERE pcId = 12);"

# Requête 7 : liste des logiciel installés sur la machine attribuée à John Doe
echo "############## Requete 7 : liste des logiciels installés sur la machine attribuée à John Doe"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT * FROM logiciel JOIN logiciel_instal ON logiciel.id = logiciel_instal.logicielId WHERE logiciel_instal.pcId = (select id from pc where user = 'John Doe');"

# Requête 8 : liste des users utilisant une machine de marque Hp
echo "############## Requete 8 : liste des utilisateurs utilisant une machine de marque HP"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT DISTINCT user FROM pc WHERE marqueId = (SELECT id FROM marque WHERE nom = 'Hp');"

# Requête 9 : liste des users utilisant une machine de marque Hp avec un OS "Windows10"
echo "############## Requete 9 : liste des utilisateurs utilisant une machine de marque HP avec un OS Windows10"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "SELECT DISTINCT user FROM pc WHERE marqueId = (SELECT id FROM marque WHERE nom = 'Hp') AND osId = (SELECT id FROM os WHERE nom = 'Windows10');"

# Requête 10 : liste des pc sur lesquelles il y a eu intervention technique entre le 10/10/2023 et le 10/12/2025
echo "############## Requete 10 : liste des PC sur lesquels il y a eu une intervention technique entre le 10/10/2023 et le 10/12/2025"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "select * from pc where id IN (select pcInterv from technicien where dateInterv BETWEEN '2023-10-10' AND '2025-12-10');"

# Requête 11 : liste de pc sur lesquelles le technicien Jorlive Missilou a fait de la maintenance
echo "############## Requete 11 : liste des PC sur lesquels le technicien Jorlive Missilou a fait de la maintenance"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "select * from pc where id IN (select pcInterv from technicien where nom = 'Jorlive Missilou' );"
# Requête 12 : liste de pc sur lesquelles le technicien Alexandre PP a fait de la maintenance en 2023
echo "############## Requete 12 : liste des PC sur lesquels le technicien Alexandre PP a fait de la maintenance en 2023"
mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db -e "select * from pc where id IN (select pcInterv from technicien where nom = 'Alexandre Pp' );"