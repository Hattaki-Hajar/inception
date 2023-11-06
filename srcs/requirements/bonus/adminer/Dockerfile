FROM debian:bullseye

RUN apt-get -y update && apt-get install -y php7.4-fpm php7.4-mysql curl

RUN mkdir -p /var/www/html/adminer && mkdir -p /run/php

RUN curl -L -o adminer.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php 

RUN chown -R 755 /var/www/html/adminer

COPY ./tools/config.sh .

RUN chmod +x config.sh

CMD [ "./config.sh" ]