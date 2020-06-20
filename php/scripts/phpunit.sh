#!/bin/sh

# Install PHPUnit 9, https://phpunit.de
wget -O phpunit https://phar.phpunit.de/phpunit-9.phar

chmod +x phpunit
mv phpunit /usr/local/bin/phpunit
phpunit --version
