#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update

apt-get -q -y install phpmyadmin mysql-server memcached php5-memcached php5-xdebug php-apc php5-dev build-essential php-pear vim-nox varnish drush htop

apt-get -q -y install ruby-full rubygems1.8
gem install sass
gem install compass
