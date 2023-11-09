FROM mysql:latest

# Définition du mot de passe de l'utilisateur root
ENV MYSQL_ROOT_PASSWORD=root

# Exposer le port 3306 (MySQL par défaut)
EXPOSE 3306

# Contenu SQL à exécuter au moment de la construction de l'image
RUN echo "GRANT ALL PRIVILEGES ON sae51db.* TO 'root'@'%' WITH GRANT OPTION;" > /docker-entrypoint-initdb.d/init.sql

# Commande pour démarrer le serveur MySQL
CMD ["mysqld"]
