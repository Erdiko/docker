#!/bin/sh

# Install XDebug
cd /usr/local/bin
wget https://raw.githubusercontent.com/helderco/docker-php/master/template/bin/docker-php-pecl-install
chmod +x /usr/local/bin/docker-php-pecl-install
docker-php-pecl-install xdebug

echo "xdebug.remote_host=$(/sbin/ip route|awk '/default/ { print $3 }')" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.idekey=phpstorm" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.remote_enable=On" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.remote_connect_back=On" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

export XDEBUG_CONFIG="idekey=phpstorm"