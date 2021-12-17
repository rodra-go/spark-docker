FROM mysql:8.0.16

COPY hive-schema-2.3.0.mysql.sql /docker-entrypoint-initdb.d/initdb.sql
COPY config-file.cnf /etc/mysql/conf.d/config-file.cnf

EXPOSE 3306
