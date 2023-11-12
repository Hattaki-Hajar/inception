FROM debian:bullseye

RUN apt-get -y update && apt-get -y install vsftpd

COPY ./tools/config.sh .
COPY ./tools/conf .

RUN chmod +x config.sh

CMD [ "./config.sh" ]