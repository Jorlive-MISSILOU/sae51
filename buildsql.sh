#!/bin/bash

# Construction de l'image du serveur MySQL
docker build -t sae51_mysql -f Dockerfile .

# Vérification
if [ $? -eq 0 ]; then
    echo -e "#############################################################################"
    echo -e "###### Construction de l'image du serveur MySQL réalisée avec succès ########"
    echo -e "#############################################################################"
else
    echo -e "###########################################################################"
    echo -e "######## La construction de l'image du serveur MySQL a échoué #############"
    echo -e "###########################################################################"
fi 
