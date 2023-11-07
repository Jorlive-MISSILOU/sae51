#!/bin/bash

#Script maitre du lancement de la BDD GestionParc
#Installation de mysql sur l'hote
apt-get install -y default-mysql-server

#Construction de l'image du serveur mysql
./buildsql.sh

#Installation de mysql sur l'hote
apt-get  install mysql-server -y 2> /dev/null

#lancement du container serveur mysql
./runsql.sh

#Copier les fichiers de données dans le repertoire  mysql sécurisé et dédié
./donneescsv.sh
echo " ############################################################################################# \
##################################################################################################### \
### Veuillez patientez 1 min, le temps que le serveur se lance completement. NE FAITES RIEN ######## \
#################################################################################################### \
##################################################################################################### "
sleep 60

#Creation et remplissage de la BDD GestionParc
./gestionparc.sh

#test des requetes
./requete.sh
