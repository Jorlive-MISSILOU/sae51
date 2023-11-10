#!/bin/bash
docker run -d \
	--name sae51-ub \
	--mount type=bind,source=$(pwd)/shared,target=/srv \
	im_ubuntu1 srv/sae51db.sh

if [ $? -eq 0 ]; then
    echo -e "#############################################################################"
    echo -e "###### Exécution du conteneur ubuntu réalisée avec succès ########"
    echo -e "#############################################################################"
else
    echo -e "###########################################################################"
    echo -e "######## La Exécution du conteneur ubuntu a échoué #############"
    echo -e "###########################################################################"
fi 

