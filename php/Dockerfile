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

FROM erdiko/php-fpm:7.1

# File Author / Maintainer
MAINTAINER John Arroyo, john@arroyolabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y libicu-dev \
      libxslt-dev \
      libjpeg-dev \
      libjpeg-turbo-progs \
      libxml2-dev \
      libfreetype6-dev \
    && docker-php-ext-install xsl \
      intl \
      soap \
      zip \
      simplexml

RUN docker-php-ext-configure gd --with-jpeg-dir=DIR --with-freetype-dir=/usr/include/ \
    && docker-php-ext-install gd

# RUN docker-php-ext-install libfreetype

EXPOSE 9000

CMD ["php-fpm"]
