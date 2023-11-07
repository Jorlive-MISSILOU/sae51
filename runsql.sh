#!/bin/bash

docker run -d \
        --name mysql_serv \
        -p 3306:3306 \
        --mount type=bind,source=$(pwd),target=/srv \
        mysql_serv --local-infile=1 --secure-file-priv=""

# Vérification
if [ $? -eq 0 ]; then
        echo "################################################################"
        echo "######### Exécution du serveur MySQL réalisée avec succès #########"
        echo "################################################################"
else
        echo "################################################################"
        echo "######### L'exécution du serveur MySQL a échoué ##################"
        echo "################################################################"
fi
