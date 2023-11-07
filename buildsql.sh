#!/bin/bash

#Construction de l'image du serveur mysql
docker build -t mysql_serv -f Dockerfile .

if [ $? -eq 0 ]; then
 echo " ############################################################################ \ \n
       ###### construction de l'image du serveur mysql réalisée avec succès #######  \ \n
       ############################################################################## "
else
  echo " ########################################################################## \ \n
         ######## La construction de l'image du serveur mysql a échoué ############# \ \n
         ############################################################################"
fi 
