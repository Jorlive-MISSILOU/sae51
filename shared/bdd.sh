#!/bin/bash

# Creation et utilisation de la bdd sae51db  dans le fichier sql
echo 'CREATE DATABASE sae51db; USE sae51db;' > bdd.sql

# Conversion deu schema dbml en sql
dbml2sql dbmlbdd.dbml >> bddcreate.sql

# correction du fichier render.js
./svgrenderer.sh

# conversion dbml en svg
dbml-renderer -i dbmlbdd.dbml -o bddimage.svg

# Conversion dbml en png
dbml-renderer -i dbmlbdd.dbml -o bddimage.png
