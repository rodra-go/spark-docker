FROM mysql:8.0.16

COPY hive-schema-2.3.0.mysql.sql /docker-entrypoint-initdb.d/initdb.sql
COPY conf.d /etc/mysql/conf.d

EXPOSE 3306
