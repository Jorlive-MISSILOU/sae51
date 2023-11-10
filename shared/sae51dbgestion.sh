#!/bin/bash

# Exécution du fichier sae51db.sql pour créer la base de données et les tables
mysql -h 127.0.0.1 -P 3307 -u root -p'root' < shared/sae51db.sql

if [ $? -eq 0 ]; then
    echo -e "#############################################################################"
    echo -e "###### Création de la bdd sae51db et ses tables réalisée avec succès ########"
    echo -e "#############################################################################"
else
    echo -e "###########################################################################"
    echo -e "######## La Création de la bdd sae51db et ses tables a échoué #############"
    echo -e "###########################################################################"
fi 

mysql -h 127.0.0.1 -P 3307 -u root -p'root' sae51db < shared/sae51filldb.sql

if [ $? -eq 0 ]; then
    echo -e "#############################################################################"
    echo -e "###### Remplissage de la bdd sae51db réalisée avec succès ###################"
    echo -e "#############################################################################"
else
    echo -e "###########################################################################"
    echo -e "######## Remplissage de la bdd sae51db a échoué ###########################"
    echo -e "###########################################################################"
fi 
