############################################################
# PHP FPM Container with Xdebug
#
# Contains common and useful...
# php extensions: mcrypt, gd, mysql, xdebug
# linux packages: mysql-client, git, curl, wget, pwgen
#
# This is a good container for php development and includes
# common tools needed in a PHP app.  It also includes Xdebug
# for easier PHP debugging.  Use with or without Erdiko.
# Since it contains Xdebug DO NOT USE IN PRODUCTION
############################################################

FROM php:7.1-fpm

# File Author / Maintainer
MAINTAINER John Arroyo, john@arroyolabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y wget \
        git \
        mysql-client \
        pwgen \
        libmcrypt-dev \
        libpng-dev \
        zip \
        libyaml-dev \
    && docker-php-ext-install mysqli \
        pdo_mysql \
        mcrypt \
        mbstring \
        gd

RUN printf "\n" | pecl install yaml-2.0.0 \
    && docker-php-ext-enable yaml \
    # && echo "extension=yaml.so" > /usr/local/etc/php/conf.d/ext-yaml.ini \
    && apt-get clean

# Install additional scripts (composer and phpunit)
COPY scripts /src
RUN cd /src && chmod 770 *.sh
RUN /src/composer.sh
RUN /src/phpunit.sh
RUN /src/xdebug.sh

EXPOSE 9000

CMD ["php-fpm"]
