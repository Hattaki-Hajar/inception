#!/bin/sh
mv adminer.php /var/www/html/adminer
sleep 10
sed -i 's#listen = /run/php/php7.4-fpm.sock#listen = 0.0.0.0:9000#g' /etc/php/7.4/fpm/pool.d/www.conf
sed -i 's#chdir = /var/www#chdir = /var/www/html/adminer#g' /etc/php/7.4/fpm/pool.d/www.conf
php-fpm7.4 -F
 