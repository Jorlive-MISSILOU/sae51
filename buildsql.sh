#!/bin/bash

# Construction de l'image du serveur MySQL
docker build -t mysql_serv -f Dockerfile .

# Vérification
if [ $? -eq 0 ]; then
    echo -e "#############################################################################\n"
    echo -e "###### Construction de l'image du serveur MySQL réalisée avec succès #######\n"
    echo -e "#############################################################################\n"
else
    echo -e "###########################################################################\n"
    echo -e "######## La construction de l'image du serveur MySQL a échoué #############\n"
    echo -e "###########################################################################\n"
fi 
