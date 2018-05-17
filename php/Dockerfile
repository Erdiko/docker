############################################################
# PHP FPM Container for Magento 2 Front End Development
#
# Contains common and useful...
# php extensions: mcrypt, gd, mysql
# linux packages: mysql-client, git, curl, wget, pwgen
# front-end dev: node, npm, grunt
############################################################

FROM erdiko/php-fpm:7.1-magento

MAINTAINER John Arroyo, john@arroyolabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  apt-get install -y nodejs \
  apt-get install -y build-essential \
  npm install -g grunt-cli

CMD ["php-fpm"]
