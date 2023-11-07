#!/bin/bash

docker run -d \
	--name mysql_serv \
	-p 3307:3306 \
	--mount type=bind,source=$(pwd),target=/srv \
	mysql_serv --local-infile=1 --secure-file-priv="" 


if [ $? -eq 0 ]; then
	echo " ################################################################ \
               ######### Execution du serveur mysql réalisée avec succès" ##### \
               ################################################################ "
else
  	echo " ################################################################ \
               ############# Exécution du serveur mysql a échoué" ############# \
               ################################################################ "
fi
