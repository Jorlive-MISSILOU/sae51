#!/bin/bash

# Creation et utilisation de la bdd sae51db  dans le fichier sql
echo 'CREATE DATABASE IF NOT EXISTS sae51db; USE sae51db;' > srv/sae51db.sql
chmod u+x srv/sae51db.sql
# Conversion du schema dbml en sql
#dbml2sql sae51db.dbml >> sae51db.sql

# Vérification
if [ $? -eq 0 ]; then
        echo "#######################################################################"
        echo "######### Correction du fichier renderer.js réalisée avec succès #########"
        echo "########################################################################"
else
        echo "########################################################################"
        echo "######### La Correction du fichier renderer.js a échoué ##################"
        echo "########################################################################"
fi


for a in srv/*.dbml
do
	name=${a%.dbml}
	echo "processing $name"
	# Conversion du schema dbml en sql
	dbml2sql $a  >> $name.sql

        # correction du fichier renderer.js
        ./srv/svgrenderer.sh

	# conversion dbml en svg
	dbml-renderer -i $a -o $name.svg
	# Conversion dbml en png
	dbml-renderer -i $a -o $name.png
done
# Vérification
if [ $? -eq 0 ]; then
        echo "##################################################################################"
        echo "## conversion du schéma de la bdd réalisée avec succès en sql, svg et png#########"
        echo "##################################################################################"
else
        echo "################################################################"
        echo "## La conversion du schema de la bdd a échoué ##################"
        echo "################################################################"
fi
