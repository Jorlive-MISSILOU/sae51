FROM mysql:latest

# Définition du mot de passe de l'utilisateur root
ENV MYSQL_ROOT_PASSWORD=root

# Exposer le port 3306 (MySQL par défaut)
EXPOSE 3307

# Copier le fichier SQL d'initialisation
COPY init.sql /docker-entrypoint-initdb.d/

# Commande pour démarrer le serveur MySQL
CMD ["mysqld"]
