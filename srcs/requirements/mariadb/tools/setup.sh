#!/bin/sh
service mariadb start

mysql -sfu root <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ; 
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
CREATE DATABASE IF NOT EXISTS $DB_NAME ;
CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;
EOF

mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
mysqld
