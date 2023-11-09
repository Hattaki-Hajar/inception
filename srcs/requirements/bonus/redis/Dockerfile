FROM debian:bullseye

RUN apt-get -y update && apt-get -y install curl redis-server php-redis php7.4-fpm php7.4-mysql \
    php7.4-curl php7.4-gd

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/wordpress

COPY ./tools/config.sh .

RUN chmod +x config.sh

# RUN chown -R www-data:www-data /var/www/wordpress

CMD [ "./config.sh" ]