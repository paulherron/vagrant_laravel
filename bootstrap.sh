#!/usr/bin/env bash

apt-get update
apt-get -qy install php5-mcrypt

rm /etc/nginx/sites-enabled/default.conf
cp /vagrant/app/config/vagrant/nginx/default.conf /etc/nginx/sites-enabled/

echo "Starting services…"
service php5-fpm restart
service nginx restart
service mysql restart
