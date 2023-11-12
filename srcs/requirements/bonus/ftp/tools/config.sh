#!/bin/sh

useradd -m $FTP_USER -s /bin/bash; echo -n "$FTP_USER:$FTP_PASSWORD" | chpasswd && echo "$FTP_USER" >> /etc/vsftpd.userlist

cd /home/$FTP_USER/ftp_directory/
chmod -R 777 ftp_data

cp /etc/vsftpd.conf /etc/vsftpd.conf.orig

cp /conf /etc/vsftpd.conf

mkdir -p /var/run/vsftpd/empty

echo "local_root=/home/$FTP_USER/ftp_directory/ftp_data" >> /etc/vsftpd.conf

vsftpd /etc/vsftpd.conf