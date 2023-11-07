#!/bin/bash

# Exécution du fichier createbdd.sql pour créer la base de données et les tables
mysql -h 127.0.0.1 -P 3307 -p'root' < createbdd.sql

if [ $? -eq 0 ]; then
        echo " ########################################################## \ \n
               #### Connection à la BDD GestionParc avec succès ######### \ \n
               ########################################################## "
else
        echo " ########################################################### \ \n
               ######## Connection à la BDD echouée ###################### \ \n
               ###########################################################"
fi

#Chargement des données à partir des fichiers CSV
mysql -h 127.0.0.1 -P 3307 -p'root' GestionParc < fillbdd.sql

if [ $? -eq 0 ]; then
	echo " ############################################################ \ \n
               ###### Remplissage de la BDD GestionParc avec succès ####### \ \n
               ############################################################"
else
	echo " ############################################################## \ \n
              ######### Remplissage de la BDD echoué ####################### \ \n
              ############################################################## "
fi
