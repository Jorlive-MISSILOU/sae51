FROM mysql:latest

# Exposer le port 3307 (MySQL par défaut)
EXPOSE 3306
COPY my.cnf /etc/mysql/conf.d/my.cnf
#RUN echo "GRANT ALL PRIVILEGES ON sae51db.* TO 'root'@'%' WITH GRANT OPTION;" > /docker-entrypoint-initdb.d/init.sql

# Commande pour démarrer le serveur MySQL
CMD ["mysqld"]
