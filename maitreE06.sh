#!/bin/bash
#Script maitre du lancement de la BDD GestionParc

#Construction de l'image du serveur mysql
./buildsql.sh

#lancement du container serveur mysql
./runsql.sh

echo " ############################################################################################# \
##################################################################################################### \
### Veuillez patientez 1 min, le temps que le serveur se lance completement. NE FAITES RIEN ######## \
#################################################################################################### \
##################################################################################################### "
sleep 60

#Creation et remplissage de la BDD GestionParc
./gestionparc.sh

#test des requetes
./requete.sh
