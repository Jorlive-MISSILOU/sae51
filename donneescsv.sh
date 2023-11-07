#!/bin/bash

#Copier les fichiers de données dans le repertoire  mysql sécurisé et dédié
mkdir -p /var/lib/mysql-files/
chmod +rwx /var/lib/mysql-files/
cp -n *.csv /var/lib/mysql-files/

if [ $? -eq 0 ]; then
        echo " ####################################################################### \ \n
               # Fichiers de données csv placés avec succès dans le repertoire dédié ## \ \n
               ####################################################################### "
else
        echo " ############################################################################ \ \n
               ## echec de placement des fichiers de données csv dans le reprrtoire dédié ## \ \n
               ############################################################################# "
fi
