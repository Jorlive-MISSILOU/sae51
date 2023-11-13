#!/bin/bash

# Supression de tous les conteneurs
docker rm $(docker stop $(docker ps -aq))

#Suppression des images
docker rmi im_ubuntu1:latest 
docker rmi sae51_mysql:latest

if [ $? -eq 0 ]; then
        echo "#######################################################################"
        echo "######### Suppression des conteneurs et images réalisée avec succès #########"
        echo "########################################################################"
else
        echo "########################################################################"
        echo "######### Suppression des conteneurs et images a échoué ##################"
        echo "########################################################################"
fi
