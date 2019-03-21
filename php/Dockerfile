############################################################
# PHP FPM Container
#
# Contains common and useful packages...
# php extensions: gd, mysql, mbstring
# linux packages: mysql-client, zip, curl, wget, pwgen
#
# This is a good container for php development and includes
# common tools needed in a PHP app. Use with Laravel, Slim
# Symfony, and more. It is lean enough for production use.
############################################################

FROM php:7.3-fpm

# File Author / Maintainer
MAINTAINER John Arroyo, john@arroyolabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y wget \
        apt-utils \
        mysql-client \
        pwgen \
        libfreetype6-dev \
        libwebp-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        zip \
        libyaml-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-webp-dir=/usr/include/  --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install mysqli \
        pdo_mysql \
        mbstring \
        gd

RUN printf "\n" | pecl install yaml-2.0.4 \
    && docker-php-ext-enable yaml \
    # && echo "extension=yaml.so" > /usr/local/etc/php/conf.d/ext-yaml.ini \
    && apt-get clean

# Install additional scripts (composer and phpunit)
COPY scripts /src
RUN cd /src && chmod 770 *.sh
RUN /src/composer.sh
RUN /src/phpunit.sh

RUN echo cd /code >> $HOME/.bashrc

EXPOSE 9000

CMD ["php-fpm"]
