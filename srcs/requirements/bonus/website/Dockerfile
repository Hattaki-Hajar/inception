FROM debian:bullseye

RUN apt-get update && apt-get -y install nginx

RUN echo "server {" > /etc/nginx/conf.d/default.conf && \
	echo "listen 8080;" >> /etc/nginx/conf.d/default.conf && \
    echo "root    /var/www/lain;" >> /etc/nginx/conf.d/default.conf && \
    echo "location / {" >> /etc/nginx/conf.d/default.conf && \
    echo "    try_files \$uri /index.html;" >> /etc/nginx/conf.d/default.conf && \
    echo "}}" >> /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/lain

COPY ./tools/index.html /var/www/lain

COPY ./tools/style.css /var/www/lain

COPY ./tools/lain.jpg /var/www/lain

CMD ["nginx", "-g", "daemon off;"]