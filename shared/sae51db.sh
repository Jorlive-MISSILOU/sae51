#!/bin/bash

# Creation et utilisation de la bdd sae51db  dans le fichier sql
echo 'CREATE DATABASE IF NOT EXISTS sae51db; USE sae51db;' > sae51db.sql

# Conversion du schema dbml en sql
#dbml2sql sae51db.dbml >> sae51db.sql

for a in *.dbml
do
	name=${a%.dbml}
	echo "processing $name"
	# Conversion du schema dbml en sql
	dbml2sql $a  >> $name.sql
	# conversion dbml en svg
	dbml-renderer -i $a -o $name.svg

	# Conversion dbml en png
	dbml-renderer -i $a -o $name.png
done

# correction du fichier render.js
./svgrenderer.sh
