FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && apt-get install openssl nginx -y

COPY ./conf/default.conf ./etc/nginx/conf.d/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj "/C=US/ST=CA/L=San Francisco/O=My Company/CN=hhattaki.42.fr"

CMD [ "nginx", "-g", "daemon off;"]
