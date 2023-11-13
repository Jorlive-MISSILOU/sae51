#!/bin/bash
#Script maitre du lancement de la BDD sae51db

#Construction de l'image du serveur mysql
./buildsql.sh

#Construction du conteneur ubuntu 
./build_im_ubuntu1.sh

# Exécution du serveur mysql
./runsql.sh

#Exécution du conteneur ubuntu
./run_im_ubuntu1.sh

echo -e "###########################################################################################"
echo -e "###### Veuillez patienter 60 secondes, le temps que le serveur se lance completement ########"
echo -e "############################################################################################"
sleep 60

#Creation et remplissage de la bdd sae51db
./shared/sae51dbgestion.sh


