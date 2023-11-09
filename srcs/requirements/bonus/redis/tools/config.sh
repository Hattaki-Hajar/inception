#!/bin/sh
sleep 10
cd /var/www/wordpress
sed -i "s/^bind .*/bind 0.0.0.0/" "/etc/redis/redis.conf"
echo "maxmemory 256mb" >> /etc/redis/redis.conf
echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf
redis-server --daemonize no --protected-mode no