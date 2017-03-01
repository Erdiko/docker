#!/bin/sh

apt-get install -y lsb-release
wget http://dev.mysql.com/get/mysql-apt-config_0.8.2-1_all.deb
dpkg -i mysql-apt-config_0.8.2-1_all.deb
apt-key adv --keyserver pgp.mit.edu --recv-keys 5072E1F5
apt-get update
apt-get install -y mysql-server

# service mysql start