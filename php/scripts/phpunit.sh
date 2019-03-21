#!/bin/sh

# Install Phpunit, https://phpunit.de
wget -O phpunit https://phar.phpunit.de/phpunit-8.phar

chmod +x phpunit
mv phpunit /usr/local/bin/phpunit
phpunit --version
