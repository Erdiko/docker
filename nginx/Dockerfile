############################################################
# NGINX web sever container
#
# Contains a simple webserver setup. It's a great self
# contained webserver for continuous integration
############################################################

FROM nginx:latest

# File Author / Maintainer
MAINTAINER John Arroyo, info@arroyolabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y wget curl \
    && apt-get clean

# Copy needed configs & dummy webroot
COPY ./site.conf /etc/nginx/conf.d/site.conf
COPY ./fastcgi.conf /etc/nginx/fastcgi.conf
COPY ./index.html /code/index.html
