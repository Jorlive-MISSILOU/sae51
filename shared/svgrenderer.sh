#/bin/bash
#Correction du fichier renderer.js
sed s/settings?.headercolor/settings.headercolor/ /usr/local/lib/node_modules/@softwaretechnik/dbml-renderer/lib/renderer.js > correctionjs
cp correctionjs /usr/local/lib/node_modules/@softwaretechnik/dbml-renderer/lib/renderer.js
rm correctionjs

#Remplacement de "GENERATED BY DEFAULT AS IDENTITY" par "AUTO_INCREMENT"
sed 's/GENERATED BY DEFAULT AS IDENTITY/AUTO_INCREMENT/g' /srv/sae51db.sql > srv/sqlcorrige

#Suppression des "" sur les champs de la table (car pas pris en charge)
sed 's/"//g' srv/sqlcorrige > srv/sqlcorrige2

cp srv/sqlcorrige2 /srv/sae51db.sql