#!/bin/bash

#Construction de l'image ubuntu

docker build -t im_ubuntu1 -f Dockerfile2 .

if [ $? -eq 0 ]; then
    echo -e "#############################################################################"
    echo -e "###### Construction de l'image ubuntu réalisée avec succès ########"
    echo -e "#############################################################################"
else
    echo -e "###########################################################################"
    echo -e "######## La construction de l'image ubuntu a échoué #############"
    echo -e "###########################################################################"
fi 

