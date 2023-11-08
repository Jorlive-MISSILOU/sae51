#!/bin/bash

# Creation et utilisation de la bdd sae51db  dans le fichier sql
echo 'CREATE DATABASE sae51db; USE sae51db;' > bdd.sql

# Conversion deu schema dbml en sql
dbml2sql dbmlbdd.dbml >> bdd.sql

# correction du fichier render.js
./svgrenderer.sh

# conversion dbml en svg
dbml-renderer dbmlbdd.dbml > bdd.svg
