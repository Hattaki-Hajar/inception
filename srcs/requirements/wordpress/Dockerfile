FROM debian:bullseye

RUN apt-get -y update && apt-get install -y software-properties-common && apt-get -y install curl  &&\
    apt-get install -y php7.4-fpm php7.4-mysql \
    php7.4-curl php7.4-gd php7.4-intl php7.4-mbstring \
    php7.4-soap php7.4-xml php7.4-xmlrpc php7.4-zip

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/wordpress && \
    mkdir -p /run/php

COPY ./tools/config.sh .

RUN chmod +x config.sh

RUN chown -R www-data:www-data /var/www/wordpress

CMD [ "./config.sh" ]