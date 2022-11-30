#!/bin/bash
set -e

service mysql start

grep -v "bind-address" /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf && mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

mysql --user=root --execute="CREATE USER 'infradb'@'localhost' IDENTIFIED BY 'password';"
mysql --user=root --execute="GRANT ALL PRIVILEGES ON infradb.* TO 'infradb'@'localhost';"
mysql --user=root --database="mysql" --execute="update user set host='%' where host='localhost';"
mysql --user=root --execute="create database infradb;"
mysql --user=root --execute="flush privileges;"
mysql --user=root --execute="GRANT ALL PRIVILEGES ON infradb.* TO 'infradb'@'%';"
mysql --user=root --execute="flush privileges;"
mysql -u root infradb < infradb.sql
mysql -u root infradb < topscore.sql

service mysql restart

tail -f /var/log/mysql/*log
