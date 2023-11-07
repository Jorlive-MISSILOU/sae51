#Afectation des privileges pour root peu importe son IP

GRANT ALL PRIVILEGES ON GestionParc.* TO 'root'@'%' WITH GRANT OPTION;
