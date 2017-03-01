############################################################
# PHP FPM Container
#
# Contains common and useful...
# php extensions: mcrypt, gd, mysql
# linux packages: mysql-client, git, curl, wget, pwgen
#
# This is a good container for php development and includes 
# common tools needed in a PHP app.  Use with or without 
# Erdiko.  It is lean enough for prod or dev.
############################################################

FROM php:7.1-fpm

# File Author / Maintainer
MAINTAINER John Arroyo, john@arroyolabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y wget \
        git \
        mysql-client \
        nginx \
        curl \
        pwgen \
        libmcrypt-dev \
        libpng-dev \
    && docker-php-ext-install mysqli \
        pdo_mysql \
        mcrypt \
        gd \
    && apt-get clean

# Install additional scripts (composer and phpunit)
COPY scripts /src
COPY code /code

RUN cd /src && chmod 770 *.sh
RUN /src/composer.sh
RUN /src/phpunit.sh
RUN /src/nginx.sh
# RUN /src/mysql.sh

EXPOSE 9000
EXPOSE 80
EXPOSE 3306

CMD ["php-fpm"]
