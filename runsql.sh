#!/bin/bash

docker run -d \
        --name sae51_mysql \
        -e MYSQL_ROOT_PASSWORD=root \
        -p 3307:3306 \
        --mount type=bind,source=$(pwd)/shared,target=/srv \
        sae51_mysql --local-infile=1 --secure-file-priv=""

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