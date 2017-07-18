############################################################
# Docker Compose Container
#
# Simple container for continuous integration that includes
# Docker, Docker Compose, PHP & Composer
############################################################

FROM ubuntu:16.10

# File Author / Maintainer
MAINTAINER John Arroyo, john@arroyolabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl git wget php zip

# Docker
RUN VER="17.03.1-ce" && \
    curl -L -o /tmp/docker-$VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz && \
    tar -xz -C /tmp -f /tmp/docker-$VER.tgz && \
    mv /tmp/docker/* /usr/bin

# Compose
RUN curl -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Composer
RUN wget https://raw.githubusercontent.com/Erdiko/docker/master/php/scripts/composer.sh && \
    chmod 770 composer.sh && \
    ./composer.sh

RUN mkdir /code && apt-get clean

ENTRYPOINT ["tail", "-f", "/dev/null"]
