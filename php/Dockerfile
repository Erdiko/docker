############################################################
# PHP FPM Container for Magento 2
#
# Contains common and useful...
# php extensions: mcrypt, gd, mysql
# linux packages: mysql-client, git, curl, wget, pwgen
#
# This is a good container for php development and includes
# common tools needed in a PHP app.  Use with or without
# Erdiko.  It is lean enough for prod or dev.
############################################################

FROM erdiko/php-fpm:latest

# File Author / Maintainer
MAINTAINER John Arroyo, john@arroyolabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y libicu-dev \
      libxslt-dev \
      libjpeg-dev \
      libjpeg-turbo-progs \
      libxml2-dev \
      libfreetype6-dev \
    && docker-php-ext-install xsl \
      intl \
      soap \
      zip \
      simplexml \
      libfreetype

RUN docker-php-ext-configure gd --with-jpeg-dir=DIR --with-freetype-dir=/usr/include/ \
    && docker-php-ext-install gd

EXPOSE 9000

CMD ["php-fpm"]
